<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
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
	<img class="logo1" src="images/answer/icon_feedback.png">
	<img class="logo2" src="images/answer/icon_info.png">
	<div id="first" >
		<div  style="width: 260px;height: 50px; background-image: url(images/answer/item_1.png);margin-bottom: 10px;">
			<p class="item_text"> 一二三四五六七八</p>
			
			<img src="images/answer/icon_done.png" style="display:block;margin-bottom: 10px;position: absolute;top: 304px; left: 345px;">
		</div>
		<div  style="width: 260px;height: 50px; background-image: url(images/answer/item_2.png);margin-bottom: 10px;">
			<p class="item_text"> 一二三四五六七八</p>
			
			<img src="images/answer/icon_done.png" style="display:block;margin-bottom: 10px;position: absolute;top: 364px; left: 345px;">
		</div>
		<div  style="width: 260px;height: 50px; background-image: url(images/answer/item_3.png);margin-bottom: 10px;">
			<p class="item_text"> 一二三四五六七八</p>
			
			<img src="images/answer/icon_done.png" style="display:block;margin-bottom: 10px;position: absolute;top: 424px; left: 345px;">
		</div>
		<div  style="width: 260px;height: 50px; background-image: url(images/answer/item_4.png);margin-bottom: 10px;">
			<p class="item_text"> 一二三四五六七八</p>
			
			<img src="images/answer/icon_done.png" style="display:block;margin-bottom: 10px;position: absolute;top: 484px; left: 345px;">
		</div>
		<div  style="width: 260px;height: 50px; background-image: url(images/answer/item_5.png);margin-bottom: 10px;">
			<p class="item_text"> 一二三四五六七八</p>
			
			<img src="images/answer/icon_done.png" style="display:block;margin-bottom: 10px;position: absolute;top: 544px; left: 345px;">
		</div>
		<div  style="width: 260px;height: 50px; background-image: url(images/answer/item_6.png);margin-bottom: 10px;">
			<p class="item_text"> 一二三四五六七八</p>
			
			<img src="images/answer/icon_done.png" style="display:block;margin-bottom: 10px;position: absolute;top: 604px; left: 345px;">
		</div>
		<div  style="width: 260px;height: 50px; background-image: url(images/answer/item_7.png);margin-bottom: 10px;">
			<p class="item_text"> 一二三四五六七八</p>
			
			<img src="images/answer/icon_done.png" style="display:block;margin-bottom: 10px;position: absolute;top: 664px; left: 345px;">
		</div>
		<div  style="width: 260px;height: 50px; background-image: url(images/answer/item_8.png);margin-bottom: 10px;">
			<p class="item_text"> 一二三四五六七八</p>
			
			<img src="images/answer/icon_done.png" style="display:block;margin-bottom: 10px;position: absolute;top: 724px; left: 345px;">
		</div>
		<div  style="width: 260px;height: 50px; background-image: url(images/answer/item_9.png);margin-bottom: 10px;">
			<p class="item_text"> 一二三四五六七八</p>
			
			<img src="images/answer/icon_done.png" style="display:block;margin-bottom: 10px;position: absolute;top: 784px; left: 345px;">
		</div>
		<div  style="width: 260px;height: 50px; background-image: url(images/answer/item_10.png);margin-bottom: 10px;">
			<p class="item_text"> 一二三四五六七八</p>
			
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

	<p class="title"> 5.被围绕的区域</p>		
		<div id="second2">
			给定一个二维的矩阵，包含 'X' 和 'O'（字母 O）。找到所有被 'X' 围绕的区域，并将这些区域里所有的 'O' 用 'X' 填充。<br>
			<br>
			 解释:<br> 被围绕的区间不会存在于边界上，换句话说，任何边界上的 'O' 都不会被填充为 'X'。 任何不在边界上，或不与边界上的 'O' 相连的 'O' 最终都会被填充为 'X'。如果两个元素在水平或垂直方向相邻，则称它们是“相连”的。<br><br> 示例:<br> X X X X&nbsp;
			  X X X X <br>X O O X&nbsp; X X X X<br> X X O X&nbsp; X X X X<br> X O X X&nbsp; X O X X
			
		</div>		
		


	</div>

	<div id="third">
		<p class="seach" style="margin-left: 0px ;padding-left: 34px;">Java</p>



		<p class="button1" style="margin-left: 0px;">提交</p>

		<p class="button2" style="margin-left: 0px;">重置</p>

		<p class="button3" style="margin-left: 0px;">执行</p>

		<div id="third2">
			
			<div id="third3">
				<div class="code">
        <textarea id="code">#include <std>
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
			</div>



		</div>


	</div>
	</div>
</body>
</html>