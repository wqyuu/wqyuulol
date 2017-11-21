<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%@ include file="common/head.jsp" %>
    <link href="../csss/fenleixiangqing.css" rel="stylesheet">
    <script src="../jss/biaoqian.js"></script>
    <script src="../jss/fenlei.js"></script>
    <title>分类</title>
</head>
<body>
<%@ include file="common/top.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-xs-2 col-sm-2 col-md-2">
            <div class="gutter_header">
                <ul class="list-group" id="leixing">

                </ul>
            </div>
        </div>
        <div class="col-xs-10 col-sm-10 col-md-10">
            <div class="row">
                <div class="row clx">正在浏览   ${kind1.kname}类型的游戏 </div>
            <c:forEach var="game" items="${gameList}"> 
                <div class="row">
                    <div class="col-md-8 deletepadding">
                        <ul style="color: white;">
                         <li>${game.name}</li>
                        </ul>
                    </div>
                    <div class="col-md-4 tupianfuji">
                        <ul id="fenleiyouxitupian" style="color: white; margin-left: -200px;">
                          <li><img  src="../image/${game.img}"/></li>
                        </ul>
                    </div>
                </div>
             </c:forEach> 
            </div>
            <div class="pagination">
                <ul id="paging">
                   <li>
                    <c:forEach var="page" begin="1" end="${totalpage}">
                   <a href="${pageContext.request.contextPath}/serach/kindGame.do?Page=${page}&kid=${kind1.kid}">${page}</a>
                   </c:forEach>
                   </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<%@ include file="common/bottom.jsp" %>

</body>
</html>