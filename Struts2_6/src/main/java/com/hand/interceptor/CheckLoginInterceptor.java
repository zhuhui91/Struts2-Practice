package com.hand.interceptor;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class CheckLoginInterceptor implements Interceptor
{

	public void destroy()
	{
		

	}

	public void init()
	{
		

	}

	public String intercept(ActionInvocation arg0) throws Exception
	{
		String url="";
		// 判断是否登录
		if(null!=ServletActionContext.getRequest().getSession().getAttribute("username")){
			url=arg0.invoke();
		}else{
			url="loginfail";
		}
		return url;
	}

}
