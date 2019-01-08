<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="Models.Course"%>
<%@page import="util.StrFormat"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>LeetCode|探索</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/nav.css" rel="stylesheet" type="text/css" />
	<link href="css/scroll.css" rel="stylesheet" type="text/css" />
	<link href="css/discovery.css" rel="stylesheet" type="text/css" />

  </head>
  <script type="text/javascript">
   document.onreadystatechange = function () {
            if (document.readyState == "complete") {
                document.body.style.display = "block";
            } else {
                document.body.style.display = "none";
            };
        };
  </script>
  
  <body>
  	<% List<Course> list = (List<Course>) request.getAttribute("list"); %>
    <div id="top">
		<ul id="top_nav">
			<li><a href="./index">主 页</a></li>
			<li><a href="./contest">竞 赛</a></li>
			<li><a href="./discovery">探 索</a></li>
			<li><a href="./community">社 区</a></li>
			<li><a href="./rank">排 行</a></li>
		</ul>
	</div>

	<div id="content">
		<div id="nav">
			<ul>
				<li class="item1"><a href="#">全 部<span></span></a></li>
				<li><a href="#">收 藏<span></span></a></li>
				<li><a href="#">字符串<span></span></a></li>
				<li><a href="#">数 组<span></span></a></li>
				<li><a href="#">队列 & 栈<span></span></a></li>
				<li><a href="#">链 表<span></span></a></li>
				<li><a href="#">树 & 图<span></span></a></li>
			</ul>
		</div>

		<div id="search">
			<form action="index.html" method="post">
				<input id="text" type="text" name="" value="" placeholder="搜索…">
				<input id="but" type="submit" name="" value="" >
			</form>
		</div>
		<div style="height: 1px;"></div>
		<div id="list">
		
		<% for(int i=0;i<list.size();i++) { %>
			<div class="listitem">
				<div class="listtop">
					<img alt="" src="<%= list.get(i).getImage() %>" width="250px" height="160px;">
				</div>
				<div class="listbottom">
					<p class=listtext>
						<%= StrFormat.maxLength(list.get(i).getTitle(),40) %>
					</p>
				</div>
			</div>
		<% } %>
		</div>
	</div>
  </body>
</html>
