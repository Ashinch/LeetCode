<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>LeetCode|竞赛</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/nav.css" rel="stylesheet" type="text/css" />
	<link href="css/scroll.css" rel="stylesheet" type="text/css" />
	<link href="css/contest.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript">
   document.onreadystatechange = function () {
            if (document.readyState == "complete") {
                document.body.style.display = "block";
            } else {
                document.body.style.display = "none";
            };
        };
  </script>
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
	<div id="content">
	<div class="card1">
		<div class="incard">
			<span class="left" style="font-family: "鎬濇簮榛戜綋 CN";">WIN&nbsp;&nbsp;42&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LOSS&nbsp;&nbsp;36</span>
			<span class="right" style="width: 30px;">进入</span>
			<span class="left" style="font-weight:900;font-size: 30px;color: #8A7154;">NO.79 </span>
			<span class="right"><img src="images/contest/icon_fight.png" alt="" style="margin-left: 13px"></span>
		</div>

	</div>
	<div class="card2">
		<div class="incard">
			<span class="left" style="font-family: "鎬濇簮榛戜綋 CN";">WIN&nbsp;&nbsp;29&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LOSS&nbsp;&nbsp;41</span>
			<span class="right" style="width: 30px;">进入</span>
			<span class="left" style="font-weight:900;font-size: 30px;color: #8A7154;">NO.90 </span>
			<span class="right"><img src="images/contest/icon_fight.png" alt="" style="margin-left: 13px"></span>
		</div>

	</div>
	<div class="card3">
		<div class="incard">
			<span class="left" style="font-family: "鎬濇簮榛戜綋 CN";">0&nbsp;&nbsp;DAY&nbsp;&nbsp;03&nbsp;&nbsp;HOURS</span>
			<span class="right" style="font-family: "鎬濇簮榛戜綋 CN";color: green";>已预约</span>
			<span class="left" style="font-weight:900;font-size: 30px;color: #8A7154;">16&nbsp;:&nbsp;39 </span>
			<span class="right"><img src="images/index/icon_booking.png" alt="" style="margin-left: 14px"></span>
		</div>

	</div>
	<div class="card4">
		<div class="incard">
			<span class="left" style="font-family: "鎬濇簮榛戜綋 CN";">3&nbsp;&nbsp;DAY&nbsp;&nbsp;22&nbsp;&nbsp;HOURS</span>
			<span class="right" style="font-family: "鎬濇簮榛戜綋 CN";">未预约</span>
			<span class="left" style="font-weight:900;font-size: 30px;color: #8A7154;">34&nbsp;:&nbsp;04 </span>
			<span class="right"><img src="images/index/icon_booking.png" alt="" style="margin-left: 14px"></span>
		</div>

	</div>
	</div>
  </body>
</html>
