<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
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
    
	   <form method="post" action="loginCheck" name="form1">Login<br><br>
		   <input type="text" name="username"><br><br>
		   <input type="text" name="password"><br><br>
		   <input type="submit" name="button1"><br>
	   </form>
	   
	   
	   <form name="Form2" action="userface" method="post"  enctype="multipart/form-data">
			<h1>使用spring mvc提供的类的方法上传文件</h1>
			<input type="file" name="file"><br/>
			<input type="submit" value="upload"/>
		</form>
   </body>
</html>
