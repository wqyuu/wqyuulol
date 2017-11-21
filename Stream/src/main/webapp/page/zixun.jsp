<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="gbk">
<meta name="robots" content="all">
<meta name="Copyright" content="Tencent">
<meta name="keywords"
	content="英雄联盟,lol,lol新手礼包,lol攻略,lol视频,lol视频攻略,英雄资料,英雄联盟战争学院,明星解说视频,101战争学院,英雄,攻略,WCG,点亮图标,赛事">
<meta name="description"
	content="英雄联盟官方网站，海量风格各异的英雄，丰富、便捷的物品合成系统，游戏内置的匹配、排行和竞技系统，独创的“召唤师”系统及技能、符文、天赋等系统组合，必将带你进入一个崭新而又丰富多彩的游戏世界。">
<title>WE挺进四强！半决赛LPL与LCK殊死一战-英雄联盟赛事官网-腾讯游戏</title>
<!-- 设计：jasonshuai | 重构：silenceyin | 创建：20161122 | 团队博客：http://tgideas.qq.com -->
<link href="../css/ny.css" rel="stylesheet" type="text/css">
<script src="../js/cdn_djl.js" type="text/javascript"
	async=""></script>
<script>document.domain = 'qq.com'
</script>
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
<link href="../css/lol.css?v=50"
	rel="stylesheet" type="text/css">
<script src="../js/gg.js?v=50"
	type="text/javascript" charset="gb2312"></script>
<script src="../js/cdn_dianjiliu.js?a=0.5656167869741451"></script>
</head>

<body id="detail-page" style="padding-top: 42px;">
	<div class="wrap">
		<!-- top S -->
		<div class="g-top">
			<div class="g-top-box">
				<a href="http://lol.qq.com/" class="weblogo fl" name="pos_0"
					id="pos_0"></a> <a href="http://lpl.qq.com/" class="lpllogo fl"></a>
				<a href="http://lpl.qq.com/es/2017worlds/" target="_blank"
					class="s7logo fl"></a>
				<div class="search-box pr fl">
					<input type="text" id="search-input" class="search"><a
						href="javascript:PUBLIC_FUNCTION.Search();" class="searchbtn">搜索</a>
					<div class="keyword pa">
						<a
							href="http://lpl.qq.com/es/search.shtml?search=2017%25E5%2585%25A8%25E7%2590%2583%25E6%2580%25BB%25E5%2586%25B3%25E8%25B5%259B">2017全球总决赛</a>
					</div>
				</div>
				<div class="login fl">
					<p id="unlogin" style="display: block;">
						召唤师您好，请 <a href="javascript:LoginManager.login();">登录</a>
					</p>
					<p id="logined" style="display: none;">
						<span><img
							src="http://ossweb-img.qq.com/images/lol/v1/personal/ttt.png"
							width="50" class="fl"></span> <span id="loginedInfo" class="gold"></span>
						您好，&nbsp; <a class="cl-bind" href="javascript:;" id="areasel">选择大区</a>&nbsp;<span
							id="jUserArea" style="display:none;"></span> <input type="text"
							name="iarea" value="" id="areaid" style="display:none;">
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
						<li class="g-nav-li"><a href="http://lpl.qq.com/index.shtml"
							onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn1','virtualDomain':'lol.qq.com'});">首页</a><span
							class="sline"></span></li>
						<li class="g-nav-li"><a
							href="http://lpl.qq.com/es/live.shtml"
							onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn2','virtualDomain':'lol.qq.com'});"
							class="tv">L-LIVE</a><span class="sline"></span></li>
						<li class="g-nav-li"><a
							href="http://lpl.qq.com/es/video.shtml"
							onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn3','virtualDomain':'lol.qq.com'});">视频</a><span
							class="sline"></span></li>
						<li class="g-nav-li"><a
							href="http://lpl.qq.com/es/team.shtml"
							onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn4,'virtualDomain':'lol.qq.com'});">战队</a><span
							class="sline"></span></li>
						<li class="g-nav-li"><a
							href="http://lpl.qq.com/es/schedule.shtml"
							onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn13,'virtualDomain':'lol.qq.com'});">赛程</a><span
							class="sline"></span></li>
						<li class="g-nav-li"><a href="http://lpl.qq.com/es/data/"
							onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn5','virtualDomain':'lol.qq.com'});">数据</a><span
							class="sline"></span></li>
						<li class="g-nav-li"><a href="http://lpl.qq.com/es/guess/"
							onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn12','virtualDomain':'lol.qq.com'});">竞猜</a><i
							class="new">H</i><span class="sline"></span></li>
						<li class="g-nav-li"><a
							href="http://lpl.qq.com/es/ticket.shtml"
							onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn11','virtualDomain':'lol.qq.com'});">售票</a><span
							class="sline"></span></li>
						<li class="g-nav-li"><a
							href="http://lolriotmall.qq.com/act/a20170608tejia/index.html"
							target="_blank"
							onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn15','virtualDomain':'lol.qq.com'});">队服</a><span
							class="sline"></span></li>
						<li class="g-nav-li"><a
							href="http://bbs.lol.qq.com/forum.php?mod=forumdisplay&amp;fid=196"
							target="_blank"
							onclick="pgvSendClick({hottag:'lplweb.nav.btn.bbs','virtualDomain':'lol.qq.com'});">论坛</a></li>
					</ul>
					<ul class="g-nav-oth fr">
						<li class="g-nav-li"><a
							href="http://lpl.qq.com/es/2017worlds/" target="_blank"
							onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn8','virtualDomain':'lol.qq.com'});">2017全球总决赛</a><i
							class="hot">H</i><span class="sline"></span></li>
						<li class="g-nav-li"><a href="http://lpl.qq.com/es/lpl/"
							onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn6','virtualDomain':'lol.qq.com'});">LPL</a><span
							class="sline"></span></li>
						<li class="g-nav-li"><a
							href="http://lpl.qq.com/es/ldl/index.shtml"
							onclick="pgvSendClick({hottag:'lplweb.nav.btn.ldl','virtualDomain':'lol.qq.com'});">LDL</a><span
							class="sline"></span></li>
						<li class="g-nav-li"><a href="http://lpl.qq.com/es/demacia/"
							onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn14','virtualDomain':'lol.qq.com'});">德玛西亚杯</a><span
							class="sline"></span></li>
						<li class="g-nav-li"><a href="http://lpl.qq.com/es/msi/"
							onclick="pgvSendClick({hottag:'lplweb.nav.btn.msi','virtualDomain':'lol.qq.com'});">季中冠军赛</a><span
							class="sline"></span></li>
						<li class="g-nav-li"><a
							href="http://lpl.qq.com/es/lcl/index.shtml"
							onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn10','virtualDomain':'lol.qq.com'});">高校联赛</a><span
							class="sline"></span></li>
						<li class="g-nav-li overbox pr"><a
							href="http://lpl.qq.com/es/elcl/index.shtml"
							onclick="pgvSendClick({hottag:'lplweb.nav.btn.btn8','virtualDomain':'lol.qq.com'});">校际精英赛</a></li>
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
				<a href="http://lpl.qq.com">赛事中心</a> <span class="sline"></span> <a
					href="http://lpl.qq.com/es/news.shtml">新闻列表</a> <span class="sline"></span>
				<span class="cimi-this" id="location_content">WE挺进四强！半决赛LPL与LCK殊死一战</span>
			</div>
		</div>
		<!-- crumbs E -->
		<!--cp HTML编辑开始-->
		<div class="cimi-model detail-mode1 clearfix">
			<div class="detail-left fl">
				<div class="article">
					<div class="article_title">
						<h2 id="subtitle">WE挺进四强！半决赛LPL与LCK殊死一战</h2>
						<div class="article_info">
							<span class="author" id="authorname">德邦情报局</span> 时间： <span
								class="createtime" id="newstime">2017-10-22 22:36:22</span> 字体：<span
								class="font_size" id="fontstyle">字体：【 <a
								href="javascript:doZoom(16);">大</a> <a
								href="javascript:doZoom(14);">中</a> <a
								href="javascript:doZoom(12);">小</a> 】
							</span> <span class="terrace" id="news_tag">TAG</span>
							<!-- <span class="article_corps_label">EDG</span>
                    	<span class="article_label">5周年</span> -->
						</div>
					</div>
					<div class="article_cont" id="newscontent">
						<p>
							在2017全球总决赛八强赛的收官之战中，WE战队艰难地3-2击败北美劲旅C9战队，自此今年的四强赛迎来了四支中韩队伍的顶尖对抗。当WE战队摧毁对手水晶的那刻，“恭喜WE!”回荡在广州体育馆现场，久久未能散去，WE战队终于拿到迟来五年的胜利，首次打进半决赛。
						</p>
						<p>
							<span style="font-size:18px;"><strong>佩带战队头像为LPL加油助威<a
									href="http://daoju.qq.com/lol/list/18-0-0-0-0-0-0-0-0-0-0-00-0-0-1-1.shtml?ADTAG=innercop.lol.SY.shoppinglist_new_18"
									target="_blank">&gt;&gt;&gt;点击购买</a></strong></span>
						</p>
						<p>
							<span style="line-height:1.5;font-size:18px;"><strong>WE就是可以为所欲为</strong></span>
						</p>
						<p>
							在今天的比赛中，虽然C9战队拿出了秘密武器，但还是被WE战队成功击败。在WE战队惯用的加里奥和克格莫面前，解说记得高呼WE战队就是可以为所欲为，不管你是北美队伍还是韩国队伍，WE战队今年都有机会斩于马下。WE战队的下一个对手将是三星战队，我们相信WE战队也会顺利击倒对手。
						</p>
						<p style="text-align:center;">
							<img
								src="../images/sszx-we1.jpg"
								alt="">
						</p>
						<p style="text-align:center;">图1：WE战队主场作战无敌</p>
						<p>
							<span style="font-size:18px;"><strong>WE和RNG兄弟同心</strong></span>
						</p>
						<p>
							全球总决赛的广州站比赛到此为止，下一阶段的半决赛将转战到上海。尽管韩国队伍在之前拿过四次世界冠军，但今年的冠军LPL战队必定不会轻易拱手相让，哪怕是对阵SKT或者SSG战队，在WE和RNG战队的兄弟同心面前都无所畏惧，LPL队伍将会一雪前耻，争取会师鸟巢捧起冠军奖杯。
						</p>
						<p style="text-align:center;">
							<img
								src="../images/sszx-we2.jpg"
								alt="">
						</p>
						<p style="text-align:center;">图2：RNG携手WE打进半决赛</p>
						<p>
							<span style="font-size:18px;"><strong>辛吉德成C9秘密武器</strong></span>
						</p>
						<p>
							虽然C9战队在第一局被WE战队翻盘，但Impact拿出了秘密武器辛吉德，这是Looper的招牌英雄。当C9战队锁定这个英雄时，全场观众都高喊“Looper”的名字，尽管他已经离开LPL赛场，但这个英雄却永远留在粉丝心中。
						</p>
						<p style="text-align:center;">
							<img
								src="../images/sszx-we8.jpg"
								alt="">
						</p>
						<p style="text-align:center;">图3：Looper的冠军皮肤</p>
						<p>
							<span style="font-size:18px;"><strong>粉丝们为WE疯狂欢呼</strong></span>
						</p>
						<p>
							自从S2全球总决赛以来，WE战队再次站在全球总决赛的舞台。当打满五场的音乐响起时，所有的观众都呼喊着“WE加油”。上一次WE战队在异国他乡作战，一场赛事打了8个小时，然而今年全球总决赛在中国主场作战，WE战队得到了LPL观众的buff加持，掌声如雷贯耳。
						</p>
						<p style="text-align:center;">
							<img
								src="../images/LunBo-1.jpg"
								alt="">
						</p>
						<p style="text-align:center;">图4：WE时隔五年重返世界舞台</p>
						<p>
							<span style="font-size:18px;"><strong>Condi采访感谢妹妹buff</strong></span>
						</p>
						<p>
							在比赛结束后，Condi在舞台上接受了余霜的采访，在访问中余霜问及Condi是否感受到来自WE队员们妹妹的支持。他腼腆地表示感受到来自妹妹的buff，而且Condi也自爆自己有2个妹妹。看起来WE战队不但有大舅子、二舅子，还有三舅子了!
						</p>
						<p style="text-align:center;">
							<img
								src="../images/sszx-we5.jpg"
								alt="">
						</p>
						<p style="text-align:center;">图5：观众们PS的兮夜趣图</p>
						<p>
							<span style="font-size:18px;"><strong>WE成员妹妹赛前祝福</strong></span>
						</p>
						<p>
							虽然妹妹的buff听起来有点玄学的味道，但正因为有着如此之多的人支持，LPL选手们才能在赛场上发挥他们最好的状态，这也是主场作战的优势。在比赛过程中，我们也看到观众席上的粉丝打出了，“带妹妹们去鸟巢吧”的祝福，看起来WE战队的粉丝们也深信此道了。
						</p>
						<p style="text-align:center;">
							<img
								src="../images/sszx-we4.jpg"
								alt="">
						</p>
						<p style="text-align:center;">图6：WE战队独有的妹妹加持</p>
						<p>
							<span style="font-size:18px;"><strong>小妍和长毛难掩心情</strong></span>
						</p>
						<p>
							广州八强赛的最后一战，由WE战队取得了最终的比赛胜利，不只是WE战队的成员和LPL观众们心情激动不已。解说台上的两位成员也是非常激动，他们都是解说了S2全球总决赛的老面孔了，尤其是和WE战队关系非常密切的WE战队，她等待这刻已经等待了足足五年。
						</p>
						<p style="text-align:center;">
							<img
								src="../images/sszx-we7.gif"
								alt="">
						</p>
						<p style="text-align:center;">图7：两位解说眼眶都有些湿润</p>
						<p>
							正如Condi在赛后采访时所说的，MVP是属于WE战队五个人的，今天每个选手都发挥很好。而长毛也是感叹，LPL的胜利是属于所有在现场、在屏幕前默默支持的着中国军团的LPL观众们。也让我们期待，RNG和WE战队在上海站再传捷报!
						</p>
						<p>
							<span style="font-size:18px;"><strong>关于梅赛德斯-奔驰</strong></span>
						</p>
						<p>登顶千载黄鹤楼，并肩中国第一塔，黄浦江畔风起云涌，十万人的现场呐喊。新一代GLA
							SUV与你共同征战无畏英雄终极对决!刀锋式进气格栅注入不羁胆魄，智能适时四驱系统，上高地、越高塔，所向披靡;以无畏之心勇闯前路。
						</p>
						<p>
							更多详情&gt;&gt;&gt;http://special.mercedes-benz.com.cn/2017_gla_lol/
						</p>
					</div>
				</div>
				<div class="article_tools">
					<a href="http://lpl.qq.com/index.shtml" class="go_home">返回首页</a>
					<div class="share-box">
						分享到 :
						<div class="tg-sns" id="tg-sns">
							<a class="tg-sns-link tg-sns-wechat"
								onclick="pgvSendClick({hottag:'sns.buttons.wechat'})"
								href="http://game.qq.com/share/weixin.htm?url=http%3A%2F%2Flpl.qq.com%2Fes%2Fnews_detail.shtml%3Fnid%3D15637&amp;title=WE%E6%8C%BA%E8%BF%9B%E5%9B%9B%E5%BC%BA%EF%BC%81%E5%8D%8A%E5%86%B3%E8%B5%9BLPL%E4%B8%8ELCK%E6%AE%8A%E6%AD%BB%E4%B8%80%E6%88%98&amp;pic=http://img.crawler.qq.com/lolwebvideo/20171022223625/aa1f18bc5e78d98266ad80c4bb6e3936/0"
								title="分享到微信" target="_blank">wechat</a><a
								class="tg-sns-link tg-sns-qq"
								onclick="pgvSendClick({hottag:'sns.buttons.qq'});window.open('http://connect.qq.com/widget/shareqq/index.html?url=http%3A%2F%2Flpl.qq.com%2Fes%2Fnews_detail.shtml%3Fnid%3D15637&amp;title=WE%E6%8C%BA%E8%BF%9B%E5%9B%9B%E5%BC%BA%EF%BC%81%E5%8D%8A%E5%86%B3%E8%B5%9BLPL%E4%B8%8ELCK%E6%AE%8A%E6%AD%BB%E4%B8%80%E6%88%98&amp;pics=http://img.crawler.qq.com/lolwebvideo/20171022223625/aa1f18bc5e78d98266ad80c4bb6e3936/0','','width=840, height=540')"
								href="javascript:void(0)" title="分享到QQ好友">qq</a><a
								class="tg-sns-link tg-sns-qzone"
								onclick="pgvSendClick({hottag:'sns.buttons.qzone'});window.open('http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=http%3A%2F%2Flpl.qq.com%2Fes%2Fnews_detail.shtml%3Fnid%3D15637&amp;title=WE%E6%8C%BA%E8%BF%9B%E5%9B%9B%E5%BC%BA%EF%BC%81%E5%8D%8A%E5%86%B3%E8%B5%9BLPL%E4%B8%8ELCK%E6%AE%8A%E6%AD%BB%E4%B8%80%E6%88%98&amp;pics=http://img.crawler.qq.com/lolwebvideo/20171022223625/aa1f18bc5e78d98266ad80c4bb6e3936/0','','width=840, height=540')"
								href="javascript:void(0)" title="分享到QQ空间">qzone</a><a
								class="tg-sns-link tg-sns-sina"
								onclick="pgvSendClick({hottag:'sns.buttons.sina'});window.open('http://v.t.sina.com.cn/share/share.php?url=http%3A%2F%2Flpl.qq.com%2Fes%2Fnews_detail.shtml%3Fnid%3D15637&amp;title=WE%E6%8C%BA%E8%BF%9B%E5%9B%9B%E5%BC%BA%EF%BC%81%E5%8D%8A%E5%86%B3%E8%B5%9BLPL%E4%B8%8ELCK%E6%AE%8A%E6%AD%BB%E4%B8%80%E6%88%98&amp;pic=http://img.crawler.qq.com/lolwebvideo/20171022223625/aa1f18bc5e78d98266ad80c4bb6e3936/0','','width=840, height=540')"
								href="javascript:void(0)" title="分享到新浪微博">sina</a>
						</div>
					</div>
				</div>
				<div class="comment" id="comment_div">
					<iframe id="lolFrame" name="lolFrame" scrolling="no" height="100%"
						width="100%" frameborder="0" allowtransparency="true"
						marginheight="0" marginwidth="0" src=""></iframe>
				</div>
			</div>
			<div class="detail-right article-page_right fl">
				<div class="detail-right-box-list clearfix">
					<div class="progress2 pr">
						<div class="tit-box">
							<h2 class="fl">近期赛程</h2>
							<ul class="cent_nav clearfix" id="scheduleSortList">
								<li class="fl w1" id="bGameIndex_0"><a href="javascript:;"
									class="on">全球总决赛</a></li>
								<li class="fl w2" id="bGameIndex_1"><a href="javascript:;">职业联赛</a></li>
							</ul>
							<span class="cimi-more fr"> <span id="tab-more-span">更多赛事</span>
								<div class="more-cont">
									<ul id="moreSchedule" rel="scheduleSortList">
										<li class="more-cont-list" id="bGameIndex_2"><a
											href="javascript:;">季中冠军赛</a></li>
										<li class="more-cont-list" id="bGameIndex_3"><a
											href="javascript:;">洲际系列赛</a></li>
										<li class="more-cont-list" id="bGameIndex_4"><a
											href="javascript:;">德玛西亚杯</a></li>
										<li class="more-cont-list" id="bGameIndex_5"><a
											href="javascript:;">甲级职业联赛</a></li>
										<li class="more-cont-list" id="bGameIndex_6"><a
											href="javascript:;">韩国职业联赛</a></li>
										<li class="more-cont-list" id="bGameIndex_7"><a
											href="javascript:;">城市英雄争霸赛</a></li>
										<li class="more-cont-list" id="bGameIndex_8"><a
											href="javascript:;">全国高校联赛</a></li>
										<li class="more-cont-list" id="bGameIndex_9"><a
											href="javascript:;">校际精英赛</a></li>
										<li class="more-cont-list" id="bGameIndex_10"><a
											href="javascript:;">全明星赛</a></li>
										<li class="more-cont-list" id="bGameIndex_11"><a
											href="javascript:;">欧洲职业联赛</a></li>
										<li class="more-cont-list" id="bGameIndex_12"><a
											href="javascript:;">北美职业联赛</a></li>
										<li class="more-cont-list" id="bGameIndex_13"><a
											href="javascript:;">全球高校冠军杯</a></li>
										<li class="more-cont-list" id="bGameIndex_14"><a
											href="javascript:;">台港澳职业联赛</a></li>
										<li class="more-cont-list" id="bGameIndex_15"><a
											href="javascript:;">发展联赛</a></li>
										<li class="more-cont-list" id="bGameIndex_16"><a
											href="javascript:;">储备联赛</a></li>
										<li class="more-cont-list" id="bGameIndex_17"><a
											href="javascript:;">城市冠军联赛</a></li>
										<li class="more-cont-list" id="bGameIndex_18"><a
											href="javascript:;">其他赛事</a></li>
										<li class="more-cont-list" id="bGameIndex_19"><a
											href="javascript:;">周年庆狂欢盛典</a></li>
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
										<li class="unstart clearfix"><div class="z-list w24 fl">
												<div class="middle">
													<p class="time">10-28 15:30</p>
													<p>未开始</p>
												</div>
											</div>
											<div class="z-list w16 corps_name fl">SKT</div>
											<div class="z-list score fl">
												<span class="z-list score_right">0</span>:<span
													class="z-list score_right">0</span>
											</div>
											<div class="z-list corps_name w16 fl">RNG</div>
											<div class="z-list w24 fl">
												<a id="dinyue_26370" class="look_video"
													href="javascript:PUBLIC_FUNCTION.DinYue(26370);">预约直播</a>
											</div></li>
										<li class="unstart clearfix"><div class="z-list w24 fl">
												<div class="middle">
													<p class="time">10-29 15:30</p>
													<p>未开始</p>
												</div>
											</div>
											<div class="z-list w16 corps_name fl">WE</div>
											<div class="z-list score fl">
												<span class="z-list score_right">0</span>:<span
													class="z-list score_right">0</span>
											</div>
											<div class="z-list corps_name w16 fl">SSG</div>
											<div class="z-list w24 fl">
												<a href="javascript:;" class="look_video">敬请期待</a>
											</div></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="detail-right-box-list clearfix">
					<div class="official">
						<div class="tit-box">
							<h2>官方栏目</h2>
						</div>
						<div class="video-left-cbox clearfix" id="official_contents">
							<div class="video-left-child fl">
								<a target="_blank"
									href="http://lpl.qq.com/es/video_detail.shtml?nid=15631"
									onclick="pgvSendClick({hottag:'lplweb.index.official.img0','virtualDomain':'lol.qq.com'})"><img
									src="../images/gflm-1.jpg"
									width="180" height="110" alt="rotate1"></a>
							</div>
							<div class="video-left-child fl">
								<a target="_blank"
									href="http://lpl.qq.com/es/video_detail.shtml?nid=15408"
									onclick="pgvSendClick({hottag:'lplweb.index.official.img1','virtualDomain':'lol.qq.com'})"><img
									src="../images/gflm-2.jpg"
									width="180" height="110" alt="rotate1"></a>
							</div>
							<div class="video-left-child fl">
								<a target="_blank"
									href="http://lpl.qq.com/es/video_detail.shtml?nid=15516"
									onclick="pgvSendClick({hottag:'lplweb.index.official.img2','virtualDomain':'lol.qq.com'})"><img
									src="../images/gflm-3.jpg"
									width="180" height="110" alt="rotate1"></a>
							</div>
							<div class="video-left-child fl">
								<a target="_blank"
									href="http://lpl.qq.com/es/video_detail.shtml?nid=15638"
									onclick="pgvSendClick({hottag:'lplweb.index.official.img3','virtualDomain':'lol.qq.com'})"><img
									src="../images/gflm-4.jpg"
									width="180" height="110" alt="rotate1"></a>
							</div>
						</div>
					</div>
				</div>
				<div class="detail-right-box-list clearfix">
					<div class="progress2 pr">
						<div class="tit-box">
							<h2 class="fl" name="pos_4" id="pos_4">积分榜</h2>
							<ul class="cent_nav clearfix" id="team_score_bar_common">
								<li class="fl"><a href="javascript:;" class="on" rel="0">LPL</a></li>
								<li class="fl"><a href="javascript:;" rel="1">LCK</a></li>
								<li class="fl"><a href="javascript:;" rel="2">LMS</a></li>
								<li class="fl"><a href="javascript:;" rel="3">EU.LCS</a></li>
								<li class="fl"><a href="javascript:;" rel="4">NA.LCS</a></li>
							</ul>
						</div>
						<div class="match-rank clearfix" id="group_bar_common">
							<a href="javascript:;" class="on">A组</a><a href="javascript:;"
								class="">B组</a>
						</div>
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
									<ul class="match-rank-list tc ovh clearfix"
										id="team_score_board_common_A" style="display: block;">
										<li><em>1</em>
											<div class="match-rank-team">
												<a target="_blank"
													href="http://lpl.qq.com/es/team_detail.shtml?tid=1"><img
													src="http://img.crawler.qq.com/lolwebvideo/20170915160101/20b8dd6e1a755aa6cac4f100fcda4ae3/0"
													width="52" height="52"></a><span>EDG</span>
											</div>
											<p class="match-rank-rult">
												<span class="vic">11</span> <span class="centline">/</span>
												5
											</p> <i>11</i></li>
										<li><em>2</em>
											<div class="match-rank-team">
												<a target="_blank"
													href="http://lpl.qq.com/es/team_detail.shtml?tid=12"><img
													src="http://img.crawler.qq.com/lolwebvideo/20170915160903/746aad9d79ed53500d7752d71e901247/0"
													width="52" height="52"></a><span>WE</span>
											</div>
											<p class="match-rank-rult">
												<span class="vic">11</span> <span class="centline">/</span>
												5
											</p> <i>11</i></li>
										<li><em>3</em>
											<div class="match-rank-team">
												<a target="_blank"
													href="http://lpl.qq.com/es/team_detail.shtml?tid=2"><img
													src="http://shp.qpic.cn/lolwebvideo/201501/998cb5f6cc78749b5d2c395a61e02c3f/0"
													width="52" height="52"></a><span>IG</span>
											</div>
											<p class="match-rank-rult">
												<span class="vic">10</span> <span class="centline">/</span>
												6
											</p> <i>10</i></li>
										<li><em>4</em>
											<div class="match-rank-team">
												<a target="_blank"
													href="http://lpl.qq.com/es/team_detail.shtml?tid=9"><img
													src="http://shp.qpic.cn/lolwebvideo/201501/234724f2ba0eeeff1da23717ffbac939/0"
													width="52" height="52"></a><span>Snake</span>
											</div>
											<p class="match-rank-rult">
												<span class="vic">5</span> <span class="centline">/</span>
												11
											</p> <i>5</i></li>
										<li><em>5</em>
											<div class="match-rank-team">
												<a target="_blank"
													href="http://lpl.qq.com/es/team_detail.shtml?tid=57"><img
													src="http://shp.qpic.cn/lolwebvideo/201501/fc435014acc55707fa9e6b03c18722ee/0"
													width="52" height="52"></a><span>IM</span>
											</div>
											<p class="match-rank-rult">
												<span class="vic">5</span> <span class="centline">/</span>
												11
											</p> <i>5</i></li>
										<li><em>6</em>
											<div class="match-rank-team">
												<a target="_blank"
													href="http://lpl.qq.com/es/team_detail.shtml?tid=42"><img
													src="http://img.crawler.qq.com/lolwebvideo/201501/0120384fcd94f4a5a46ecb5de9c721f1/0"
													width="52" height="52"></a><span>DAN</span>
											</div>
											<p class="match-rank-rult">
												<span class="vic">4</span> <span class="centline">/</span>
												12
											</p> <i>4</i></li>
									</ul>
									<ul class="match-rank-list tc ovh clearfix"
										id="team_score_board_common_B" style="display: none;">
										<li><em>1</em>
											<div class="match-rank-team">
												<a target="_blank"
													href="http://lpl.qq.com/es/team_detail.shtml?tid=8"><img
													src="http://img.crawler.qq.com/lolwebvideo/20170915155925/de0cb67a113871e5ebce20107792f01a/0"
													width="52" height="52"></a><span>RNG</span>
											</div>
											<p class="match-rank-rult">
												<span class="vic">12</span> <span class="centline">/</span>
												4
											</p> <i>12</i></li>
										<li><em>2</em>
											<div class="match-rank-team">
												<a target="_blank"
													href="http://lpl.qq.com/es/team_detail.shtml?tid=6"><img
													src="http://shp.qpic.cn/lolwebvideo/201501/3be15c042ebba67a2cd876c408c24fe9/0"
													width="52" height="52"></a><span>OMG</span>
											</div>
											<p class="match-rank-rult">
												<span class="vic">10</span> <span class="centline">/</span>
												6
											</p> <i>10</i></li>
										<li><em>3</em>
											<div class="match-rank-team">
												<a target="_blank"
													href="http://lpl.qq.com/es/team_detail.shtml?tid=7"><img
													src="http://shp.qpic.cn/lolwebvideo/201501/1fafdaa5932af6a724771fcc6b709a68/0"
													width="52" height="52"></a><span>Newbee</span>
											</div>
											<p class="match-rank-rult">
												<span class="vic">9</span> <span class="centline">/</span> 7
											</p> <i>9</i></li>
										<li><em>4</em>
											<div class="match-rank-team">
												<a target="_blank"
													href="http://lpl.qq.com/es/team_detail.shtml?tid=41"><img
													src="http://img.crawler.qq.com/lolwebvideo/20170627165241/8e73c5975d6fa75f4a2e2037c3145042/0"
													width="52" height="52"></a><span>SNG</span>
											</div>
											<p class="match-rank-rult">
												<span class="vic">7</span> <span class="centline">/</span> 9
											</p> <i>7</i></li>
										<li><em>5</em>
											<div class="match-rank-team">
												<a target="_blank"
													href="http://lpl.qq.com/es/team_detail.shtml?tid=4"><img
													src="http://shp.qpic.cn/lolwebvideo/201501/9c36db11f4542f26410c462f01d0770b/0"
													width="52" height="52"></a><span>LGD</span>
											</div>
											<p class="match-rank-rult">
												<span class="vic">6</span> <span class="centline">/</span>
												10
											</p> <i>6</i></li>
										<li><em>6</em>
											<div class="match-rank-team">
												<a target="_blank"
													href="http://lpl.qq.com/es/team_detail.shtml?tid=29"><img
													src="http://img.crawler.qq.com/lolwebvideo/201501/6dba221e74443397a0c8c5b6ce3a1caf/0"
													width="52" height="52"></a><span>JDG</span>
											</div>
											<p class="match-rank-rult">
												<span class="vic">6</span> <span class="centline">/</span>
												10
											</p> <i>6</i></li>
									</ul>
									<ul class="match-rank-list tc ovh clearfix"
										id="team_score_board_common_C" style="display: none;"></ul>
									<ul class="match-rank-list tc ovh clearfix"
										id="team_score_board_common_D" style="display: none;"></ul>
									<ul class="match-rank-list tc ovh clearfix"
										id="team_score_board_common_E" style="display: none;"></ul>
									<ul class="match-rank-list tc ovh clearfix"
										id="team_score_board_common_F" style="display: none;"></ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="detail-right-box-list clearfix">
					<div class="official">
						<div class="tit-box">
							<h2>热门精选</h2>
						</div>
						<div class="video-left-cbox clearfix" id="hot_focus">
							<a target="_blank"
								href="http://lpl.qq.com/es/video_detail.shtml?nid=15651"
								onclick="pgvSendClick({hottag:'lplweb.index.fixedgg.bimg','virtualDomain':'lol.qq.com'})"><div
									class="video-left-child video-left-first-child fl">
									<img
										src="../images/remen-1.jpg"
										width="375" height="110">
								</div></a><a target="_blank"
								href="http://lpl.qq.com/es/video_detail.shtml?nid=15639"
								onclick="pgvSendClick({hottag:'lplweb.index.fixedgg.simg0','virtualDomain':'lol.qq.com'})"><div
									class="video-left-child fl">
									<img
										src="http://img.crawler.qq.com/lolwebvideo/20171023101659/7aa6fafc6762aa48a0c5b8ededce0ce3/0"
										width="180" height="110">
								</div></a><a target="_blank"
								href="http://lpl.qq.com/es/video_detail.shtml?nid=15679"
								onclick="pgvSendClick({hottag:'lplweb.index.fixedgg.simg1','virtualDomain':'lol.qq.com'})"><div
									class="video-left-child fl">
									<img
										src="http://img.crawler.qq.com/lolwebvideo/20171026111121/f50340d960181b78bc791704944b9985/0"
										width="180" height="110">
								</div></a><a target="_blank"
								href="http://lpl.qq.com/es/video_detail.shtml?nid=15685"
								onclick="pgvSendClick({hottag:'lplweb.index.fixedgg.simg2','virtualDomain':'lol.qq.com'})"><div
									class="video-left-child fl">
									<img
										src="http://img.crawler.qq.com/lolwebvideo/20171026151621/43eae18f0cfc86dcc99e7db6b402ac6b/0"
										width="180" height="110">
								</div></a><a target="_blank"
								href="http://lpl.qq.com/es/video_detail.shtml?nid=15607"
								onclick="pgvSendClick({hottag:'lplweb.index.fixedgg.simg3','virtualDomain':'lol.qq.com'})"><div
									class="video-left-child fl">
									<img
										src="http://img.crawler.qq.com/lolwebvideo/20171022230533/02467f692b0dc93db7ea1b6f729320f1/0"
										width="180" height="110">
								</div></a>
						</div>
					</div>
				</div>


			</div>
		</div>
		<!--cp HTML编辑结束-->
		<!-- footer S -->
		<div class="footer-box">
			<script src="http://ossweb-img.qq.com/images/js/foot.js"></script>
			<div id="footer_ied">
				<div class="wrap_ied">
					<p>
						<a href="//ieg.tencent.com" target="_blank">腾讯互动娱乐</a> | <a
							href="//game.qq.com/contract.shtml" target="_blank">服务条款</a> | <a
							href="//adver.qq.com/" target="_blank">广告服务</a> | <a
							href="//game.qq.com/hr/" target="_blank">腾讯游戏招聘</a> | <a
							href="//service.qq.com/" target="_blank">腾讯游戏客服</a> | <a
							href="//game.qq.com/gnav" target="_blank">游戏地图</a> | <a
							href="//tgact.qq.com/" target="_blank">游戏活动</a> | <a
							href="https://jiazhang.qq.com/jz/home.html?ADTAG=gamepcbottom"
							target="_blank">成长守护平台</a> | <a
							href="//game.qq.com/brand/business.htm" target="_blank">商务合作</a>
						| <a href="//www.qq.com/map/" target="_blank">网站导航</a>
					</p>
					<p class="e">COPYRIGHT © 1998 – 2017 TENCENT. ALL RIGHTS
						RESERVED.</p>
					<p>
						<a href="//www.tencent.com/law/mo_law.shtml?/law/copyright.htm"
							target="_blank">腾讯公司 版权所有</a>
					</p>
				</div>
			</div>
		</div>
		<!--[if !IE]>|xGv00|05cf46b4fbbf4927f7cbfae3d9e86c78<![endif]-->
		<!-- footer E -->
	</div>
	<script src="//ossweb-img.qq.com/images/js/dr/dr.js"
		type="text/javascript"></script>
	<script
		src="http://ossweb-img.qq.com/images/js/jquery/jquery-1.8.0.min.js"></script>
	<script src="http://ossweb-img.qq.com/images/lol/title/lol.js"></script>
	<script language="javascript" src="http://pingjs.qq.com/tcss.ping.js"></script>
	<script type="text/javascript"
		src="http://ossweb-img.qq.com/images/js/milo/milo-min.js"></script>
	<script
		src="http://imgcache.qq.com/tencentvideo_v1/tvp/js/tvp.player_v2_jq.js"></script>
	<script src="http://ossweb-img.qq.com/images/js/share/share-min.js"
		charset="gb2312"></script>
	<script
		src="http://lpl.qq.com/web201612/data/LOL_MATCH2_GAME_LIST_BRIEF.js"></script>
	<script src="http://lpl.qq.com/web201612/data/LOL_MATCH2_TEAM_LIST.js"></script>
	<script src="http://lpl.qq.com/web201612/js/bbs_comment.js"></script>
	<script src="/web201612/js/tools.js"></script>
	<script src="/web201612/js/common.js"></script>
	<script src="/web201612/js/com.js"></script>
	<script src="/web201612/js/public.js"></script>
	<script src="/web201612/js/match.js"></script>
	<!--script src="/web201612/js/niupin.js"></script-->
	<script src="/web201612/js/detail.js"></script>
	<script src="http://ossweb-img.qq.com/images/js/eas/eas.js"></script>
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
	
		if (typeof (pgvMain) == 'function') pgvMain({
				virtualDomain : "lol.qq.com"
			});
		EAS.TimeLine();
	</script>

	<script src="../js/eas.js"
		type="text/javascript"></script>
	<script src="//dr.game.qq.com/dr.php" type="text/javascript"></script>
	<div class="ost ost_bg" style="position: absolute; top: -500px;">
		<ul class="ost_b">
			<li class="ost_tg ost_bg"><a href="http://game.qq.com/"
				target="_blank" class="ost_blnk"
				onclick="pgvSendClick({hottag:'act.title.logo'});">腾讯游戏</a></li>
			<li class="ost_gg ost_bg"><a id="ost_gg" target="_blank"
				class="ost_blnk" onclick="pgvSendClick({hottag:'act.title.shana'});"
				href="http://lol.qq.com/act/a20170902fighting/?e_code=351706&amp;ADTAG=cooperation.inner.lolwebtop">精彩活动</a></li>
			<li class="ost_i"><p class="ost_t ost_bg">
					<a href="http://lol.qq.com/main.shtml" target="_blank"
						class="ost_lnk" onclick="pgvSendClick({hottag:'act.title.back'});">返回官网首页</a>
				</p>
				<p class="ost_gl">
					<a href="http://lol.qq.com/download.shtml" target="_blank"
						class="ost_lnk ost_ldc"
						onclick="pgvSendClick({hottag:'act.title.down'});">游戏下载</a><a
						href="http://lol.qq.com/comm-htdocs/pay/new_index.htm?t=lol"
						target="_blank" class="ost_lnk ost_ldc"
						onclick="pgvSendClick({hottag:'act.title.pay'});"> 点券充值</a>
				</p></li>
		</ul>
	</div>
	<div id="qb-sougou-search" style="display: none; opacity: 0;">
		<p>搜索</p>
		<p class="last-btn">复制</p>
		<iframe src=""></iframe>
	</div>
</body>
</html>
