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
  	<% List<Course> list = (List<Course>) request.getAttribute("list"); %>
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
        <img class="icon_rank4" src="images/login/icon_rank7.png">
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
		<div id="nav">
			<ul>
				<li onclick="classify(0)"><a>全 部<span id="item0" class="visual"></span></a></li>
				<li onclick="classify(1)"><a>收 藏<span id="item1"></span></a></li>
				<li onclick="classify(2)"><a>字符串<span id="item2"></span></a></li>
				<li onclick="classify(3)"><a>数 组<span id="item3"></span></a></li>
				<li onclick="classify(4)"><a>队列 & 栈<span id="item4"></span></a></li>
				<li onclick="classify(5)"><a>链 表<span id="item5"></span></a></li>
				<li onclick="classify(6)"><a>树 & 图<span id="item6"></span></a></li>
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
				    identifier(num)
					break;
				case 1:
					identifier(num)
					break;
				case 2:
					identifier(num)
					goClz("字符串");
					break;
				case 3:
					identifier(num)
					goClz("数组");
					break;
				case 4:
					identifier(num)
					goClz("队列栈");
					break;
				case 5:
					identifier(num)
					goClz("链表");
					break;
				case 6:
					identifier(num)
					goClz("树图");
					break;
				default:
					break;
			}
		}
		
		function identifier(num){
			document.getElementById("item" + num).className = "visual";
			document.getElementById("")
			for(var i=0; i<7; i++){
				if(num != i){
					document.getElementById("item" + i).className = "	";
				}
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
