package org.kenos.idempiere.timebasedlogin.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Properties;

import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.joda.time.DateTime;
import org.joda.time.Interval;
import org.joda.time.LocalTime;

/**
 * 	Model for Time-Based Login
 *  <p>
 * 	Port from version of Grupo LCR:
 * 	<p>
 * 	<li>Marcos Mendes
 * 	<li>Edilson Neto
 *  <p>
 * 	@author Ricardo Santana <rsantana@kenos.com.br>
 */ 
public class MTimeBasedLogin extends X_AD_TimeBasedLogin
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 3303042396000060338L;
	
	/**************************************************************************
	 *  Create New Persistent Object
	 *  @param ctx context
	 */
	public MTimeBasedLogin (Properties ctx, int AD_TimeBasedLogin_ID, String trxName)
	{
		super (ctx, AD_TimeBasedLogin_ID, trxName);
	}   //  MTimeBasedLogin

	/**
	 *  Create & Load existing Persistent Object
	 *  @param ID  The unique ID of the object
	 *  @param ctx context
	 *  @param trxName transaction name
	 */
	public MTimeBasedLogin (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}   //  MTimeBasedLogin

	/**
	 * 	Check if the user/role has any login restrictions
	 * 	@param role
	 * 	@param user
	 * 	@return true if it's ok to login
	 * 	@throws Exception 
	 */
	public static void check (int AD_Role_ID, int AD_User_ID) throws RuntimeException
	{
		//	Use the same 'now' for each comparison
		DateTime now = DateTime.now();
		
		StringBuilder where = new StringBuilder ("(") 
				
				//	Restriction by role and user
				.append(COLUMNNAME_AD_Role_ID).append("=? OR ")
				.append(COLUMNNAME_AD_User_ID).append("=?) AND ((")
				
				//	Restriction by duration peiod
				.append(COLUMNNAME_DateStart).append(" IS NULL AND ")
				.append(COLUMNNAME_DateFinish).append(" IS NULL) OR ")
				.append("TSTZRANGE (").append(COLUMNNAME_DateStart)
				.append(",").append(COLUMNNAME_DateFinish).append(",'[]') @> ")
				.append(DB.TO_DATE (new Timestamp(now.getMillis()))).append(") ");
		
		Properties ctx = Env.getCtx();
		MTimeBasedLogin restrictions = new Query (ctx, Table_Name, where.toString(), null)
			.setParameters(AD_Role_ID, AD_User_ID)
			.setOrderBy(COLUMNNAME_AD_User_ID + " , " + COLUMNNAME_DateStart)
			.first();
		
		
		//	Check for Time restrictions
		if (restrictions.isTimeSlot())
		{
			LocalTime slotStart = toLocalTime (restrictions.getTimeSlotStart());
			LocalTime slotEnd = toLocalTime (restrictions.getTimeSlotEnd());
			//
			Interval interval = new Interval (slotStart.getMillisOfDay(), slotEnd.getMillisOfDay());
			if (!interval.contains(now.getMillisOfDay()))
				throw new RuntimeException (Msg.getMsg (ctx, "TBL_TimeNotAllowed", new Object[] {slotStart, slotEnd}));
		}
		
		//	Check for day of week restrictions
		if (restrictions.isDateSlot())
		{
			String[] daysOfWeek = new String[] {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
			//
			if (!restrictions.get_ValueAsBoolean("On" + daysOfWeek[now.getDayOfWeek()-1]))
				throw new RuntimeException (Msg.getMsg (ctx, "TBL_DayNotAllowed", new Object[] {Msg.getMsg (ctx, daysOfWeek[now.getDayOfWeek()-1])}));
		}
	}	//	check
	
	/**
	 * https://stackoverflow.com/questions/42560820/compare-2-dates-only-by-hour-and-minute-in-java/42562183
	 * @author betorcs
	 * @param date
	 * @return
	 */
	private static LocalTime toLocalTime (Timestamp date)
	{
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        return new LocalTime(c.get(Calendar.HOUR_OF_DAY),
                			c.get(Calendar.MINUTE));
    }	//	toDateTime
	
	/**
	 * 	Called before Save for Pre-Save Operation
	 * 	@param newRecord new record
	 *	@return true if record can be saved
	 */
	@Override
	protected boolean beforeSave(boolean newRecord)
	{
		//
		if (!isTimeSlot() && !isDateSlot())
		{
			log.saveError("FillMandatory", Msg.getMsg (getCtx(), "TBL_TimeOrDateSlotMandatory"));
			//
			return false;
		}
		
		if (getDateStart() == null && getDateFinish() != null)
			setDateStart(getDateFinish());
		if (getDateStart() != null && getDateFinish() == null)
			setDateFinish(getDateStart());
		
		//	Check if time slot is filled
		if (isTimeSlot())
		{
			if (getTimeSlotStart() == null)
			{
				log.saveError("FillMandatory", Msg.getElement(getCtx(), COLUMNNAME_TimeSlotStart));
				return false;
			}
			if (getTimeSlotEnd() == null)
			{
				log.saveError("FillMandatory", Msg.getElement(getCtx(), COLUMNNAME_TimeSlotEnd));
				return false;
			}
			if (getTimeSlotEnd().before(getTimeSlotStart()))
			{
				log.saveError("Error", Msg.getMsg (getCtx(), "TBL_TimeSlotStart<TimeSlotEnd"));
				return false;
			}
		}

		StringBuilder sql = new StringBuilder ("SELECT COUNT(*) FROM ")
				.append(Table_Name)
				.append(" WHERE ").append(COLUMNNAME_AD_TimeBasedLogin_ID).append("<>? AND ");
		
		int param = 0;
		int count = 0;
		if (getAD_Role_ID() > 0)
		{
			sql.append(COLUMNNAME_AD_Role_ID).append("=? AND ");
			param = getAD_Role_ID();
		}
		else if (getAD_User_ID() > 0)
		{
			sql.append(COLUMNNAME_AD_User_ID).append("=? AND ");
			param = getAD_User_ID();
		}
		else
		{
			log.saveError("Error", Msg.getMsg (getCtx(), "Invalid state - This rule should be applied to an user or to a role"));
			return false;
		}
		
		//	Wide open rule
		if (getDateStart() == null && getDateStart() == null)
		{
			sql.append(COLUMNNAME_DateStart).append(" IS NULL AND ")
					.append(COLUMNNAME_DateFinish).append(" IS NULL");
			//
			count = DB.getSQLValue(get_TrxName(), sql.toString(), getAD_TimeBasedLogin_ID(), param);
		}
		
		//	Date ranged rules
		else
		{
			sql.append(COLUMNNAME_DateStart).append(" IS NOT NULL AND ")
					.append(COLUMNNAME_DateFinish).append(" IS NOT NULL AND ");
			
			if (getDateFinish().before(getDateStart()))
			{
				log.saveError("Error", Msg.getMsg (getCtx(), "TBL_DateFinish<DateStart"));
				return false;
			}
			
			sql.append("TSRANGE (")
					.append(COLUMNNAME_DateStart).append(",")
					.append(COLUMNNAME_DateFinish).append(",'[]') && TSRANGE (?,?,'[]')");
			//
			count = DB.getSQLValue(get_TrxName(), sql.toString(), new Object[] {getAD_TimeBasedLogin_ID(), param, getDateStart(), getDateFinish()});
		}
		
		//	Multiple configurations for the same user/role not allowed
		if (count > 0)
		{
			log.saveError("Error", Msg.getMsg (getCtx(), "TBL_DuplicatedRestric"));
			return false;
		}
		
		return true;
	}	//	beforeSave
}	//	MTimeBasedLogin
