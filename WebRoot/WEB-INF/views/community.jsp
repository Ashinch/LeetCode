<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<% List<Theme> list = (List<Theme>)request.getAttribute("list"); %>
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
	<div id="mark">
	</div>
	<div id="comment">
		<div id="one">
			<img src="images/community/icon_face.png" alt="">
			<ul id="content">
				<li class="suffix1">请问爱是分配工具？</li>
				<li class="suffix">发布于：2018-12-28 | 最近回复：SOEFN 13分钟前</li>
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
				<li class="suffix1">请问爱是分配工具？</li>
				<li class="suffix">发布于：2018-12-28 | 最近回复：SOEFN 13分钟前</li>
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
				<li class="suffix1">请问爱是分配工具？</li>
				<li class="suffix">发布于：2018-12-28 | 最近回复：SOEFN 13分钟前</li>
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
				<li class="suffix1">请问爱是分配工具？</li>
				<li class="suffix">发布于：2018-12-28 | 最近回复：SOEFN 13分钟前</li>
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
				<li class="suffix1">请问爱是分配工具？</li>
				<li class="suffix">发布于：2018-12-28 | 最近回复：SOEFN 13分钟前</li>
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
				<li class="suffix1">请问爱是分配工具？</li>
				<li class="suffix">发布于：2018-12-28 | 最近回复：SOEFN 13分钟前</li>
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
	<div class="dv-big-page">
		<div class="dv-margin-left"></div>
		<div class="dv-page-box">
			<div class="dv-page-position-box">
				<div id="div_li_btn_mid">
					<div class="dv_btns_box">
						<li class="li_btn">1</li>
						<li class="li_btn">2</li>
						<li class="li_btn">3</li>
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
	<div id="icon">
		<img src="images/community/icon_forward.png" alt="">
	</div>
	<div id="icon2">
		<img src="images/community/icon_backward.png" alt="">
	</div>
	<div id="btn_publish">
		<img src="images/community/btn_publish.png" alt="">
	</div>
	</div>
</body>
</html>
