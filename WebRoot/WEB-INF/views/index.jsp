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
  	<link rel="Stylesheet" type="text/css" href="css/loginDialog.css" />
  <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript">
	    $(function ($) {
	    //弹出登录
	    $("#top_login").hover(function () {
	      $(this).stop().animate({
	        opacity: '1'
	      }, 600);
	    }, function () {
	      $(this).stop().animate({
	        opacity: '0.6'
	      }, 1000);
	    }).on('click', function () {
	      $("#LoginBox").fadeIn("slow");
	    });
	    //关闭
	    $(".close_btn").hover(function () { $(this).css({ color: 'black' }) }, function () { $(this).css({ color: '#999' }) }).on('click', function () {
	      $("#LoginBox").fadeOut("fast");
	    });
	        $(".close_btn").hover(function () { $(this).css({ color: 'black' }) }, function () { $(this).css({ color: '#999' }) }).on('click', function () {
	            $("#RegBox").fadeOut("fast");
	        });  
	    });
    
        //切换DIV 
        function showdiv(){

          var reg=document.getElementById("RegBox");
          var login=document.getElementById("LoginBox");

          if (login.style.display=="block"){
            login.style.display="none";
            reg.style.display="block";
       	  }else if (login.style.display=="none"){
	            login.style.display="block";
	            reg.style.display="none";
	      }
	    }



   		document.onreadystatechange = function () {
            if (document.readyState == "complete") {
                document.body.style.display = "block";
            } else {
                document.body.style.display = "none";
            };
        };


  
 
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
             if (m<10) {
              m = "0" + m;
             }
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
    <div id="index_login">
      <DIV id="top_login">
      <img src="images/login/icon_login.png">
       </DIV>
      <div id="index_top" style="display: none;">
        <div id="login" onclick="display('lb')">
        <img  class="icon_face" src="images/community/icon_face.png"/>
        <img class="icon_rank4" src="images/login/icon_rank4.png">
         <img class="icon_spinner" src="images/login/icon_spinner.png">
        <ul id="login_username">
          <li class="login_username">Ash</li>
        </ul>
       </div>
     </div>

<div id="lb" style="display:none">
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
	<div id="area">
		<span class="left">2 DAY 18 HOURS</span>
		<span class="right">预约</span>

		<span id="left1">34 : 04</span>
		
	
		<span class="right"><img src="images/index/icon_booking.png" alt="" style="margin-top: 6px;"></span>

	</div>
  <!--登录-->
        <div id="LoginBox" >
        <form action="./loginCheck" method="post">
            <div  class="row1" >
                <a class="dl" >登录</a>
            </div>
            <div class="djsj">
                <a  class="zfsj"  onclick="showdiv()">注册</a>
            </div>
            <div class="roww">
                <a  title="关闭窗口" class="close_btn" id="closeBtn">×</a>
            </div>
            <div class="row"> 
                <input type="text" name="username" value="" placeholder="用户名" class="wenb">
            </div>
            <div class="row">
                <input type="text" name="password" value="" placeholder="密码" class="wenb">
            </div>
            <div id="wjmm">
                <a href="#" class="wjmmwb">忘记密码？</a>
            </div>
            <div id="dla">
            	<input type="submit" value="立即登录" class="dlma">
            </div>
            </form>
        </div>
        <!--注册-->
        <div id="RegBox" >
            <div  class="djsj">
                <a  class="zfsj"  onclick="showdiv()">登录</a>
            </div>
            <div id="bootm2" class="zc2">
                <a  class="dl"  >注册</a>
            </div>
            <div class="roww">
                <a  title="关闭窗口" class="close_btn" id="closeBtn">×</a>
            </div>
            <div class="row"> 
                <input type="text" name="username" value="" placeholder="用户名" class="yonghu">
            </div>
            <div class="row">
                <input type="text" name="username" value="" placeholder="密码" class="mima">
            </div>
            <div class="row">
                <input type="text" name="username" value="" placeholder="确认密码" class="querenmami">
            </div>
            <div class="row">
                <input type="text" name="username" value="" placeholder="验证码" class="yanzm">
            </div>
            <div id="wjmm">
                <a href="#" class="wjmmwb">手机号注册</a>
            </div>
            <div id="dla">
                <a href="ce.html" class="dlma">立即注册</a>
            </div>
        </div>

  <script type="text/javascript">
    
    function open(){
      document.getElementById("index_middle").style.visibility="visible";
    }

  </script>


  </body>
</html>
