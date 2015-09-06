package com.hand.action;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport
{
	private String username;
	private String password;
	
	/*注意【重点】：
	 *1、 (index.jsp)表单中的属性值和LoginAction中的属性值必须一致
	 *2、必须在LoginAction类中编写相应属性值的 get 和 set 方法
	 */
	
	/*
	 * Struts2 属性驱动和模型驱动帮助我们完成了
	 * 数据自动获取      数据自动封装
	 */
	
    @Override
    public String execute() throws Exception
    {
    	System.out.println(username);
    	System.out.println(password);
    	
    	return "success";
    }

	public String getUsername()
	{
		return username;
	}

	public void setUsername(String username)
	{
		this.username = username;
	}

	public String getPassword()
	{
		return password;
	}

	public void setPassword(String password)
	{
		this.password = password;
	}
    
    
    
    
}
