<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<meta name="Copyright" content="TENCNET" />
<meta name="author" content="Tencent-TGideas" />
<meta name="keywords" content="英雄联盟,lol,league of legends,lol攻略,lol视频,lol视频攻略,lol英雄资料,lol战争学院,小仓解说视频,101战争学院,英雄" />
<meta name="description" content="英雄联盟101战争学院，推荐攻略，视频攻略，小仓解说视频" />
<title>游戏资料-英雄联盟官方网站-腾讯游戏</title>
<!-- 设计：帅呆 | 重构：小倪 | 创建：20131028 | 团队博客：http://tgideas.qq.com -->
<link href="./css/public.css" rel="stylesheet" />
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
                            <a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.store.mall'})" href="//lolriotmall.qq.com/index.html?ADTAG=lol.rk.gw.top&adunionsid=gwtop" target="_blank"><i class="icon-hot"></i>周边商城</a>
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
                </div>
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
                <div class="top-user-info" style="display: none">
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
             <div class="logo"><a  href="page/Main1.jsp">英雄联盟</a></div>

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

        <div id="J_version" class="top-version">当前游戏版本：<em>Ver ---</em> <a class="top-version-link" href="" onclick="pgvSendClick({hottag:'v2.version.btn.link'})" target="_blank">版本详情</a></div>
        
    </div>
</div><!--[if !IE]>|xGv00|9f88f36707d1676cd1a0e91d4b729928<![endif]-->
    <div class="layout mainer">
    	<div id="Navi" class="navi">
			<i class="commspr commico-crumbs"></i>
			<a href="/main.shtml">英雄联盟首页</a>
			<i class="commspr commico-rrow"></i>
			<a href="/web201310/info-heros.shtml#Navi">游戏资料</a>
			<i class="commspr commico-rrow"></i>
			<span>符文</span>
		</div>
		
		<div class="colbox">
			<div id="pageTAB" class="pagetab">
				<ul class="pagetab-list pagetab-list4">
					<li class="p-list1"><a class="pagetab-list-lnk" href="page/ziliaohero.jsp">英雄</a></li>
					<li class="p-list2"><a class="pagetab-list-lnk" href="page/ziliaogoods.jsp">物品</a></li>
					<li class="p-list3"><a class="pagetab-list-lnk" href="page/jineng.jsp">召唤师技能</a></li>
					<li class="p-list4"><a class="pagetab-list-lnk" href="page/inforune.jsp">符文</a></li>
					<li class="p-list5"><a class="pagetab-list-lnk" href="info-talent.shtml#Navi">天赋</a></li>
				</ul>
			</div>

			<!-- 符文列表 -->
			<div class="clearfix runepage">
				<iframe frameborder="0" scrolling="no" allowtransparency="true" marginheight="0" marginwidth="0" src="page/rune.jsp" style="width:100%; height:902px;"></iframe>
			</div>
			<!-- end 符文列表 -->
		</div>
				
		
    </div>
    <!-- end mainer -->
</div>
<div id="setNum" data-num="7.20" data-link="http://lol.qq.com/webplat/info/news_version3/152/22006/m14290/201710/645722.shtml" data-pic="" style="display:none;"></div>


<!-- 视频弹窗 S -->
<div id="Video" class="pop-top-video" style="display:none">
    <div id="VideoContent">加载中...</div>
    <a href="javascript:hidDialogs()" class="pop-close">&times;</a>
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
                <li class="f9">COPYRIGHT &copy; 1998 - 2017 TENCENT. ALL RIGHTS RESERVED.</li>
                <li class="f9">&copy; 2012 Riot Games, Inc. ALL RIGHTS RESERVED.</li>
                <li>文网进字[2011] 004号 &amp; ISBN 978-7-89989-145-2<span class="f9 plr10">|</span><a target="_blank" class="c4F6" href="http://game.qq.com/culture2.htm
">新出网证（粤）字010号</a><span class="f9 plr10">|</span><a target="_blank" class="c4F6" href="http://game.qq.com/culture.htm
">粤网文【2017】6138-1456号</a></li>
            </ul>
    </div>
</div>

<script src="./js/jquery-1.9.0.min.js"></script>
<script src="./js/eas.js"></script>
<script src="./js/milo.js"></script>
<script src="./js/index.js"></script>
<script src="./js/stats" charset="utf-8"></script>
<script src="./js/ping_tcss_ied.js"></script>
<script>if(typeof(pgvMain) == 'function'){pgvMain();}</script>

<!--[if !IE]>|xGv00|285d1978c5e2f653c352b0df1c9ace9c<![endif]-->

<!--<script src="http://ossweb-img.qq.com/images/js/milo/milo.js?v="+String(new Date()).split(":")[1]></script>-->
<script src="./js/common.js"></script>
<script>

</script>
</body>
</html><!--[if !IE]>|xGv00|813e58246a41ab4b4eeefb08331b41f7<![endif]-->