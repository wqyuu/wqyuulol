<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%@ include file="common/head.jsp" %>
    <link rel="stylesheet" href="../csss/order.css"/>
    <title>支付结果信息</title>
    <script type="text/javascript">
      /*   function show_confirm() {
            var r = confirm("是否确认付款！");
            if (r == true) {
                $.post("/order/${id}/pay", {orderid: ${id}}, function (result) {
                    if (result.success) {
                        window.location = "/order/orders";
                    } else {
                        alert(result.msg);
                    }
                })
            }
            else {
                window.location = "/order/orders";
            }
        } */
        function jisuanTotal() {
        	alert("jisuanTotal");
    		//获取所有的复选按钮
    		var chks = document.getElementsByName("gids");
    		var total = 0;
    		for (var i = 0; i < chks.length; i++) {
    			//判断复选按钮是否被选中
    			if (chks[i].checked == true) {
    				var id = chks[i].value;
    				var xiaoji = document.getElementById("th_" + id).innerHTML;
    				total += parseInt(xiaoji);
    			}
    		}
    		//为合计赋值
    		document.getElementById("total_txt").value = total;
    		//${total } = total;
    	}
    </script>
</head>

<body>
<%@ include file="common/top.jsp" %>
<br/>
<br/>
<div class="container">

    <div style=" padding:15px; height:60px;background-color:#7A8D96"><span style="background-color:#84CF30"
                                                                           class="glyphicon glyphicon-ok btn btn-info"></span>&nbsp;&nbsp;
        <h4 style=" font-family:'黑体'; font-weight:bold; display:inline">选择您要购买的商品，请尽快支付！ </h4>
    </div>
    <br/>
    <hr size="5" color="#000000" width="100%"></hr>
    <br/>
    <br/>
    <form action="${pageContext.request.contextPath}/game/pay.do" method="post">
    <table style="color: #fbfbfb" class="table">
	<tr>
							<th width="20%">序号</th>
							<th width="30%">游戏名</th>
							<th width="25%">单价</th>
							<th width="15%">操作</th>
	</tr>
	<c:set var="total" value="0"></c:set>
	<c:forEach var="car"  items="${carMap.values()}" varStatus="i">
	<tr>
						<th width="20%">${i.index+1}</th>
							<th width="30%">${car.game.name}</th>
							<th width="25%" id="th_${car.game.id }">${car.game.price}</th>
							<th width="15%" ><input type="checkbox" name="gids" value="${car.game.id }" checked="checked"
								onclick="jisuanTotal()" id="gids" /></th>
  <c:set var="total" value="${total+car.game.price*car.number}"></c:set>
  </tr>
   </c:forEach>							
 </table>	
  <div class="row mar" >
            <input type="text" id="total_txt" name="price" readonly="readonly" value="${total }">
             <input type="submit"  class="btn btn-default btn-lg" style="width:80px; height:40px;" value="支付"/>
   </div>	
  </form>          				
    <div class="row">
        <div class="col-xs-4">
            <div class="row mar" align="center">
           <%--  <input type="text" id="total_txt" name="total" readonly="readonly" value="${total }">
             <input type="submit"  class="btn btn-default btn-lg" style="width:80px; height:40px;" value="支付"/> --%>
            </div>
        </div>
        <div class="col-xs-2"></div>
        <div class="col-xs-6">
            <table class="tishi" align="center">
                <tr><h3 style="color:#FFF">在WePlay上购物</h3></tr>
                <tr><h4 style="color:#FFF">当您提交您的支付信息时，您的资料将得到具有安全套接层（SSL）技术认证的数字证书的保护。
                    当您完成此笔交易后，我们将向您发送一封电子邮件来确认购物收据。</h4></tr>
                <tr><h3 style="color:#FFF">客户提示</h3></tr>
                <tr><h4 style="color:#FFF">该过程可能会长达 60 秒。为了避免购买失败，在交易结束前请不要点击后退按钮或关闭此窗口。</h4></tr>
            </table>
        </div>
    </div>
</div>
<%@ include file="common/bottom.jsp" %>
</body>
</html>
