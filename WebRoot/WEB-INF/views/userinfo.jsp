<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="Models.User"%>
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
  <script src="js/jquery-3.3.1.min.js"></script>
  <script src='js/amcharts.js'></script>
  <script src='js/serial.js'></script>
  <script src="js/index.js"></script>
  <script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
  <script src="/follow.js" type="text/javascript"></script>

  <script type="text/javascript">
    function l(evn) {
      var name = event.target.files[0].name;//获取上传的文件名            
      var divObj = $(evn).prev()  //获取div的DOM对象            
      $(divObj).html(name) //插入文件名           
      var id = $(evn).attr('id');//获取id            
      var num = id.substr(4, 1)
      var file = event.target.files[0];
      if (window.FileReader) {
        var reader = new FileReader();
        reader.readAsDataURL(file);
        //监听文件读取结束后事件               
        reader.onloadend = function (e) {
          // $("#" + num).attr("src", e.target.result);    //e.target.result就是最后的路径地址
          jQuery.post("./uploadFace",function (data) {
            window.location.href="http://localhost:8080/LeetCode/userinfo";
          });
        };
      }
    }
    function display(id) {
      var traget = document.getElementById(id);
      if (traget.style.display == "none") {
        traget.style.display = "";
        index_top.style.background = "#232323";
      } else {
        traget.style.display = "none";
        index_top.style.background = "none";
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
    <div id="index_login" style="z-index:9997">
      <div id="index_top" style="display: block;">
        <div id="login" onclick="display('lb')">
          <img class="icon_face" src="<%= ((User)request.getSession().getAttribute("user")).getFace() %>" />
          <img class="icon_rank4" src="images/login/icon_rank7.png">
          <img class="icon_spinner" src="images/login/icon_spinner.png">
          <ul id="login_username">
            <li class="login_username" style="padding-left: 0px;">Ash</li>
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
            <p><a href="./index">注 销</a></p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div id="user">
    <a href=""></a>
    <form name="Form1" action="userface" method="post" enctype="multipart/form-data">
      <img src="<%= ((User)request.getSession().getAttribute("user")).getFace() %>" class="imgs" onclick="document.getElementById('img_1').click()">
      <input type="file" class="img" name="img[]" id="img_1" accept="image/*" onchange="l(this)" style="display:none" />
    </form>
  </div>
  <div id="dynamic">
    <div id="SmoothChart" class="Chart"></div>


    <div style="text-align:center;clear:both">

    </div>

  </div>
</body>


</html>