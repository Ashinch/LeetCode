<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

		<title>LeetCode|结算</title>

		

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		
		<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>

		<link rel="stylesheet" type="text/css" href="css/nav.css">
		<link rel="stylesheet" type="text/css" href="css/scroll.css" />
		<link rel="stylesheet" type="text/css" href="css/settlement.css">

		<script type="text/javascript">
			window.onload=function (){
		        $ ('#img1').animate (
		        {
		            left : '350px',
		            opacity:1,
		        }, 700);
		    };
	        function next(){
	    	var left = document.getElementById("left");
			var right = document.getElementById("right");
			var bigtop = document.getElementById("bigtop");
			var big = document.getElementById("big");
			left.style.backgroundColor = "#bbbbbb";
			right.style.backgroundColor = "#8a7154";
	        $ ('#img1').animate (
	        {
	            left : '150px',
	            opacity:0,
	        }, 700);
	        $ ('#img2').animate (
	        {
	            left : '520px',
	            opacity:1,
	        }, 700);
	       }
	       function next2(){
	       	
		    var bigtop = document.getElementById("bigtop");
			var big = document.getElementById("big");
	        bigtop.style.display="none";
	        big.style.display="block";
       }
	</script>
	</head>

	<body>
		<div id="top">
			<ul id="top_nav">
				<li>
					<br>
				</li>
				<li>
					<a href="./index">主 页</a>
				</li>
				<li style="padding-left: 0px;">
					<a href="./contest">竞 赛</a>
				</li>
				<li>
					<a href="./discovery">探 索</a>
				</li>
				<li>
					<a href="./community">社 区</a>
				</li>
				<li>
					<a href="./rank">排 行</a>
				</li>
			</ul>
		</div>
		<div id="bigtop">
			<div id="context">
				<div id="img1">
					<img src="images/settlement/img_1.png">
				</div>
				<div id="img2">
					<img src="images/settlement/img_2.png">
				</div>
			</div>
			<div id="bottom" onclick="next();this,onclick=function(){next2()}">
				<img src="images/settlement/btn_ok.png">
			</div>
			<div id="dot">
				<p id="left"></p>
				<p id="right"></p>
			</div>
		</div>
		<div id="big"
			style="height: 690px; width: 1680px; margin-top: 203px; margin-left: 125px;">
			<div id="suspension" style="height: 50px;">
				<div id="item"
					style="background-image: url(images/answer/icon_done.png);">
					<p class="item_text">
						最长回文子串
					</p>
				</div>
				<div id="item"
					style="background-image: url(images/answer/icon_done.png);">
					<p class="item_text">
						乘积最大…
					</p>
				</div>
				<div id="item"
					style="background-image: url(images/answer/icon_done.png);">
					<p class="item_text">
						实现 Trie …
					</p>
				</div>
				<div id="item"
					style="background-image: url(images/answer/icon_done.png);">
					<p class="item_text">
						数据流的…
					</p>
				</div>
				<div id="item"
					style="background-image: url(images/answer/icon_done.png);">
					<p class="item_text">
						被围绕的…
					</p>
				</div>
				<div id="item"
					style="background-image: url(images/answer/icon_done.png);">
					<p class="item_text">
						矩阵中的…
					</p>
				</div>
				<div id="item"
					style="background-image: url(images/answer/icon_done.png);">
					<p class="item_text">
						LRU 缓存…
					</p>
				</div>
				<div id="item"
					style="background-image: url(images/answer/icon_done.png);">
					<p class="item_text">
						扁平化嵌…
					</p>
				</div>
				<div id="item"
					style="background-image: url(images/answer/icon_done.png);">
					<p class="item_text">
						天际线问题
					</p>
				</div>
				<div id="item"
					style="background-image: url(images/answer/icon_undone.png);">
					<p class="item_text" style="color: #888888;">
						分割回文串
					</p>
				</div>
			</div>
			<div id="first"
				style="width: 425px; height: 590px; margin-top: 50px;">
				<p id="title1" style="top: 414px;">
					1 . 最长回文子串
				</p>
				<div id="first2">
					给定一个字符串 s，找到 s 中最长的回文子串。你可以假设 s 的最大长度为 1000。<br><br>示例 1：<br>输入: "babad"输出: "bab"注意: "aba" 也是一个有效答案。<br><br>示例 2：<br>输入: "cbbd"输出: "bb"
				</div>
			</div>
			<div id="second" style="width: 435px; height: 590px; top: 383px;">
				<p id="title2">
					题目解析
				</p>
				<div id="second2">
					1.将子串分为单核和双核的情况，单核即指子串长度为奇数，双核则为偶数。<br><br>
2.遍历每个除最后一个位置的字符index(字符位置)，单核：初始low = 初始high = index，low和high均不超过原字符串的下限和上限；判断low和high处的字符是否相等，相等则low++、high++（双核：初始high = 初始low+1 = index + 1）。<br><br>
3.每次low与high处的字符相等时，都将当前最长的回文子串长度与high-low+1比较。后者大时，将最长的回文子串改为low与high之间的。<br><br>
4.重复执行 2 、3 ，直至high-low+1 等于原字符串长度或者遍历到最后一个字符，取当前截取到的回文子串，该子串即为最长的回文子串。
				</div>
				<p style="margin-left: 25px; margin-top: 385px;font-size: 16px;color: rgb(70, 70, 70);">
					全球正确率：53%
				</p>
				<p style="margin-left: 25px; margin-top: 13px;font-size: 16px;color: rgb(70, 70, 70);">
					区域正确率：58%
				</p>
			</div>
			<div id="third" style="top:383px;">
				
							
	</div>
	
	</div>
	</div>
	</div></div>
	</body>
</html>
