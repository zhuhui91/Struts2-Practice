package com.hand.servlet;

import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class BaseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	// 当请求发送到action之前
			// 调用MloginAction类中getModel() 获取要将表单数据封装到哪个实例化的对象中
			// 获得到该对象之后,我们可以获得 类类型
			// 获得类类型之后。 获得类中的属性
			// request.getParameters 获得 表单提交的使用数据名
			// 从而获取值
			// 如果表单提交的 name 值 与实体类中属性名一致
			// 那么我们将获得表单中的数据 封装到 us 对象中去
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try
		{
			// 在程序运行时 获得当前类的getModel方法对象
			Method metod=this.getClass().getDeclaredMethod("getModel", null);
			// 通过invoke方法 调用该方法
			Object ob=metod.invoke(this, null);
			// 通过实体类对象获得,类类型
			Class cl=ob.getClass();
			// 通过类类型获得 类中的属性对象数组
			Field[] fi=cl.getDeclaredFields();
			// 通过request获得所有的 表单中提交的 null 值
			Enumeration em=request.getParameterNames(); // 获取表单提交的值
		    // 循环枚举类型中的值
			while(em.hasMoreElements()){
				// 获得枚举中的值 就是表单提交的name值   【封装数据】
				String fieldName=em.nextElement().toString();
				System.out.println("从表单中获得的 name 值:"+fieldName);
				// 循环类中所有的属性对象
				for(int i=0;i<fi.length;i++){
					System.out.println("从类中获得的属性:"+fi[i].getName());
					// 如果属性中的名字 和 表单中提交的名字一致
					if(fieldName.equals(fi[i].getName())){
						fi[i].setAccessible(true);  // 尤为重要,可以被外部赋值[改变属性权限，true:可访问]
						// 获取request.getParameter(fieldName) 封装到对象中
						fi[i].set(ob, request.getParameter(fieldName));
						
//						// 判断类型
//						if(fi[i].getType().equals("int")){
//							fi[i].set(ob, Integer.valueOf(request.getParameter(fieldName)));
//						}
					}
				}
			}
			
			// 调用LoginServlet1类的方法
			Method me1=this.getClass().getDeclaredMethod("execute", null); // 该方法无参数，故为 null		
			Object url=me1.invoke(this, null);
			// 跳转
			request.getRequestDispatcher(String.valueOf(url)).forward(request, response);
			
		} catch (Exception e)
		{
			e.printStackTrace();
		} 
	}

}
