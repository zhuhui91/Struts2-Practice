package com.hand.action;

import com.hand.bean.Users;
//import com.hand.bean.Em;
//import com.hand.bean.Dep;
import com.opensymphony.xwork2.ActionSupport;



public class LoginAction extends ActionSupport
{
	// Struts2 valueStack
	private Users us; //无需实例化
//	private Em em;
//	private Dep dep;
//	
	  public String execute() throws Exception
	    {
		  System.out.println(us.getUsername());
	    	System.out.println(us.getPassword());
	    	
	    	return "success";
	    }

	public Users getUs()
	{
		return us;
	}

	public void setUs(Users us)
	{
		this.us = us;
	}

//	public Em getEm()
//	{
//		return em;
//	}
//
//	public void setEm(Em em)
//	{
//		this.em = em;
//	}
//
//	public Dep getDep()
//	{
//		return dep;
//	}
//
//	public void setDep(Dep dep)
//	{
//		this.dep = dep;
//	}
	
	
	
}
