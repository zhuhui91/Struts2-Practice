<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title>Employee Form with Multilingual Support</title>
</head>
<body>
<h1><s:text name="global.heading"/></h1>

   <s:url id="indexEN" namespace="/" action="locale" >
      <s:param name="request_locale" >en</s:param>
   </s:url>
   <s:url id="indexES" namespace="/" action="locale" >
      <s:param name="request_locale" >es</s:param>
   </s:url>
   <s:url id="indexFR" namespace="/" action="locale" >
      <s:param name="request_locale" >fr</s:param>
   </s:url>
   <s:url id="indexCN" namespace="/" action="locale" >
      <s:param name="request_locale" >zh</s:param>
   </s:url>

   <s:a href="%{indexEN}" >English</s:a>
   <s:a href="%{indexES}" >Spanish</s:a>
   <s:a href="%{indexFR}" >France</s:a>
     <s:a href="%{indexCN}" >中文</s:a>

   <s:form action="empinfo" method="post" namespace="/">
      <s:textfield name="name" key="global.name" size="20" />
      <s:textfield name="age" key="global.age" size="20" />
      <s:submit name="submit" key="global.submit" />
   </s:form>

</body>
</html>
