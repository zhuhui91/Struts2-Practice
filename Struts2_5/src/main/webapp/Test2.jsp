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
    <!-- 向pageContext,request中放入名称为age的值为60 -->
     <s:set name="age" value="60" />
     <!-- 通过scope来对sesseion,appication进行赋值 -->
     <s:set name="age1" value="61" scope="session"/>
      <s:set name="age" value="62" scope="application"/>
     <%=application.getAttribute("age") %>
     
     <!-- 下拉列表 -->
     <s:set name="bookList" value="{'神雕侠侣','射雕英雄传','倚天屠龙记'}"/>
     <s:set name="bookMap" value="#{'1':'神雕侠侣','2':'射雕英雄传','3':'倚天屠龙记'}" />
     <s:select label="书籍" list="#bookList" />
     <s:select label="书籍map" list="#bookMap" listKey="Key" listValue="value" />

     <s:property value="#session.age1" />
     <s:property value="#bookList" />
      <s:property value="#bookList[1]" />
      <s:property value="#bookMap.keys" />
       <s:property value="#bookMap.values" />
       
       <s:set name="score" value="40"/>
       <s:if test="#score>=60" >
                                 及格
        </s:if>
        <s:elseif test="#score>30" >
                                         学渣
        </s:elseif>  
        <s:else>
                                          学渣渣
        </s:else>
       
       <!-- 遍历 -->
       <s:iterator value="#bookList" id="bookName">
             <s:property value="bookName"/>
       </s:iterator>
       <s:iterator value="#bookMap">
             <s:property value="key"/>
             <s:property value="value"/><br>
       </s:iterator>
       <!-- 模拟从action中传递过来一个集合        集合中是对象 -->
       
       <%
           List<Em> list=new ArrayList<Em>();
           Em em1=new Em(1,"郭靖");
           Em em2=new Em(2,"杨过");
           Em em3=new Em(3,"张无忌");
           Em em4=new Em(4,"慕容子宁");
           
           list.add(em1);
           list.add(em2);
           list.add(em3);
           list.add(em4);
           
           request.setAttribute("listt",list);
       %>
       <!-- 遍历展示 -->
       <!-- ?^$    .{?#this.eplId>2} 少用 -->
       <s:iterator value="#request.listt" var="em"
          status="st"
       ><br>
            <s:if test="#st.index%2==0"><br></s:if>
            	当前行号:<s:property value="#st.index" />
            	是否第一条:<s:property value="#st.first"/>
             	是否最后一条:<s:property value="#st.last"/>
             	 计数走到第几个了:<s:property value="#st.count"/>
               	是否是奇数行:<s:property value="#st.odd"/>
                                                       是否是偶数行:<s:property value="#st.even"/>
            <s:property value="#em.eplId" />
            <s:property value="#em.username" />
       </s:iterator>
       
</body>
</html>