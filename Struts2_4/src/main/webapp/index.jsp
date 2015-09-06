<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>    
<html>
<body>
<h2>Hello World!</h2>

<form action="<%=path %>/loginAction.action" method="post">
    	用户名：<input type="text" name="username" /><br>
    	密码：<input type="text" name="password" /><br>
    	<input type="submit" value="提交" />
    </form>

</body>
</html>
