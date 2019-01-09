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
	<script src="js/jquery-3.3.1.min.js"></script>
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
				<li class="item1" onclick="classify(0)"><a>全 部<span></span></a></li>
				<li class="item1" onclick="classify(1)"><a>收 藏</a></li>
				<li class="item1" onclick="classify(2)"><a>字符串</a></li>
				<li class="item1" onclick="classify(3)"><a>数 组</a></li>
				<li class="item1" onclick="classify(4)"><a>队列 & 栈</a></li>
				<li class="item1" onclick="classify(5)"><a>链 表</a></li>
				<li class="item1" onclick="classify(6)"><a>树 & 图</a></li>
			</ul>
		</div>

		<div id="cctv" style="width:900px;height:600px ; position: absolute; top: 240px;left: 510px;display:none; ">
			<video src="raw/aaa.mp4" width="100%" height="100%"  controls="controls" >
			</video>
		</div>

		<div id="search">
			<input id="text" type="text" name="name" value="" placeholder="搜索…">
			<input id="but" type="submit" name="" value="" >
			
		</div>
		<div style="height: 1px;"></div>
		<div id="list">
		
		<% for(int i=0;i<list.size();i++) { %>
			<div id="listitem"  onclick="play()">
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
	<script>
		jQuery("#but").click(function () {
			jQuery.post("./getCourseByName",{"name":jQuery("#text").val()},function (data) {
				jQuery("#list").html(data);
			});
		});

		function play(){
			if (document.getElementById("cctv").style.display == "block") {
				document.getElementById("cctv").style.display = "none";
			}else{
			
			document.getElementById("cctv").style.display = "block";
			}
		}

		function classify(num) {
			switch (num) {
				case 0:
					
					break;
				case 1:
				
					break;
				case 2:
					goClz("字符串");
					break;
				case 3:
					goClz("数组");
					break;
				case 4:
					goClz("队列栈");
					break;
				case 5:
					goClz("链表");
					break;
				case 6:
					goClz("树图");
					break;
				default:
					break;
			}
		}

		function goClz(name) {
			jQuery.post("./getCourseByClass",{"classify":name},function (data) {
				jQuery("#list").html(data);
			});
		}

	</script>
  </body>
</html>
