<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%@ include file="common/head.jsp" %>
    <link href="../csss/fenleixiangqing.css" rel="stylesheet">
    <script src="../jss/biaoqian.js"></script>
    <script src="../jss/search.js"></script>
    <script type="text/javascript" src="../js1/vue.js"></script>
<script type="text/javascript" src="../js1/axios.js"></script>
    <title>分类</title>
</head>
<body>
<%@ include file="common/top.jsp" %>
<div class="container">
    <div class="row">
        <c:forEach var="kind" items="${kinds}" varStatus="i">
        <div class="col-xs-2 col-sm-2 col-md-2">
            <div class="gutter_header" >
                <ul class="list-group" id="leixing" >
                    <li>${i.index+1}</li>
                </ul>
            </div>
        </div>
        <div class="col-xs-10 col-sm-10 col-md-10">
            <div class="row">
                <div class="row clx" id="xianshineirong"></div>
                <div class="row">
                    <div class="col-md-8 deletepadding" >
                     <div >
                        <ul id="fenleixiangqing">
                            <li><a href="${pageContext.request.contextPath}/serach/kindGame.do?Page=1&kid=${kind.kid}">
                            ${kind.kname}</a></li>
                        </ul>
                        </div>
                    </div>
                    <div class="col-md-4 tupianfuji" style="margin-left: -100px;">
                        <ul id="fenleiyouxitupian">
                         <li><img src="../image/${game.img}"/></li> <br>
                        </ul>
                    </div>
                   
                </div>
            </div>
        </div>
        
        </c:forEach>
       <div class="pagination">
                <ul id="paging">
                <c:forEach begin="1" end="${totalpage}" var="page">
                 <a href="${pageContext.request.contextPath}/serach/findAllK.do?Page=${page}">${page}</a>
                </c:forEach>
                </ul>
            </div>
    </div>
</div>
<%@ include file="common/bottom.jsp" %>
<script type="text/javascript">
//热门图书列表
var bookClassListContant = new Vue({
	el:"#bookClassListContant",
	data:{
		bookClassList:''
	},
	beforeCreate:function (){
		var _self = this._self;
        axios.get('/serach/findAllK.do?Page=1')
        .then(function (response) {
       	 _self.bookClassList = response.data;
        })
	}
})
</script>
</body>
</html>