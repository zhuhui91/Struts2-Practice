<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>Login</title>
</head>
<body>
<form action="loginaction" method="post">
      User:<br/><input type="text" name="user"/><br/>
      Password:<br/><input type="password" name="password"/><br/>
      <input type="submit" value="Login"/>        
   </form>
</body>
</html>
