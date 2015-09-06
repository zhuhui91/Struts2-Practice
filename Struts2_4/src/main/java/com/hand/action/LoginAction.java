package com.hand.action;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.hand.pojo.Users;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport
{
	private String username;
	private String password;

	public String execute() throws Exception
	{
		if(username.equals("admin") && password.equals("123")){
			Users us=new Users();  // 将数据封装到实体类
			us.setUername(username);
			us.setPassword(password);
			
			ServletRequest request=ServletActionContext.getRequest();
			HttpServletRequest req=(HttpServletRequest)request;
			HttpSession session=req.getSession();	
			// 传到session 采矿以查看用户的登录信息
			session.setAttribute("us", us);
			
			return "success";
		}else{
			return "fail";
		}
	
		/* servletContext 也就是application对象
		 * 服务器对象,只要服务器不关闭,那么这个信息永远存在
		 * 该信息是存储在服务器内存中的,一般数据我们是严禁向application对象当中放入的
		 * 否则,容易导致服务器内存溢出,程序崩溃
		 * */
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
