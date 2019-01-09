<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>LeetCode|用户</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/userinfo.css">
  	<link href="css/nav.css" rel="stylesheet" />
    <script src='js/amcharts.js'></script>
    <script src='js/serial.js'></script>
    <script src="js/index.js"></script>
    <script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
    <script src="/follow.js" type="text/javascript"></script>
	
	<script type="text/javascript">
		function l(evn){            
			 var name = event.target.files[0].name;//获取上传的文件名            
			 var divObj= $(evn).prev()  //获取div的DOM对象            
			 $(divObj).html(name) //插入文件名           
			 var id = $(evn).attr('id');//获取id            
			 var num = id.substr(4,1)            
			 var file = event.target.files[0];            
			 if (window.FileReader) {                
				 var reader = new FileReader();                
				 reader.readAsDataURL(file);               
					//监听文件读取结束后事件               
				  reader.onloadend = function (e) {                    
					  $("#"+num).attr("src",e.target.result);    //e.target.result就是最后的路径地址                
				 };            
			 }        
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
  <div id="user">
    <a href="" ></a> 
     <form name="Form1" action="userface" method="post"  enctype="multipart/form-data">
     	<img src="images/userinfo/icon_face.png" class="imgs" onclick="document.getElementById('img_1').click()">
     	<input type="file" class="img" name="img[]" id="img_1" accept="image/*" onchange="l(this)"  style="display:none"/>
     	<input type="submit" value="提交">
    </form>
  </div>
  <div id="dynamic">
    <div id="SmoothChart" class="Chart"></div>


<div style="text-align:center;clear:both">

</div>

  </div>
</body>
  
  
</html>
