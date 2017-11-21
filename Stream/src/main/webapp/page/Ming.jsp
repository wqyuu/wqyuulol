<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="robots" content="all">
    <meta name="Copyright" content="Tencent">
    <meta name="keywords" content="英雄联盟,lol,lol新手礼包,lol攻略,lol视频,lol视频攻略,英雄资料,英雄联盟战争学院,明星解说视频,101战争学院,英雄,攻略,WCG,点亮图标,赛事"/>
    <meta name="description" content="英雄联盟官方网站，海量风格各异的英雄，丰富、便捷的物品合成系统，游戏内置的匹配、排行和竞技系统，独创的“召唤师”系统及技能、符文、天赋等系统组合，必将带你进入一个崭新而又丰富多彩的游戏世界。"/>
    <title>新闻详情 - 英雄联盟赛事官网 - 腾讯游戏</title>
    <!-- 设计：jasonshuai | 重构：silenceyin | 创建：20161122 | 团队博客：http://tgideas.qq.com -->
    <link href="../css/LOLcss.css" rel="stylesheet" type="text/css">
    <script>document.domain = 'qq.com'</script>
</head>
<body id="detail-page">
<div class="wrap">
	<!-- top S -->
    <div class="g-top">
	<div class="g-top-box">
		<a href="http://lol.qq.com/" class="weblogo fl" name="pos_0" id="pos_0"></a>
                <a href="http://lpl.qq.com/" class="lpllogo fl"></a>
                <a href="http://lpl.qq.com/es/2017worlds/" target="_blank" class="s7logo fl"></a>
		<div class="search-box pr fl"><input type="text" id="search-input" class="search"><a href="javascript:PUBLIC_FUNCTION.Search();" class="searchbtn">搜索</a><div class="keyword pa"></div></div>
		<div class="login fl">
			<p id="unlogin" style="display: block;">召唤师您好，请 <a href="javascript:LoginManager.login();">登录</a></p>
			<p id="logined" style="display: none;">
				<span><img src="http://ossweb-img.qq.com/images/lol/v1/personal/ttt.png" width="50" class="fl" /></span>
				<span id="loginedInfo" class="gold"></span> 您好，&nbsp;
				<a  class="cl-bind" href="javascript:;" id="areasel">选择大区</a>&nbsp<span id="jUserArea" style="display:none;"></span>
			   	<input type="text" name="iarea" value="" id="areaid" style="display:none;">
				<a href="javascript:LoginManager.logout();" id="j_loginout">注销</a>
			</p>
		</div>
	</div>
</div>
<script src="/comm-htdocs/js/game_area/lol_server_select.js"></script>
    <!-- top E -->
    <!-- top S -->
    <div class="g-tab pr">
        <div class="g-nav-bg pa"></div>
<div class="g-nav pa">
  <div class="g-nav-box clearfix">
    <ul class="g-nav-ul fl">
      <li class="g-nav-li"><a href="http://lpl.qq.com/index.shtml" onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn1','virtualDomain':'lol.qq.com'});">首页</a><span class="sline"></span></li>
      <li class="g-nav-li"><a href="http://lpl.qq.com/es/live.shtml" onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn2','virtualDomain':'lol.qq.com'});" class="tv">L-LIVE</a><span class="sline"></span></li>
      <li class="g-nav-li"><a href="http://lpl.qq.com/es/video.shtml" onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn3','virtualDomain':'lol.qq.com'});">视频</a><span class="sline"></span></li>
      <li class="g-nav-li"><a href="http://lpl.qq.com/es/team.shtml" onclick="pgvSendClick();">战队</a><span class="sline"></span></li>
      <li class="g-nav-li"><a href="http://lpl.qq.com/es/schedule.shtml" onclick="pgvSendClick({});">赛程</a><span class="sline"></span></li>
      <li class="g-nav-li"><a href="http://lpl.qq.com/es/data/" onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn5','virtualDomain':'lol.qq.com'});">数据</a><span class="sline"></span></li>
      <li class="g-nav-li"><a href="http://lpl.qq.com/es/guess/" onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn12','virtualDomain':'lol.qq.com'});">竞猜</a><i class="new">H</i><span class="sline"></span></li>
      <li class="g-nav-li"><a href="http://lpl.qq.com/es/ticket.shtml" onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn11','virtualDomain':'lol.qq.com'});">售票</a><span class="sline"></span></li>
      <li class="g-nav-li"><a href="http://lolriotmall.qq.com/act/a20170608tejia/index.html" target="_blank" onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn15','virtualDomain':'lol.qq.com'});">队服</a><span class="sline"></span></li>
      <li class="g-nav-li"><a href="http://bbs.lol.qq.com/forum.php?mod=forumdisplay&fid=196" target="_blank" onclick="pgvSendClick({hottag:'lplweb.nav.btn.bbs','virtualDomain':'lol.qq.com'});">论坛</a></li>
    </ul>
    <ul class="g-nav-oth fr">
      <li class="g-nav-li"><a href="http://lpl.qq.com/es/2017worlds/" target="_blank" onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn8','virtualDomain':'lol.qq.com'});">2017全球总决赛</a><i class="hot">H</i><span class="sline"></span></li>
      <li class="g-nav-li"><a href="http://lpl.qq.com/es/lpl/" onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn6','virtualDomain':'lol.qq.com'});">LPL</a><span class="sline"></span></li>
      <li class="g-nav-li"><a href="http://lpl.qq.com/es/ldl/index.shtml" onclick="pgvSendClick({hottag:'lplweb.nav.btn.ldl','virtualDomain':'lol.qq.com'});">LDL</a><span class="sline"></span></li>
      <li class="g-nav-li"><a href="http://lpl.qq.com/es/demacia/" onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn14','virtualDomain':'lol.qq.com'});">德玛西亚杯</a><span class="sline"></span></li>
      <li class="g-nav-li"><a href="http://lpl.qq.com/es/msi/" onclick="pgvSendClick({hottag:'lplweb.nav.btn.msi','virtualDomain':'lol.qq.com'});">季中冠军赛</a><span class="sline"></span></li>
                        <li class="g-nav-li"><a href="http://lpl.qq.com/es/city/" onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn9','virtualDomain':'lol.qq.com'});">城市英雄争霸赛</a><span class="sline"></span></li>
                        <li class="g-nav-li"><a  href="http://lpl.qq.com/es/lcl/index.shtml" onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn10','virtualDomain':'lol.qq.com'});">高校联赛</a></li>
            <!--li class="g-nav-li overbox pr"><a href="http://lpl.qq.com/es/elcl/index.shtml" onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn8','virtualDomain':'lol.qq.com'});">校际精英赛</a></li-->
              <!--li class="g-nav-li overbox pr">
              <a class="grey" class="overbtn none">洲际系列赛</a>
                <div class="overlist-bg"></div>
                <ul class="overlist">
                  <li><a href="javascript:">LCK</a></li>
                  <li><a href="javascript:">EU.LCS</a></li>
                  <li><a href="javascript:">NA.LCS</a></li>
                  <li><a href="javascript:">LMS</a></li>
              </ul>
      </li-->
    </ul>
  </div>
</div>
	</div>
    <!-- top E -->
    <!-- crumbs S -->
    <div class="cimi-model-crumbs p55">
         <div class="crumbs clearfix" id="location_main">
         	<a href="http://lpl.qq.com">赛事中心</a>
         	<span class="sline"></span>
         	<a href="http://lpl.qq.com/es/news.shtml">新闻列表</a>
         	<span class="sline"></span>
         	<span class="cimi-this" id="location_content"></span>
         </div>
    </div>
    <!-- crumbs E -->
    <!--cp HTML编辑开始-->
    <div class="cimi-model detail-mode1 clearfix">
		<div class="detail-left fl">
            <div class="article">
                <div class="article_title">
                    <h2 id="subtitle"></h2>
                    <div class="article_info">
                    	<span class="author"  id="authorname"></span>
                    	时间： <span class="createtime" id="newstime"></span>
                    	字体：<span class="font_size" id="fontstyle"></span>
                    	<span class="terrace" id="news_tag">TAG</span>
                    	<!-- <span class="article_corps_label">EDG</span>
                    	<span class="article_label">5周年</span> -->
                    </div>
                </div>
               <div class="article_cont" id="newscontent"></div>
            </div>
            <div class="article_tools">
                <a href="http://lpl.qq.com/index.shtml" class="go_home">返回首页</a>
                <div class="share-box">
                    分享到 :<div class="share-icon" id="tg-sns"></div>
                </div>
            </div>
            <div class="comment"  id="comment_div">
              <iframe id="lolFrame" name="lolFrame" scrolling="no" height="100%" width="100%" frameborder="0" allowtransparency="true" marginheight="0" marginwidth="0" src=""></iframe>
            </div>
		</div>
		<div class="detail-right article-page_right fl">
            <div class="detail-right-box-list clearfix">
                <div class="progress2 pr">
                    <div class="tit-box">
                        <h2 class="fl">近期赛程</h2>
                        <ul class="cent_nav clearfix"  id="scheduleSortList">
                            <li class="fl"><a href="javascript:;" class="on">LPL</a></li>
                            <li class="fl"><a href="javascript:;">LCK</a></li>
                            <li class="fl"><a href="javascript:;">LMS</a></li>
                        </ul>
                        <span class="cimi-more fr">
                            <span id="tab-more-span">更多赛事</span>
                            <div class="more-cont">
                                <ul id="moreSchedule"  rel="scheduleSortList">
                                </ul>
                            </div>
                        </span>
                    </div>
                    <!-- 赛事列表 -->
                    <div class="match-rank-con" style="display: block;">
                        <div class="team-v-list">
                            <div class="v-tit">
                                <ul class="clearfix">
                                    <li class="w24">时间</li>
                                    <li class="w16">战队</li>
                                    <li>比分</li>
                                    <li class="w16">战队</li>
                                    <li class="w24">当前状态</li>
                                </ul>
                            </div>
                            <div class="v-l">
                                <ul id="current_match_c">
                                    <!--说明： end:已结束  ing:进行中  unstart:未开始-->
                                    <li class="end clearfix">
                                        <div class="z-list w24 fl">
                                        	<div class="middle">
                                        		<p class="time">05-08 06:00</p>
                                        		<p>已结束</p>
                                        	</div>
                                        </div>
                                        <div class="z-list w16 corps_name fl">OMG</div>
                                        <div class="z-list score fl">
                                        	<span class="z-list score_left">3</span>:<span class="z-list score_right">1</span>
                                        </div>
                                        <div class="z-list corps_name w16 fl">OMG</div>
                                        <div class="z-list w24 fl">
                                        	<a href="javascript:;" class="look_video">观看录像</a>
                                        </div>
                                    </li>
                                    <li class="ing clearfix">
                                        <div class="z-list w24 fl">
	                                        <div class="middle">
	                                        	<p class="time">05-08 06:00</p>
	                                        	<p>进行中</p>
	                                        </div>
	                                    </div> 
	                                    <div class="z-list w16 corps_name fl">OMG</div> 
	                                    <div class="z-list score fl">
	                                        <span class="z-list score_left">3</span>:<span class="z-list score_right">1</span>
	                                    </div> 
	                                    <div class="z-list corps_name w16 fl">OMG</div> 
	                                        <div class="z-list w24 fl">
	                                        <a href="javascript:;" class="look_video">观看录像</a>
                                        </div>
                                    </li>
                                    <li class="unstart clearfix">
                                        <div class="z-list w24 fl">
                                        	<div class="middle">
                                        		<p class="time">05-08 06:00</p>
                                        		<p>未开始</p>
                                        	</div>
                                        </div>
                                        <div class="z-list w16 corps_name fl">OMG</div> 
                                        <div class="z-list score fl">
                                        	<span class="z-list score_left">3</span>:<span class="z-list score_right">1</span>
                                        </div> 
                                        <div class="z-list corps_name w16 fl">OMG</div> 
                                        <div class="z-list w24 fl">
                                        	<a href="javascript:;" class="look_video">订阅视频</a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="detail-right-box-list clearfix"><div class="official">
	<div class="tit-box">
		<h2>官方栏目</h2>
	</div>
	<div class="video-left-cbox clearfix" id="official_contents">
		<div class="video-left-child fl"><img src="http://ossweb-img.qq.com/images/lol/lpl/gg.jpg" width="180" height="110" /></div>
		<div class="video-left-child fl"><img src="http://ossweb-img.qq.com/images/lol/lpl/gg.jpg" width="180" height="110" /></div>
		<div class="video-left-child fl"><img src="http://ossweb-img.qq.com/images/lol/lpl/gg.jpg" width="180" height="110" /></div>
		<div class="video-left-child fl"><img src="http://ossweb-img.qq.com/images/lol/lpl/gg.jpg" width="180" height="110" /></div>
	</div>
</div></div>
            <div class="detail-right-box-list clearfix"><div class="progress2 pr">
				<div class="tit-box">
					<h2 class="fl" name="pos_4" id="pos_4">积分榜</h2>
					<ul class="cent_nav clearfix" id="team_score_bar_common"><li class="fl"><a href="javascript:;" class="on" rel="0">LPL</a></li><li class="fl"><a href="javascript:;" rel="1">LCK</a></li><li class="fl"><a href="javascript:;" rel="2">LMS</a></li><li class="fl"><a href="javascript:;" rel="3">EU.LCS</a></li><li class="fl"><a href="javascript:;" rel="4">NA.LCS</a></li></ul>
				</div>
				<div class="match-rank clearfix" id="group_bar_common"><a href="javascript:;" class="on">A组</a><a href="javascript:;" class="">B组</a></div>
				<!-- 总排名 -->
				<div class="match-rank-con" style="display: block;">
					<ul class="match-title ovh tc">
						<li class="match-pm">排名</li>
						<li class="match-tm">战队</li>
						<li class="match-fv">胜 负</li>
						<li class="match-cent">积分</li>
					</ul>
					<div class="progress_scroll_pad">
						<div class="progress_scroll sheight">
							<ul class="match-rank-list tc ovh clearfix" id="team_score_board_common_A" style="display: block;"><li><em>1</em><div class="match-rank-team"><a target="_blank" href="http://lol.qq.com/match/team_detail.shtml?tid=1"><img src="http://shp.qpic.cn/lolwebvideo/201501/4b2b3bcf88ca298ead40fcf682a33203/0" width="52" height="52"></a><span>EDG</span></div> <p class="match-rank-rult"><span class="vic">16</span> <span class="centline">/</span> 0</p><i>16</i></li><li><em>2</em><div class="match-rank-team"><a target="_blank" href="http://lol.qq.com/match/team_detail.shtml?tid=9"><img src="http://shp.qpic.cn/lolwebvideo/201501/99106295087c2436b1d83af13b1a7c33/0" width="52" height="52"></a><span>Snake</span></div> <p class="match-rank-rult"><span class="vic">10</span> <span class="centline">/</span> 6</p><i>10</i></li><li><em>3</em><div class="match-rank-team"><a target="_blank" href="http://lol.qq.com/match/team_detail.shtml?tid=37"><img src="http://shp.qpic.cn/lolwebvideo/201501/112e893e3d1a77b6571f301b5a6190fe/0" width="52" height="52"></a><span>GT</span></div> <p class="match-rank-rult"><span class="vic">7</span> <span class="centline">/</span> 9</p><i>7</i></li><li><em>4</em><div class="match-rank-team"><a target="_blank" href="http://lol.qq.com/match/team_detail.shtml?tid=2"><img src="http://shp.qpic.cn/lolwebvideo/201501/f259bf71f87a054e0d5c027b96a11100/0" width="52" height="52"></a><span>IG</span></div> <p class="match-rank-rult"><span class="vic">5</span> <span class="centline">/</span> 11</p><i>5</i></li><li><em>5</em><div class="match-rank-team"><a target="_blank" href="http://lol.qq.com/match/team_detail.shtml?tid=7"><img src="http://shp.qpic.cn/lolwebvideo/201501/e49db1e88e1e4b56de6296a3d940c3c9/0" width="52" height="52"></a><span>Newbee</span></div> <p class="match-rank-rult"><span class="vic">5</span> <span class="centline">/</span> 11</p><i>5</i></li><li><em>6</em><div class="match-rank-team"><a target="_blank" href="http://lol.qq.com/match/team_detail.shtml?tid=36"><img src="http://shp.qpic.cn/lolwebvideo/201501/fe4c3d8839287305f7fed352d7753e26/0" width="52" height="52"></a><span>SAT</span></div> <p class="match-rank-rult"><span class="vic">1</span> <span class="centline">/</span> 15</p><i>1</i></li></ul>
						    <ul class="match-rank-list tc ovh clearfix" id="team_score_board_common_B" style="display: none;"><li><em>1</em><div class="match-rank-team"><a target="_blank" href="http://lol.qq.com/match/team_detail.shtml?tid=8"><img src="http://shp.qpic.cn/lolwebvideo/201501/2a4568d0053238228c35c4e4af1672a8/0" width="52" height="52"></a><span>RNG</span></div> <p class="match-rank-rult"><span class="vic">13</span> <span class="centline">/</span> 3</p><i>13</i></li><li><em>2</em><div class="match-rank-team"><a target="_blank" href="http://lol.qq.com/match/team_detail.shtml?tid=12"><img src="http://shp.qpic.cn/lolwebvideo/201501/f91e93217e73c14b88fd9b0ab0f93d66/0" width="52" height="52"></a><span>WE</span></div> <p class="match-rank-rult"><span class="vic">10</span> <span class="centline">/</span> 6</p><i>10</i></li><li><em>3</em><div class="match-rank-team"><a target="_blank" href="http://lol.qq.com/match/team_detail.shtml?tid=11"><img src="http://shp.qpic.cn/lolwebvideo/201501/3bf65c106d539b1671a79d0c6ca7b47c/0" width="52" height="52"></a><span>VG</span></div> <p class="match-rank-rult"><span class="vic">9</span> <span class="centline">/</span> 7</p><i>9</i></li><li><em>4</em><div class="match-rank-team"><a target="_blank" href="http://lol.qq.com/match/team_detail.shtml?tid=57"><img src="http://shp.qpic.cn/lolwebvideo/201501/306d3503be798618068307258c8ed131/0" width="52" height="52"></a><span>IM</span></div> <p class="match-rank-rult"><span class="vic">9</span> <span class="centline">/</span> 7</p><i>9</i></li><li><em>5</em><div class="match-rank-team"><a target="_blank" href="http://lol.qq.com/match/team_detail.shtml?tid=4"><img src="http://shp.qpic.cn/lolwebvideo/201501/92d5a561ba73188b087c622ac52a645f/0" width="52" height="52"></a><span>LGD</span></div> <p class="match-rank-rult"><span class="vic">7</span> <span class="centline">/</span> 9</p><i>7</i></li><li><em>6</em><div class="match-rank-team"><a target="_blank" href="http://lol.qq.com/match/team_detail.shtml?tid=6"><img src="http://shp.qpic.cn/lolwebvideo/201501/2d38e13f5e2825a373356c0027135521/0" width="52" height="52"></a><span>OMG</span></div> <p class="match-rank-rult"><span class="vic">4</span> <span class="centline">/</span> 12</p><i>4</i></li></ul>
						    <ul class="match-rank-list tc ovh clearfix" id="team_score_board_common_C" style="display: none;"></ul>
						    <ul class="match-rank-list tc ovh clearfix" id="team_score_board_common_D" style="display: none;"></ul>
						    <ul class="match-rank-list tc ovh clearfix" id="team_score_board_common_E" style="display: none;"></ul>
						    <ul class="match-rank-list tc ovh clearfix" id="team_score_board_common_F" style="display: none;"></ul>
						</div>
					</div>
				</div>
			</div></div>
            <div class="detail-right-box-list clearfix">
                <div class="official">
                    <div class="tit-box">
                        <h2>热门精选</h2>
                    </div>
                    <div class="video-left-cbox clearfix" id="hot_focus">
                        <a href="javascript:;" target="_blank"><div class="video-left-child video-left-first-child fl"><img src="http://ossweb-img.qq.com/images/lpl/web201612/gg-big.jpg" width="375" height="110" /></div></a>
                        <a href="javascript:;" target="_blank"><div class="video-left-child fl"><img src="http://ossweb-img.qq.com/images/lpl/web201612/gg.jpg" width="180" height="110" /></div></a>
                        <a href="javascript:;" target="_blank"><div class="video-left-child fl"><img src="http://ossweb-img.qq.com/images/lpl/web201612/gg.jpg" width="180" height="110" /></div></a>
                        <a href="javascript:;" target="_blank"><div class="video-left-child fl"><img src="http://ossweb-img.qq.com/images/lpl/web201612/gg.jpg" width="180" height="110" /></div></a>
                        <a href="javascript:;" target="_blank"><div class="video-left-child fl"><img src="http://ossweb-img.qq.com/images/lpl/web201612/gg.jpg" width="180" height="110" /></div></a>
                    </div>
                </div>
            </div>


		</div>
	</div>
	<!--cp HTML编辑结束-->
	<!-- footer S -->
	<div class="footer-box">
	<script src="../js/foot.js"></script>
</div><!--[if !IE]>|xGv00|05cf46b4fbbf4927f7cbfae3d9e86c78<![endif]-->
	<!-- footer E -->
</div>
<script src="../js/jquery/jquery-1.8.0.min.js"></script>
<script src="../js/lol.js"></script>
<script language="javascript" src="../js/tcss.ping.js"></script>
<script type="text/javascript" src="../js/milo-min.js"></script>
<script src="../js/tvp.player_v2_jq.js"></script>
<script src="../js/share-min.js" charset="gb2312"></script>
<script src="../js/LOL_MATCH2_GAME_LIST_BRIEF.js"></script>
<script src="../js/LOL_MATCH2_TEAM_LIST.js"></script>
<script src= "../js/bbs_comment.js" ></script>
<script src="../js/tools.js"></script>
<script src="../js/common.js"></script>
<script src="../js/com.js"></script>
<script src="../js/public.js"></script>
<script src="../js/match.js"></script>
<!--script src="/web201612/js/niupin.js"></script-->
<script src="../js/detail.js"></script>
<script src= "../js/eas/eas.js" ></script>
<script>
  LOLComment.init('comment_div');

    /* TGshare({
        iconSize : 24,  //分享图标的大小,16为16px X 16px，24为24px X 24px
        snsModule : ['wechat','qq','qzone','pengyou','weibo','sina','douban','kaixin','renren'],
        //分享类型 wechat,qq,qzone,weibo,pengyou,sina,douban,kaixin,renren
        //默认全部加载
        title : '腾讯游戏 - 用心创造快乐',
        //需要自定义标题时才用到，默认拉取页面标题
        url : 'http://game.qq.com/',
        //需要自定义页面url时才用到，默认拉取页面url
        picUrl : 'http://b.gtimg.com/res/2014/06/13/0/058e8b5f7aa4e83d.jpg',
        //需要自定义主题图片才用到，默认拉取页面中第一张图片
        snsID :'tg-sns',//自定义SNS容器ID
        isWindow : true,     //分享打开类型，true为弹窗打开，false为新页面打开，默认为弹窗打开
        tcss : true      //是否添加点击流，true为添加，false为不添加，默认添加
    }); */
    MATCH_NEWS_DETAILS.Init();
    INIT_FUNCTION.initCommon();
 
if(typeof(pgvMain) == 'function')pgvMain({virtualDomain: "lol.qq.com"});
EAS.TimeLine();
</script>
</body>
</html><!--[if !IE]>|xGv00|05852f4366b2ffc85643d4558749efd5<![endif]-->