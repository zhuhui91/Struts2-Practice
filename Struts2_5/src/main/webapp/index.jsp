<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>    
<html>
<body>

   <!-- s标签: 表单 -->
   <s:form action="slogin" method="post">
     <s:textfield label="用户名"  name="us.username" />
     <s:password label="密码" name="us.password" />
     
     <!-- s标签: 复选框 -->
    <s:checkboxlist name="hobby" label="爱好" list="{'打篮球','下棋','跑步'}" />
     <s:checkboxlist name="hobby1" label="爱好" list="#{'1':'打篮球','2':'下棋','3':'跑步'}" />
     
     <!-- s标签:单选按钮 -->
      <s:radio name="hobby2" label="爱好" list="{'打篮球','下棋','跑步'}" />
     <s:radio name="hobby3" label="爱好" list="#{'1':'打篮球','2':'下棋','3':'跑步'}" />
     
      <!-- s标签:下拉列表 -->
      <s:select name="hobby4" label="电视/综艺" list="#{'1':'熊出没','2':'奔跑吧,兄弟','3':'太极'}" />
     
      <!-- s标签:文本域 -->
      <s:textarea name="xx" label="简述"  rows="22" cols="50" />
      
       <!-- s标签:(双个下拉列表组成)GDI菜单-->
       <s:doubleselect 
       list="{'编程','论文'}" 
       doubleList="top=='编程'?{'三国演义','西游记'}:{'红楼梦','水浒传'}" doubleName="作者" name="" />
     
       <!-- 可以左右选择的文本框菜单 -->
       <s:optiontransferselect 
       label="喜欢的书"
       name="cnbook"
       leftTitle="中文书籍"
       
       list="#{'1':'java编程思想','2':'企业实战'}" 
       listKey="key"
       listValue="value"
       multiple="true"
       emptyOption="true"
       rightTitle="英文书籍"
       headerKey="cnkey"
       headerValue="请选择中文书籍"
       doubleList="#{'1':'my world','2':'apple'}"  
       doubleListKey="key"
       doubleListValue="value"
       doubleHeaderKey="enkey"
       doubleHeaderValue="请选择英文书籍"
       doubleMultiple="true" 
       doubleEmptyOption="true"
       doubleName="enbook" />
    
        <s:submit value="提交"/>
   </s:form>
   
    
   
   
   
</body>
</html>
