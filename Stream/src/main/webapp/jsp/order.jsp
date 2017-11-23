<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<html>

<head>
    <%@ include file="common/head.jsp" %>
    <link href="../csss/shoppingcart.css" rel="stylesheet">
    <link href="../csss/order.css" rel="stylesheet">
    <script src="../jss/order.js"></script>
    <title>我的订单</title>
</head>

<body>
<%@ include file="common/top.jsp" %>
<!--左侧导航栏-->
<div class="container">
    <div class="row">
        <div class="col-xs-8 col-sm-8 col-md-12">
            <h2 style="color:#FFF"><span class="glyphicon glyphicon-shopping-cart"></span>您的订单</h2>
            <div class="row zx">
                <div id="mainContents">
                    <ul style="font-family: 'Adobe 黑体 Std R';font-weight: bold;font-size: large" id="myTab"
                        class="nav nav-tabs">
                        <li role="presentation"><a href="#already" data-toggle="tab">已支付</a></li>
                        <li role="presentation"><a href="#yet" data-toggle="tab">未支付</a></li>
                        <li role="presentation"><a href="#cancel" data-toggle="tab">已取消</a></li>
                    </ul>
                    <br>
                    <div id="myTabContent" class="tab-content">
                        <div id="orderTab" class="tab-content">
                            <div class="tab-pane fade in active" id="already">
                            <table>
                            <thead id='myThead' style='color: #67c1f5'>
                            <th width='25%'>序 号</th>
                            <th width='35%'>总 价</th>
                            <th width='30%'>下单时间</th>
                            </thead>
                            <c:forEach items="${orderlist}" var="order" varStatus="i">
                            <tbody id='myTbody' style='color:#630'>
                            <td>${order.id}</td>
                            <td>${order.price}</td>
                            <td><fmt:formatDate value="${order.otime}" pattern="yyyy-MM-dd"/>
                            </td>
                            </tbody>
                            </c:forEach>
                            </table>
                            </div>
                            <div class="tab-pane fade" id="yet"></div>
                            <div class="tab-pane fade" id="cancel"></div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <br>
    </div>
    <br>
    <h3 style="color:#fff" align="left">交付</h3>
    <div style="background-color:#000;padding:10px 40px 10px 100px;">
        <h4 style="color:#FFF"><a href="#"><img src="../image/static/logo.jpg" width="61" height="50"></a>&nbsp;&nbsp;&nbsp;&nbsp;
            所有电子商品将会经有WEPLAY桌面应用程序递送给您</h4>
    </div>
    <br/>
    <br/>
    <div align="left" style="border:30px">
        <h4><a href="/" class="btn btn-info btn-lg">
            <span class="glyphicon glyphicon-shopping-cart"></span>
            继续购物</a></h4>
    </div>
</div>
<%@ include file="common/bottom.jsp" %>
</body>
</html>