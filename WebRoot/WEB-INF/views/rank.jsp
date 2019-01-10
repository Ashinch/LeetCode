<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>LeetCode|排行</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/nav.css" rel="stylesheet" type="text/css" />
	<link href="css/scroll.css" rel="stylesheet" type="text/css" />
	<link href="css/rank.css" rel="stylesheet" type="text/css" />
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

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
    <div id="toplist">
      <ul>
        <li class="left"><img src="images/rank/icon_left.png" /></li>
        <li><img src="images/rank/icon_country2.png" /></li>
        <li><img src="images/rank/icon_country3.png" /></li>
        <li><img src="images/rank/icon_country4.png" /></li>
        <li class="centre"><img src="images/rank/icon_country1.png" /></li>
        <li><img src="images/rank/icon_country5.png" /></li>
        <li><img src="images/rank/icon_country6.png" /></li>
        <li><img src="images/rank/icon_country7.png" /></li>
        <li class="right"><img src="images/rank/icon_right.png" /></li>
      </ul>
    </div>
    <div id="contenttable">
      <table id="tableheader" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <th id="reduce" class="superscript">#</th>
          <th>用户名</th>
          <th>国家地区</th>
          <th class="superscript">段位</th>
          <th class="superscript">积分</th>
          <th class="superscript">胜利</th>
          <th class="superscript">失败</th>
          <th class="superscript">场次</th>
        </tr>
      </table>
      <table id="tablemain" border="0" cellpadding="0" cellspacing="0">
      <% 
      	String str;
      	for(int i=0;i<10;i++) { 
      		if(i % 2 == 0){
      			str = "gray";
      		}
      		else{
      			str = "black";
      		}
      %>
      	<tr class="<%=str %>">
          <td id="reduce">1</td>
          <td>DNEGR</td>
          <td>美国</td>
          <td>VII</td>
          <td>97</td>
          <td>693</td>
          <td>204</td>
          <td>897</td>
        </tr>
      <% } %>
      </table>
    </div>
    <div id="footer">
      <ul id="paging">
        <li>1</li>
        <li>2</li>
        <li>3</li>
        <li>4</li>
        <li>5</li>
        <li class="point">…</li>
        <li>50</li>
      </ul>
      <div id="jump">
        <p class="left">50</p>
        <p class="right">GO</p>
      </div>
      <div id="button">
        <img src="images/rank/icon_forward.png" />
        <img src="images/rank/icon_backward.png" />
      </div>
    </div>
  </div>

  </body>
</html>
