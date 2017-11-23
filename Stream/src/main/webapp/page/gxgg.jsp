<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8" />
<meta name="robots" content="all" />
<meta http-equiv="x-ua-compatible" content="IE=edge">
<meta name="Copyright" content="TENCNET" />
<meta name="author" content="Tencent-TGideas" />
<meta name="keywords"
	content="英雄联盟,lol,league of legends,lol攻略,lol视频,lol视频攻略,lol英雄资料,lol战争学院,小仓解说视频,101战争学院,英雄" />
<meta name="description" content="英雄联盟101战争学院，推荐攻略，视频攻略，小仓解说视频" />
<!-- 设计：帅呆 | 重构：小倪 | 创建：20170320 | 团队博客：tgideas.qq.com -->
<link href="./css/public.css" rel="stylesheet" />
<script language="javascript">
	if ("" == 1) {
		window.location.href = "";
	}
</script>
<link href="./css/gonggao.css" rel="stylesheet" />
<title>10月17日凌晨4点版本停机更新公告-英雄联盟官方网站-腾讯游戏</title>
</head>

<body>
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
									href="/web201310/newbie-what.shtml" target="_blank">新手指引</a> <a
									class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.info.heros'})"
									href="/web201310/info-heros.shtml" target="_blank"><i
										class="icon-hot"></i>资料库</a> <!--<a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.info.guides'})" href="/web201310/101/guides.shtml">战争学院</a>-->
									<a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.info.guides'})"
									href="/guide/" target="_blank">攻略中心</a> <a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.info.rgm'})"
									href="/act/a20160412rgm/" target="_blank">模式实验室</a> <a
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
									href="//lolriotmall.qq.com/index.html?ADTAG=lol.rk.gw.top&adunionsid=gwtop"
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
									href="//kf.qq.com/cgi-bin/SuperLOL" target="_blank">在线客服</a> <a
									class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.user.video'})"
									href="/v/" target="_blank">视频中心</a> <!--<a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.user.active'})" href="/web201310/active.shtml" target="_blank"><i class="icon-hot"></i>活动中心</a>-->
									<a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.user.bbs'})"
									target="_blank" href="//bbs.lol.qq.com/forum.php">官方论坛</a> <a
									class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.user.weixin'})"
									href="/act/a20160425wxlol/" target="_blank">官方微信</a> <a
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
									target="_blank" href="/act/a20151118fh/"><i
										class="icon-hot"></i>封号查询</a> <a class="sub-nav-lnk"
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
						<!--已登录已绑定大区 S-->
						<div id="J_userHover" class="top-user-info" style="display: none">
							<div class="top-user-side">
								<span class="user-mask"></span> <img class="jUserIcon" src="">
								<span id="J_userRankNo" class="top-user-rank">30</span>
							</div>
							<div class="top-user-main">
								<h5 class="top-user-name" id="jUserName"></h5>
								<div class="top-user-area">
									<a class="link-switch-area"
										href="javascript:LW201310_Userinfo.userLogin();"
										id="jUserArea"></a><a class="link-loginout"
										href="javascript:LW201310_Userinfo.userLogout();">注销</a>
								</div>
							</div>
						</div>
						<!--已登录已绑定大区 E-->
						<!--未登录 S-->
						<div class="top-user-info" style="display: none">
							<div class="top-user-side">
								<span class="user-mask"></span> <img id="jUserIcon"
									src="//ossweb-img.qq.com/images/lol/v2/personal/avatar/default.png">
							</div>
							<div class="top-user-main">
								<div class="top-user-unlogin">
									亲爱的召唤师，欢迎<em onclick="LW201310_Userinfo.userLogin();">登录</em>
								</div>
								<div class="top-user-tips">登录后查看自己的战绩、资产、声望值等</div>
							</div>
							<a class="btn-user-drop" href=""></a>
						</div>
						<!--未登录 S-->
						<!--已登录未绑定大区 S-->
						<div class="top-user-info" style="display: none">
							<div class="top-user-side">
								<span class="user-mask"></span> <img class="jUserIcon"
									src="//ossweb-img.qq.com/images/lol/v2/personal/avatar/default.png">
							</div>
							<div class="top-user-main">
								<div class="top-user-unlogin">
									您已登录，请<a href="javascript:LW201310_Userinfo.userLogin();">绑定大区</a>或<a
										href="javascript:LW201310_Userinfo.userLogout();">注销</a>
								</div>
								<div class="top-user-tips">绑定大区后查看所在大区的战绩、资产、声望值等</div>
							</div>
							<a class="btn-user-drop" href=""></a>
						</div>
						<!--已登录未绑定大区 E-->
						<div id="J_userDrop" class="top-user-drop"
							style="visibility: hidden">
							<div id="J_dropTips" class="top-user-drop-tips">登录并且绑定大区后才可查看您的具体信息哦~（包括战绩、资产、声望值等）</div>
							<div id="J_dropContent" class="top-user-drop-content clearfix"
								style="display: none">
								<div class="pic">
									<img id="J_rankPic"
										src="//ossweb-img.qq.com/images/lol/v2/personal/rank/default.png"
										width="110" height="110" alt=""> <em id="jUserRank">暂无</em>段位
								</div>
								<div class="info">
									<div class="top-user-item">
										<strong id="jUserGames">0</strong>总场数
									</div>
									<div class="top-user-item">
										<strong id="jUserRP">0</strong>点券
									</div>
									<div class="top-user-item">
										<strong id="jUserIP">0</strong>金币
									</div>
									<div class="top-user-item">
										<strong id="jUserRS">0</strong>声望值
									</div>
								</div>
							</div>
							<a class="top-link-personal" href="/web201310/personal.shtml"
								target="_blank">进入个人中心</a>
						</div>
					</div>
				</div>
			</div>
			<!--TOP E-->


			<div class="header-inner layout">
				<div class="logo">
					<a href="/">英雄联盟</a>
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
						href="//lpl.qq.com/es/2017worlds/?ADTAG=lolweb.v2.act"
						onclick="pgvSendClick({hottag:'v2.activity.btn.link'})"
						target="_blank">查看详情</a>
				</div>
				<!--当前活动 E-->

				<div id="J_version" class="top-version">
					当前游戏版本：<em>Ver ---</em> <a class="top-version-link" href=""
						onclick="pgvSendClick({hottag:'v2.version.btn.link'})"
						target="_blank">版本详情</a>
				</div>

			</div>
		</div>
		<!--[if !IE]>|xGv00|9f88f36707d1676cd1a0e91d4b729928<![endif]-->
		<div class="layout mainer">
			<div id="Navi" class="navi">
				<i class="commspr commico-crumbs"></i> <a href="/main.shtml">英雄联盟首页</a>
				<i class="commspr commico-rrow"></i> <a
					href="/webplat/info/news_version3/152/22006/m14286/list_1.shtml">版本中心</a>
				<i class="commspr commico-rrow"></i> <span>新闻正文</span>
			</div>
			<div class="verbox clearfix verdefailbox">
				<div class="verright">
					<h2 class="newstitle" title="10月17日凌晨4点版本停机更新公告">10月17日凌晨4点版本停机更新公告</h2>
					<div class="borline">
						<div class="artinfo clearfix">
							<div class="infoleft">
								<!-- 15618492027479.jpg -->
								<span class="author" date="游戏版本7.20"
									pic="../images/1506404155.jpg" hot="0">${notic.noticUser}<!-- 英雄联盟运营团队 --></span>&#12288;时间：<strong
									id="infoTime"><fmt:formatDate value="${notic.noticDate}" pattern="yyyy-MM-dd"/><!-- 2017-10-16 18:45:19 --></strong>&#12288;|&#12288;字体：【<a
									class="cgray" href="javascript:zoom(16)">大</a> <a class="cgray"
									href="javascript:zoom(14)">中</a> <a class="cgray"
									href="javascript:zoom(12)">小</a>】
							</div>
							<div id="tg-sns"></div>
						</div>
					</div>

					<div id="defailVerNav" style="display:none"></div>
					<div id="article" class="article">
						<p style="text-align: center;">
							<img src="./images/${notic.noticImg}" alt="" /><!-- 289491465216817.jpg -->
						</p>
						<p>亲爱的召唤师：</p>
						<p>
							&nbsp; &nbsp; &nbsp;
							${notic.noticContent}
						<!-- 	LOL将在10月17日3点关闭排位赛入口(不影响已经在进行中的对局)，凌晨4点全区停机维护，更新7.20版本，预计停机时间为<span
								style="color: #ff0000;">04：00-12：00</span>。 -->
						</p>
						<blockquote>
							<p>
								如果你感觉到某人就在身后悄悄跟着你，你可没有疯掉。伊芙琳在本次新版得到了更新，寡妇制造者痛苦之拥以全新的姿态回归。你发现自己被【憎恨之刺】锁定了?让我们来助你一臂之力。</p>
							<p>
								在平衡改动方面，7.20版本相较于上个版本改动较少。目前我们正在努力进行符文重铸的准备工作，考虑到英雄联盟即将出现剧烈变动，我们已经预先放出了一些新版内容作为长期工作，例如下方【斯特拉克的挑战护手】的改动。</p>
							<p>这就是本次新版的所有内容!祝你在召唤师峡谷好运连连，尤其是当你因为玩英雄联盟或观看全球总决赛而失眠时。</p>
						</blockquote>
						<h3>英雄</h3>
						<h4 style="text-align: left;">
							<em><img src="./images/65861468265060.jpg" alt="" width="64"/>痛苦之拥
								伊芙琳</em>
						</h4>
						<p>
							<span style="color: #ff0000;">已在版本内，即将放出!如想了解更多，可查阅以下文章：</span>
						</p>
						<p>
							<span style="color: #0000ff;"> <a style="color: #0000ff;"
								href="http://lol.qq.com/v/detail.shtml?id=73059&amp;e_code=lolweb.videosearch.r13"
								target="_blank">新英雄预告</a></span>
						</p>
						<p>
							<span style="color: #0000ff;"> <a style="color: #0000ff;"
								href="http://lol.qq.com/act/a20170928evelynn/index.html?PcacheTime=1508145810"
								target="_blank">新英雄揭秘</a></span>
						</p>
						<p>
							<span style="color: #0000ff;"> <a style="color: #0000ff;"
								href="http://yz.lol.qq.com/zh_CN/story/evelynn-color-story/"
								target="_blank">新英雄故事</a></span>
						</p>
						<p>
							<span style="color: #0000ff;"> <a style="color: #0000ff;"
								href="http://yz.lol.qq.com/zh_CN/story/champion/evelynn/"
								target="_blank">新英雄传记</a></span>
						</p>
						<p>
							<span style="color: #0000ff;"> <a style="color: #0000ff;"
								href="http://lol.qq.com/v/detail.shtml?id=74272&amp;e_code=lolweb.videosearch.r1"
								target="_blank">新英雄介绍视频</a></span>
						</p>
						<p>还想了解更多?进入伊芙琳的英雄专页来查看她全新高清基础造型和皮肤原画吧!</p>
						<c:forEach var="hero" items="${hList}" varStatus="i">
								<h4>
								<!-- Brand.png -->	<em><img src="./images/${hero.img}" alt="Brand" width="64"
										height="64" />${hero.names}<!-- 复仇焰魂 布兰德 --></em>
								</h4>
								<p>
									<span style="color: #ff0000;">${hero.title1}<!-- 如果布兰德击杀了一个受【炽热之焰】影响的单位，他将获得法力值。 --></span>
								</p>
								<blockquote>
									<p>
										${hero.title2}<!-- 我们已经有一段时间没有看到布兰德在中路熔化对手了。法力值是其中一个重要原因：法力值的高消耗让他在下路对敌人进行骚扰时需要有所顾忌，但单人路的布兰德不可避免的需要消耗法力值，因为他需要清理兵线。为我们的复仇焰魂自带一个【多兰之戒】的被动应该能让他更加持久，同时也不至于让下路漫天大火。当然，这并不会解决布兰德的所有问题，但对于重燃他在中路的战魂而言是极为重要的一步。 --></p>
								</blockquote>
								<c:forEach var="skill" items="${slist[i.index]}">
											<p>
												<!-- BrandP.png --><img src="./images/${skill.img}" alt=""><strong>${skill.names}<!-- 被动-炽热之焰 --></strong>
											</p>
											<p>${skill.title1}<!-- 【全新】：当布兰德击杀了一个受【炽热之焰】影响的单位后，他将获得6/8/10/12/14/16/18
												(于1/3/6/9/12/15/18级)
												法力值。(如果布兰德秒杀了一个单位而未导致【炽热之焰】生效，那么布兰德将无法获得法力值返还) --></p>
								</c:forEach>
									<p>
									
										<strong><span style="color: #ff0000;">高玩点评：</span>${hero.comen}<!-- 火人技能蓝耗都很较高，后续W先上被动，然后E扩散清兵能回蓝，对线能力增强 --></strong>
									</p>
						</c:forEach>
						<!-- <h4>
							<em><img src="./images/Ornn.png" alt="Ornn" width="64"
								height="64">山隐之焰 奥恩</em>
						</h4>
						<p>
							<span style="color: #ff0000;">W现在将造成最大生命值百分比伤害，而不是当前生命值。E在碰撞地形时更加可靠。R再激活时不再需要施法时间。</span>
						</p>
						<blockquote>
							<p>
								奥恩自上线以来便走了很长时间的弯路，今天虽然我们不打算对他进行大规模的能力转移，但我们想要强调他目前许多的不足。将【风箱炎息】从当前生命值调整为最大生命值将让奥恩在终结低血量敌人时不再感觉像是一场不可能的挑战。此外，我们还发现在许多奇怪的场合下【炽烈冲锋】会强行掠过地形，尽管这看起来像是一记非常稳妥的地形冲撞。同样，当奥恩重新引导神灵让他与敌人来次弗雷尔卓德的经典亲密接触时，【熔铸之神的召唤】变得更加平滑了。</p>
						</blockquote>
						<p>
							<img src="./images/OrnnW.png" alt=""><strong>W风箱炎息<br></strong>&nbsp;
							&nbsp; &nbsp; 伤害：15/17.5/20/22.5/25%目标当前生命值 →12/14/16/18/20%
							目标最大生命值
						</p>
						<p>
							<img src="./images/OrnnE.png" alt=""><strong>E炽烈冲锋<br></strong>&nbsp;
							&nbsp; &nbsp; 地形碰撞距离：奥恩的命中框体加上100额外距离 →150额外距离
						</p>
						<p>
							<img src="./images/OrnnR.png" alt=""><strong>R熔铸之神的召唤<br></strong>&nbsp;
							&nbsp; &nbsp;【已移除】撞击岩浆元素不再需要0.35秒的施法时间
						</p>
						<p>
							<strong><span style="color: #ff0000;">高玩点评：</span>W从当前生命百分比伤害，改成最大生命百分比，大大加强了残血击杀和后期对坦克的伤害。后期肉装也会有一定输出能力，E和R更容易命中，整体加强</strong>
						</p> -->
						
						
						<h4>
							<em><img src="./images/Graves.png" alt="Graves" width="64"
								height="64">法外狂徒 格雷福斯</em>
						</h4>
						<p>
							<span style="color: #ff0000;">生命值回复增加。Q的首次射击收益增加。</span>
						</p>
						<blockquote>
							<p>
								格雷福斯并未在他应该领先的场景中获得领先地位。我们的法外狂徒先生持续在游戏前期被赶超，也无法滚起雪球来主宰游戏。随着生命值和伤害的略微强化，格雷福斯应该能够在没有完美的器械下也能清理野区——并且清理速度也会变快，让他能够适当的受益。</p>
						</blockquote>
						<p>
							<strong>基础属性<br></strong>&nbsp; &nbsp; &nbsp; 生命值回复：1.34
							(每5秒6.67)→1.6 (每5秒8)
						</p>
						<p>
							<img src="./images/GravesQLineSpell.png" alt=""><strong>Q穷途末路<br></strong>&nbsp;
							&nbsp; &nbsp; 首次射击：0.8额外攻击力→1.0额外攻击力
						</p>
						<p>
							<strong><span style="color: #ff0000;">高玩点评：</span>生命回复和Q的第一段伤害小加强</strong>
						</p>
						<h4>
							<em><img src="./images/Karma.png" alt="Karma" width="64"
								height="64">天启者 卡尔玛</em>
						</h4>
						<p>
							<span style="color: #ff0000;">击中敌人后梵咒冷却时间返还提高。</span>
						</p>
						<blockquote>
							<p>
								精通卡尔玛的其中一个关键就是在每个场合下都能充分利用梵咒的技能增效，伴随着本次的改动，她将能够更频繁的这么去做。只要卡尔玛能够击中敌方英雄，她就能在游戏后期更多的使用梵咒。</p>
						</blockquote>
						<!--  -->
						<p>
							<img src="./images/Karma_Passive.png" alt=""><strong>被动-聚能之炎<br></strong>&nbsp;
							&nbsp; &nbsp;梵咒冷却缩减：每击中一个英雄2/2.5/3秒(普攻1/1.25/1.5秒) →
							每击中一个英雄2/3/4秒(普攻1/1.5/2秒)
						</p>
						<p>
							<strong><span style="color: #ff0000;">高玩点评：</span>减少了中后期被动刷新的时间，团战放R的次数增多。小加强</strong>
						</p>
						
						<h4>
							<em><img src="./images/TahmKench.png" alt="TahmKench"
								width="64" height="64">河流之王 塔姆</em>
						</h4>
						<p>
							<span style="color: #ff0000;">被动伤害提高，更早获得收益。塔姆现在可以更快地吐出他所吞噬的目标了。【深渊潜航】不再短暂地锁定塔姆，导致他无法施放【大快朵颐】。</span>
						</p>
						<blockquote>
							<p>
								塔姆因为【大快朵颐】和【深渊潜航】一些诡异的限制而无法获得完美发挥，也让他无法做出快速选择。将这些限制放宽松将让河流之王获得非常必要的能力提升。另外，我们还给予了塔姆一个更加直接的增强，那就是提高【培养品味】的伤害，尤其是在游戏早期，他能更快的最大化伤害。</p>
						</blockquote>
						<p>
							<strong>被动-培养品味</strong>
						</p>
						<p>
							<img src="./images/TahmKench_P.png" alt="">每层伤害：1/1.25/1.5%
							塔姆的最大生命值(于1/11/16级) →1.25/1.5/1.75%塔姆的最大生命值(于1/7/13级)<br>&nbsp;
							&nbsp; &nbsp; 最大伤害：3/3.75/4.5% 塔姆的最大生命值 →3.75/4.5/5.25% 塔姆的最大生命值
						</p>
						<p>
							<img src="./images/TahmKenchW.png" alt=""><strong>W大快朵颐<br></strong>&nbsp;
							&nbsp; &nbsp; 喷吐锁定：2秒? 1秒<br>&nbsp; &nbsp; &nbsp;
							修复了一个关于塔姆【巨舌鞭笞】+【大快朵颐】连招的BUG：如果【巨舌鞭笞】伤害足以击杀目标小兵，喷吐出来的小兵无法造成任何效果。
						</p>
						<p>
							<img src="./images/TahmKenchNewR.png" alt=""><strong>R深渊潜航<br></strong>&nbsp;
							&nbsp; &nbsp;【已移除】：进行【传送】后，【大快朵颐】不再锁定1秒
						</p>
						<p>
							<strong><span style="color: #000000;"><span
									style="color: #ff0000;">高玩点评：</span>被动伤害提高，且是在前中期就获得增强收益，提高了对线能力。W吐出人更快，R后也能更快释放W，整体加强</span></strong>
						</p>
						<h4>
							<em><img src="./images/Azir.png" alt="Azir" width="64"
								height="64">沙漠皇帝 阿兹尔</em>
						</h4>
						<blockquote>
							<p>
								阿兹尔的更新看起来挺顺利。但我们也会以长期项目的眼光来继续关注这件事情，但与此同时，我们也改善了【沙兵现身】全新的攻速增益视觉效果。</p>
						</blockquote>
						<p>
							<strong>综合<br></strong>&nbsp; &nbsp; &nbsp;
							在召唤出第三位沙兵后，阿兹尔所有皮肤所获得攻速增益视觉特效获得改善。
						</p>
						<h4>
							<em><img src="./images/Taliyah.png" alt="Taliyah" width="64"
								height="64">岩雀 塔莉垭</em>
						</h4>
						<p>
							<img src="./images/TaliyahWVC.png" alt=""><strong>W岩突<br></strong>&nbsp;
							&nbsp; &nbsp; 施法指示器得到调整，现在它将展示碰撞的范围效果，而不只是碰撞的方向。
						</p>
						<h4>
							<em><img src="./images/Janna.png" alt="Janna" width="64"
								height="64">7.19版本迦娜中途更新</em>
						</h4>
						<blockquote>
							<p>
								重新整理迦娜近期的改动，以免有玩家错过了信息。尽管7.20版本并未给迦娜带来任何额外的平衡改动，但我们仍然在密切关注着她。</p>
							<p>如果你好奇是什么导致了迦娜以下的改动，我们在一个专门的帖子里整理了迦娜的改动详情。</p>
						</blockquote>
						<p>
							<strong>基础属性<br></strong>&nbsp; &nbsp; &nbsp; 基础移动速度：335
							→320<br>&nbsp; &nbsp; &nbsp; 基础生命值：525 →500<br>&nbsp;
							&nbsp; &nbsp; 基础法力值：409.52 →350
						</p>
						<p>
							<img src="./images/Janna_Tailwind.png" alt=""><strong>被动-顺风而行<br></strong>&nbsp;
							&nbsp; &nbsp; 额外魔法伤害：35%额外移动速度→15/25/35%额外移动速度(于1/7/13级)
						</p>
						<p>
							<img src="./images/SowTheWind.png" alt=""><strong>W和风守护<br></strong>&nbsp;
							&nbsp; &nbsp; 蓝耗：40/50/60/70/80 法力值→50/60/70/80/90法力值
						</p>
						<p>
							<img src="./images/EyeOfTheStorm.png" alt=""><strong>E风暴之眼<br></strong>&nbsp;
							&nbsp; &nbsp; 护盾强度：80/120/160/200/240 →70/105/140/175/210
						</p>
						<p>
							<strong><span style="color: #ff0000;">高玩点评：</span>基础移动速度，生命值，蓝量全部减少。被动平A伤害前期减少，W蓝耗提高，E的护盾减少。整体大砍</strong>
						</p>
						<h3>装备与物品</h3>
						<h4>
							<em><img src="./images/3053.png" alt="">【已更新】斯特拉克的挑战护手</em>
						</h4>
						<p>
							<span style="color: #ff0000;">基础百分比基础攻击力提高。生命值提高。救主灵刃效果不再提高百分比基础攻击力伤害，现在它将提供韧性。</span>
						</p>
						<blockquote>
							<p>
								【斯特拉克的挑战护手】理应与【亡者的板甲】并肩，被当作冲阵坦克的基石装备。虽然【亡者的板甲】帮助冲阵坦克克服了他们先天不足的机动性和帮助他们开启团战，【斯特拉克的挑战护手】却是让他们能够在团战中存活的装备。那么，这件装备确实没有达到我们的目标。</p>
							<p>
								冲阵坦克其中一个最重大的弱点在于他们对控制技能的无力。在没有位移能力的情况下，他们经常在战斗中被风筝至死。而新版的【斯特拉克的挑战护手】将以解决这个问题为基础，我们也将转移它的部分能力，例如为救主灵刃效果提供韧性。除此之外，我们认为【斯特拉克的挑战护手】能够保留一些原始能力，因此我们强化了它的基础属性，尤其是它对基础攻击力的强化。</p>
							<p>
								不过，随着这些改动的实装，我们将让【斯特拉克的挑战护手】成为一件近战英雄的专属装备。伴随着它新增的伤害，它必将再次吸引射手们，但他们已经有足够的反刺客装备了。将【斯特拉克的挑战护手】也混在一块的话只会有点多余。其他的非冲阵坦克阵容也可以与这件装备搭配，他们是选择【三相之力】的战士们——例如卡蜜尔，贾克斯。【三相之力】的咒刃被动可以与【斯特拉克的挑战护手】最新的基础攻击力增益形成极具吸引力的组合，但这样做的话这些英雄的基础攻击力并不高，同时救主灵刃提供的护盾效果也并不够好(他们的装备中额外生命值较少)，不过，目前我们乐意看到他们去做这样的尝试。</p>
						</blockquote>
						<p>
							合成路线：紫雨林之拳+长剑+1050金币→紫雨林之拳+十字镐+红水晶+725金币<br>&nbsp; &nbsp;
							&nbsp; 总花费：2600金币→3200金币<br>&nbsp; &nbsp; &nbsp; 生命值：400→450
						</p>
						<p>
							【已移除】：当救主灵刃触发后，不再在8秒内提供额外的百分比基础攻击力<br>&nbsp; &nbsp; &nbsp;
							&nbsp;基础攻击力增加：30% →50%
						</p>
						<p>
							【新增】：仅可被近战英雄购买。对于可切换形态的英雄来说，当他们处于近战形态时，仅受益于基础攻击力增益效果。从近战切换到远程形态时，护盾效果将保留。<br>&nbsp;
							&nbsp; &nbsp; 【新增】：护盾会在等待0.75秒后开始衰退。<br>&nbsp; &nbsp; &nbsp;
							【新增】：现在救主灵刃触发后，将在8秒内提供30%韧性
						</p>
						<p>
							<strong><span style="color: #ff0000;">高玩点评：</span>价格提高了600，成为一个大件装备，但生命值只多了50点，故更偏向进攻性，而非坦克装的选择。基础攻击力加成提升到50%，没打架时候的清兵，刷野的伤害提高，这个是直接收益。触发护盾时移除额外攻击力，获得是韧性，更适合强突脸怕被控制的英雄出，如：剑圣，贾克斯。基础攻击力加成提高，配合三项之力被动收益更高，如：卡密尔，剑姬、刀妹。</strong>
						</p>
						
						<c:forEach var="wupin" items="${ooList}">
								<h4>
									<!-- 3052.png --><em><img src="./images/${wupin.img}" alt="" />${wupin.names}<!-- 紫雨林之拳 --></em>
								</h4>
								
								<p>
									<span style="color: #ff0000;">${wupin.status}<!-- 直接生命值提高。生命值层数减少。 --></span>
								</p>
								<!-- <blockquote>
									<p>&nbsp; &nbsp;【紫雨林之拳】需要花太长的时间来叠加收益了。其余无话可说。</p>
								</blockquote>
								<p>
									&nbsp; &nbsp; &nbsp; 生命值：150→200<br>&nbsp; &nbsp; &nbsp;
									最大层数：30→20 (每层仍然是5点生命值)
								</p>  -->
								${wupin.cont}
								<p>
							<strong> <span style="color: #ff0000;">高玩点评：</span>${wupin.comen}
							</strong>
						</p> 
						</c:forEach>
						<!-- <h4>
							<em><img src="./images/3301.png" alt="">上古钱币路线</em>
						</h4>
						<p>
							<span style="color: #ff0000;">钱币回复的法力值减少。</span>
						</p>
						<blockquote>
							<p>
								【上古钱币】的法力值回复原本是为了让辅助能更频繁地使用技能，提高他们冒着风险进入兵线拾取硬币的意愿。但奇怪的是，钱币所提供的法力值回复太过慷慨，它并没有激起冒着预期风险的行为。当蓝色钱币太过有效时，辅助在无视部分掉落的情况下仍然可以在线上保持充足的法力值。如果你并不会出现法力值不足的情况，为什么还要冒着受伤的风险呢(更不用说死亡)?</p>
							<p>
								在这一点上，减少钱币的法力值回复会让错过拾取钱币的代价变高，因为钱币的使用者需要坚持拾取钱币才能留在线上。反之，这也让对手们更容易迫使钱币的持有者返回基地，无论是因为血量(他们在拾取钱币时受到伤害)还是法力值(他们没有拾取钱币)的原因。</p>
						</blockquote>
						<p>蓝色钱币奖励：10%已损失法力值(最少15)→6%已损失法力值(最少10)</p>
						<p>
							<strong> <span style="color: #ff0000;">高玩点评：</span>回蓝能力降低，线上续航能力减弱
							</strong>
						</p> -->
						<h4>
							<em><img src="./images/3303.png" alt="">窃法之刃</em>
						</h4>
						<p>
							<span style="color: #ff0000;">法术强度提高。</span>
						</p>
						<blockquote>
							<p>
								给予【窃法之刃】持有者一些吸引力，让他们更胜任游戏早期的进攻。还记得我们刚提到的让钱币持有者更频繁地走进兵线来拾取钱币吗?赶快用这件装备去制裁他们吧。</p>
							<p>请记住并不是所有【窃法之刃】路线的装备都获得了+5法术强度——这次的增强仅限于【窃法之刃】。</p>
						</blockquote>
						<p>法术强度：5 →10</p>
						<p>
							<strong><span style="color: #ff0000;">高玩点评：</span>1级出门提高5点法强，玩进攻性辅助收益提高。如：巴德，婕拉、莫甘娜</strong>
						</p>
						<h4>
							<em>石甲虫</em>
						</h4>
						<p>石甲虫的分裂动画更平滑了</p>
						<h4>
							<em>法术护盾</em>
						</h4>
						<p>对于上个版本全新法术护盾代码转换的跟进改动。</p>
						<p>修复了一组相同的BUG：一些需要引导的技能(如：艾尼维亚的【R冰川风暴】)会被法术护盾打断</p>
						<h3>配装方案共享</h3>
						<p>配装方案现在可以导入和导出啦。</p>
						<blockquote>
							<p>基本上就是标题所说的意思了。老实说，你们绝对会超过我们的示例，找到更多使用配装方案共享的场合，那么赶快开始吧!</p>
						</blockquote>
						<p>
							<strong>导出</strong>
						</p>
						<p>
							点击导出按钮将让你选择“复制到剪贴板”或“导出成文件”<br>&nbsp; &nbsp;
							&nbsp;你可以勾选每个配装方案旁的复选框来一次导出大量的配装方案。所有已选的配装方案将出现在“复制到剪贴板”，或是包含在单个“导出到文件”中<br>&nbsp;
							&nbsp; &nbsp;单个配装方案也可以分享到配装方案编辑界面<br>&nbsp; &nbsp;
							&nbsp;当分享配装方案时，不会保留优先道具栏的设定
						</p>
						<p>
							<strong> 导入</strong>
						</p>
						<p>
							点击道具标签的导入按钮将让你选择“粘贴已复制的设置”或“选择一个文件”<br>&nbsp; &nbsp;
							&nbsp;“粘贴已复制的设置”将打开导入按钮旁的一个小型文字框。当你粘贴了数据后，信息将自动导入到系统中<br>&nbsp;
							&nbsp; &nbsp;“选择一个文件”将开启你电脑的文档浏览窗口。可别被吓到!
						</p>
						<h3>
							<strong>英雄选择</strong>
						</h3>
						<p>如果轮到某队正常连续选人，那么同一个队伍中的两位玩家现在可以同时选择英雄了</p>
						<h3>
							<strong>轮换游戏模式</strong>
						</h3>
						<p style="text-align: center;">
							<img src="./images/${noticO.img}" alt="" width="600" /><!-- 362111335162958.jpg -->
						</p>
						<blockquote>
							
								${noticO.names}<!-- 死兆星 -->：${noticO.cont}<!-- <p>奇点将于2017年10月20日18：00~2017年10月23日10：00，2017年10月27日18：00~2017年10月30日10：00期间上线。在宇宙废墟中化身死兆星锤石，来一场3v3比赛，这是一幅全新的拥有死兆星锤石配音和充满惊悚新音乐的地图。</p>
							<p>· Q中或中敌方玩家和深渊迅捷蟹，将他们拉入地图中央的黑洞来获取分数</p>
							<p>· 受到的伤害越多，你的飞行距离也将越远，但你并不会因为损失生命值而阵亡</p>
							<p>· 首支积得100分的队伍获得当轮胜利，率先赢下两轮的队伍获得游戏胜利</p>
							<p>奇点正在召唤，你会加入吗?</p> -->
						</blockquote>
						<h3>BUG修复</h3>
						<p>
							修复了一个问题，该问题曾导致：当英雄走出战争迷雾时，他的技能音效有时会无限重复(说的就是你，库奇!)<br>&nbsp;
							&nbsp; &nbsp;在某些特定的场合下，锐雯的【Q折翼之舞】不再能够打破法术护盾并造成伤害了<br>&nbsp;
							&nbsp; &nbsp;修复了一个BUG，该BUG曾导致：科加斯的【R盛宴】吞噬野怪后的层数计数不对<br>&nbsp;
							&nbsp;【冰霜女皇的旨令】的贡品被动不再与防御塔产生奇怪的互动<br>&nbsp; &nbsp;
							&nbsp;婕拉的【R绞杀之藤】文本提示现在会正确显示被【绞杀之藤】强化后的植物的额外伤害<br>&nbsp;
							&nbsp; &nbsp;凯特琳的【Q和平使者】升级的文本提示现在会正确的显示不同等级间总攻击力收益提升<br>&nbsp;
							&nbsp; &nbsp;修复了玩家在观看回放时，会出现一些不准确或错误的播报语音和台词<br>&nbsp;
							&nbsp; &nbsp;当【玉剑传说 无极】在使用【W冥想】期间遭受攻击时，他的【Q阿尔法突袭】技能音效不再出现<br>&nbsp;
							&nbsp; &nbsp;在回城期间，不再播放【金牌主播 德莱文】闲置动画出现的音效<br>&nbsp;
							&nbsp;【造物主 维克托】不再失去玩笑，嘲讽，以及跳舞表情下的音效<br>&nbsp; &nbsp;
							&nbsp;当将镜头切走再切回时，【金牌主播 德莱文】的回城音效不再与动画不同步<br>&nbsp;
							&nbsp;【电玩女神 厄运小姐】的【被动-厄运的眷顾】暴击音效不再使用她基础造型的暴击音效
						</p>
						<h3>新加入版本的皮肤&amp;皮肤炫彩包</h3>
						<p>以下皮肤已在版本内容中，售卖日期敬请关注相关公告：</p>
						<p style="text-align: center;">
							<img src="./images/38454935799171.jpg" alt="" width="600">
						</p>
						<p style="text-align: center;">银河魔装机神 伊莉丝</p>
						<p style="text-align: center;">
							<img src="./images/3652256545696.jpg" alt="" width="600">
						</p>
						<p style="text-align: center;">银河魔装机神 奈德丽</p>
						<p style="text-align: center;">
							<img src="./images/44412349050820.jpg" alt="" width="600">
						</p>
						<p style="text-align: center;">银河魔装机神 安妮</p>
						<p style="text-align: center;">
							<img src="./images/531728048356.jpg" alt="" width="600">
						</p>
						<p style="text-align: center;">银河魔装机神 纳尔</p>
						<p>以下皮肤炫彩包已在版本内容中，售卖日期敬请关注相关公告：</p>
						<p style="text-align: center;">
							<img src="./images/559711057215861.jpg" alt="" width="600">
						</p>
						<p style="text-align: center;">银龙裁决 泰隆</p>
						<p style="text-align: center;">
							<img src="./images/90762686072114.jpg" alt="" width="600">
						</p>
						<p style="text-align: center;">恐惧新星 普朗克</p>
					</div>
				</div>
				<div id="CommentOn" class="commenton" style="none">4298035</div>
				<div class="clearfix verleft" id="verleft">
					<div id="rightNav" class="rightNav">
						<div class="topTit c">
							<ul id="VerNav" class="ver-nav">
								<li class="clearfix">数据加载中……</li>
							</ul>
						</div>
						<div class="varName">更新总览</div>
						<div class="verlist"></div>
						<div class="changeInfo" id="changeInfo">
							<!-- <dl class="verInfo" id="heroList">
                            <dt>英雄改动</dt>
                            <dd>
                                <ul class="rightlist clearfix">
                                </ul>
                            </dd>
                        </dl>
                        <dl class="verInfo" id="equipList">
                            <dt>装备改动</dt>
                            <dd>
                                <ul class="rightlist clearfix">
                                </ul>
                            </dd>
                        </dl>
                        <dl class="verInfo" id="mapList">
                            <dt>地图改动</dt>
                            <dd>
                                <ul class="rightlist clearfix">
                                </ul>
                            </dd>
                        </dl> -->
						</div>
					</div>
				</div>
			</div>

		</div>
		<!-- end mainer -->
	</div>
	<div id="setNum" data-num="7.20"
		data-link="http://lol.qq.com/webplat/info/news_version3/152/22006/m14290/201710/645722.shtml"
		data-pic="" style="display:none;"></div>

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

	<script src="./js/jquery-1.9.0.min.js"></script>
	<script src="./js/eas.js?v=20151229"></script>
	<script src="./js/milo.js"></script>
	<script src="./js/index.js"></script>
	<script src="./js/stats.js" charset="utf-8"></script>
	<script src=./js/ping_tcss_ied.js"></script>
	<script>
		if (typeof (pgvMain) == 'function') {
			pgvMain();
		}
	</script>

	<!--[if !IE]>|xGv00|285d1978c5e2f653c352b0df1c9ace9c<![endif]-->
	<script
		src="http://lol.qq.com//webplat/info/news_version3/152/4579/7138/m5581/list_1.shtml"></script>
	<!--<script src="http://ossweb-img.qq.com/images/js/jquery/jquery-1.9.0.min.js"></script> -->
	<script src="./js/share-min.js"
		charset="gb2312"></script>
	<!--<script src="http://ossweb-img.qq.com/images/js/milo/milo.js"></script> -->
	<script src="./js/common.js"></script>
	<script src="./js/gonggao.js"></script>
</body>
</html>
