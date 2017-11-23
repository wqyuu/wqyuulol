<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<%-- 
<base href="<%=basePath%>"> --%>

<meta charset="utf-8" />
<meta name="robots" content="all" />
<meta http-equiv="x-ua-compatible" content="IE=edge">
<meta name="Copyright" content="TENCNET" />
<meta name="author" content="Tencent-TGideas" />
<meta name="keywords"
	content="英雄联盟,lol,lol新手礼包,lol攻略,lol视频,lol视频攻略,英雄资料,英雄联盟战争学院,明星解说视频,101战争学院,英雄,攻略,WCG,点亮图标,赛事" />
<meta name="description"
	content="英雄联盟官方网站，海量风格各异的英雄，丰富、便捷的物品合成系统，游戏内置的匹配、排行和竞技系统，独创的“召唤师”系统及技能、符文、天赋等系统组合，必将带你进入一个崭新而又丰富多彩的游戏世界。" />
<title>英雄联盟全新官方网站-腾讯游戏</title>
<!-- 设计：帅呆 | 重构：小倪 | 创建：20170320 | 团队博客：tgideas.qq.com -->
<link href="../css/public.css" rel="stylesheet" />
<script>
	if ('https:' == document.location.protocol) {
		window.location.href = 'http://lol.qq.com';
	}
</script>


<script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
<link rel="Stylesheet" type="text/css" href="../css/loginDialog.css" />
</head>

<body>
	<!--[if lt IE 9]>
    <p class="chromeframe">您使用的IE浏览器版本过低，本站不再支持，<a href="//windows.microsoft.com/">升级您的IE浏览器</a>，或使用<a href="//www.google.cn/chrome/">Google Chrome</a>、<a href="//www.firefox.com.cn/download/">Firefox</a>等高级浏览器，将会得到更好的体验！</p>
<![endif]-->
	<!-- 
<a href="#" id="example">登录DIY账号窗口示例</a>
	
    -->

	<script type="text/javascript">
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
	<div id="header" class="header">

		<!--TOP S-->
		<div class="top">
			<div class="top-inner layout">	
				<div id="J_nav" class="main-nav-wrap">
					<ul class="main-nav">
						<li><a href="/web201310/info-heros.shtml"
							onclick="pgvSendClick({hottag:'v2.nav.info.link'})">游戏资料<span>GAME
									INFO</span></a></li>
						<li><a class="n" href="javascript:void(0)">商城/合作<span>STORE</span></a></li>
						<li><a class="n" href="javascript:void(0)">用户互动<span>COMMUNITY</span></a></li>
						<li><a href="//lpl.qq.com/"
							onclick="pgvSendClick({hottag:'v2.nav.match.link'})"
							target="_blank">赛事中心<span>EVENTS</span></a></li>
						<li><a class="n" href="javascript:void(0)">自助系统<span>SYSTEM</span></a></li>
						<!--<li><a href="/web201310/personal.shtml" onclick="pgvSendClick({hottag:'v2.nav.personal.link'})">个人中心<span>user center</span></a></li>-->
					</ul>
					<!--下拉子导航 S-->
					<div id="J_subNav" class="sub-nav">
						<ul class="sub-nav-inner">
							<li class="sub-nav-item"><a class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.info.what'})"
								href="${pageContext.request.contextPath }/page/newbie.jsp" target="_blank">新手指引</a> <a
								class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.info.heros'})"
								href="${pageContext.request.contextPath }/page/ziliaohero.jsp" target="_blank"><i class="icon-hot"></i>资料库</a>
								<!--<a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.info.guides'})" href="/web201310/101/guides.shtml">战争学院</a>-->
								<a class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.info.guides'})"
								href="/guide/" target="_blank">攻略中心</a> <a class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.info.rgm'})"
								href="${pageContext.request.contextPath }/page/lolweb.jsp" target="_blank">模式实验室</a> <a
								class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.info.loot'})"
								href="/act/a20160713loot/" target="_blank">海克斯战利品库</a> <a
								class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.info.protect'})"
								href="/act/a20161101pbcxym/" target="_blank">屏保下载</a> <a
								class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.info.yz'})"
								href="//yz.lol.qq.com/" target="_blank"><i class="icon-new"></i>宇宙官网</a>
							</li>
							<li class="sub-nav-item"><a class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.store.pay'})"
								target="_blank"
								href="//lol.qq.com/comm-htdocs/pay/new_index.htm?t=lol"><i
									class="publicspr ico-h"></i>点券充值</a> <a class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.store.daoju'})"
								target="_blank" href="//daoju.qq.com/lol/">道聚城</a> <a
								class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.store.mall'})"
								href="${pageContext.request.contextPath }/shopPage/Sindex.jsp"
								target="_blank"><i class="icon-hot"></i>周边商城</a> <a
								class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.store.mvm'})"
								href="//lol.qq.com/mvm/?ADTAG=lol.rk.gw.top" target="_blank">LOL桌游</a>
								<a class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.store.cmb'})"
								href="//lpl.qq.com/es/act/a20170731cmb/" target="_blank">LOL信用卡</a>
								<a class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.store.netbar'})"
								href="//cafe.qq.com/" target="_blank">网吧特权</a></li>
							<li class="sub-nav-item"><a class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.user.online'})"
								href="DemoWeb.jsp" target="_blank">在线客服</a> <a
								class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.user.video'})"
								href="/v/" target="_blank">视频中心</a> <!--<a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.user.active'})" href="/web201310/active.shtml" target="_blank"><i class="icon-hot"></i>活动中心</a>-->
								<a class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.user.bbs'})"
								target="_blank" href="//bbs.lol.qq.com/forum.php">官方论坛</a> <a
								class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.user.weixin'})"
								href="${pageContext.request.contextPath }/notic/findAllNotic.do" target="_blank">官方公告</a> <a
								class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.user.weibo'})"
								href="//weibo.com/lol" target="_blank">官方微博</a></li>
							<li class="sub-nav-item"><a class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.match.s7'})"
								target="_blank" href="//lpl.qq.com/es/2017worlds/"><i
									class="icon-new"></i>全球总决赛</a> <a class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.match.lpl'})"
								target="_blank" href="//lpl.qq.com/es/lpl/"><i
									class="icon-hot"></i>LPL职业联赛</a> <a class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.match.demacia'})"
								target="_blank" href="/match/demacia/">德玛西亚杯</a> <a
								class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.match.city'})"
								target="_blank" href="/match/city/">城市争霸赛</a> <a
								class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.match.campus'})"
								target="_blank" href="/match/lcl/">高校联赛</a> <a
								class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.match.elcl'})"
								target="_blank" href="//lpl.qq.com/es/ldl/ ">LDL发展联赛</a> <a
								class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.match.gxzfs'})"
								target="_blank" href="/act/a20161025gxzfs/">高校自发赛</a></li>
							<li class="sub-nav-item">
								<!--<li><a href="/act/a20110613icon/?ADTAG=lolweb.v2" target="_blank" onclick="pgvSendClick({hottag:'v2.sidenav.icon'})"><i class="icon-icon"></i>点亮图标</a></li>-->
								<a class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.system.icon'})"
								target="_blank" href="/act/a20110613icon/?ADTAG=lolweb.v2">点亮图标</a>
								<!--<a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.system.rs'})" target="_blank" href="/rs/">声望系统</a>-->
								<a class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.system.fenghao'})"
								target="_blank" href="${pageContext.request.contextPath }/page/fenghao.jsp"><i class="icon-hot"></i>封号查询</a>
								<a class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.system.exp'})"
								target="_blank" href="/act/a20110907exp/">体验服申请</a> <a
								class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.system.replay'})"
								target="_blank" href="/act/a20170728replay/">回放系统</a> <a
								class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.system.server'})"
								target="_blank" href="/act/a20150326dqpd/">服务器状态查询</a> <a
								class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.system.justice'})"
								target="_blank" href="/act/a20160317sickle/">裁决之镰</a> <a
								class="sub-nav-lnk"
								onclick="pgvSendClick({hottag:'v2.subnav.system.cjf'})"
								target="_blank"
								href="/act/a20170704super/index.shtml?e_code=336975"><i
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
					</div>
				</div>
				<!--<a class="top-search" href="/act/a20160624search/" onclick="pgvSendClick({hottag:'v2.nav.search'})"  target="_blank" title="前往英雄联盟搜索系统"><i class="icon-top-search"></i></a>-->
				<a class="top-app" href="/app/" target="_blank" title="前往掌上英雄联盟官网"><i
					class="icon-top-app"></i></a>
				<div id="J_topUser" class="top-user">


					<div class="top-user-info" style="display: block">
						<div class="top-user-side">
							<span class="user-mask"></span> <img id="jUserIcon"
								src="../images/default.png">
						</div>


						<div class="top-user-main">
							<div class="top-user-unlogin">
							<c:if test="${empty consumer }">
								亲爱的召唤师，欢迎<a href="#" id="example">登录</a>
								</c:if>
								<c:if test="${not empty consumer }">
									<a href="">绑定大区</a>
									
									<span class="sep">|</span>
									<a href="${pageContext.request.contextPath }/user/logout">注销</a>
									
								</c:if>
								<!-- <em onclick="LW201310_Userinfo.userLogin();">登录</em> -->
							</div>
							<div class="top-user-tips">绑定大区后查看自己的个人中心</div>
						</div>
						<a class="btn-user-drop" href=""></a>
					</div>

		<!--未登录的状态下实现登录  -->
					<form action="${pageContext.request.contextPath }/user/login" method="post" >
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
						
							<p  style="color: red;">${xmerr}</p>

					<div class="row_foot">
						<a href="">忘记密码</a>&nbsp;/ <a href="../userInfo/register.jsp">注册</a>
					</div>
				</div>

					</form>

				<!--已登录已绑定大区 S-->
				<!--  <div id="J_userHover" class="top-user-info" style="display: none">
                    <div class="top-user-side">
                        <span class="user-mask"></span>
                        <img class="jUserIcon" src="">
                        <span id="J_userRankNo" class="top-user-rank">30</span>
                    </div>
                    <div class="top-user-main">
                        <h5 class="top-user-name" id="jUserName"></h5>
                        <div class="top-user-area"><a class="link-switch-area" href="javascript:LW201310_Userinfo.userLogin();" id="jUserArea"></a><a class="link-loginout" href="javascript:LW201310_Userinfo.userLogout();">注销</a></div>
                    </div>
                </div>
                已登录已绑定大区 E
                
                
                未登录 S
               
                未登录 S
                已登录未绑定大区 S
                <div class="top-user-info" style="display: none">
                    <div class="top-user-side">
                        <span class="user-mask"></span>
                        <img class="jUserIcon" src="../images/default.png">
                    </div>
                    <div class="top-user-main">
                        <div class="top-user-unlogin">您已登录，请<a href="javascript:LW201310_Userinfo.userLogin();">绑定大区</a>或<a href="javascript:LW201310_Userinfo.userLogout();">注销</a></div>
                        <div class="top-user-tips">绑定大区后查看所在大区的战绩、资产、声望值等</div>
                    </div>
                    <a class="btn-user-drop" href=""></a>
                </div>
                已登录未绑定大区 E
                <div id="J_userDrop" class="top-user-drop" style="visibility: hidden">
                    <div id="J_dropTips" class="top-user-drop-tips">登录并且绑定大区后才可查看您的具体信息哦~（包括战绩、资产、声望值等）</div>
                    <div id="J_dropContent" class="top-user-drop-content clearfix" style="display: none">
                        <div class="pic">
                            <img id="J_rankPic" src="../images/default.png" width="110" height="110" alt="">
                            <em id="jUserRank">暂无</em>段位
                        </div>
                        <div class="info">
                            <div class="top-user-item"><strong id="jUserGames">0</strong>总场数</div>
                            <div class="top-user-item"><strong id="jUserRP">0</strong>点券</div>
                            <div class="top-user-item"><strong id="jUserIP">0</strong>金币</div>
                            <div class="top-user-item"><strong id="jUserRS">0</strong>声望值</div>
                        </div>
                    </div>
                    <a class="top-link-personal" href="/web201310/personal.shtml" target="_blank">进入个人中心</a>
                </div> -->
			</div>
		</div>
	</div>
	<!--TOP E-->


	<div class="header-inner layout">
		<div class="logo">
			<a href="/">英雄联盟</a>
		</div>

		<!--当前活动 S-->
		<!--<video class="top-big-video" id="topBigVideo" autoplay loop>-->
		<!--<source src="//ossweb-img.qq.com/images/lol/v2/banner/big-v12.webm" type="video/webm">-->
		<!--<source src="//ossweb-img.qq.com/images/lol/v2/banner/big-v12.mp4" type="video/mp4">-->
		<!--</video>-->
		<!--<video class="top-back-video" id="topBackVideo" autoplay loop>-->
		<!--<source src="//ossweb-img.qq.com/images/lol/v2/banner/back-v12.webm" type="video/webm">-->
		<!--<source src="//ossweb-img.qq.com/images/lol/v2/banner/back-v12.mp4" type="video/mp4">-->
		<!--</video>-->
		<div class="top-act">
			<!--<h2 class="top-act-name">2017星之守护者<span>2017星之守护者</span></h2>-->
			<!--<p class="top-act-desc">代表星辰消灭怪兽！星之守护者新队“初之际”参上！</p>-->
			<!--<div class="top-act-video">-->
			<!--<video class="top-small-video" id="topSmallVideo" autoplay loop>-->
			<!--<source src="//ossweb-img.qq.com/images/lol/v2/banner/small-v9.webm" type="video/webm">-->
			<!--<source src="//ossweb-img.qq.com/images/lol/v2/banner/small-v9.mp4" type="video/mp4">-->
			<!--</video>-->
			<!--<a id="J_play" class="btn-top-play" href="javascript:void(0)"><i class="icon-top-play"></i></a>-->
			<!--</div>-->
			<a class="top-act-link"
				href="//lpl.qq.com/es/2017worlds/?ADTAG=lolweb.v2.act"
				onclick="pgvSendClick({hottag:'v2.activity.btn.link'})"
				target="_blank">查看详情</a>
		</div>
		<!--当前活动 E-->

		<div id="J_version" class="top-version">
			当前游戏版本：<em>Ver ---</em> <a class="top-version-link" href="${pageContext.request.contextPath }/newl/NewList"
				onclick="pgvSendClick()"
				target="_blank">版本详情</a>
		</div>

	</div>
	</div>
	<!--[if !IE]>|xGv00|11406518bdac5907b950fb8287934293<![endif]-->
	<div class="menu">
		<ul id="J_menu" class="menu-inner layout">
			<li id="J_menuHome" class="menu-item cur">综合资讯<i
				class="icon-update"></i></li>
			<li class="dot"></li>
			<li id="J_menuVideo" class="menu-item">视频中心<i
				class="icon-update"></i></li>
			<li class="dot"></li>
			<li id="J_menuHMatch" class="menu-item">
			<a href="${pageContext.request.contextPath }/page/sszx-die.jsp"  target="_blank">赛事中心</a>
				<!-- <iclass="icon-update"></i> --></li>
			<li class="dot"></li>
			<li id="J_menuAct" class="menu-item">活动中心<i class="icon-update"></i></li>
			<!--<li class="menu-last"><a href="//lol.qq.com/?v2" target="_blank" onclick="pgvSendClick({hottag:'v2.menu.gov1'})">返回旧版官网&gt;</a></li>-->
			<!--<li class="dot"></li>-->
			<!--<li class="last">视音中心<i class="icon-update"></i></li>-->
		</ul>
	</div>
	<div class="content">
		<div class="content-inner">
			<div class="layout" style="overflow: hidden">
				<div class="home-slide">
					<!--综合资讯-->
					<div id="J_home" class="home-slide-item cur-slide">
						<!--轮播 S-->
						<div id="J_promo" class="promo">
							<ul id="promoInner" class="promo-list">正在努力加载中...
							</ul>
							<div id="promoTrigger" class="promo-trigger"></div>
						</div>
						<!--轮播 E-->
						<!--侧栏 S-->
						<div class="side-nav">
							<div class="side-download">
								<video class="side-down-video" autoplay loop>
									<source src="//ossweb-img.qq.com/images/lol/v2/down.mp4"
										type="video/mp4">
								</video>
								<a class="side-nav-download"
									onclick="pgvSendClick({hottag:'v2.sidenav.down'})"
									href="/download.shtml?ADTAG=lolweb.v2" target="_blank"><strong
									class="hidden">下载游戏</strong></a>
							</div>
							<ul class="side-menu">
								<li><a
									href="/act/djc_qt_rookie/web/a20141205rookie/index.htm?ADTAG=lolweb.v2"
									target="_blank"
									onclick="pgvSendClick({hottag:'v2.sidenav.guide'})"><i
										class="icon-guide"></i>新手推荐</a></li>
								<li><a href="//yz.lol.qq.com/zh_CN/&ADTAG=lolweb.v2"
									target="_blank"
									onclick="pgvSendClick({hottag:'v2.sidenav.yz'})"><i
										class="icon-yz"></i>宇宙官网</a></li>
								<li><a
									href="//lolriotmall.qq.com/index.html?adunionsid=hmdgsb&ADTAG=lolweb.v2"
									target="_blank"
									onclick="pgvSendClick({hottag:'v2.sidenav.riotmall'})"><i
										class="icon-mall"></i>周边商城<i class="icon-hot"></i></a></li>
								<li><a href="/act/a20170309lcu/?ADTAG=lolweb.v2"
									target="_blank"
									onclick="pgvSendClick({hottag:'v2.sidenav.lcu'})"><i
										class="icon-icon"></i>新客户端<i class="icon-new"></i></a></li>
								<li><a
									href="/act/a20170704super/index.shtml?ADTAG=lolweb.v2"
									target="_blank"
									onclick="pgvSendClick({hottag:'v2.sidenav.cjf'})"><i
										class="icon-cjf"></i>峡谷之巅<i class="icon-new"></i></a></li>
								<!--<li><a href="/act/a20110613icon/?ADTAG=lolweb.v2" target="_blank" onclick="pgvSendClick({hottag:'v2.sidenav.icon'})"><i class="icon-icon"></i>点亮图标</a></li>-->
								<!--<li><a href="/rs/" target="_blank" onclick="pgvSendClick({hottag:'v2.sidenav.popularity'})"><i class="icon-prestige"></i>声望系统</a></li>-->
								<li><a href="/web201310/cdkey.shtml?ADTAG=lolweb.v2"
									target="_blank"
									onclick="pgvSendClick({hottag:'v2.sidenav.cdk'})"><i
										class="icon-cdk"></i>CDK兑换</a></li>
								<li><a href="/act/a20160412rgm/?ADTAG=lolweb.v2"
									target="_blank"
									onclick="pgvSendClick({hottag:'v2.sidenav.style'})"><i
										class="icon-rgm"></i>轮换模式<i class="icon-hot"></i></a></li>
								<li><a href="/web201310/info-heros.shtml?ADTAG=lolweb.v2"
									target="_blank"
									onclick="pgvSendClick({hottag:'v2.sidenav.gameinfo'})"><i
										class="icon-info"></i>游戏资料</a></li>
								<li><a href="/act/a20120723awards/?ADTAG=lolweb.v2"
									target="_blank"
									onclick="pgvSendClick({hottag:'v2.sidenav.reward'})"><i
										class="icon-reward"></i>领奖中心</a></li>
								<li><a href="//weibo.com/lol" target="_blank"
									onclick="pgvSendClick({hottag:'v2.sidenav.weibo'})"><i
										class="icon-weibo"></i>官方微博</a></li>
								<li><a href="//bbs.lol.qq.com/forum.php" target="_blank"
									onclick="pgvSendClick({hottag:'v2.sidenav.bbs'})"><i
										class="icon-bbs"></i>玩家论坛</a></li>
								<li><a href="//kf.qq.com/cgi-bin/SuperLOL" target="_blank"
									onclick="pgvSendClick({hottag:'v2.sidenav.online'})"><i
										class="icon-kefu"></i>在线客服</a></li>
							</ul>
						</div>
						<!--侧栏 E-->
						<!--新闻公告 S-->
						<div class="home-mod news">
							<div class="tab news-top">
								<h3 class="tab-title">最新资讯</h3>
								<ul id="J_newsTab" class="tab-nav news-nav">
									<li class="current">综合新闻</li>
									<li>官方公告</li>
									<li>赛事新闻</li>
									<li>论坛资讯</li>
								</ul>
							</div>
							<div id="J_newsContent" class="news-list">
								<div class="news-content" style="display:block">
									<ul id="Jnews_n1_inner" class="clearfix txtlist">
										<li class="first"><a
											href="/webplat/info/news_version3/152/4579/4580/m3106/201709/639540.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="总决赛淘汰赛阶段售票27日开启！"
											onclick="pgvSendClick({hottag:'v2.news.all.639540'})"
											target="_blank"> <img src="images/pic-news.jpg"> <span
												class="news-first-title">总决赛淘汰赛阶段售票27日开启！</span><span
												class="news-first-desc">入围赛比赛一触即发。让我们一起为LPL加油，为你心爱的队伍加油！</span></a>
										</li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4580/m3106/201709/639275.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="英雄联盟openday-首次高校音乐分享会"
											onclick="pgvSendClick({hottag:'v2.news.all.639275'})"
											target="_blank"><span class="new-type">新闻</span>英雄联盟openday-首次高校音乐分享会<span
												class="date">09/26</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4580/m3106/201709/639479.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="技能更新：赵信"
											onclick="pgvSendClick({hottag:'v2.news.all.639479'})"
											target="_blank"><span class="new-type">新闻</span>技能更新：赵信<span
												class="date">09/26</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4580/m3106/201709/639380.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="皮肤下架公告"
											onclick="pgvSendClick({hottag:'v2.news.all.639380'})"
											target="_blank"><span class="new-type">新闻</span>皮肤下架公告<span
												class="date">09/26</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4580/m3106/201709/639375.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="Miss遭神秘人gank 众粉丝化身护花使者"
											onclick="pgvSendClick({hottag:'v2.news.all.639375'})"
											target="_blank"><span class="new-type">新闻</span>Miss遭神秘人gank
												众粉丝化身护花使者<span class="date">09/26</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4580/m3106/201709/639106.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="等级和奖励改动常见问题解答"
											onclick="pgvSendClick({hottag:'v2.news.all.639106'})"
											target="_blank"><span class="new-type">新闻</span>等级和奖励改动常见问题解答<span
												class="date">09/25</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4580/m3106/201709/638585.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="伊芙琳重做：再次沉沦痛苦之拥吧！"
											onclick="pgvSendClick({hottag:'v2.news.all.638585'})"
											target="_blank"><span class="new-type">新闻</span>伊芙琳重做：再次沉沦痛苦之拥吧！<span
												class="date">09/24</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4580/m3106/201709/638468.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="游戏性想法9月22日：谈谈召唤师技能等级"
											onclick="pgvSendClick({hottag:'v2.news.all.638468'})"
											target="_blank"><span class="new-type">新闻</span>游戏性想法9月22日：谈谈召唤师技能等级<span
												class="date">09/23</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4580/m3106/201709/638422.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="2017全球总决赛今日13点正式开赛"
											onclick="pgvSendClick({hottag:'v2.news.all.638422'})"
											target="_blank"><span class="new-type">新闻</span>2017全球总决赛今日13点正式开赛<span
												class="date">09/23</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4580/m3106/201709/638240.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="2017全球总决赛淘汰赛售票预告"
											onclick="pgvSendClick({hottag:'v2.news.all.638240'})"
											target="_blank"><span class="new-type">新闻</span>2017全球总决赛淘汰赛售票预告<span
												class="date">09/22</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4580/m3106/201709/638327.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="符文角：关于用户界面"
											onclick="pgvSendClick({hottag:'v2.news.all.638327'})"
											target="_blank"><span class="new-type">新闻</span>符文角：关于用户界面<span
												class="date">09/22</span></a></li>

									</ul>
								</div>
								<div class="news-content" style="display:none">
									<ul id="Jnews_n2_inner" class="clearfix txtlist">
										<li class="first"><a
											href="/webplat/info/news_version3/152/4579/4581/m3106/201709/639380.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="皮肤下架公告"
											onclick="pgvSendClick({hottag:'v2.news.announcement.639380'})"
											target="_blank"> <img src="images/pic-news.jpg"> <span
												class="news-first-title">皮肤下架公告</span><span
												class="news-first-desc"></span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4581/m3106/201709/638639.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="部分大区任务系统异常修复公告"
											onclick="pgvSendClick({hottag:'v2.news.announcement.638639'})"
											target="_blank"><span class="new-type">公告</span>部分大区任务系统异常修复公告<span
												class="date">09/24</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4581/m3106/201709/637950.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="影流之主 劫 皮肤禁用补偿公告"
											onclick="pgvSendClick({hottag:'v2.news.announcement.637950'})"
											target="_blank"><span class="new-type">公告</span>影流之主 劫
												皮肤禁用补偿公告<span class="date">09/22</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4581/m3106/201709/637591.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="魔法引擎活动升级公告"
											onclick="pgvSendClick({hottag:'v2.news.announcement.637591'})"
											target="_blank"><span class="new-type">公告</span>魔法引擎活动升级公告<span
												class="date">09/21</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4581/m3106/201709/637517.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="武器大师竞技场更新公告"
											onclick="pgvSendClick({hottag:'v2.news.announcement.637517'})"
											target="_blank"><span class="new-type">公告</span>武器大师竞技场更新公告<span
												class="date">09/21</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4581/m3106/201709/637104.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="9月22日免费英雄更换公告"
											onclick="pgvSendClick({hottag:'v2.news.announcement.637104'})"
											target="_blank"><span class="new-type">公告</span>9月22日免费英雄更换公告<span
												class="date">09/20</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4581/m3106/201709/636350.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="9月19日全大区延迟开启公告"
											onclick="pgvSendClick({hottag:'v2.news.announcement.636350'})"
											target="_blank"><span class="new-type">公告</span>9月19日全大区延迟开启公告<span
												class="date">09/19</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4581/m3106/201709/636222.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="9月19日全区停机维护公告"
											onclick="pgvSendClick({hottag:'v2.news.announcement.636222'})"
											target="_blank"><span class="new-type">公告</span>9月19日全区停机维护公告<span
												class="date">09/18</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4581/m3106/201709/636082.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="峡谷之巅大区开放时间调整公告"
											onclick="pgvSendClick({hottag:'v2.news.announcement.636082'})"
											target="_blank"><span class="new-type">公告</span>峡谷之巅大区开放时间调整公告<span
												class="date">09/18</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4581/m3106/201709/635590.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="关于男爵领域大区试运行即时反馈系统的公告"
											onclick="pgvSendClick({hottag:'v2.news.announcement.635590'})"
											target="_blank"><span class="new-type">公告</span>关于男爵领域大区试运行即时反馈系统的公告<span
												class="date">09/15</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4581/m3106/201709/635116.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="玉剑传说皮肤竞猜获奖公告"
											onclick="pgvSendClick({hottag:'v2.news.announcement.635116'})"
											target="_blank"><span class="new-type">公告</span>玉剑传说皮肤竞猜获奖公告<span
												class="date">09/15</span></a></li>


									</ul>
								</div>
								<div class="news-content" style="display:none">
									<ul id="Jnews_n3_inner" class="clearfix txtlist">
										<li class="first"><a
											href="/webplat/info/news_version3/152/4579/4584/m3106/201709/639540.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="总决赛淘汰赛阶段售票27日开启！"
											onclick="pgvSendClick({hottag:'v2.news.match.639540'})"
											target="_blank"> <img
												src="http://ossweb-img.qq.com/images/lol/v2/pic-news.jpg">
												<span class="news-first-title">总决赛淘汰赛阶段售票27日开启！</span><span
												class="news-first-desc">入围赛比赛一触即发。让我们一起为LPL加油，为你心爱的队伍加油！</span></a>
										</li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4584/m3106/201709/639546.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="WE迎击YG 入围赛第二轮抽签结果出炉"
											onclick="pgvSendClick({hottag:'v2.news.match.639546'})"
											target="_blank"><span class="new-type">赛事</span>WE迎击YG
												入围赛第二轮抽签结果出炉<span class="date">09/26</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4584/m3106/201709/639545.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="入围赛首轮收官 FNC、FB分列两组头名"
											onclick="pgvSendClick({hottag:'v2.news.match.639545'})"
											target="_blank"><span class="new-type">赛事</span>入围赛首轮收官
												FNC、FB分列两组头名<span class="date">09/26</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4584/m3106/201709/639203.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="9月25日TOP5：Padden克格莫走A豪取五杀"
											onclick="pgvSendClick({hottag:'v2.news.match.639203'})"
											target="_blank"><span class="new-type">赛事</span>9月25日TOP5：Padden克格莫走A豪取五杀<span
												class="date">09/26</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4584/m3106/201709/639202.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="入围赛第三日回顾 大嘴五杀助FB连胜"
											onclick="pgvSendClick({hottag:'v2.news.match.639202'})"
											target="_blank"><span class="new-type">赛事</span>入围赛第三日回顾
												大嘴五杀助FB连胜<span class="date">09/26</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4584/m3106/201709/639200.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="全球总决赛今日看点回顾：黑马费内巴切领跑D组"
											onclick="pgvSendClick({hottag:'v2.news.match.639200'})"
											target="_blank"><span class="new-type">赛事</span>全球总决赛今日看点回顾：黑马费内巴切领跑D组<span
												class="date">09/26</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4584/m3106/201709/639030.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="第六届高校联赛海选赛报名火热开启"
											onclick="pgvSendClick({hottag:'v2.news.match.639030'})"
											target="_blank"><span class="new-type">赛事</span>第六届高校联赛海选赛报名火热开启<span
												class="date">09/25</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4584/m3106/201709/638746.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="WhiteLotus卡莉斯塔献首个五杀"
											onclick="pgvSendClick({hottag:'v2.news.match.638746'})"
											target="_blank"><span class="new-type">赛事</span>WhiteLotus卡莉斯塔献首个五杀<span
												class="date">09/25</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4584/m3106/201709/638651.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="周一看点推荐：HKA与LJL赛区RPG交手"
											onclick="pgvSendClick({hottag:'v2.news.match.638651'})"
											target="_blank"><span class="new-type">赛事</span>周一看点推荐：HKA与LJL赛区RPG交手<span
												class="date">09/24</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4584/m3106/201709/638649.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="入围赛今日回顾 WE与C9四连胜晋级"
											onclick="pgvSendClick({hottag:'v2.news.match.638649'})"
											target="_blank"><span class="new-type">赛事</span>入围赛今日回顾
												WE与C9四连胜晋级<span class="date">09/24</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4584/m3106/201709/638647.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="亚索VN齐登场 总决赛首个五杀诞生"
											onclick="pgvSendClick({hottag:'v2.news.match.638647'})"
											target="_blank"><span class="new-type">赛事</span>亚索VN齐登场
												总决赛首个五杀诞生<span class="date">09/24</span></a></li>


									</ul>
								</div>
								<div class="news-content" style="display:none">
									<ul id="Jnews_n4_inner" class="clearfix txtlist">
										<li class="first"><a
											href="/webplat/info/news_version3/152/4579/4583/m3106/201709/636538.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="【问拳头特别版】怪物入侵模式与星之守护"
											onclick="pgvSendClick({hottag:'v2.news.bbs.636538'})"
											target="_blank"> <img
												src="http://ossweb-img.qq.com/images/lol/v2/pic-news.jpg">
												<span class="news-first-title">【问拳头特别版】怪物入侵模式与星之守护</span><span
												class="news-first-desc">本周特别版我们来聊一聊怪物入侵以及星之守护皮肤。</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4583/m3106/201709/638981.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="【话题】WE C9四战皆胜 C D组明日开战"
											onclick="pgvSendClick({hottag:'v2.news.bbs.638981'})"
											target="_blank"><span class="new-type">论坛</span>【话题】WE
												C9四战皆胜 C D组明日开战<span class="date">09/25</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4583/m3106/201709/638979.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="伊芙琳将重做，黑夜的面纱即将揭开"
											onclick="pgvSendClick({hottag:'v2.news.bbs.638979'})"
											target="_blank"><span class="new-type">论坛</span>伊芙琳将重做，黑夜的面纱即将揭开<span
												class="date">09/25</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4583/m3106/201709/638971.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="从s2到准s8千场九尾妖狐的王者攻略"
											onclick="pgvSendClick({hottag:'v2.news.bbs.638971'})"
											target="_blank"><span class="new-type">论坛</span>从s2到准s8千场九尾妖狐的王者攻略<span
												class="date">09/25</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4583/m3106/201709/638969.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="文森特为粉丝了遗愿，小虎UZI勤俭持家"
											onclick="pgvSendClick({hottag:'v2.news.bbs.638969'})"
											target="_blank"><span class="new-type">论坛</span>文森特为粉丝了遗愿，小虎UZI勤俭持家<span
												class="date">09/25</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4583/m3106/201709/638967.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="阿兹尔改行卖炸鸡，克烈的身世之谜"
											onclick="pgvSendClick({hottag:'v2.news.bbs.638967'})"
											target="_blank"><span class="new-type">论坛</span>阿兹尔改行卖炸鸡，克烈的身世之谜<span
												class="date">09/25</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4583/m3106/201709/638019.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="不灭凤凰涅槃，团战势不可挡。"
											onclick="pgvSendClick({hottag:'v2.news.bbs.638019'})"
											target="_blank"><span class="new-type">论坛</span>不灭凤凰涅槃，团战势不可挡。<span
												class="date">09/22</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4583/m3106/201709/638018.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="可萌可萌的妹纸，一起来开黑吧"
											onclick="pgvSendClick({hottag:'v2.news.bbs.638018'})"
											target="_blank"><span class="new-type">论坛</span>可萌可萌的妹纸，一起来开黑吧<span
												class="date">09/22</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4583/m3106/201709/638017.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="【撸阿撸画阿画】羞恥的死法"
											onclick="pgvSendClick({hottag:'v2.news.bbs.638017'})"
											target="_blank"><span class="new-type">论坛</span>【撸阿撸画阿画】羞恥的死法<span
												class="date">09/22</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4583/m3106/201709/638016.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="【话题】你有没有逼疯过你的队友？"
											onclick="pgvSendClick({hottag:'v2.news.bbs.638016'})"
											target="_blank"><span class="new-type">论坛</span>【话题】你有没有逼疯过你的队友？<span
												class="date">09/22</span></a></li>
										<li class="news-item"><a
											href="/webplat/info/news_version3/152/4579/4583/m3106/201709/638014.shtml?ADTAG=lolweb.v2.home"
											class="lnk-tit" title="【防坑大指南】9月22日周免攻略"
											onclick="pgvSendClick({hottag:'v2.news.bbs.638014'})"
											target="_blank"><span class="new-type">论坛</span>【防坑大指南】9月22日周免攻略<span
												class="date">09/22</span></a></li>

									</ul>
								</div>
							</div>
							<a class="news-more"
								href="//lol.qq.com/webplat/info/news_version3/152/4579/m5583/list_1.shtml"
								onclick="pgvSendClick({hottag:'v2.news.btn.more'})"
								target="_blank">阅读更多<em>最新资讯</em></a>
						</div>
						<!--新闻公告 E-->
						<!--英雄/皮肤 S-->
						<div class="home-mod hero">
							<div class="hd">
								<div class="tab hero-tab">
									<ul id="J_heroTab" class="tab-nav hero-nav">
										<li class="current">周免英雄</li>
										<li>最新皮肤</li>
										<li>最新英雄</li>
									</ul>
								</div>
							</div>
							<div class="bd">
								<div id="J_heroFree" class="hero-content hero-free"
									style="display: block">
									<div id="J_freeList" class="free-list clearfix">加载中...</div>
									<div class="free-bottom">
										<span id="J_freeDrag" class="free-drag"><i
											class="icon-free-drag"></i></span> <span id="J_freeDate"
											class="free-time"></span>
									</div>
								</div>
								<div class="hero-content hero-skin" style="display: none">
									<div id="J_skinNew"
										class="hero-new-list hero-skin-list clearfix"></div>
								</div>
								<div class="hero-content hero-new" style="display: none">
									<div id="J_heroNew" class="hero-new-list clearfix">
										加载中...</div>
								</div>
							</div>
							<div class="bottom-go">
								<a class="qt-go"
									onclick="pgvSendClick({hottag:'v2.single.surveyGo'});EAS.ADClick('//lol.qq.com/act/a20160407ymy/index.htm?iSurveyId=1');"
									target="_blank"
									href="//lol.qq.com/act/a20160407ymy/index.htm?iSurveyId=1"><img
									alt="" src="//ossweb-img.qq.com/images/lol/v2/pic-go-qt.jpg"
									width="195" height="70"></a> <a class="mall-go"
									onclick="pgvSendClick({hottag:'v2.single.mallGo'});EAS.ADClick('//lolriotmall.qq.com/index.shtml');"
									target="_blank"
									href="//lolriotmall.qq.com/index.shtml?ADTAG=lolweb.home.recommend"><img
									alt="" src="//ossweb-img.qq.com/images/lol/v2/pic-go-mall.jpg"
									width="195" height="70"></a>
							</div>
							<div class="side-tips-18">
								<i class="icon-18"></i>
								<h5>本游戏适合18岁（含）以上玩家娱乐</h5>
								<p>
									抵制不良游戏 拒绝盗版游戏 注意自我保护 谨防受骗上当<br>适度游戏益脑 沉迷游戏伤身 合理安排时间 享受健康生活
								</p>
							</div>
						</div>
						<!--英雄/皮肤 E-->
						<!--最新推荐 S-->
						<div class="home-mod recommend">
							<div class="tab recommend-top">
								<h3 class="tab-title">最新推荐</h3>
								<ul id="J_recommendTab" class="tab-nav recommend-nav">
									<li class="current">视频推荐</li>
									<li>活动推荐</li>
								</ul>
							</div>
							<div id="J_recommendContent" class="recommend-list">
								<div class="recommend-content" style="display:block">
									<ul id="J_recommendVideo"
										class="recommend-video pv-list clearfix">
									</ul>
									<a class="recommend-more" href="/v/"
										onclick="pgvSendClick({hottag:'v2.recommend.btn.more1'})"
										target="_blank">浏览更多<em>视频内容</em></a>
								</div>
								<div class="recommend-content" style="display:none">
									<ul id="J_recommendAct" class="recommend-act act-list clearfix">
									</ul>
									<!--<a class="recommend-more" href="/web201310/active.shtml" onclick="pgvSendClick({hottag:'v2.recommend.btn.more2'})" target="_blank">浏览更多<em>最新活动</em></a>-->
								</div>
							</div>
						</div>

						<!--最新推荐 E-->
					</div>
					<!--视频中心-->
					<div id="J_video" class="home-slide-item">
						<div id="Jrecom" class="section section1 clearfix ovh">
							<!--轮播 S-->
							<div class="promo-video fl">
								<div id="J_promoVideo" class="promo-video-content">
									<ul id="jRec1" class="promo-video-list">
										<script type="text/html" id="jRec1Temp">
                                            {{each blist as v i}}
                                            <li class="promo-video-item" style="float: left;"><a class="promo-video-link" href="{{v.url}}&e_code=lolweb.videobpromo.r{{i+1}}&ADTAG=lolweb.v2" onclick="LOL_Comm_Log.Web_Video_bPromo('r{{i+1}}',{{v.id}},{{v.subtitle}},'{{v.url}}&e_code=lolweb.videobpromo.r{{i+1}}');" target="_blank"><img class="promo-video-pic" src="{{v.thumb}}" alt=""></a></li>
                                            {{/each}}
                                        </script>
									</ul>
								</div>
								<p class="promo_triggers" id="promo_triggers"></p>
							</div>
							<!--轮播 E-->
							<!--单图 S-->
							<div class="video-recommend fr">
								<ul class="pv-list ovh" id="jRec2">
									<script type="text/html" id="jRec2Temp">
                                        {{each mlist as v i}}
                                        <li><a target="_blank" class="pv-lnk" onclick="LOL_Comm_Log.Web_Video_sPromo('r{{i+1}}',{{v.id}},{{v.subtitle}},'{{v.url}}&e_code=lolweb.videospromo.r{{i+1}}');" href="{{v.url}}&e_code=lolweb.videospromo.r{{i+1}}&ADTAG=lolweb.v2"><img src="{{v.thumb}}" alt=""><span class="pa pv-cover-1"></span><span class="pa pv-cover-ico"></span><span class="shadow1"><i>{{v.time}}</i></span><h5>{{v.title}}</h5></a></li>
                                        {{/each}}
                                    </script>
								</ul>
							</div>
							<!--单图 E-->
						</div>
						<div class="section v-home-mod clearfix ovh">
							<div class="video-recommend fl">
								<div class="tab-sort">
									<h3 class="news-title">最新视频</h3>
									<a href="/v/search.shtml?ADTAG=lolweb.v2" title="查看更多"
										target="_blank" class="title-btn-more"><i></i></a> <a
										href="//bbs.lol.qq.com/forum.php?mod=forumdisplay&fid=315"
										target="_blank" title="我要投稿" class="btn-submission pa">我要投稿</a>
								</div>
								<ul class="pv-list ovh" id="jIndexAllVideo">
									<script type="text/html" id="jIndexAllVideoTemp">
                                        {{each newlist as v i}}
                                        <li><a target="_blank" class="pv-lnk" onclick="LOL_Comm_Log.Web_Video_New('r{{i+1}}',{{v.id}},'{{v.url}}&e_code=lolweb.videonewslist.r{{i+1}}');" href="{{v.url}}&e_code=lolweb.videonewslist.r{{i+1}}&ADTAG=lolweb.v2"><img src="{{v.thumb}}" alt=""><span class="pa pv-cover-1"></span><span class="pa pv-cover-ico"></span><span class="shadow1"><i>{{v.time}}</i></span><h5>{{v.title}}</h5></a></li>
                                        {{/each}}
                                    </script>
								</ul>
							</div>
							<div class="v-rank fr">
								<div class="tab-sort v-rank-top">
									<ul class="switch">
										<li id="jHot1" class="jHot cur"><a
											href="javascript:LWA_VIDEOCENTER.GetIndexHotVideoList(1);">今日视频排行</a></li>
										<li id="jHot2" class="jHot"><a
											href="javascript:LWA_VIDEOCENTER.GetIndexHotVideoList(2);">本周视频排行</a></li>
										<li id="jHot3" class="jHot"><a
											href="javascript:LWA_VIDEOCENTER.GetIndexHotVideoList(3);">本月视频排行</a></li>
									</ul>
								</div>
								<div class="bd v-bd">
									<ol class="v-rank-list jIndexHotVideo" id="jIndexHotVideo1">
										<script type="text/html" id="jIndexHotVideo1Temp">
                                            {{each tpvlist as v i}}
                                            <li>
                                                {{if i < 3}}
                                                <i class="num{{i+1}} spr">{{i+1}}</i>
                                                {{else}}
                                                <i>{{i+1}}</i>
                                                {{/if}}
                                                <a class="v-rank-link" onclick="LOL_Comm_Log.Web_Video_Rank_TPV('r{{i+1}}',{{v.id}},'{{v.url}}&e_code=lolweb.videotpvlist.r{{i+1}}');" href="{{v.url}}&e_code=lolweb.videotpvlist.r{{i}}&ADTAG=lolweb.v2" target="_blank" title="{{v.title}}">{{v.title}}</a>
                                                <span class="v-data-play"><em class="spr"></em>{{v.play}}</span>
                                            </li>
                                            {{/each}}
                                        </script>
									</ol>
									<ol class="v-rank-list jIndexHotVideo" style="display:none;"
										id="jIndexHotVideo2">
										<script type="text/html" id="jIndexHotVideo2Temp">
                                            {{each wpvlist as v i}}
                                            <li>
                                                {{if i < 3}}
                                                <i class="num{{i+1}} spr">{{i+1}}</i>
                                                {{else}}
                                                <i>{{i+1}}</i>
                                                {{/if}}
                                                <a class="v-rank-link" onclick="LOL_Comm_Log.Web_Video_Rank_WPV('r{{i+1}}',{{v.id}},'{{v.url}}&e_code=lolweb.videowpvlist.r{{i+1}}');" href="{{v.url}}&e_code=lolweb.videowpvlist.r{{i}}&ADTAG=lolweb.v2" target="_blank" title="{{v.title}}">{{v.title}}</a>
                                                <span class="v-data-play"><em class="spr"></em>{{v.play}}</span>
                                            </li>
                                            {{/each}}
                                        </script>
									</ol>
									<ol class="v-rank-list jIndexHotVideo" style="display:none;"
										id="jIndexHotVideo3">
										<script type="text/html" id="jIndexHotVideo3Temp">
                                            {{each mpvlist as v i}}
                                            <li>
                                                {{if i < 3}}
                                                <i class="num{{i+1}} spr">{{i+1}}</i>
                                                {{else}}
                                                <i>{{i+1}}</i>
                                                {{/if}}
                                                <a class="v-rank-link" onclick="LOL_Comm_Log.Web_Video_Rank_MPV('r{{i+1}}',{{v.id}},'{{v.url}}&e_code=lolweb.videompvlist.r{{i+1}}');" href="{{v.url}}&e_code=lolweb.videompvlist.r{{i}}&ADTAG=lolweb.v2" target="_blank" title="{{v.title}}">{{v.title}}</a>
                                                <span class="v-data-play"><em class="spr"></em>{{v.play}}</span>
                                            </li>
                                            {{/each}}
                                        </script>
									</ol>
								</div>
							</div>
						</div>
						<div class="section">
							<div class="tab-sort">
								<h3 class="news-title">解说视频</h3>
								<ul class="pa tab-video-list ovh" id="jIndexAuthorUL">
									<li class="cur"><a
										href="javascript:LWA_VIDEOCENTER.ChangeIndexAuthorTab(0,0);">最新</a></li>
									<li><a
										href="javascript:LWA_VIDEOCENTER.ChangeIndexAuthorTab(1,1);">小苍</a></li>
									<li><a
										href="javascript:LWA_VIDEOCENTER.ChangeIndexAuthorTab(2,13);">JY</a></li>

									<li><a
										href="javascript:LWA_VIDEOCENTER.ChangeIndexAuthorTab(3,24);">苦笑</a></li>
									<li><a
										href="javascript:LWA_VIDEOCENTER.ChangeIndexAuthorTab(4,9);">小智</a></li>
									<li><a
										href="javascript:LWA_VIDEOCENTER.ChangeIndexAuthorTab(5,8);">小漠</a></li>

									<li><a
										href="javascript:LWA_VIDEOCENTER.ChangeIndexAuthorTab(6,14);">若风</a></li>
									<li><a
										href="javascript:LWA_VIDEOCENTER.ChangeIndexAuthorTab(7,11);">魔哒蒂斯</a></li>
									<li><a
										href="javascript:LWA_VIDEOCENTER.ChangeIndexAuthorTab(8,4);">Miss</a></li>
									<li><a
										href="javascript:LWA_VIDEOCENTER.ChangeIndexAuthorTab(9,6);">诅咒</a></li>
									<li><a
										href="javascript:LWA_VIDEOCENTER.ChangeIndexAuthorTab(10,29);">七号＆笑笑</a></li>

									<li><a
										href="javascript:LWA_VIDEOCENTER.ChangeIndexAuthorTab(11,10);">yuki</a></li>
									<li><a
										href="javascript:LWA_VIDEOCENTER.ChangeIndexAuthorTab(12,3);">小楼</a></li>

									<li><a
										href="javascript:LWA_VIDEOCENTER.ChangeIndexAuthorTab(13,2);">小米</a></li>
									<li><a
										href="javascript:LWA_VIDEOCENTER.ChangeIndexAuthorTab(14,25);">枪炮玫瑰</a></li>
									<li><a
										href="javascript:LWA_VIDEOCENTER.ChangeIndexAuthorTab(15,35);">天策</a></li>
									<li><a
										href="javascript:LWA_VIDEOCENTER.ChangeIndexAuthorTab(16,5);">伊芙蕾雅</a></li>
								</ul>
								<a id="jIndexAuthorULink"
									href="//lol.qq.com/v/search.shtml?p4=9999&ADTAG=lolweb.v2"
									title="查看更多" target="_blank" class="title-btn-more"><i></i></a>
							</div>
							<div class="bd v-bd">
								<ul class="pv-list pv-star-list ovh" id="jIndexAuthorVideo">
									<script type="text/html" id="jIndexAuthorVideoTemp">
                                        {{each newlist as v i}}
                                        {{if i < 12}}
                                        <li title="{{v.title}}"><a class="v-link" href="{{v.sUrl}}&ADTAG=lolweb.v2" onclick="LOL_Comm_Log.Web_Video_Author('author{{v.type}}',{{v.id}},'{{v.sUrl}}');" target="_blank"><img src="{{v.thumb}}" alt=""><span class="shadow1"></span><span class="v-meta"><span class="v-author">{{v.authortit}}</span><span class="v-time">{{v.time}}</span></span><span class="shadow2"></span><i class="icon-v"></i></a><a class="v-face-link" href="{{v.authorurl}}&ADTAG=lolweb.v2" title="前往{{v.authortit}}的解说主页" target="_blank"><span class="v-face"><img class="pic-face" src="{{v.authorimg}}" width="40" height="40" alt=""></span></a><h5 class="v-name"><a href="{{v.sUrl}}&ADTAG=lolweb.v2" onclick="LOL_Comm_Log.Web_Video_Author('author{{v.type}}',{{v.id}},'{{v.sUrl}}');" title="{{v.title}}" target="_blank">{{v.title}}</a></h5><div class="v-info"><span class="v-time">{{v.sDate}}</span><span class="v-data-play"><i class="icon-s-play"></i>{{v.play}}</span></div></li>
                                        {{/if}}
                                        {{/each}}
                                    </script>
								</ul>
							</div>
							<a href="/v/?ADTAG=lolweb.v2" title="浏览更多视频内容"
								class="read-more-btn" target="_blank">浏览更多视频内容</a>

						</div>
					</div>
					<!--赛事中心-->
					<div id="J_match" class="home-slide-item">
						<!--赛程表-->
						<div class="match-list">
							<div class="match-list-swiper swiper-container">
								<ul class="swiper-wrapper clearfix">
									<!-- JS插入 -->
								</ul>
							</div>
							<a class="left-btn" id="left-btn" href="javascript:"><i></i></a>
							<a class="right-btn" id="right-btn" href="javascript:"><i></i></a>
						</div>
						<!--赛事轮播/直播 赛事资讯-->
						<div class="match-cont clearfix">
							<!--赛事轮播-->
							<div class="match-promo">
								<ul id="promoInner_match" class="match-promo-list">
									<!-- JS插入 -->
								</ul>
								<div id="promoTrigger_match" class="match-promo-trigger">
									<!-- JS插入 -->
								</div>
							</div>
							<!--赛事资讯-->
							<div class="match-information">
								<div class="match-title clearfix">
									<span></span>
									<p>赛事资讯</p>
									<a href="//lpl.qq.com/es/news.shtml" target="_blank"
										class="match-more">...</a>
								</div>
								<span id="static_news"> <!-- JS插入 -->
								</span>
								<ul id="jj_news">
									<!-- JS插入 -->
								</ul>
							</div>
							<!--赛事竞猜 官方售票-->
							<div class="match-about-btn">
								<a href="//lpl.qq.com/es/guess/"
									onclick="pgvSendClick({hottag:'v2.match.sidenav.guess'})"
									target="_blank" class="match-guessing-competition"><i></i>
									<p>赛事竞猜</p></a> <a href="//lpl.qq.com/es/ticket.shtml"
									onclick="pgvSendClick({hottag:'v2.match.sidenav.ticket'})"
									target="_blank" class="match-buy-btn"><i></i>
									<p>官方售票</p></a> <a
									href="//lolriotmall.qq.com/act/a20170608tejia/index.html"
									onclick="pgvSendClick({hottag:'v2.match.sidenav.clothes'})"
									target="_blank" class="match-buy-clothes"><i></i>
									<p>队服售卖</p></a>
							</div>
						</div>
						<!--最强战力 积分榜-->
						<div class="match-cont clearfix">
							<!--最强战力-->
							<div class="match-strongest">
								<div class="match-title clearfix">
									<span></span>
									<p>最强战力</p>
									<a href="//lpl.qq.com/#most_value_players_tab" target="_blank"
										class="match-more">...</a>
								</div>
								<ul class="clearfix" id="the_best_players">
									<li><img src="images/ZQZL_1_Rookie.png" width="173"
										height="173"> <i> <img
											src="http://shp.qpic.cn/lolwebvideo/201501/998cb5f6cc78749b5d2c395a61e02c3f/0"
											width="32" height="32">
									</i>
										<p class="match-player-name">Rookie</p>
										<p>
											<em>中单</em><span>战力：68.729</span>
										</p> <a href="//lpl.qq.com/es/player_detail.shtml?mbid=63"
										target="_blank" class="match-link-player"></a></li>
									<li><img src="images/zqzl_2_Vasilii.png" width="173"
										height="173"> <i> <img
											src="http://shp.qpic.cn/lolwebvideo/201501/1fafdaa5932af6a724771fcc6b709a68/0"
											width="32" height="32">
									</i>
										<p class="match-player-name">Vasilii</p>
										<p>
											<em>ADC</em><span>战力：68.465</span>
										</p> <a href="//lpl.qq.com/es/player_detail.shtml?mbid=1467"
										target="_blank" class="match-link-player"></a></li>
									<li><img src="images/zqzl_3_Scout.png" width="173"
										height="173"> <i> <img
											src="http://shp.qpic.cn/lolwebvideo/201501/a74ab2fc8201d0c167e8a66d88004759/0"
											width="32" height="32">
									</i>
										<p class="match-player-name">Scout</p>
										<p>
											<em>中单</em><span>战力：67.673</span>
										</p> <a href="//lpl.qq.com/es/player_detail.shtml?mbid=200"
										target="_blank" class="match-link-player"></a></li>
									<li><img src="images/zqzl_4_Mystic.png" width="173"
										height="173"> <i> <img
											src="http://shp.qpic.cn/lolwebvideo/201501/1ce891be080b0e9246a06638250a5117/0"
											width="32" height="32">
									</i>
										<p class="match-player-name">Mystic</p>
										<p>
											<em>ADC</em><span>战力：67.646</span>
										</p> <a href="//lpl.qq.com/es/player_detail.shtml?mbid=58"
										target="_blank" class="match-link-player"></a></li>
									<li><img src="images/zqzl_5_Icon.png" width="173"
										height="173"> <i> <img
											src="http://shp.qpic.cn/lolwebvideo/201501/3be15c042ebba67a2cd876c408c24fe9/0"
											width="32" height="32">
									</i>
										<p class="match-player-name">Icon</p>
										<p>
											<em>中单</em><span>战力：66.213</span>
										</p> <a href="//lpl.qq.com/es/player_detail.shtml?mbid=355"
										target="_blank" class="match-link-player"></a></li>
								</ul>
							</div>
							<img>
							<!--积分榜-->
							<div class="match-integral">
								<div class="match-title clearfix">
									<span></span>
									<p>LPL积分榜</p>
									<ul style="display: none">
										<li class="on">LPL</li>
									</ul>
								</div>
								<div class="match-rank clearfix" id="group_bar">
									<!-- JS插入 -->
								</div>
								<div class="match-integral-box">
									<div class="match-group-box">
										<ul class="clearfix">
											<li>排名</li>
											<li>战队</li>
											<li>胜负</li>
											<li>积分</li>
										</ul>
										<div class="match-group-table">
											<table id="team_score_board_A" style="display: none;">
												<!-- JS插入 -->
											</table>
											<table id="team_score_board_B" style="display: none;">
												<!-- JS插入 -->
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--赛事视频-->
						<div class="match-video">
							<div class="match-title clearfix">
								<span></span>
								<p>赛事视频</p>
								<ul id="videoSortList">
									<!-- JS插入 -->
								</ul>
								<a href="//lpl.qq.com/es/video.shtml" target="_blank"
									class="match-more">...</a>
							</div>
							<div class="match-video-content">
								<ul class="match-type clearfix" id="sVideoSortList"
									style="display: none">
									<!-- JS插入 -->
								</ul>
								<ul class="match-type clearfix" id="sVideoSortList-1"
									style="display: none">
									<!-- JS插入 -->
								</ul>
								<div class="match-video-list">
									<ul class="clearfix" id="video_list">
										<!-- JS插入 -->
									</ul>
									<a class="match-more-btn" href="//lpl.qq.com/index.shtml"
										target="_blank"><span>浏览更多赛事内容</span></a>
								</div>
							</div>
						</div>
					</div>
					<!--活动中心-->
					<div id="J_act" class="home-slide-item">
						<!--<div class="activity-header">-->
						<!--<a href="javascript:void(0);" title="上一页" class="btn-slider btn-slider-l"></a>-->
						<!--<a href="javascript:void(0);" title="下一页" class="btn-slider btn-slider-r"></a>-->
						<!--<ul class="img-slider" id="img-slider">-->
						<!--<li><img src="//ossweb-img.qq.com/images/lol/v2/lbt.jpg" alt="" /><a href="javascript:void(0);" title="查看详情"></a></li>-->
						<!--<li><img src="//ossweb-img.qq.com/images/lol/v2/lbt.jpg" alt="" /><a href="javascript:void(0);" title="查看详情"></a></li>-->
						<!--<li><img src="//ossweb-img.qq.com/images/lol/v2/lbt.jpg" alt="" /><a href="javascript:void(0);" title="查看详情"></a></li>-->
						<!--<li><img src="//ossweb-img.qq.com/images/lol/v2/lbt.jpg" alt="" /><a href="javascript:void(0);" title="查看详情"></a></li>-->
						<!--<li><img src="//ossweb-img.qq.com/images/lol/v2/lbt.jpg" alt="" /><a href="javascript:void(0);" title="查看详情"></a></li>-->
						<!--</ul>-->
						<!--<p>-->
						<!--<a href="javascript:void(0);" class="active"></a>-->
						<!--<a href="javascript:void(0);"></a>-->
						<!--<a href="javascript:void(0);"></a>-->
						<!--<a href="javascript:void(0);"></a>-->
						<!--<a href="javascript:void(0);"></a>-->
						<!--</p>-->
						<!--</div>-->
						<div class="activity-main">
							<div class="act-tab">
								<ul>
									<li onclick="LW_ActCenter.LoadActive()" class="active"><i>全部活动</i></li>
									<li onclick="LW_ActCenter.LoadActive(1)"><span>正在进行</span></li>
									<li onclick="LW_ActCenter.LoadActive(-1)"><span>已经结束</span></li>
									<li onclick="LW_ActCenter.LoadActive(999)"><span>长期活动</span></li>
									<li onclick="LW_ActCenter.LoadMyActive()"><span>我收藏的</span></li>
								</ul>
								<!-- <ul class="act-tab-r">
                                    <li><span>本周热门</span></li>
                                    <li><span>本月热门</span></li>
                                </ul> -->
							</div>
							<div class="act-list">
								<ul class="clearfix" id="ActList">
									<script type="text/html" id="ActListTemp">
                                        {{each ActList as v i}}
                                        <li>
                                            <a class="act-img" href="{{v.sActDetailUrl}}&ADTAG=lolweb.v2" title="{{v.sName}}">
                                                <img alt="{{v.sName}}" src="{{v.sBigImgUrl}}">
                                                <span class="act-num">已有<strong class="act-num-f">{{v.iJoin}}</strong>人关注</span>
                                            </a>
                                            <div class="act-innr">
                                                <h4 class="act-tit w-s-n"><a href="{{v.sActDetailUrl}}&ADTAG=lolweb.v2" title="{{v.sName}}">{{v.sName}}</a></h4>
                                                <p class="act-date w-s-n">活动时间：<span>{{v.dtBegin}} ~ {{v.dtEnd}}</span></p>
                                                <p class="act-intro w-s-n">{{v.sDescripion}}</p>
                                                {{if v.iStatus == 1}}
                                                <div class="act-times act-processing">{{v.iDate}}天后结束</div>
                                                {{/if}}
                                                {{if v.iStatus == 999}}
                                                <div class="act-times act-long">长期活动</div>
                                                {{/if}}
                                                {{if v.iStatus == -1}}
                                                <div class="act-times act-over">已结束</div>
                                                {{/if}}
                                                {{if v.is_Collect == 0}}
                                                <a href="javascript:;" onclick="LW_ActCenter.CollectAction('add',{{v.iActId}},this);" class="act-collection collected"></a>
                                                {{else}}
                                                <a href="javascript:;" onclick="LW_ActCenter.CollectAction('del',{{v.iActId}},this);" class="act-collection"></a>
                                                {{/if}}
                                            </div>
                                        </li>
                                        {{/each}}
                                    </script>
								</ul>
								<div id="J_collectTips" class="collect-tips"
									style="display: none">亲，您暂时还未收藏任何活动哦~</div>
								<!--<a href="/web201310/active.shtml&ADTAG=lolweb.v2" title="查看更多活动" class="act-more" target="_blank">查看更多活动</a>-->
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>


	<!-- 视频弹窗 S -->
	<!--<div id="Video" class="pop-top-video" style="display:none">-->
	<!--<div id="VideoContent">加载中...</div>-->
	<!--<a href="javascript:hidDialogs()" class="pop-close">&times;</a>-->
	<!--</div>-->
	<!-- 视频弹窗 E -->

	<div id="setNum" data-num="7.18"
		data-link="http://lol.qq.com/webplat/info/news_version3/152/4579/4580/m3106/201709/634623.shtml"
		data-pic="" style="display:none;"></div>


	<div id="J_popLive" class="popup pop-act" style="display: none">
		<a href="javascript:ClosePop();" class="pop-act-close">&times;</a> <a
			id="J_popLink" class="pop-link"
			href="//lol.qq.com/act/a20170520prxd/?ADTAG=lolweb.v2.popup"
			target="_blank"></a>
		<div id="J_popLiveIframe" class="pop-act-live"></div>
	</div>
	<script>
		var homePage = true;
	</script>
	<!-- 视频弹窗 S -->
	<div id="Video" class="pop-top-video" style="display:none">
		<div id="VideoContent">加载中...</div>
		<a href="javascript:hidDialogs()" class="pop-close">&times;</a>
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
				<li class="f9">COPYRIGHT &copy; 1998 - 2017 TENCENT. ALL RIGHTS
					RESERVED.</li>
				<li class="f9">&copy; 2012 Riot Games, Inc. ALL RIGHTS
					RESERVED.</li>
				<li>文网进字[2011] 004号 &amp; ISBN 978-7-89989-145-2<span
					class="f9 plr10">|</span><a target="_blank" class="c4F6"
					href="http://game.qq.com/culture2.htm
">新出网证（粤）字010号</a><span
					class="f9 plr10">|</span><a target="_blank" class="c4F6"
					href="http://game.qq.com/culture.htm
">粤网文【2017】6138-1456号</a></li>
			</ul>
		</div>
	</div>
	<script src="../js/eas.js"></script>
	<script src="../js/milo.js"></script>
	<script src="js/index.js"></script>
	<script src="../js/stats.js" charset="utf-8"></script>
	<script src="../js/ping_tcss_ied.js"></script>
	<script>
		if (typeof (pgvMain) == 'function') {
			pgvMain();
		}
	</script>
	<!--[if !IE]>|xGv00|285d1978c5e2f653c352b0df1c9ace9c<![endif]-->

</body>
</html>
<!--[if !IE]>|xGv00|941c6505ee24df695a00dd0e22e8e1a0<![endif]-->