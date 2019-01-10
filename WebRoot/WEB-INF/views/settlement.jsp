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

		<link rel="stylesheet" href="plugins/codemirror/lib/codemirror.css">
		<link rel="stylesheet" href="plugins/codemirror/theme/dracula.css">
		<link rel="stylesheet" href="plugins/codemirror/theme/tomorrow-night-bright.css">
		<link rel="stylesheet" href="plugins/codemirror/doc/docs.css">
		<link rel="stylesheet" href="plugins/codemirror/addon/fold/foldgutter.css" />
		<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
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
						单值二叉树
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
					style="background-image: url(images/answer/icon_done.png);">
					<p class="item_text">
						分割回文串
					</p>
				</div>
			</div>
			<div id="first"
				style="width: 425px; height: 590px; margin-top: 50px;">
				<p id="title1" style="top: 414px;">
					5.被围绕的区域
				</p>
				<div id="first2">
					给定一个二维的矩阵，包含 'X' 和 'O'（字母 O）。找到所有被 'X' 围绕的区域，并将这些区域里所有的 'O' 用 'X'
					填充。
					<br>
					<br>
					解释:
					<br>
					被围绕的区间不会存在于边界上，换句话说，任何边界上的 'O' 都不会被填充为 'X'。 任何不在边界上，或不与边界上的 'O' 相连的
					'O' 最终都会被填充为 'X'。如果两个元素在水平或垂直方向相邻，则称它们是“相连”的。
					<br>
					<br>
					示例:
					<br>
					X X X X&nbsp; X X X X
					<br>
					X O O X&nbsp; X X X X
					<br>
					X X O X&nbsp; X X X X
					<br>
					X O X X&nbsp; X O X X
				</div>
			</div>
			<div id="second" style="width: 435px; height: 590px; top: 383px;">
				<p id="title2">
					题目解析
				</p>
				<div id="second2">
					给定一个二维的矩阵，包含 'X' 和 'O'（字母 O）。找到所有被 'X' 围绕的区域，并将这些区域里所有的 'O' 用 'X'
					填充。
					<br>
					<br>
					解释:
					<br>
					被围绕的区间不会存在于边界上，换句话说，任何边界上的 'O' 都不会被填充为 'X'。 任何不在边界上，或不与边界上的 'O' 相连的
					'O' 最终都会被填充为 'X'。如果两个元素在水平或垂直方向相邻，则称它们是“相连”的。示例: X X X X X X X X X
					O O X X X X X X X O X X X X X X O X X X O X X
					<br>
					<br>
					<br>
				</div>
				<p style="margin-left: 25px; margin-top: 385px;">
					全球正确率：47%
				</p>
				<p style="margin-left: 25px; margin-top: 13px;">
					区域正确率：47%
				</p>
			</div>
			<div id="third" style="top:383px;">
				<p class="seach" style="top: 30px; left: 5px; padding-left: 34px;">
					Java
				</p>
				<p class="button2" style="margin-left: 0px;">
					重置
				</p>
				<p class="button3" style="margin-left: 0px;">
					执行
				</p>
				<div id="third2"style="margin-top: 90px; margin-left: 25px; width: 635px; height: 475px;">
					
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
        editor.setSize("653","475");
    </script>
	</div>
	</div>
	</div></div>
	</body>
</html>
