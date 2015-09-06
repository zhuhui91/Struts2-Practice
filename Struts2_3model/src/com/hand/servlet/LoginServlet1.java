package com.hand.servlet;

import com.hand.pojo.Users;

public class LoginServlet1 extends BaseServlet {
	private static final long serialVersionUID = 1L;

	private Users us=new Users();  //自动将前台的数据封装
	
   public String execute() throws Exception 
   {
		System.out.println("自动封装后的结果:");   
	   	System.out.println(us.getUsername());
	   	System.out.println(us.getPassword());
	   	//return "success";
	   	return "/index.jsp";
   }

	public Users getModel()
	{		
		return us;
	}

}
