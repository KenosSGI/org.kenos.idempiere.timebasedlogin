/******************************************************************************
 * Product: iDempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2012 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.kenos.idempiere.timebasedlogin.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for AD_TimeBasedLogin
 *  @author iDempiere (generated) 
 *  @version Release 6.2
 */
@SuppressWarnings("all")
public interface I_AD_TimeBasedLogin 
{

    /** TableName=AD_TimeBasedLogin */
    public static final String Table_Name = "AD_TimeBasedLogin";

    /** AD_Table_ID=200262 */
    public static final int Table_ID = 200262;

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 3 - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(3);

    /** Load Meta Data */

    /** Column name AD_Client_ID */
    public static final String COLUMNNAME_AD_Client_ID = "AD_Client_ID";

	/** Get Client.
	  * Client/Tenant for this installation.
	  */
	public int getAD_Client_ID();

    /** Column name AD_Org_ID */
    public static final String COLUMNNAME_AD_Org_ID = "AD_Org_ID";

	/** Set Organization.
	  * Organizational entity within client
	  */
	public void setAD_Org_ID (int AD_Org_ID);

	/** Get Organization.
	  * Organizational entity within client
	  */
	public int getAD_Org_ID();

    /** Column name AD_Role_ID */
    public static final String COLUMNNAME_AD_Role_ID = "AD_Role_ID";

	/** Set Role.
	  * Responsibility Role
	  */
	public void setAD_Role_ID (int AD_Role_ID);

	/** Get Role.
	  * Responsibility Role
	  */
	public int getAD_Role_ID();

	public org.compiere.model.I_AD_Role getAD_Role() throws RuntimeException;

    /** Column name AD_TimeBasedLogin_ID */
    public static final String COLUMNNAME_AD_TimeBasedLogin_ID = "AD_TimeBasedLogin_ID";

	/** Set Time-based Login	  */
	public void setAD_TimeBasedLogin_ID (int AD_TimeBasedLogin_ID);

	/** Get Time-based Login	  */
	public int getAD_TimeBasedLogin_ID();

    /** Column name AD_TimeBasedLogin_UU */
    public static final String COLUMNNAME_AD_TimeBasedLogin_UU = "AD_TimeBasedLogin_UU";

	/** Set AD_TimeBasedLogin_UU	  */
	public void setAD_TimeBasedLogin_UU (String AD_TimeBasedLogin_UU);

	/** Get AD_TimeBasedLogin_UU	  */
	public String getAD_TimeBasedLogin_UU();

    /** Column name AD_User_ID */
    public static final String COLUMNNAME_AD_User_ID = "AD_User_ID";

	/** Set User/Contact.
	  * User within the system - Internal or Business Partner Contact
	  */
	public void setAD_User_ID (int AD_User_ID);

	/** Get User/Contact.
	  * User within the system - Internal or Business Partner Contact
	  */
	public int getAD_User_ID();

	public org.compiere.model.I_AD_User getAD_User() throws RuntimeException;

    /** Column name Created */
    public static final String COLUMNNAME_Created = "Created";

	/** Get Created.
	  * Date this record was created
	  */
	public Timestamp getCreated();

    /** Column name CreatedBy */
    public static final String COLUMNNAME_CreatedBy = "CreatedBy";

	/** Get Created By.
	  * User who created this records
	  */
	public int getCreatedBy();

    /** Column name DateFinish */
    public static final String COLUMNNAME_DateFinish = "DateFinish";

	/** Set Finish Date.
	  * Finish or (planned) completion date
	  */
	public void setDateFinish (Timestamp DateFinish);

	/** Get Finish Date.
	  * Finish or (planned) completion date
	  */
	public Timestamp getDateFinish();

    /** Column name DateStart */
    public static final String COLUMNNAME_DateStart = "DateStart";

	/** Set Date Start.
	  * Date Start for this Order
	  */
	public void setDateStart (Timestamp DateStart);

	/** Get Date Start.
	  * Date Start for this Order
	  */
	public Timestamp getDateStart();

    /** Column name Description */
    public static final String COLUMNNAME_Description = "Description";

	/** Set Description.
	  * Optional short description of the record
	  */
	public void setDescription (String Description);

	/** Get Description.
	  * Optional short description of the record
	  */
	public String getDescription();

    /** Column name IsActive */
    public static final String COLUMNNAME_IsActive = "IsActive";

	/** Set Active.
	  * The record is active in the system
	  */
	public void setIsActive (boolean IsActive);

	/** Get Active.
	  * The record is active in the system
	  */
	public boolean isActive();

    /** Column name IsDateSlot */
    public static final String COLUMNNAME_IsDateSlot = "IsDateSlot";

	/** Set Day Slot.
	  * Resource has day slot availability
	  */
	public void setIsDateSlot (boolean IsDateSlot);

	/** Get Day Slot.
	  * Resource has day slot availability
	  */
	public boolean isDateSlot();

    /** Column name IsTimeSlot */
    public static final String COLUMNNAME_IsTimeSlot = "IsTimeSlot";

	/** Set Time Slot.
	  * Resource has time slot availability
	  */
	public void setIsTimeSlot (boolean IsTimeSlot);

	/** Get Time Slot.
	  * Resource has time slot availability
	  */
	public boolean isTimeSlot();

    /** Column name Name */
    public static final String COLUMNNAME_Name = "Name";

	/** Set Name.
	  * Alphanumeric identifier of the entity
	  */
	public void setName (String Name);

	/** Get Name.
	  * Alphanumeric identifier of the entity
	  */
	public String getName();

    /** Column name OnFriday */
    public static final String COLUMNNAME_OnFriday = "OnFriday";

	/** Set Friday.
	  * Available on Fridays
	  */
	public void setOnFriday (boolean OnFriday);

	/** Get Friday.
	  * Available on Fridays
	  */
	public boolean isOnFriday();

    /** Column name OnMonday */
    public static final String COLUMNNAME_OnMonday = "OnMonday";

	/** Set Monday.
	  * Available on Mondays
	  */
	public void setOnMonday (boolean OnMonday);

	/** Get Monday.
	  * Available on Mondays
	  */
	public boolean isOnMonday();

    /** Column name OnSaturday */
    public static final String COLUMNNAME_OnSaturday = "OnSaturday";

	/** Set Saturday.
	  * Available on Saturday
	  */
	public void setOnSaturday (boolean OnSaturday);

	/** Get Saturday.
	  * Available on Saturday
	  */
	public boolean isOnSaturday();

    /** Column name OnSunday */
    public static final String COLUMNNAME_OnSunday = "OnSunday";

	/** Set Sunday.
	  * Available on Sundays
	  */
	public void setOnSunday (boolean OnSunday);

	/** Get Sunday.
	  * Available on Sundays
	  */
	public boolean isOnSunday();

    /** Column name OnThursday */
    public static final String COLUMNNAME_OnThursday = "OnThursday";

	/** Set Thursday.
	  * Available on Thursdays
	  */
	public void setOnThursday (boolean OnThursday);

	/** Get Thursday.
	  * Available on Thursdays
	  */
	public boolean isOnThursday();

    /** Column name OnTuesday */
    public static final String COLUMNNAME_OnTuesday = "OnTuesday";

	/** Set Tuesday.
	  * Available on Tuesdays
	  */
	public void setOnTuesday (boolean OnTuesday);

	/** Get Tuesday.
	  * Available on Tuesdays
	  */
	public boolean isOnTuesday();

    /** Column name OnWednesday */
    public static final String COLUMNNAME_OnWednesday = "OnWednesday";

	/** Set Wednesday.
	  * Available on Wednesdays
	  */
	public void setOnWednesday (boolean OnWednesday);

	/** Get Wednesday.
	  * Available on Wednesdays
	  */
	public boolean isOnWednesday();

    /** Column name TimeSlotEnd */
    public static final String COLUMNNAME_TimeSlotEnd = "TimeSlotEnd";

	/** Set Slot End.
	  * Time when timeslot ends
	  */
	public void setTimeSlotEnd (Timestamp TimeSlotEnd);

	/** Get Slot End.
	  * Time when timeslot ends
	  */
	public Timestamp getTimeSlotEnd();

    /** Column name TimeSlotStart */
    public static final String COLUMNNAME_TimeSlotStart = "TimeSlotStart";

	/** Set Slot Start.
	  * Time when timeslot starts
	  */
	public void setTimeSlotStart (Timestamp TimeSlotStart);

	/** Get Slot Start.
	  * Time when timeslot starts
	  */
	public Timestamp getTimeSlotStart();

    /** Column name Updated */
    public static final String COLUMNNAME_Updated = "Updated";

	/** Get Updated.
	  * Date this record was updated
	  */
	public Timestamp getUpdated();

    /** Column name UpdatedBy */
    public static final String COLUMNNAME_UpdatedBy = "UpdatedBy";

	/** Get Updated By.
	  * User who updated this records
	  */
	public int getUpdatedBy();
}
