package com.hand.action;

import com.hand.pojo.Users;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class MLoginAction extends ActionSupport implements ModelDriven<Users>
{   
	private Users us=new Users();  //自动将前台的数据封装
	
     @Override
    public String execute() throws Exception 
    {
    	System.out.println(us.getUsername());
    	System.out.println(us.getPassword());
    	return "success";
    }

	@Override
	public Users getModel()
	{		
		return us;
	}
	
	// 当请求发送到action之前
	// 调用MloginAction类中getModel() 获取要将表单数据封装到哪个实例化的对象中
	// 获得到该对象之后,我们可以获得 类类型
	// 获得类类型之后。 获得类中的属性
	// request.getParameters 获得 表单提交的使用数据名
	// 从而获取值
	// 如果表单提交的 name 值 与实体类中属性名一致
	// 那么我们将获得表单中的数据 封装到 us 对象中去
	
	
}
