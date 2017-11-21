<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<base href="<%=basePath%>">
<meta name="robots" content="all" />
<meta http-equiv="x-ua-compatible" content="IE=edge">
<meta name="Copyright" content="TENCNET" />
<meta name="author" content="Tencent-TGideas" />
<meta name="Description" content="英雄联盟,英雄传奇之路" />
<meta name="Keywords" content="英雄联盟,英雄传奇之路,珍惜守卫限时销售,赠奖杯" />
<meta http-equiv="x-ua-compatible" content="IE=8" >
<title>英雄传奇之路 - 英雄联盟官方网站 - 腾讯游戏</title>
<!-- 设计：帅呆 | 重构：小倪 | 创建：20170318 | 团队博客：http://tgideas.qq.com -->
<link href="./css/common.css" type="text/css" rel="stylesheet" />
	<style>
		.t-btn-box{ width: 760px;height: 95px; position: absolute; top: 668px; left: 121px;}
		.t-btn-box a{ display: block; width: 354px; height: 95px; text-indent: -9999px; background: url(./images/t-btn.png) no-repeat;}
		.t-btn-box .t-btn1{ float: left; background-position: 0 0;}
		.t-btn-box .t-btn2{ float: right; background-position: -403px 0;}
		.t-btn-box .t-btn1:hover{ background-position: 0 -130px;}
		.t-btn-box .t-btn2:hover,.t-btn-box .on{ background-position: -403px -130px;}
      .redtxt{color:#ff0000;font-size:16px;text-align: left;}
      .red{color:#ff0000;}
	</style>
</head>
<body>
<!--低版本IE提示 S-->
<p class="chromeframe" style="display:none">您使用的IE浏览器版本过低，本站不再支持，<a href="http://windows.microsoft.com/">升级您的IE浏览器</a>，或使用<a href="http://www.google.com/chromeframe/?redirect=true">Google Chrome</a>、<a href="http://www.firefox.com.cn/">Firefox</a>等高级浏览器，将会得到更好的体验！</p>
<!--低版本IE提示 E-->
<div class="wrap">
	<div class="pageheader">
	  <a class="logo" href="http://lol.qq.com/" target="_blank">英雄联盟官方网站</a>
		<div class="header-inner layout">
			<h1 class="none">英雄传奇之路</h1>
			<div class="t-btn-box">
				<a class="t-btn t-btn1" href="//lol.qq.com/act/a20171011champion/index.html">珍稀守卫限时销售</a>
           <span class="newico"></span>
				<a class="t-btn t-btn2 on" href="javascript:;">支持冠军战队赢取豪华奖励</a>
			</div>
			<h4 class="header_h4">购珍稀守卫，赠冠军奖杯，<span class="co_yellow fweight">抽稀有限定皮肤</span></h4>
         <p class="toptips">开启冠军奖杯必得绑定大区<span class="red">未拥有</span>的道具</p>
         <p class="toptips tp1">（温馨提示：开启冠军奖杯后请立即领取道具，然后再次打开冠军奖杯，避免抽到重复皮肤）</p>
         <a href="//lol.qq.com/act/a20171011champion/awrads_1.html" target="_blank" class="lookbtn1">查看冠军奖杯奖励内容 &gt;&gt;</a>
         <a href="javascript:;" onclick="showBuyPop()" class="lookbtn2">战队图标表情及钻石礼包</a>
			<p class="actime" style="display:none">活动结束时间：2017年10月14日 23:59<br>奖励领取截止：2017年10月15日 23:59</p>
			<div class="login-box">
				<p id="unlogin" style="display:block;">欢迎您，请先 <a href="javascript:;" onClick="LoginManager.login();" title="登录" class="a-in">[登录]</a></p>
				<p id="logined" style="display:none;">欢迎您，亲爱的 <span id="login_qq_span"></span>&nbsp;<span id="areainfo"><a href='javascript:GetAreaInfo(Undo)' class='a-out'>请先绑定大区</a></span><i class="">&nbsp;|&nbsp;</i><a href="javascript:;" onClick="LoginManager.logout(function(){location.reload()});" title="注销" class="a-out">注销</a></p>
			</div>
		</div>
	</div>
	<div class="page_con">
		<div class="part_rank">
			<div id="S6" class="part_titbg1">
				<h3 class="title_name1">战队人气榜单</h3>
			</div>
			<div class="part_rank_list">
				<ul class="clearfix" id="team_sup_rank">
					<li class="rankli">
						<img src="//img.crawler.qq.com/lolwebvideo/201501/7a710b743899fa0f6e03802bda900f4a/0" width="50">
						<div class="rankshow">
							<div class="rankline" style="height:0%"></div>
						</div>
						<img src="//ossweb-img.qq.com/images/lol/act/a20171011champion/page_ico1.png">
						<p>0支持</p>
					</li>
					<li class="rankli">
						<img src="//img.crawler.qq.com/lolwebvideo/20170915171620/e6b96579ba0bbfbd0b9fab0d20a319fd/0" width="50">
						<div class="rankshow">
							<div class="rankline" style="height:0%"></div>
						</div>
						<img src="//ossweb-img.qq.com/images/lol/act/a20171011champion/page_ico1.png">
						<p>0支持</p>
					</li>
					<li class="rankli">
						<img src="//img.crawler.qq.com/lolwebvideo/201501/1ce891be080b0e9246a06638250a5117/0" width="50">
						<div class="rankshow">
							<div class="rankline" style="height:0%"></div>
						</div>
						<img src="//ossweb-img.qq.com/images/lol/act/a20171011champion/page_ico1.png">
						<p>0支持</p>
					</li>
					<li class="rankli">
						<img src="//img.crawler.qq.com/lolwebvideo/201501/48a96e92d604f8beff9bac355d5c621f/0" width="50">
						<div class="rankshow">
							<div class="rankline" style="height:0%"></div>
						</div>
						<img src="//ossweb-img.qq.com/images/lol/act/a20171011champion/page_ico1.png">
						<p>0支持</p>
					</li>
					<li class="rankli">
						<img src="//img.crawler.qq.com/lolwebvideo/201501/209361afb215fb6ad4c26df553640af7/0" width="50">
						<div class="rankshow">
							<div class="rankline" style="height:0%"></div>
						</div>
						<img src="//ossweb-img.qq.com/images/lol/act/a20171011champion/page_ico1.png">
						<p>0支持</p>
					</li>
					<li class="rankli">
						<img src="//img.crawler.qq.com/lolwebvideo/20170915164431/b0a2191567a7213cf2963d053bc97d50/0" width="50">
						<div class="rankshow">
							<div class="rankline" style="height:0%"></div>
						</div>
						<img src="//ossweb-img.qq.com/images/lol/act/a20171011champion/page_ico1.png">
						<p>0支持</p>
					</li>
					<li class="rankli">
						<img src="//img.crawler.qq.com/lolwebvideo/20170915124306/799f22e8b191fbfa408f38f4a9447d2f/0" width="50">
						<div class="rankshow">
							<div class="rankline" style="height:0%"></div>
						</div>
						<img src="//ossweb-img.qq.com/images/lol/act/a20171011champion/page_ico1.png">
						<p>0支持</p>
					</li>
					<li class="rankli">
						<img src="//img.crawler.qq.com/lolwebvideo/20170915124609/1d5849b9bfba5e393c4c7adeed362c6f/0" width="50">
						<div class="rankshow">
							<div class="rankline" style="height:0%"></div>
						</div>
						<img src="//ossweb-img.qq.com/images/lol/act/a20171011champion/page_ico1.png">
						<p>0支持</p>
					</li>
				</ul>
			</div>
		</div>
		<div class="page_honor">
			<div id="S7" class="part_titbg2">
				<h3 class="title_name2">我的战队勋章墙</h3>
			</div>
			<div class="page_wall1" id="wallbox1">
				<div class="page_wall2">
					<div class="page_wall_con">
						<ul class="page_wall_ul clearfix" id="my_team_icon">
						</ul>
					</div>
				</div>
			</div>
			<div class="page_lwall1" id="wallbox2">
				<div class="page_lwall2">
					<div class="page_lwall_con">
						<ul class="page_lwall_ul clearfix" id="my_team_icon_all">
						</ul>
					</div>
				</div>
			</div>
			<a href="javascript:;" class="page_more"></a>
		</div>
		<div class="page_gethonnor">
			<div class="part_titbg3">
				<h3 class="title_name3">获得战队勋章</h3>
			</div>
			<div class="page_gethonnor_btn">
				<a href="#cup"><strong>开启</strong>冠军奖杯</a>
				<a href="javascript:;" onClick="ShowDisDiv()"><strong>分解</strong>冠军奖杯</a>
				<p class="p1">2017年10月28日 00:00前<span>获得双倍</span>勋章</p>
           <p class="p2">开启冠军奖杯必得绑定大区<span class="red">未拥有</span>的道具<br>（温馨提示：开启冠军奖杯后请立即领取道具，然后再次打开冠军奖杯）</p>     
			</div>
		</div>
		<div id="S1" class="step-1">
			<div class="step1-inner layout">
				<!--充值钻石 S-->
				<p class="step-1-tips">钻石可以兑换<strong>珍稀守卫皮肤 </strong>，同时获赠<strong>奖杯 </strong></p>
				<h3 class="none">01 充值钻石</h3>
				<div class="step-1-item">
					<div class="btn-curr" id="buy_btn_curr">
						<a class="diamond-num num-50" href="javascript:;" onClick="BuyDiamond(200);EAS.SendClick({'e_c': 'lol.buydraw.Buy50_2','c_t':4});pgvSendClick({hottag:'act.a20170824lux.payBtn.pay50'});" id="pay_50"><span>充值</span><em>200</em><i>颗</i></a>
						<a class="diamond-num num-100" href="javascript:;" onClick="BuyDiamond(1000);EAS.SendClick({'e_c': 'lol.buydraw.Buy100_2','c_t':4});pgvSendClick({hottag:'act.a20170824lux.payBtn.pay100'});" id="pay_100"><span>充值</span><em>1000</em><i>颗</i></a>
						<a class="diamond-num num-500" href="javascript:;" onClick="BuyDiamond(2000);EAS.SendClick({'e_c': 'lol.buydraw.Buy500_2','c_t':4});pgvSendClick({hottag:'act.a20170824lux.payBtn.pay500'});" id="pay_500"><span>充值</span><em>2000</em><i>颗</i></a>
					</div>
					<div class="btn-hidden" id="buy_btn_hidden">
						<a class="num-50 diamond-gray" href="javascript:;"><span>充值</span><em>200</em><i>颗</i></a>
						<a class="num-100 diamond-gray" href="javascript:;"><span>充值</span><em>1000</em><i>颗</i></a>
						<a class="num-500 diamond-gray" href="javascript:;"><span>充值</span><em>2000</em><i>颗</i></a>
					</div>
					<input class="recharge-num" type="text" name="DiamondNum" id="DiamondNum" onKeyDown="onlyNum();" onKeyUp="MatchNum(this.id);"  maxlength="5" value="200" onBlur="if(this.value==''){this.value='200';};" onFocus="if(this.value=='200'){this.value='';}">
					<span class="none">颗</span>
					<span id="buy_info" class="btn-pay-disable"></span><a id="buy_btn" href="javascript:;" onClick="BuyDiamond(0);EAS.SendClick({'e_c': 'lol.buydraw.Buy_2','c_t':4});pgvSendClick({hottag:'act.a20170824lux.payBtn.confirm'});" class="btn-minor" title="确认充值">确认充值</a>
					<i class="recharge-tips-1">请输入50的倍数</i><i class="recharge-tips-1">请输入50的倍数</i>
				</div>
				<!--充值钻石 E-->
				<!-- 帽子戏法头像 S-->
				<div class="avatar">
					<h3 class="none">帽子戏法头像 15天(请在游戏商城内购买)</h3>
					<p class="none">价格9900金币或2000点券</p>
					<p class="none">购买即送200钻</p>
					<a class="btn-common btn-common-big" href="javascript:;" onClick="showDialogs('J_howBuy');pgvSendClick({hottag:'act.a20170824lux.generalBtn.howToPay'});">如何购买？</a>
					<a class="btn-minor btn-minor1" href="javascript:;" onClick="DoDiaFree(1);EAS.SendClick({'e_c': 'lol.buydraw.FreeDia_2','c_t':4});pgvSendClick({hottag:'act.a20170824lux.generalBtn.getDiamond'});">已使用头像，领取钻石</a>
					<!--i class="recharge-tips-2">头像购买将于9月8日开启</i-->
				</div>
				<!-- 帽子戏法头像 E-->
			</div>
		</div>
		
		<div id="S2" class="step-2">
			<div class="step2-inner layout">
				<h3 class="none">02 钻石兑换守卫皮肤送冠军奖杯</h3>
				<p class="tips">当前拥有<strong>钻石</strong><span id="iDiamond">0</span>颗 <span id="BtnRef"><a href="javascript:;" onClick="BtnRefInfo();pgvSendClick({hottag:'act.a20170824lux.functionBtn.refresh'});">点击刷新</a></span>（如果购买钻石未到账，请刷新页面）</p>
				<div class="step-2-item">
					<h3 class="none">暗影魄罗守卫 7天</h3>
					<h5 class="none">兑换价格：200钻石</h5>
					<p class="none">兑换即送冠军奖杯</p>
					<span class="none">兑换数量</span>
					<input class="buy-num" type="text" name="wardSkin3" id="wardSkin3" onKeyDown="onlyNum();" onKeyUp="MatchNum(this.id);"  maxlength="3" value="1" onBlur="if(this.value==''){this.value='1';};" onFocus="if(this.value=='1'){this.value='';}">
					<a href="javascript:;" onClick="BuyWardSkin(3,0);EAS.SendClick({'e_c': 'lol.buydraw.Trade1_2','c_t':4});pgvSendClick({hottag:'act.a20170824lux.payBtn.goldStar'});" class="btn-minor" title="立即购买">立即兑换</a>
				</div>
			</div>
		</div>
		
		<div class="step-3">
			<div class="step3-inner layout">
				<h3 class="none">竞猜冠军战队 赢取传奇奖励</h3>
				<p class="step-3-time">2017年11月6日 12:00 领取战队奖励</p>
				<div class="step-3-bag clearfix">
					<div class="bag">
						<p>获得条件：拥有<span>战队</span>勋章</p>
						<a href="//lol.qq.com/act/a20171011champion/awrads_3.html" target="_blank" class="bagbtn"></a>
					</div>
					<div class="bag1">
						<p>获得条件：拥有<span>人气第一</span>战队勋章或<span>冠军</span>战队勋章</p>
						<a href="//lol.qq.com/act/a20171011champion/awrads_2.html" target="_blank" class="bagbtn"></a>
					</div>
					<div class="prize">
						<span>勋章</span>越多，机率越高；<em>100个</em>人气第一战队勋章或冠军战队勋章必得。
					</div>
				</div>
				<p class="tips" id="cup" name="cup">当前拥有<strong>冠军奖杯</strong><span id="iChampionNum">0</span>个 <span id="BtnRef1" class="sx"><a href="javascript:;" onClick="BtnRefInfo();pgvSendClick({hottag:'act.a20170824lux.functionBtn.refresh'});">点击刷新</a></span>（如果冠军奖杯未到账，请刷新）</p>
				<div class="funbox clearfix">
					<div class="teamshow teampos1">
						<div class="funcleft">
							<div class="powershowbg">
								<div class="powershow" >
									<img src="//img.crawler.qq.com/lolwebvideo/201501/7a710b743899fa0f6e03802bda900f4a/0" width="130">
								</div>
							</div>
							<div class="pumpkins-item">
								<a href="javascript:;" onClick="CheckDrawTeam({'dtype':5,'Team':1});EAS.SendClick({'e_c': 'lol.buydraw.Draw1_2','c_t':4});pgvSendClick({hottag:'act.a20170824lux.getItem.golddStar1'});" class="btn-common btn-commonl l"><span class="pd1">使用</span><strong>1</strong><span>个</span></a>
								<a href="javascript:;" onClick="CheckDrawTeam({'dtype':6,'Team':1});EAS.SendClick({'e_c': 'lol.buydraw.Draw1_10_2','c_t':4});pgvSendClick({hottag:'act.a20170824lux.getItem.goldStar10'});" class="btn-common btn-commonr r"><span class="pd2">使用</span><strong>10</strong><span>个</span></a>
								<p class="ptis"></p>
								<p class="ptistxt">开启冠军奖杯，赠送<span>战队勋章</span></p>
							</div>
							<div class="funcbotm clearfix">
								<div class="page_wall_li"><img src="//img.crawler.qq.com/lolwebvideo/201501/7a710b743899fa0f6e03802bda900f4a/0" width="50"><p>已拥有:<span id="team_flag_1">0</span></p></div>
								<div class="funcbotmbtn">
									<a href="javascript:;">开启RNG战队专属奖励</a>
									<p class="showtime"><!--span>10</span>天<span>5</span>小时后 开启奖励(含10个道具)--></p>
								</div>
							</div>
						</div>
						<div class="rankli">
							<div class="rankshow">
								<div class="rankline" style="height:0%"></div>
							</div>
							<img src="//ossweb-img.qq.com/images/lol/act/a20171011champion/page_ico1.png">
							<p id="team1_sup" style="display:none">0支持</p>
						</div>
					</div>
					<div class="teamshow teampos2">
						<div class="funcleft">
							<div class="powershowbg">
								<div class="powershow" >
									<img src="//img.crawler.qq.com/lolwebvideo/20170915171620/e6b96579ba0bbfbd0b9fab0d20a319fd/0" width="130">
								</div>
							</div>
							<div class="pumpkins-item">
								<a href="javascript:;" onClick="CheckDrawTeam({'dtype':5,'Team':2});EAS.SendClick({'e_c': 'lol.buydraw.Draw1_2','c_t':4});pgvSendClick({hottag:'act.a20170824lux.getItem.golddStar1'});" class="btn-common btn-commonl l"><span class="pd1">使用</span><strong>1</strong><span>个</span></a>
								<a href="javascript:;" onClick="CheckDrawTeam({'dtype':6,'Team':2});EAS.SendClick({'e_c': 'lol.buydraw.Draw1_10_2','c_t':4});pgvSendClick({hottag:'act.a20170824lux.getItem.goldStar10'});" class="btn-common btn-commonr r"><span class="pd2">使用</span><strong>10</strong><span>个</span></a>
								<p class="ptis"></p>
								<p class="ptistxt">开启冠军奖杯，赠送<span>战队勋章</span></p>
							</div>
							<div class="funcbotm clearfix">
								<div class="page_wall_li"><img src="//img.crawler.qq.com/lolwebvideo/20170915171620/e6b96579ba0bbfbd0b9fab0d20a319fd/0" width="50"><p>已拥有:<span id="team_flag_2">0</span></p></div>
								<div class="funcbotmbtn">
									<a href="javascript:;">开启FNC战队专属奖励</a>
									<p class="showtime"><!--span>10</span>天<span>5</span>小时后 开启奖励(含10个道具)--></p>
								</div>
							</div>
						</div>
						<div class="rankli">
							<div class="rankshow">
								<div class="rankline" style="height:0%"></div>
							</div>
							<img src="//ossweb-img.qq.com/images/lol/act/a20171011champion/page_ico1.png">
							<p id="team2_sup" style="display:none">0支持</p>
						</div>
					</div>
					<div class="teamshow teampos3">
						<div class="funcleft">
							<div class="powershowbg">
								<div class="powershow">
									<img src="//img.crawler.qq.com/lolwebvideo/201501/1ce891be080b0e9246a06638250a5117/0" width="130">
								</div>
							</div>
							<div class="pumpkins-item">
								<a href="javascript:;" onClick="CheckDrawTeam({'dtype':5,'Team':3});EAS.SendClick({'e_c': 'lol.buydraw.Draw1_2','c_t':4});pgvSendClick({hottag:'act.a20170824lux.getItem.golddStar1'});" class="btn-common btn-commonl l"><span class="pd1">使用</span><strong>1</strong><span>个</span></a>
								<a href="javascript:;" onClick="CheckDrawTeam({'dtype':6,'Team':3});EAS.SendClick({'e_c': 'lol.buydraw.Draw1_10_2','c_t':4});pgvSendClick({hottag:'act.a20170824lux.getItem.goldStar10'});" class="btn-common btn-commonr r"><span class="pd2">使用</span><strong>10</strong><span>个</span></a>
								<p class="ptis"></p>
								<p class="ptistxt">开启冠军奖杯，赠送<span>战队勋章</span></p>
							</div>
							<div class="funcbotm clearfix">
								<div class="page_wall_li"><img src="//img.crawler.qq.com/lolwebvideo/201501/1ce891be080b0e9246a06638250a5117/0" width="50"><p>已拥有:<span id="team_flag_3">0</span></p></div>
								<div class="funcbotmbtn">
									<a href="javascript:;">开启WE战队专属奖励</a>
									<p class="showtime"><!--span>10</span>天<span>5</span>小时后 开启奖励(含10个道具)--></p>
								</div>
							</div>
						</div>
						<div class="rankli">
							<div class="rankshow">
								<div class="rankline" style="height:0%"></div>
							</div>
							<img src="//ossweb-img.qq.com/images/lol/act/a20171011champion/page_ico1.png">
							<p id="team3_sup" style="display:none">0支持</p>
						</div>
					</div>
					<div class="teamshow teampos4">
						<div class="funcleft">
							<div class="powershowbg">
								<div class="powershow">
									<img src="//img.crawler.qq.com/lolwebvideo/201501/48a96e92d604f8beff9bac355d5c621f/0" width="130">
								</div>
							</div>
							<div class="pumpkins-item">
								<a href="javascript:;" onClick="CheckDrawTeam({'dtype':5,'Team':4});EAS.SendClick({'e_c': 'lol.buydraw.Draw1_2','c_t':4});pgvSendClick({hottag:'act.a20170824lux.getItem.golddStar1'});" class="btn-common btn-commonl l"><span class="pd1">使用</span><strong>1</strong><span>个</span></a>
								<a href="javascript:;" onClick="CheckDrawTeam({'dtype':6,'Team':4});EAS.SendClick({'e_c': 'lol.buydraw.Draw1_10_2','c_t':4});pgvSendClick({hottag:'act.a20170824lux.getItem.goldStar10'});" class="btn-common btn-commonr r"><span class="pd2">使用</span><strong>10</strong><span>个</span></a>
								<p class="ptis"></p>
								<p class="ptistxt">开启冠军奖杯，赠送<span>战队勋章</span></p>
							</div>
							<div class="funcbotm clearfix">
								<div class="page_wall_li"><img src="//img.crawler.qq.com/lolwebvideo/201501/48a96e92d604f8beff9bac355d5c621f/0" width="50"><p>已拥有:<span id="team_flag_4">0</span></p></div>
								<div class="funcbotmbtn">
									<a href="javascript:;">开启C9战队专属奖励</a>
									<p class="showtime"><!--span>10</span>天<span>5</span>小时后 开启奖励(含10个道具)--></p>
								</div>
							</div>
						</div>
						<div class="rankli">
							<div class="rankshow">
								<div class="rankline" style="height:0%"></div>
							</div>
							<img src="//ossweb-img.qq.com/images/lol/act/a20171011champion/page_ico1.png">
							<p id="team4_sup" style="display:none">0支持</p>
						</div>
					</div>
					<div class="teamshow teampos5">
						<div class="funcleft">
							<div class="powershowbg">
								<div class="powershow">
									<img src="//img.crawler.qq.com/lolwebvideo/201501/209361afb215fb6ad4c26df553640af7/0" width="130">
								</div>
							</div>
							<div class="pumpkins-item">
								<a href="javascript:;" onClick="CheckDrawTeam({'dtype':5,'Team':5});EAS.SendClick({'e_c': 'lol.buydraw.Draw1_2','c_t':4});pgvSendClick({hottag:'act.a20170824lux.getItem.golddStar1'});" class="btn-common btn-commonl l"><span class="pd1">使用</span><strong>1</strong><span>个</span></a>
								<a href="javascript:;" onClick="CheckDrawTeam({'dtype':6,'Team':5});EAS.SendClick({'e_c': 'lol.buydraw.Draw1_10_2','c_t':4});pgvSendClick({hottag:'act.a20170824lux.getItem.goldStar10'});" class="btn-common btn-commonr r"><span class="pd2">使用</span><strong>10</strong><span>个</span></a>
								<p class="ptis"></p>
								<p class="ptistxt">开启冠军奖杯，赠送<span>战队勋章</span></p>
							</div>
							<div class="funcbotm clearfix">
								<div class="page_wall_li"><img src="//img.crawler.qq.com/lolwebvideo/201501/209361afb215fb6ad4c26df553640af7/0" width="50"><p>已拥有:<span id="team_flag_5">0</span></p></div>
								<div class="funcbotmbtn">
									<a href="javascript:;">开启SKT战队专属奖励</a>
									<p class="showtime"><!--span>10</span>天<span>5</span>小时后 开启奖励(含10个道具)--></p>
								</div>
							</div>
						</div>
						<div class="rankli">
							<div class="rankshow">
								<div class="rankline" style="height:0%"></div>
							</div>
							<img src="//ossweb-img.qq.com/images/lol/act/a20171011champion/page_ico1.png">
							<p id="team5_sup" style="display:none">0支持</p>
						</div>
					</div>
					<div class="teamshow teampos6">
						<div class="funcleft">
							<div class="powershowbg">
								<div class="powershow">
									<img src="//img.crawler.qq.com/lolwebvideo/20170915164431/b0a2191567a7213cf2963d053bc97d50/0" width="130">
								</div>
							</div>
							<div class="pumpkins-item">
								<a href="javascript:;" onClick="CheckDrawTeam({'dtype':5,'Team':6});EAS.SendClick({'e_c': 'lol.buydraw.Draw1_2','c_t':4});pgvSendClick({hottag:'act.a20170824lux.getItem.golddStar1'});" class="btn-common btn-commonl l"><span class="pd1">使用</span><strong>1</strong><span>个</span></a>
								<a href="javascript:;" onClick="CheckDrawTeam({'dtype':6,'Team':6});EAS.SendClick({'e_c': 'lol.buydraw.Draw1_10_2','c_t':4});pgvSendClick({hottag:'act.a20170824lux.getItem.goldStar10'});" class="btn-common btn-commonr r"><span class="pd2">使用</span><strong>10</strong><span>个</span></a>
								<p class="ptis"></p>
								<p class="ptistxt">开启冠军奖杯，赠送<span>战队勋章</span></p>
							</div>
							<div class="funcbotm clearfix">
								<div class="page_wall_li"><img src="//img.crawler.qq.com/lolwebvideo/20170915164431/b0a2191567a7213cf2963d053bc97d50/0" width="50"><p>已拥有:<span id="team_flag_6">0</span></p></div>
								<div class="funcbotmbtn">
									<a href="javascript:;">开启MSF战队专属奖励</a>
									<p class="showtime"><!--span>10</span>天<span>5</span>小时后 开启奖励(含10个道具)--></p>
								</div>
							</div>
						</div>
						<div class="rankli">
							<div class="rankshow">
								<div class="rankline" style="height:0%"></div>
							</div>
							<img src="//ossweb-img.qq.com/images/lol/act/a20171011champion/page_ico1.png">
							<p id="team6_sup" style="display:none">0支持</p>
						</div>
					</div>
					<div class="teamshow teampos7">
						<div class="funcleft">
							<div class="powershowbg">
								<div class="powershow" >
									<img src="//img.crawler.qq.com/lolwebvideo/20170915124306/799f22e8b191fbfa408f38f4a9447d2f/0" width="130">
								</div>
							</div>
							<div class="pumpkins-item">
								<a href="javascript:;" onClick="CheckDrawTeam({'dtype':5,'Team':7});EAS.SendClick({'e_c': 'lol.buydraw.Draw1_2','c_t':4});pgvSendClick({hottag:'act.a20170824lux.getItem.golddStar1'});" class="btn-common btn-commonl l"><span class="pd1">使用</span><strong>1</strong><span>个</span></a>
								<a href="javascript:;" onClick="CheckDrawTeam({'dtype':6,'Team':7});EAS.SendClick({'e_c': 'lol.buydraw.Draw1_10_2','c_t':4});pgvSendClick({hottag:'act.a20170824lux.getItem.goldStar10'});" class="btn-common btn-commonr r"><span class="pd2">使用</span><strong>10</strong><span>个</span></a>
								<p class="ptis"></p>
								<p class="ptistxt">开启冠军奖杯，赠送<span>战队勋章</span></p>
							</div>
							<div class="funcbotm clearfix">
								<div class="page_wall_li"><img src="//img.crawler.qq.com/lolwebvideo/20170915124306/799f22e8b191fbfa408f38f4a9447d2f/0" width="50"><p>已拥有:<span id="team_flag_7">0</span></p></div>
								<div class="funcbotmbtn">
									<a href="javascript:;">开启LZ战队专属奖励</a>
									<p class="showtime"><!--span>10</span>天<span>5</span>小时后 开启奖励(含10个道具)--></p>
								</div>
							</div>
						</div>
						<div class="rankli">
							<div class="rankshow">
								<div class="rankline" style="height:0%"></div>
							</div>
							<img src="//ossweb-img.qq.com/images/lol/act/a20171011champion/page_ico1.png">
							<p id="team7_sup" style="display:none">0支持</p>
						</div>
					</div>
					<div class="teamshow teampos8">
						<div class="funcleft">
							<div class="powershowbg">
								<div class="powershow" >
									<img src="//img.crawler.qq.com/lolwebvideo/20170915124609/1d5849b9bfba5e393c4c7adeed362c6f/0" width="130">
								</div>
							</div>
							<div class="pumpkins-item">
								<a href="javascript:;" onClick="CheckDrawTeam({'dtype':5,'Team':8});EAS.SendClick({'e_c': 'lol.buydraw.Draw1_2','c_t':4});pgvSendClick({hottag:'act.a20170824lux.getItem.golddStar1'});" class="btn-common btn-commonl l"><span class="pd1">使用</span><strong>1</strong><span>个</span></a>
								<a href="javascript:;" onClick="CheckDrawTeam({'dtype':6,'Team':8});EAS.SendClick({'e_c': 'lol.buydraw.Draw1_10_2','c_t':4});pgvSendClick({hottag:'act.a20170824lux.getItem.goldStar10'});" class="btn-common btn-commonr r"><span class="pd2">使用</span><strong>10</strong><span>个</span></a>
								<p class="ptis"></p>
								<p class="ptistxt">开启冠军奖杯，赠送<span>战队勋章</span></p>
							</div>
							<div class="funcbotm clearfix">
								<div class="page_wall_li"><img src="//img.crawler.qq.com/lolwebvideo/20170915124609/1d5849b9bfba5e393c4c7adeed362c6f/0" width="50"><p>已拥有:<span id="team_flag_8">0</span></p></div>
								<div class="funcbotmbtn">
									<a href="javascript:;">开启SSG战队专属奖励</a>
									<p class="showtime"><!--span>10</span>天<span>5</span>小时后 开启奖励(含10个道具)--></p>
								</div>
							</div>
						</div>
						<div class="rankli">
							<div class="rankshow">
								<div class="rankline" style="height:0%"></div>
							</div>
							<img src="//ossweb-img.qq.com/images/lol/act/a20171011champion/page_ico1.png">
							<p id="team8_sup" style="display:none">0支持</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="step-4 mine">
			<div class="stuff layout">
				<div class="stuff-tit mb">
					<h3 class="none">累计奖杯获得神秘奖励</h3>
					<p class="tips">打开一个胜利奖杯，累计1积分；打开一个传奇奖杯，累计2积分；打开一个冠军奖杯，累计4积分。额外赠送的胜利奖杯不累计积分。<br/>积分奖励领取后，请在下方“神秘奖杯”栏查看奖励。<br/>积分仅在本次活动有效，活动结束后累计积分将清空，未领奖励也会删除。</p>
				</div>
				<div class="add-pay-box">
					<div class="lnh clearfix">
						<p class="add-pay-txt fl" id="draw_point">当前积分：0分</p><div class="fr" id="Mile_BTN"><a href="javascript:;" onClick="RefMile()" class="btn-small">刷新</a></div>
					</div>
					<div class="linebg clearfix"><div id="gift_line" class="add-line fl" style="width:0%;"></div></div>
					<a href="javascript:;" class="paypre">上一页</a><a href="javascript:;" class="paynext">下一页</a>
					<div class="line1"></div><div class="line2"></div><div class="line3"></div><div class="line4"></div><div class="line5"></div>
					<div class="mondiv">
						<div class="numleft">0</div><div class="numright">400</div>
						<ul class="add-no clearfix">
							<li id="SP_10"   class="fl"><span>10</span>			<div class="imgbox1"><b class="txt-give">赠送</b><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/star1_bg.png"><p class="img-name1">神秘奖杯</p></div>		<a href="javascript:;" onClick="DoDrawSP(10  )" class="btn-small">开启神秘奖杯</a></li>
							<li id="SP_20"   class="fl"><span>20</span>			<div class="imgbox1"><b class="txt-give">赠送</b><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/star1_bg.png"><p class="img-name1">神秘奖杯</p></div>		<a href="javascript:;" onClick="DoDrawSP(20  )" class="btn-small">开启神秘奖杯</a></li>
							<li id="SP_40"   class="fl"><span>40</span>			<div class="imgbox1"><b class="txt-give">赠送</b><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/star1_bg.png"><p class="img-name1">神秘奖杯</p></div>		<a href="javascript:;"  onclick="DoDrawSP(40  )" class="btn-small">开启神秘奖杯</a></li>
							<li id="SP_60"  class="fl"><span>60</span>	<div class="imgbox1"><b class="txt-give">赠送</b><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/star4_bg.png" onClick="ShowGiftSelect()" class="img-touch"><i class="mask-play"></i><p class="img-name1">奖池自选1款皮肤</p></div>		<a href="javascript:;"  onclick="ShowGiftSelect()" class="btn-small">开启神秘奖杯</a></li>
							<li id="SP_100"  class="fl mr"><span>100</span>		<div class="imgbox1"><b class="txt-give">赠送</b><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/star1_bg.png"><p class="img-name1">神秘奖杯</p></div>		<a href="javascript:;"  onclick="DoDrawSP(100 )" class="btn-small">开启神秘奖杯</a></li>
							<li id="SP_200"  class="fl"><span>200</span>		<div class="imgbox1"><b class="txt-give">赠送</b><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/star2_bg.png"><p class="img-name1">神秘奖杯</p></div>		<a href="javascript:;"  onclick="DoDrawSP(200 )" class="btn-small">开启神秘奖杯</a></li>
							<li id="SP_400"  class="fl"><span>400</span>	<div class="imgbox1"><b class="txt-give">赠送</b><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/star2_bg.png"><p class="img-name1">神秘奖杯</div>		<a href="javascript:;"  onclick="DoDrawSP(400 )" class="btn-small">开启神秘奖杯</a></li>
							<li id="SP_600"  class="fl"><span>600</span>		<div class="imgbox1"><b class="txt-give">赠送</b><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/star2_bg.png"><p class="img-name1">神秘奖杯</p></div>		<a href="javascript:;"  onclick="DoDrawSP(600 )" class="btn-small">开启神秘奖杯</a></li>
							<li id="SP_800"  class="fl"><span>800</span>		<div class="imgbox1"><b class="txt-give">赠送</b><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/star2_bg.png"><p class="img-name1">神秘奖杯</p></div>		<a href="javascript:;"  onclick="DoDrawSP(800 )" class="btn-small">开启神秘奖杯</a></li>
							<li id="SP_1000" class="fl mr"><span>1000</span>		<div class="imgbox1"><b class="txt-give">赠送</b><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/star2_bg.png"><p class="img-name1">神秘奖杯</p></div>		<a href="javascript:;"  onclick="DoDrawSP(1000)" class="btn-small">开启神秘奖杯</a></li>
							<li id="SP_1200" class="fl"><span>1200</span>		<div class="imgbox1"><b class="txt-give">赠送</b><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/star2_bg.png"><p class="img-name1">神秘奖杯</p></div>		<a href="javascript:;"  onclick="DoDrawSP(1200)" class="btn-small">开启神秘奖杯</a></li>
							<li id="SP_1400" class="fl"><span>1400</span><div class="imgbox1"><b class="txt-give">赠送</b><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/star2_bg.png"><p class="img-name1">神秘奖杯</p></div>			<a href="javascript:;"  onclick="DoDrawSP(1400)" class="btn-small">开启神秘奖杯</a></li>
							<li id="SP_1600" class="fl"><span>1600</span>		<div class="imgbox1"><b class="txt-give">赠送</b><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/star2_bg.png"><p class="img-name1">神秘奖杯</p></div>		<a href="javascript:;"  onclick="DoDrawSP(1600)" class="btn-small">开启神秘奖杯</a></li>
							<li id="SP_1800" class="fl"><span>1800</span>		<div class="imgbox1"><b class="txt-give">赠送</b><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/star2_bg.png"><p class="img-name1">神秘奖杯</p></div>		<a href="javascript:;"  onclick="DoDrawSP(1800)" class="btn-small">开启神秘奖杯</a></li>
							<li id="SP_2000" class="fl mr"><span>2000</span>		<div class="imgbox1"><b class="txt-give">赠送</b><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/star2_bg.png"><p class="img-name1">神秘奖杯</p></div>		<a href="javascript:;"  onclick="DoDrawSP(2000)" class="btn-small">开启神秘奖杯</a></li>
							<li id="SP_2400" class="fl"><span>2400</span>		<div class="imgbox1"><b class="txt-give">赠送</b><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/star2_bg.png"><p class="img-name1">神秘奖杯</p></div>		<a href="javascript:;"  onclick="DoDrawSP(2400)" class="btn-small">开启神秘奖杯</a></li>
							<li id="SP_2800" class="fl"><span>2800</span><div class="imgbox1"><b class="txt-give">赠送</b><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/star2_bg.png"><p class="img-name1">神秘奖杯</p></div>		<a href="javascript:;" onClick="DoDrawSP(2800)" class="btn-small">开启神秘奖杯</a></li>
							<li id="SP_3200" class="fl"><span>3200</span>		<div class="imgbox1"><b class="txt-give">赠送</b><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/star2_bg.png"><p class="img-name1">神秘奖杯</p></div>		<a href="javascript:;"  onclick="DoDrawSP(3200)" class="btn-small">开启神秘奖杯</a></li>
							<li id="SP_3600" class="fl"><span>3600</span>		<div class="imgbox1"><b class="txt-give">赠送</b><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/star2_bg.png"><p class="img-name1">神秘奖杯</p></div>		<a href="javascript:;"  onclick="DoDrawSP(3600)" class="btn-small">开启神秘奖杯</a></li>
							<li id="SP_4000" class="fl mr"><span>4000</span>		<div class="imgbox1"><b class="txt-give">赠送</b><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/star2_bg.png"><p class="img-name1">神秘奖杯</p></div>		<a href="javascript:;"  onclick="DoDrawSP(4000)" class="btn-small">开启神秘奖杯</a></li>
							<li id="SP_4400" class="fl"><span>4400</span>		<div class="imgbox1"><b class="txt-give">赠送</b><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/star2_bg.png"><p class="img-name1">神秘奖杯</p></div>		<a href="javascript:;"  onclick="DoDrawSP(4400)" class="btn-small">开启神秘奖杯</a></li>
							<li id="SP_4800" class="fl"><span>4800</span><div class="imgbox1"><b class="txt-give">赠送</b><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/star2_bg.png"><p class="img-name1">神秘奖杯</p></div>			<a href="javascript:;"  onclick="DoDrawSP(4800)" class="btn-small">开启神秘奖杯</a></li>
							<li id="SP_5200" class="fl"><span>5200</span>		<div class="imgbox1"><b class="txt-give">赠送</b><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/star2_bg.png"><p class="img-name1">神秘奖杯</p></div>		<a href="javascript:;"  onclick="DoDrawSP(5200)" class="btn-small">开启神秘奖杯</a></li>
							<li id="SP_5600" class="fl"><span>5600</span>		<div class="imgbox1"><b class="txt-give">赠送</b><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/star2_bg.png"><p class="img-name1">神秘奖杯</p></div>		<a href="javascript:;"  onclick="DoDrawSP(5600)" class="btn-small">开启神秘奖杯</a></li>
							<li id="SP_6000" class="fl"><span>6000</span>		<div class="imgbox1"><b class="txt-give">赠送</b><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/star2_bg.png"><p class="img-name1">神秘奖杯</p></div>		<a href="javascript:;"  onclick="DoDrawSP(6000)" class="btn-small">开启神秘奖杯</a></li>
						</ul>
					</div>
				</div>
		
			</div>
		</div>
		
		<div id="S4" class="step-5">
			<div class="stuff layout">
				<div class="stuff-tit">
					<h3 class="none">累计奖杯获得神秘奖励</h3>
					<p class="tips">物品栏中未领取的道具，可以领取至任意大区，或者参加道具合成。<br/>使用道具合成功能，可以将任意3个英雄（期限、非期限）合成一个非期限英雄，或将任意3个皮肤（期限、非期限）合成一个非期限皮肤。<br/>合成获得的道具可以领取至任意大区，或继续用于道具合成。</p>
				</div>
				<a class="btn-common btn-common-big check-my-good" href="javascript:;" onClick="Personal();pgvSendClick({hottag:'act.a20170824lux.functionBtn.check'});" target="_blank">查询我的英雄和皮肤</a>
				<a class="mix-btn" href="javascript:;" onClick="ShowSyn();EAS.SendClick({'e_c': 'lol.buydraw.Syn_2','c_t':4});pgvSendClick({hottag:'act.a20170824lux.functionBtn.synthesis'});" title="我要合成">我要合成奖励</a>
		
				<!-- 神秘奖励 S -->
				<div class="scroll-stuff" id="gift_div">
					<h4><strong>神秘奖杯</strong>奖励 <span class="stuff_t_tips"></span></h4>
					<p class="gift-pages" id="gift_page"></p>
					<div class="scroll-stuffbox" id="gift_list">
						<div class="scroll-pic-box">
							<ul class="scroll-pic">
							  <li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none.png"><a href="javascript:;" onClick="ShowUserItemTab(0,'GiftList')"><em class="pa giftcolor">点击查看<br>奖励</em></a></li>
							  <li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
							  <li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
							  <li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
							  <li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
							  <li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
						  </ul>
						</div>
					</div>
				</div>
				<!-- 神秘奖励 E -->
				
				<!-- 冠军奖杯奖励 S -->
				<div class="scroll-stuff">
					<h4><strong>冠军奖杯</strong>奖励<span class="stuff_t_tips"></span></h4>
					<p class="gift-pages" id="champion_page"></p>
					<div class="scroll-stuffbox" id="champion_list">
						<div class="scroll-pic-box">
							<ul class="scroll-pic">
							  <li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none.png"><a href="javascript:;" onClick="ShowUserItemTab(0,'ChampionList')"><em class="pa giftcolor">点击查看<br>奖励</em></a></li>
							  <li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
							  <li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
							  <li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
							  <li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
							  <li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- 胜利奖杯奖励 E -->
		
				<!-- 胜利奖杯奖励 S -->
				<div class="scroll-stuff">
					<h4><strong>胜利奖杯</strong>奖励<span class="stuff_t_tips"></span></h4>
					<p class="gift-pages" id="gold_page"></p>
					<div class="scroll-stuffbox" id="gold_list">
						<div class="scroll-pic-box">
							<ul class="scroll-pic">
							  <li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none.png"><a href="javascript:;" onClick="ShowUserItemTab(0,'GoldList')"><em class="pa giftcolor">点击查看<br>奖励</em></a></li>
							  <li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
							  <li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
							  <li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
							  <li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
							  <li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- 胜利奖杯奖励 E -->
		
				<!-- 传奇奖杯奖励 S -->
				<div class="scroll-stuff">
					<h4><strong>传奇奖杯</strong>奖励<span class="stuff_t_tips"></span></h4>
					<p class="gift-pages" id="color_page"></p>
					<div class="scroll-stuffbox" id="color_list">
						<div class="scroll-pic-box">
							<ul class="scroll-pic">
							  <li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none.png"><a href="javascript:;" onClick="ShowUserItemTab(0,'ColorList')"><em class="pa giftcolor">点击查看<br>奖励</em></a></li>
							  <li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
							  <li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
							  <li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
							  <li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
							  <li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- 传奇奖杯奖励 E -->
		
				<!-- 合成栏 S -->
				<div class="scroll-stuff">
					<h4>合成栏<span class="stuff_t_tips"></span></h4>
					<p class="gift-pages" id="syn_page"></p>
					<div class="scroll-stuffbox" id="syn_list">
						<div class="scroll-pic-box">
							<div class="scroll-pic-box" >
							<ul class="scroll-pic">
								<li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none.png"><a href="javascript:;" onClick="ShowUserItemTab(0,'SynList')"><em class="pa giftcolor">点击查看<br>奖励</em></a></li>
								<li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
								<li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
								<li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
								<li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
								<li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
							</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- 合成栏 E -->
		
			</div>
		</div>
		<div id="S5" class="step-7">
			<p class="step-7-txt">第<span>1</span>轮 2017年10月18日-10月22日</p>
			<ul class="scroll-pic clearfix">
				<li>
					<a href="javascript:;">
						<span id="">
							<i class="pic-item"><img src="http://ossweb-img.qq.com/images/lol/appskin/11010.jpg"></i>
							<i class="gift-ico skin"></i>
							<em class="days"></em>
						</span>
						<i class="sbg-cover"></i>
						<i class="gift-name">斩星魔剑 易</i>
					</a>
				</li>
				<li>
					<a href="javascript:;">
						<span id="">
							<i class="pic-item"><img src="http://ossweb-img.qq.com/images/lol/appskin/37004.jpg"></i>
							<i class="gift-ico skin"></i>
							<em class="days"></em>
						</span>
						<i class="sbg-cover"></i>
						<i class="gift-name">古琴余韵 娑娜</i>
					</a>
				</li>
				<li>
					<a href="javascript:;">
						<span id="">
							<i class="pic-item"><img src="http://ossweb-img.qq.com/images/lol/appskin/96005.jpg"></i>
							<i class="gift-ico skin"></i>
							<em class="days"></em>
						</span>
						<i class="sbg-cover"></i>
						<i class="gift-name">醒狮 克格’莫</i>
					</a>
				</li>
				<li>
					<a href="javascript:;">
						<span id="">
							<i class="pic-item"><img src="http://ossweb-img.qq.com/images/lol/appskin/42006.jpg"></i>
							<i class="gift-ico skin"></i>
							<em class="days"></em>
						</span>
						<i class="sbg-cover"></i>
						<i class="gift-name">神龙之翼 库奇</i>
					</a>
				</li>
			</ul>
       <p class="step-7-txt">第<span>2</span>轮(当前) 2017年10月23日 12:00-10月26日</p>
			<ul class="scroll-pic clearfix">
				<li>
					<a href="javascript:;">
						<span id="">
							<i class="pic-item"><img src="http://ossweb-img.qq.com/images/lol/appskin/64003.jpg"></i>
							<i class="gift-ico skin"></i>
							<em class="days"></em>
						</span>
						<i class="sbg-cover"></i>
						<i class="gift-name">龙的传人 李青</i>
					</a>
				</li>
				<li>
					<a href="javascript:;">
						<span id="">
							<i class="pic-item"><img src="http://ossweb-img.qq.com/images/lol/appskin/64008.jpg"></i>
							<i class="gift-ico skin"></i>
							<em class="days"></em>
						</span>
						<i class="sbg-cover"></i>
						<i class="gift-name">龙的传人 李青 跃龙在渊</i>
					</a>
				</li>
                        				<li>
					<a href="javascript:;">
						<span id="">
							<i class="pic-item"><img src="http://ossweb-img.qq.com/images/lol/appskin/64007.jpg"></i>
							<i class="gift-ico skin"></i>
							<em class="days"></em>
						</span>
						<i class="sbg-cover"></i>
						<i class="gift-name">龙的传人 李青 飞龙在天</i>
					</a>
				</li>
				<li>
					<a href="javascript:;">
						<span id="">
							<i class="pic-item"><img src="http://ossweb-img.qq.com/images/lol/appskin/62003.jpg"></i>
							<i class="gift-ico skin"></i>
							<em class="days"></em>
						</span>
						<i class="sbg-cover"></i>
						<i class="gift-name">定海神珍 孙悟空</i>
					</a>
				</li>
				<li>
					<a href="javascript:;">
						<span id="">
							<i class="pic-item"><img src="http://ossweb-img.qq.com/images/lol/appskin/62005.jpg"></i>
							<i class="gift-ico skin"></i>
							<em class="days"></em>
						</span>
						<i class="sbg-cover"></i>
						<i class="gift-name">美猴王 孙悟空</i>
					</a>
				</li>
  <li>
					<a href="javascript:;">
						<span id="">
							<i class="pic-item"><img src="http://ossweb-img.qq.com/images/lol/appskin/51010.jpg"></i>
							<i class="gift-ico skin"></i>
							<em class="days"></em>
						</span>
						<i class="sbg-cover"></i>
						<i class="gift-name">玉净夜叉 凯特琳</i>
					</a>
				</li>
  <li>
					<a href="javascript:;">
						<span id="">
							<i class="pic-item"><img src="http://ossweb-img.qq.com/images/lol/appskin/25010.jpg"></i>
							<i class="gift-ico skin"></i>
							<em class="days"></em>
						</span>
						<i class="sbg-cover"></i>
						<i class="gift-name">紫金罗刹 莫甘娜</i>
					</a>
				</li>
			</ul>
  <p class="step-7-txt">第<span>3</span>轮 2017年10月27日 12:00-10月30日</p>
			<ul class="scroll-pic clearfix">
				<li>
					<a href="javascript:;">
						<span id="">
							<i class="pic-item"><img src="http://ossweb-img.qq.com/images/lol/appskin/133004.jpg"></i>
							<i class="gift-ico skin"></i>
							<em class="days"></em>
						</span>
						<i class="sbg-cover"></i>
						<i class="gift-name">觅心之翼 奎因</i>
					</a>
				</li>
				<li>
					<a href="javascript:;">
						<span id="">
							<i class="pic-item"><img src="http://ossweb-img.qq.com/images/lol/appskin/236007.jpg"></i>
							<i class="gift-ico skin"></i>
							<em class="days"></em>
						</span>
						<i class="sbg-cover"></i>
						<i class="gift-name">觅心游侠 卢锡安</i>
					</a>
				</li>
				<li>
					<a href="javascript:;">
						<span id="">
							<i class="pic-item"><img src="http://ossweb-img.qq.com/images/lol/appskin/67004.jpg"></i>
							<i class="gift-ico skin"></i>
							<em class="days"></em>
						</span>
						<i class="sbg-cover"></i>
						<i class="gift-name">觅心猎手 薇恩</i>
					</a>
				</li>
				<li>
					<a href="javascript:;">
						<span id="">
							<i class="pic-item"><img src="http://ossweb-img.qq.com/images/lol/appskin/37007.jpg"></i>
							<i class="gift-ico skin"></i>
							<em class="days"></em>
						</span>
						<i class="sbg-cover"></i>
						<i class="gift-name">甜心宝贝 娑娜</i>
					</a>
				</li>
  				<li>
					<a href="javascript:;">
						<span id="">
							<i class="pic-item"><img src="http://ossweb-img.qq.com/images/lol/appskin/22006.jpg"></i>
							<i class="gift-ico skin"></i>
							<em class="days"></em>
						</span>
						<i class="sbg-cover"></i>
						<i class="gift-name">觅心女王 艾希</i>
					</a>
				</li>
  				<li>
					<a href="javascript:;">
						<span id="">
							<i class="pic-item"><img src="http://ossweb-img.qq.com/images/lol/appskin/1009.jpg"></i>
							<i class="gift-ico skin"></i>
							<em class="days"></em>
						</span>
						<i class="sbg-cover"></i>
						<i class="gift-name">甜心宝贝 安妮</i>
					</a>
				</li>
  				<li>
					<a href="javascript:;">
						<span id="">
							<i class="pic-item"><img src="http://ossweb-img.qq.com/images/lol/appskin/61006.jpg"></i>
							<i class="gift-ico skin"></i>
							<em class="days"></em>
						</span>
						<i class="sbg-cover"></i>
						<i class="gift-name">觅心魔灵 奥莉安娜</i>
					</a>
				</li>
			</ul>
  <p class="step-7-txt">第<span>4</span>轮 2017年10月31日 12:00-11月6日</p>
			<ul class="scroll-pic clearfix">
				<li>
					<a href="javascript:;">
						<span id="">
							<i class="pic-item"><img src="http://ossweb-img.qq.com/images/lol/appskin/86011.jpg"></i>
							<i class="gift-ico skin"></i>
							<em class="days"></em>
						</span>
						<i class="sbg-cover"></i>
						<i class="gift-name">张辽 文远 </i>
					</a>
				</li>
				<li>
					<a href="javascript:;">
						<span id="">
							<i class="pic-item"><img src="http://ossweb-img.qq.com/images/lol/appskin/268004.jpg"></i>
							<i class="gift-ico skin"></i>
							<em class="days"></em>
						</span>
						<i class="sbg-cover"></i>
						<i class="gift-name">司马懿 仲达</i>
					</a>
				</li>
				<li>
					<a href="javascript:;">
						<span id="">
							<i class="pic-item"><img src="http://ossweb-img.qq.com/images/lol/appskin/254005.jpg"></i>
							<i class="gift-ico skin"></i>
							<em class="days"></em>
						</span>
						<i class="sbg-cover"></i>
						<i class="gift-name">虎痴之拳 蔚</i>
					</a>
				</li>
				<li>
					<a href="javascript:;">
						<span id="">
							<i class="pic-item"><img src="http://ossweb-img.qq.com/images/lol/appskin/69004.jpg"></i>
							<i class="gift-ico skin"></i>
							<em class="days"></em>
						</span>
						<i class="sbg-cover"></i>
						<i class="gift-name">碧玉之牙 卡西奥佩娅</i>
					</a>
				</li>
  				<li>
					<a href="javascript:;">
						<span id="">
							<i class="pic-item"><img src="http://ossweb-img.qq.com/images/lol/appskin/131002.jpg"></i>
							<i class="gift-ico skin"></i>
							<em class="days"></em>
						</span>
						<i class="sbg-cover"></i>
						<i class="gift-name">广寒仙子 嫦娥</i>
					</a>
				</li>
  				<li>
					<a href="javascript:;">
						<span id="">
							<i class="pic-item"><img src="http://ossweb-img.qq.com/images/lol/appskin/92005.jpg"></i>
							<i class="gift-ico skin"></i>
							<em class="days"></em>
						</span>
						<i class="sbg-cover"></i>
						<i class="gift-name">替父从军 花木兰</i>
					</a>
				</li>
  				<li>
					<a href="javascript:;">
						<span id="">
							<i class="pic-item"><img src="http://ossweb-img.qq.com/images/lol/appskin/222002.jpg"></i>
							<i class="gift-ico skin"></i>
							<em class="days"></em>
						</span>
						<i class="sbg-cover"></i>
						<i class="gift-name">神龙烈焰 金克丝</i>
					</a>
				</li>
  				<li>
					<a href="javascript:;">
						<span id="">
							<i class="pic-item"><img src="http://ossweb-img.qq.com/images/lol/appskin/1008.jpg"></i>
							<i class="gift-ico skin"></i>
							<em class="days"></em>
						</span>
						<i class="sbg-cover"></i>
						<i class="gift-name">“你看见过我的熊猫吗？”安妮</i>
					</a>
				</li>
			</ul>
		</div>
		<div class="bottom step-6">
		
			<!-- 其他召唤师获得 S-->
			<div class="other layout">
				<h3 class="tit-spr other-tit">其他召唤师获得</h3>
				<div id="time_list" class="scroll-stuffbox"></div>
			</div>
			<!-- 其他召唤师获得 E -->
		
			<!-- 活动规则 S-->
			<div id="rules" class="rules layout">
				<h3 class="tit-spr rules-tit">活动规则</h3>
				<ol class="rulelist">
					<li>
						<em class="ico">1</em>
						<p>在活动页面上使用Q币充值钻石，5Q币充值50钻石。在游戏客户端购买并使用期限头像“帽子戏法”，赠送200钻石，所有大区头像限购一次。充值的钻石会在页面上显示。</p>
					</li>
					<li>
						<em class="ico">2</em>
						<p>使用钻石兑换珍稀守卫皮肤，其中50钻石兑换一份“暗影魄罗守卫（7天）”，赠“胜利奖杯”一份；100钻石兑换一份“河蟹陛下守卫（7天）”，赠“传奇奖杯”一份；200钻石兑换一份“古墓天使守卫（7天）”，赠“冠军奖杯”一份。兑换多份珍稀守卫皮肤，使用时间叠加。</p>
					</li>
					<li>
						<em class="ico">3</em>
						<p>珍稀守卫皮肤将直接发放到绑定的帐号及大区中，从兑换时开始计算时限。</p>
					</li>
					<li>
						<em class="ico">4</em>
						<p>打开奖杯会赠送道具，道具需要手动领取，支持领取到任意大区。<a href="http://lol.qq.com/webplat/info/news_version3/152/4579/4581/m3106/201704/578901.shtml" class="morelink" target="_blank">查看胜利奖杯、传奇奖杯概率</a> <a href="http://lol.qq.com/act/a20171011champion/awrads_1.html" class="morelink" target="_blank">查看冠军奖杯概率</a></p>
					</li>
					<li>
						<em class="ico">5</em>
						<p><strong>打开胜利奖杯将累计1积分，打开传奇奖杯将累计2积分，打开冠军奖杯将累计4积分。赠送的胜利奖杯不累计积分。累计积分达到一定数量，可以获赠神秘奖杯好礼</strong></p>
					</li>
					<li>
						<em class="ico">6</em>
						<p>道具栏中未领取的道具，可以参加道具合成。道具合成功能可以将道具栏中任意3个英雄（期限、永久）合成一个随机永久英雄，任意3个皮肤（期限、永久）合成一个随机永久皮肤。合成出的道具可以领取到任意大区，也可以继续参与合成。
				</p>
					</li>
					<li>
						<em class="ico">7</em>
						<p>领取道具之前请确认该大区是否拥有该道具，重复领取的期限道具将会叠加使用时间，重复领取的永久道具将会覆盖原道具。领取英雄、皮肤、珍稀守卫皮肤2个小时内发放到游戏中，请重新登录游戏查看。
				</p>
					</li>
					<li>
						<em class="ico">8</em>
						<p>皮肤如果未拥有英雄，仍然可以领取到指定大区，购买了相应英雄之后即可使用。</p>
					</li>
					<li>
						<em class="ico">9</em>
						<p>在玩家被封号期间，期限道具的时长计算不会停止，请各位召唤师注意言行。</p>
					</li>
					<li>
						<em class="ico">10</em>
						<p>在法律允许的范围内，腾讯公司拥有对本活动的解释权。</p>
					</li>
					<li>
						<em class="ico">11</em>
						<p>因本活动及其规则产生的任何争议，用户与举办方友好协商解决，如若协商不成，用户和举办方均同意将争议提交至举办方即腾讯公司所在地人民法院诉讼解决。因本活动及其规则的一切事宜均适用中华人民共和国法律。</p>
					</li>
				</ol>
			</div>
			<!-- 活动规则 E-->
			<!-- 活动FAQ E-->
			<div id="faq">
				<div class="faq layout">
					<h3 class="tit-spr faq-tit">常见问题解答</h3>
					<ul class="faqlist">
                <li>
							<em class="ico cq">Q:</em>
							<p>冠军奖杯内含的奖励是一定<span class="red">未拥有</span>或不重复的吗？</p>
						</li>
						<li class="pb15">
							<em class="ico">A:</em>
							<p>玩家绑定大区后，打开冠军奖杯的奖励是绑定大区<span class="red">未拥有</span>的，除非玩家已经获得了本次冠军奖杯的所有道具；另外，未领取的道具并不能算作是已拥有；建议玩家打开冠军奖杯后立即进行领取，然后再次打开冠军奖杯。</p>
						</li>
                <li>
							<em class="ico cq">Q:</em>
							<p>庆典女皇 艾维尼亚的获得条件是什么？我如何能够更容易的获得这款皮肤？</p>
						</li>
						<li class="pb15">
							<em class="ico">A:</em>
							<p>每次打开一个冠军奖杯，都会支持相应的队伍，如果支持的队伍是2017世界赛冠军，或者在人气战队上排名第一，那么冠军奖杯专属礼包有几率获得庆典女皇 艾维尼亚；拥有相应战队的战队勋章数量越多，获得的几率越大，如果拥有100个2017世界赛冠军战队或人气第一战队的战队勋章，则100%必定获得庆典女皇 艾维尼亚</p>
						</li>
                <li>
							<em class="ico cq">Q:</em>
							<p>我支持每个战队，都可以领取战队专属礼包吗？</p>
						</li>
						<li class="pb15">
							<em class="ico">A:</em>
							<p>是的，支持每个战队都可以在活动结束时领取战队专属礼包；拥有相应战队的战队勋章越多，越可能开出稀有奖励！</p>
						</li>
						<li>
							<em class="ico cq">Q:</em>
							<p>我如何获得钻石?</p>
						</li>
						<li class="pb15">
							<em class="ico">A:</em>
							<p>1）在活动页面上通过Q币、微信支付、银行卡、财付通等方式充值钻石;</p>
							<p>2）在游戏客户端购买并使用期限头像“帽子戏法”即可前往活动页面领取钻石。</p>
						</li>
						<li>
							<em class="ico cq">Q:</em>
							<p>为什么在活动页面不能购买"帽子戏法"头像?</p>
						</li>
						<li class="pb15">
							<em class="ico">A:</em>
							<p>目前"帽子戏法"头像只能在游戏客户端内通过金币或者点券进行购买，成功购买并使用该头像的召唤师即可前往活动页面领取钻石到对应大区。</p>
						</li>
						<li>
							<em class="ico cq">Q:</em>
							<p>如何获得"打开10个"奖励?</p>
						</li>
						<li class="pb15">
							<em class="ico">A:</em>
							<p>通过点击"打开10个"按钮即可额外获赠1个对应等级的奖杯并自动打开。</p>
						</li>
						<li>
							<em class="ico cq">Q:</em>
							<p>为什么我领取的皮肤一直查看没有到账?</p>
						</li>
						<li class="pb15">
							<em class="ico">A:</em>
							<p>皮肤将在领取后的2小时内到账，也可以通过掌上英雄联盟查看皮肤到账情况。</p>
						</li>
						<li>
							<em class="ico cq">Q:</em>
							<p>为什么我领取的皮肤提示不可用?</p>
						</li>
						<li class="pb15">
							<em class="ico">A:</em>
							<p>这是一个显示错误，实际上已经领取成功，请在实际游戏对局中使用。</p>
						</li>
						<li>
							<em class="ico cq">Q:</em>
							<p>为什么我兑换的珍稀守卫皮肤，名字显示和游戏内不一致?</p>
						</li>
						<li class="pb15">
							<em class="ico">A:</em>
							<p>这个是一个已知bug，游戏内会显示成地底世界魄罗守卫和帝王蟹守卫，将会在之后的版本中修复。</p>
						</li>
						<li>
							<em class="ico cq">Q:</em>
							<p>我领取了一个7天的期限皮肤，第二天因为某些原因被封号了30天。请问账号解封后，我的期限皮肤还能继续使用吗?</p>
						</li>
						<li class="pb15">
							<em class="ico">A:</em>
							<p>封号期间，期限道具的时长计算不会停止，所以30天封号期结束之后，之前获得的一个7天期限皮肤已经过期失效，不能继续使用。请各位召唤师注意言行，坚持正义。</p>
						</li>
					</ul>
				</div>
			</div>
		
		</div>
	</div>
	<script src="http://ossweb-img.qq.com/images/js/foot.js"></script>
</div>
<div id="J_sideNav" class="side-nav1 icon-side-nav1">
   <a href="javascript:;" onclick="showBuyPop()" class="getbagbtn">战队图标大礼包</a>
   <a href="#S6" class="nbtp">战队支持榜</a>
   <a href="#S7">战队勋章墙</a>
	<a href="#S1">充值钻石</a>
	<a href="#S2">兑换守卫皮肤</a>
	<a href="#cup">打开冠军奖杯</a>
	<a href="#S4">领取奖励</a>
	<a href="#S5">轮换奖励</a>
	<a href="#rules">活动规则</a>
	<a href="#faq">活动FAQ</a>
	<a href="http://crm2.qq.com/page/portalpage/wpa.php?uin=40012345&f=1&ty=1&ap=000011:400998:|m:11|f:Gyxlm3" target="_blank">联系客服</a>
</div>
<div class="leftips"><a href="http://lol.qq.com/act/a20171011champion/awrads_1.html" target="_blank"></a></div>
<div class="pop pop-history" id="popupBox" style="display:none">
	<a href="javascript:;" onClick="hidDialogs();" class="pop-close">×</a>
	<div class="pop-con tc">
		<h3 class="pop-title" id="boxInfo"></h3>
		<div class="pop-main">
			<div class="pop-table-tit ovh"><span class="w210">购买时间</span><span class="w330">购买道具及数量</span><span class="w210">领取大区</span></div>
			<div class="pop-table ovh" id="target_list"></div>
			<div class="pagination" id="div_page_roller"></div>
		</div>
	</div>
</div>
<!-- 道具领取记录弹层 E -->

<!-- 开1个 S -->
<!--div class="pop pop-one" id="GetItem1" style="display:none">
	<a href="javascript:;" onClick="hidDialogs();" class="pop-close">×</a>
	<div class="pop-con tc">
		<h3 class="pop-title" id="GetItem1_title"></h3>
      <p>冠军奖杯内含该玩家在本大区未拥有的道具<br>（温馨提示：开启冠军奖杯后请立即领取道具，然后再次打开冠军奖杯）</p>
		<div class="pop-main" id="GetItem1_info"></div>
	</div>
</div-->
<!-- 开1个 E -->

<!-- 开1个附赠勋章 S -->
<div class="pop pop-one" id="GetItem1" style="display:none">
	<a href="javascript:;" onClick="hidDialogs();" class="pop-close">×</a>
	<div class="pop-con tc">
		<h3 class="pop-title" id="GetItem1_title"></h3>
      <p class="newtips">开启冠军奖杯必得绑定大区<span class="red">未拥有</span>的道具<br>（温馨提示：开启冠军奖杯后请立即领取道具，然后再次打开冠军奖杯，避免抽到重复皮肤）</p>
		<div class="pop-main" id="GetItem1_info"></div>
		<div class="showlogono clearfix" id="GetItem1_Team" style="display:none">
			<div class="selteamlogo"><img id="GetItem1_TeamImg" width="50"></div><span class="honnorno" id="GetItem1_TeamNum"></span>
		</div>
	</div>
</div>
<!-- 开1个附赠勋章 E -->
  
<!-- 开2个 S -->
<div class="pop pop-ten pop-two" id="GetItem12">
	<a href="javascript:;" onClick="hidDialogs();" class="pop-close" title="关闭">×</a>
	<div class="pop-con">
		<div class="pop-main">
			<h3 class="pop-title">选择龙的传人 李青 <b>跃龙在渊皮肤</b>，或者1个<b>神秘奖杯</b></h3>
			<img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/two-icon.jpg" width="500" height="13" alt="装饰图标">
			<ul id="openTenList" class="open-list">
				<li style="opacity: 1;">
					<a href="javascript:;" onClick="CheckSelect(400,64008)">
						<span class="pic">
							<img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/two1.jpg" width="157" height="208" style="opacity: 1;">
						</span>
						<i class="ts-cover" style="opacity: 1;"></i>
						<p class="two-name">龙的传人 李青 跃龙在渊</p>
					</a>
				</li>
				<li style="opacity: 1;">
					<a href="javascript:;" onClick="CheckSelect(400,999)">
						<span class="pic">
							<img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/two2.jpg" width="157" height="208" style="opacity: 1;">
						</span>
						<p class="two-name">神秘奖杯</p>
					</a>
				</li>
			</ul>
			<p class="two-or">或</p>
			<p class="pop-main-title"><span>1</span>该跃龙在渊皮肤不赠送龙的传人李青，无龙的传人皮肤将无法使用;</p>
			<p class="pop-main-title"><span>2</span>选择跃龙在渊，之后任意时刻拥有龙的传人皮肤，即可使用；</p>
		</div>
	</div>
	<div id="GetItem12_EX"></div>
	<div class="btn-wrapper" id="GetItem12_BTN"></div>
</div>

<!-- 开2个 S -->
<!--<div class="pop pop-ten pop-two" style="display:block" id="GetItem12">-->
	<!--<a href="javascript:;" onClick="hidDialogs();" class="pop-close" title="关闭">×</a>-->
	<!--<div class="pop-con">-->
		<!--<h3 class="pop-title" id="GetItem12_title"></h3>-->
		<!--<div class="pop-main" id="GetItem12_info">-->
			<!--<ul id="openTenList" class="open-list">-->
				<!--<li style="opacity: 1;">-->
					<!--<a href="javascript:;" onclick="CheckSelect(60,104005)">-->
						<!--<span class="pic">-->
							<!--<img src="http:http://ossweb-img.qq.com/images/lol/appskin/104005.jpg" style="opacity: 1;">-->
						<!--</span>-->
						<!--<p>泳池派对 格雷福斯</p>-->
						<!--<i class="ts-cover"></i>-->
					<!--</a>-->
				<!--</li>-->
				<!--<li style="opacity: 1;">-->
					<!--<a href="javascript:;" onclick="CheckSelect(60,58006)">-->
						<!--<span class="pic">-->
							<!--<img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/star1_bg.png" style="opacity: 1;">-->
						<!--</span>-->
						<!--<p>泳池派对 雷克顿</p>-->
						<!--<i class="ts-cover"></i>-->
					<!--</a>-->
				<!--</li>-->

			<!--</ul>-->
		<!--</div>-->
	<!--</div>-->
	<!--<div id="GetItem12_EX"></div>-->
	<!--<div class="btn-wrapper" id="GetItem12_BTN"></div>-->
<!--</div>-->
<!-- 开2个 E -->

<!-- 开10个 S -->
<!--div class="pop pop-ten" style="display:none" id="GetItem2">
	<a href="javascript:;" onClick="hidDialogs();" class="pop-close" title="关闭">×</a>
	<div class="pop-con">
		<h3 class="pop-title" id="GetItem2_title"></h3>
		<div class="pop-main" id="GetItem2_info"></div>
	</div>
	<div id="GetItem2_EX"></div>
  <div class="btn-wrapper" id="GetItem2_BTN"></div>
</div-->
<!-- 开10个 E -->
  
<!-- 开10个附赠勋章 S -->
<div class="pop pop-ten" style="display:none" id="GetItem2">
	<a href="javascript:;" onClick="hidDialogs();" class="pop-close" title="关闭">×</a>
	<div class="pop-con">
		<h3 class="pop-title" id="GetItem2_title"></h3>
     <p class="newtips">开启冠军奖杯必得绑定大区<span class="red">未拥有</span>的道具<br>（温馨提示：开启冠军奖杯后请立即领取道具，然后再次打开冠军奖杯，避免抽到重复皮肤）</p>
		<div class="pop-main" id="GetItem2_info"></div>
		<div class="showlogono clearfix" id="GetItem2_Team" style="display:none">
			<div class="selteamlogo"><img id="GetItem2_TeamImg" width="50"></div><span class="honnorno" id="GetItem2_TeamNum"></span>
		</div>
	</div>
	<div id="GetItem2_EX"></div>
  <div class="btn-wrapper" id="GetItem2_BTN"></div>
</div>
<!-- 开10个附赠勋章 E -->

<!-- 分解道具 S -->
<div class="pop pop-split" style="display:none" id="dis_item">
	<a href="javascript:;" onClick="hidDialogs();" class="pop-close" title="关闭">×</a>
	<div class="pop-con">
		<div class="pop-main">
			<h3 class="pop-title">分解未领取的奖杯奖励获得战队勋章</h3>
			<p class="pop-splittxt">每分解<span>3个合成奖励或神秘奖励</span>，获得1个战队勋章；每分解<span>8个胜利奖杯奖励</span>，获得1个战队勋章；</p>
			<p class="pop-splittxt">每分解<span>4个传奇奖杯奖励</span>，获得1个战队勋章；每分解<span>2个冠军奖杯奖励</span>，获得1个战队勋章。</p>
			<p class="pop-splittit"><span>01</span>-选择希望兑换的战队勋章</p>
			<div class="sellogobox clearfix">
				<div class="selteamlogo" onClick="DisCheckTeam(1)">
					<img src="//img.crawler.qq.com/lolwebvideo/201501/7a710b743899fa0f6e03802bda900f4a/0" width="50">
					<div class="gethis" id="gethis_1"></div>
				</div>
				<div class="selteamlogo" onClick="DisCheckTeam(2)">
					<img src="//img.crawler.qq.com/lolwebvideo/20170915171620/e6b96579ba0bbfbd0b9fab0d20a319fd/0" width="50">
					<div class="gethis" id="gethis_2"></div>
				</div>
				<div class="selteamlogo" onClick="DisCheckTeam(3)">
					<img src="//img.crawler.qq.com/lolwebvideo/201501/1ce891be080b0e9246a06638250a5117/0" width="50">
					<div class="gethis" id="gethis_3"></div>
				</div>
				<div class="selteamlogo" onClick="DisCheckTeam(4)">
					<img src="//img.crawler.qq.com/lolwebvideo/201501/48a96e92d604f8beff9bac355d5c621f/0" width="50">
					<div class="gethis" id="gethis_4"></div>
				</div>
				<div class="selteamlogo" onClick="DisCheckTeam(5)">
					<img src="//img.crawler.qq.com/lolwebvideo/201501/209361afb215fb6ad4c26df553640af7/0" width="50">
					<div class="gethis" id="gethis_5"></div>
				</div>
				<div class="selteamlogo" onClick="DisCheckTeam(6)">
					<img src="//img.crawler.qq.com/lolwebvideo/20170915164431/b0a2191567a7213cf2963d053bc97d50/0" width="50">
					<div class="gethis" id="gethis_6"></div>
				</div>
				<div class="selteamlogo" onClick="DisCheckTeam(7)">
					<img src="//img.crawler.qq.com/lolwebvideo/20170915124306/799f22e8b191fbfa408f38f4a9447d2f/0" width="50">
					<div class="gethis" id="gethis_7"></div>
				</div>
				<div class="selteamlogo" onClick="DisCheckTeam(8)">
					<img src="//img.crawler.qq.com/lolwebvideo/20170915124609/1d5849b9bfba5e393c4c7adeed362c6f/0" width="50">
					<div class="gethis" id="gethis_8"></div>
				</div>
			</div>
			<p class="pop-splittit"><span>02</span>-选择分解奖杯奖励（单次最多分解24个道具）</p>
			<p class="pop-splittxt redtxt">您已拥有皮肤我们将会标红显示</p>
			<div class="sellogobox clearfix">
				<div class="selitemdiv">
					<p class="selitemname">胜利奖杯奖励</p>
					<div class="selitemlist">
						<ul  class="selitemul" id="GoldDis">
							<li><a href="javascript:;" class="addmore" onClick="ShowUserItemTab(0,'GoldDis')">点击查看奖励</a></li>
							<!--li><p>道具名道具名</p><input type="checkbox" name="split" class="splitinp"></li>
							<li><p>道具名道具名</p><input type="checkbox" name="split" class="splitinp"></li>
							<li><p>道具名道具名</p><input type="checkbox" name="split" class="splitinp"></li>
							<li><p>道具名道具名</p><input type="checkbox" name="split" class="splitinp"></li>
							<li><p>道具名道具名</p><input type="checkbox" name="split" class="splitinp"></li>
							<li><p>道具名道具名</p><input type="checkbox" name="split" class="splitinp"></li-->
						</ul>
						<a href="javascript:;" class="addmore" id="GoldDis_page" style="display:none">加载更多</a>
						<a href="javascript:;" class="addallbtn" id="GoldDis_add" style="display:none" onClick="AddDisItem(1)">批量加入（24个）</a>
						<a href="javascript:;" class="splitbtn" onClick="DoDisItem(1)">分解兑换</a>
					</div>
				</div>
				<div class="selitemdiv">
					<p class="selitemname">传奇奖杯奖励</p>
					<div class="selitemlist">
						<ul  class="selitemul" id="ColorDis">
							<li><p><a href="javascript:;" onClick="ShowUserItemTab(0,'ColorDis')">点击查看奖励</a></p></li>
							<!--li><p>道具名道具名</p><input type="checkbox" name="split" class="splitinp"></li>
							<li><p>道具名道具名</p><input type="checkbox" name="split" class="splitinp"></li>
							<li><p>道具名道具名</p><input type="checkbox" name="split" class="splitinp"></li>
							<li><p>道具名道具名</p><input type="checkbox" name="split" class="splitinp"></li>
							<li><p>道具名道具名</p><input type="checkbox" name="split" class="splitinp"></li>
							<li><p>道具名道具名</p><input type="checkbox" name="split" class="splitinp"></li-->
						</ul>
						<a href="javascript:;" class="addmore" id="ColorDis_page" style="display:none">加载更多</a>
						<a href="javascript:;" class="addallbtn" id="ColorDis_add" style="display:none" onClick="AddDisItem(2)">批量加入（24个）</a>
						<a href="javascript:;" class="splitbtn" onClick="DoDisItem(2)">分解兑换</a>
					</div>
				</div>
				<div class="selitemdiv">
					<p class="selitemname">冠军奖杯奖励</p>
					<div class="selitemlist">
						<ul  class="selitemul" id="ChampionDis">
							<li><p><a href="javascript:;" onClick="ShowUserItemTab(0,'ChampionDis')">点击查看奖励</a></p></li>
							<!--li><p>道具名道具名</p><input type="checkbox" name="split" class="splitinp"></li>
							<li><p>道具名道具名</p><input type="checkbox" name="split" class="splitinp"></li>
							<li><p>道具名道具名</p><input type="checkbox" name="split" class="splitinp"></li>
							<li><p>道具名道具名</p><input type="checkbox" name="split" class="splitinp"></li>
							<li><p>道具名道具名</p><input type="checkbox" name="split" class="splitinp"></li>
							<li><p>道具名道具名</p><input type="checkbox" name="split" class="splitinp"></li-->
						</ul>
						<a href="javascript:;" class="addmore" id="ChampionDis_page" style="display:none">加载更多</a>
						<a href="javascript:;" class="addallbtn" id="ChampionDis_add" style="display:none" onClick="AddDisItem(3)">批量加入（24个）</a>
						<a href="javascript:;" class="splitbtn" onClick="DoDisItem(3)">分解兑换</a>
					</div>
				</div>
				<div class="selitemdiv">
					<p class="selitemname">合成/神秘奖励</p>
					<div class="selitemlist">
						<ul  class="selitemul" id="SpDis">
							<li><p><a href="javascript:;" onClick="ShowUserItemTab(0,'SpDis')">点击查看奖励</a></p></li>
							<!--li><p>道具名道具名</p><input type="checkbox" name="split" class="splitinp"></li>
							<li><p>道具名道具名</p><input type="checkbox" name="split" class="splitinp"></li>
							<li><p>道具名道具名</p><input type="checkbox" name="split" class="splitinp"></li>
							<li><p>道具名道具名</p><input type="checkbox" name="split" class="splitinp"></li>
							<li><p>道具名道具名</p><input type="checkbox" name="split" class="splitinp"></li>
							<li><p>道具名道具名</p><input type="checkbox" name="split" class="splitinp"></li-->
						</ul>
						<a href="javascript:;" class="addmore" id="SpDis_page" style="display:none">加载更多</a>
						<a href="javascript:;" class="addallbtn" id="SpDis_add" style="display:none" onClick="AddDisItem(4)">批量加入（24个）</a>
						<a href="javascript:;" class="splitbtn" onClick="DoDisItem(4)">分解兑换</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<textarea style="display:none" id="dislist_jst">
	<div class="bd">
  	<ul class="mix-info-list">
  		{for p in list}
  		<li><p class='${p.Has}'>${p.vDuration}${p.vInfo}</p><input type="checkbox" id="dis_${p.vKey}" name="dis_${p.vKey}" value='${p.iSeqId}' class="splitinp"></li>
  		{forelse}
  			<li><p>暂无可分解道具</p></li>
			{/for}
  	</ul>
  </div>
  <div class="pagination">
  	<a alt="上一页" class="uppage" href="javascript:;" onClick="${FuncLast}" ${BtnLast}>上一页</a><a alt="下一页" class="downpage" href="javascript:;" onClick="${FuncNext}" ${BtnNext}>下一页</a>
  </div>
</textarea>

<!-- 分解道具 E -->

<!-- 开多个道具 S -->
<div class="pop pop-ten pop-five" style="display:none" id="GetItem3">
    <a href="javascript:;" onClick="hidDialogs();" class="pop-close blue-close" title="关闭">×</a>
    <div class="pop-con">
        <h3 class="pop-title" id="GetItem3_title"></h3>
        <div class="pop-main" id="GetItem3_info"></div>
    </div>
</div>
<!-- 神秘南瓜灯开出物品 E -->

<!-- 合成物品 E -->
<div class="pop pop-mixture" id="popDia02" style="display:none">
    <a class="pop-close blue-close" href="javascript:;" onClick="hidDialogs();" title="关闭">×</a>
	<h3 class="pop-title">合成物品</h3>
    <div class="pop-con">
		<div class="bd">

			<div class="mixture-list-item">
                <h3>选择 已有的英雄列表</h3>
                 <div class="listbox mix-inner" id="SynHeroList"></div>
			</div>

			<div class="mixture-list-item">
				<h3>选择 已有的皮肤列表</h3>
               <div class="listbox mix-inner" id="SynSkinList"></div>
			</div>

			<div class="mixture-list-item mixture-list-last">
				<h3>已选择 待合成道具</h3>
				<div class="bd mix-inner">
                    <input id="SynType" name="SynType" type=hidden>
                    <input id="item1" name="item1" type=hidden>
                    <input id="item2" name="item2" type=hidden>
                    <input id="item3" name="item3" type=hidden>
					<ul class="mix-pic">
                      <li id="itempic1"></li>
                      <li id="itempic2"></li>
                      <li id="itempic3"></li>
					</ul>
					<p class="t_c">任意<span class="cyellow">3个皮肤</span>或<span class="cyellow">英雄</span>可合成一个普通英雄或皮肤。</p>
					<ul class="mix-last-list">
						<li id="SynItem1"></li>
						<li id="SynItem2"></li>
						<li id="SynItem3"></li>
					</ul>
                  <a class="btn-common-yel" href="javascript:;" onClick="AutoSyn();EAS.SendClick({'e_c': 'lol.buydraw.AutoSyn_1','c_t':4});">自动加入期限道具</a>
                  <a class="btn-minor-blue" href="javascript:;" onClick="CheckSyn();">立即合成</a>
				</div>
			</div>

		</div>
	</div>
</div>
<!-- 合成物品 E -->

<!-- 温馨提示 -->
<div id="sys" class="pop pop-txt" style="display:none">
    <div class="pop-con">
		<h4>温馨提示</h4>
    	<div class="bd">
			<div id="sys_info"></div>
		</div>
    </div>
    <a class="pop-close" href="javascript:;" onClick="hidDialogs();" title="关闭">×</a>
</div>
<!--温馨提示-->
  
<div id="succ" class="pop pop-txt" style="display:none">
    <div class="pop-con">
		<h4>温馨提示</h4>
    	<div class="bd">
			<span id="succ_info"></span>
            <div class="btn-wrapper">
                <a class="btn-small-blue" href="javascript:;" onClick="hidDialogs();">确定</a>
            </div>
        </div>
    </div>
    <a class="pop-close" href="javascript:;" onClick="hidDialogs();" title="关闭">×</a>
</div>

<div id="verification" class="pop pop-txt" style="display:none">
    <div class="pop-con">
		<h4>腾讯安全验证中心</h4>
    	<div class="bd">
			<iframe id="safe_iframe" frameborder="no" scrolling="no" width="400" height="300"></iframe>
		</div>
    </div>
    <a class="pop-close" href="javascript:;" onClick="hidDialogs();" title="关闭">×</a>
</div>

<!-- 关闭购买提示 -->
<div class="pop pop-txt" id="pay_close" style="display:none">
    <div class="pop-con">
		<h4>温馨提示:</h4>
    	<div class="bd">亲爱的召唤师，您好！ <br>因为不可抗拒的原因， 暂时关闭购买。 <br>已经购买的用户可以继续召唤、领取、合成您的道具<br>祝您新年快乐！</div>
    </div>
    <a class="pop-close" href="javascript:;" onClick="hidDialogs();" title="关闭">×</a>
</div>

<!-- 如何购买头像  -->
<div class="pop pop-buy-tips" style="display:none" id="J_howBuy">
	<a href="javascript:;" onClick="hidDialogs();" class="pop-close" title="关闭">×</a>
	<div class="pop-con">
		<h3 class="pop-title">如何购买头像？</h3>
		<p><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/buy_tips3.jpg"></p>
		<a class="btn-common" href="javascript:;" onClick="DoDiaFree(1);EAS.SendClick({'e_c': 'lol.buydraw.FreeDia_1','c_t':4});">立即领取</a>
	</div>
</div>

<!--领取确认-->
<div id="sendItem" class="pop pop-txt" style="display:none">
    <div class="pop-con">
        <h4>温馨提示: <span>如果您想领取至别的大区，请点击</span><a href='javascript:;' id="sendChang">更换大区</a></h4>
        <div class="bd">
            <p class="normal-tips send-normal-tips" id="item_info"></p>
            <p class="btn-wrapper">
                <a class="btn-small-blue" href="javascript:;" id="sendBtn">确定</a>
                <a class="btn-small-yel" href="javascript:;" id="CheckItem">检查是否拥有</a>
            </p>
            <p class="normal-tips" id="item_ext"></p>
       </div>
    </div>
    <a class="pop-close" href="javascript:;" onClick="hidDialogs();" title="关闭">×</a>
</div>

<!-- 斩星魔剑  易  皮肤信息 -->
<div class="pop pop-hero-skin" id="hero_yi" style="display: none;">
	<a href="javascript:;" onClick="hidHeroVideo();" class="pop-close" title="关闭">×</a>
	<div class="pop-con">
		<div class="hero-box">
			<h3 class="hero-title">生化领主  泰达米尔  皮肤信息</h3>
			<h4 class="hero-subtitle">皮肤视频</h4>
			<div class="hero-main hero-video">
				<div id="hero_player"></div>
			</div>
			<h4 class="hero-subtitle">皮肤原画</h4>
			<div class="hero-main hero-picture">
				<img src="http://ossweb-img.qq.com/images/lol/act/a20170824lux/hero-yi.jpg" width="532" height="300" alt=""/>
			</div>
		</div>
	</div>
</div>

<!-- 表情包信息 -->
<div class="pop pop-ico" id="buy_icon_pop">
	<a href="javascript:;" onClick="lolapp.dialog.close();" class="pop-close" title="关闭">×</a>
	<div class="pop-con">
		<div class="hero-box">
			<h3 class="none">战队图标表情与钻石礼包</h3>
			<p class="f2">每个礼包内含1个战队图标及表情、200钻石</p>
			<p class="f20">每支战队将会获得礼包销售额的<span>15%</span>收入</p>
			<p>（每个图标最多购买28个）</p>
			<div class="areadiv" id="areainfo2"><a href='javascript:' onclick="lolapp.dialog.close();GetAreaInfo(showBuyPop)" class='a-out'>请先绑定大区</a></div>
			<ul class="newbag clearfix">
				<li><a href="javascript:;" onclick="buyIcon(405039);">RNG礼包</a></li>
				<li><a href="javascript:;" onclick="buyIcon(405050);">SKT礼包</a></li>
				<li><a href="javascript:;" onclick="buyIcon(405052);">WE礼包</a></li>
				<li><a href="javascript:;" onclick="buyIcon(405049);">FANT礼包</a></li>
				<li><a href="javascript:;" onclick="buyIcon(405054);">LZ礼包</a></li>
				<li><a href="javascript:;" onclick="buyIcon(405053);">C9礼包</a></li>
				<li><a href="javascript:;" onclick="buyIcon(405051);">MSF礼包</a></li>
				<li><a href="javascript:;" onclick="buyIcon(405055);">SSG礼包</a></li>
			</ul>
		</div>
	</div>
</div>

<textarea style="display:none" id="rTmp_jst">
	<table>
		{for p in data}
			<tr>
				<td width="210">${p.dtBuyTime} </td>
        <td width="330">${p.vInfo}</td>
        <td width="210">${p.Send}</td>
      </tr>
		{forelse}
			<tr><td width="750">暂无信息</td></tr>
		{/for}
	</table>
</textarea>

<textarea style="display:none" id="rUserGet_jst">
	<table>
		{for p in list}
			<tr>
				<td width="210">${p.dtTime} </td>
        <td width="330">${p.vInfo}</td>
        <td width="210">${p.Send}</td>
      </tr>
		{forelse}
			<tr><td width="750">暂无信息</td></tr>
		{/for}
	</table>
</textarea>

<textarea style="display:none" id="itemlist_jst">
	<a class="prev-btn" href="javascript:;" onClick="${FuncLast}" ${BtnLast}>上一页</a>
	<a class="next-btn" href="javascript:;" onClick="${FuncNext}" ${BtnNext}>下一页</a>
	<div class="scroll-pic-box">
		<ul class="scroll-pic">
			{for p in list}
				{if p.iType == "0"}
					<li id="${p.vSerialNo}">
				{else}
					<li class="pic-gray">
				{/if}
				<a href="javascript:;" onClick="${p.FuncGet}">
					<span id="${p.vSerialNo}_img">
						<i class="pic-item"><img src="${p.vImg}"></i>
						{if p.iItemType == "1"}
				    	<i class="gift-ico hero"></i>
				    {elseif p.iItemType == "2"}
				      <i class="gift-ico skin"></i>
				    {/if}
						<em class="days" ${p.IsShow}>${p.vDuration}</em>
					</span>
					<i class="sbg-cover" ${p.IsShow}></i>
					{if p.iValue == "1"}
						<i class="ts-cover"></i>
					{/if}
					<i class="gift-name" id="${p.vSerialNo}_txt" ${p.IsShow}>${p.vInfo}</i>
					{if p.iType == "0"}
						<span class="get-btn">${p.BtnGet}</span>
					{elseif p.iType == "3"}
						<em class="btn-spr gift-syned">已合成</em>
					{elseif p.iType == "4"}
						<em class="btn-spr gift-syned">已分解</em>
					{else}
						<em class="btn-spr gift-geted">${p.iAreaStr}</em>
					{/if}
				</a>
			</li>
			{forelse}
				<li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none.png"><em class="giftnone">暂无任何<br>奖励</em></li>
				<li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
				<li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
				<li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
				<li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
				<li><img src="http://ossweb-img.qq.com/images/lol/act/a20171011champion/none_bg.png"></li>
			{/for}
		</ul>
	</div>
</textarea>

<textarea style="display:none" id="synlist_jst">
	<div class="bd">
  	<ul class="mix-info-list">
  		{for p in list}
  		<li id='syn_${p.vSerialNo}'>
  			<span class='choose'>
  				<a href="javascript:;" onClick="${p.FuncSyn}">添加</a>
  			</span>
  			<label for='1'>&nbsp;&nbsp;${p.vDuration}${p.vInfo}</label>
  			${p.vAuto}
  		</li>
  		{forelse}
				<li><span class='choose'></span><label for='1'>暂无道具</label></li>
			{/for}
  	</ul>
  </div>
  <div class="pagination">
  	<a alt="上一页" class="uppage" href="javascript:;" onClick="${FuncLast}" ${BtnLast}>上一页</a><a alt="下一页" class="downpage" href="javascript:;" onClick="${FuncNext}" ${BtnNext}>下一页</a>
  </div>
</textarea>

<script src="./js/lol.js"></script>
<script src="./js/jquery-1.9.0.min.js"></script>
<script src="./js/milo-min.js"></script>
<script src="./js/tvp.player_v2.js" charset="utf-8"></script>
<script src="js/common.js"></script>
<script src="http://ossweb-img.qq.com/images/js/roleselector/roleselectorv3.js"></script>
<script type="text/javascript" charset="utf-8" src="http://fusion.qq.com/fusion_loader?appid=1450001422&platform=website"></script>
<script src="/js/eas.js"></script>
<script src="js/skinprice.js"></script>
<script src="./js/RALFSHEN_HEROSKIN.js"></script>
<script src="./js/lol_server_select.js"></script>
<script src="./js/user.js"></script>
<script src="./js/LOL_App.js"></script>
<script src="js/getIcon.js"></script>
<script src="./js/ping_tcss_ied.js"></script>
<script>
$(".page_more").on("click",function(){
	$("#wallbox1,.page_more").hide();
	$("#wallbox2").show();
})
milo.ready(function() {
			ShowTeamSupRank();
			setInterval("OpenGiftTime(2017,11,06,10,0,0)",1000); 
      need("biz.login", function (LoginManager) {
          LoginManager.checkLogin(function () {
          		LotteryPopInfo();
              g("login_qq_span").innerHTML = LoginManager.getUserUin();
          });
      });
      CallFunction('UserInfo_UserMileInfo_UserLimit','','','DrawAction');
      TimeList();
  });


	function goSize (){//伸缩窗口时重置
		var w = $(window).width(),h= $(window).height();
		if(w<1366){
			$('#J_sideNav').hide();$('.leftips').hide();
		}else{
			$('#J_sideNav').show();$('.leftips').show();
		}
	}
	$(window).bind('resize',goSize).trigger('resize');
	var arrNum=[{"left":"0","right":"200"},{"left":"100","right":"1200"},{"left":"1000","right":"2400"},{"left":"2000","right":"4400"},{"left":"4000","right":""}];
	var G_n=0;
	function goPage(n){
        if(typeof(G_USER) == "object")
        {
            var draw_point=parseInt(G_USER["iGoldLight"],10) + parseInt(G_USER["iColorLight"],10)*2+ parseInt(G_USER["iChampionLight"],10)*4;
            var _isOK=false;
            var _with=0;
            for(var j=0 ;j< GIFT_POINT[n].length; j++)
            {
                var _p=167;
                if(n == 4)
					_p=200;
                if(GIFT_POINT[n][j] > draw_point)
                {
                    if(j > 0)
					{
                    	_with=(((j-1)*_p)+((draw_point-GIFT_POINT[n][j-1])*_p/(GIFT_POINT[n][j]-GIFT_POINT[n][j-1])))/10;
					}
                    _isOK=true;
                    break;
                }
            }
            if(!_isOK)
                _with=100;
            $("#gift_line").attr("style","width:"+_with+"%");
        }

            $(".numleft").text(arrNum[n].left);
            $(".numright").text(arrNum[n].right);


		if(n==0){$(".paypre").hide();}else{$(".paypre").show();}
		if(n==4){$(".paynext").hide();$(".linebg").css({"width":"830px"})}else{$(".paynext").show();$(".linebg").css({"width":"1000px"})}
		$(".add-no").animate({left:-n*1000+"px"});
        G_n=n;
	}
	$(".paypre").on("click",function(){
		if(G_n==0){alert("当前为第一页！");}else{G_n--;goPage(G_n);};
		
	
	});
	$(".paynext").on("click",function(){
		if(G_n==4){alert("当前为最后一页！");$(".paynext").hide();}else{G_n++;goPage(G_n);};
	
	});
	goPage(0);
   function IsPC(){    
     var userAgentInfo = navigator.userAgent;  
     var Agents = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod");    
     var flag = true;    
     for (var v = 0; v < Agents.length; v++) {    
         if (userAgentInfo.indexOf(Agents[v]) > 0) { flag = false; break; }    
     }    
     return flag;    
  }  
   if(IsPC()==true){pgvSendClick({hottag:'a20171011champion.page.client.pc'})}else{pgvSendClick({hottag:'a20171011champion.page.client.mobile'})}
	if(typeof(pgvMain) == 'function'){pgvMain();}
</script>
</body>
</html><!--[if !IE]>|xGv00|0ca86e13a95d5d21501b1c28ead426a9<![endif]-->