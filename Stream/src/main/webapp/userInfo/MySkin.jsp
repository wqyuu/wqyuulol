<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<!-- saved from url=(0073)http://lol.qq.com/web201310/personal.shtml?id=2936952079&area=9&showDiv=1 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="robots" content="all">
<meta name="Copyright" content="TENCNET">
<meta name="author" content="Tencent-TGideas">
<meta name="keywords"
	content="英雄联盟,lol,league of legends,lol攻略,lol视频,lol视频攻略,lol英雄资料,lol战争学院,小苍解说视频,101战争学院,英雄">
<meta name="description" content="英雄联盟101战争学院，推荐攻略，视频攻略，小苍解说视频">
<title>个人资料-英雄联盟官方网站-腾讯游戏</title>
<!-- 设计：帅呆 | 重构：小倪 | 创建：20131028 | 团队博客：http://tgideas.qq.com -->
<link href="../css/public.css" rel="stylesheet">
<style type="text/css">
.tg-sns {height =16px;
	oveflow: hidden;
	*zoom: 1;
}

.tg-sns-link {
	float: left;
	width: 16px;
	height: 16px;
	margin-right: 5px;
	text-indent: -9999em;
	overflow: hidden;
	background-image:
		url(http://ossweb-img.qq.com/images/icon/share/icon-sns-16.png);
	background-position: -9999em -9999em;
	background-repeat: no-repeat;
}

.tg-sns-link:hover {
	opacity: 0.7;
	filter: alpha(opacity = 70);
}

.tg-sns-wechat {
	background-position: 0 0
}

.tg-sns-qq {
	background-position: -20px 0
}

.tg-sns-qzone {
	background-position: -40px 0
}

.tg-sns-weibo {
	background-position: -60px 0
}

.tg-sns-pengyou {
	background-position: -80px 0
}

.tg-sns-sina {
	background-position: -100px 0
}

.tg-sns-douban {
	background-position: -120px 0
}

.tg-sns-kaixin {
	background-position: -140px 0
}

.tg-sns-renren {
	background-position: -160px 0
}
</style>
<script type="text/javascript" src="../js/json2.js "></script>
<script type="text/javascript" src="../js/swfobject.js "></script>
<script type="text/javascript" src="../js/impl.min.js "></script>

<script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
<link rel="Stylesheet" type="text/css" href="../css/loginDialog.css" />
</head>

<body style="zoom: 1;">
<script type="text/javascript">
		function showselfDiv() {
			document.getElementById("self").style.display = "block";
			document.getElementById("geren").style.display = "block";
		}

		//隐藏登录框
		function hideselfDiv() {
			document.getElementById("self").style.display = "none";
			document.getElementById("geren").style.display = "none";
		}

		$(function($) {
			//弹出登录
			$("#example").hover(function() {
				$(this).stop().animate({
					opacity : '1'
				}, 600);
			}, function() {
				$(this).stop().animate({
					opacity : '0.6'
				}, 1000);
			}).on('click', function() {
				$("body").append("<div id='mask'></div>");
				$("#mask").addClass("mask").fadeIn("slow");
				$("#LoginBox").fadeIn("slow");
			});
			//
			//按钮的透明度
			$("#loginbtn").hover(function() {
				$(this).stop().animate({
					opacity : '1'
				}, 600);
			}, function() {
				$(this).stop().animate({
					opacity : '0.8'
				}, 1000);
			});
			//文本框不允许为空---按钮触发
			$("#loginbtn").on('click', function() {
				var txtName = $("#txtName").val();
				var txtPwd = $("#txtPwd").val();
				if (txtName == "" || txtName == undefined || txtName == null) {
					if (txtPwd == "" || txtPwd == undefined || txtPwd == null) {
						$(".warning").css({
							display : 'block'
						});
					} else {
						$("#warn").css({
							display : 'block'
						});
						$("#warn2").css({
							display : 'none'
						});
					}
				} else {
					if (txtPwd == "" || txtPwd == undefined || txtPwd == null) {
						$("#warn").css({
							display : 'none'
						});
						$(".warn2").css({
							display : 'block'
						});
					} else {
						$(".warning").css({
							display : 'none'
						});
					}
				}
			});
			//文本框不允许为空---单个文本触发
			$("#txtName").on('blur', function() {
				var txtName = $("#txtName").val();
				if (txtName == "" || txtName == undefined || txtName == null) {
					$("#warn").css({
						display : 'block'
					});
				} else {
					$("#warn").css({
						display : 'none'
					});
				}
			});
			$("#txtName").on('focus', function() {
				$("#warn").css({
					display : 'none'
				});
			});
			//
			$("#txtPwd").on('blur', function() {
				var txtName = $("#txtPwd").val();
				if (txtName == "" || txtName == undefined || txtName == null) {
					$("#warn2").css({
						display : 'block'
					});
				} else {
					$("#warn2").css({
						display : 'none'
					});
				}
			});
			$("#txtPwd").on('focus', function() {
				$("#warn2").css({
					display : 'none'
				});
			});
			//关闭
			$(".close_btn").hover(function() {
				$(this).css({
					color : 'black'
				})
			}, function() {
				$(this).css({
					color : '#999'
				})
			}).on('click', function() {
				$("#LoginBox").fadeOut("fast");
				$("#mask").css({
					display : 'none'
				});
			});
		});
	</script>
	<div class="wraper">
		<!--[if lt IE 9]>
    <p class="chromeframe">您使用的IE浏览器版本过低，本站不再支持，<a href="//windows.microsoft.com/">升级您的IE浏览器</a>，或使用<a href="//www.google.cn/chrome/">Google Chrome</a>、<a href="//www.firefox.com.cn/download/">Firefox</a>等高级浏览器，将会得到更好的体验！</p>
<![endif]-->
		<div id="header" class="header header-close">

			<!--TOP S-->
			<div class="top">
				<div class="top-inner layout">
					<div id="J_nav" class="main-nav-wrap">
						<ul class="main-nav">
							<li><a href="http://lol.qq.com/web201310/info-heros.shtml"
								onclick="pgvSendClick({hottag:v2.nav.info.link})">游戏资料<span>GAME
										INFO</span></a></li>
							<li><a class="n" href="javascript:void(0)">商城/合作<span>STORE</span></a></li>
							<li><a class="n" href="javascript:void(0)">用户互动<span>COMMUNITY</span></a></li>
							<li><a href="http://lpl.qq.com/"
								onclick="pgvSendClick({hottag:v2.nav.match.link})"
								target="_blank">赛事中心<span>EVENTS</span></a></li>
							<li><a class="n" href="javascript:void(0)">自助系统<span>SYSTEM</span></a></li>
							<!--<li><a href="/web201310/personal.shtml" onclick="pgvSendClick({hottag:'v2.nav.personal.link'})">个人中心<span>user center</span></a></li>-->
						</ul>
						<!--下拉子导航 S-->
						<div id="J_subNav" class="sub-nav" style="visibility: hidden;">
							<ul class="sub-nav-inner">
								<li class="sub-nav-item"><a class="sub-nav-lnk"
									onclick="pgvSendClick()"
									href="http://lol.qq.com/web201310/newbie-what.shtml"
									target="_blank">新手指引</a> <a class="sub-nav-lnk"
									onclick="pgvSendClick()"
									href="http://lol.qq.com/web201310/info-heros.shtml"
									target="_blank"><i class="icon-hot"></i>资料库</a> <!--<a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.info.guides'})" href="/web201310/101/guides.shtml">战争学院</a>-->
									<a class="sub-nav-lnk" onclick="pgvSendClick( )"
									href="http://lol.qq.com/guide/" target="_blank">攻略中心</a> <a
									class="sub-nav-lnk" onclick="pgvSendClick( )"
									href="http://lol.qq.com/act/a20160412rgm/" target="_blank">模式实验室</a>
									<a class="sub-nav-lnk" onclick="pgvSendClick(  )"
									href="http://lol.qq.com/act/a20160713loot/" target="_blank">海克斯战利品库</a>
									<a class="sub-nav-lnk" onclick="pgvSendClick()"
									href="http://lol.qq.com/act/a20161101pbcxym/" target="_blank">屏保下载</a>
									<a class="sub-nav-lnk" onclick="pgvSendClick()"
									href="http://yz.lol.qq.com/" target="_blank"><i
										class="icon-new"></i>宇宙官网</a></li>
								<li class="sub-nav-item"><a class="sub-nav-lnk"
									onclick="pgvSendClick()" target="_blank"
									href="http://lol.qq.com/comm-htdocs/pay/new_index.htm?t=lol"><i
										class="publicspr ico-h"></i>点券充值</a> <a class="sub-nav-lnk"
									onclick="pgvSendClick()" target="_blank"
									href="http://daoju.qq.com/lol/">道聚城</a> <a class="sub-nav-lnk"
									onclick="pgvSendClick()"
									href="http://lolriotmall.qq.com/index.html?ADTAG=lol.rk.gw.top&amp;adunionsid=gwtop"
									target="_blank"><i class="icon-hot"></i>周边商城</a> <a
									class="sub-nav-lnk" onclick="pgvSendClick()"
									href="http://lol.qq.com/mvm/?ADTAG=lol.rk.gw.top"
									target="_blank">LOL桌游</a> <a class="sub-nav-lnk"
									onclick="pgvSendClick()"
									href="http://lpl.qq.com/es/act/a20170731cmb/" target="_blank">LOL信用卡</a>
									<a class="sub-nav-lnk" onclick="pgvSendClick()"
									href="http://cafe.qq.com/" target="_blank">网吧特权</a></li>
								<li class="sub-nav-item"><a class="sub-nav-lnk"
									onclick="pgvSendClick()"
									href="http://kf.qq.com/cgi-bin/SuperLOL" target="_blank">在线客服</a>
									<a class="sub-nav-lnk" onclick="pgvSendClick()"
									href="http://lol.qq.com/v/" target="_blank">视频中心</a> <!--<a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.user.active'})" href="/web201310/active.shtml" target="_blank"><i class="icon-hot"></i>活动中心</a>-->
									<a class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank"
									href="http://bbs.lol.qq.com/forum.php">官方论坛</a> <a
									class="sub-nav-lnk" onclick="pgvSendClick()"
									href="http://lol.qq.com/act/a20160425wxlol/" target="_blank">官方微信</a>
									<a class="sub-nav-lnk" onclick="pgvSendClick()"
									href="http://weibo.com/lol" target="_blank">官方微博</a></li>
								<li class="sub-nav-item"><a class="sub-nav-lnk"
									onclick="pgvSendClick()" target="_blank"
									href="http://lpl.qq.com/es/2017worlds/"><i class="icon-new"></i>全球总决赛</a>
									<a class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank"
									href="http://lpl.qq.com/es/lpl/"><i class="icon-hot"></i>LPL职业联赛</a>
									<a class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank"
									href="http://lol.qq.com/match/demacia/">德玛西亚杯</a> <a
									class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank"
									href="http://lol.qq.com/match/city/">城市争霸赛</a> <a
									class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank"
									href="http://lol.qq.com/match/lcl/">高校联赛</a> <a
									class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank"
									href="http://lpl.qq.com/es/ldl/">LDL发展联赛</a> <a
									class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank"
									href="http://lol.qq.com/act/a20161025gxzfs/">高校自发赛</a></li>
								<li class="sub-nav-item">
									<!--<li><a href="/act/a20110613icon/?ADTAG=lolweb.v2" target="_blank" onclick="pgvSendClick({hottag:'v2.sidenav.icon'})"><i class="icon-icon"></i>点亮图标</a></li>-->
									<a class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank"
									href="http://lol.qq.com/act/a20110613icon/?ADTAG=lolweb.v2">点亮图标</a>
									<!--<a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.system.rs'})" target="_blank" href="/rs/">声望系统</a>-->
									<a class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank"
									href="http://lol.qq.com/act/a20151118fh/"><i
										class="icon-hot"></i>封号查询</a> <a class="sub-nav-lnk"
									onclick="pgvSendClick()" target="_blank"
									href="http://lol.qq.com/act/a20110907exp/">体验服申请</a> <a
									class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank"
									href="http://lol.qq.com/act/a20170728replay/">回放系统</a> <a
									class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank"
									href="http://lol.qq.com/act/a20150326dqpd/">服务器状态查询</a> <a
									class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank"
									href="http://lol.qq.com/act/a20160317sickle/">裁决之镰</a> <a
									class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank"
									href="http://lol.qq.com/act/a20170704super/index.shtml?e_code=336975"><i
										class="icon-new"></i>峡谷之巅</a>
								</li>
							</ul>

						</div>
						<!--下拉子导航 E-->
					</div>

					<span id="J_searchClick" class="top-search"><i
						class="icon-top-search"></i></span>
					<div id="J_search" class="top-search-main" style="display: none">
						<div class="top-search-inner">
							<i class="icon-search-inner"></i> <input class="input-search-box"
								type="text" value="" placeholder="搜索 lol.qq.com"
								id="J_searchText"> <span id="J_searchTips"
								class="input-search-tips">按下回车键进行搜索</span> <span
								id="J_searchClose" class="top-search-close" title="关闭搜索系统"></span>
						</div>
						<div class="top-search-quick" id="J_searchShortcut">
							<h5 class="search-quick-title">快速链接</h5>
							<a
								href="http://lol.qq.com/act/a20160624search/index.html?&amp;searchType=news&amp;word=%E5%85%A8%E7%90%83%E6%80%BB%E5%86%B3%E8%B5%9B"
								target="_blank">全球总决赛</a><a
								href="http://lol.qq.com/act/a20160624search/index.html?&amp;searchType=news&amp;word=%E6%96%B0%E7%9A%AE%E8%82%A4"
								target="_blank">新皮肤</a><a
								href="http://lol.qq.com/act/a20160624search/index.html?&amp;searchType=news&amp;word=%E6%9C%88%E9%A5%BC"
								target="_blank">月饼</a><a
								href="http://lol.qq.com/act/a20160624search/index.html?&amp;searchType=news&amp;word=%E5%AD%A3%E5%89%8D%E8%B5%9B"
								target="_blank">季前赛</a><a
								href="http://lol.qq.com/act/a20160624search/index.html?&amp;searchType=news&amp;word=%E5%A5%A5%E6%81%A9"
								target="_blank">奥恩</a>
						</div>
					</div>
					<!--<a class="top-search" href="/act/a20160624search/" onclick="pgvSendClick({hottag:'v2.nav.search'})"  target="_blank" title="前往英雄联盟搜索系统"><i class="icon-top-search"></i></a>-->
					<a class="top-app" href="http://lol.qq.com/app/" target="_blank"
						title="前往掌上英雄联盟官网"><i class="icon-top-app"></i></a>
					<div id="J_topUser" class="top-user">
						<!--已登录已绑定大区 S-->
						<div class="top-user-info" style="display: block">
							<div class="top-user-side">
								<span class="user-mask"></span>
								<c:if test="${ empty people }">
									<img id="jUserIcon" src="../images/default.png">
								</c:if>
								<c:if test="${not empty people }">
									<img id="jUserIcon"
										src="${pageContext.request.contextPath }/images/${people.picture }">

								</c:if>
							</div>
							<div class="top-user-main">
								<div class="top-user-unlogin">

									<c:if test="${empty consumer }">
								亲爱的召唤师，欢迎<a href="#" id="example">登录</a>
									</c:if>


									<c:if test="${not empty consumer }">
										<%-- 
										<a href="${pageContext.request.contextPath }/user/type">绑定大区</a>
										 --%>
										<c:if test="${empty people  }">
											<div class="regional">
												亲爱的召唤师，欢迎<Br> <a href="javascript:showLoginDiv()	">绑定大区</a><span>|</span>
												<a href="${pageContext.request.contextPath }/user/logout">注销</a>

											</div>
										</c:if>

										<!-- 亲爱的召唤师，欢迎<a href="#" id="regional">绑定大区</a> -->
										<c:if test="${not empty people  }">
											<span class="sep">${people.name}|</span>
											<a href="${pageContext.request.contextPath }/user/logout">注销</a>

										</c:if>

									</c:if>



									<!-- <em onclick="LW201310_Userinfo.userLogin();">登录</em> -->
								</div>

								<div class="top-user-tips">
									<a href="javascript:showselfDiv()" style="color: gray;">个人信息</a>
								</div>
							</div>
							<a class="btn-user-drop" href=""></a>
						</div>
						<form action="${pageContext.request.contextPath }/user/login"
							method="post">
							<div id="LoginBox">
								<div class="row1">
									用户登录<a href="javascript:void(0)" title="关闭窗口" class="close_btn"
										id="closeBtn">×</a>
								</div>

								<div class="row">

									账&nbsp;&nbsp;&nbsp;&nbsp;号: <span class="inputBox"> <input
										type="text" id="txtName" name="txtName" placeholder="账号/邮箱" />
									</span> <a href="javascript:void(0)" title="提示" class="warning"
										id="warn">用户名不能为空</a>
								</div>
								<div class="row">
									密&nbsp;&nbsp;&nbsp;&nbsp;码: <span class="inputBox"> <input
										type="password" id="txtPwd" name="txtPwd" placeholder="密码" />
									</span><a href="javascript:void(0)" title="提示" class="warning"
										id="warn2">密码不能为空</a>
								</div>
								<div class="row">
									<input type="submit" value="登录" id="loginbtn" />
									<!-- <a href="" >登录</a> -->
								</div>

								<p style="color: red;">${xmerr}</p>

								<div class="row_foot">
									<a href="">忘记密码</a>&nbsp;/ <a href="../userInfo/register.jsp">注册</a>
								</div>
							</div>

						</form>





						<div id="mask" class="mask" style="display: none;"></div>
						<!-- 大区选择 -->
						<div id="regional" class="loginDiv" style="display: none;">
							<form action="${pageContext.request.contextPath }/main/type"
								method="post">
								<div
									style=" width: 600px; height: 500px;position:absolute;right:400px;">
									<table
										style="width:550px;height:320px; background-color: white; padding-top: 100px;">
										<tr>
											<td id="text_sel">大区选择</td>

											<%--  <s:select name="p.productType.typeId"  headerKey="-1" headerValue="请选择" list="%{#session.ptlist}" listKey="typeId" listValue="typeName"></s:select>
	 --%>
											<td style="width: 200px;"><select name="regpeo">
													<c:forEach var="reg" items="${reglist }" varStatus="i">
														<!--在action中调用的是id的  -->
														<option value="${reg.id}">${reg.name }</option>
													</c:forEach>
											</select></td>


										</tr>



										<tr>
											<td><div id="login_user">
													<input type="submit" id="quxiaobtn" value="登陆"
														onmouseover="this.style.color='black';"
														onmouseout="this.style.color='gray';">
												</div></td>
											<td><div id="xy">
													<input type="button" value="取消登陆"
														onmouseover="this.style.color='black';"
														onmouseout="this.style.color='gray';"
														onclick="javascripe:hidelogin()"> <br>
												</div></td>
										</tr>

									</table>
								</div>
							</form>
						</div>



						<!--已登录未绑定大区 E-->
						<div id="self" style="display: none;">
						
							<div class="pic">
							
							
								<img id="J_rankPic" src="../images/${people.levelPic }"
								
									width="330" height="110" alt=""><br><br> <em id="jUserRank">${people.levelName}</em>段位
							</div>
							<div class="info">

								<div class="top-user-item">
									<strong id="jUserRP">${people.dianjuan }</strong>点券
								</div>
								<div class="top-user-item">
									<strong id="jUserIP">${people.jinbi }</strong>金币
								</div>
								<div class="top-user-item">
									<strong id="jUserRS">${people.shengwang }</strong>声望值
								</div>
								
								
							</div>
							
						</div>
						<div class="top-link-personal" 
								>
							<a href="javascripe:hideselfDiv()" id="geren"
								style="display: none; color: white;" >个人信息</a></div>
						</div>
					</div>
				</div>
		
			<!--TOP E-->


			<div class="header-inner layout">
				<div class="logo">
					<a href="http://lol.qq.com/">英雄联盟</a>
				</div>

				<!--当前活动 S-->
				<!--<video class="top-back-video" id="topBackVideo" autoplay loop>-->
				<!--<source src="//ossweb-img.qq.com/images/lol/v2/banner/back-v12.webm" type="video/webm">-->
				<!--<source src="//ossweb-img.qq.com/images/lol/v2/banner/back-v12.mp4" type="video/mp4">-->
				<!--</video>-->
				<div class="top-act">
					<!--<h2 class="top-act-name">2017全球总决赛<span>2017全球总决赛</span></h2>-->
					<!--<p class="top-act-desc">代表星辰消灭怪兽！星之守护者新队“初之际”参上！</p>-->
					<!--<div class="top-act-video">-->
					<!--<video class="top-small-video" id="topSmallVideo" autoplay loop>-->
					<!--<source src="//ossweb-img.qq.com/images/lol/v2/banner/small-v9.webm" type="video/webm">-->
					<!--<source src="//ossweb-img.qq.com/images/lol/v2/banner/small-v9.mp4" type="video/mp4">-->
					<!--</video>-->
					<!--<a id="J_play" class="btn-top-play" href="javascript:void(0)"><i class="icon-top-play"></i></a>-->
					<!--</div>-->
					<a class="top-act-link"
						href="http://lpl.qq.com/es/2017worlds/?ADTAG=lolweb.v2.act"
						onclick="pgvSendClick()" target="_blank">查看详情</a>
				</div>
				<!--当前活动 E-->

				<div id="J_version" class="top-version">
					当前游戏版本：<em>Ver 7.19</em> <a class="top-version-link"
						href="http://lol.qq.com/webplat/info/news_version3/152/22006/m14290/201709/639913.shtml"
						onclick="pgvSendClick()" target="_blank">版本详情</a>
				</div>

			</div>
		</div>
		<!--[if !IE]>|xGv00|9f88f36707d1676cd1a0e91d4b729928<![endif]-->
		<div class="layout mainer">
			<div id="Navi" class="navi">
				<i class="commspr commico-crumbs"></i> <a
					href="http://lol.qq.com/main.shtml">英雄联盟首页</a> <i
					class="commspr commico-rrow"></i> <span>召唤师资料</span> <i
					class="commspr commico-rrow"></i> <span id="jPersonTitle">${people.name }[${ people.regional.name }
					]</span>
			</div>

			<div id="jPersonHead" class="infotab-big" style="">
				<!-- update by 2014-1-15 -->
				<!-- <ul id="jPersonArea" class="infotab infotab-area"></ul> -->
				<div class="infotab-area">
					<ul id="jPersonArea" class="infotab">
						<li class="current"
							onclick="LW201310_Battle.userAreaChange(2936952079, 9);"><img
							width="50" height="50" alt="" src="../images/server1.jpg">
						<p>艾欧尼亚 电信</p></li>
					</ul>
					<div id="jPersonAreaDiv" class="infotab-more" style="display:none">
						<h4>您的帐号在以下其他大区拥有召唤师角色：</h4>
						<ul id="jPersonOtherArea" class="infotab">
							<li onclick="LW201310_Battle.userAreaChange(4115116783, 1);"><img
								width="50" height="50" alt="" src="../images/server1.jpg">
							<p>艾欧尼亚 电信</p></li>
							
							<li onclick="LW201310_Battle.userAreaChange(4006046640, 6);"><img
								width="50" height="50" alt="" src="../images/server6.jpg">
							<p>德玛西亚 网通</p></li>
							
						</ul>
					</div>
				</div>
				<div class="tab-prevnext">
					<a id="jShowMoreArea" href="javascript:;"
						class="commspr commico-left" style=""></a>
				</div>
				<!-- update by 2014-1-15 -->

				<div class="searchbox info-searchbox" style="display:none">
					<input type="text" value="输入要搜索的召唤师名称" class="input-search"
						id="jSearchHeroInput"
						onkeydown="javascript:if(13==event.keyCode) LW201310_Battle.userSearch(this.value);">
					<span onclick="LW201310_Battle.userSearch(g().value);"
						class="publicspr tnd btn-search">搜索</span>
				</div>
				<div class="seletearea" style="display:none">
					<p class="seletearea-current">
						<a id="jAreaSelectorSpan"
							href="javascript:LW201310_Battle.areaSelector();" class="cgray">弗雷尔卓德
							网通</a>&nbsp;<i class="commspr ico-arrdown2"></i>
					</p>
					<ul id="jAreaSelector" class="seletearea-list"
						style="display:none;"></ul>
				</div>

			</div>

			<div id="jPersonBody" class="colbox pageuserbody" style="">
				<div class="clearfix">
					<div class="pageuserline">
						<div id="jPersonIcon" class="pu-header">
							<img width="100" height="100" alt=""
								src="../images/${people.picture }">
							<p></p>
						</div>
						<div class="pu-names">
							<h2 id="jPersonName">${people.name }</h2>
							<p id="jPersonRSP" class="pu-num" style="">
								声望值：<span id="jPersonRS">${people.shengwang }</span><a
									href="http://lol.qq.com/rs/" class="commspr commico-why"
									title="消耗声望可在声望商城中兑换各种游戏道具、周边，参与各种有奖活动哦！可点击图标进入声望系统。"
									target="_blank"></a>
							</p>
							<p id="jPersonBank" class="pu-num" style="">
								我的账户：<i class="commspr commico-R" title="点券"></i><em
									id="jPersonRP">${people.dianjuan  }</em>&nbsp;&nbsp;<i class="commspr commico-L"
									title="金币"></i><em id="jPersonIP">${people.jinbi }</em><a
									href="http://lol.qq.com/comm-htdocs/pay/new_index.htm?t=lol"
									class="commspr commbtn-smallred" target="_blank">充值点券&nbsp;&nbsp;</a>
							</p>
						</div>
					</div>
					<div class="honor-top">
						<img id="jUserTierIcon" src="../images/${people.levelPic }" alt="">
						<h4>单人/双人匹配赛</h4>
						<p id="jUserTierRank">${people.levelName }</p>
					</div>
				</div>



				<div class="pagetab">
					<ul class="pagetab-list pagetablist-five" id="pagetab_list">
					<li id="jPersonTab1" class=""><a href="${pageContext.request.contextPath }/userInfo/Myuser.jsp" class="pagetab-list-lnk" onclick="pgvSendClick()">个人信息</a></li>
					<li id="jPersonTab4" class=""><a href="${pageContext.request.contextPath }/userInfo/rongyu.jsp" class="pagetab-list-lnk" onclick="pgvSendClick()">个人荣誉</a></li>
					<li id="jPersonTab2" class=""><a href="${pageContext.request.contextPath }/userInfo/history.jsp" class="pagetab-list-lnk" onclick="pgvSendClick()">历史战绩</a></li>
					<li id="jPersonTab5" class="current"><a href="${pageContext.request.contextPath }/userInfo/MySkin.jsp" class="pagetab-list-lnk" onclick="pgvSendClick()">我的英雄与皮肤</a></li>
					<li id="jPersonTab3" class=""><a href="${pageContext.request.contextPath }/userInfo/friend.jsp" class="pagetab-list-lnk" onclick="pgvSendClick()">好友印象</a></li>
				</ul>
				</div>


				<!-- 个人信息 -->
			
				<!-- end 比赛历史 -->

				<!-- 英雄及皮肤 -->
				<div id="heroSkins" class="info-showbox" style="display:none"></div>
				<!-- end 英雄及皮肤 -->

				<!-- 我的英雄与皮肤 -->
				<div id="jPersonDiv5" class="clearfix info-showbox"
					style="display: block;">
					<ul class="hero-skin-tab">
						<li class="" id="heroBtn"><a href="javascript:;">我的英雄</a></li>
						<li class="current" id="skinBtn"><a href="javascript:;">我的皮肤</a></li>
					</ul>
					<div class="hero-skin-con">
						<div class="hero-skin-top" id="hero_skin_num_top">
							<p>
								您当前拥有<span id="myHeroNum">123个</span><em id="itemType">皮肤</em>。<i>
									| </i><a href="javascript:;" id="shareBtn">我要分享</a>
							</p>
							<div class="tg-sns" id="tg-sns" style="display:none">
								<a class="tg-sns-link tg-sns-wechat" onclick="pgvSendClick()"
									href="http://game.qq.com/share/weixin.htm?url=http%3A%2F%2Flol.qq.com%2Fweb201310%2Fpersonal.shtml%3Fid%3D2936952079%26area%3D9%26showDiv%3D1&amp;title=%E6%82%A8%E5%BD%93%E5%89%8D%E6%8B%A5%E6%9C%89180%E4%B8%AA%E8%8B%B1%E9%9B%84&amp;pic=http://lol.qq.com/web201310/personal.shtml?id=2936952079&amp;area=9&amp;showDiv=1"
									title="分享到微信" target="_blank">wechat</a><a
									class="tg-sns-link tg-sns-qq"
									onclick="pgvSendClick();window.open()"
									href="javascript:void(0)" title="分享到QQ好友">qq</a><a
									class="tg-sns-link tg-sns-qzone"
									onclick="pgvSendClick();window.open()"
									href="javascript:void(0)" title="分享到QQ空间">qzone</a><a
									class="tg-sns-link tg-sns-weibo"
									onclick="pgvSendClick();window.open()"
									href="javascript:void(0)" title="分享到腾讯微博">weibo</a><a
									class="tg-sns-link tg-sns-pengyou"
									onclick="pgvSendClick();window.open()"
									href="javascript:void(0)" title="分享到朋友网">pengyou</a><a
									class="tg-sns-link tg-sns-sina"
									onclick="pgvSendClick();window.open()"
									href="javascript:void(0)" title="分享到新浪微博">sina</a><a
									class="tg-sns-link tg-sns-douban"
									onclick="pgvSendClick();window.open()"
									href="javascript:void(0)" title="分享到豆瓣">douban</a><a
									class="tg-sns-link tg-sns-kaixin"
									onclick="pgvSendClick();window.open()"
									href="javascript:void(0)" title="分享到开心网">kaixin</a><a
									class="tg-sns-link tg-sns-renren"
									onclick="pgvSendClick();window.open()"
									href="javascript:void(0)" title="分享到人人">renren</a>
							</div>
						</div>
						<div class="search-box ovh">
							<!-- <ul id="seleteChecklist" class="selete-checklist">
								<li class="selete-item current"><span class="ms-radio"><i
										class="i"></i></span><label data-id="">所有英雄</label></li>
								<li class="selete-item"><span class="ms-radio"><i
										class="i"></i></span><label data-id="Fighter">战士</label></li>
								<li class="selete-item"><span class="ms-radio"><i
										class="i"></i></span><label data-id="Mage">法师</label></li>
								<li class="selete-item"><span class="ms-radio"><i
										class="i"></i></span><label data-id="Assassin">刺客</label></li>
								<li class="selete-item"><span class="ms-radio"><i
										class="i"></i></span><label data-id="Tank">坦克</label></li>
								<li class="selete-item"><span class="ms-radio"><i
										class="i"></i></span><label data-id="Marksman">射手</label></li>
								<li class="selete-item"><span class="ms-radio"><i
										class="i"></i></span><label data-id="Support">辅助</label></li>
								<li class="selete-item"><span class="ms-radio"><i
										class="i"></i></span><label data-id="havenot">未拥有</label></li>
							</ul> -->
							<!-- <div class="searchbox info-searchbox">
								<input id="jSearchHeroInput_hero" class="input-search"
									type="text" value="请输入您要搜索的英雄名"> <span
									class="publicspr tnd btn-search">搜索</span>
							</div> -->
						</div>
						<div class="hero-skin-container">
							<div class="my-hero-box ovh" id="heroBox" style="display: none;">
								<ul class="my-hero-list" id="jSearchHeroDiv">
									<li class="nohero"><img alt="暗裔剑魔 亚托克斯"
										src="../images/Aatrox.png">
									<p>暗裔剑魔</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Aatrox"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Aatrox">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(266,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.266&#39;});">点击购买</a>
										</p></li>
									<li><img alt="九尾妖狐 阿狸" src="../images/Ahri.png">
									<p>九尾妖狐</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Ahri"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Ahri">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(103,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.103&#39;});">点击购买</a>
										</p></li>
									<li><img alt="暗影之拳 阿卡丽" src="../images/Akali.png">
									<p>暗影之拳</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Akali"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Akali">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(84,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.84&#39;});">点击购买</a>
										</p></li>
									<li><img alt="牛头酋长 阿利斯塔" src="../images/Alistar.png">
									<p>牛头酋长</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Alistar"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Alistar">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo();pgvSendClick();">点击购买</a>
										</p></li>
									<li><img alt="殇之木乃伊 阿木木" src="../images/Amumu.png">
									<p>殇之木乃伊</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Amumu"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Amumu">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(32,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.32&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="冰晶凤凰 艾尼维亚"
										src="../images/Anivia.png">
									<p>冰晶凤凰</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Anivia"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Anivia">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(34,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.34&#39;});">点击购买</a>
										</p></li>
									<li><img alt="黑暗之女 安妮" src="../images/Annie.png">
									<p>黑暗之女</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Annie"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Annie">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(1,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.1&#39;});">点击购买</a>
										</p></li>
									<li><img alt="寒冰射手 艾希" src="../images/Ashe.png">
									<p>寒冰射手</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Ashe"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Ashe">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(22,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.22&#39;});">点击购买</a>
										</p></li>
									<li><img alt="铸星龙王 奥瑞利安·索尔"
										src="../images/AurelionSol.png">
									<p>铸星龙王</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=AurelionSol"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=AurelionSol">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(136,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.136&#39;});">点击购买</a>
										</p></li>
									<li><img alt="沙漠皇帝 阿兹尔" src="../images/Azir.png">
									<p>沙漠皇帝</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Azir"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Azir">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(268,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.268&#39;});">点击购买</a>
										</p></li>
									<li><img alt="星界游神 巴德" src="../images/Bard.png">
									<p>星界游神</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Bard"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Bard">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(432,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.432&#39;});">点击购买</a>
										</p></li>
									<li><img alt="蒸汽机器人 布里茨" src="../images/Blitzcrank.png">
									<p>蒸汽机器人</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Blitzcrank"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Blitzcrank">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(53,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.53&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="复仇焰魂 布兰德"
										src="../images/Brand.png">
									<p>复仇焰魂</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Brand"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Brand">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(63,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.63&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="弗雷尔卓德之心 布隆"
										src="../images/Braum.png">
									<p>弗雷尔卓德之心</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Braum"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Braum">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(201,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.201&#39;});">点击购买</a>
										</p></li>
									<li><img alt="皮城女警 凯特琳" src="../images/Caitlyn.png">
									<p>皮城女警</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Caitlyn"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Caitlyn">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(51,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.51&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="青钢影 卡蜜尔"
										src="../images/Camille.png">
									<p>青钢影</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Camille"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Camille">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(164,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.164&#39;});">点击购买</a>
										</p></li>
									<li><img alt="魔蛇之拥 卡西奥佩娅" src="../images/Cassiopeia.png">
									<p>魔蛇之拥</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Cassiopeia"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Cassiopeia">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(69,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.69&#39;});">点击购买</a>
										</p></li>
									<li><img alt="虚空恐惧 科加斯" src="../images/Chogath.png">
									<p>虚空恐惧</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Chogath"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Chogath">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(31,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.31&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="英勇投弹手 库奇"
										src="../images/Corki.png">
									<p>英勇投弹手</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Corki"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Corki">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(42,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.42&#39;});">点击购买</a>
										</p></li>
									<li><img alt="诺克萨斯之手 德莱厄斯" src="../images/Darius.png">
									<p>诺克萨斯之手</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Darius"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Darius">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(122,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.122&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="皎月女神 黛安娜"
										src="../images/Diana.png">
									<p>皎月女神</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Diana"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Diana">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(131,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.131&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="荣耀行刑官 德莱文"
										src="../images/Draven.png">
									<p>荣耀行刑官</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Draven"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Draven">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(119,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.119&#39;});">点击购买</a>
										</p></li>
									<li><img alt="祖安狂人 蒙多医生" src="../images/DrMundo.png">
									<p>祖安狂人</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=DrMundo"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=DrMundo">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(36,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.36&#39;});">点击购买</a>
										</p></li>
									<li><img alt="时间刺客 艾克" src="../images/Ekko.png">
									<p>时间刺客</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Ekko"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Ekko">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(245,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.245&#39;});">点击购买</a>
										</p></li>
									<li><img alt="蜘蛛女皇 伊莉丝" src="../images/Elise.png">
									<p>蜘蛛女皇</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Elise"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Elise">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(60,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.60&#39;});">点击购买</a>
										</p></li>
									<li><img alt="寡妇制造者 伊芙琳" src="../images/Evelynn.png">
									<p>寡妇制造者</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Evelynn"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Evelynn">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(28,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.28&#39;});">点击购买</a>
										</p></li>
									<li><img alt="探险家 伊泽瑞尔" src="../images/Ezreal.png">
									<p>探险家</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Ezreal"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Ezreal">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(81,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.81&#39;});">点击购买</a>
										</p></li>
									<li><img alt="末日使者 费德提克" src="../images/Fiddlesticks.png">
									<p>末日使者</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Fiddlesticks"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Fiddlesticks">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(9,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.9&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="无双剑姬 菲奥娜"
										src="../images/Fiora.png">
									<p>无双剑姬</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Fiora"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Fiora">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(114,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.114&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="潮汐海灵 菲兹"
										src="../images/Fizz.png">
									<p>潮汐海灵</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Fizz"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Fizz">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(105,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.105&#39;});">点击购买</a>
										</p></li>
									<li><img alt="正义巨像 加里奥" src="../images/Galio.png">
									<p>正义巨像</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Galio"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Galio">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(3,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.3&#39;});">点击购买</a>
										</p></li>
									<li><img alt="海洋之灾 普朗克" src="../images/Gangplank.png">
									<p>海洋之灾</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Gangplank"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Gangplank">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(41,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.41&#39;});">点击购买</a>
										</p></li>
									<li><img alt="德玛西亚之力 盖伦" src="../images/Garen.png">
									<p>德玛西亚之力</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Garen"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Garen">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(86,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.86&#39;});">点击购买</a>
										</p></li>
									<li><img alt="迷失之牙 纳尔" src="../images/Gnar.png">
									<p>迷失之牙</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Gnar"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Gnar">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(150,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.150&#39;});">点击购买</a>
										</p></li>
									<li><img alt="酒桶 古拉加斯" src="../images/Gragas.png">
									<p>酒桶</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Gragas"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Gragas">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(79,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.79&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="法外狂徒 格雷福斯"
										src="../images/Graves.png">
									<p>法外狂徒</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Graves"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Graves">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(104,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.104&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="战争之影 赫卡里姆"
										src="../images/Hecarim.png">
									<p>战争之影</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Hecarim"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Hecarim">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(120,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.120&#39;});">点击购买</a>
										</p></li>
									<li><img alt="大发明家 黑默丁格" src="../images/Heimerdinger.png">
									<p>大发明家</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Heimerdinger"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Heimerdinger">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(74,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.74&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="海兽祭司 俄洛伊"
										src="../images/Illaoi.png">
									<p>海兽祭司</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Illaoi"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Illaoi">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(420,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.420&#39;});">点击购买</a>
										</p></li>
									<li><img alt="刀锋意志 艾瑞莉娅" src="../images/Irelia.png">
									<p>刀锋意志</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Irelia"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Irelia">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(39,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.39&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="翠神 艾翁"
										src="../images/Ivern.png">
									<p>翠神</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Ivern"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Ivern">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(427,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.427&#39;});">点击购买</a>
										</p></li>
									<li><img alt="风暴之怒 迦娜" src="../images/Janna.png">
									<p>风暴之怒</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Janna"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Janna">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(40,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.40&#39;});">点击购买</a>
										</p></li>
									<li><img alt="德玛西亚皇子 嘉文四世" src="../images/JarvanIV.png">
									<p>德玛西亚皇子</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=JarvanIV"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=JarvanIV">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(59,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.59&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="武器大师 贾克斯"
										src="../images/Jax.png">
									<p>武器大师</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Jax"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Jax">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(24,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.24&#39;});">点击购买</a>
										</p></li>
									<li><img alt="未来守护者 杰斯" src="../images/Jayce.png">
									<p>未来守护者</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Jayce"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Jayce">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(126,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.126&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="戏命师 烬"
										src="../images/Jhin.png">
									<p>戏命师</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Jhin"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Jhin">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(202,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.202&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="暴走萝莉 金克丝"
										src="../images/Jinx.png">
									<p>暴走萝莉</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Jinx"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Jinx">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(222,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.222&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="复仇之矛 卡莉丝塔"
										src="../images/Kalista.png">
									<p>复仇之矛</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Kalista"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Kalista">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(429,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.429&#39;});">点击购买</a>
										</p></li>
									<li><img alt="天启者 卡尔玛" src="../images/Karma.png">
									<p>天启者</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Karma"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Karma">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(43,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.43&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="死亡颂唱者 卡尔萨斯"
										src="../images/Karthus.png">
									<p>死亡颂唱者</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Karthus"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Karthus">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(30,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.30&#39;});">点击购买</a>
										</p></li>
									<li><img alt="虚空行者 卡萨丁" src="../images/Kassadin.png">
									<p>虚空行者</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Kassadin"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Kassadin">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(38,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.38&#39;});">点击购买</a>
										</p></li>
									<li><img alt="不祥之刃 卡特琳娜" src="../images/Katarina.png">
									<p>不祥之刃</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Katarina"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Katarina">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(55,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.55&#39;});">点击购买</a>
										</p></li>
									<li><img alt="审判天使 凯尔" src="../images/Kayle.png">
									<p>审判天使</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Kayle"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Kayle">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(10,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.10&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="影流之镰 凯隐"
										src="../images/Kayn.png">
									<p>影流之镰</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Kayn"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Kayn">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(141,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.141&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="狂暴之心 凯南"
										src="../images/Kennen.png">
									<p>狂暴之心</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Kennen"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Kennen">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(85,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.85&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="虚空掠夺者 卡兹克"
										src="../images/Khazix.png">
									<p>虚空掠夺者</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Khazix"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Khazix">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(121,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.121&#39;});">点击购买</a>
										</p></li>
									<li><img alt="永猎双子 千珏" src="../images/Kindred.png">
									<p>永猎双子</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Kindred"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Kindred">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(203,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.203&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="暴怒骑士 克烈"
										src="../images/Kled.png">
									<p>暴怒骑士</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Kled"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Kled">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(240,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.240&#39;});">点击购买</a>
										</p></li>
									<li><img alt="深渊巨口 克格莫" src="../images/KogMaw.png">
									<p>深渊巨口</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=KogMaw"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=KogMaw">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(96,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.96&#39;});">点击购买</a>
										</p></li>
									<li><img alt="诡术妖姬 乐芙兰" src="../images/Leblanc.png">
									<p>诡术妖姬</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Leblanc"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Leblanc">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(7,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.7&#39;});">点击购买</a>
										</p></li>
									<li><img alt="盲僧 李青" src="../images/LeeSin.png">
									<p>盲僧</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=LeeSin"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=LeeSin">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(64,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.64&#39;});">点击购买</a>
										</p></li>
									<li><img alt="曙光女神 蕾欧娜" src="../images/Leona.png">
									<p>曙光女神</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Leona"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Leona">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(89,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.89&#39;});">点击购买</a>
										</p></li>
									<li><img alt="冰霜女巫 丽桑卓" src="../images/Lissandra.png">
									<p>冰霜女巫</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Lissandra"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Lissandra">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(127,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.127&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="圣枪游侠 卢锡安"
										src="../images/Lucian.png">
									<p>圣枪游侠</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Lucian"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Lucian">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(236,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.236&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="仙灵女巫 璐璐"
										src="../images/Lulu.png">
									<p>仙灵女巫</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Lulu"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Lulu">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(117,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.117&#39;});">点击购买</a>
										</p></li>
									<li><img alt="光辉女郎 拉克丝" src="../images/Lux.png">
									<p>光辉女郎</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Lux"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Lux">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(99,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.99&#39;});">点击购买</a>
										</p></li>
									<li><img alt="熔岩巨兽 墨菲特" src="../images/Malphite.png">
									<p>熔岩巨兽</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Malphite"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Malphite">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(54,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.54&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="虚空先知 玛尔扎哈"
										src="../images/Malzahar.png">
									<p>虚空先知</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Malzahar"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Malzahar">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(90,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.90&#39;});">点击购买</a>
										</p></li>
									<li><img alt="扭曲树精 茂凯" src="../images/Maokai.png">
									<p>扭曲树精</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Maokai"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Maokai">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(57,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.57&#39;});">点击购买</a>
										</p></li>
									<li><img alt="无极剑圣 易" src="../images/MasterYi.png">
									<p>无极剑圣</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=MasterYi"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=MasterYi">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(11,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.11&#39;});">点击购买</a>
										</p></li>
									<li><img alt="赏金猎人 厄运小姐" src="../images/MissFortune.png">
									<p>赏金猎人</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=MissFortune"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=MissFortune">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(21,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.21&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="齐天大圣 孙悟空"
										src="../images/MonkeyKing.png">
									<p>齐天大圣</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=MonkeyKing"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=MonkeyKing">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(62,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.62&#39;});">点击购买</a>
										</p></li>
									<li><img alt="铁铠冥魂 莫德凯撒" src="../images/Mordekaiser.png">
									<p>铁铠冥魂</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Mordekaiser"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Mordekaiser">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(82,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.82&#39;});">点击购买</a>
										</p></li>
									<li><img alt="堕落天使 莫甘娜" src="../images/Morgana.png">
									<p>堕落天使</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Morgana"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Morgana">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(25,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.25&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="唤潮鲛姬 娜美"
										src="../images/Nami.png">
									<p>唤潮鲛姬</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Nami"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Nami">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(267,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.267&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="沙漠死神 内瑟斯"
										src="../images/Nasus.png">
									<p>沙漠死神</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Nasus"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Nasus">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(75,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.75&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="深海泰坦 诺提勒斯"
										src="../images/Nautilus.png">
									<p>深海泰坦</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Nautilus"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Nautilus">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(111,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.111&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="狂野女猎手 奈德丽"
										src="../images/Nidalee.png">
									<p>狂野女猎手</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Nidalee"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Nidalee">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(76,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.76&#39;});">点击购买</a>
										</p></li>
									<li><img alt="永恒梦魇 魔腾" src="../images/Nocturne.png">
									<p>永恒梦魇</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Nocturne"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Nocturne">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(56,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.56&#39;});">点击购买</a>
										</p></li>
									<li><img alt="雪人骑士 努努" src="../images/Nunu.png">
									<p>雪人骑士</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Nunu"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Nunu">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(20,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.20&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="狂战士 奥拉夫"
										src="../images/Olaf.png">
									<p>狂战士</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Olaf"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Olaf">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(2,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.2&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="发条魔灵 奥莉安娜"
										src="../images/Orianna.png">
									<p>发条魔灵</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Orianna"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Orianna">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(61,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.61&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="山隐之焰 奥恩"
										src="../images/Ornn.png">
									<p>山隐之焰</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Ornn"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Ornn">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(516,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.516&#39;});">点击购买</a>
										</p></li>
									<li><img alt="战争之王 潘森" src="../images/Pantheon.png">
									<p>战争之王</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Pantheon"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Pantheon">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(80,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.80&#39;});">点击购买</a>
										</p></li>
									<li><img alt="圣锤之毅 波比" src="../images/Poppy.png">
									<p>圣锤之毅</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Poppy"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Poppy">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(78,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.78&#39;});">点击购买</a>
										</p></li>
									<li><img alt="德玛西亚之翼 奎因" src="../images/Quinn.png">
									<p>德玛西亚之翼</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Quinn"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Quinn">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(133,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.133&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="幻翎 洛"
										src="../images/Rakan.png">
									<p>幻翎</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Rakan"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Rakan">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(497,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.497&#39;});">点击购买</a>
										</p></li>
									<li><img alt="披甲龙龟 拉莫斯" src="../images/Rammus.png">
									<p>披甲龙龟</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Rammus"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Rammus">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(33,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.33&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="虚空遁地兽 雷克塞"
										src="../images/RekSai.png">
									<p>虚空遁地兽</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=RekSai"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=RekSai">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(421,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.421&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="荒漠屠夫 雷克顿"
										src="../images/Renekton.png">
									<p>荒漠屠夫</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Renekton"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Renekton">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(58,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.58&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="傲之追猎者 雷恩加尔"
										src="../images/Rengar.png">
									<p>傲之追猎者</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Rengar"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Rengar">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(107,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.107&#39;});">点击购买</a>
										</p></li>
									<li><img alt="放逐之刃 锐雯" src="../images/Riven.png">
									<p>放逐之刃</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Riven"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Riven">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(92,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.92&#39;});">点击购买</a>
										</p></li>
									<li><img alt="机械公敌 兰博" src="../images/Rumble.png">
									<p>机械公敌</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Rumble"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Rumble">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(68,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.68&#39;});">点击购买</a>
										</p></li>
									<li><img alt="符文法师 瑞兹" src="../images/Ryze.png">
									<p>符文法师</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Ryze"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Ryze">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(13,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.13&#39;});">点击购买</a>
										</p></li>
									<li><img alt="北地之怒 瑟庄妮" src="../images/Sejuani.png">
									<p>北地之怒</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Sejuani"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Sejuani">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(113,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.113&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="恶魔小丑 萨科"
										src="../images/Shaco.png">
									<p>恶魔小丑</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Shaco"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Shaco">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(35,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.35&#39;});">点击购买</a>
										</p></li>
									<li><img alt="暮光之眼 慎" src="../images/Shen.png">
									<p>暮光之眼</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Shen"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Shen">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(98,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.98&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="龙血武姬 希瓦娜"
										src="../images/Shyvana.png">
									<p>龙血武姬</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Shyvana"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Shyvana">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(102,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.102&#39;});">点击购买</a>
										</p></li>
									<li><img alt="炼金术士 辛吉德" src="../images/Singed.png">
									<p>炼金术士</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Singed"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Singed">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(27,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.27&#39;});">点击购买</a>
										</p></li>
									<li><img alt="亡灵战神 赛恩" src="../images/Sion.png">
									<p>亡灵战神</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Sion"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Sion">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(14,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.14&#39;});">点击购买</a>
										</p></li>
									<li><img alt="战争女神 希维尔" src="../images/Sivir.png">
									<p>战争女神</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Sivir"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Sivir">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(15,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.15&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="水晶先锋 斯卡纳"
										src="../images/Skarner.png">
									<p>水晶先锋</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Skarner"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Skarner">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(72,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.72&#39;});">点击购买</a>
										</p></li>
									<li><img alt="琴瑟仙女 娑娜" src="../images/Sona.png">
									<p>琴瑟仙女</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Sona"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Sona">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(37,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.37&#39;});">点击购买</a>
										</p></li>
									<li><img alt="众星之子 索拉卡" src="../images/Soraka.png">
									<p>众星之子</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Soraka"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Soraka">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(16,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.16&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="策士统领 斯维因"
										src="../images/Swain.png">
									<p>策士统领</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Swain"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Swain">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(50,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.50&#39;});">点击购买</a>
										</p></li>
									<li><img alt="暗黑元首 辛德拉" src="../images/Syndra.png">
									<p>暗黑元首</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Syndra"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Syndra">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(134,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.134&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="河流之王 塔姆"
										src="../images/TahmKench.png">
									<p>河流之王</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=TahmKench"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=TahmKench">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(223,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.223&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="岩雀 塔莉垭"
										src="../images/Taliyah.png">
									<p>岩雀</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Taliyah"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Taliyah">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(163,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.163&#39;});">点击购买</a>
										</p></li>
									<li><img alt="刀锋之影 泰隆" src="../images/Talon.png">
									<p>刀锋之影</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Talon"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Talon">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(91,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.91&#39;});">点击购买</a>
										</p></li>
									<li><img alt="瓦洛兰之盾 塔里克" src="../images/Taric.png">
									<p>瓦洛兰之盾</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Taric"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Taric">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(44,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.44&#39;});">点击购买</a>
										</p></li>
									<li><img alt="迅捷斥候 提莫" src="../images/Teemo.png">
									<p>迅捷斥候</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Teemo"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Teemo">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(17,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.17&#39;});">点击购买</a>
										</p></li>
									<li><img alt="魂锁典狱长 锤石" src="../images/Thresh.png">
									<p>魂锁典狱长</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Thresh"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Thresh">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(412,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.412&#39;});">点击购买</a>
										</p></li>
									<li><img alt="麦林炮手 崔丝塔娜" src="../images/Tristana.png">
									<p>麦林炮手</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Tristana"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Tristana">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(18,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.18&#39;});">点击购买</a>
										</p></li>
									<li><img alt="巨魔之王 特朗德尔" src="../images/Trundle.png">
									<p>巨魔之王</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Trundle"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Trundle">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(48,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.48&#39;});">点击购买</a>
										</p></li>
									<li><img alt="蛮族之王 泰达米尔" src="../images/Tryndamere.png">
									<p>蛮族之王</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Tryndamere"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Tryndamere">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(23,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.23&#39;});">点击购买</a>
										</p></li>
									<li><img alt="卡牌大师 崔斯特" src="../images/TwistedFate.png">
									<p>卡牌大师</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=TwistedFate"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=TwistedFate">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(4,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.4&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="瘟疫之源 图奇"
										src="../images/Twitch.png">
									<p>瘟疫之源</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Twitch"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Twitch">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(29,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.29&#39;});">点击购买</a>
										</p></li>
									<li><img alt="兽灵行者 乌迪尔" src="../images/Udyr.png">
									<p>兽灵行者</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Udyr"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Udyr">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(77,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.77&#39;});">点击购买</a>
										</p></li>
									<li><img alt="无畏战车 厄加特" src="../images/Urgot.png">
									<p>无畏战车</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Urgot"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Urgot">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(6,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.6&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="惩戒之箭 韦鲁斯"
										src="../images/Varus.png">
									<p>惩戒之箭</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Varus"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Varus">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(110,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.110&#39;});">点击购买</a>
										</p></li>
									<li><img alt="暗夜猎手 薇恩" src="../images/Vayne.png">
									<p>暗夜猎手</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Vayne"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Vayne">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(67,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.67&#39;});">点击购买</a>
										</p></li>
									<li><img alt="邪恶小法师 维迦" src="../images/Veigar.png">
									<p>邪恶小法师</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Veigar"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Veigar">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(45,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.45&#39;});">点击购买</a>
										</p></li>
									<li><img alt="虚空之眼 维克兹" src="../images/Velkoz.png">
									<p>虚空之眼</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Velkoz"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Velkoz">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(161,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.161&#39;});">点击购买</a>
										</p></li>
									<li><img alt="皮城执法官 蔚" src="../images/Vi.png">
									<p>皮城执法官</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Vi"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a href="http://lol.qq.com/web201310/info-defail.shtml?id=Vi">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(254,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.254&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="机械先驱 维克托"
										src="../images/Viktor.png">
									<p>机械先驱</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Viktor"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Viktor">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(112,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.112&#39;});">点击购买</a>
										</p></li>
									<li><img alt="猩红收割者 弗拉基米尔" src="../images/Vladimir.png">
									<p>猩红收割者</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Vladimir"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Vladimir">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(8,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.8&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="雷霆咆哮 沃利贝尔"
										src="../images/Volibear.png">
									<p>雷霆咆哮</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Volibear"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Volibear">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(106,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.106&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="祖安怒兽 沃里克"
										src="../images/Warwick.png">
									<p>祖安怒兽</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Warwick"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Warwick">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(19,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.19&#39;});">点击购买</a>
										</p></li>
									<li><img alt="逆羽 霞" src="../images/Xayah.png">
									<p>逆羽</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Xayah"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Xayah">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(498,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.498&#39;});">点击购买</a>
										</p></li>
									<li><img alt="远古巫灵 泽拉斯" src="../images/Xerath.png">
									<p>远古巫灵</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Xerath"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Xerath">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(101,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.101&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="德邦总管 赵信"
										src="../images/XinZhao.png">
									<p>德邦总管</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=XinZhao"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=XinZhao">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(5,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.5&#39;});">点击购买</a>
										</p></li>
									<li><img alt="疾风剑豪 亚索" src="../images/Yasuo.png">
									<p>疾风剑豪</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Yasuo"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Yasuo">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(157,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.157&#39;});">点击购买</a>
										</p></li>
									<li><img alt="牧魂人 约里克" src="../images/Yorick.png">
									<p>牧魂人</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Yorick"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Yorick">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(83,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.83&#39;});">点击购买</a>
										</p></li>
									<li class="nohero"><img alt="生化魔人 扎克"
										src="../images/Zac.png">
									<p>生化魔人</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Zac"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Zac">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(154,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.154&#39;});">点击购买</a>
										</p></li>
									<li><img alt="影流之主 劫" src="../images/Zed.png">
									<p>影流之主</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Zed"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Zed">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(238,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.238&#39;});">点击购买</a>
										</p></li>
									<li><img alt="爆破鬼才 吉格斯" src="../images/Ziggs.png">
									<p>爆破鬼才</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Ziggs"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Ziggs">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(115,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.115&#39;});">点击购买</a>
										</p></li>
									<li><img alt="时光守护者 基兰" src="../images/Zilean.png">
									<p>时光守护者</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Zilean"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Zilean">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(26,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.26&#39;});">点击购买</a>
										</p></li>
									<li><img alt="荆棘之兴 婕拉" src="../images/Zyra.png">
									<p>荆棘之兴</p>
										<a class="sbg"
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Zyra"><i
											class="commspr commico-search"></i></a>
									<p class="commico-buy">
											<a
												href="http://lol.qq.com/web201310/info-defail.shtml?id=Zyra">查看详情</a><a
												href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo(143,&#39;hero&#39;);pgvSendClick({hottag:&#39;lolweb.personal.buyHero.143&#39;});">点击购买</a>
										</p></li>
								</ul>
							</div>
							<div class="my-skin-main" id="skinBox" style="display: block;">
								<div class="my-skin-box" id="skinBox">
									<ul class="my-hero-list pt0 hero-selected" id="skinList">
										<li id="hero_Aatrox"><a title="暗裔剑魔 亚托克斯"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Aatrox&#39;,&#39;266&#39;,&#39;暗裔剑魔&#39;,&#39;亚托克斯&#39;,&#39;Aatrox.png&#39;);"><img
												alt="暗裔剑魔 亚托克斯" src="../images/Aatrox.png">
											<p>暗裔剑魔</p></a></li>
										<li id="hero_Ahri"><a title="九尾妖狐 阿狸"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Ahri&#39;,&#39;103&#39;,&#39;九尾妖狐&#39;,&#39;阿狸&#39;,&#39;Ahri.png&#39;);"><img
												alt="九尾妖狐 阿狸" src="../images/Ahri.png">
											<p>九尾妖狐</p></a></li>
										<li id="hero_Akali"><a title="暗影之拳 阿卡丽"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Akali&#39;,&#39;84&#39;,&#39;暗影之拳&#39;,&#39;阿卡丽&#39;,&#39;Akali.png&#39;);"><img
												alt="暗影之拳 阿卡丽" src="../images/Akali.png">
											<p>暗影之拳</p></a></li>
										<li id="hero_Alistar"><a title="牛头酋长 阿利斯塔"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Alistar&#39;,&#39;12&#39;,&#39;牛头酋长&#39;,&#39;阿利斯塔&#39;,&#39;Alistar.png&#39;);"><img
												alt="牛头酋长 阿利斯塔" src="../images/Alistar.png">
											<p>牛头酋长</p></a></li>
										<li id="hero_Amumu"><a title="殇之木乃伊 阿木木"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Amumu&#39;,&#39;32&#39;,&#39;殇之木乃伊&#39;,&#39;阿木木&#39;,&#39;Amumu.png&#39;);"><img
												alt="殇之木乃伊 阿木木" src="../images/Amumu.png">
											<p>殇之木乃伊</p></a></li>
										<li id="hero_Anivia"><a title="冰晶凤凰 艾尼维亚"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Anivia&#39;,&#39;34&#39;,&#39;冰晶凤凰&#39;,&#39;艾尼维亚&#39;,&#39;Anivia.png&#39;);"><img
												alt="冰晶凤凰 艾尼维亚" src="../images/Anivia.png">
											<p>冰晶凤凰</p></a></li>
										<li id="hero_Annie"><a title="黑暗之女 安妮"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Annie&#39;,&#39;1&#39;,&#39;黑暗之女&#39;,&#39;安妮&#39;,&#39;Annie.png&#39;);"><img
												alt="黑暗之女 安妮" src="../images/Annie.png">
											<p>黑暗之女</p></a></li>
										<li id="hero_Ashe"><a title="寒冰射手 艾希"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Ashe&#39;,&#39;22&#39;,&#39;寒冰射手&#39;,&#39;艾希&#39;,&#39;Ashe.png&#39;);"><img
												alt="寒冰射手 艾希" src="../images/Ashe.png">
											<p>寒冰射手</p></a></li>
										<li id="hero_AurelionSol"><a title="铸星龙王 奥瑞利安·索尔"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;AurelionSol&#39;,&#39;136&#39;,&#39;铸星龙王&#39;,&#39;奥瑞利安·索尔&#39;,&#39;AurelionSol.png&#39;);"><img
												alt="铸星龙王 奥瑞利安·索尔" src="../images/AurelionSol.png">
											<p>铸星龙王</p></a></li>
										<li id="hero_Azir"><a title="沙漠皇帝 阿兹尔"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Azir&#39;,&#39;268&#39;,&#39;沙漠皇帝&#39;,&#39;阿兹尔&#39;,&#39;Azir.png&#39;);"><img
												alt="沙漠皇帝 阿兹尔" src="../images/Azir.png">
											<p>沙漠皇帝</p></a></li>
										<li id="hero_Bard"><a title="星界游神 巴德"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Bard&#39;,&#39;432&#39;,&#39;星界游神&#39;,&#39;巴德&#39;,&#39;Bard.png&#39;);"><img
												alt="星界游神 巴德" src="../images/Bard.png">
											<p>星界游神</p></a></li>
										<li id="hero_Blitzcrank"><a title="蒸汽机器人 布里茨"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Blitzcrank&#39;,&#39;53&#39;,&#39;蒸汽机器人&#39;,&#39;布里茨&#39;,&#39;Blitzcrank.png&#39;);"><img
												alt="蒸汽机器人 布里茨" src="../images/Blitzcrank.png">
											<p>蒸汽机器人</p></a></li>
										<li id="hero_Brand"><a title="复仇焰魂 布兰德"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Brand&#39;,&#39;63&#39;,&#39;复仇焰魂&#39;,&#39;布兰德&#39;,&#39;Brand.png&#39;);"><img
												alt="复仇焰魂 布兰德" src="../images/Brand.png">
											<p>复仇焰魂</p></a></li>
										<li id="hero_Braum"><a title="弗雷尔卓德之心 布隆"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Braum&#39;,&#39;201&#39;,&#39;弗雷尔卓德之心&#39;,&#39;布隆&#39;,&#39;Braum.png&#39;);"><img
												alt="弗雷尔卓德之心 布隆" src="../images/Braum.png">
											<p>弗雷尔卓德之心</p></a></li>
										<li id="hero_Caitlyn"><a title="皮城女警 凯特琳"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Caitlyn&#39;,&#39;51&#39;,&#39;皮城女警&#39;,&#39;凯特琳&#39;,&#39;Caitlyn.png&#39;);"><img
												alt="皮城女警 凯特琳" src="../images/Caitlyn.png">
											<p>皮城女警</p></a></li>
										<li id="hero_Camille"><a title="青钢影 卡蜜尔"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Camille&#39;,&#39;164&#39;,&#39;青钢影&#39;,&#39;卡蜜尔&#39;,&#39;Camille.png&#39;);"><img
												alt="青钢影 卡蜜尔" src="../images/Camille.png">
											<p>青钢影</p></a></li>
										<li id="hero_Cassiopeia"><a title="魔蛇之拥 卡西奥佩娅"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Cassiopeia&#39;,&#39;69&#39;,&#39;魔蛇之拥&#39;,&#39;卡西奥佩娅&#39;,&#39;Cassiopeia.png&#39;);"><img
												alt="魔蛇之拥 卡西奥佩娅" src="../images/Cassiopeia.png">
											<p>魔蛇之拥</p></a></li>
										<li id="hero_Chogath"><a title="虚空恐惧 科加斯"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Chogath&#39;,&#39;31&#39;,&#39;虚空恐惧&#39;,&#39;科加斯&#39;,&#39;Chogath.png&#39;);"><img
												alt="虚空恐惧 科加斯" src="../images/Chogath.png">
											<p>虚空恐惧</p></a></li>
										<li id="hero_Corki"><a title="英勇投弹手 库奇"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Corki&#39;,&#39;42&#39;,&#39;英勇投弹手&#39;,&#39;库奇&#39;,&#39;Corki.png&#39;);"><img
												alt="英勇投弹手 库奇" src="../images/Corki.png">
											<p>英勇投弹手</p></a></li>
										<li id="hero_Darius"><a title="诺克萨斯之手 德莱厄斯"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Darius&#39;,&#39;122&#39;,&#39;诺克萨斯之手&#39;,&#39;德莱厄斯&#39;,&#39;Darius.png&#39;);"><img
												alt="诺克萨斯之手 德莱厄斯" src="../images/Darius.png">
											<p>诺克萨斯之手</p></a></li>
										<li id="hero_Diana"><a title="皎月女神 黛安娜"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Diana&#39;,&#39;131&#39;,&#39;皎月女神&#39;,&#39;黛安娜&#39;,&#39;Diana.png&#39;);"><img
												alt="皎月女神 黛安娜" src="../images/Diana.png">
											<p>皎月女神</p></a></li>
										<li id="hero_Draven"><a title="荣耀行刑官 德莱文"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Draven&#39;,&#39;119&#39;,&#39;荣耀行刑官&#39;,&#39;德莱文&#39;,&#39;Draven.png&#39;);"><img
												alt="荣耀行刑官 德莱文" src="../images/Draven.png">
											<p>荣耀行刑官</p></a></li>
										<li id="hero_DrMundo"><a title="祖安狂人 蒙多医生"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;DrMundo&#39;,&#39;36&#39;,&#39;祖安狂人&#39;,&#39;蒙多医生&#39;,&#39;DrMundo.png&#39;);"><img
												alt="祖安狂人 蒙多医生" src="../images/DrMundo.png">
											<p>祖安狂人</p></a></li>
										<li id="hero_Ekko"><a title="时间刺客 艾克"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Ekko&#39;,&#39;245&#39;,&#39;时间刺客&#39;,&#39;艾克&#39;,&#39;Ekko.png&#39;);"><img
												alt="时间刺客 艾克" src="../images/Ekko.png">
											<p>时间刺客</p></a></li>
										<li id="hero_Elise"><a title="蜘蛛女皇 伊莉丝"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Elise&#39;,&#39;60&#39;,&#39;蜘蛛女皇&#39;,&#39;伊莉丝&#39;,&#39;Elise.png&#39;);"><img
												alt="蜘蛛女皇 伊莉丝" src="../images/Elise.png">
											<p>蜘蛛女皇</p></a></li>
										<li id="hero_Evelynn"><a title="寡妇制造者 伊芙琳"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Evelynn&#39;,&#39;28&#39;,&#39;寡妇制造者&#39;,&#39;伊芙琳&#39;,&#39;Evelynn.png&#39;);"><img
												alt="寡妇制造者 伊芙琳" src="../images/Evelynn.png">
											<p>寡妇制造者</p></a></li>
										<li id="hero_Ezreal"><a title="探险家 伊泽瑞尔"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Ezreal&#39;,&#39;81&#39;,&#39;探险家&#39;,&#39;伊泽瑞尔&#39;,&#39;Ezreal.png&#39;);"><img
												alt="探险家 伊泽瑞尔" src="../images/Ezreal.png">
											<p>探险家</p></a></li>
										<li id="hero_Fiddlesticks"><a title="末日使者 费德提克"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Fiddlesticks&#39;,&#39;9&#39;,&#39;末日使者&#39;,&#39;费德提克&#39;,&#39;Fiddlesticks.png&#39;);"><img
												alt="末日使者 费德提克" src="../images/Fiddlesticks.png">
											<p>末日使者</p></a></li>
										<li id="hero_Fiora"><a title="无双剑姬 菲奥娜"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Fiora&#39;,&#39;114&#39;,&#39;无双剑姬&#39;,&#39;菲奥娜&#39;,&#39;Fiora.png&#39;);"><img
												alt="无双剑姬 菲奥娜" src="../images/Fiora.png">
											<p>无双剑姬</p></a></li>
										<li id="hero_Fizz"><a title="潮汐海灵 菲兹"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Fizz&#39;,&#39;105&#39;,&#39;潮汐海灵&#39;,&#39;菲兹&#39;,&#39;Fizz.png&#39;);"><img
												alt="潮汐海灵 菲兹" src="../images/Fizz.png">
											<p>潮汐海灵</p></a></li>
										<li id="hero_Galio"><a title="正义巨像 加里奥"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Galio&#39;,&#39;3&#39;,&#39;正义巨像&#39;,&#39;加里奥&#39;,&#39;Galio.png&#39;);"><img
												alt="正义巨像 加里奥" src="../images/Galio.png">
											<p>正义巨像</p></a></li>
										<li id="hero_Gangplank"><a title="海洋之灾 普朗克"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Gangplank&#39;,&#39;41&#39;,&#39;海洋之灾&#39;,&#39;普朗克&#39;,&#39;Gangplank.png&#39;);"><img
												alt="海洋之灾 普朗克" src="../images/Gangplank.png">
											<p>海洋之灾</p></a></li>
										<li id="hero_Garen"><a title="德玛西亚之力 盖伦"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Garen&#39;,&#39;86&#39;,&#39;德玛西亚之力&#39;,&#39;盖伦&#39;,&#39;Garen.png&#39;);"><img
												alt="德玛西亚之力 盖伦" src="../images/Garen.png">
											<p>德玛西亚之力</p></a></li>
										<li id="hero_Gnar"><a title="迷失之牙 纳尔"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Gnar&#39;,&#39;150&#39;,&#39;迷失之牙&#39;,&#39;纳尔&#39;,&#39;Gnar.png&#39;);"><img
												alt="迷失之牙 纳尔" src="../images/Gnar.png">
											<p>迷失之牙</p></a></li>
										<li id="hero_Gragas"><a title="酒桶 古拉加斯"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Gragas&#39;,&#39;79&#39;,&#39;酒桶&#39;,&#39;古拉加斯&#39;,&#39;Gragas.png&#39;);"><img
												alt="酒桶 古拉加斯" src="../images/Gragas.png">
											<p>酒桶</p></a></li>
										<li id="hero_Graves"><a title="法外狂徒 格雷福斯"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Graves&#39;,&#39;104&#39;,&#39;法外狂徒&#39;,&#39;格雷福斯&#39;,&#39;Graves.png&#39;);"><img
												alt="法外狂徒 格雷福斯" src="../images/Graves.png">
											<p>法外狂徒</p></a></li>
										<li id="hero_Hecarim"><a title="战争之影 赫卡里姆"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Hecarim&#39;,&#39;120&#39;,&#39;战争之影&#39;,&#39;赫卡里姆&#39;,&#39;Hecarim.png&#39;);"><img
												alt="战争之影 赫卡里姆" src="../images/Hecarim.png">
											<p>战争之影</p></a></li>
										<li id="hero_Heimerdinger"><a title="大发明家 黑默丁格"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Heimerdinger&#39;,&#39;74&#39;,&#39;大发明家&#39;,&#39;黑默丁格&#39;,&#39;Heimerdinger.png&#39;);"><img
												alt="大发明家 黑默丁格" src="../images/Heimerdinger.png">
											<p>大发明家</p></a></li>
										<li id="hero_Illaoi"><a title="海兽祭司 俄洛伊"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Illaoi&#39;,&#39;420&#39;,&#39;海兽祭司&#39;,&#39;俄洛伊&#39;,&#39;Illaoi.png&#39;);"><img
												alt="海兽祭司 俄洛伊" src="../images/Illaoi.png">
											<p>海兽祭司</p></a></li>
										<li id="hero_Irelia"><a title="刀锋意志 艾瑞莉娅"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Irelia&#39;,&#39;39&#39;,&#39;刀锋意志&#39;,&#39;艾瑞莉娅&#39;,&#39;Irelia.png&#39;);"><img
												alt="刀锋意志 艾瑞莉娅" src="../images/Irelia.png">
											<p>刀锋意志</p></a></li>
										<li id="hero_Ivern"><a title="翠神 艾翁"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Ivern&#39;,&#39;427&#39;,&#39;翠神&#39;,&#39;艾翁&#39;,&#39;Ivern.png&#39;);"><img
												alt="翠神 艾翁" src="../images/Ivern.png">
											<p>翠神</p></a></li>
										<li id="hero_Janna"><a title="风暴之怒 迦娜"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Janna&#39;,&#39;40&#39;,&#39;风暴之怒&#39;,&#39;迦娜&#39;,&#39;Janna.png&#39;);"><img
												alt="风暴之怒 迦娜" src="../images/Janna.png">
											<p>风暴之怒</p></a></li>
										<li id="hero_JarvanIV"><a title="德玛西亚皇子 嘉文四世"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;JarvanIV&#39;,&#39;59&#39;,&#39;德玛西亚皇子&#39;,&#39;嘉文四世&#39;,&#39;JarvanIV.png&#39;);"><img
												alt="德玛西亚皇子 嘉文四世" src="../images/JarvanIV.png">
											<p>德玛西亚皇子</p></a></li>
										<li id="hero_Jax"><a title="武器大师 贾克斯"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Jax&#39;,&#39;24&#39;,&#39;武器大师&#39;,&#39;贾克斯&#39;,&#39;Jax.png&#39;);"><img
												alt="武器大师 贾克斯" src="../images/Jax.png">
											<p>武器大师</p></a></li>
										<li id="hero_Jayce"><a title="未来守护者 杰斯"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Jayce&#39;,&#39;126&#39;,&#39;未来守护者&#39;,&#39;杰斯&#39;,&#39;Jayce.png&#39;);"><img
												alt="未来守护者 杰斯" src="../images/Jayce.png">
											<p>未来守护者</p></a></li>
										<li id="hero_Jhin"><a title="戏命师 烬"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Jhin&#39;,&#39;202&#39;,&#39;戏命师&#39;,&#39;烬&#39;,&#39;Jhin.png&#39;);"><img
												alt="戏命师 烬" src="../images/Jhin.png">
											<p>戏命师</p></a></li>
										<li id="hero_Jinx"><a title="暴走萝莉 金克丝"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Jinx&#39;,&#39;222&#39;,&#39;暴走萝莉&#39;,&#39;金克丝&#39;,&#39;Jinx.png&#39;);"><img
												alt="暴走萝莉 金克丝" src="../images/Jinx.png">
											<p>暴走萝莉</p></a></li>
										<li id="hero_Kalista"><a title="复仇之矛 卡莉丝塔"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Kalista&#39;,&#39;429&#39;,&#39;复仇之矛&#39;,&#39;卡莉丝塔&#39;,&#39;Kalista.png&#39;);"><img
												alt="复仇之矛 卡莉丝塔" src="../images/Kalista.png">
											<p>复仇之矛</p></a></li>
										<li id="hero_Karma"><a title="天启者 卡尔玛"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Karma&#39;,&#39;43&#39;,&#39;天启者&#39;,&#39;卡尔玛&#39;,&#39;Karma.png&#39;);"><img
												alt="天启者 卡尔玛" src="../images/Karma.png">
											<p>天启者</p></a></li>
										<li id="hero_Karthus"><a title="死亡颂唱者 卡尔萨斯"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Karthus&#39;,&#39;30&#39;,&#39;死亡颂唱者&#39;,&#39;卡尔萨斯&#39;,&#39;Karthus.png&#39;);"><img
												alt="死亡颂唱者 卡尔萨斯" src="../images/Karthus.png">
											<p>死亡颂唱者</p></a></li>
										<li id="hero_Kassadin"><a title="虚空行者 卡萨丁"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Kassadin&#39;,&#39;38&#39;,&#39;虚空行者&#39;,&#39;卡萨丁&#39;,&#39;Kassadin.png&#39;);"><img
												alt="虚空行者 卡萨丁" src="../images/Kassadin.png">
											<p>虚空行者</p></a></li>
										<li id="hero_Katarina"><a title="不祥之刃 卡特琳娜"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Katarina&#39;,&#39;55&#39;,&#39;不祥之刃&#39;,&#39;卡特琳娜&#39;,&#39;Katarina.png&#39;);"><img
												alt="不祥之刃 卡特琳娜" src="../images/Katarina.png">
											<p>不祥之刃</p></a></li>
										<li id="hero_Kayle"><a title="审判天使 凯尔"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Kayle&#39;,&#39;10&#39;,&#39;审判天使&#39;,&#39;凯尔&#39;,&#39;Kayle.png&#39;);"><img
												alt="审判天使 凯尔" src="../images/Kayle.png">
											<p>审判天使</p></a></li>
										<li id="hero_Kayn"><a title="影流之镰 凯隐"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Kayn&#39;,&#39;141&#39;,&#39;影流之镰&#39;,&#39;凯隐&#39;,&#39;Kayn.png&#39;);"><img
												alt="影流之镰 凯隐" src="../images/Kayn.png">
											<p>影流之镰</p></a></li>
										<li id="hero_Kennen"><a title="狂暴之心 凯南"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Kennen&#39;,&#39;85&#39;,&#39;狂暴之心&#39;,&#39;凯南&#39;,&#39;Kennen.png&#39;);"><img
												alt="狂暴之心 凯南" src="../images/Kennen.png">
											<p>狂暴之心</p></a></li>
										<li id="hero_Khazix"><a title="虚空掠夺者 卡兹克"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Khazix&#39;,&#39;121&#39;,&#39;虚空掠夺者&#39;,&#39;卡兹克&#39;,&#39;Khazix.png&#39;);"><img
												alt="虚空掠夺者 卡兹克" src="../images/Khazix.png">
											<p>虚空掠夺者</p></a></li>
										<li id="hero_Kindred"><a title="永猎双子 千珏"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Kindred&#39;,&#39;203&#39;,&#39;永猎双子&#39;,&#39;千珏&#39;,&#39;Kindred.png&#39;);"><img
												alt="永猎双子 千珏" src="../images/Kindred.png">
											<p>永猎双子</p></a></li>
										<li id="hero_Kled"><a title="暴怒骑士 克烈"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Kled&#39;,&#39;240&#39;,&#39;暴怒骑士&#39;,&#39;克烈&#39;,&#39;Kled.png&#39;);"><img
												alt="暴怒骑士 克烈" src="../images/Kled.png">
											<p>暴怒骑士</p></a></li>
										<li id="hero_KogMaw"><a title="深渊巨口 克格莫"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;KogMaw&#39;,&#39;96&#39;,&#39;深渊巨口&#39;,&#39;克格莫&#39;,&#39;KogMaw.png&#39;);"><img
												alt="深渊巨口 克格莫" src="../images/KogMaw.png">
											<p>深渊巨口</p></a></li>
										<li id="hero_Leblanc"><a title="诡术妖姬 乐芙兰"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Leblanc&#39;,&#39;7&#39;,&#39;诡术妖姬&#39;,&#39;乐芙兰&#39;,&#39;Leblanc.png&#39;);"><img
												alt="诡术妖姬 乐芙兰" src="../images/Leblanc.png">
											<p>诡术妖姬</p></a></li>
										<li id="hero_LeeSin"><a title="盲僧 李青"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;LeeSin&#39;,&#39;64&#39;,&#39;盲僧&#39;,&#39;李青&#39;,&#39;LeeSin.png&#39;);"><img
												alt="盲僧 李青" src="../images/LeeSin.png">
											<p>盲僧</p></a></li>
										<li id="hero_Leona"><a title="曙光女神 蕾欧娜"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Leona&#39;,&#39;89&#39;,&#39;曙光女神&#39;,&#39;蕾欧娜&#39;,&#39;Leona.png&#39;);"><img
												alt="曙光女神 蕾欧娜" src="../images/Leona.png">
											<p>曙光女神</p></a></li>
										<li id="hero_Lissandra"><a title="冰霜女巫 丽桑卓"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Lissandra&#39;,&#39;127&#39;,&#39;冰霜女巫&#39;,&#39;丽桑卓&#39;,&#39;Lissandra.png&#39;);"><img
												alt="冰霜女巫 丽桑卓" src="../images/Lissandra.png">
											<p>冰霜女巫</p></a></li>
										<li id="hero_Lucian"><a title="圣枪游侠 卢锡安"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Lucian&#39;,&#39;236&#39;,&#39;圣枪游侠&#39;,&#39;卢锡安&#39;,&#39;Lucian.png&#39;);"><img
												alt="圣枪游侠 卢锡安" src="../images/Lucian.png">
											<p>圣枪游侠</p></a></li>
										<li id="hero_Lulu"><a title="仙灵女巫 璐璐"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Lulu&#39;,&#39;117&#39;,&#39;仙灵女巫&#39;,&#39;璐璐&#39;,&#39;Lulu.png&#39;);"><img
												alt="仙灵女巫 璐璐" src="../images/Lulu.png">
											<p>仙灵女巫</p></a></li>
										<li id="hero_Lux"><a title="光辉女郎 拉克丝"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Lux&#39;,&#39;99&#39;,&#39;光辉女郎&#39;,&#39;拉克丝&#39;,&#39;Lux.png&#39;);"><img
												alt="光辉女郎 拉克丝" src="../images/Lux.png">
											<p>光辉女郎</p></a></li>
										<li id="hero_Malphite"><a title="熔岩巨兽 墨菲特"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Malphite&#39;,&#39;54&#39;,&#39;熔岩巨兽&#39;,&#39;墨菲特&#39;,&#39;Malphite.png&#39;);"><img
												alt="熔岩巨兽 墨菲特" src="../images/Malphite.png">
											<p>熔岩巨兽</p></a></li>
										<li id="hero_Malzahar"><a title="虚空先知 玛尔扎哈"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Malzahar&#39;,&#39;90&#39;,&#39;虚空先知&#39;,&#39;玛尔扎哈&#39;,&#39;Malzahar.png&#39;);"><img
												alt="虚空先知 玛尔扎哈" src="../images/Malzahar.png">
											<p>虚空先知</p></a></li>
										<li id="hero_Maokai"><a title="扭曲树精 茂凯"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Maokai&#39;,&#39;57&#39;,&#39;扭曲树精&#39;,&#39;茂凯&#39;,&#39;Maokai.png&#39;);"><img
												alt="扭曲树精 茂凯" src="../images/Maokai.png">
											<p>扭曲树精</p></a></li>
										<li id="hero_MasterYi"><a title="无极剑圣 易"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;MasterYi&#39;,&#39;11&#39;,&#39;无极剑圣&#39;,&#39;易&#39;,&#39;MasterYi.png&#39;);"><img
												alt="无极剑圣 易" src="../images/MasterYi.png">
											<p>无极剑圣</p></a></li>
										<li id="hero_MissFortune"><a title="赏金猎人 厄运小姐"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;MissFortune&#39;,&#39;21&#39;,&#39;赏金猎人&#39;,&#39;厄运小姐&#39;,&#39;MissFortune.png&#39;);"><img
												alt="赏金猎人 厄运小姐" src="../images/MissFortune.png">
											<p>赏金猎人</p></a></li>
										<li id="hero_MonkeyKing"><a title="齐天大圣 孙悟空"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;MonkeyKing&#39;,&#39;62&#39;,&#39;齐天大圣&#39;,&#39;孙悟空&#39;,&#39;MonkeyKing.png&#39;);"><img
												alt="齐天大圣 孙悟空" src="../images/MonkeyKing.png">
											<p>齐天大圣</p></a></li>
										<li id="hero_Mordekaiser"><a title="铁铠冥魂 莫德凯撒"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Mordekaiser&#39;,&#39;82&#39;,&#39;铁铠冥魂&#39;,&#39;莫德凯撒&#39;,&#39;Mordekaiser.png&#39;);"><img
												alt="铁铠冥魂 莫德凯撒" src="../images/Mordekaiser.png">
											<p>铁铠冥魂</p></a></li>
										<li id="hero_Morgana"><a title="堕落天使 莫甘娜"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Morgana&#39;,&#39;25&#39;,&#39;堕落天使&#39;,&#39;莫甘娜&#39;,&#39;Morgana.png&#39;);"><img
												alt="堕落天使 莫甘娜" src="../images/Morgana.png">
											<p>堕落天使</p></a></li>
										<li id="hero_Nami"><a title="唤潮鲛姬 娜美"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Nami&#39;,&#39;267&#39;,&#39;唤潮鲛姬&#39;,&#39;娜美&#39;,&#39;Nami.png&#39;);"><img
												alt="唤潮鲛姬 娜美" src="../images/Nami.png">
											<p>唤潮鲛姬</p></a></li>
										<li id="hero_Nasus"><a title="沙漠死神 内瑟斯"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Nasus&#39;,&#39;75&#39;,&#39;沙漠死神&#39;,&#39;内瑟斯&#39;,&#39;Nasus.png&#39;);"><img
												alt="沙漠死神 内瑟斯" src="../images/Nasus.png">
											<p>沙漠死神</p></a></li>
										<li id="hero_Nautilus"><a title="深海泰坦 诺提勒斯"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Nautilus&#39;,&#39;111&#39;,&#39;深海泰坦&#39;,&#39;诺提勒斯&#39;,&#39;Nautilus.png&#39;);"><img
												alt="深海泰坦 诺提勒斯" src="../images/Nautilus.png">
											<p>深海泰坦</p></a></li>
										<li id="hero_Nidalee"><a title="狂野女猎手 奈德丽"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Nidalee&#39;,&#39;76&#39;,&#39;狂野女猎手&#39;,&#39;奈德丽&#39;,&#39;Nidalee.png&#39;);"><img
												alt="狂野女猎手 奈德丽" src="../images/Nidalee.png">
											<p>狂野女猎手</p></a></li>
										<li id="hero_Nocturne"><a title="永恒梦魇 魔腾"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Nocturne&#39;,&#39;56&#39;,&#39;永恒梦魇&#39;,&#39;魔腾&#39;,&#39;Nocturne.png&#39;);"><img
												alt="永恒梦魇 魔腾" src="../images/Nocturne.png">
											<p>永恒梦魇</p></a></li>
										<li id="hero_Nunu"><a title="雪人骑士 努努"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Nunu&#39;,&#39;20&#39;,&#39;雪人骑士&#39;,&#39;努努&#39;,&#39;Nunu.png&#39;);"><img
												alt="雪人骑士 努努" src="../images/Nunu.png">
											<p>雪人骑士</p></a></li>
										<li id="hero_Olaf"><a title="狂战士 奥拉夫"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Olaf&#39;,&#39;2&#39;,&#39;狂战士&#39;,&#39;奥拉夫&#39;,&#39;Olaf.png&#39;);"><img
												alt="狂战士 奥拉夫" src="../images/Olaf.png">
											<p>狂战士</p></a></li>
										<li id="hero_Orianna"><a title="发条魔灵 奥莉安娜"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Orianna&#39;,&#39;61&#39;,&#39;发条魔灵&#39;,&#39;奥莉安娜&#39;,&#39;Orianna.png&#39;);"><img
												alt="发条魔灵 奥莉安娜" src="../images/Orianna.png">
											<p>发条魔灵</p></a></li>
										<li id="hero_Ornn"><a title="山隐之焰 奥恩"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Ornn&#39;,&#39;516&#39;,&#39;山隐之焰&#39;,&#39;奥恩&#39;,&#39;Ornn.png&#39;);"><img
												alt="山隐之焰 奥恩" src="../images/Ornn.png">
											<p>山隐之焰</p></a></li>
										<li id="hero_Pantheon"><a title="战争之王 潘森"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Pantheon&#39;,&#39;80&#39;,&#39;战争之王&#39;,&#39;潘森&#39;,&#39;Pantheon.png&#39;);"><img
												alt="战争之王 潘森" src="../images/Pantheon.png">
											<p>战争之王</p></a></li>
										<li id="hero_Poppy"><a title="圣锤之毅 波比"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Poppy&#39;,&#39;78&#39;,&#39;圣锤之毅&#39;,&#39;波比&#39;,&#39;Poppy.png&#39;);"><img
												alt="圣锤之毅 波比" src="../images/Poppy.png">
											<p>圣锤之毅</p></a></li>
										<li id="hero_Quinn"><a title="德玛西亚之翼 奎因"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Quinn&#39;,&#39;133&#39;,&#39;德玛西亚之翼&#39;,&#39;奎因&#39;,&#39;Quinn.png&#39;);"><img
												alt="德玛西亚之翼 奎因" src="../images/Quinn.png">
											<p>德玛西亚之翼</p></a></li>
										<li id="hero_Rakan"><a title="幻翎 洛"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Rakan&#39;,&#39;497&#39;,&#39;幻翎&#39;,&#39;洛&#39;,&#39;Rakan.png&#39;);"><img
												alt="幻翎 洛" src="../images/Rakan.png">
											<p>幻翎</p></a></li>
										<li id="hero_Rammus"><a title="披甲龙龟 拉莫斯"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Rammus&#39;,&#39;33&#39;,&#39;披甲龙龟&#39;,&#39;拉莫斯&#39;,&#39;Rammus.png&#39;);"><img
												alt="披甲龙龟 拉莫斯" src="../images/Rammus.png">
											<p>披甲龙龟</p></a></li>
										<li id="hero_RekSai"><a title="虚空遁地兽 雷克塞"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;RekSai&#39;,&#39;421&#39;,&#39;虚空遁地兽&#39;,&#39;雷克塞&#39;,&#39;RekSai.png&#39;);"><img
												alt="虚空遁地兽 雷克塞" src="../images/RekSai.png">
											<p>虚空遁地兽</p></a></li>
										<li id="hero_Renekton"><a title="荒漠屠夫 雷克顿"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Renekton&#39;,&#39;58&#39;,&#39;荒漠屠夫&#39;,&#39;雷克顿&#39;,&#39;Renekton.png&#39;);"><img
												alt="荒漠屠夫 雷克顿" src="../images/Renekton.png">
											<p>荒漠屠夫</p></a></li>
										<li id="hero_Rengar"><a title="傲之追猎者 雷恩加尔"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Rengar&#39;,&#39;107&#39;,&#39;傲之追猎者&#39;,&#39;雷恩加尔&#39;,&#39;Rengar.png&#39;);"><img
												alt="傲之追猎者 雷恩加尔" src="../images/Rengar.png">
											<p>傲之追猎者</p></a></li>
										<li id="hero_Riven"><a title="放逐之刃 锐雯"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Riven&#39;,&#39;92&#39;,&#39;放逐之刃&#39;,&#39;锐雯&#39;,&#39;Riven.png&#39;);"><img
												alt="放逐之刃 锐雯" src="../images/Riven.png">
											<p>放逐之刃</p></a></li>
										<li id="hero_Rumble"><a title="机械公敌 兰博"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Rumble&#39;,&#39;68&#39;,&#39;机械公敌&#39;,&#39;兰博&#39;,&#39;Rumble.png&#39;);"><img
												alt="机械公敌 兰博" src="../images/Rumble.png">
											<p>机械公敌</p></a></li>
										<li id="hero_Ryze"><a title="符文法师 瑞兹"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Ryze&#39;,&#39;13&#39;,&#39;符文法师&#39;,&#39;瑞兹&#39;,&#39;Ryze.png&#39;);"><img
												alt="符文法师 瑞兹" src="../images/Ryze.png">
											<p>符文法师</p></a></li>
										<li id="hero_Sejuani"><a title="北地之怒 瑟庄妮"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Sejuani&#39;,&#39;113&#39;,&#39;北地之怒&#39;,&#39;瑟庄妮&#39;,&#39;Sejuani.png&#39;);"><img
												alt="北地之怒 瑟庄妮" src="../images/Sejuani.png">
											<p>北地之怒</p></a></li>
										<li id="hero_Shaco"><a title="恶魔小丑 萨科"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Shaco&#39;,&#39;35&#39;,&#39;恶魔小丑&#39;,&#39;萨科&#39;,&#39;Shaco.png&#39;);"><img
												alt="恶魔小丑 萨科" src="../images/Shaco.png">
											<p>恶魔小丑</p></a></li>
										<li id="hero_Shen"><a title="暮光之眼 慎"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Shen&#39;,&#39;98&#39;,&#39;暮光之眼&#39;,&#39;慎&#39;,&#39;Shen.png&#39;);"><img
												alt="暮光之眼 慎" src="../images/Shen.png">
											<p>暮光之眼</p></a></li>
										<li id="hero_Shyvana"><a title="龙血武姬 希瓦娜"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Shyvana&#39;,&#39;102&#39;,&#39;龙血武姬&#39;,&#39;希瓦娜&#39;,&#39;Shyvana.png&#39;);"><img
												alt="龙血武姬 希瓦娜" src="../images/Shyvana.png">
											<p>龙血武姬</p></a></li>
										<li id="hero_Singed"><a title="炼金术士 辛吉德"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Singed&#39;,&#39;27&#39;,&#39;炼金术士&#39;,&#39;辛吉德&#39;,&#39;Singed.png&#39;);"><img
												alt="炼金术士 辛吉德" src="../images/Singed.png">
											<p>炼金术士</p></a></li>
										<li id="hero_Sion"><a title="亡灵战神 赛恩"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Sion&#39;,&#39;14&#39;,&#39;亡灵战神&#39;,&#39;赛恩&#39;,&#39;Sion.png&#39;);"><img
												alt="亡灵战神 赛恩" src="../images/Sion.png">
											<p>亡灵战神</p></a></li>
										<li id="hero_Sivir"><a title="战争女神 希维尔"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Sivir&#39;,&#39;15&#39;,&#39;战争女神&#39;,&#39;希维尔&#39;,&#39;Sivir.png&#39;);"><img
												alt="战争女神 希维尔" src="../images/Sivir.png">
											<p>战争女神</p></a></li>
										<li id="hero_Skarner"><a title="水晶先锋 斯卡纳"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Skarner&#39;,&#39;72&#39;,&#39;水晶先锋&#39;,&#39;斯卡纳&#39;,&#39;Skarner.png&#39;);"><img
												alt="水晶先锋 斯卡纳" src="../images/Skarner.png">
											<p>水晶先锋</p></a></li>
										<li id="hero_Sona"><a title="琴瑟仙女 娑娜"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Sona&#39;,&#39;37&#39;,&#39;琴瑟仙女&#39;,&#39;娑娜&#39;,&#39;Sona.png&#39;);"><img
												alt="琴瑟仙女 娑娜" src="../images/Sona.png">
											<p>琴瑟仙女</p></a></li>
										<li id="hero_Soraka"><a title="众星之子 索拉卡"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Soraka&#39;,&#39;16&#39;,&#39;众星之子&#39;,&#39;索拉卡&#39;,&#39;Soraka.png&#39;);"><img
												alt="众星之子 索拉卡" src="../images/Soraka.png">
											<p>众星之子</p></a></li>
										<li id="hero_Swain"><a title="策士统领 斯维因"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Swain&#39;,&#39;50&#39;,&#39;策士统领&#39;,&#39;斯维因&#39;,&#39;Swain.png&#39;);"><img
												alt="策士统领 斯维因" src="../images/Swain.png">
											<p>策士统领</p></a></li>
										<li id="hero_Syndra"><a title="暗黑元首 辛德拉"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Syndra&#39;,&#39;134&#39;,&#39;暗黑元首&#39;,&#39;辛德拉&#39;,&#39;Syndra.png&#39;);"><img
												alt="暗黑元首 辛德拉" src="../images/Syndra.png">
											<p>暗黑元首</p></a></li>
										<li id="hero_TahmKench"><a title="河流之王 塔姆"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;TahmKench&#39;,&#39;223&#39;,&#39;河流之王&#39;,&#39;塔姆&#39;,&#39;TahmKench.png&#39;);"><img
												alt="河流之王 塔姆" src="../images/TahmKench.png">
											<p>河流之王</p></a></li>
										<li id="hero_Taliyah"><a title="岩雀 塔莉垭"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Taliyah&#39;,&#39;163&#39;,&#39;岩雀&#39;,&#39;塔莉垭&#39;,&#39;Taliyah.png&#39;);"><img
												alt="岩雀 塔莉垭" src="../images/Taliyah.png">
											<p>岩雀</p></a></li>
										<li id="hero_Talon"><a title="刀锋之影 泰隆"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Talon&#39;,&#39;91&#39;,&#39;刀锋之影&#39;,&#39;泰隆&#39;,&#39;Talon.png&#39;);"><img
												alt="刀锋之影 泰隆" src="../images/Talon.png">
											<p>刀锋之影</p></a></li>
										<li id="hero_Taric"><a title="瓦洛兰之盾 塔里克"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Taric&#39;,&#39;44&#39;,&#39;瓦洛兰之盾&#39;,&#39;塔里克&#39;,&#39;Taric.png&#39;);"><img
												alt="瓦洛兰之盾 塔里克" src="../images/Taric.png">
											<p>瓦洛兰之盾</p></a></li>
										<li id="hero_Teemo"><a title="迅捷斥候 提莫"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Teemo&#39;,&#39;17&#39;,&#39;迅捷斥候&#39;,&#39;提莫&#39;,&#39;Teemo.png&#39;);"><img
												alt="迅捷斥候 提莫" src="../images/Teemo.png">
											<p>迅捷斥候</p></a></li>
										<li id="hero_Thresh"><a title="魂锁典狱长 锤石"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Thresh&#39;,&#39;412&#39;,&#39;魂锁典狱长&#39;,&#39;锤石&#39;,&#39;Thresh.png&#39;);"><img
												alt="魂锁典狱长 锤石" src="../images/Thresh.png">
											<p>魂锁典狱长</p></a></li>
										<li id="hero_Tristana"><a title="麦林炮手 崔丝塔娜"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Tristana&#39;,&#39;18&#39;,&#39;麦林炮手&#39;,&#39;崔丝塔娜&#39;,&#39;Tristana.png&#39;);"><img
												alt="麦林炮手 崔丝塔娜" src="../images/Tristana.png">
											<p>麦林炮手</p></a></li>
										<li id="hero_Trundle"><a title="巨魔之王 特朗德尔"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Trundle&#39;,&#39;48&#39;,&#39;巨魔之王&#39;,&#39;特朗德尔&#39;,&#39;Trundle.png&#39;);"><img
												alt="巨魔之王 特朗德尔" src="../images/Trundle.png">
											<p>巨魔之王</p></a></li>
										<li id="hero_Tryndamere"><a title="蛮族之王 泰达米尔"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Tryndamere&#39;,&#39;23&#39;,&#39;蛮族之王&#39;,&#39;泰达米尔&#39;,&#39;Tryndamere.png&#39;);"><img
												alt="蛮族之王 泰达米尔" src="../images/Tryndamere.png">
											<p>蛮族之王</p></a></li>
										<li id="hero_TwistedFate"><a title="卡牌大师 崔斯特"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;TwistedFate&#39;,&#39;4&#39;,&#39;卡牌大师&#39;,&#39;崔斯特&#39;,&#39;TwistedFate.png&#39;);"><img
												alt="卡牌大师 崔斯特" src="../images/TwistedFate.png">
											<p>卡牌大师</p></a></li>
										<li id="hero_Twitch"><a title="瘟疫之源 图奇"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Twitch&#39;,&#39;29&#39;,&#39;瘟疫之源&#39;,&#39;图奇&#39;,&#39;Twitch.png&#39;);"><img
												alt="瘟疫之源 图奇" src="../images/Twitch.png">
											<p>瘟疫之源</p></a></li>
										<li id="hero_Udyr"><a title="兽灵行者 乌迪尔"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Udyr&#39;,&#39;77&#39;,&#39;兽灵行者&#39;,&#39;乌迪尔&#39;,&#39;Udyr.png&#39;);"><img
												alt="兽灵行者 乌迪尔" src="../images/Udyr.png">
											<p>兽灵行者</p></a></li>
										<li id="hero_Urgot"><a title="无畏战车 厄加特"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Urgot&#39;,&#39;6&#39;,&#39;无畏战车&#39;,&#39;厄加特&#39;,&#39;Urgot.png&#39;);"><img
												alt="无畏战车 厄加特" src="../images/Urgot.png">
											<p>无畏战车</p></a></li>
										<li id="hero_Varus"><a title="惩戒之箭 韦鲁斯"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Varus&#39;,&#39;110&#39;,&#39;惩戒之箭&#39;,&#39;韦鲁斯&#39;,&#39;Varus.png&#39;);"><img
												alt="惩戒之箭 韦鲁斯" src="../images/Varus.png">
											<p>惩戒之箭</p></a></li>
										<li id="hero_Vayne"><a title="暗夜猎手 薇恩"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Vayne&#39;,&#39;67&#39;,&#39;暗夜猎手&#39;,&#39;薇恩&#39;,&#39;Vayne.png&#39;);"><img
												alt="暗夜猎手 薇恩" src="../images/Vayne.png">
											<p>暗夜猎手</p></a></li>
										<li id="hero_Veigar"><a title="邪恶小法师 维迦"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Veigar&#39;,&#39;45&#39;,&#39;邪恶小法师&#39;,&#39;维迦&#39;,&#39;Veigar.png&#39;);"><img
												alt="邪恶小法师 维迦" src="../images/Veigar.png">
											<p>邪恶小法师</p></a></li>
										<li id="hero_Velkoz"><a title="虚空之眼 维克兹"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Velkoz&#39;,&#39;161&#39;,&#39;虚空之眼&#39;,&#39;维克兹&#39;,&#39;Velkoz.png&#39;);"><img
												alt="虚空之眼 维克兹" src="../images/Velkoz.png">
											<p>虚空之眼</p></a></li>
										<li id="hero_Vi"><a title="皮城执法官 蔚"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Vi&#39;,&#39;254&#39;,&#39;皮城执法官&#39;,&#39;蔚&#39;,&#39;Vi.png&#39;);"><img
												alt="皮城执法官 蔚" src="../images/Vi.png">
											<p>皮城执法官</p></a></li>
										<li id="hero_Viktor"><a title="机械先驱 维克托"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Viktor&#39;,&#39;112&#39;,&#39;机械先驱&#39;,&#39;维克托&#39;,&#39;Viktor.png&#39;);"><img
												alt="机械先驱 维克托" src="../images/Viktor.png">
											<p>机械先驱</p></a></li>
										<li id="hero_Vladimir"><a title="猩红收割者 弗拉基米尔"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Vladimir&#39;,&#39;8&#39;,&#39;猩红收割者&#39;,&#39;弗拉基米尔&#39;,&#39;Vladimir.png&#39;);"><img
												alt="猩红收割者 弗拉基米尔" src="../images/Vladimir.png">
											<p>猩红收割者</p></a></li>
										<li id="hero_Volibear"><a title="雷霆咆哮 沃利贝尔"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Volibear&#39;,&#39;106&#39;,&#39;雷霆咆哮&#39;,&#39;沃利贝尔&#39;,&#39;Volibear.png&#39;);"><img
												alt="雷霆咆哮 沃利贝尔" src="../images/Volibear.png">
											<p>雷霆咆哮</p></a></li>
										<li id="hero_Warwick"><a title="祖安怒兽 沃里克"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Warwick&#39;,&#39;19&#39;,&#39;祖安怒兽&#39;,&#39;沃里克&#39;,&#39;Warwick.png&#39;);"><img
												alt="祖安怒兽 沃里克" src="../images/Warwick.png">
											<p>祖安怒兽</p></a></li>
										<li id="hero_Xayah"><a title="逆羽 霞"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Xayah&#39;,&#39;498&#39;,&#39;逆羽&#39;,&#39;霞&#39;,&#39;Xayah.png&#39;);"><img
												alt="逆羽 霞" src="../images/Xayah.png">
											<p>逆羽</p></a></li>
										<li id="hero_Xerath"><a title="远古巫灵 泽拉斯"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Xerath&#39;,&#39;101&#39;,&#39;远古巫灵&#39;,&#39;泽拉斯&#39;,&#39;Xerath.png&#39;);"><img
												alt="远古巫灵 泽拉斯" src="../images/Xerath.png">
											<p>远古巫灵</p></a></li>
										<li id="hero_XinZhao"><a title="德邦总管 赵信"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;XinZhao&#39;,&#39;5&#39;,&#39;德邦总管&#39;,&#39;赵信&#39;,&#39;XinZhao.png&#39;);"><img
												alt="德邦总管 赵信" src="../images/XinZhao.png">
											<p>德邦总管</p></a></li>
										<li id="hero_Yasuo"><a title="疾风剑豪 亚索"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Yasuo&#39;,&#39;157&#39;,&#39;疾风剑豪&#39;,&#39;亚索&#39;,&#39;Yasuo.png&#39;);"><img
												alt="疾风剑豪 亚索" src="../images/Yasuo.png">
											<p>疾风剑豪</p></a></li>
										<li id="hero_Yorick"><a title="牧魂人 约里克"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Yorick&#39;,&#39;83&#39;,&#39;牧魂人&#39;,&#39;约里克&#39;,&#39;Yorick.png&#39;);"><img
												alt="牧魂人 约里克" src="../images/Yorick.png">
											<p>牧魂人</p></a></li>
										<li id="hero_Zac"><a title="生化魔人 扎克"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Zac&#39;,&#39;154&#39;,&#39;生化魔人&#39;,&#39;扎克&#39;,&#39;Zac.png&#39;);"><img
												alt="生化魔人 扎克" src="../images/Zac.png">
											<p>生化魔人</p></a></li>
										<li id="hero_Zed"><a title="影流之主 劫"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Zed&#39;,&#39;238&#39;,&#39;影流之主&#39;,&#39;劫&#39;,&#39;Zed.png&#39;);"><img
												alt="影流之主 劫" src="../images/Zed.png">
											<p>影流之主</p></a></li>
										<li id="hero_Ziggs"><a title="爆破鬼才 吉格斯"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Ziggs&#39;,&#39;115&#39;,&#39;爆破鬼才&#39;,&#39;吉格斯&#39;,&#39;Ziggs.png&#39;);"><img
												alt="爆破鬼才 吉格斯" src="../images/Ziggs.png">
											<p>爆破鬼才</p></a></li>
										<li id="hero_Zilean"><a title="时光守护者 基兰"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Zilean&#39;,&#39;26&#39;,&#39;时光守护者&#39;,&#39;基兰&#39;,&#39;Zilean.png&#39;);"><img
												alt="时光守护者 基兰" src="../images/Zilean.png">
											<p>时光守护者</p></a></li>
										<li id="hero_Zyra"><a title="荆棘之兴 婕拉"
											href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(&#39;Zyra&#39;,&#39;143&#39;,&#39;荆棘之兴&#39;,&#39;婕拉&#39;,&#39;Zyra.png&#39;);"><img
												alt="荆棘之兴 婕拉" src="../images/Zyra.png">
											<p>荆棘之兴</p></a></li>
									</ul>
								</div>
								<div class="skin-con">
									<div class="skin-top">
										<p class="hero-img" id="heroimg">
											<img src="../images/Aatrox.png" alt="">
										</p>
										<h4 id="heroname">
											暗裔剑魔 亚托克斯<br>
											<span>Aatrox</span>
										</h4>
										<p class="skin-num" id="skinnum">
											亚托克斯共有<span>4</span>款皮肤，您拥有<span>2</span>款
										</p>
									</div>
									<p class="skin-tips" style="" id="ifownedhero">
										对不起，您未拥有该英雄，<a
											href="http://daoju.qq.com/lol/item/810.shtml?ADTAG=cop.innercop.lol_guanwang.personal.hero_810"
											id="ifownedhero_a" target="_blank">点击购买</a>
									</p>
									<ul class="skin-list" id="skinlist">
										<li><img src="../images/266000.jpg" alt="">
										<p class="skin-name">默认皮肤</p></li>
										<li class="noskin"><img src="../images/266001.jpg" alt="">
										<p class="skin-name">仲裁圣骑 亚托克斯</p>
											<p class="skin-cover">
												<span>不可用</span>
											</p></li>
										<li class="noskin"><img src="../images/266002.jpg" alt="">
										<p class="skin-name">霸天剑魔 亚托克斯</p>
											<p class="skin-cover">
												<span>未拥有</span><a
													href="http://daoju.qq.com/lol/item/945.shtml?ADTAG=cop.innercop.lol_guanwang.personal.skin_945"
													onclick="LOL_PERSONAL_HEROSKIN.ReportLogBuySkin()"
													target="_blank">点击购买</a>
											</p></li>
										<li><img src="../images/266003.jpg" alt="">
										<p class="skin-name">狂鲨 亚托克斯</p></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end 我的英雄与皮肤 -->

				<!-- 好友印象 -->
				<div id="jPersonDiv3" class="clearfix info-showbox"
					style="display:none;">
					<div class="fl firendimage firendimage-page">
						<h4 class="mytitle">好友印象</h4>
						<ul id="jPersonComment" class="firendimage-list"></ul>
						<div class="firendimage-btn">
							<input id="jPersonCommentInput" type="text"><a
								href="javascript:LW201310_Battle.userCommentPost(g(&#39;jPersonCommentInput&#39;).value);"
								class="commspr commbtn-green">发表印象</a>
						</div>
					</div>
					<ul id="jFrdComment" class="fl firendtrends"></ul>
				</div>
				<!-- end 好友印象 -->

				<!-- 段位荣誉 -->
				<div id="jPersonDiv4" class="clearfix info-showbox"
					style="display: none;">
					<ul id="jPersonDiv4UL" class="ranks-tab">
						<li id="jPersonLi6" onclick="LW201310_Battle.userTierDetail(6);"
							class="current"><span class="nr">2016赛季</span></li>
						<li id="jPersonLi5" onclick="LW201310_Battle.userTierDetail(5);"
							class=""><span class="nr">2015赛季</span></li>
						<li id="jPersonLi4" onclick="LW201310_Battle.userTierDetail(4);"
							class=""><span class="nr">2014赛季</span></li>
						<li id="jPersonLi3" onclick="LW201310_Battle.userTierDetail(3);"
							class=""><span class="nr">第三赛季</span></li>
						<li id="jPersonLi2" onclick="LW201310_Battle.userTierDetail(2);"
							class=""><span class="nr">第二赛季</span></li>
					</ul>
					<div id="jPersonTierDetail6" class="season4"
						style="display: block;">
						<h3 class="person-detail-title">单/双排位赛奖励</h3>
						<div class="fl ranks-logo">
							<img width="135" src="../images/silver-logo.png" alt="不屈白银">
							<p class="cred">不屈白银</p>
						</div>
						<div class="fl ranks-frame">
							<p class="ranks-title">不屈白银边框</p>
							<img src="../images/silver-frame.png" alt="不屈白银边框">
						</div>
						<div class="fl ranks-other">
							<ul class="clearfix">
								<li><p class="ranks-title">不屈白银头像</p>
									<img src="../images/silver-icon-s61.jpg" alt="不屈白银头像"></li>
								<li><p class="ranks-title">不屈白银 2 资料页边框奖励</p>
									<img src="../images/silver-loading-page-2.png"
									alt="不屈白银 2 资料页边框奖励"></li>
							</ul>
						</div>
					</div>
					<div id="jPersonTierDetail5" class="season4" style="display: none;">
						<h3 class="person-detail-title">单/双排位赛奖励</h3>
						<div class="fl ranks-logo">
							<img width="135" src="../images/silver-logo.png" alt="不屈白银">
							<p class="cred">不屈白银</p>
						</div>
						<div class="fl ranks-frame">
							<p class="ranks-title">不屈白银边框</p>
							<img src="../images/silver-frame.png" alt="不屈白银边框">
						</div>
						<div class="fl ranks-other">
							<ul class="clearfix">
								<li><p class="ranks-title">不屈白银头像</p>
									<img src="../images/silver-icon-s51.jpg" alt="不屈白银头像"></li>
								<li><p class="ranks-title">不屈白银 3 资料页边框奖励</p>
									<img src="../images/silver-loading-page-3.png"
									alt="不屈白银 3 资料页边框奖励"></li>
							</ul>
						</div>
					</div>
					<div id="jPersonTierDetail4" class="season4" style="display: none;"></div>
					<div id="jPersonTierDetail3" class="season4" style="display: none;"></div>
					<div id="jPersonTierDetail2" class="season4" style="display: none;"></div>
				</div>
				<!-- end 段位荣誉 -->
			</div>

		</div>
		<!-- end mainer -->
	</div>
	<div id="setNum" data-num="7.19"
		data-link="http://lol.qq.com/webplat/info/news_version3/152/22006/m14290/201709/639913.shtml"
		data-pic="" style="display:none;"></div>



	<div id="popupBoxZJ" class="popupBox">
		<div class="fl popinner">
			<div id="jDiff1" class="fl popuser popleft"></div>
			<div class="fl popvs">
				<em class="fbig">VS</em>战绩对比
			</div>
			<div id="jDiff2" class="fl popuser popright"></div>
			<ul id="jDiffItem" class="fl w100 popbar"></ul>
			<div class="fl w100 popbtn">
				<a href="javascript:amsSubmit(6395,50603);"
					class="commspr commbtn-biggreen">分享至微博</a>
			</div>
		</div>
		<a class="fr popclose" href="javascript:hidDialogs()">×</a>
	</div>
	<div id="popPupItem" class="poppup-item"
		style="display: none; left: 451px; top: 1156px;">
		<div id="itemFromTop">
			<div class="item-title">
				<img src="../images/3089.png" alt="">
				<h4>灭世者的死亡之帽</h4>
				<p class="cons">
					售价或合成费用：<span>1265</span>
				</p>
			</div>
			<div class="item-desc">
				<stats>+120法术强度</stats>
				<br>
				<br>
				<unique>唯一被动：</unique>
				法术强度提升35%。
			</div>
		</div>
		<div id="itemFromTree" class="item-from">
			<h5>合成所需</h5>
			<div class="clearfix item-tree item-depth2">
				<div class="tree-lv">
					<img src="../images/3089.png" alt="灭世者的死亡之帽" title="灭世者的死亡之帽"><i
						class="line1"></i>
				</div>
				<div class="tree-lv" style="width:100%">
					<i class="line0" style="width:66.66666666666667%"></i>
					<ul>
						<li class="tree-count3"><i class="line2"></i><img
							src="../images/1026.png" alt="爆裂魔杖" title="爆裂魔杖"></li>
						<li class="tree-count3"><i class="line2"></i><img
							src="../images/1058.png" alt="无用大棒" title="无用大棒"></li>
						<li class="tree-count3"><i class="line2"></i><img
							src="../images/1052.png" alt="增幅典籍" title="增幅典籍"></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 视频弹窗 S -->
	<div id="Video" class="pop-top-video" style="display:none">
		<div id="VideoContent">加载中...</div>
		<a href="javascript:hidDialogs()" class="pop-close">×</a>
	</div>
	<!-- 视频弹窗 E -->

	<div id="footer" class="footer">
		<div class="footer-inner layout clearfix">
			<ul class="footer-flst">
				<li><a target="_blank" href="http://ieg.tencent.com/"
					class="c4F6">腾讯互动娱乐</a><span class="f9 plr10">|</span><a
					target="_blank" href="http://www.qq.com/contract.shtml"
					class="c4F6">服务条款</a><span class="f9 plr10">|</span><a
					target="_blank" href="http://adver.qq.com/" class="c4F6">广告服务</a><span
					class="f9 plr10">|</span><a target="_blank"
					href="http://game.qq.com/hr/" class="c4F6">腾讯游戏招聘</a><span
					class="f9 plr10">|</span><a target="_blank"
					href="http://service.qq.com/" class="c4F6">腾讯游戏客服</a><span
					class="f9 plr10">|</span><a target="_blank"
					href="http://tgact.qq.com/?g=lol" class="c4F6">游戏活动</a><span
					class="f9 plr10">|</span><a target="_blank"
					href="http://game.qq.com/gnav/" class="c4F6">游戏地图</a><span
					class="f9 plr10">|</span><a target="_blank"
					href="http://game.qq.com/portal2010/business.htm" class="c4F6">商务合作</a><span
					class="f9 plr10">|</span><a target="_blank"
					href="http://www.qq.com/" class="c4F6">腾讯网</a><span
					class="f9 plr10">|</span><a target="_blank"
					href="http://www.qq.com/map/" class="c4F6">网站导航</a></li>
				<li><a target="_blank"
					href="http://www.tencent.com/law/mo_law.shtml?/law/copyright.htm"
					class="c4F6">腾讯公司版权所有</a></li>
				<li class="f9">COPYRIGHT &#169; 1998 - 2017 TENCENT. ALL RIGHTS
					RESERVED.</li>
				<li class="f9">&#169; 2012 Riot Games, Inc. ALL RIGHTS
					RESERVED.</li>
				<li>文网进字[2011] 004号 &amp; ISBN 978-7-89989-145-2<span
					class="f9 plr10">|</span><a target="_blank" class="c4F6"
					href="http://game.qq.com/culture2.htm">新出网证（粤）字010号</a><span
					class="f9 plr10">|</span><a target="_blank" class="c4F6"
					href="http://game.qq.com/culture.htm">粤网文【2017】6138-1456号</a></li>
			</ul>
		</div>
	</div>

	<script src="../js/jquery-1.8.0.min.js"></script>
	<script src="../js/eas.js"></script>
	<script src="../js/milo.js"></script>
	<script src="../js/index.js"></script>
	<script src="../js/stats.js" charset="utf-8"></script>
	<script src="../js/ping_tcss_ied.js"></script>
	<script>
		if (typeof (pgvMain) == 'function') {
			pgvMain();
		}
	</script>

	<!--[if !IE]>|xGv00|285d1978c5e2f653c352b0df1c9ace9c<![endif]-->

	<script src="../js/item.js"></script>
	<!--<script src="http://lol.qq.com/comm-htdocs/js/jquery-1.5.2.min.js"></script>-->
	<script src="../js/jquery-1.11.3.min.js"></script>
	<!--<script src="http://ossweb-img.qq.com/images/js/milo/milo-min.js"></script>-->
	<script src="../js/common.js"></script>
	<script src="../js/tier.js"></script>
	<script src="../js/battle.js"></script>
	<script src="../js/share-min.js" charset="UTF-8"></script>
	<!-- 我的英雄和皮肤  start-->
	<script src="../js/DJC_LOL_HERO_SKIN_MAP.js"></script>
	<script src="../js/champion.js"></script>


	<script src="../js/skins.js"></script>


	<script src="../js/myheros.js"></script>
	<!--  end -->
	<script src="./ue"></script>

	<script>
		var curTime = new Date();
		$("#jSearchHeroInput").click(function() {
			if ("输入要搜索的召唤师名称" == $(this).val()) {
				$(this).val("");
			}
		});
		$("#jShowMoreArea").click(function() {
			$("#jPersonAreaDiv").toggle(100);
		});
		var showDialogs = function(o) {
			need("biz.dialog", function(Dialog) {
				Dialog.show({
					id : o,
					bgcolor : "#000",
					opacity : 60
				});
			});
			return;
		}, hidDialogs = function() {
			need("biz.dialog", function(Dialog) {
				Dialog.hide();
			});
			return;
		}, heroSkinTab = function() {
			$("#heroBtn").click(function() {
				$(this).addClass('current').siblings().removeClass('current');
				$("#heroBox").show();
				$("#skinBox").hide();
				//日志上报
				pgvSendClick({
					hottag : 'lolweb.personal.myHeroBtn'
				});
			})
			$("#skinBtn").click(function() {
				$(this).addClass('current').siblings().removeClass('current');
				$("#heroBox").hide();
				$("#skinBox").show();
				//日志上报
				pgvSendClick({
					hottag : 'lolweb.personal.mySkinBtn'
				});
			})
			$("#shareBtn").hover(function() {
				TGshareFun();
				$("#tg-sns").show();
				//日志上报
				//pgvSendClick({hottag:'lolweb.personal.shareBtn'});
			}, function() {
				$("#tg-sns").hide();
			});
			$("#tg-sns").hover(function() {
				$(this).show();
			}, function() {
				$(this).hide();
			});
		};
		heroSkinTab();
		function TGshareFun() {
			var _pshareNum = $("#myHeroNum").html(), _pshareUrl = window.location.href, _pshareType = $(
					"#itemType").html();
			TGshare({
				iconSize : 16,
				snsModule : [ 'wechat', 'qq', 'qzone', 'weibo', 'pengyou',
						'sina', 'douban', 'kaixin', 'renren' ],
				title : '您当前拥有' + _pshareNum + _pshareType,
				url : _pshareUrl,
				snsID : 'tg-sns',
				isWindow : true,
				tcss : true
			})
		}
		TGshareFun();
	</script>

	<!--AMS微博分享代码-->
	<div id="div_carousel50603" style="display:none;">
		<!-- 轮播滚动按钮 -->
		<div>
			<a
				href="http://lol.qq.com/web201310/personal.shtml?id=2936952079&amp;area=9&amp;showDiv=1#"
				id="prev50603">上一个</a> <a
				href="http://lol.qq.com/web201310/personal.shtml?id=2936952079&amp;area=9&amp;showDiv=1#"
				id="next50603">下一个</a>
		</div>
		<!-- 轮播内容容器 -->
		<div id="carousel_container50603">
			<ul id="carousel_frame50603" class="ul_comm_share_list">
				<li title="" class="li_comm_share_item" style="display:none;">
					<p>
						<span id="span_comm_share_picname50603"></span>
					</p>
					<p>
						<img height="200" width="200" alt=""
							src="http://lol.qq.com/web201310/personal.shtml?id=2936952079&amp;area=9&amp;showDiv=1">
					</p>
					<p>
						<input class="choose_radio50603" name="choose_radio50603"
							type="radio"><label>选择此内容</label>
					</p>
				</li>
			</ul>
		</div>
	</div>
	<!-- 分享内容编辑框，用于用户可修改内容的活动 -->
	<div class="div_editor" style="display:none;">
		<textarea rows="10" cols="50" id="share_editor50603"></textarea>
	</div>
	<!-- 分享按钮，调用分享接口并获取隐藏于中的内容ID -->
	<div class="div_btn_share" style="display:none;">
		<input type="hidden" id="jShareWBContent" value=""> <input
			type="button" value="分享到微博" class="button"
			id="share_btn_microblog_user50603">
	</div>
	<!-- 轮播内容模板 -->
	<script type="text/html" id="tpl_carousel_item50603">
	<li title="{sPicName}" class="li_comm_share_item" style="display:none;">
		<p><span id="span_comm_share_picname50603">{sPicName}</span></p>
		<p><img height="200" width="200" alt="{sPicName}" src="{sPicUrl}" /></p>
		<p>
			<input class="choose_radio50603" name="choose_radio50603" type="radio" /><label>选择此内容</label>
		</p>
	</li>
</script>
	<script language="javascript">
		amsCfg_50603 = {
			iActivityId : '6395', // AMS活动号
			id : '1899', // 分享模块ID，必须指定
			container : "carousel_container50603", // 指定内容容器ID，不指定则会自动生成一个
			frame : "carousel_frame50603", // 指定内容容器ID，必须
			prev : "prev50603", // 指定向前滚动按钮ID，可不指定
			next : "next50603", // 指定向后滚动按钮ID，可不指定
			item_template : "tpl_carousel_item50603", // 指定单个内容的模板元素ID，和上面的script标签对应
			editor : "jShareWBContent", // 指定容器，自定义内容是会自动从指定容器中获取内容，请配置参数_everyRead使用
			sData : {
				iContentId : 1
			},// sData可以穿额外的任何参数，都会透传的
			_everyRead : true,//amsCfg_50603 默认只读一次,之后这个对象的内容变化了需要设置这个参数为true,默认是false
			complete : function(res) { //执行完成后的回调函数 返回值res是Json，res.iRet == 0  是分享成功，res.sMsg是返回的信息
				if (res && res.iRet == 0) { //分析那个成功
					alert(res.sMsg);
				}
				if (res && res.iRet > 0) {
					alert(res.sMsg); //分析失败
				}
				return false;
			}
		};
		milo
				.ready(function() {
					amsInit(6395, 50603);
					var curTime2 = new Date();
					if (Math.random() < 0.3) {
						var imgSendTimePoint = new Image();
						imgSendTimePoint.src = "http://isdspeed.qq.com/cgi-bin/r.cgi?flag1=7718&flag2=21&flag3=6&2="
								+ (curTime2 - d0) + "&1=" + (curTime - d0);
					}
				})
	</script>
	<!--AMS微博分享结束-->


	<div style="height: 0px; overflow: hidden;">
		<object id="storage" data="../images/ajaxcdr.swf.下载"
			type="application/x-shockwave-flash" height="0" width="0">
			<param name="movie"
				value="/comm-htdocs/js/milo/ajaxcdr.swf?0.0027778563145548496">
			<param name="quality" value="high">
			<param name="swliveconnect" value="true">
			<param name="pluginurl"
				value="http://www.macromedia.com/go/getflashplayer">
			<param name="pluginspage"
				value="http://www.macromedia.com/go/getflashplayer">
			<p>
				You need Flash for this. Get the latest version from <a
					href="http://www.macromedia.com/software/flashplayer/">here</a>.
			</p>
		</object>
	</div>
	<div id="qb-sougou-search" style="display: none; opacity: 0;">
		<p>搜索</p>
		<p class="last-btn">复制</p>
		<iframe src="../images/saved_resource.html"></iframe>
	</div>
</body>
</html>