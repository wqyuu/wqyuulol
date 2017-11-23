<%@ page contentType="text/html;charset=UTF-8" language="java"
	isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

    <%@ include file="common/head.jsp" %>
    <link href="../csss/self.css" rel="stylesheet">
     <link href="../csss/home.css" rel="stylesheet">
    <script src="../jss/biaoqian.js"></script>
    <script src="../jss/index.js"></script>
    <title>We Play</title>
</head>

<body>
	<%@ include file="common/top.jsp"%>
      
	<div class="container">
		<div class="row">
			<div class="col-xs-2 col-sm-2 col-md-2">
				<div class="gutter_header">
					<ul class="list-group" id="leixing">
                     <li> <a href="http://localhost:8080/Stream/jsp/search2.html">全部类型</a></li>
                     <li><a href="${pageContext.request.contextPath}/user/personal.do?id=${user.id}">个人中心</a></li>
                    </ul>
                <div class="home_page_gutter" style="top: 50px;">
				<div class="home_page_gutter_block">
					<div class="gutter_header" style="margin-left: -80px;">
						<a href="http://store.steampowered.com/digitalgiftcards/?snr=1_4_4__125"><img class="home_page_gutter_giftcard" src="../image/steamcards_promo.png"></a><br>
						礼物卡					</div>
					<div class="gutter_items">
						<a class="gutter_giftcard gutter_item" href="http://store.steampowered.com/digitalgiftcards/?snr=1_4_4__125">现已在 steam 上推出</a>
					</div>
					<div class="gutter_header">推荐</div>
					<div class="gutter_items">
						<a class="gutter_item" href="../page/Main1.jsp"><span class="icon friends"></span>特别推荐：LOL官网</a>
						<a class="gutter_item" href="http://store.steampowered.com/curators/?snr=1_4_4__125"><span class="icon curators"></span> 由鉴赏家推荐</a>
						<a class="gutter_item" href="http://store.steampowered.com/tag/browse/?snr=1_4_4__125#yours"><span class="icon tags"></span> 标签</a>
					</div>

					<div class="gutter_header pad">探索队列</div>
					<div class="gutter_items">
						<a class="gutter_item" href="http://store.steampowered.com/explore/next/0?snr=1_4_4__125"><span class="icon queue"></span> 推荐</a>
						<a class="gutter_item" href="http://store.steampowered.com/explore/next/3?snr=1_4_4__125"><span class="icon queue_new"></span> 新品</a>
					</div>

					<div class="gutter_header pad">浏览分类</div>
					<div class="gutter_items">
						<a class="gutter_item" href="http://store.steampowered.com/search/?filter=topsellers&amp;snr=1_4_4__125"><span class="icon top_sellers"></span> 热销商品</a>
						<a class="gutter_item" href="http://store.steampowered.com/updated/all/?snr=1_4_4__125"><span class="icon updated"></span> 最近更新</a>
						<a class="gutter_item" href="http://store.steampowered.com/explore/new/?snr=1_4_4__125"><span class="icon recent"></span> 新品</a>
						<a class="gutter_item" href="http://store.steampowered.com/search/?filter=comingsoon&amp;snr=1_4_4__125"><span class="icon upcoming"></span> 即将推出</a>
						<a class="gutter_item" href="http://store.steampowered.com/search/?specials=1&amp;snr=1_4_4__125"><span class="icon discounts"></span> 优惠</a>
						<a class="gutter_item" href="http://store.steampowered.com/vr/?snr=1_4_4__125"><span class="icon vr"></span> 虚拟现实</a>
						<a class="gutter_item" href="http://store.steampowered.com/controller/?snr=1_4_4__125"><span class="icon controller"></span> 可支持 Steam 控制器</a>
					</div>
				</div>


				<div class="home_page_gutter_block">
					<div class="gutter_header pad">按类型浏览</div>
																							<a class="gutter_item" href="http://store.steampowered.com/genre/Free%20to%20Play/?snr=1_4_4__125">
								免费游玩							</a>
																																																																																																																																																																																																																																																				<a class="gutter_item" href="http://store.steampowered.com/genre/Early%20Access/?snr=1_4_4__125">
								抢先体验							</a>
																																																																																																																																											<a class="gutter_item" href="http://store.steampowered.com/tag/zh-cn/%E4%BC%91%E9%97%B2/?snr=1_4_4__125">
									休闲								</a>
																				<a class="gutter_item" href="http://store.steampowered.com/tag/zh-cn/%E4%BD%93%E8%82%B2/?snr=1_4_4__125">
									体育								</a>
																									<a class="gutter_item" href="http://store.steampowered.com/tag/zh-cn/%E5%86%92%E9%99%A9/?snr=1_4_4__125">
									冒险								</a>
																				<a class="gutter_item" href="http://store.steampowered.com/tag/zh-cn/%E5%8A%A8%E4%BD%9C/?snr=1_4_4__125">
									动作								</a>
																				<a class="gutter_item" href="http://store.steampowered.com/tag/zh-cn/%E5%A4%A7%E5%9E%8B%E5%A4%9A%E4%BA%BA%E5%9C%A8%E7%BA%BF/?snr=1_4_4__125">
									大型多人在线								</a>
																				<a class="gutter_item" href="http://store.steampowered.com/tag/zh-cn/%E6%A8%A1%E6%8B%9F/?snr=1_4_4__125">
									模拟								</a>
																				<a class="gutter_item" href="http://store.steampowered.com/tag/zh-cn/%E7%8B%AC%E7%AB%8B/?snr=1_4_4__125">
									独立								</a>
																				<a class="gutter_item" href="http://store.steampowered.com/tag/zh-cn/%E7%AB%9E%E9%80%9F/?snr=1_4_4__125">
									竞速								</a>
																				<a class="gutter_item" href="http://store.steampowered.com/tag/zh-cn/%E7%AD%96%E7%95%A5/?snr=1_4_4__125">
									策略								</a>
																				<a class="gutter_item" href="http://store.steampowered.com/tag/zh-cn/%E8%A7%92%E8%89%B2%E6%89%AE%E6%BC%94/?snr=1_4_4__125">
									角色扮演								</a>
																</div>
				<div class="home_page_gutter_block" id="home_gutter_recommendedtags" style="display: none;">
					<div class="gutter_header pad">您的标签</div>
					<div class="gutter_items"></div>
				</div>
				<div class="home_page_gutter_block" id="home_gutter_recentlyviewed" style="display: none">
					<div class="gutter_header pad">最近查看</div>
					<div class="gutter_items"></div>
				</div>
					</div>
				</div>
			</div>
			<div class="col-xs-10 col-sm-10 col-md-10">
				<div class="row">
					<div class="tit tit_0">精 选 和 推 荐</div>
				</div>
				<div class="row">
					<div id="carousel-example-generic" class="carousel slide"
						data-ride="carousel">
						<c:forEach items="${gamelist}" var="g">
							<ol class="carousel-indicators">
								<li data-target="#carousel-example-generic"
									data-slide-to="${g.id}" class="active"></li>
								<li data-target="#carousel-example-generic"
									data-slide-to="${g.id}"></li>
								<li data-target="#carousel-example-generic"
									data-slide-to="${g.id}"></li>
								<li data-target="#carousel-example-generic"
									data-slide-to="${g.id}"></li>
								<li data-target="#carousel-example-generic"
									data-slide-to="${g.id}"></li>
								<li data-target="#carousel-example-generic"
									data-slide-to="${g.id}"></li>
							</ol>

						</c:forEach>

						<div class="carousel-inner" role="listbox">

							<div class="item active">
								<div class="item_0">
									<a id="gameurl_0"><img class="imgwh" id="gameimg_0"
										src="../image/28/header.jpg"></a>
								</div>
								<div class="item_0" id="gamename_0">
									<div class="shoujia shoujia1" id="gameprice_0"></div>
								</div>
							</div>
							<c:forEach items="${gamelist}" var="g" varStatus="i">
								<div class="item ">
									<div class="item_${i.index }">
										<a id="gameurl_${i.index }" href="${pageContext.request.contextPath}/game/gameInfo.do?id=${g.id}">
										<img class="imgwh"	id="gameimg_${i.index }" src="${g.img}">
											</a>
									</div>
									<div class="item_${i.index }" id="gamename_${i.index }">
										<div class="shoujia" id="gameprice_${i.index }"></div>
									</div>
								</div>
							</c:forEach>
						</div>

						<a class="left carousel-control" href="#carousel-example-generic"
							role="button" data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a> <a class="right carousel-control"
							href="#carousel-example-generic" role="button" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right"
							aria-hidden="true"></span> <span class="sr-only">Next</span>
						</a>
					</div>
				</div>



				<div class="row">
					<div class="tit tit_1">免 费 游 戏</div>
				</div>
				<div class="row">
					<div id="carousel_1" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carousel_1" data-slide-to="0" class="active"></li>
							<li data-target="#carousel_1" data-slide-to="1"></li>
						</ol>


						<div class="carousel-inner" role="listbox">


							<div class="item active" id="freegames_0">
								<img alt="" src="../image/index/3.jpg" />
							</div>


							<div class="item" id="freegames_1">
								<img alt="" src="../image/index/5.jpg">
							</div>
						</div>




						<a class="left carousel-control" href="#carousel_1" role="button"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a> <a class="right carousel-control" href="#carousel_1"
							role="button" data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>
				<div class="row">
					<div class="tit tit_1">休 闲 一 下</div>
				</div>

				<%-- 	<div class="all_bg">
					<div id="allcanvas">
						<img src="../image/fish/play.png" id="playbtn" onclick="game()">
						<canvas id="canvas1" width="800" height="600"></canvas>
						<canvas id="canvas2" width="800" height="600"></canvas>
					</div>
				</div> --%>
				<video width="800" height="600" controls="controls"
					autoplay="autoplay">
					<source src="${pageContext.request.contextPath}/radio/3.mp4"  type="video/mp4">
				</video>


				<div class="row zx">
					<div class="col-md-8">
						<ul id="myTab" class="nav nav-tabs">
							<li role="presentation"><a href="#home" data-toggle="tab">新品与热门商品</a></li>
							<li role="presentation"><a href="#jijiang" data-toggle="tab">即将推出</a></li>
						</ul>
						
						
						<div id="myTabContent" class="tab-content";>
						
						
						</div>
					</div>
					<!-- <div class="col-md-4 spadding">
						<div id="divHover"></div>
					</div> -->
				</div>
			</div>
		</div>
	</div>
	<%@ include file="common/bottom.jsp"%>
	<%@ include file="fishjs.jsp"%>
</body>
</html>