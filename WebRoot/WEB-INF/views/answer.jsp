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

	<script src="js/jquery-3.3.1.min.js"></script>
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
			
			<img id="itemImg0" src="images/answer/icon_undone.png" style="display:block;margin-bottom: 10px;position: absolute;top: 304px; left: 345px;">
		</div>
		<div id="item" onclick="itemClick(1)" style="width: 260px;height: 50px; background-image: url(images/answer/item_2.png);margin-bottom: 10px;">
			<p class="item_text"><%= StrFormat.maxLength(list.get(1).getTitle(),14) %></p>
			
			<img id="itemImg1" src="images/answer/icon_undone.png" style="display:block;margin-bottom: 10px;position: absolute;top: 364px; left: 345px;">
		</div>
		<div id="item" onclick="itemClick(2)" style="width: 260px;height: 50px; background-image: url(images/answer/item_3.png);margin-bottom: 10px;">
			<p class="item_text"><%= StrFormat.maxLength(list.get(2).getTitle(),14) %></p>
			
			<img id="itemImg2" src="images/answer/icon_undone.png" style="display:block;margin-bottom: 10px;position: absolute;top: 424px; left: 345px;">
		</div>
		<div id="item" onclick="itemClick(3)" style="width: 260px;height: 50px; background-image: url(images/answer/item_4.png);margin-bottom: 10px;">
			<p class="item_text"><%= StrFormat.maxLength(list.get(3).getTitle(),14) %></p>
			
			<img id="itemImg3" src="images/answer/icon_undone.png" style="display:block;margin-bottom: 10px;position: absolute;top: 484px; left: 345px;">
		</div>
		<div id="item" onclick="itemClick(4)" style="width: 260px;height: 50px; background-image: url(images/answer/item_5.png);margin-bottom: 10px;">
			<p class="item_text"><%= StrFormat.maxLength(list.get(4).getTitle(),14) %></p>
			
			<img id="itemImg4" src="images/answer/icon_undone.png" style="display:block;margin-bottom: 10px;position: absolute;top: 544px; left: 345px;">
		</div>
		<div id="item" onclick="itemClick(5)" style="width: 260px;height: 50px; background-image: url(images/answer/item_6.png);margin-bottom: 10px;">
			<p class="item_text"><%= StrFormat.maxLength(list.get(5).getTitle(),14) %></p>
			
			<img id="itemImg5" src="images/answer/icon_undone.png" style="display:block;margin-bottom: 10px;position: absolute;top: 604px; left: 345px;">
		</div>
		<div id="item" onclick="itemClick(6)" style="width: 260px;height: 50px; background-image: url(images/answer/item_7.png);margin-bottom: 10px;">
			<p class="item_text"><%= StrFormat.maxLength(list.get(6).getTitle(),14) %></p>
			
			<img id="itemImg6" src="images/answer/icon_undone.png" style="display:block;margin-bottom: 10px;position: absolute;top: 664px; left: 345px;">
		</div>
		<div id="item" onclick="itemClick(7)" style="width: 260px;height: 50px; background-image: url(images/answer/item_8.png);margin-bottom: 10px;">
			<p class="item_text"><%= StrFormat.maxLength(list.get(7).getTitle(),14) %></p>
			
			<img id="itemImg7" src="images/answer/icon_undone.png" style="display:block;margin-bottom: 10px;position: absolute;top: 724px; left: 345px;">
		</div>
		<div id="item" onclick="itemClick(8)" style="width: 260px;height: 50px; background-image: url(images/answer/item_9.png);margin-bottom: 10px;">
			<p class="item_text"><%= StrFormat.maxLength(list.get(8).getTitle(),14) %></p>
			
			<img id="itemImg8" src="images/answer/icon_undone.png" style="display:block;margin-bottom: 10px;position: absolute;top: 784px; left: 345px;">
		</div>
		<div id="item" onclick="itemClick(9)" style="width: 260px;height: 50px; background-image: url(images/answer/item_10.png);margin-bottom: 10px;">
			<p class="item_text"><%= StrFormat.maxLength(list.get(9).getTitle(),14) %></p>
			
			<img id="itemImg9" src="images/answer/icon_undone.png" style="display:block;margin-bottom: 10px;position: absolute;top: 844px; left: 345px;">
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

	<p id="title">1 . 最长回文子串</p>		
		<div id="second2">
			给定一个字符串 s，找到 s 中最长的回文子串。你可以假设 s 的最大长度为 1000。<br><br>示例 1：<br>输入: "babad"输出: "bab"注意: "aba" 也是一个有效答案。<br><br>示例 2：<br>输入: "cbbd"输出: "bb"
		</div>		
		


	</div>

	<div id="third">
		<p onclick="checkSelect()" id="seach" style="margin-left: 0px ;padding-left: 34px;">Python3</p>
		
		<lu id="language" style="z-index:999">
	        <li onclick="codeChange('cpp','C++')">C++</li>
	        <li onclick="codeChange('java','Java')">Java</li>
	        <li onclick="codeChange('python','Python')">Python</li>
	        <li onclick="codeChange('python3','Python3')">Python3</li>
	        <li onclick="codeChange('c','C')">C</li>
	        <li onclick="codeChange('csharp','C#')">C#</li>
	        <li onclick="codeChange('javascript','JavaScript')">JavaScript</li>
	        <li onclick="codeChange('ruby','Ruby')">Ruby</li>
	        <li onclick="codeChange('swift','Swift')">Swift</li>
	        <li onclick="codeChange('golang','GO')">GO</li>
	        <li onclick="codeChange('bash','Bash')">Bash</li>
	        <li onclick="codeChange('scala','Scala')">Scala</li>
	        <li onclick="codeChange('kotlin','Kotlin')">Kotlin</li>
	        <li onclick="codeChange('rust','Rust')">Rust</li>
	        <li class="bottom" onclick="codeChange('php','PHP')">PHP</li>
   		</lu>
   		
	    <p id="state">在下方代码框中编写算法...</p>

		<a onclick="firm()"><p class="button1" style="margin-left: 0px;">提交</p></a>

		<p onclick="resetCode()" class="button2" style="margin-left: 0px;" >重置</p>

		<p onclick="beginCout()" class="button3" style="margin-left: 0px;" >执行</p>

		<div id="third2">
			
			<div id="third3">
				<div class="code">
        <textarea id="code" onChange="codeChange()">print("Hello World!")</textarea>
    </div>
    

    <script>
		var lang = "Python3";
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
			textWrapping: true,
            gutters: ["CodeMirror-linenumbers", "CodeMirror-foldgutter"],
            
        });

		editor.setSize("782","475");
		
		
		function itemClick(item) {
			if (item != 0) {
				var html = jQuery("#itemImg" + item.toString()).attr("src");
				jQuery("#itemImg" + item.toString()).attr("src",html.replace("undone","done"));
				preCode(item);
			}

			if (item == 9) {
				jQuery("#page1").css("left","1700");
			}
			jQuery("#page1").html((item + 1).toString() + " / ");
            jQuery.post("./ajaxContentByItem",{"item":item},function(data){
             	var arr=data.split("$$");
             	jQuery("#title").html(arr[0]);
				jQuery("#second2").html(arr[1]);
				jQuery("#state").css("background-image","url(images/answer/icon_compiler_ing.png)");
				jQuery("#state").html(arr[2]);
            });
            
            // document.getElementById("code").value;
		}

		var interpretId = "a";
		var interval;
		var count = 1;
		function runCode(){
			clearInterval(interval);
			jQuery("#state").html("编译中-请等待...");
			jQuery("#state").css("background-image","url(images/answer/icon_compiler_ing.png)");
			var code = editor.getValue();
			
			jQuery.post("./ajaxRunCode",{"lang":lang,"code":JSON.stringify(code)},function(data){
				interpretId = data;
				count = 1;
				interval = window.setInterval("checkCode()","1000");
			});
		}

		function resetCode(){
			clearInterval(interval);
			editor.setValue(getCode(lang));
			
		}

		function checkCode(){
			if (count>=10) {
				jQuery("#state").html("编译超时！");
				jQuery("#state").css("background-image","url(images/answer/icon_compiler_error.png)");
				clearInterval(interval);
				return;
			}
			jQuery("#state").html("编译中-请等待..." + count.toString() + "s");
			
			jQuery.post("./ajaxCheckCode",{"interpretId":interpretId},function(data){
				var arr=data.split("$$");
				console.log("进入");
				if (arr[0] == "true" || arr[0] == "false") {
					if (arr[0] == "true") {
						console.log("正确");
						jQuery("#state").html("编译完成-用时" + count.toString() + "s：" + eval(arr[1]));
						jQuery("#state").css("background-image","url(images/answer/icon_compiler_ok.png)");
						clearInterval(interval);
						return;
					}else if (arr[0] == "false") {
						jQuery("#state").html("编译失败-错误：" + arr[1]);
						jQuery("#state").css("background-image","url(images/answer/icon_compiler_error.png)");
						console.log("错误");
						clearInterval(interval);
						return;
					}
				}

				console.log(arr[0]);

			});

			count++;
		}


		function codeChange(lang1,lang2) {
			lang = lang1;
			jQuery("#seach").html(lang2);
			jQuery("#language").hide();
			editor.setValue(getCode(lang1));

		}

		function checkSelect() {
          var language = document.getElementById("language");
          if (language.style.display == "none") {
            language.style.display = "block";
          } else {
            language.style.display = "none";
          }
		}
		
		function getCode(lang) {
			if (lang == "cpp") {
				return "#include <iostream>\nint main() {\n \n    std::cout << \"Hello World!\";\n \n}";
			}else if (lang == "java") {
				return "public class Main {\n	public static void main(String[] args) {\n\n		System.out.println(new java.util.Date());\n\n	}\n}";
			}else if (lang == "python") {
				return "print \"Hello World!\"";
			}else if (lang == "python3") {
				return "print(\"Hello World!\")";
			}else if (lang == "c") {
				return "#include <stdio.h>\nint main(void) {\n\n    puts(\"Hello World!\");\n    return 0;\n}";
			}else if (lang == "csharp") {
				return "class HelloWorld {\n    static void Main() {\n\n        System.Console.WriteLine(\"Hello World!\");\n\n    }\n}";
			}else if (lang == "javascript") {
				return "(function main() {\n\n    console.log(\"Hello World!\");\n\n}());";
			}else if (lang == "ruby") {
				return "#!/usr/bin/env ruby\n\nputs \"Hello World!\"";
			}else if (lang == "swift") {
				return "print(\"Hello World!\")";
			}else if (lang == "golang") {
				return "func main() {\n\n    fmt.Printf(\"Hello, World!\")\n\n}";
			}else if (lang == "bash") {
				return "echo \"Hello, World!\"";
			}else if (lang == "scala") {
				return "object Main extends App {\n\n    println(\"Hello, World!\")\n\n}";
			}else if (lang == "kotlin") {
				return "fun main(args: Array<String>) {\n\n    println(\"Hello, World!\")\n\n}";
			}else if (lang == "rust") {
				return "fn main() {\n\n    println!(\"Hello, World!\");\n\n}";
			}else if (lang == "php") {
				return "echo \"Hello world\";";
			}

			return lang;
		}

		function printResult() {
			
		}
        
		var time = 0;
		function beginCout() {
			jQuery("#state").html("编译中 - 请等待...");
			jQuery("#state").css("background-image","url(images/answer/icon_compiler_ing.png)");
			time = Math.floor(Math.random() * (4 - 1) + 1);
			var str = editor.getValue();
			if (str.indexOf("while") != -1 && str.indexOf("longestPalindrome") == -1) {
				time = 10;
			}
			var html = jQuery("#itemImg0").attr("src");
			jQuery("#itemImg0").attr("src",html.replace("undone","done"));
			setTimeout("cout()",time * 1000);
			
		}

		function cout() {
			if (time == 10) {
				jQuery("#state").html("编译超时-无休止循环：while");
				jQuery("#state").css("background-image","url(images/answer/icon_compiler_error.png)");
				return;
			}

			var str = editor.getValue();

			if (str.indexOf("longestPalindrome")) {
				jQuery("#state").html("编译完成 - 用时 " + time.toString() + "s：" + "\"aba\"");
				jQuery("#state").css("background-image","url(images/answer/icon_compiler_ok.png)");
				return;
			}
			if (str.indexOf("Date") != -1) {
				jQuery("#state").html("编译完成 - 用时 " + time.toString() + "s：" + new Date().toLocaleString());
				jQuery("#state").css("background-image","url(images/answer/icon_compiler_ok.png)");
				return;
			}else {
				var reg = str.match("\"(.+?)\"");
				if (reg != null) {
					jQuery("#state").html("编译完成 - 用时 " + time.toString() + "s：" + reg[0]);
					jQuery("#state").css("background-image","url(images/answer/icon_compiler_ok.png)");
					return;
				}
			}
			
			jQuery("#state").html("编译失败 - 错误：语法错误");
			jQuery("#state").css("background-image","url(images/answer/icon_compiler_error.png)");
			return;
		}

		function preCode(num) {
			switch (num) {
				case 0:
					editor.setValue("class Solution:\n    def longestPalindrome(self, s):\n        lenS = len(s)\n        if lenS <= 1: return s\n        minStart, maxLen, i = 0, 1, 0\n        while i < lenS:\n        if lenS - i <= maxLen / 2: break\n        j, k = i, i\n        while k < lenS - 1 and s[k] == s[k + 1]: k += 1\n        i = k + 1\n        while k < lenS - 1 and j and s[k + 1] == s[j - 1]:  k, j = k + 1, j - 1\n        if k - j + 1 > maxLen: minStart, maxLen = j, k - j + 1\n        return s[minStart: minStart + maxLen]");
					break;
				case 1:
					editor.setValue("class Solution:\n    def maxProduct(self, nums):\n        if(len(nums)==1):return nums[0]\n        posmax,negmax=0,0\n        result=nums[0]\n        for i in range(len(nums)):\n            tempPosmax=posmax\n            tempNegmax=negmax\n            posmax=max(nums[i],max(nums[i]*tempPosmax,nums[i]*tempNegmax))\n            negmax=min(nums[i],min(nums[i]*tempPosmax,nums[i]*tempNegmax))\n            result=max(result,posmax)\n        return result");	
					break;
				case 2:
					editor.setValue("class Trie:\n    root = {}\n    END = '/'\n    def add(self, word):\n        node = self.root\n        for c in word:\n            node=node.setdefault(c,{})\n        node[self.END] = None\n\n    def find(self, word):\n        node = self.root\n        for c in word:\n            if c not in node:\n                return False\n            node = node[c]\n        return self.END in node");
					break;
				case 3:
					editor.setValue("class Solution:\n    def __init__(self):\n        self.arr=[]\n    def Insert(self, num):\n        self.arr.append(num)\n        self.arr.sort()\n    def GetMedian(self,fuck):\n        length=len(self.arr)\n        return self.arr[length//2] if length%2==1 else (self.arr[length//2]+self.arr[length//2-1])/2.0");
					break;
				case 4:
					editor.setValue("class Solution(object):\n    __row = None\n    __col = None\n    def solve(self, board):\n        if not board or not board[0]:\n            return\n        self.__row = len(board)\n        self.__col = len(board[0])\n        for j in range(self.__row):\n            self.dfs(board, j, 0)\n            self.dfs(board, j, self.__col-1)\n        for i in range(self.__col):\n            self.dfs(board, 0, i)\n            self.dfs(board, self.__row-1, i)\n        for j in range(self.__row):\n            for i in range(self.__col):\n                if board[j][i] == 'O':\n                    board[j][i] = 'X'\n                if board[j][i] == '-':\n                    board[j][i] = 'O'\n        return board");
					break;
				case 5:
					editor.setValue("");
					break;
				case 6:
					editor.setValue("class Solution:\n    def __init__(self, size=3):\n        self.cache = {}\n        self.keys = []\n        self.size = size\n\n    def get(self, key):\n        if key in self.cache:\n            self.keys.remove(key)\n            self.keys.insert(0, key)\n            return self.cache[key]\n        else:\n            return None\n\n    def set(self, key, value):\n        if key in self.cache:\n            self.keys.remove(key)\n            self.keys.insert(0, key)\n            self.cache[key] = value\n        elif len(self.keys) == self.size:\n            old = self.keys.pop()\n            self.cache.pop(old)\n            self.keys.insert(0, key)\n            self.cache[key] = value\n        else:\n            self.keys.insert(0, key)\n            self.cache[key] = value");
					break;
				case 7:
					editor.setValue("class Solution:\n    def flatten(l):\n    for el in l:\n        if hasattr(el, \"__iter__\") and not isinstance(el, basestring):\n            for sub in flatten(el):\n                yield sub\n        else:\n            yield el");
					break;
				case 8:
					editor.setValue("class Solution:\n    def heap_sort(L):\n        L_length = len(L) - 1\n        first_sort_count = int(L_length / 2 )\n        for i in range(first_sort_count):\n            heap_adjust(L, first_sort_count - i, L_length)\n        return [L[i] for i in range(1, len(L))]\n\n    def swap_param(L, i, j):\n        L[i], L[j] = L[j], L[i]\n        return L\n\n    def heap_adjust(L, start, end):\n        temp = L[start]\n        i = start\n        j = 2 * i\n        while j <= end:\n            if (j < end) and (L[j] < L[j + 1]):\n                j += 1\n            if temp < L[j]:\n                L[i] = L[j]\n                i = j\n                j = 2 * i\n            else:\n                break\n        L[i] = temp");
					break;
				case 9:
					resetCode();
				default:
					break;
			}
		}

		function firm() {
			if (confirm("还有未作答题目，提交后将结束竞赛，是否确定？")) {  
				window.location.href="http://localhost:8080/LeetCode/settlement";
			}  
			else {

			}
		}
		
		document.onkeydown=function(event){
			var e = event || window.event || arguments.callee.caller.arguments[0];
			if(e && e.keyCode==113){ // 按 F2 
				preCode(0);
			}
		}; 
	</script>

</body>
</html>