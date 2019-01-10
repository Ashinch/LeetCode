<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="Models.Theme" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="Models.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>LeetCode|社区</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/nav.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="css/community.css">
	<link rel="stylesheet" type="text/css" href="css/scroll.css"/>
	<script src="js/jquery-3.3.1.min.js"></script>

  </head>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" > 
$(function ($) {
		//弹出登录
		$("#btn_publish").hover(function () {
			$(this).stop().animate({
				opacity: '1'
			}, 600);
		}, function () {
			$(this).stop().animate({
				opacity: '0.6'
			}, 1000);
		}).on('click', function () {
			$("body").append("<div id='mask'></div>");
			$("#mask").addClass("mask").fadeIn("slow");
			$("#tall").fadeIn("slow");
		});
		$(".suffix1").hover(function () {
			$(this).stop().animate({
				opacity: '1'
			}, 600);
		}, function () {
			$(this).stop().animate({
				opacity: '0.6'
			}, 1000);
		}).on('click', function () {
			$("body").append("<div id='mask'></div>");
			$("#mask").addClass("mask").fadeIn("slow");
			$("#dd").fadeIn("slow");
		});
		$("#dowm2").hover(function () { $(this).css({ color: 'black' }) }, function () { $(this).css({ color: '#999' }) }).on('click', function () {
			$("#tall").fadeOut("fast");
			$("#mask").css({ display: 'none' });
		});
		  $("#dowm3").hover(function () { $(this).css({ color: 'black' }) }, function () { $(this).css({ color: '#999' }) }).on('click', function () {
            $("#tall2").fadeOut("fast");
            $("#mask").css({ display: 'none' });
        });  
		
    });
    
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

<body>
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
        <img class="icon_rank4" src="images/login/icon_rank4.png">
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
	<div id="interior">
		<ul id="interior_nav">
			<li><a href="#">全部</a></li>
			<li><a href="#">精华</a></li>
			<li><a href="#">竞赛</a></li>
			<li><a href="#">问答</a></li>
			<li><a href="#">行业</a></li>
			<li><a href="#">其他</a></li>
		</ul>
	</div>
	</div>
	
	
		
	<div id="mark">
	</div>
	
	
	
	<div id="comment">
		<div id="one">
			<img src="images/community/icon_face.png" alt="">
			<ul id="content">
				<li class="suffix1" onclick="play()">${list[0].title }</li>
				<li class="suffix">发布于：${list[0].date } | 最近回复：SOEFN 13分钟前</li>
			</ul>	
			<div id="Read">
				<ul id="content">
					<li class="Read1">评论</li>
					<li class="Read2" style="font-weight:900;font-size: 26px;color: #8A7154;">17</li>
				</ul>
			</div>
			<div id="hr">

			</div>
			<div id="Read">
				<ul id="content">
					<li class="Read1">阅读</li>
					<li class="Read2" style="font-weight:900;font-size: 26px;color: #8A7154;margin: 0px auto;">623</li>
				</ul>
			</div>

			
		</div>
		
		<div id="two">
			<img src="images/community/icon_face.png" alt="">
			<ul id="content">
				<li class="suffix1">${list[1].title }</li>
				<li class="suffix">发布于：${list[1].date } | 最近回复：SOEFN 13分钟前</li>
			</ul>	
			<div id="Read">
				<ul id="content">
					<li class="Read1">评论</li>
					<li class="Read2" style="font-weight:900;font-size: 26px;color: #8A7154;">17</li>
				</ul>
			</div>
			<div id="hr">

			</div>
			<div id="Read">
				<ul id="content">
					<li class="Read1">阅读</li>
					<li class="Read2" style="font-weight:900;font-size: 26px;color: #8A7154;margin: 0px auto;">623</li>
				</ul>
			</div>
		</div>
		<div id="three">
			<img src="images/community/icon_face.png" alt="">
			<ul id="content">
				<li class="suffix1">${list[2].title }</li>
				<li class="suffix">发布于：${list[2].date } | 最近回复：SOEFN 13分钟前</li>
			</ul>	
			<div id="Read">
				<ul id="content">
					<li class="Read1">评论</li>
					<li class="Read2" style="font-weight:900;font-size: 26px;color: #8A7154;">17</li>
				</ul>
			</div>
			<div id="hr">

			</div>
			<div id="Read">
				<ul id="content">
					<li class="Read1">阅读</li>
					<li class="Read2" style="font-weight:900;font-size: 26px;color: #8A7154;margin: 0px auto;">623</li>
				</ul>
			</div>
		</div>
		<div id="one2">
			<img src="images/community/icon_face.png" alt="">
			<ul id="content">
				<li class="suffix1">${list[3].title }</li>
				<li class="suffix">发布于：${list[3].date } | 最近回复：SOEFN 13分钟前</li>
			</ul>	
			<div id="Read">
				<ul id="content">
					<li class="Read1">评论</li>
					<li class="Read2" style="font-weight:900;font-size: 26px;color: #8A7154;">17</li>
				</ul>
			</div>
			<div id="hr">

			</div>
			<div id="Read">
				<ul id="content">
					<li class="Read1">阅读</li>
					<li class="Read2" style="font-weight:900;font-size: 26px;color: #8A7154;margin: 0px auto;">623</li>
				</ul>
			</div>
		</div>
		<div id="two3">
			<img src="images/community/icon_face.png" alt="">
			<ul id="content">
				<li class="suffix1">${list[4].title }</li>
				<li class="suffix">发布于：${list[4].date } | 最近回复：SOEFN 13分钟前</li>
			</ul>	
			<div id="Read">
				<ul id="content">
					<li class="Read1">评论</li>
					<li class="Read2" style="font-weight:900;font-size: 26px;color: #8A7154;">17</li>
				</ul>
			</div>
			<div id="hr">

			</div>
			<div id="Read">
				<ul id="content">
					<li class="Read1">阅读</li>
					<li class="Read2" style="font-weight:900;font-size: 26px;color: #8A7154;margin: 0px auto;">623</li>
				</ul>
			</div>
		</div>
		<div id="four">
			<img src="images/community/icon_face.png" alt="">
			<ul id="content">
				<li class="suffix1">${list[5].title }</li>
				<li class="suffix">发布于：${list[5].date } | 最近回复：SOEFN 13分钟前</li>
			</ul>	
			<div id="Read">
				<ul id="content">
					<li class="Read1">评论</li>
					<li class="Read2" style="font-weight:900;font-size: 26px;color: #8A7154;">17</li>
				</ul>
			</div>
			<div id="hr">

			</div>
			<div id="Read">
				<ul id="content">
					<li class="Read1">阅读</li>
					<li class="Read2" style="font-weight:900;font-size: 26px;color: #8A7154;margin: 0px auto;">623</li>
				</ul>
			</div>
		</div>
	</div>
	<div id="buttom">
	<div class="dv-big-page">
		<div class="dv-margin-left"></div>
		<div class="dv-page-box">
			<div class="dv-page-position-box">
				<div id="div_li_btn_mid">
					<div class="dv_btns_box">
						<a href="./goPage?currentPage=1"><li class="li_btn">1</li></a>
						<a href="./goPage?currentPage=2"><li class="li_btn">2</li></a>
						<a href="./goPage?currentPage=3"><li class="li_btn">3</li></a>
						<li class="li_btn">4</li>
						<li class="li_btn">5</li>
						<li class="li_btn">...</li>
						<li class="li_btn">50</li>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="page">
		<p>50</p>
	</div>
	<div id="GO">
		<p>GO</p>
	</div>
	
	
	</div>
	<div id="btn_publish">
		<img src="images/community/btn_publish.png" alt="">
	</div>
	<div id="btn_publish">
		<img src="images/community/btn_reply.png" alt="">
	</div>
	<div id="tall" style="width: 826px;z-index:9998;">
	<div id="dowm"><a id="dowm2">×</a></div>
	<div id="tiele2"><p id="theme">请输入主题标题</p></div>
	<div id="content1"><p>请输入内容</p></div>
	<p id="end">发布</p>
	</div>
	
	<div id="tall2" style="width: 826px; display:none;z-index:9999;">
	<div id="dowm3"><a id="dowm4">×</a></div>
	<div id="tiele1"><p id="theme">主题：请问爱是分配各工工具？</p></div>
	<div id="content1"><p>请问爱是分配各工工具请问爱是分配各工工具请问爱是分配各工工具请问爱是分配各工工具请问爱是分配各工工具？</p></div>
	<p id="end">回复</p>
	</div>
	
	
	
	
	 <div id="details1" style="display:none; " >
    <div id="title">
      <img  id="left" onclick="play()" style="z-index:9997;" src="images/community/icon_return.png" /">
      <p >请问爱是分配各工工具？</p>
      <img id="right" onclick="play2()" src="images/community/icon_reply.png" />
    </div>
    <div id="list">
      <div id="item">
        <img src="images/community/icon_face.png" />
        <p id=name>Ash</p>
        <p id="level">IV</p>
        <p id="line"></p>
        <p id="problem">请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？</p>
        <p id="storey"># 1</p>
      </div>
      <div id="item">
        <img src="images/community/icon_face.png" />
        <p id=name>Ash</p>
        <p id="level">IV</p>
        <p id="line"></p>
        <p id="problem">请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？</p>
        <p id="storey"># 1</p>
      </div>
      <div id="item">
        <img src="images/community/icon_face.png" />
        <p id=name>Ash</p>
        <p id="level">IV</p>
        <p id="line"></p>
        <p id="problem">请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？</p>
        <p id="storey"># 1</p>
      </div>
      <div id="item">
        <img src="images/community/icon_face.png" />
        <p id=name>Ash</p>
        <p id="level">IV</p>
        <p id="line"></p>
        <p id="problem">请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？请问爱是分配各工工具？</p>
        <p id="storey"># 1</p>
      </div>
    </div>
  </div>
		
	<script type="text/javascript">
		function play(){
			if (document.getElementById("details1").style.display == "block")
			 {
			 
			 document.getElementById ("details1").style.display = "none" ;
			 document.getElementById ("content").style.display = "block" ;
			 document.getElementById("comment").style.display = "block";
			 document.getElementById("buttom").style.display = "block";
			 document.getElementById("mark").style.display = "block";
			
			 document.getElementById("btn_publish").style.display = "block";
			
			
				
						
			}else{
			
			document.getElementById("details1").style.display = "block";
			document.getElementById("content").style.display = "none";
		    document.getElementById("comment").style.display = "none";
		    document.getElementById("buttom").style.display = "none";
		    document.getElementById("mark").style.display = "none";
		    document.getElementById("btn_publish").style.display = "none";
		    
		}
		}
	</script>
	
		
	<script type="text/javascript">
		function play2()
	
		{
		
			
			
			
			
			document.getElementById ("tall2").style.display = "block" ;
			document.getElementById("content").style.display = "none";
		    document.getElementById("comment").style.display = "none";
		    document.getElementById ("details1").style.display = "block" ;		
				
			
		}
	</script>
	
      
  
  

  
</body>
</html>
