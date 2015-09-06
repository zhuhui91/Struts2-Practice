package com.hand.action;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport
{
    @Override
    public String execute() throws Exception
    {
    	System.out.println("進入action中!");  
    	System.out.println(getText("login.username"));
    	return SUCCESS;
    }
}
