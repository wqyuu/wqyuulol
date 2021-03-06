<%@ page pageEncoding="UTF-8" language="java"  isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%@ include file="common/head.jsp" %>
    <link href="../csss/personal.css" rel="stylesheet">
    <script src="../jss/personal.js"></script>
    <title>个人中心</title>
</head>
<body>
<%@ include file="common/top.jsp" %>
<div class="row">
    <div class="col-md-6 col-md-offset-3">
        <div class="row divcolor" id="uname">
            <h3>${user.username} >> 个人资料</h3>
        </div>
        <div class="row">
            <!--左侧资料列-->
            <div class="col-md-7 col-md-offset-1 ziti">
                <div class="row setmargin" id="userinfo_0">用户名：${user.username}</div>
                <div class="row setmargin" id="userinfo_1">昵称：${user.password}</div>
                <div class="row setmargin" id="userinfo_2">邮箱：${user.email}</div>
                <div class="row setmargin" id="userinfo_3">电话：${user.phone}</div>
                <div class="row setmargin ">
                    <a href="${pageContext.request.contextPath}/user/update1.do?id=${user.id}">
                        <button class="setbtnpadding" 
onclick="javaScript:alert('改变就是好事！');" >修改资料</button>
                    </a>
                </div>
            </div>
            <!--右侧选项列-->
            <div class="col-md-4 setmargin divcolor_1">
                <div class="row ziti">编辑</div>
                <div class="row ziti_1 setpadding setmargin">
                    <a href="/user/personal">我的个人资料</a>
                </div>
                <div class="row ziti_1 setmargin">
                    <a href="${pageContext.request.contextPath}/jsp/order.jsp" onclick="javaScript:alert('直到世界毁灭之前，这！都是你的资产'); ">我的订单</a>
                </div>
                <div class="row ziti_1 setmargin">
                    <a href="/user/updatepassword">修改密码</a>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="row divcolor setmargin_2">
                <h3>我的游戏</h3>
            </div>
            <div class="row">
                <div class="deletepadding">
                    <ul id="fenleixiangqing">
                    <c:forEach items="${orderlist}" var="order">
                      <li>
                      <div class='row fenleizitiyanse jutiyouxi'>
	                      <div class='col-md-4'>
	                      <img src="${order.game.img}" class='imgdx_1'>
	                      </div>
	                      <div class='col-md-8'>
		                        <div class='row youximingzi'>
		                            ${order.game.name}
		                        </div>
			                         <div class='col-md-2 col-md-offset-10'>
			                         ${order.game.price }
			                         </div>
	                         </div>
                         </div>
                        <li>
                    </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<%@ include file="common/bottom.jsp" %>

</body>
</html>