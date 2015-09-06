package com.hand.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import com.hand.pojo.Users;

public class ControlFilter implements Filter
{

	@Override
	public void destroy()
	{
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException
	{
		// 获取http 的 request 对象
		HttpServletRequest request=(HttpServletRequest) arg0;
		//1、接收用户请求的地址
		String url=request.getServletPath();
		//2、判断用户请求地址，并执行相应程序
		if(url.equals("/register.action")){
			request.getRequestDispatcher("register.jsp").forward(arg0, arg1);
			return;
		}else if(url.equals("/saveUser.action")){
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			String password1=request.getParameter("password1");
			if(password.equals(password1)){
				Users us=new Users();
				us.setUsername(username);
				us.setPassword(password);
				//执行相关DAO持久化
				request.getRequestDispatcher("end.jsp").forward(arg0, arg1);
				return;
			}else{
				//两次密码不一致，跳转到注册页面
				request.getRequestDispatcher("register.jsp").forward(arg0, arg1);
				return;
			}
			
		}
		//跳转到相应的结果页面
		arg2.doFilter(arg0, arg1);

	}

	@Override
	public void init(FilterConfig arg0) throws ServletException
	{
		// TODO Auto-generated method stub

	}

}
