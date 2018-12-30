<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="Models.User" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
	User u = (User)request.getAttribute("user");
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'detail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   	
    <form method="post" action="updateUser" name="form1"> 
     
    	用户详情<br>
		编号：<input type="text" value="<%= u.getId() %>" name="id" readonly="readonly"><br>
		用户：<input type="text" value="<%=u.getUsername() %>" name="username"><br>
		密码：<input type="text" value="<%=u.getPassword() %>" name="password"><br>
		排位：<input type="text" value="<%=u.getRank() %>" name="rank" readonly="readonly"><br>
		<br>
		<input type="submit" name="button1">
    
    </form>
    
     </body>
</html>
