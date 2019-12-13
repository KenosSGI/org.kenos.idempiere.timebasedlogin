package org.kenos.idempiere.timebasedlogin.model;

import java.sql.ResultSet;

import org.adempiere.base.IModelFactory;
import org.compiere.model.PO;
import org.compiere.util.Env;

/**
 * 		Model Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ModelFactory.java, v1.0 2019/12/13 22:53:49 PM, ralexsander Exp $
 */
public class ModelFactory implements IModelFactory
{
	@Override
	public Class<?> getClass(String tableName)
	{
		if (MTimeBasedLogin.Table_Name.equals(tableName))
			return MTimeBasedLogin.class;
		return null;
	}	//	getClass

	@Override
	public PO getPO(String tableName, int Record_ID, String trxName)
	{
		if (MTimeBasedLogin.Table_Name.equals(tableName))
			return new MTimeBasedLogin (Env.getCtx(), Record_ID, trxName);
		return null;
	}	//	getPO

	@Override
	public PO getPO(String tableName, ResultSet rs, String trxName)
	{
		if (MTimeBasedLogin.Table_Name.equals(tableName))
			return new MTimeBasedLogin (Env.getCtx(), rs, trxName);
		return null;
	}	//	getPO
}	//	ModelFactory
