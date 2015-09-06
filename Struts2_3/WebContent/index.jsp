<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 加入 Struts 标签 -->
 <%@ taglib prefix="s" uri="/struts-tags" %>   
     <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Struts2 数据封装机制</title>
</head>
<body>
       <form action="<%=path %>/loginAction.action" method="post">
    	用户名：<input type="text" name="username"><br>
    	密码：<input type="text" name="password"><br>
    	<input type="submit" value="提交">
    </form>
    <h3>another model</h3>
     <form action="<%=path %>/muserlogin.action" method="post">
    	用户名：<input type="text" name="username"><br>
    	密码：<input type="text" name="password"><br>
    	<input type="submit" value="提交">
    </form>
    <h3>another s(标签)</h3>
    <!-- 使用标签时,不需要写全路径 -->
    <s:form namespace="/userlogin" action="suserlogin" method="post">
                                 用户名:<s:textfield name="us.username" /><br/>
                                 密码:<s:password name="us.password" /><br/>
         <s:submit value="提交" />
    </s:form>
</body>
</html>