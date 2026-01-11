package com.pack1;

import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;

//@WebListener
public class RequestListener implements ServletRequestListener, ServletContextAttributeListener
{
	@Override
	public void requestInitialized(ServletRequestEvent sre)
	{
		System.out.println("Request Object Created");
	}
	@Override
	public void requestDestroyed(ServletRequestEvent sre)
	{
		System.out.println("Request Object Destroyed");
	}
	
	public void attributeAdded(ServletRequestAttributeEvent srae)
	{
		System.out.println("attribute added : "+srae.getName());
	}
	
	public void attributeRemoved(ServletRequestAttributeEvent srae)
	{
		System.out.println("attribute removed");
	}
}
