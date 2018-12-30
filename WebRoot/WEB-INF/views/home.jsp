<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="Models.User"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'home.jsp' starting page</title>

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
		<a href="./login">登录</a>&nbsp;&nbsp;<a href="./reg">注册</a>
		<br>
		<%
			List<User> list = (List<User>) request.getAttribute("list");
		%>

		<table width="681" border="1" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="27" align="center">
					编号
				</td>
				<td align="center">
					用户名
				</td>
				<td align="center">
					密码
				</td>
				<td align="center">
					排位
				</td>
			</tr>

			<%
				for (int i = 0; i < list.size(); i++) {
					User u = list.get(i);
			%>
			<tr>
				<td height="30" align="center">
					&nbsp;<a href="getUserById?id=<%=u.getId() %>"><%=u.getId()%></a></td>
				<td align="center">
					&nbsp;<%=u.getUsername()%>
				</td>
				<td align="center">
					&nbsp;<%=u.getPassword()%>
				<td align="center">
					&nbsp;<%=u.getRank()%></td>
			</tr>
			<%
				}
			%>
		</table>
	</body>
</html>
