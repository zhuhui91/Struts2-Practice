<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.hand.bean.Em,com.hand.bean.Dep" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
     <% Map<Dep,List<Em>> map=new HashMap<Dep,List<Em>>();
          Dep de1=new Dep(1,"采购部");
          Dep de2=new Dep(2,"市场部");
          Dep de3=new Dep(3,"营销部");
          List<Em> li1=new ArrayList<Em>( );
          List<Em> li2=new ArrayList<Em>();
          List<Em> li3=new ArrayList<Em>();
          Em em1=new Em(1,"王大锤1");
          Em em2=new Em(2,"王大锤2");
          Em em3=new Em(3,"王大锤3");
          Em em4=new Em(4,"王七鸽1");
          Em em5=new Em(5,"王七鸽2");
          Em em6=new Em(6,"王尼玛1");
          Em em7=new Em(7,"王尼玛2");
          
          li1.add(em1);
          li1.add(em2);
          li1.add(em3);
          li2.add(em4);
          li2.add(em5);
          li3.add(em6);
          li3.add(em7);
          
          map.put(de1,li1);
          map.put(de2,li2);
          map.put(de3,li3);
          request.setAttribute("map",map);
     %>
     <s:doubleselect 
       formName="form1"
       label="业务员"
       list="#request.map.KeySet()"
       name="dptId"
       id="comboId"
       listKey="dptId"
       listValue="dptName"
       doubleName="eplId"
       doubleId="comboDoubleId"
       doubleList="#request.map[top]"
       doubleListKey="eplId"
       doubleListValue="username"
     />
</body>
</html>