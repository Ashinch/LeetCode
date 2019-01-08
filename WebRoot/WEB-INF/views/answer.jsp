<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="Models.Paper"%>
<%@page import="util.StrFormat"%>
<%@page import="util.Compiler"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <% List<Paper> list = (List<Paper>) request.getAttribute("list");  %>
<title>LeetCode｜答题</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="plugins/codemirror/lib/codemirror.css">
    <link rel="stylesheet" href="plugins/codemirror/theme/dracula.css">
    <link rel="stylesheet" href="plugins/codemirror/theme/tomorrow-night-bright.css" >
    <link rel="stylesheet" href="plugins/codemirror/doc/docs.css">
    <link rel="stylesheet" href="plugins/codemirror/addon/fold/foldgutter.css"/>

    <script src="plugins/codemirror/keymap/sublime.js"></script>
    <script src="plugins/codemirror/lib/codemirror.js"></script>
    <script src="plugins/codemirror/doc/activebookmark.js"></script>

    <script src="plugins/codemirror/mode/cmake/cmake.js"></script>
    <script src="plugins/codemirror/mode/r/r.js"></script>
    <script src="plugins/codemirror/mode/go/go.js"></script>
    <script src="plugins/codemirror/mode/python/python.js"></script>
    <script src="plugins/codemirror/mode/javascript/javascript.js"></script>
    <script src="plugins/codemirror/mode/css/css.js"></script>
    <script src="plugins/codemirror/mode/xml/xml.js"></script>
    <script src="plugins/codemirror/mode/clike/clike.js"></script>

    <script src="plugins/codemirror/addon/edit/matchbrackets.js"></script>
    <script src="plugins/codemirror/addon/edit/closebrackets.js"></script>
    <script src="plugins/codemirror/addon/selection/active-line.js"></script>
    <script src="plugins/codemirror/addon/edit/matchtags.js"></script>
    <script src="plugins/codemirror/addon/fold/foldcode.js"></script>
    <script src="plugins/codemirror/addon/fold/foldgutter.js"></script>
    <script src="plugins/codemirror/addon/fold/brace-fold.js"></script>
    <script src="plugins/codemirror/addon/fold/comment-fold.js"></script>
    <script src="plugins/codemirror/addon/fold/xml-fold.js"></script>
	<link rel="stylesheet" type="text/css" href="css/nav.css">
	<link rel="stylesheet" type="text/css" href="css/answer.css">
	<link rel="stylesheet" type="text/css" href="css/scroll.css"/>
	<script src="js/jquery-3.3.1.min.js"></script>
	
	
	
  </head>
  
  <body>
	<div id="top">
		<ul id="top_nav">
			<li><br></li><li><a href="./index">主 页</a></li>
			<li style="padding-left:0px;"><a href="./contest">竞 赛</a></li>
			<li><a href="./discovery">探 索</a></li>
			<li><a href="./community">社 区</a></li>
			<li><a href="./rank">排 行</a></li>
		</ul>
	</div>
	
	
	
	<div id="content">
	<img class="logo1" src="images/answer/icon_feedback.png">
	<img class="logo2" src="images/answer/icon_info.png">
	<div id="first">
		<div id="item" onclick="itemClick(0)" style="background-image: url(images/answer/item_1.png);">
			<p class="item_text"><%= StrFormat.maxLength(list.get(0).getTitle(),14) %></p>
			
			<img src="images/answer/icon_done.png" style="display:block;margin-bottom: 10px;position: absolute;top: 304px; left: 345px;">
		</div>
		<div id="item" onclick="itemClick(1)" style="width: 260px;height: 50px; background-image: url(images/answer/item_2.png);margin-bottom: 10px;">
			<p class="item_text"><%= StrFormat.maxLength(list.get(1).getTitle(),14) %></p>
			
			<img src="images/answer/icon_done.png" style="display:block;margin-bottom: 10px;position: absolute;top: 364px; left: 345px;">
		</div>
		<div id="item" onclick="itemClick(2)" style="width: 260px;height: 50px; background-image: url(images/answer/item_3.png);margin-bottom: 10px;">
			<p class="item_text"><%= StrFormat.maxLength(list.get(2).getTitle(),14) %></p>
			
			<img src="images/answer/icon_done.png" style="display:block;margin-bottom: 10px;position: absolute;top: 424px; left: 345px;">
		</div>
		<div id="item" onclick="itemClick(3)" style="width: 260px;height: 50px; background-image: url(images/answer/item_4.png);margin-bottom: 10px;">
			<p class="item_text"><%= StrFormat.maxLength(list.get(3).getTitle(),14) %></p>
			
			<img src="images/answer/icon_done.png" style="display:block;margin-bottom: 10px;position: absolute;top: 484px; left: 345px;">
		</div>
		<div id="item" onclick="itemClick(4)" style="width: 260px;height: 50px; background-image: url(images/answer/item_5.png);margin-bottom: 10px;">
			<p class="item_text"><%= StrFormat.maxLength(list.get(4).getTitle(),14) %></p>
			
			<img src="images/answer/icon_done.png" style="display:block;margin-bottom: 10px;position: absolute;top: 544px; left: 345px;">
		</div>
		<div id="item" onclick="itemClick(5)" style="width: 260px;height: 50px; background-image: url(images/answer/item_6.png);margin-bottom: 10px;">
			<p class="item_text"><%= StrFormat.maxLength(list.get(5).getTitle(),14) %></p>
			
			<img src="images/answer/icon_done.png" style="display:block;margin-bottom: 10px;position: absolute;top: 604px; left: 345px;">
		</div>
		<div id="item" onclick="itemClick(6)" style="width: 260px;height: 50px; background-image: url(images/answer/item_7.png);margin-bottom: 10px;">
			<p class="item_text"><%= StrFormat.maxLength(list.get(6).getTitle(),14) %></p>
			
			<img src="images/answer/icon_done.png" style="display:block;margin-bottom: 10px;position: absolute;top: 664px; left: 345px;">
		</div>
		<div id="item" onclick="itemClick(7)" style="width: 260px;height: 50px; background-image: url(images/answer/item_8.png);margin-bottom: 10px;">
			<p class="item_text"><%= StrFormat.maxLength(list.get(7).getTitle(),14) %></p>
			
			<img src="images/answer/icon_done.png" style="display:block;margin-bottom: 10px;position: absolute;top: 724px; left: 345px;">
		</div>
		<div id="item" onclick="itemClick(8)" style="width: 260px;height: 50px; background-image: url(images/answer/item_9.png);margin-bottom: 10px;">
			<p class="item_text"><%= StrFormat.maxLength(list.get(8).getTitle(),14) %></p>
			
			<img src="images/answer/icon_done.png" style="display:block;margin-bottom: 10px;position: absolute;top: 784px; left: 345px;">
		</div>
		<div id="item" onclick="itemClick(9)" style="width: 260px;height: 50px; background-image: url(images/answer/item_10.png);margin-bottom: 10px;">
			<p class="item_text"><%= StrFormat.maxLength(list.get(9).getTitle(),14) %></p>
			
			<img src="images/answer/icon_done.png" style="display:block;margin-bottom: 10px;position: absolute;top: 844px; left: 345px;">
		</div>
		
		<div>
				<img src="images/answer/icon_time.png" alt="" style="margin-top: 75px;">
				<p class="timep">16 : 39</p>
				
			</div>
			<div>
				<p id="page1">5&nbsp;/</p>
			</div>
			<div>
				<p id="page2">&nbsp;&nbsp;10</p>
			</div>
		
	</div >
	

	<div id="second">

	<p id="title">5.被围绕的区域</p>		
		<div id="second2">
			给定一个二维的矩阵，包含 'X' 和 'O'（字母 O）。找到所有被 'X' 围绕的区域，并将这些区域里所有的 'O' 用 'X' 填充。<br>
			<br>
			 解释:<br> 被围绕的区间不会存在于边界上，换句话说，任何边界上的 'O' 都不会被填充为 'X'。 任何不在边界上，或不与边界上的 'O' 相连的 'O' 最终都会被填充为 'X'。如果两个元素在水平或垂直方向相邻，则称它们是“相连”的。<br><br> 示例:<br> X X X X&nbsp;
			  X X X X <br>X O O X&nbsp; X X X X<br> X X O X&nbsp; X X X X<br> X O X X&nbsp; X O X X
			
		</div>		
		


	</div>

	<div id="third">
		<p class="seach" style="margin-left: 0px ;padding-left: 34px;">Java</p>



		<p class="button1" style="margin-left: 0px;" onclick="runCode()">提交</p>

		<p class="button2" style="margin-left: 0px;">重置</p>

		<p class="button3" style="margin-left: 0px;">执行</p>

		<div id="third2">
			
			<div id="third3">
				<div class="code">
        <textarea id="code" onChange="codeChange()">#include <std>
int main()
{
    printf("1");
}</textarea>
    </div>
    

    <script>
        var editor = CodeMirror.fromTextArea(document.getElementById("code"), { //script_once_code为你的textarea的ID号
            lineNumbers: true,     // 显示行号
            indentUnit: 4,         // 缩进单位为4
            styleActiveLine: true, // 当前行背景高亮
            matchBrackets: false,   // 括号匹配
            autoCloseBrackets: true,// 括号补全
            foldGutter:true,
            // mode:"cmake",
            mode: 'python',
            // mode: "text/x-java", //实现Java代码高亮
            theme: 'tomorrow-night-bright',      // 编辑器主题
            lineWrapping: true, //是否强制换行
            gutters: ["CodeMirror-linenumbers", "CodeMirror-foldgutter"],
            
        });

        editor.setSize("782","475");
    </script>
	<script>
	
		function itemClick(item) {
            $.post("./ajaxContentByItem",{"item":item},function(data){
             	var arr=data.split("$$");
             	$("#title").html(arr[0]);
            	$("#second2").html(arr[1]);
            });
            
            document.getElementById("code").value;
		}
		
		// function runCode() {
		// 	var code = document.getElementById("code").value;
		// 	$.ajax({
		// 		type: 'POST',
		// 		url: 'https://leetcode-cn.com/playground/api/runcode',
		// 		headers:{
		// 			'Access-Control-Allow-Origin':'*',
		// 			'Access-Control-Allow-Method':'POST,GET'
		// 			'accept': '*/*',
		// 			'accept-encoding': 'gzip, deflate, br',
		// 			'accept-language': 'zh-CN,zh;q=0.9',
		// 			'content-length': '123',
		// 			'content-type': 'application/json',
		// 			'origin': 'https://leetcode-cn.com',
		// 			'referer': 'https://leetcode-cn.com/playground/new/empty',
		// 			'user-agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safari/537.36 Core/1.63.6818.400 QQBrowser/10.3.3024.400',
		// 			'x-csrftoken': 'aARwvEeJG1JtRbrEBpvidbdogmvSmn7lCcCUn7hsEzaGT51HRzvZYSAlJKnf9os1',
		// 			'cookie':'_uab_collina=153719430667797976177566; gr_user_id=41a57e6c-4b4a-42de-af39-714eb878cd62; grwng_uid=60a23a4f-27e5-4cb2-9019-7e95c10e9df0; a2873925c34ecbd2_gr_last_sent_cs1=glaxy; O5LM_2132_nofavfid=1; O5LM_2132_ulastactivity=22922bkT0w44ncxn1FaQpAwqK51BWJAXpW3kh2FQlpoa\%2FSszGb5a; O5LM_2132_smile=1D1; O5LM_2132_forum_lastvisit=D_2_1545992121D_45_1545992129D_46_1545992134; O5LM_2132_visitedfid=46D45D2; csrftoken=aARwvEeJG1JtRbrEBpvidbdogmvSmn7lCcCUn7hsEzaGT51HRzvZYSAlJKnf9os1; LEETCODE_SESSION=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJfYXV0aF91c2VyX2lkIjoiODk4NTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhdXRoZW50aWNhdGlvbi5hdXRoX2JhY2tlbmRzLlBob25lQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjc1YjJiZmRiNGUwMTgzZjc3NWNkNTU0ZGY0NDZjYzQxZDE4NTg1MyIsImlkIjo4OTg1OCwiZW1haWwiOiJHbGF4eWluZmluaXRlQG91dGxvb2suY29tIiwidXNlcm5hbWUiOiJHbGF4eSIsInVzZXJfc2x1ZyI6ImdsYXh5IiwiYXZhdGFyIjoiaHR0cHM6Ly9hc3NldHMubGVldGNvZGUtY24uY29tL2FsaXl1bi1sYy11cGxvYWQvdXNlcnMvZ2xheHkvYXZhdGFyXzE1Mjg0Mzc5MzUucG5nIiwicGhvbmVfdmVyaWZpZWQiOnRydWUsInRpbWVzdGFtcCI6IjIwMTgtMTItMjggMTQ6NDY6MzcuNzE5MTU0KzAwOjAwIiwiUkVNT1RFX0FERFIiOiI1OC41OS4xNTMuMTA3IiwiSURFTlRJVFkiOiJkZGIyNWUzODIzYTE2MTU2NzYwNTI5MWViZmVlNjVjMCIsIl9zZXNzaW9uX2V4cGlyeSI6MTIwOTYwMH0.0IlhT43t032tFFNebntLU5Ud-lRYmD6Fcks3pQ23QYg; Hm_lvt_fa218a3ff7179639febdb15e372f411c=1545911753,1545989811,1546238508; a2873925c34ecbd2_gr_session_id=bb29f3a7-68cd-4c92-9d96-ad64e2f40d8e; a2873925c34ecbd2_gr_last_sent_sid_with_cs1=bb29f3a7-68cd-4c92-9d96-ad64e2f40d8e; a2873925c34ecbd2_gr_session_id_bb29f3a7-68cd-4c92-9d96-ad64e2f40d8e=true; Hm_lpvt_fa218a3ff7179639febdb15e372f411c=1546238593; a2873925c34ecbd2_gr_cs1=glaxy'},
		// 		data:"{'lang': 'cpp','typed_code': code,'data_input': ''}",
		// 		success: function(data){
		// 			console.log(data);
		// 		},
		// 		error: function(data){
		// 			console.log(data);
		// 		}
		// 	});
            
		// }

		function runCode() {
			var code = document.getElementById("code").value;
			$.get("./ajaxRunCode",{"lang":"cpp","code":code},function(data){
             	// var arr=data.split("$$");
             	// $("#title").html(arr[0]);
            	// $("#second2").html(arr[1]);
			});
			
            
		}
		
		function codeChange() {
			var b = document.getElementById("code").value;
			console.log(b);
			localStorage.setItem('code', b);
		}

	</script>
</body>
</html>