<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html><head>

<meta charset="utf-8">
<meta name="robots" content="all">
<meta name="Copyright" content="TENCNET">
<meta name="author" content="Tencent-TGideas">
<meta name="keywords" content="英雄联盟,lol,league of legends,lol攻略,lol视频,lol视频攻略,lol英雄资料,lol战争学院,小仓解说视频,101战争学院,英雄">
<meta name="description" content="英雄联盟101战争学院，推荐攻略，视频攻略，小仓解说视频">
<title>游戏资料-英雄联盟官方网站-腾讯游戏</title>
<!-- 设计：帅呆 | 重构：小倪 | 创建：20131028 | 团队博客：http://tgideas.qq.com -->
<link href="../css/public.css" rel="stylesheet">
<style>
    /*pop*/
    .popupbox{ position: fixed; left: 0; top: 0; right: 0; bottom: 0; width: 100%; height: 100%; z-index: 99999; background-color: #000;}
    .popupbox div{ width: 100%; height: 100%}

    /*.pop-close{position: absolute;top: 0;right: -70px;display: block;width: 60px; height: 60px; font:bold 70px/60px simsun; color: #fff;}*/
    /*.pop-close:hover{text-decoration: none}*/

</style>
</head>
<body style="zoom: 1;">
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
                    <li><a href="/web201310/info-heros.shtml" onclick="pgvSendClick({hottag:'v2.nav.info.link'})">游戏资料<span>GAME INFO</span></a></li>
                    <li><a class="n" href="javascript:void(0)">商城/合作<span>STORE</span></a></li>
                    <li><a class="n" href="javascript:void(0)">用户互动<span>COMMUNITY</span></a></li>
                    <li><a href="//lpl.qq.com/" onclick="pgvSendClick({hottag:'v2.nav.match.link'})" target="_blank">赛事中心<span>EVENTS</span></a></li>
                    <li><a class="n" href="javascript:void(0)">自助系统<span>SYSTEM</span></a></li>
                    <!--<li><a href="/web201310/personal.shtml" onclick="pgvSendClick({hottag:'v2.nav.personal.link'})">个人中心<span>user center</span></a></li>-->
                </ul>
                <!--下拉子导航 S-->
                <div id="J_subNav" class="sub-nav">
                    <ul class="sub-nav-inner">
                        <li class="sub-nav-item">
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.info.what'})" href="/web201310/newbie-what.shtml" target="_blank">新手指引</a>
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.info.heros'})" href="/web201310/info-heros.shtml" target="_blank"><i class="icon-hot"></i>资料库</a>
                            <!--<a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.info.guides'})" href="/web201310/101/guides.shtml">战争学院</a>-->
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.info.guides'})" href="/guide/" target="_blank">攻略中心</a>
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.info.rgm'})" href="/act/a20160412rgm/" target="_blank">模式实验室</a>
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.info.loot'})" href="/act/a20160713loot/" target="_blank">海克斯战利品库</a>
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.info.protect'})" href="/act/a20161101pbcxym/" target="_blank">屏保下载</a>
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.info.yz'})" href="//yz.lol.qq.com/" target="_blank"><i class="icon-new"></i>宇宙官网</a>
                        </li>
                        <li class="sub-nav-item">
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.store.pay'})" target="_blank" href="//lol.qq.com/comm-htdocs/pay/new_index.htm?t=lol"><i class="publicspr ico-h"></i>点券充值</a>
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.store.daoju'})" target="_blank" href="//daoju.qq.com/lol/">道聚城</a>
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.store.mall'})" href="//lolriotmall.qq.com/index.html?ADTAG=lol.rk.gw.top&amp;adunionsid=gwtop" target="_blank"><i class="icon-hot"></i>周边商城</a>
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.store.mvm'})" href="//lol.qq.com/mvm/?ADTAG=lol.rk.gw.top" target="_blank">LOL桌游</a>
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.store.cmb'})" href="//lpl.qq.com/es/act/a20170731cmb/" target="_blank">LOL信用卡</a>
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.store.netbar'})" href="//cafe.qq.com/" target="_blank">网吧特权</a>
                        </li>
                        <li class="sub-nav-item">
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.user.online'})" href="//kf.qq.com/cgi-bin/SuperLOL" target="_blank">在线客服</a>
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.user.video'})" href="/v/" target="_blank">视频中心</a>
                            <!--<a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.user.active'})" href="/web201310/active.shtml" target="_blank"><i class="icon-hot"></i>活动中心</a>-->
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.user.bbs'})" target="_blank" href="//bbs.lol.qq.com/forum.php">官方论坛</a>
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.user.weixin'})" href="/act/a20160425wxlol/" target="_blank">官方微信</a>
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.user.weibo'})" href="//weibo.com/lol" target="_blank">官方微博</a>
                        </li>
                        <li class="sub-nav-item">
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.match.s7'})" target="_blank" href="//lpl.qq.com/es/2017worlds/"><i class="icon-new"></i>全球总决赛</a>
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.match.lpl'})" target="_blank" href="//lpl.qq.com/es/lpl/"><i class="icon-hot"></i>LPL职业联赛</a>
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.match.demacia'})" target="_blank" href="/match/demacia/">德玛西亚杯</a>
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.match.city'})" target="_blank" href="/match/city/">城市争霸赛</a>
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.match.campus'})" target="_blank" href="/match/lcl/">高校联赛</a>
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.match.elcl'})" target="_blank" href="//lpl.qq.com/es/ldl/ ">LDL发展联赛</a>
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.match.gxzfs'})" target="_blank" href="/act/a20161025gxzfs/">高校自发赛</a>
                        </li>
                        <li class="sub-nav-item">
                            <!--<li><a href="/act/a20110613icon/?ADTAG=lolweb.v2" target="_blank" onclick="pgvSendClick({hottag:'v2.sidenav.icon'})"><i class="icon-icon"></i>点亮图标</a></li>-->
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.system.icon'})" target="_blank" href="/act/a20110613icon/?ADTAG=lolweb.v2">点亮图标</a>
                            <!--<a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.system.rs'})" target="_blank" href="/rs/">声望系统</a>-->
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.system.fenghao'})" target="_blank" href="/act/a20151118fh/"><i class="icon-hot"></i>封号查询</a>
     <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.system.exp'})" target="_blank" href="/act/a20110907exp/">体验服申请</a>
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.system.replay'})" target="_blank" href="/act/a20170728replay/">回放系统</a>                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.system.server'})" target="_blank" href="/act/a20150326dqpd/">服务器状态查询</a>
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.system.justice'})" target="_blank" href="/act/a20160317sickle/">裁决之镰</a>
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.system.cjf'})" target="_blank" href="/act/a20170704super/index.shtml?e_code=336975"><i class="icon-new"></i>峡谷之巅</a>
                        </li>
                    </ul>

                </div>
                <!--下拉子导航 E-->
            </div>

            <span id="J_searchClick" class="top-search"><i class="icon-top-search"></i></span>
            <div id="J_search" class="top-search-main" style="display: none">
                <div class="top-search-inner">
                    <i class="icon-search-inner"></i>
                    <input class="input-search-box" type="text" value="" placeholder="搜索 lol.qq.com" id="J_searchText">
                    <span id="J_searchTips" class="input-search-tips">按下回车键进行搜索</span>
                    <span id="J_searchClose" class="top-search-close" title="关闭搜索系统"></span>
                </div>
                <div class="top-search-quick" id="J_searchShortcut">
                    <h5 class="search-quick-title">快速链接</h5>
                <a href="/act/a20160624search/index.html?&amp;searchType=news&amp;word=%E5%85%A8%E7%90%83%E6%80%BB%E5%86%B3%E8%B5%9B" target="_blank">全球总决赛</a><a href="/act/a20160624search/index.html?&amp;searchType=news&amp;word=%E6%96%B0%E7%9A%AE%E8%82%A4" target="_blank">新皮肤</a><a href="/act/a20160624search/index.html?&amp;searchType=news&amp;word=%E6%9C%88%E9%A5%BC" target="_blank">月饼</a><a href="/act/a20160624search/index.html?&amp;searchType=news&amp;word=%E5%AD%A3%E5%89%8D%E8%B5%9B" target="_blank">季前赛</a><a href="/act/a20160624search/index.html?&amp;searchType=news&amp;word=%E5%A5%A5%E6%81%A9" target="_blank">奥恩</a></div>
            </div>
            <!--<a class="top-search" href="/act/a20160624search/" onclick="pgvSendClick({hottag:'v2.nav.search'})"  target="_blank" title="前往英雄联盟搜索系统"><i class="icon-top-search"></i></a>-->
            <a class="top-app" href="/app/" target="_blank" title="前往掌上英雄联盟官网"><i class="icon-top-app"></i></a>
            <div id="J_topUser" class="top-user">
                <!--已登录已绑定大区 S-->
                <div id="J_userHover" class="top-user-info" style="display: none">
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
                <!--已登录已绑定大区 E-->
                <!--未登录 S-->
                <div class="top-user-info" style="">
                    <div class="top-user-side">
                        <span class="user-mask"></span>
                        <img id="jUserIcon" src="//ossweb-img.qq.com/images/lol/v2/personal/avatar/default.png">
                    </div>
                    <div class="top-user-main">
                        <div class="top-user-unlogin">亲爱的召唤师，欢迎<em onclick="LW201310_Userinfo.userLogin();">登录</em></div>
                        <div class="top-user-tips">登录后查看自己的战绩、资产、声望值等</div>
                    </div>
                    <a class="btn-user-drop" href=""></a>
                </div>
                <!--未登录 S-->
                <!--已登录未绑定大区 S-->
                <div class="top-user-info" style="display: none">
                    <div class="top-user-side">
                        <span class="user-mask"></span>
                        <img class="jUserIcon" src="//ossweb-img.qq.com/images/lol/v2/personal/avatar/default.png">
                    </div>
                    <div class="top-user-main">
                        <div class="top-user-unlogin">您已登录，请<a href="javascript:LW201310_Userinfo.userLogin();">绑定大区</a>或<a href="javascript:LW201310_Userinfo.userLogout();">注销</a></div>
                        <div class="top-user-tips">绑定大区后查看所在大区的战绩、资产、声望值等</div>
                    </div>
                    <a class="btn-user-drop" href=""></a>
                </div>
                <!--已登录未绑定大区 E-->
                <div id="J_userDrop" class="top-user-drop" style="visibility: hidden">
                    <div id="J_dropTips" class="top-user-drop-tips">登录并且绑定大区后才可查看您的具体信息哦~（包括战绩、资产、声望值等）</div>
                    <div id="J_dropContent" class="top-user-drop-content clearfix" style="display: none">
                        <div class="pic">
                            <img id="J_rankPic" src="//ossweb-img.qq.com/images/lol/v2/personal/rank/default.png" width="110" height="110" alt="">
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
                </div>
            </div>
        </div>
    </div>
    <!--TOP E-->


    <div class="header-inner layout">
        <div class="logo"><a href="/">英雄联盟</a></div>

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
            <a class="top-act-link" href="//lpl.qq.com/es/2017worlds/?ADTAG=lolweb.v2.act" onclick="pgvSendClick({hottag:'v2.activity.btn.link'})" target="_blank">查看详情</a>
        </div>
        <!--当前活动 E-->

        <div id="J_version" class="top-version">当前游戏版本：<em>Ver 7.20</em> <a class="top-version-link" href="http://lol.qq.com/webplat/info/news_version3/152/22006/m14290/201710/645722.shtml" onclick="pgvSendClick({hottag:'v2.version.btn.link'})" target="_blank">版本详情</a></div>
        
    </div>
</div><!--[if !IE]>|xGv00|9f88f36707d1676cd1a0e91d4b729928<![endif]-->
    <div class="layout mainer">
    	<div id="Navi" class="navi">
			<i class="commspr commico-crumbs"></i>
			<a href="/main.shtml">英雄联盟首页</a>
			<i class="commspr commico-rrow"></i>
			<a href="/web201310/info-heros.shtml#Navi">游戏资料</a>
			<i class="commspr commico-rrow"></i>
			<a href="/web201310/info-heros.shtml#Navi">全部英雄</a>
			<i class="commspr commico-rrow"></i>
			<span id="DATAnametitle">九尾妖狐 阿狸</span>
		</div>
		
		<div class="infodefail">
			<div id="defailDATA" class="defail-data">
				<h1 id="DATAname">九尾妖狐</h1>
				<h2 id="DATAtitle">阿狸</h2>
				<div id="DATAtags" class="defail-tags"><span>法师</span><span>刺客</span></div>
				<div id="defailVideo" class="defail-vod" title="点击观看视频"><i class="commspr commico-vod"></i></div>
				<dl id="DATAinfo" class="defail-stat"><dt>物理攻击</dt><dd><i class="up up1" title="3" style="width:30%"></i></dd><dt>魔法攻击</dt><dd><i class="up up2" title="8" style="width:80%"></i></dd><dt>防御能力</dt><dd><i class="up up3" title="4" style="width:40%"></i></dd><dt>上手难度</dt><dd><i class="up up4" title="5" style="width:50%"></i></dd></dl>
				<div class="defail-buy"><a id="defailBuy" href="http://daoju.qq.com/lol/item/604.shtml?ADTAG=cop.innercop.lol_guanwang.hero_604" target="_blank" class="commspr commbtn-buy">购买英雄</a></div>
			</div>
			<span class="sbg"></span>
			<div class="defail-skin" onload="showSkin()">
				<ul id="skinBG" class="defail-skin-bg" style="left: -1240px;"><li title="默认皮肤"><img src="../images/big103000.jpg" alt="默认皮肤"></li><li title="高丽风情 阿狸"><img src="../images/big103001.jpg" alt="高丽风情 阿狸"></li><li title="暗影妖狐 阿狸"><img src="../images/big103002.jpg" alt="暗影妖狐 阿狸"></li><li title="焰尾妖狐 阿狸"><img src="../images/big103003.jpg" alt="焰尾妖狐 阿狸"></li><li title="偶像歌手 阿狸"><img src="../images/big103004.jpg" alt="偶像歌手 阿狸"></li><li title="勇者 阿狸"><img src="../images/big103005.jpg" alt="勇者 阿狸"></li><li title="风纪委员 阿狸"><img src="../images/big103006.jpg" alt="风纪委员 阿狸"></li><li title="电玩女神 阿狸"><img src="../images/big103007.jpg" alt="电玩女神 阿狸"></li><li title="星之守护者 阿狸"><img src="../images/big103014.jpg" alt="星之守护者 阿狸"></li></ul>
				<div class="defail-skin-nav">
					<div class="defail-skin-name"><span id="skinName">高丽风情 阿狸</span></div>
					<ul id="skinNAV"><li rel="_0" class=""><a title="默认皮肤"><img width="60" height="60" src="../images/small103000.jpg" alt="默认皮肤"><span class="sbor"></span></a></li><li rel="_1" class="current"><a title="高丽风情 阿狸"><img width="60" height="60" src="../images/small103001.jpg" alt="高丽风情 阿狸"><span class="sbor"></span></a></li><li rel="_2"><a title="暗影妖狐 阿狸"><img width="60" height="60" src="../images/small103002.jpg" alt="暗影妖狐 阿狸"><span class="sbor"></span></a></li><li rel="_3"><a title="焰尾妖狐 阿狸"><img width="60" height="60" src="../images/small103003.jpg" alt="焰尾妖狐 阿狸"><span class="sbor"></span></a></li><li rel="_4"><a title="偶像歌手 阿狸"><img width="60" height="60" src="../images/small103004.jpg" alt="偶像歌手 阿狸"><span class="sbor"></span></a></li><li rel="_5"><a title="勇者 阿狸"><img width="60" height="60" src="../images/small103005.jpg" alt="勇者 阿狸"><span class="sbor"></span></a></li><li rel="_6"><a title="风纪委员 阿狸"><img width="60" height="60" src="../images/small103006.jpg" alt="风纪委员 阿狸"><span class="sbor"></span></a></li><li rel="_7"><a title="电玩女神 阿狸"><img width="60" height="60" src="../images/small103007.jpg" alt="电玩女神 阿狸"><span class="sbor"></span></a></li><li rel="_8"><a title="星之守护者 阿狸"><img width="60" height="60" src="../images/small103014.jpg" alt="星之守护者 阿狸"><span class="sbor"></span></a></li></ul>
				</div>
			</div>
			<div id="defailVodPlayer" class="defail-vod-player" style="display:none;">
				<div id="VideoContent"><p class="loading">视频加载中...</p></div>
				<a href="javascript:hidVod()" class="popclose">×</a>
			</div>
		</div>
		
		<div class="clearfix">
			<div class="infoleftcont">
				<h4 class="infotitle">背景故事</h4>
				<div class="colbox bgstroy">
					<div id="DATAlore">符文之地的潜在力量是她与生俱来的纽带，原始的魔法在她手中凝为魔法宝珠。瓦斯塔亚人阿狸醉心于玩弄猎物的情感，然后吞噬他们的生命精魄。虽然阿狸是天生的掠食者，但她却对猎物始终保存着一份同情，因为每吞噬一个灵魂，都伴随着他们生前的记忆。<br><br>阿狸最初被遗弃在艾欧尼亚北方常年积雪的树林中 ，她对自己原本的家庭一无所知，他们只留下了一个信物：一对可以拼接贴合的双生宝石。她加入了一群正在晨猎的冰原狐，没过多久，它们就接纳了她。虽然无人传授她种群特有的魔法，但阿狸却凭着直觉本性，学会从周围的世界抽取魔力，...</div>
					<a id="Gmore" href="javascript:;" class="cgray">查看更多...</a>
					<a id="Hmore" href="javascript:;" class="cgray" style="display: none;">收起...</a>
				</div>
				<h4 class="infotitle">技能介绍</h4>
				<ul id="DATAspellsNAV" class="infotab"><li class="current"><img src="../images/Ahri_SoulEater.png" alt=""></li><li><img src="../images/AhriOrbofDeception.png" alt=""></li><li><img src="../images/AhriFoxFire.png" alt=""></li><li><img src="../images/AhriSeduce.png" alt=""></li><li><img src="../images/AhriTumble.png" alt=""></li></ul>
				<div id="DATAspells" class="colbox infoskillbox"><div class="skilltitle"><h5>摄魂夺魄</h5><em>被动技能</em></div><p class="skilltip">在用技能命中敌人后，阿狸会获得一层摄魂夺魄的充能（一个技能最多可获得3层充能）。在获得9层充能效果之后，阿狸的下一个技能将在命中敌人后对阿狸进行治疗。</p></div>
				<h4 class="infotitle">推荐装备</h4>
				<div id="jSearchItemDiv" class="colbox infospells">
					<div class="pagetab">
						<ul id="infospellsTAB" class="pagetab-list pagetablist-sec">
							<li class="current" rel="classBlocks"><a class="pagetab-list-lnk">召唤师峡谷</a></li>
							<li rel="aramBlocks"><a class="pagetab-list-lnk">极地大乱斗</a></li>
						</ul>
					</div>
					<dl id="infospellsTABclassBlocks" style="display:block"><dt>起始装备</dt><dd class="borlineX"><img data-title="1056" src="../images/1056.png" alt=""><img data-title="2003" src="http://ossweb-img.qq.com/images/lol/img/item/2003.png" alt=""><img data-title="3340" src="http://ossweb-img.qq.com/images/lol/img/item/3340.png" alt=""></dd><dt>核心物品</dt><dd class="borlineX"><img data-title="3020" src="http://ossweb-img.qq.com/images/lol/img/item/3020.png" alt=""><img data-title="3165" src="http://ossweb-img.qq.com/images/lol/img/item/3165.png" alt=""><img data-title="3285" src="http://ossweb-img.qq.com/images/lol/img/item/3285.png" alt=""></dd></dl>
					<dl id="infospellsTABaramBlocks" style="display:none"><dt>起始装备</dt><dd class="borlineX"><img data-title="3112" src="http://ossweb-img.qq.com/images/lol/img/item/3112.png" alt=""><img data-title="1001" src="http://ossweb-img.qq.com/images/lol/img/item/1001.png" alt=""><img data-title="2003" src="http://ossweb-img.qq.com/images/lol/img/item/2003.png" alt=""></dd><dt>核心物品</dt><dd class=""><img data-title="3165" src="http://ossweb-img.qq.com/images/lol/img/item/3165.png" alt=""><img data-title="3285" src="http://ossweb-img.qq.com/images/lol/img/item/3285.png" alt=""><img data-title="3020" src="http://ossweb-img.qq.com/images/lol/img/item/3020.png" alt=""></dd><dt>进攻型物品</dt><dd class="borlineX"><img data-title="3089" src="http://ossweb-img.qq.com/images/lol/img/item/3089.png" alt=""><img data-title="3135" src="http://ossweb-img.qq.com/images/lol/img/item/3135.png" alt=""><img data-title="3151" src="http://ossweb-img.qq.com/images/lol/img/item/3151.png" alt=""></dd><dt>防御型物品</dt><dd class=""><img data-title="3116" src="http://ossweb-img.qq.com/images/lol/img/item/3116.png" alt=""><img data-title="3157" src="http://ossweb-img.qq.com/images/lol/img/item/3157.png" alt=""><img data-title="3001" src="http://ossweb-img.qq.com/images/lol/img/item/3001.png" alt=""></dd></dl>
				</div>
				
				<h4 class="infotitle">使用技巧</h4>
				<div class="colbox arttips">
					<dl id="DATAallytips" class="borlineX"><dt>当你使用九尾妖狐</dt><dd><p>- 用【魅惑妖术】来启动你的连招，它将会使【欺诈宝珠】和【妖异狐火】更容易命中敌人。</p><p>- 在团战中用魅惑妖术先手，并用【灵魄突袭】追击落单的敌人。</p><p>- 【灵魄突袭】能够为阿狸的其它技能创造机会，它可以为【魅惑妖术】清出一条路，有助于让【欺诈宝珠】来回命中敌人两次，并且突进到敌人身边可以让【妖异狐火】更易选中目标。</p></dd></dl>
					<dl id="DATAenemytips"><dt>敌人使用九尾妖狐</dt><dd><p>- 在大招【灵魄突袭】进入冷却阶段后，阿狸的生存能力可谓低得令人发指。</p><p>- 呆在小兵后面，来让【魅惑妖术】难以命中，能够显著地降低阿狸潜在的爆发伤害。</p></dd></dl>
				</div>
			</div>
			
			<div class="inforightcont">
				<div id="jUserRecInfo" class="clearfix infotitle">
					<h4 class="fl">我的记录</h4>
					<p id="jUserHeroArea" class="fr more"></p>
				</div>
				<div id="jUserRecList" class="colbox">
					<div id="jUserHeroinfo" class="clearfix pageuserline-shout">您无法查看使用该英雄的记录，请<a class="cgreen" href="javascript:LW201310_Userinfo.userLogin();">[登陆]</a>，并绑定所在大区。</div>
					<div id="jUserRecH5" class="hisbox-title" style="display:none;">
						<h5 class="fl">近期使用记录</h5>
						<p class="fr more"><a id="jUserPersonalPage" class="cgray publicspr ico-more2" href="/web201310/personal.shtml">查看更多</a></p>
					</div>
					
					<ul id="jUserHeroBattle" class="hisbox-list clearfix"></ul>
				</div>
					

				<div class="clearfix infotitle">
					<h4 class="fl">推荐攻略</h4>
					<div class="fr more"><a class="cgray publicspr ico-more2" href="javascript:window.open('http://lol.qq.com/guide/list.shtml?key=' + encodeURIComponent(LW201310_ChampionInfo.dHeroName), '_blank');">查看更多</a></div>
				</div>
				<div class="colbox info-medialist">
					<ol id="jMediaList" class="ghot-list">
					<li class="item-normal"><p class="gt1">
					<a title="新版本T1中单阿狸玩法功略" href="http://lol.qq.com/guide/page.shtml?id=379756" class="names" target="_blank"><i class="spr ico-arrow"></i><span>新版本T1中单阿狸玩法功略</span></a></p><p class="gt2">2017-06-17</p><p class="gt3"><span class="gfrom">来源：</span>玩家投稿</p><p class="gt4"><span class="ghot">评分：</span><span class="sidbar"><i class="empt"></i><i class="upbar-green" style="width:94%"></i></span></p></li><li class="item-normal"><p class="gt1"><a title="阿狸一夜爆火韩服排位 后现代刺客新定位" href="http://lol.qq.com/guide/page.shtml?id=376931" class="names" target="_blank"><i class="spr ico-arrow"></i><span>阿狸一夜爆火韩服排位 后现代刺客新定位</span></a></p><p class="gt2">2017-04-13</p><p class="gt3"><span class="gfrom">来源：</span>52PK</p><p class="gt4"><span class="ghot">评分：</span><span class="sidbar"><i class="empt"></i><i class="upbar-green" style="width:0%"></i></span></p></li><li class="item-normal"><p class="gt1"><a title="三年胜率超越53%！最稳定中单九尾妖狐上分利器" href="http://lol.qq.com/guide/page.shtml?id=375326" class="names" target="_blank"><i class="spr ico-arrow"></i><span>三年胜率超越53%！最稳定中单九尾妖狐上分利器</span></a></p><p class="gt2">2017-04-04</p><p class="gt3"><span class="gfrom">来源：</span>Tgbus</p><p class="gt4"><span class="ghot">评分：</span><span class="sidbar"><i class="empt"></i><i class="upbar-green" style="width:0%"></i></span></p></li><li class="item-normal"><p class="gt1"><a title="双服霸榜首选中单 7.6强势秒人流狐狸" href="http://lol.qq.com/guide/page.shtml?id=375258" class="names" target="_blank"><i class="spr ico-arrow"></i><span>双服霸榜首选中单 7.6强势秒人流狐狸</span></a></p><p class="gt2">2017-03-31</p><p class="gt3"><span class="gfrom">来源：</span>15W</p><p class="gt4"><span class="ghot">评分：</span><span class="sidbar"><i class="empt"></i><i class="upbar-green" style="width:0%"></i></span></p></li><li class="item-normal"><p class="gt1"><a title="韩服阿狸中单新玩法！三级就能拿一血？" href="http://lol.qq.com/guide/page.shtml?id=21582" class="names" target="_blank"><i class="spr ico-arrow"></i><span>韩服阿狸中单新玩法！三级就能拿一血？</span></a></p><p class="gt2">2017-02-06</p><p class="gt3"><span class="gfrom">来源：</span>游戏魅</p><p class="gt4"><span class="ghot">评分：</span><span class="sidbar"><i class="empt"></i><i class="upbar-green" style="width:0%"></i></span></p></li><li class="item-normal"><p class="gt1"><a title="阿狸火箭腰带巫妖秒人流" href="http://lol.qq.com/guide/page.shtml?id=20730" class="names" target="_blank"><i class="spr ico-arrow"></i><span>阿狸火箭腰带巫妖秒人流</span></a></p><p class="gt2">2017-01-03</p><p class="gt3"><span class="gfrom">来源：</span>兔玩</p><p class="gt4"><span class="ghot">评分：</span><span class="sidbar"><i class="empt"></i><i class="upbar-green" style="width:0%"></i></span></p></li><li class="item-normal"><p class="gt1"><a title="刺客界的BOSS脱颖而出 阿狸强势登顶韩服" href="http://lol.qq.com/guide/page.shtml?id=20343" class="names" target="_blank"><i class="spr ico-arrow"></i><span>刺客界的BOSS脱颖而出 阿狸强势登顶韩服</span></a></p><p class="gt2">2016-12-21</p><p class="gt3"><span class="gfrom">来源：</span>52PK</p><p class="gt4"><span class="ghot">评分：</span><span class="sidbar"><i class="empt"></i><i class="upbar-green" style="width:0%"></i></span></p></li><li class="item-normal"><p class="gt1"><a title="简单粗暴易上分！最飘逸的刺客之王阿狸" href="http://lol.qq.com/guide/page.shtml?id=19848" class="names" target="_blank"><i class="spr ico-arrow"></i><span>简单粗暴易上分！最飘逸的刺客之王阿狸</span></a></p><p class="gt2">2016-12-05</p><p class="gt3"><span class="gfrom">来源：</span>52PK</p><p class="gt4"><span class="ghot">评分：</span><span class="sidbar"><i class="empt"></i><i class="upbar-green" style="width:0%"></i></span></p></li><li class="item-normal"><p class="gt1"><a title="中路争霸最强中单阿狸说不！" href="http://lol.qq.com/guide/page.shtml?id=19734" class="names" target="_blank"><i class="spr ico-arrow"></i><span>中路争霸最强中单阿狸说不！</span></a></p><p class="gt2">2016-12-01</p><p class="gt3"><span class="gfrom">来源：</span>游戏魅</p><p class="gt4"><span class="ghot">评分：</span><span class="sidbar"><i class="empt"></i><i class="upbar-green" style="width:0%"></i></span></p></li><li class="item-normal"><p class="gt1"><a title="阿狸出巫妖？Faker上分就靠她" href="http://lol.qq.com/guide/page.shtml?id=19528" class="names" target="_blank"><i class="spr ico-arrow"></i><span>阿狸出巫妖？Faker上分就靠她</span></a></p><p class="gt2">2016-11-25</p><p class="gt3"><span class="gfrom">来源：</span>15W</p><p class="gt4"><span class="ghot">评分：</span><span class="sidbar"><i class="empt"></i><i class="upbar-green" style="width:0%"></i></span></p></li><li class="item-normal"><p class="gt1"><a title="6.20一个英雄竟有五段位移？中路新套路" href="http://lol.qq.com/guide/page.shtml?id=17200" class="names" target="_blank"><i class="spr ico-arrow"></i><span>6.20一个英雄竟有五段位移？中路新套路</span></a></p><p class="gt2">2016-10-18</p><p class="gt3"><span class="gfrom">来源：</span>17173</p><p class="gt4"><span class="ghot">评分：</span><span class="sidbar"><i class="empt"></i><i class="upbar-green" style="width:0%"></i></span></p></li><li class="item-normal"><p class="gt1"><a title="飘逸如她刺杀无限 电玩阿狸花式凯瑞" href="http://lol.qq.com/guide/page.shtml?id=11539" class="names" target="_blank"><i class="spr ico-arrow"></i><span>飘逸如她刺杀无限 电玩阿狸花式凯瑞</span></a></p><p class="gt2">2016-08-30</p><p class="gt3"><span class="gfrom">来源：</span>不详</p><p class="gt4"><span class="ghot">评分：</span><span class="sidbar"><i class="empt"></i><i class="upbar-green" style="width:100%"></i></span></p></li><li class="item-normal"><p class="gt1"><a title="电玩皮肤即将上线 你竟然还不会玩阿狸？" href="http://lol.qq.com/guide/page.shtml?id=11520" class="names" target="_blank"><i class="spr ico-arrow"></i><span>电玩皮肤即将上线 你竟然还不会玩阿狸？</span></a></p><p class="gt2">2016-08-29</p><p class="gt3"><span class="gfrom">来源：</span>52PK</p><p class="gt4"><span class="ghot">评分：</span><span class="sidbar"><i class="empt"></i><i class="upbar-green" style="width:0%"></i></span></p></li><li class="item-normal"><p class="gt1"><a title="五周年强势英雄推荐 电玩阿狸助你上钻" href="http://lol.qq.com/guide/page.shtml?id=11460" class="names" target="_blank"><i class="spr ico-arrow"></i><span>五周年强势英雄推荐 电玩阿狸助你上钻</span></a></p><p class="gt2">2016-08-26</p><p class="gt3"><span class="gfrom">来源：</span>不详</p><p class="gt4"><span class="ghot">评分：</span><span class="sidbar"><i class="empt"></i><i class="upbar-green" style="width:0%"></i></span></p></li><li class="item-normal"><p class="gt1"><a title="此女子魅惑最可怕 中路阿狸成上分神器！" href="http://lol.qq.com/guide/page.shtml?id=10940" class="names" target="_blank"><i class="spr ico-arrow"></i><span>此女子魅惑最可怕 中路阿狸成上分神器！</span></a></p><p class="gt2">2016-08-16</p><p class="gt3"><span class="gfrom">来源：</span>17173</p><p class="gt4"><span class="ghot">评分：</span><span class="sidbar"><i class="empt"></i><i class="upbar-green" style="width:0%"></i></span></p></li><li class="item-normal"><p class="gt1"><a title="阿狸要出电玩？先把九尾妖狐学会了再说" href="http://lol.qq.com/guide/page.shtml?id=10939" class="names" target="_blank"><i class="spr ico-arrow"></i><span>阿狸要出电玩？先把九尾妖狐学会了再说</span></a></p><p class="gt2">2016-08-16</p><p class="gt3"><span class="gfrom">来源：</span>特玩</p><p class="gt4"><span class="ghot">评分：</span><span class="sidbar"><i class="empt"></i><i class="upbar-green" style="width:0%"></i></span></p></li><li class="item-normal"><p class="gt1"><a title="E中一套技能带走 昔日中单法王回归" href="http://lol.qq.com/guide/page.shtml?id=10392" class="names" target="_blank"><i class="spr ico-arrow"></i><span>E中一套技能带走 昔日中单法王回归</span></a></p><p class="gt2">2016-08-10</p><p class="gt3"><span class="gfrom">来源：</span>15W</p><p class="gt4"><span class="ghot">评分：</span><span class="sidbar"><i class="empt"></i><i class="upbar-green" style="width:0%"></i></span></p></li></ol>
				</div>
			</div>
		</div>	
		
    </div>
    <!-- end mainer -->
</div>
<div id="setNum" data-num="7.20" data-link="http://lol.qq.com/webplat/info/news_version3/152/22006/m14290/201710/645722.shtml" data-pic="" style="display:none;"></div>


<!-- 视频弹窗 S -->
<div id="Video" class="pop-top-video" style="display:none">
    <div id="VideoContent">加载中...</div>
    <a href="javascript:hidDialogs()" class="pop-close">×</a>
</div>
<!-- 视频弹窗 E -->

<div id="footer" class="footer">
    <div class="footer-inner layout clearfix">
            <ul class="footer-flst">
                <li>
                    <a target="_blank" href="http://ieg.tencent.com/" class="c4F6">腾讯互动娱乐</a><span class="f9 plr10">|</span><a target="_blank" href="http://www.qq.com/contract.shtml" class="c4F6">服务条款</a><span class="f9 plr10">|</span><a target="_blank" href="http://adver.qq.com/" class="c4F6">广告服务</a><span class="f9 plr10">|</span><a target="_blank" href="http://game.qq.com/hr/" class="c4F6">腾讯游戏招聘</a><span class="f9 plr10">|</span><a target="_blank" href="http://service.qq.com/" class="c4F6">腾讯游戏客服</a><span class="f9 plr10">|</span><a target="_blank" href="http://tgact.qq.com/?g=lol" class="c4F6">游戏活动</a><span class="f9 plr10">|</span><a target="_blank" href="http://game.qq.com/gnav/" class="c4F6">游戏地图</a><span class="f9 plr10">|</span><a target="_blank" href="http://game.qq.com/portal2010/business.htm" class="c4F6">商务合作</a><span class="f9 plr10">|</span><a target="_blank" href="http://www.qq.com/" class="c4F6">腾讯网</a><span class="f9 plr10">|</span><a target="_blank" href="http://www.qq.com/map/" class="c4F6">网站导航</a>
                </li>
                <li>
                    <a target="_blank" href="http://www.tencent.com/law/mo_law.shtml?/law/copyright.htm" class="c4F6">腾讯公司版权所有</a></li>
                <li class="f9">COPYRIGHT © 1998 - 2017 TENCENT. ALL RIGHTS RESERVED.</li>
                <li class="f9">© 2012 Riot Games, Inc. ALL RIGHTS RESERVED.</li>
                <li>文网进字[2011] 004号 &amp; ISBN 978-7-89989-145-2<span class="f9 plr10">|</span><a target="_blank" class="c4F6" href="http://game.qq.com/culture2.htm&#10;">新出网证（粤）字010号</a><span class="f9 plr10">|</span><a target="_blank" class="c4F6" href="http://game.qq.com/culture.htm&#10;">粤网文【2017】6138-1456号</a></li>
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

<div id="popPupItem" class="poppup-item" style="display:none">
	<div id="itemFromTop">拼命加载中...</div>
	<div id="itemFromTree" class="item-from">拼命加载中...</div>
</div>
<!-- 视频弹窗-->
<div id="EggVideo" class="popupbox" style="display:none">
    <div id="EggVideoContent">加载中...</div>
    <!--<a href="javascript:hidEgg()" class="pop-close">&times;</a>-->
</div>

<script src="../js/champion.js"></script>
<!--<script src="http://ossweb-img.qq.com/images/js/milo/milo-min.js"></script>-->
<script src="../js/tvp.player_v2.js" charset="utf-8"></script>
<script src="../js/common.js"></script>
<script src="../js/info.js"></script>
<script src="http://apps.game.qq.com/CommArticle/app/reg/gdate.php"></script>
<script>
var json_curdate = '2017-10-25 19:14:27';
    var dataEgg ={
        'time':{
            '0':['2015-12-27 00:00:00','2015-12-29 00:00:00'],
            '1':['2015-12-29 00:00:00','2015-12-31 00:00:00'],
            '2':['2015-12-31 00:00:00','2016-1-2 00:00:00'],
            '3':['2016-1-2 00:00:00','2016-1-4 00:00:00']
        },
        'hero':['Zed','Sona','Garen',''],
        'video':['r0178zbnnw9','g0178yqw0w5','q0178y9qd4q','']
    };
    function timeTransform(times){
        var timeStr = times.replace('-',' ').replace('-',' ').split(' ');
        return new Date(timeStr[0]+'/'+timeStr[1]+'/'+timeStr[2]+' '+timeStr[3]).getTime();
    }
    for(var t in dataEgg['time']){
        for(var j = 0;j<2;j++){
            dataEgg['time'][t][j] = timeTransform(dataEgg['time'][t][j]);
        }
    }
    var nowtime = timeTransform(json_curdate);
    for(var m in dataEgg['time']){
        if(nowtime > dataEgg['time'][m][0] && nowtime < dataEgg['time'][m][1]){
            if(((/id=([a-zA-Z]+)/ig).exec(window.location.search)[1] == dataEgg['hero'][m]) && dataEgg['video'][m] != ''){
                showEgg(m);
            }
        }
    }

    function showEgg(o){
        g('EggVideo').style.display = 'block';
        var video = new tvp.VideoInfo();
        video.setVid(dataEgg['video'][o]);
        var player =new tvp.Player();
        player.create({
            width:'100%',
            height:'100%',
            video:video,
            modId:"EggVideoContent", //mod_player是刚刚在页面添加的div容器
            autoplay:true,
            vodFlashSkin:'http://imgcache.qq.com/minivideo_v1/vd/res/skins/TencentPlayerMiniSkin.swf',
            flashWmode:"opaque",
            onallended:function(){
                g('EggVideo').innerHTML='';
                g('EggVideo').style.display = 'none';
            }
        });
    }

//视频
var insertFlash = function (elm,eleid,url,w,h){if(!g(elm))return;var str='';str+='<object width="'+w+'" height="'+h+'" id="'+eleid+'" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0">';str+='<param name="movie" value="'+url+'" />';str+='<param value="true" name="allowFullScreen">';str+='<param name="allowScriptAccess" value="always" />';str+='<param name="wmode" value="transparent" />';str+='<param name="quality" value="autohigh" />';str+='<embed width="'+w+'" height="'+h+'" name="'+eleid+'" src="'+url+'" quality="autohigh" swLiveConnect="always" wmode="transparent" allowFullScreen="true" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer"></embed>';str+='</object>';g(elm).innerHTML=str},
pcPlayer = function (u){insertFlash("VideoContent","v",u,610,376)},
showVideos = function(strVideoUrl){
	if (strVideoUrl.indexOf("qq.com") != -1 && strVideoUrl.indexOf("=") != -1) {
            strVideoId = strVideoUrl.split("?")[1].split("vid=")[1].split("&")[0];
            var video = new tvp.VideoInfo(),player;
            video.setVid(strVideoId);
            player = new tvp.Player(610, 376);
            player.setCurVideo(video);
			player.addParam("flashskin","http://imgcache.qq.com/minivideo_v1/vd/res/skins/TencentPlayerMiniSkin.swf")
			player.addParam("extvars",{showend:0,share:0,light:0,popup:0,showlogo:0,favorite:0,searchbar:0,searchpanel:0})
            player.write("VideoContent");
        } else if (strVideoUrl.indexOf("youku.com") != -1) {
            var ua = navigator.userAgent.toLowerCase();
            if (ua.indexOf('ipad') > 0 || ua.indexOf('iphone') > 0 || ua.indexOf('ipod') > 0) {
                var regxs = ['http://\\w+\.youku\.com/player\.php/sid/(\\w+)/v\.swf', 'http://\\w+\.youku\.com/.*VideoIDS=(\\w+)'],result=[];
				for(var i=0;i<2;i++){
					result = new RegExp(regxs[i], 'ig').exec(strVideoUrl);
					if(result!=null) break;
				}
                if (result) {
                    g("VideoContent").innerHTML = '<video id="yk-html5-play" width="610" height="376" controls autoplay src="http://v.youku.com/player/getRealM3U8/vid/' + result[1] + '/type//video.m3u8"></video>';
                }
            } else {
                pcPlayer(strVideoUrl)
            }
        } else {
            pcPlayer(strVideoUrl)
        }
},
hidVod = function(){g("defailVodPlayer").style.display="none";},
showVideosDialogs = function(key){
	var selfdata = LOLherojs.otherthings.data[key];
	if(selfdata.buylink!=""){
		var lnk =  selfdata.buylink.split("/")[5].split(".shtml")[0];
		g("defailBuy").href = selfdata.buylink+"?ADTAG=cop.innercop.lol_guanwang.hero_"+lnk;
		g("defailBuy").onclick = function(){pgvSendClick({hottag:'infodefail.link.buy.'+key})};
	}else{
		g("defailBuy").href = "javascript:alert('暂未开启，敬请期待哦！');";
		g("defailBuy").target = "_self";
	}
	g("defailVideo").onclick = function(){
		if(selfdata.vodlink!=""){
			showVideos(selfdata.vodlink);
			g("defailVodPlayer").style.display="block";
			move("defailVodPlayer",1,"-305","left");
			g("defailBuy").onclick = function(){pgvSendClick({hottag:'infodefail.link.video.'+key})};
		}else{
			alert('近期会开放视频，敬请期待哦！');
		}
			
	}
},
//end
//皮肤
showSkin = function(){
	var skin =LOLherojs.champion.Ahri.data.skins,
	ids = null,
	names = null,
	nav = [],
	bg = [],
	title = [],
	url='../images/';//http://ossweb-img.qq.com/images/lol/web201310/skin/
	for(var i=0,len=skin.length;i<len;i++){
		ids = skin[i].id;
		names = skin[i].name;
		if(names.indexOf('default')!=-1){names="默认皮肤"};
		// loadScript(url+'small'+ids+'.jpg',function(){console.log(0);});
		nav.push('<li rel="_'+i+'"><a title="'+names+'"><img width="60" height="60" src="'+url+'" alt="'+names+'"><span class="sbor"></span></a></li>');//small'+ids+'.jpg
		bg.push('<li title="'+names+'"><img src="'+url+'" alt="'+names+'"></li>');//big'+ids+'.jpg
		title.push(names);
	}
	g('skinNAV').innerHTML = nav.join('');
	g('skinBG').innerHTML = bg[0];
	g('skinName').innerHTML = title[0];
	var sw = gets.tag('skinNAV',"li"),ord=0;
	sw[0].className="current";
	for(var j=sw.length;j--;){
		sw[j].count = j;
		sw[j].onclick = function(){
			var simg = gets.tag('skinBG',"li");
			if(!simg[this.count]){
				g('skinBG').innerHTML = bg.join('');
			}
			move("skinBG",this.count,1240,"left");
			sw[ord].className="";
			this.className="current";
			g('skinName').innerHTML = title[this.count];
			ord = this.count;
		}
	}
},
//end
//页面内容
showInfo = {
	"Top":function(heroid){
		//topinfo
		var data =LOLherojs.champion.Ahri.data,
		tg=[],
		tmp,
		inf=[];
		g("DATAnametitle").innerHTML = data.name+' '+data.title;
		g("DATAname").innerHTML = data.name;
		g("DATAtitle").innerHTML = data.title;
		for (var i in data.tags) {
			tmp = data.tags[i];
			tg.push('<span>'+getTag(tmp)+'</span>');
		};
		g("DATAtags").innerHTML = tg.join('');
		inf.push('<dt>物理攻击</dt><dd><i class="up up1" title="'+data.info.attack+'" style="width:'+data.info.attack+'0%"></i></dd>');
		inf.push('<dt>魔法攻击</dt><dd><i class="up up2" title="'+data.info.magic+'" style="width:'+data.info.magic+'0%"></i></dd>');
		inf.push('<dt>防御能力</dt><dd><i class="up up3" title="'+data.info.defense+'" style="width:'+data.info.defense+'0%"></i></dd>');
		inf.push('<dt>上手难度</dt><dd><i class="up up4" title="'+data.info.difficulty+'" style="width:'+data.info.difficulty+'0%"></i></dd>');
		g("DATAinfo").innerHTML=inf.join('');
		loadScript("js/herovideo.js",function(){showVideosDialogs(heroid);});
	},
	"BG":function(heroid){
		//背景故事
		var data =LOLherojs.champion.Ahri.data;
		g("DATAlore").innerHTML = data.blurb;
		g("Hmore").style.display="none";
		g("Gmore").onclick=function(){
			g("DATAlore").innerHTML = data.lore;
			g("Gmore").style.display="none";
			g("Hmore").style.display="inline";
		};
		g("Hmore").onclick=function(){
			g("DATAlore").innerHTML = data.blurb;
			g("Gmore").style.display="inline";
			g("Hmore").style.display="none";
		};
	},
	"Spell":function(heroid){
		//技能介绍
		var data =LOLherojs.champion.Ahri.data,
		stab=[],
		scont=[],
		spe=data.spells,
		len=spe.length,
		lv=[],
		url,
		skey=["Q","W","E","R"],
		url2=gets.u+data.passive.image.group+"/"+data.passive.image.full;
		stab.push('<li class="current"><img src="'+url2+'" alt=""></li>');
		scont.push('<div class="skilltitle"><h5>'+data.passive.name+'</h5><em>被动技能</em></div><p class="skilltip">'+data.passive.description+'</p>');
		for (var i = 0,sp; i < len; i++) {
			sp=spe[i];
			url = gets.u + sp.image.group+"/"+ sp.image.full;
			stab.push('<li><img src="'+url+'" alt=""></li>');
            if(!!sp.leveltip) {
                for (var k = 0, lvlen=sp.leveltip.label.length; k < lvlen; k++) {
                    lv.push('<li>'+sp.leveltip.label[k]+'：'+sp.leveltip.effect[k]+'</li>');
                }
                if(sp.leveltip.label.length == 1 && sp.leveltip.label[0] == ''){
                    scont.push('<div class="skilltitle"><h5>'+sp.name+'</h5><em>快捷键：'+skey[i]+'</em></div><p class="skilltip">'+sp.tooltip+'</p>')
                }else{
                    scont.push('<div class="skilltitle"><h5>'+sp.name+'</h5><em>快捷键：'+skey[i]+'</em></div><p class="skilltip">'+sp.tooltip+'</p><ul class="skillstat">'+lv.join('')+'</ul>')
                }
            }else{
                scont.push('<div class="skilltitle"><h5>'+sp.name+'</h5><em>快捷键：'+skey[i]+'</em></div><p class="skilltip">'+sp.tooltip+'</p>')
            }
            lv=[];
        }
		g("DATAspellsNAV").innerHTML = stab.join('');
		g("DATAspells").innerHTML = scont[0];
		var sw=gets.tag("DATAspellsNAV","li"),ord=0;
		for (i = 0; i < len+1; i++) {
			sw[i].count = i;
			sw[i].onclick=function(){
				sw[ord].className="";
				this.className="current";
				g("DATAspells").innerHTML = scont[this.count];
				ord = this.count;
			}
		}
	},
	"Item":function(heroid){
		//推荐装备
		var data =LOLherojs.champion.Ahri.data,
		itemsHtml=[],ddHtml=[],type={"starting":"起始装备","essential":"核心物品","offensive":"进攻型物品","defensive":"防御型物品"},typeN=[{"starting":false,"essential":false,"offensive":false,"defensive":false},{"starting":false,"essential":false,"offensive":false,"defensive":false}],typeNum= 0,
		blocks = data.blocks;

		for (var i = 0,lent = blocks.length; i < lent; i++) {
			if((blocks[i].map=="1"&&blocks[i].mode=="CLASSIC")||(blocks[i].map=="12"&&blocks[i].mode=="ARAM")){
                if(blocks[i].map=="1"&&blocks[i].mode=="CLASSIC"){ typeNum = 0;  }
                if(blocks[i].map=="12"&&blocks[i].mode=="ARAM"){ typeNum = 1;  }
                var classbk = blocks[i].recommended,
				itemURL=gets.u+"item/",
				items,
				itemID;
				for(var j=0,ln=classbk.length-1; j<ln; j++){
					items = classbk[j].items;
                    if(classbk[j].type == 'starting' || classbk[j].type == 'essential' || classbk[j].type == 'offensive'  || classbk[j].type == 'defensive' ){
                        if(!typeN[typeNum][classbk[j].type]){
                            for(var t=0,l=items.length;t<l;t++){
                                itemID=items[t].id;
                                itemsHtml.push('<img data-title="'+itemID+'" src="'+itemURL+itemID+'.png" alt="">');
                            }
                            ddHtml.push('<dt>'+type[classbk[j].type]+'</dt><dd class="borlineX">'+itemsHtml.join('')+'</dd>');
                            itemsHtml=[];
                        }
                        typeN[typeNum][classbk[j].type]=true;
                    }
				}
				if(blocks[i].map=="1"){
					g("infospellsTABclassBlocks").innerHTML=ddHtml.join('');
				}else{
					g("infospellsTABaramBlocks").innerHTML=ddHtml.join('');
				}
				ddHtml=[];
			}
		}
		var nobor = gets.tag("jSearchItemDiv","dd");
		nobor[nobor.length-1].className="";
		nobor[3].className="";
		JSwrap("infospellsTAB","li",false,false,"click");
		loadScript("../js/item.js",function(){showPopup("jSearchItemDiv","img");});
	},
	"Skill":function(heroid){
		//使用技巧
		var data =LOLherojs.champion.Ahri.data,
		atips =data.allytips,
		etips=data.enemytips,
		aTmp=[];
		for (var i = 0,l=atips.length; i < l; i++) {
			aTmp.push('<p>'+atips[i]+'</p>')
		}
		g("DATAallytips").innerHTML='<dt>当你使用'+data.name+'</dt><dd>'+aTmp.join('')+'</dd>';
		aTmp=[];
		for (var i = 0,l=etips.length; i < l; i++) {
			aTmp.push('<p>'+etips[i]+'</p>')
		}
		g("DATAenemytips").innerHTML='<dt>敌人使用'+data.name+'</dt><dd>'+aTmp.join('')+'</dd>';
	}
};
//运行
var heroid = encodeReg(GetUrlParamByName("id"));

g("DATAname").innerHTML = GetUrlParamByName("id");
loadScript("../js/heroAhri.js",function(){
	if(LOLherojs.champion.Ahri!=null){
		showInfo.Top(heroid);
	}
});
need(["biz.delayLoad"]);

</script>

</body>