package org.kenos.idempiere.timebasedlogin.event;

import java.util.Properties;

import org.adempiere.base.event.AbstractEventHandler;
import org.adempiere.base.event.IEventTopics;
import org.compiere.util.Env;
import org.kenos.idempiere.timebasedlogin.model.MTimeBasedLogin;
import org.osgi.service.event.Event;

/**
 *	Handle the login events 
 * 	@author Ricardo Santana
 */
public class LoginHandler extends AbstractEventHandler
{
	/**
	 * 	Handle Login Event
	 */
	@Override
	protected void doHandleEvent (Event event)
	{
		//	Event Topic
		String topic = event.getTopic();
		
		//	Check topic
		if (IEventTopics.AFTER_LOGIN.equals(topic))
		{
			Properties ctx = Env.getCtx();
			//
			int AD_Role_ID = Env.getAD_Role_ID(ctx);
			int AD_User_ID = Env.getAD_User_ID(ctx);
			
			//	System and SuperUser has a free pass
			if (AD_User_ID == 0 || AD_User_ID == 100)
				return;
			
			MTimeBasedLogin.check (AD_Role_ID, AD_User_ID);
		}
	}	//	doHandleEvent

	/**
	 * 	Register to receive OSGi Events
	 */
	@Override
	protected void initialize()
	{
		registerEvent (IEventTopics.AFTER_LOGIN);
	}	//	initialize

}	//	LoginHandler
