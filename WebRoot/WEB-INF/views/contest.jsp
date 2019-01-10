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
        
        window.onload = function countTime() {  
             //获取当前时间  
             var date = new Date();  
             var now = date.getTime();  
             //设置截止时间  
             var str="2020/5/17 08:34:05";
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
             if (m<10) {
              	m = "0" + m;
             }
             if (s<10) {
             	s = "0" + s;
             }
             document.getElementById("left1").innerHTML = m + " : " + s;
             str="2020/5/17 00:00:00";
             endDate = new Date(str); 
             end = endDate.getTime();  
             
             //时间差  
             leftTime = end-now; 
             //定义变量 d,h,m,s保存倒计时的时间  
             d,h,m,s;  
             if (leftTime>=0) {  
                 //d = Math.floor(leftTime/1000/60/60/24);  
                 //h = Math.floor(leftTime/1000/60/60%24);  
                 m = Math.floor(leftTime/1000/60%60);  
                 s = Math.floor(leftTime/1000%60);                     
             }  
             //将倒计时赋值到div中   
             if (m<10) {
              	m = "0" + m;
             }
             if (s<10) {
             	s = "0" + s;
             }
             document.getElementById("left2").innerHTML = m + " : " + s;
             //递归每秒调用countTime方法，显示动态时间效果  
             setTimeout(countTime,1000);  
   
         }
        function green(){
        	document.getElementById('reserve').innerHTML = '已预约';
        	document.getElementById('reserve').style.color = "#56A35E";
        }
        
                 function display(id){  
	        var traget=document.getElementById(id);  
	        if(traget.style.display=="none"){  
	            traget.style.display="";
	              index_top.style.background="#232323";  
	        }else{  
	            traget.style.display="none";
	            index_top.style.background="none";  
	      }  
	   	} 
  </script>
  </head>
  
  <body style="overflow-x:hidden">
    
	<div id="top">
		<ul id="top_nav">
			<li><a href="./index">主 页</a></li>
			<li><a href="./contest">竞 赛</a></li>
			<li><a href="./discovery">探 索</a></li>
			<li><a href="./community">社 区</a></li>
			<li><a href="./rank">排 行</a></li>
		</ul>
		  <div id="index_login" style="z-index:999">
      <div id="index_top" style="display: block;">
        <div id="login" onclick="display('lb')">
        <img  class="icon_face" src="images/community/icon_face.png"/>
        <img class="icon_rank4" src="images/login/icon_rank6.png">
         <img class="icon_spinner" src="images/login/icon_spinner.png">
        <ul id="login_username">
          <li class="login_username">Ash</li>
        </ul>
       </div>
     </div>

<div id="lb" style="display:none;">
  <div id="index_middle">
       <div id="index_left">
         <img src="images/login/icon_info.png">
         <p><a href="#">生 涯</a></p>
       </div>
              <div id="index_centre">
         <img src="images/login/icon_history.png">
         <p><a href="#">历史提交</a></p>
       </div>
              <div id="index_right">
         <img src="images/login/icon_collection.png">
         <p><a href="#">收 藏</a></p>
       </div>
       <div id="index_bottom">
         <img src="images/login/icon_logout.png">
         <p><a href="#">注 销</a></p>
       </div>
     </div>
     </div>
</div>
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
			<span id="reserve" class="right" style="font-family: "鎬濇簮榛戜綋 CN";color: green";>未预约</span>
			<span id="left1" style="font-weight:900;font-size: 30px;color: #8A7154;">16&nbsp;:&nbsp;39 </span>
			<span onclick="green()" class="right"><img src="images/index/icon_booking.png" alt="" style="margin-left: 14px"></span>
		</div>

	</div>
	<div class="card4">
		<div class="incard">
			<span class="left" style="font-family: "鎬濇簮榛戜綋 CN";">3&nbsp;&nbsp;DAY&nbsp;&nbsp;22&nbsp;&nbsp;HOURS</span>
			<span class="right" style="font-family: "鎬濇簮榛戜綋 CN";">未预约</span>
			<span id="left2" style="font-weight:900;font-size: 30px;color: #8A7154;">34&nbsp;:&nbsp;04 </span>
			<a href="./answer"><span class="right"><img src="images/index/icon_booking.png" alt="" style="margin-left: 14px"></span></a>
		</div>

	</div>
	</div>
  </body>
</html>
