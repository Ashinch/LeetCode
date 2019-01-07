<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>LeetCode</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/nav.css" rel="stylesheet" type="text/css" />
	<link href="css/scroll.css" rel="stylesheet" type="text/css" />
	<link href="css/index.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript">
	   document.onreadystatechange = function () {
	       if (document.readyState == "complete") {
	           document.body.style.display = "block";
	       } else {
	           document.body.style.display = "none";
	       };
	   };
        
        
       window.onload = function countTime() {  
             //获取当前时间  
             var date = new Date();  
             var now = date.getTime();  
             //设置截止时间  
             var str="2020/5/17 00:00:00";
             var endDate = new Date(str); 
             var end = endDate.getTime();  
             
             //时间差  
             var leftTime = end-now; 
             //定义变量 d,h,m,s保存倒计时的时间  
             var d,h,m,s;  
             if (leftTime>=0) {  
                 //d = Math.floor(leftTime/1000/60/60/24);  
                 //h = Math.floor(leftTime/1000/60/60%24);  
                 m = Math.floor(leftTime/1000/60%60);  
                 s = Math.floor(leftTime/1000%60);                     
             }  
             //将倒计时赋值到div中   
             if (s<10) {
             	s = "0" + s;
             }
             document.getElementById("left1").innerHTML = m + " : " + s;
             //递归每秒调用countTime方法，显示动态时间效果  
             setTimeout(countTime,1000);  
   
         }
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
	<div id="area">
		<span class="left">2 DAY 18 HOURS</span>
		<span class="right">预约</span>

		<span id="left1">34 : 04</span>
		
	
		<span class="right"><img src="images/index/icon_booking.png" alt="" style="margin-top: 6px;"></span>

	</div>

  </body>
</html>
