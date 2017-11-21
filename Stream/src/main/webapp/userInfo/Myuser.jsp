<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script type="text/javascript" src="../js/json2.js"></script>
<script type="text/javascript" src="../js/swfobject.js"></script>
<script type="text/javascript" src="../js/impl.min.js"></script>
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
		url(../images/icon-sns-16.png);
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
		}//显示登录框
		function showLoginDiv() {
			document.getElementById("mask").style.display = "block";
			document.getElementById("regional").style.display = "block";
		}

		//隐藏登录框
		function hidelogin() {
			document.getElementById("mask").style.display = "none";
			document.getElementById("regional").style.display = "none";
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
								onclick="pgvSendClick()">游戏资料<span>GAME INFO</span></a></li>
							<li><a class="n" href="javascript:void(0)">商城/合作<span>STORE</span></a></li>
							<li><a class="n" href="javascript:void(0)">用户互动<span>COMMUNITY</span></a></li>
							<li><a href="http://lpl.qq.com/" onclick="pgvSendClick()"
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
									<a class="sub-nav-lnk" onclick="pgvSendClick()"
									href="http://lol.qq.com/guide/" target="_blank">攻略中心</a> <a
									class="sub-nav-lnk" onclick="pgvSendClick()"
									href="http://lol.qq.com/act/a20160412rgm/" target="_blank">模式实验室</a>
									<a class="sub-nav-lnk" onclick="pgvSendClick()"
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
									class="sub-nav-lnk"
									onclick="pgvSendClick()"
									target="_blank" href="http://lol.qq.com/act/a20150326dqpd/">服务器状态查询</a>
									<a class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank"
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
							 <img id="jUserIcon"src="../images/default.png">
						</c:if>
							<c:if test="${not empty people }">
							 <img id="jUserIcon"src="${pageContext.request.contextPath }/images/${people.picture }">
						
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
											亲爱的召唤师，欢迎<Br> <a href="javascript:showLoginDiv()">绑定大区</a><span>|</span>
											<a href="${pageContext.request.contextPath }/user/logout">注销</a>

										</div>
									</c:if>

									<!-- 亲爱的召唤师，欢迎<a href="#" id="regional">绑定大区</a> -->
									<c:if test="${not empty people  }">
											欢迎<span class="sep">${people.name}|</span>
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
					<!--已登录未绑定大区 E-->
						<div id="self" style="display: none;">
						
							<div class="pic">
							
							
								<img id="J_rankPic" src="../images/${people.levelPic }"
								
									width="110" height="110" alt=""> <em id="jUserRank">${people.levelName}</em>段位
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
						onclick="pgvSendClick()"
						target="_blank">查看详情</a>
				</div>
				<!--当前活动 E-->

				<div id="J_version" class="top-version">
					当前游戏版本：<em>Ver 7.19</em> <a class="top-version-link"
						href="http://lol.qq.com/webplat/info/news_version3/152/22006/m14290/201709/639913.shtml"
						onclick="pgvSendClick()"
						target="_blank">版本详情</a>
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
					<li id="jPersonTab1" class="current"><a href="${pageContext.request.contextPath }/userInfo/Myuser.jsp" class="pagetab-list-lnk" onclick="pgvSendClick()">个人信息</a></li>
					<li id="jPersonTab4" class=""><a href="${pageContext.request.contextPath }/userInfo/rongyu.jsp" class="pagetab-list-lnk" onclick="pgvSendClick()">个人荣誉</a></li>
					<li id="jPersonTab2" class=""><a href="${pageContext.request.contextPath }/userInfo/history.jsp" class="pagetab-list-lnk" onclick="pgvSendClick()">历史战绩</a></li>
					<li id="jPersonTab5" class=""><a href="${pageContext.request.contextPath }/userInfo/MySkin.jsp" class="pagetab-list-lnk" onclick="pgvSendClick()">我的英雄与皮肤</a></li>
					<li id="jPersonTab3" class=""><a href="${pageContext.request.contextPath }/userInfo/friend.jsp" class="pagetab-list-lnk" onclick="pgvSendClick()">好友印象</a></li>
				</ul>
				</div>

				<!-- 个人信息 -->
				<div id="jPersonDiv1" class="clearfix info-showbox"
					style="display:block">
					<div class="perleftcont">
						<!-- 左侧 -->
						<div id="jGameBody">
							<div class="clearfix personinfo-numbox borlineX">
								<div class="per-radarbox">
									<div id="flashLD" class="flashLD"></div>
									<a class="commspr commbtn-biggreen"
										href="javascript:LW201310_Battle.userBattleDiff();">战绩对比</a>
								</div>

								<div class="per-databox">
									<dl class="per-win">
										<dt>胜场数</dt>
										<dd id="jGameWin" class="bigfront cred">22</dd>
									</dl>
									<dl class="per-win per-win2">
										<dt>胜率</dt>
										<dd id="jGameWinP" class="bigfront cgreen">
											<em class="fl">64</em><sup>%</sup>
										</dd>
									</dl>
									<dl class="per-session">
										<dt>场均数据</dt>
										<dd>
											<ul id="jPersonScore" class="clearfix per-session-list">
												<li><span class="lab">击杀</span><span title="场均击杀英雄数量"
													class="loadbar"><i class="up" style="width:53%"></i></span></li>
												<li><span class="lab">助攻</span><span title="场均助攻次数"
													class="loadbar"><i class="up" style="width:54%"></i></span></li>
												<li><span class="lab">死亡</span><span title="场均阵亡次数"
													class="loadbar"><i class="up" style="width:47%"></i></span></li>
												<li><span class="lab">补兵</span><span title="场均补兵数量"
													class="loadbar"><i class="up" style="width:69%"></i></span></li>
												<li><span class="lab">金钱</span><span title="场均获取的金钱数量"
													class="loadbar"><i class="up" style="width:55%"></i></span></li>
												<li><span class="lab">推塔</span><span title="场均推塔数量"
													class="loadbar"><i class="up" style="width:100%"></i></span></li>
											</ul>
										</dd>
										<dd class="per-tps">注：以上数字来自当月的游戏数据</dd>
									</dl>
								</div>
							</div>
							<!-- end personinfo-numbox  -->
							<div class="clearfix myhero borlineX">
								<h4 class="mytitle">擅长英雄</h4>
								<ul class="imgtextlist myhero-list" id="jPersonHeros">
									<li><a
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Vayne"
										target="_blank"><img width="74" alt="暗夜猎手 薇恩"
											src="../images/Vayne.png">
											<p>暗夜猎手</p></a></li>
									<li><a
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Gnar"
										target="_blank"><img width="74" alt="迷失之牙 纳尔"
											src="../images/Gnar.png">
											<p>迷失之牙</p></a></li>
									<li><a
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Teemo"
										target="_blank"><img width="74" alt="迅捷斥候 提莫"
											src="../images/Teemo.png">
											<p>迅捷斥候</p></a></li>
									<li><a
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Ziggs"
										target="_blank"><img width="74" alt="爆破鬼才 吉格斯"
											src="../images/Ziggs.png">
											<p>爆破鬼才</p></a></li>
									<li><a
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Akali"
										target="_blank"><img width="74" alt="暗影之拳 阿卡丽"
											src="../images/Akali.png">
											<p>暗影之拳</p></a></li>
									<li><a
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Ezreal"
										target="_blank"><img width="74" alt="探险家 伊泽瑞尔"
											src="../images/Ezreal.png">
											<p>探险家</p></a></li>
									<li><a
										href="http://lol.qq.com/web201310/info-defail.shtml?id=Leona"
										target="_blank"><img width="74" alt="曙光女神 蕾欧娜"
											src="../images/Leona.png">
											<p>曙光女神</p></a></li>
									<li><a
										href="http://lol.qq.com/web201310/info-defail.shtml?id=KogMaw"
										target="_blank"><img width="74" alt="深渊巨口 克格莫"
											src="../images/KogMaw.png">
											<p>深渊巨口</p></a></li>
								</ul>
							</div>
						</div>

						<div class="clearfix myhis">
							<h4 class="mytitle">历史战绩</h4>
							<div class="fr page-more">
								<a
									href="http://lol.qq.com/web201310/personal.shtml?id=2936952079&amp;area=9&amp;showDiv=1#jPersonTab2"
									onclick="LW201310_Battle.userGame();"
									class="cgray publicspr ico-more2"> 查看更多</a>
							</div>
							<div class="pagetab myhis-tab">
								<ul id="jIndexBattleList" class="pagetab-list pagetablist-third">
									<li class="Gid1696682123 current"><a
										href="javascript:LW201310_Battle.loadGame(&#39;1696682123&#39;,&#39;3&#39;,&#39;2017/09/23 18:13&#39;);"
										class="pagetab-list-lnk"><div class="smallmod">
												<img width="40" height="40" alt=""
													src="../images/Vayne.png">
												<p>
													<span class="cred cresult">失败</span>&nbsp;<em>10杀7死5助攻</em>
												</p>
												<p class="carea">匹配赛 召唤师峡谷</p>
												<p class="cdate">2017/09/23 18:13</p>
											</div></a></li>
									<li class="Gid1696599786"><a
										href="javascript:LW201310_Battle.loadGame(&#39;1696599786&#39;,&#39;3&#39;,&#39;2017/09/23 17:34&#39;);"
										class="pagetab-list-lnk"><div class="smallmod">
												<img width="40" height="40" alt=""
													src="../images/Karma.png">
												<p>
													<span class="cred cresult">失败</span>&nbsp;<em>3杀8死8助攻</em>
												</p>
												<p class="carea">匹配赛 召唤师峡谷</p>
												<p class="cdate">2017/09/23 17:34</p>
											</div></a></li>
									<li class="Gid1696580237"><a
										href="javascript:LW201310_Battle.loadGame(&#39;1696580237&#39;,&#39;3&#39;,&#39;2017/09/23 16:59&#39;);"
										class="pagetab-list-lnk"><div class="smallmod">
												<img width="40" height="40" alt=""
													src="../images/Teemo.png">
												<p>
													<span class="cgreen cresult">胜利</span>&nbsp;<em>3杀4死5助攻</em>
												</p>
												<p class="carea">匹配赛 召唤师峡谷</p>
												<p class="cdate">2017/09/23 16:59</p>
											</div></a></li>
								</ul>
							</div>
							<div id="jIndexBattleDetail" class="myhis-list">
								<p class="myhis-id">比赛ID:1696682123</p>
								<h4 class="cgreen">
									<i class="cgreen"></i>胜利队伍
								</h4>
								<ul class="clearfix">
									<li class="myhis-list-item"><img width="26" height="26"
										alt="" src="../images/Teemo.png">
										<p class="name">
											<a
												href="javascript:LW201310_Battle.userAreaChange(4013711230,9);">萌萌的小Wf</a>
										</p>
										<p class="mony">
											金钱：<em>13.5k</em>
										</p>
										<p class="rline">
											<b>11</b>杀
										</p>
										<p class="rline">
											<b>5</b>死
										</p>
										<p class="helps">
											<b>8</b>助攻
										</p>
										<ul class="myitem">
											<li><img data-title="3151"
												src="../images/3151.png" width="24" height="24"></li>
											<li><img data-title="3020"
												src="../images/3020.png" width="24" height="24"></li>
											<li><img data-title="3115"
												src="../images/3115.png" width="24" height="24"></li>
											<li><img data-title="3089"
												src="../images/3089.png" width="24" height="24"></li>
											<li><img data-title="1058"
												src="../images/1058.png" width="24" height="24"></li>
											<li><img data-title="1052"
												src="../images/1052.png" width="24" height="24"></li>
											<li><img data-title="3340"
												src="../images/3340.png" width="24" height="24"></li>
										</ul></li>
									<li class="myhis-list-item"><img width="26" height="26"
										alt="" src="../images/Janna.png">
										<p class="name">
											<a
												href="javascript:LW201310_Battle.userAreaChange(2941993671,9);">德德玛哦哦哦</a>
										</p>
										<p class="mony">
											金钱：<em>11.7k</em>
										</p>
										<p class="rline">
											<b>1</b>杀
										</p>
										<p class="rline">
											<b>5</b>死
										</p>
										<p class="helps">
											<b>24</b>助攻
										</p>
										<ul class="myitem">
											<li><img data-title="3504"
												src="../images/3504.png" width="24" height="24"></li>
											<li><img data-title="3069"
												src="../images/3069.png" width="24" height="24"></li>
											<li><img data-title="3107"
												src="../images/3107.png" width="24" height="24"></li>
											<li><img data-title="3158"
												src="../images/3158.png" width="24" height="24"></li>
											<li><img data-title="1052"
												src="../images/1052.png" width="24" height="24"></li>
											<li><img data-title="1058"
												src="../images/1058.png" width="24" height="24"></li>
											<li><img data-title="3340"
												src="../images/3340.png" width="24" height="24"></li>
										</ul></li>
									<li class="myhis-list-item"><img width="26" height="26"
										alt="" src="../images/Varus.png">
										<p class="name">
											<a
												href="javascript:LW201310_Battle.userAreaChange(2928149459,9);">欧阳贱圣</a>
										</p>
										<p class="mony">
											金钱：<em>12.9k</em>
										</p>
										<p class="rline">
											<b>5</b>杀
										</p>
										<p class="rline">
											<b>7</b>死
										</p>
										<p class="helps">
											<b>10</b>助攻
										</p>
										<ul class="myitem">
											<li><img data-title="3036"
												src="../images/3036.png" width="24" height="24"></li>
											<li><img data-title="3031"
												src="../images/3031.png" width="24" height="24"></li>
											<li><img data-title="1053"
												src="../images/1053.png" width="24" height="24"></li>
											<li><img data-title="3006"
												src="../images/3006.png" width="24" height="24"></li>
											<li><img data-title="3046"
												src="../images/3046.png" width="24" height="24"></li>
											<li><img data-title="3070"
												src="../images/3070.png" width="24" height="24"></li>
											<li><img data-title="3340"
												src="../images/3340.png" width="24" height="24"></li>
										</ul></li>
									<li class="myhis-list-item"><img width="26" height="26"
										alt="" src="../images/MasterYi.png">
										<p class="name">
											<a
												href="javascript:LW201310_Battle.userAreaChange(2935732221,9);">内涵段子TV丶玺达</a>
										</p>
										<p class="mony">
											金钱：<em>16.8k</em>
										</p>
										<p class="rline">
											<b>18</b>杀
										</p>
										<p class="rline">
											<b>6</b>死
										</p>
										<p class="helps">
											<b>7</b>助攻
										</p>
										<ul class="myitem">
											<li><img data-title="1419"
												src="../images/1419.png" width="24" height="24"></li>
											<li><img data-title="3153"
												src="../images/3153.png" width="24" height="24"></li>
											<li><img data-title="3047"
												src="../images/3047.png" width="24" height="24"></li>
											<li><img data-title="3087"
												src="../images/3087.png" width="24" height="24"></li>
											<li><img data-title="3022"
												src="../images/3022.png" width="24" height="24"></li>
											<li><img data-title="1043"
												src="../images/1043.png" width="24" height="24"></li>
											<li><img data-title="3340"
												src="../images/3340.png" width="24" height="24"></li>
										</ul></li>
									<li class="myhis-list-item"><img width="26" height="26"
										alt="" src="../images/Ziggs.png">
										<p class="name">
											<a
												href="javascript:LW201310_Battle.userAreaChange(2930692629,9);">降临V相遇</a>
										</p>
										<p class="mony">
											金钱：<em>12.2k</em>
										</p>
										<p class="rline">
											<b>4</b>杀
										</p>
										<p class="rline">
											<b>7</b>死
										</p>
										<p class="helps">
											<b>15</b>助攻
										</p>
										<ul class="myitem">
											<li><img data-title="1056"
												src="../images/1056.png" width="24" height="24"></li>
											<li><img data-title="3165"
												src="../images/3165.png" width="24" height="24"></li>
											<li><img data-title="3158"
												src="../images/3158.png" width="24" height="24"></li>
											<li><img data-title="3116"
												src="../images/3116.png" width="24" height="24"></li>
											<li><img data-title="3089"
												src="../images/3089.png" width="24" height="24"></li>
											<li><img data-title="3340"
												src="../images/3340.png" width="24" height="24"></li>
										</ul></li>
								</ul>
								<h4 class="cred">
									<i class="cred"></i>失败队伍
								</h4>
								<ul class="clearfix">
									<li class="myhis-list-item"><img width="26" height="26"
										alt="" src="../images/Garen.png">
										<p class="name">
											<a
												href="javascript:LW201310_Battle.userAreaChange(4000456374,9);">可望不穿你的瞳</a>
										</p>
										<p class="mony">
											金钱：<em>11.9k</em>
										</p>
										<p class="rline">
											<b>4</b>杀
										</p>
										<p class="rline">
											<b>5</b>死
										</p>
										<p class="helps">
											<b>3</b>助攻
										</p>
										<ul class="myitem">
											<li><img data-title="3068"
												src="../images/3068.png" width="24" height="24"></li>
											<li><img data-title="3742"
												src="../images/3742.png" width="24" height="24"></li>
											<li><img data-title="3111"
												src="../images/3111.png" width="24" height="24"></li>
											<li><img data-title="1054"
												src="../images/1054.png" width="24" height="24"></li>
											<li><img data-title="3076"
												src="../images/3076.png" width="24" height="24"></li>
											<li><img data-title="3065"
												src="../images/3065.png" width="24" height="24"></li>
											<li><img data-title="3364"
												src="../images/3364.png" width="24" height="24"></li>
										</ul></li>
									<li class="myhis-list-item"><img width="26" height="26"
										alt="" src="../images/Rengar.png">
										<p class="name">
											<a
												href="javascript:LW201310_Battle.userAreaChange(2934955907,9);">百步一饮</a>
										</p>
										<p class="mony">
											金钱：<em>11.2k</em>
										</p>
										<p class="rline">
											<b>6</b>杀
										</p>
										<p class="rline">
											<b>12</b>死
										</p>
										<p class="helps">
											<b>7</b>助攻
										</p>
										<ul class="myitem">
											<li><img data-title="3142"
												src="../images/3142.png" width="24" height="24"></li>
											<li><img data-title="1412"
												src="../images/1412.png" width="24" height="24"></li>
											<li><img data-title="3158"
												src="../images/3158.png" width="24" height="24"></li>
											<li><img data-title="3147"
												src="../images/3147.png" width="24" height="24"></li>
											<li><img data-title="3067"
												src="../images/3067.png" width="24" height="24"></li>
											<li><img data-title="3364"
												src="../images/3364.png" width="24" height="24"></li>
										</ul></li>
									<li class="myhis-list-item"><img width="26" height="26"
										alt="" src="../images/Blitzcrank.png">
										<p class="name">
											<a
												href="javascript:LW201310_Battle.userAreaChange(4010884617,9);">买女孩De小Huo柴</a>
										</p>
										<p class="mony">
											金钱：<em>10.1k</em>
										</p>
										<p class="rline">
											<b>3</b>杀
										</p>
										<p class="rline">
											<b>9</b>死
										</p>
										<p class="helps">
											<b>14</b>助攻
										</p>
										<ul class="myitem">
											<li><img data-title="3401"
												src="../images/3401.png" width="24" height="24"></li>
											<li><img data-title="3075"
												src="../images/3075.png" width="24" height="24"></li>
											<li><img data-title="3117"
												src="../images/3117.png" width="24" height="24"></li>
											<li><img data-title="1028"
												src="../images/1028.png" width="24" height="24"></li>
											<li><img data-title="3025"
												src="../images/3025.png" width="24" height="24"></li>
											<li><img data-title="3340"
												src="../images/3340.png" width="24" height="24"></li>
										</ul></li>
									<li class="myhis-list-item"><img width="26" height="26"
										alt="" src="../images/Vayne.png">
										<p class="name">
											<a
												href="javascript:LW201310_Battle.userAreaChange(2936952079,9);"><b>魔鬼之瞳</b></a>
										</p>
										<p class="mony">
											金钱：<em>15.3k</em>
										</p>
										<p class="rline">
											<b>10</b>杀
										</p>
										<p class="rline">
											<b>7</b>死
										</p>
										<p class="helps">
											<b>5</b>助攻
										</p>
										<ul class="myitem">
											<li><img data-title="3139"
												src="../images/3139.png" width="24" height="24"></li>
											<li><img data-title="3812"
												src="../images/3812.png" width="24" height="24"></li>
											<li><img data-title="3006"
												src="../images/3006.png" width="24" height="24"></li>
											<li><img data-title="3031"
												src="../images/3031.png" width="24" height="24"></li>
											<li><img data-title="3087"
												src="../images/3087.png" width="24" height="24"></li>
											<li><img data-title="3363"
												src="../images/3363.png" width="24" height="24"></li>
										</ul></li>
									<li class="myhis-list-item"><img width="26" height="26"
										alt="" src="../images/Corki.png">
										<p class="name">
											<a
												href="javascript:LW201310_Battle.userAreaChange(4011092757,9);">四季三思</a>
										</p>
										<p class="mony">
											金钱：<em>12.3k</em>
										</p>
										<p class="rline">
											<b>7</b>杀
										</p>
										<p class="rline">
											<b>6</b>死
										</p>
										<p class="helps">
											<b>7</b>助攻
										</p>
										<ul class="myitem">
											<li><img data-title="3146"
												src="../images/3146.png" width="24" height="24"></li>
											<li><img data-title="3020"
												src="../images/3020.png" width="24" height="24"></li>
											<li><img data-title="3078"
												src="../images/3078.png" width="24" height="24"></li>
											<li><img data-title="1055"
												src="../images/1055.png" width="24" height="24"></li>
											<li><img data-title="3094"
												src="../images/3094.png" width="24" height="24"></li>
											<li><img data-title="3363"
												src="../images/3363.png" width="24" height="24"></li>
										</ul></li>
								</ul>
							</div>
						</div>
					</div>

					<div class="perrightcont">
						<!-- 右侧 -->
						<div class="borlineX">
							<div class="honor-title honor-title-bor">
								<h4>个人荣誉</h4>
								<div class="fr page-more">
									<a href="javascript:LW201310_Battle.userTier();"
										class="cgray publicspr ico-more2"> 查看更多</a>
								</div>
							</div>
							<ul id="jPersonTier" class="clearfix honor-list"></ul>
						</div>
						<div class="firendimage">
							<h4 class="mytitle">好友印象</h4>
							<ul id="jIndexComment" class="firendimage-list">
								<li class="noresult bgcolor4">未查询到相关数据，请稍后再试。</li>
							</ul>
							<div class="firendimage-btn">
								<input id="jIndexCommentInput" type="text"><a
									href="javascript:LW201310_Battle.userCommentPost(g(&#39;jIndexCommentInput&#39;).value);"
									class="commspr commbtn-green">发表印象</a>
							</div>
						</div>
					</div>
				</div>
				<!-- end 个人信息 -->

				<!-- 比赛历史 -->
				<div id="jPersonDiv2" class="info-showbox" style="display:none;">
					<ul id="jGameDate" class="normal-tab">
						<li id="GameDate2017_10_15"
							onclick="LW201310_Battle.changeGameDate();"
							class="current"><span class="nr">2017/10</span></li>
						<li id="GameDate2017_9_15"
							onclick="LW201310_Battle.changeGameDate();"
							class=""><span class="nr">2017/9</span></li>
						<li id="GameDate2017_8_15"
							onclick="LW201310_Battle.changeGameDate();"
							class=""><span class="nr">2017/8</span></li>
					</ul>
					<div class="pagetab myhis-tab">
						<ul id="jPersonBattleList" class="pagetab-list pagetablist-five"></ul>
					</div>
					<div id="jPersonBattleDetail" class="myhis-list myhis-list-long"></div>
					<div class="pages">
						<a id="jPrevPage"
							href="javascript:LW201310_Battle.userBattlePrevPage();"
							class="pagepre previouspage" style="display: none;">上一页</a> <a
							id="jNextPage"
							href="javascript:LW201310_Battle.userBattleNextPage();"
							class="pagenext" style="display: none;">下一页</a>
						<!-- <div class="my-prevnext"></div>
					<div class="my-prevnext"></div> -->
					</div>
				</div>
				<!-- end 比赛历史 -->

				<!-- 英雄及皮肤 -->
				<div id="heroSkins" class="info-showbox" style="display:none"></div>
				<!-- end 英雄及皮肤 -->


				<!-- 我的英雄与皮肤 -->
				<div id="jPersonDiv5" class="clearfix info-showbox"
					style="display: none;">
					<ul class="hero-skin-tab">
						<li class="current" id="heroBtn"><a href="javascript:;">我的英雄</a></li>
						<li class="" id="skinBtn"><a href="javascript:;">我的皮肤</a></li>
					</ul>
					<div class="hero-skin-con">
						<div class="hero-skin-top" id="hero_skin_num_top">
							<p>
								您当前拥有<span id="myHeroNum">180个</span><em id="itemType">英雄</em>。<i>
									| </i><a href="javascript:;" id="shareBtn">我要分享</a>
							</p>
							<div class="tg-sns" id="tg-sns" style="display:none">
								<a class="tg-sns-link tg-sns-wechat"
									onclick="pgvSendClick()"
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
							<ul id="seleteChecklist" class="selete-checklist">
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
							</ul>
							<div class="searchbox info-searchbox">
								<input id="jSearchHeroInput_hero" class="input-search"
									type="text" value="请输入您要搜索的英雄名"> <span
									class="publicspr tnd btn-search">搜索</span>
							</div>
						</div>
						<div class="hero-skin-container">
							<div class="my-hero-box ovh" id="heroBox">
								<ul class="my-hero-list" id="jSearchHeroDiv">
								</ul>
							</div>
							<div class="my-skin-main" id="skinBox" style="display:none">
								<div class="my-skin-box" id="skinBox">
									<ul class="my-hero-list pt0 hero-selected" id="skinList">
									</ul>
								</div>
								<div class="skin-con">
									<div class="skin-top">
										<p class="hero-img" id="heroimg">
											<!-- <img src="http://ossweb-img.qq.com/images/lol/img/champion/Annie.png" alt=""> -->
										</p>
										<h4 id="heroname">
											<!-- 黑暗之女 安妮<br><span>Annie</span> -->
										</h4>
										<p class="skin-num" id="skinnum">
											<!-- 安妮共有<span>10</span>款皮肤，您拥有<span>7</span>款 -->
										</p>
									</div>
									<p class="skin-tips" style="display:none;" id="ifownedhero">
										对不起，您未拥有该英雄，<a
											href="http://lol.qq.com/web201310/personal.shtml?id=2936952079&amp;area=9&amp;showDiv=1#"
											id="ifownedhero_a" target="_blank">点击购买</a>
									</p>
									<ul class="skin-list" id="skinlist">
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
					style="display:none">
					<ul id="jPersonDiv4UL" class="ranks-tab">
						<li id="jPersonLi6" onclick="LW201310_Battle.userTierDetail(6);"><span
							class="nr">2016赛季</span></li>
						<li id="jPersonLi5" onclick="LW201310_Battle.userTierDetail(5);"><span
							class="nr">2015赛季</span></li>
						<li id="jPersonLi4" onclick="LW201310_Battle.userTierDetail(4);"><span
							class="nr">2014赛季</span></li>
						<li id="jPersonLi3" onclick="LW201310_Battle.userTierDetail(3);"><span
							class="nr">第三赛季</span></li>
						<li id="jPersonLi2" onclick="LW201310_Battle.userTierDetail(2);"><span
							class="nr">第二赛季</span></li>
					</ul>
					<div id="jPersonTierDetail6" class="season4"></div>
					<div id="jPersonTierDetail5" class="season4"></div>
					<div id="jPersonTierDetail4" class="season4"></div>
					<div id="jPersonTierDetail3" class="season4"></div>
					<div id="jPersonTierDetail2" class="season4"></div>
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
	<div id="popPupItem" class="poppup-item" style="display:none">
		<div id="itemFromTop">拼命加载中...</div>
		<div id="itemFromTree" class="item-from">拼命加载中...</div>
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

	<script src="../js/jquery-1.9.0.min.js"></script>
	<script src="../js/eas.js"></script>
	<script src="../js/milo.js"></script>
	<script src="../js/index.js"></script>
	<script src="../js/stats.js" charset="utf-8"></script>
	<script src="../js/ping_tcss_ied.js"></script>
	<script>if(typeof(pgvMain) == 'function'){pgvMain();}</script>

	<!--[if !IE]>|xGv00|285d1978c5e2f653c352b0df1c9ace9c<![endif]-->

	<script src="../js/item.js"></script>
	<!--<script src="http://lol.qq.com/comm-htdocs/js/jquery-1.5.2.min.js"></script>-->
	<script src="../js/jquery-1.11.3.min.js"></script>
	<!--<script src="http://ossweb-img.qq.com/images/js/milo/milo-min.js"></script>-->
	<script src="../js/common.js"></script>
	<script src="../js/tier.js"></script>
	<script src="../js/battle.js"></script>
	<script src="../js/share-min.js" charset="gb2312"></script>
	<!-- 我的英雄和皮肤  start-->
	<script src="../js/DJC_LOL_HERO_SKIN_MAP.js"></script>
	<script src="../js/champion.js"></script>
	<script src="../js/skins.js"></script>
	<script src="../js/myheros.js"></script>
	<!--  end -->
	<script src="../js/ue"></script>

	<script>
var curTime=new Date();
$("#jSearchHeroInput").click(function(){
	if("输入要搜索的召唤师名称"==$(this).val()) {
		$(this).val("");
	}
});
$("#jShowMoreArea").click(function(){
	$("#jPersonAreaDiv").toggle(100);
});
var showDialogs=function(o){
    need("biz.dialog",function(Dialog){
        Dialog.show({
        id:o,
        bgcolor:"#000",
        opacity:60
        });
    });
    return;
},
hidDialogs=function(){
    need("biz.dialog",function(Dialog){Dialog.hide();});return;
},
heroSkinTab = function(){
	$("#heroBtn").click(function(){
		$(this).addClass('current').siblings().removeClass('current');
		$("#heroBox").show();
		$("#skinBox").hide();
		//日志上报
        pgvSendClick({hottag:'lolweb.personal.myHeroBtn'});
	})
	$("#skinBtn").click(function(){
		$(this).addClass('current').siblings().removeClass('current');
		$("#heroBox").hide();
		$("#skinBox").show();
		//日志上报
        pgvSendClick({hottag:'lolweb.personal.mySkinBtn'});
	})
	$("#shareBtn").hover(function(){
		TGshareFun();
		$("#tg-sns").show();
		//日志上报
        //pgvSendClick({hottag:'lolweb.personal.shareBtn'});
	},function(){
		$("#tg-sns").hide();
	});
	$("#tg-sns").hover(function(){
		$(this).show();
	},function(){
		$(this).hide();
	});
};
heroSkinTab();
function TGshareFun(){
	var _pshareNum = $("#myHeroNum").html(),_pshareUrl = window.location.href,_pshareType = $("#itemType").html();
	TGshare({
	        iconSize : 16, 
	        snsModule : ['wechat','qq','qzone','weibo','pengyou','sina','douban','kaixin','renren'],
			title : '您当前拥有'+_pshareNum+_pshareType,
			url : _pshareUrl,
	        snsID :'tg-sns',
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
	id: '1899', // 分享模块ID，必须指定
	container: "carousel_container50603", // 指定内容容器ID，不指定则会自动生成一个
	frame: "carousel_frame50603", // 指定内容容器ID，必须
	prev: "prev50603", // 指定向前滚动按钮ID，可不指定
	next: "next50603", // 指定向后滚动按钮ID，可不指定
	item_template: "tpl_carousel_item50603", // 指定单个内容的模板元素ID，和上面的script标签对应
	editor:"jShareWBContent", // 指定容器，自定义内容是会自动从指定容器中获取内容，请配置参数_everyRead使用
	sData:{iContentId:1},// sData可以穿额外的任何参数，都会透传的
	_everyRead:true,//amsCfg_50603 默认只读一次,之后这个对象的内容变化了需要设置这个参数为true,默认是false
	complete:function(res){   //执行完成后的回调函数 返回值res是Json，res.iRet == 0  是分享成功，res.sMsg是返回的信息
		if(res && res.iRet == 0){ //分析那个成功
			alert(res.sMsg);
		}
		if(res && res.iRet > 0){
			alert(res.sMsg); //分析失败
		}
		return false;
	}
};
milo.ready(function(){
	amsInit(6395,50603);
	var curTime2 = new Date();
	if(Math.random()<0.3){
		var imgSendTimePoint=new Image();
		imgSendTimePoint.src="http://isdspeed.qq.com/cgi-bin/r.cgi?flag1=7718&flag2=21&flag3=6&2="+(curTime2-d0)+"&1="+(curTime-d0);
	}
});
</script>
	<!--AMS微博分享结束-->


	<div style="height: 0px; overflow: hidden;">
		<object id="storage" data="../js/ajaxcdr.swf"
			type="application/x-shockwave-flash" height="0" width="0">
			<param name="movie"
				value="/comm-htdocs/js/milo/ajaxcdr.swf?0.791145433079387">
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
		<iframe src="../js/saved_resource.html"></iframe>
	</div>
</body>
</html>