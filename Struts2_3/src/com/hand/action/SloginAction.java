package com.hand.action;

//import org.apache.tomcat.util.collections.SynchronizedStack;

import com.hand.pojo.Users;
import com.opensymphony.xwork2.ActionSupport;

public class SloginAction extends ActionSupport
{
     private Users us; //无需实例化
  
     @Override
    public String execute() throws Exception
    {
    	System.out.println("Struts2 标签实现");
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
     
     
}
