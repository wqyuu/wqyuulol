<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false"%>
<html>
<head>
    <title>后台管理登陆</title>
    <link rel="icon" href="../smile.ico" type="image/x-icon">
    <link href="../csss/adminlogin.css" rel="stylesheet">
    <script src="../jss/jquery.min.js"></script>
    <script src="../jss/adminlogin.js"></script>
</head>

<body>
<div class="login">
    <h1>WePlay 后台管理</h1>
    <form action="${pageContext.request.contextPath}/admin/login.do" method="post">
	    <input id="username" type="text" placeholder="用户名" required="required"/>
	    <input id="password" type="password" name="p" placeholder="密码" required="required"/>
	    <button type="submit" class="btn btn-primary btn-block btn-large">登录</button>
    </form>
</div>
</body>
</html>
