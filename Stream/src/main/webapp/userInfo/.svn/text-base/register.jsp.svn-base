<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>用户账号注册</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>

<script type="text/javascript">
	//更换验证码
	var num = 0;
	function changeYzm() {
		num++;
		document.getElementById("yzmImg").src = "img/imgaction?num=" + num;
	}

	//ajax注册
	var xmlRequest = null;
	function ajaxRegister() {
		var regname = /^\w{9,12}$/;
		var regpass = /^\d{6}$/;
		//获取参数
		var uname = document.getElementById("uname").value;
		var upass = document.getElementById("upass").value;
		var upass2 = document.getElementById("upass2").value;
		var yzm = document.getElementById("yzm").value;
		if (uname == "" || upass == "" || upass2 == "" || yzm == "") {
			document.getElementById("errormsg").innerHTML = "信息输入不完整";
			return;
		}
		if (!regname.test(uname)) {
			document.getElementById("errormsg").innerHTML = "用户账号必须为9-11位数字";

			return;
		}
		if (!regpass.test(upass)) {
			document.getElementById("errormsg").innerHTML = "密码不符合规格";
			return;
		}

		//创建AJAX核心对象
		xmlRequest = new XMLHttpRequest();
		//设置参数(POST)可以发送中文
		var url = "userServlet";
		xmlRequest.open("POST", url, true);
		xmlRequest.onreadystatechange = chulizhuce;
		xmlRequest.setRequestHeader("Content-type",
				"application/x-www-form-urlencoded");
		xmlRequest.send("type=ajaxregister&uname=" + uname + "&upass=" + upass
				+ "&upass2=" + upass2 + "&yzm=" + yzm);

	}
	function chulizhuce() {
		var uname = document.getElementById("uname").value;
		if (xmlRequest.readyState == 4 && xmlRequest.status == 200) {
			//获取服务器的相应结果
			var resu = xmlRequest.responseText;
			//判断相应结果
			if (resu == "true") {
				alert("注册成功：" + uname);
				window.location.href = 'index.jsp';
				return;
			}
			document.getElementById("errormsg").innerHTML = resu;
		}
	}
</script>


<style type="text/css">
.searchinput {
	width: 250px;
	height: 40px;
	font-size: 16px;
	border: 1px solid #EDEDED;
}

#searchbtn {
	background-color: #3297FD;
	width: 250px;
	height: 50px;
	line-height: 50px;
	border: 1px solid #EDEDED;
	cursor: pointer;
	font-size: 16px;
	font-family: 黑体;
}

#reg_title {
	padding-top: 30px;
	width: 200px;
	margin: 0px auto;
	font-family: 黑体;
}

#reg_form {
	position: absolute;
	right: 500px;
	top: 250px;
	width: 450px;
	height: 600px;
}

#topbar_left {
	position: absolute;
	right: 0px;
	top: 10px;
	width: 400px;
	height: 30px;
}

.li {
	list-style: none;
	font-size: 20px;
	font-family: 黑体;
}

#left-pic {
	background-image: url("images/pic2.jpg");
	background-size: cover;
	background-position: -180 0;
	height: 980px;
	width: 300px;
}
</style>
</head>

<body>
	<div id="topbar_left">
		<a href="${pageContext.request.contextPath }/page/Main1.jsp">返回主页</a><span
			class="sep">|</span> <a href="register2.jsp" target="_blank">详细注册</a><span
			class="sep">|</span> <a href="" target="_blank">忘记密码</a><span
			class="sep">|</span> <a href="" target="_blank">问题反馈</a>
	</div>

	<div id="left-pic">快速注册界面</div>

	<!-- 注册部分 -->
	<div id="register" style="text-align: center;">
		<div id="reg_form">

			<div id="reg_title">
				<h1>快速注册</h1>
				<h2 style="font-family: 宋体">欢迎注册</h2>
			</div>
			<form action="user/register" method="post">
				<p>用户账号:</p>
				<input type="text" id="uname" name="uname" style="color: gray;"
					value="" class="searchinput"
					onmouseover="this.style.borderColor='#FF7E00';"
					onmouseout="this.style.borderColor='#EDEDED';" /> <br> <br>
				<p>密码：</p>
				<input type="password" id="upass" name="upass" value=""
					class="searchinput" onmouseover="this.style.borderColor='#FF7E00';"
					onmouseout="this.style.borderColor='#EDEDED';" /> <br> <br>

				<p>用户昵称:</p>
				<input type="text" id="userid" name="userid" style="color: gray;"
					value="" class="searchinput"
					onmouseover="this.style.borderColor='#FF7E00';"
					onmouseout="this.style.borderColor='#EDEDED';" /> <br> <br>
				<p>验证码:</p>
				<img alt="" src="img/imgaction" id="yzmImg" onclick="changeYzm()">
				<br> <br> <input type="text" id="yzm" name="yzm" value=""
					class="searchinput" onmouseover="this.style.borderColor='#FF7E00';"
					onmouseout="this.style.borderColor='#EDEDED';" /> <br> <br>

				<input type="submit" id="searchbtn" value="快速注册"
					onclick="ajaxRegister()" onmouseover="this.style.color='white';"
					onmouseout="this.style.color='black';"> <br>
				<p id="errormsg" style="color: red;"></p>
				<p id="errormsg" style="color: red;">${xmerr}</p>
			</form>
		</div>
	</div>
</body>
</html>
