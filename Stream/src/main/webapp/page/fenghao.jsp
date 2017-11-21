<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><script type="text/javascript">/*tag*/PAGE_SPEED_TIME = [new Date().getTime()];</script>
<head>
<script>if(top!=self) top.location=location</script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta name="robots" content="all" />
<meta name="Copyright" content="Copyright (c) TENCENT" />
<meta name="Description" content="英雄联盟封号查询系统" />
<meta name="Keywords" content="英雄联盟,lol,league of legends,DOTA,即时战略,MOBA,召唤师,符文,匹配,英雄,技能,团队,Gank,快节奏,Farm,成长" />
<title>封号查询系统-英雄联盟官方网站-腾讯游戏</title>
<!-- 设计：vicentcai | 重构：dgguo | 创建：20120605 | 更新：20120605 | 团队博客：http://tgideas.qq.com -->
<style type="text/css">
*{ margin: 0; padding: 0;}
body{ font: normal 12px/1.6 Tahoma,"simsun","Microsoft Yahei"; padding-top: 42px; background: #FFFFFF repeat-x center -628px;}
ol,ul{ list-style: none;}
a{ text-decoration: none; color: #FFFFFF;}
a:hover{ text-decoration: underline;}
img{ border: none; display: block;}
.img img{width: 100% !important;height: 100% !important;background: #393737;border: 0 !important;}
.bg{ background: url(../images/bg.jpg) no-repeat;}
.spr_bg{ background-image: url(../images/spr_bg.jpg) !important;}
.spr{ background: url(../images/spr_bg2.jpg) no-repeat;}
.fl{ float: left;}
.fr{ float: right;}
.wrap{ background-position: center -510px; color: #FFFFFF;}
.boxer{ width: 990px; margin: 0 auto;}
.hidden{ height: 0; display: block; overflow: hidden;}
.header{ height: 388px;}
.nav{ height: 316px;}
.nav_lnk{ display: block; width: 105px; height: 44px;}
.log{ width: 225px; height: 45px; padding: 0 0 0 555px; line-height: 44px; text-align: center;}
.login{ display: block; height: 45px; font: normal 18px "Microsoft Yahei"; line-height: 44px;}
.content{ overflow: hidden; padding: 30px 0 60px 0;}
.main{ width: 564px; padding: 0 58px 0 38px;}
.choice{ height: 50px; padding: 0 0 0 15px;}
.select{ width: 192px; height: 22px; border: 1px solid #BFC0C1; margin: 4px 10px 0 0;}
.submit{ display: block; width: 120px; height: 30px;}
.result{ width: 548px; padding: 7px; border: 1px solid #BFC0C1; color: #595757; background-color: #f2f2f2;}
table{ border-collapse: collapse; border-spacing: 0; empty-cells: show;}
.rspc{ line-height: 30px; vertical-align: top;}
.br{ display: block; height: 100%; border-right: 1px solid #BFC0C1; margin: 0 9px 0 0;}
.bb{ border-bottom: 1px solid #BFC0C1;}
.info{ color: #666464; padding: 15px 0 0 0;}
.info_title{ height: 40px; line-height: 40px; font-size: 14px; text-indent: 10px; border-bottom: 1px solid #BFC0C1;}
.info_lst{ line-height: 24px; padding: 10px 0 0 10px;}
.more{ height: 50px; line-height: 50px; text-align: right; border-bottom: 1px solid #BFC0C1;}
.more_lnk{ color: #C81116;}
.side{ width: 235px; height: 670px; padding: 0 40px 0 55px; background: no-repeat right 0; color: #7A7A7A;}
.lnks{ border-bottom: 1px solid #BFC0C1; padding: 0 0 10px 0;}
.lnks_lst{ text-align: center; padding: 0 0 10px 0; margin: 0 0 10px 0;}
.lnks_lnk{ font: normal 16px "Microsoft Yahei"; color: #7A7A7A; line-height: 40px;}
.intro_title{ height: 40px; line-height: 40px; font-size: 14px;}
.intro{ line-height: 20px; list-style: disc; margin: 0 0 0 15px;}
.footer{ height: 100px; padding: 20px 0 0 0; text-align: center; background-position: center -390px;}
.pop { width: 800px; padding: 30px; background: #540306; position: absolute; left: 50%; top: 50px; margin: 0 0 0 -430px; z-index: 100; color: #FFB5C0; line-height: 24px;}
.pop_title { height: 50px; line-height: 50px; font-size: 14px; color: #EB667A; border-bottom: 1px solid #370306;}
.pop_box { border-top: 1px solid #D41825; padding: 15px 0 0 0;}
.pop_p { padding: 4px 0;}
.close { display: block; width: 15px; height: 16px; background-position: -120px 0; position: absolute; top: 10px; right: 10px;}
.cover { width: 100%; height: 100%; position: absolute; top: 0; left: 0; background: #000000; filter: alpha(opacity=75); opacity: 0.75; z-index: 10;}

.clearfix:after{content:".";display:block;height:0;clear:both;visibility:hidden;}
.clearfix{display:inline-block;}
/* Hide from IE Mac */
.clearfix{display:block;}
/* End hide from IE Mac */
/* end of clearfix */
.banned-header { border-collapse:collapse; }
.banned-header th { border-right: 1px solid #fff; background-color: #b3051c; height: 33px; width: 136px; text-align: center; vertical-align: middle; font-size: 14px; color: #fff; }
/*.banned-list { display: table; border-collapse: collapse; }*/
.banned-list .item .item-row { cursor: pointer; border-bottom: 1px solid #bfc0c1; }
.banned-list .item .server,
.banned-list .item .chr,
.banned-list .item .reason,
.banned-list .item .ufztime { font-size: 14px; color: #666464; padding: 10px 0; text-align: center; width: 137px; float: left; }
.banned-list .item .server:after,
.banned-list .item .chr:after,
.banned-list .item .reason:after { content:'|'; color: #bfc0c1; float: right; }
.banned-list .item .detail-box { display: none; width: 547px; clear: both; position: relative; }
.banned-list .item .detail-box .down-arr { display: block; width: 14px; height: 7px; background: url(../images/darr.gif) no-repeat; position: absolute; left: 59px; top: -1px; z-index: 1; }
.banned-list .detail-box .db-hd { font-family: "Microsoft Yahei"; font-size: 16px; color: #666464; padding: 12px 0 15px 0; }
.banned-list .detail-box .db-hd span {  margin-right: 70px; }
.banned-list .battle-item { border: 1px solid #d0d1d1; border-collapse: collapse; padding: 3px 5px; position: relative; }
.banned-list .battle-item .bt-hd { cursor:pointer; }
.banned-list .battle-item .bt-bd { display: none; }
.banned-list .battle-item .open-arr { background: url(../images/arrdwn.png) no-repeat; width: 18px; height: 17px; position: absolute; right: 14px; top: 14px; }
.banned-list .battle-item.opened { border-color: #c85463; }
.banned-list .battle-item.opened .open-arr { background-image: url(../images/arrdwn.png); width:17px; height: 11px; right: 11px; top: 16px; }
.banned-list .battle-item img { width:38px; height: 38px; border:1px solid #ce5d6c; float: left; }
.banned-list .battle-item .bd-cnt { margin-left: 5px; }
.banned-list .battle-item .tab-hd { border-top: 1px solid #d0d1d1; margin-top: 3px; }
.banned-list .battle-item.opened .tab-hd { border-color: #b3051c; }
.banned-list .battle-item .tab-hd div {font-weight: bold; cursor: pointer; width: 267px; font-size: 16px; color: #666464; height: 28px; line-height: 28px; text-align: center; border-bottom: 4px solid #cbcbcb; float: left; }
.banned-list .battle-item .tab-hd div.actived { border-color: #b3051c; color: #b3051c; }
.banned-list .battle-item .team-list { font-weight: normal; margin:6px 0; vertical-align: middle; }
.banned-list .battle-item .team-list th { font-weight: normal; text-align: center; padding-bottom: 5px; }
.banned-list .battle-item .team-list td { padding-bottom: 4px; text-align: center; }
.banned-list .battle-item .team-list th.al,
.banned-list .battle-item .team-list td.al { text-align: left; }
.banned-list .battle-item .team-list .avtr { width: 29px; height: 29px; }
.banned-list .battle-item .team-list .hr-name { height: 31px; line-height:31px; margin-left: 9px; }
.banned-list .battle-item .team-list .img { float: left; margin-right: 3px; width: 21px; height: 21px; border: 1px solid #ce5d6c; overflow: hidden; }
.banned-list .battle-item .tab-page { max-height: 225px; overflow-y:auto; display: none; }
.show {display: block !important;}
.hiddenShow {display: none;}
.loading{background: rgba(60, 59, 59, 0.68);
    width: 50%;
    height: 100px;
    position: fixed;
    top: 50%;
    left: 50%;
    margin-left: -25%;
    margin-top: -50px;
    border-radius: 20px;
    line-height: 100px;
    text-align: center;
    color: #ffffff;
    font-size: 2rem;
    z-index: 9;
    display: none;}
</style>
<script src="vue.min.js" type="text/javascript" charset="utf-8"></script>
<script src="base64.js" type="text/javascript" charset="utf-8"></script>
</head>
<body class="spr_bg">
<div class="wrap bg">
<div class="header boxer bg">
	<div class="nav">
		<a href="http://lol.qq.com/download.shtml" target="_blank" class="nav_lnk fr"><strong class="hidden">下载游戏</strong></a>
		<a href="http://lol.qq.com/main.shtml" target="_blank" class="nav_lnk fr"><strong class="hidden">进入官网</strong></a>
	</div>
	<h1 class="hidden">英雄联盟封号查询系统</h1>
	<div class="log">
		<p id="unlogin"><a href="#" class="login" id="dologin">用户登录</a></p>
		<p id="logined" style="display:none;">亲爱的<span id="qqnum"></span>，[<a href="#" id="dologout">注销</a>]</p>
	</div>
</div>
<div class="content boxer">
	<div class="main fr">
		<div class="choice">
			<select id="areaContentId" class="select fl"></select>
			<select id="roleContentId" class="select fl"></select>
			<a href="javaScript:getPunishInfo()" class="submit fl spr"><strong class="hidden">查询</strong></a>
			<a href="#" id="confirmButtonId"></a>
		</div>
		
		<div id="mReasonContent" class="result">
			<table cellspacing="0" class="banned-header">
				<thead>
					<tr><th>游戏大区</th><th>召唤师名称</th><th>处罚原因</th><th>解封时间</th></tr>
				</thead>
			</table>
			<div id="app" class="banned-list">
				<div v-for="r in pdata" class="item">
					<div class="item-row clearfix" v-on:click="getMore($index,$event)">
						<div class="server">{{r.cheat_zone}}</div>
						<div class="chr">{{r.cheat_role}}</div>
						<div class="reason">{{r.punish_reason}}</div>
						<div class="ufztime">{{r.punish_endTime}}</div>
					</div>
					<div class="detail-box" id="detail_{{$index}}" >
						<span class="down-arr"></span>
						<div class="db-hd" id="history_count">
							<span>总违规次数：{{r.punish_count}}</span>
							<span>历史被举报次数：{{r.history_count}}</span>
						</div>
						<div class="battle-list">
							<div v-for="record in r.records" class="battle-item">
								<div class="bt-hd clearfix" v-on:click="getTable($index,$parent.$index)">
									<img src="{{record.champion_id}}" alt="" />
									<div class="bd-cnt">
										<p>{{record.game_type}}</p>
										<p>
											<span>游戏时间：{{record.start_time}}</span>
											<span>处罚原因：{{record.punish_reason}}</span>
										</p>
										<span class="open-arr" v-show="record.arr"></span>
									</div>
								</div>
								<div class="bt-bd" id="table_{{$parent.$index}}_{{$index}}">
									<div class="tab-hd clearfix">
										<div data-tab-page="page1" v-on:click="changePage($index,$parent.$index,1)">战绩</div>
										<div data-tab-page="page2" class="hiddenShow" v-on:click="changePage($index,$parent.$index,2)">聊天记录</div>
									</div>
									<div class="tab-page page1" id="page1_{{$parent.$index}}_{{$index}}">
										<table class="team-list">
											<tr>
												<th width="202" class="al">获胜队伍</th>
												<!--<th width="35">评价</th>-->
												<th width="45">金钱</th>
												<th width="75">杀/死/助</th>
												<th>出装</th>
											</tr>
											<tr v-for="win in record.gamers.win">
												<td class="al">
													<img class="avtr" src="{{win.champion_id}}" alt="" />
													<span class="hr-name">{{win.name}}</span>
												</td>
												<!--<td>{{win.game_score}}</td>-->
												<td>{{win.gold_earned}}</td>
												<td>{{win.champions_killed}}/{{win.num_deaths}}/{{win.assists}}</td>
												<td>
													<div class="img"><img src="{{win.item0}}" alt="" /></div>
													<div class="img"><img src="{{win.item1}}" alt="" /></div>
													<div class="img"><img src="{{win.item2}}" alt="" /></div>
													<div class="img"><img src="{{win.item3}}" alt="" /></div>
													<div class="img"><img src="{{win.item4}}" alt="" /></div>
													<div class="img"><img src="{{win.item5}}" alt="" /></div>
													<div class="img"><img src="{{win.item6}}" alt="" /></div>
												</td>
											</tr>
											
										</table>
										<table class="team-list">
											<tr>
												<th width="202" class="al">失败队伍</th>
												<!--<th width="35">评价</th>-->
												<th width="45">金钱</th>
												<th width="75">杀/死/助</th>
												<th>出装</th>
											</tr>
											<tr v-for="lose in record.gamers.lose">
												<td class="al">
													<img class="avtr" src="{{lose.champion_id}}" alt="" />
													<span class="hr-name">{{lose.name}}</span>
												</td>
												<!--<td>{{lose.game_score}}</td>-->
												<td>{{lose.gold_earned}}</td>
												<td>{{lose.champions_killed}}/{{lose.num_deaths}}/{{lose.assists}}</td>
												<td>
													<div class="img"><img src="{{lose.item0}}" alt="" /></div>
													<div class="img"><img src="{{lose.item1}}" alt="" /></div>
													<div class="img"><img src="{{lose.item2}}" alt="" /></div>
													<div class="img"><img src="{{lose.item3}}" alt="" /></div>
													<div class="img"><img src="{{lose.item4}}" alt="" /></div>
													<div class="img"><img src="{{lose.item5}}" alt="" /></div>
													<div class="img"><img src="{{lose.item6}}" alt="" /></div>
												</td>
											</tr>
											
										</table>
									</div>
									<div class="tab-page page2" id="page2_{{$parent.$index}}_{{$index}}">
										<p>00:31  游戏环境净化专员：XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</p>
										<p>00:37  游戏环境净化专员：XXXXXXXXXXXXXXXXXXXXXXXXX</p>
										<p>00:31  游戏环境净化专员：XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</p>
										<p>00:37  游戏环境净化专员：XXXXXXXXXXXXXXXXXXXXXXXXX</p>
										<p>00:31  游戏环境净化专员：XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</p>
										<p>00:37  游戏环境净化专员：XXXXXXXXXXXXXXXXXXXXXXXXX</p>
										<p>00:31  游戏环境净化专员：XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</p>
										<p>00:37  游戏环境净化专员：XXXXXXXXXXXXXXXXXXXXXXXXX</p>
										<p>00:31  游戏环境净化专员：XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</p>
										<p>00:37  游戏环境净化专员：XXXXXXXXXXXXXXXXXXXXXXXXX</p>
										<p>00:31  游戏环境净化专员：XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</p>
										<p>00:37  游戏环境净化专员：XXXXXXXXXXXXXXXXXXXXXXXXX</p>
										<p>00:31  游戏环境净化专员：XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</p>
										<p>00:37  游戏环境净化专员：XXXXXXXXXXXXXXXXXXXXXXXXX</p>
										<p>00:31  游戏环境净化专员：XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</p>
										<p>00:37  游戏环境净化专员：XXXXXXXXXXXXXXXXXXXXXXXXX</p>
										<p>00:31  游戏环境净化专员：XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</p>
										<p>00:37  游戏环境净化专员：XXXXXXXXXXXXXXXXXXXXXXXXX</p>
										<p>00:31  游戏环境净化专员：XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</p>
										<p>00:37  游戏环境净化专员：XXXXXXXXXXXXXXXXXXXXXXXXX</p>
										<p>00:31  游戏环境净化专员：XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</p>
										<p>00:37  游戏环境净化专员：XXXXXXXXXXXXXXXXXXXXXXXXX</p>
										<p>00:31  游戏环境净化专员：XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</p>
										<p>00:37  游戏环境净化专员：XXXXXXXXXXXXXXXXXXXXXXXXX</p>
									</div>
								</div>
							</div>
							
						</div>
					</div>
				</div>
				
			</div>
		</div>
		<!--div class="choice">
			<span style="color: #000000;">QQ:</span><input id="input_QQ" ></input><br />
			<span style="color: #000000;">大区ID:</span><input id="input_areaContentId" ></input><br />
			<span style="color: #000000;">游戏昵称:</span><input id="input_roleContentId" ></input><br />
			<a href="javaScript:getPunishInfo_t()" class="submit fl spr"><strong class="hidden">查询</strong></a>
		</div-->
		<div class="info">
			<h2 class="info_title">故意逃跑惩罚系统FAQ</h2>
			<ul class="info_lst">
				<li>Q：哪些行为将会受到惩罚？</li>
				<li>A：1、故意退出、逃跑；</li>
				<li>2、恶意挂机、不参与游戏；</li>
				<li>3、消极比赛，而遭到举报；</li>
				<li>4、使用外挂等影响游戏平衡的软件；</li>
				<li>5、在游戏中发布虚假信息；发表涉及政治、法令等信息；</li>
				<li>6、冒充腾讯官方人员进行诈骗。</li>
				<li>希望这样一个小小的惩罚能够帮助改善一下不良的游戏习惯。</li>
			</ul>
			<p class="more"><a href="javascript:show('pop')" class="more_lnk">了解更详细的玩家惩罚系统说明&gt;&gt;&gt;</a></p>
		</div>
	</div>
	<div class="side fl spr_bg">
		<ul class="lnks">
			<li class="lnks_lst"><a href="http://lol.gamebbs.qq.com/forum.php" target="_blank" class="lnks_lnk"><img src="images\pic_bbs.jpg" alt="" />官方论坛</a></li>
			<li class="lnks_lst"><a href="javascript:show('pop')" class="lnks_lnk"><img src="images\pic_intro.jpg" alt="" />封号系统说明</a></li>
		</ul>
		<h3 class="intro_title">封号查询系统说明：</h3>
		<ul class="intro">
			<li>同一QQ号码每个小时最多查询1次</li>
			<li>若您对查询结果存在疑问请查看详细FAQ，了解封号详细说明</li>
		</ul>
	</div>
</div>
<script src="app.js" type="text/javascript" ></script>
<script type="text/javascript" src="http://ossweb-img.qq.com/images/js/foot.js"></script>
</div>
<div class="pop" id="pop" style="display:none;">
	<h2 class="pop_title">封号FAQ</h2>
	<div class="pop_box">
		<p class="pop_p">　　2010年12月23日那次停机维护后，故意逃跑玩家惩罚系统正式上线了。</p>
		<p class="pop_p">　　我们会先对中途离场、挂机的玩家做出警告，随着玩家中途离场、挂机次数的增加，我们将禁止您进入游戏。这个系统有点类似驾照积分制度。一次次的犯规将会得到非常严厉的惩罚！相反地，如果你长时间都没有中途退出游戏，或者一般情况下都不中途退出游戏，那么我们会认为你表现良好。</p>
		<p class="pop_p">　　同时我们可以保证，如果您出现了特殊情况暂时离开，但很快又回到了游戏中；或者由于系统维护、网络波动等官方原因，无法回到游戏中，这个绝对是不会被惩罚的！另外，我们也欢迎所有的玩家都对挂机、秒退的不良行为进行投诉。良好的游戏氛围是大家共同努力的结果。</p>
		<p class="pop_p">挂机、秒退封号惩罚相关FAQ：</p>
		<p class="pop_p">Q:太糟糕了。我的网络（服务提供商）很烂。还有没有天理啊，这很不公平。<br />A：哥们，这种情况给那个谁打个电话，让接电话的阿姨给您找个技术人员过来看看吧。您网络不好，您不开心我们也不开心啊~</p>
		<p class="pop_p">Q：遇到很二的队友或者很坏的对手，难道我连骂他们的权利都没有了吗？<br />A：我们不能剥夺您辱骂对手队友的权利，但您也无法剥夺别人对您行为的投诉权利。</p>
		<p class="pop_p">Q：我在两场游戏中掉线了，这种情况下也要被封停吗？<br />A：哥们，掉线后立即重连是不会有封停危险的。但如果您网络条件不好，建议先致电网络运营商客服确认网络是否流畅。</p>
		<p class="pop_p">Q：真讨厌！我只会在遇到菜鸟的时候才中途退出。<br />A：讨厌啦~菜鸟也不喜欢人家中途退出嘛~</p>
		<p class="pop_p">Q：排位赛、匹配模式、人机对战模式和房间模式的惩罚方式有不同吗？<br />A：目前所有游戏模式都有惩罚，并且是完全相同的。不要以为欺负电脑就可以随意挂机哦~</p>
		<p class="pop_p">Q：我是付费用户，会对我做出宽大处理吗？<br />A：有时候，给了钱也不能当爷。</p>
		<p class="pop_p">Q：队友不给力，对手太强力，您让我在这20分钟忍受折磨难道就是很好的游戏体验吗？<br />A：游戏的体验就是欢乐刺激失望苦恼一并都有的。有输的惨烈，才会有赢得痛快啊！孩子，谁都怕输，可是没有输过的人生，就是不完整的哦。</p>
		<p class="pop_p">Q：到底会被封多久？能明确告知我吗？<br />A：封停时间有具体提示，您登录游戏时可以看到。随着你被封次数的增加，您有可能被永久停封。同时，也可以登录封号查询系统查看解封时间。</p>
		<p class="pop_p">Q：我在游戏中掉线了，我觉得是网络不好的原因。这种情况下也要被封停吗？<br />A：请在游戏开始前先检查网络，或者致电您的网络运营商确认网络是否顺畅。</p>
		<p class="pop_p">Q：我打得好好的，你们忽然停机维护了，这样我会被算作秒退封号吗？<br />A：请大家放心，这种情况下您的这局比赛不会被记入秒退系统。</p>
		<p class="pop_p">Q：为什么我在游戏中被禁言？<br />A：连续刷屏或发言频率太高会导致禁言。</p>
		<p class="pop_p">Q：我被禁言了,如何解除？<br />A：被禁言后，等待几分钟即可解除禁言，若在长时间等待后仍无法正常发言，请重登平台解决。</p>
		<p class="pop_p">Q：哪些行为将会受到惩罚？<br />A：1、故意退出、逃跑；2、恶意挂机、不参与游戏；3、消极比赛，而遭到举报；4、使用外挂等影响游戏平衡的软件；5、在游戏中发布虚假信息；发表涉及政治、法令等信息；6、冒充腾讯官方人员进行诈骗；希望这样一个小小的惩罚能够帮助改善一下不良的游戏习惯。</p>
	</div>
	<a href="javascript:hdn('pop')" class="close spr"><strong class="hidden">CLOSE</strong></a>
</div>
<div class="cover" id="cover" style="display:none;"></div>
<script type="text/javascript" src="http://ossweb-img.qq.com/images/js/milo/milo-min.js?r=20120605"></script>
<script type="text/javascript" src="index.js"></script>
<script type="text/javascript">
var show=function(o){
	var a=g(o),
	b=g("cover"),
	c=document.body.offsetHeight;
	d=document.documentElement.scrollTop||document.body.scrollTop;
	a.style.display="block";
	b.style.display="block";
	b.style.height=c+"px";
},
hdn=function(o){
	g(o).style.display="none";
	g("cover").style.display="none";
};
milo.addEvent(g("dologin"), "click", function(){
	need("biz.login",function(LoginManager){
		LoginManager.init({
			needReloadPage:true
		});
		LoginManager.login();
	});
	return false;
});
milo.addEvent(g("dologout"), "click", function(){
	need("biz.login",function(LoginManager){
		LoginManager.logout();
	});
	return false;
});
milo.ready(function(){
	//var rspc=g("rspc");
	g("footer_ied").className="footer bg";
	//rspc.style.height=Number(rspc.getAttribute("rowspan"))*25+"px";
	need("biz.login",function(LoginManager){
		LoginManager.checkLogin(function(){
			g("qqnum").innerHTML=LoginManager.getUserUin();
		});
	});
	include("http://pingjs.qq.com/ping_tcss_ied.js",function(){
		if(typeof(pgvMain) == 'function'){
			pgvMain();
		}
	});
	include("http://ossweb-img.qq.com/images/js/title.js",function(){
		ostb_int();
	});
});
</script>
<!--added 2016.10.26-->
<script src="http://ossweb-img.qq.com/images/js/jquery/jquery-1.9.1.min.js"></script>
<script src="http://lol.qq.com/biz/hero/champion.js" type="text/javascript" ></script>
<script>
$(function()
{
	//主item打开关闭
	$(".banned-list .item-row").click(function()
	{
		$(this).closest(".item").children(".detail-box").toggle();
	});
	//比赛项打开关闭
	$(".banned-list .battle-item").click(function(e)
	{
		e.stopPropagation();
		$(this).find(".bt-bd").toggle();
		$(this).toggleClass("opened");
		$(this).find(".tab-hd > div").eq(0).click();  //默认打开第一个tab-page
	});
	//tab页切换
	$(".banned-list .tab-hd > div").click(function(e)
	{
		e.stopPropagation();
		$(this).addClass("actived").siblings().removeClass("actived");
		var clz = $(this).data("tab-page");
		var p = $(this).closest(".bt-bd");
		p.find(".tab-page").hide();
		p.find(".tab-page." + clz).show();
	});
	//tab页点击时阻止父容器关闭
	$(".banned-list .tab-page").click(function(e){ e.stopPropagation(); });
});
</script>
<div id="loading" class="loading">{{title}}</div>
</body>
<script src="http://ossweb-img.qq.com/images/js/pagespeed/page_speed_v2.js"></script></html>
<!--[if !IE]>|xGv00|4c3383ec59903aebb88cc78da348909d<![endif]-->