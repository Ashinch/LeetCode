<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>LeetCode|用户</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/userinfo.css">
  	<link href="css/nav.css" rel="stylesheet" />
    <script src='js/amcharts.js'></script>
    <script src='js/serial.js'></script>
    <script src="js/index.js"></script>
    <script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
    <script src="/follow.js" type="text/javascript"></script>

  </head>
  
  <body>
  <div id="top">
    <ul id="top_nav">
      <li><a href="./index">主 页</a></li>
      <li><a href="./contest">竞 赛</a></li>
      <li><a href="./discovery">探 索</a></li>
      <li><a href="./community">社 区</a></li>
      <li><a href="./rank">排 行</a></li>
    </ul> 
  </div>
  <div id="user">
    <a href="./" ><img src="images/userinfo/icon_face.png"></a>
  </div>
  <div id="dynamic">
    <div id="SmoothChart" class="Chart"></div>


<div style="text-align:center;clear:both">

</div>

  </div>
</body>
  
  
</html>
