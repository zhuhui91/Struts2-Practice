<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
 <% 
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<html>
<head>
<title>1231sss23</title>
</head>
<body>
 <s:text name="login.title" />
   
   <s:form acton="changeLanguage" method="post">
        <s:textfield name="username" key="login.username"></s:textfield>
        <s:password name="password" key="login.password"></s:password>
        <s:submit key="login.submit"></s:submit>
   </s:form>
   <a href="changeLanguage.action?request_locale=zh_CN">中文</a>
   <a href="changeLanguage.action?request_locale=en_US">English</a>
</body>
</html>
