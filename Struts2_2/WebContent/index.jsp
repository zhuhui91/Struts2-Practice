<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>   
<!-- request.getContextPath(); 获取当前的项目路径 -->
<!-- request.getScheme();  返回的协议名称,一般是http-->
<!-- request.getServerName(); 返回的是浏览器中显示的主机名 [一般是localhost或者127.0.0.1 ，这2个是等价的] -->
<!-- request.getServerPort();  返回应用使用的端口  [比如8080或者80 等等] -->
<!-- 以上其实是:获得应用的应用的根路径或者说是根url -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <form action="<%=path %>/new/login.action" method="post">
    	用户名：<input type="text" name="username"><br>
    	密码：<input type="text" name="password"><br>
    	<input type="submit" value="提交">
    </form>
</body>
</html>