<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ajax.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	
	<style>
	#one{
		background-color:red;width:100px;height:50px;color:#fff;
	}
	#two{
		background-color:blue;width:100px;height:50px;color:#fff;
	}
	</style>
	
	
<script type="text/javascript">
    $(function(){
        $("#one").click(function(){
            $.post("./ajaxSend",{"num":"1"},function(data){
            	$("#two").html(data)
            });
        });
    });
</script>
  </head>
  
  <body>
    ajax
    <br>
    <br>
    <div id='one'>发送ajax</div>
    <br>
    <br>
    <div id='two'>显示内容</div>
  </body>
</html>
