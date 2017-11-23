<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8" />
<meta name="robots" content="all" />
<meta name="author" content="Tencent-CP" />
<meta name="description" content="英雄联盟官方网站，海量风格各异的英雄，丰富、便捷的物品合成系统，游戏内置的匹配、排行和竞技系统，独创的“召唤师”系统及技能、符文、天赋等系统组合，必将带你进入一个崭新而又丰富多彩的游戏世界。" />
<meta name="Keywords" content="英雄联盟,lol,league of legends,DOTA,即时战略,MOBA,召唤师,符文,匹配,英雄,技能,团队,Gank,快节奏,Farm,成长" />
<!-- 设计：cp  | 重构：cp | 创建：2016/04/12 | 更新：| 团队博客：http://tgideas.qq.com/ -->
<title>吉格斯的实验室-英雄联盟官方网站-腾讯游戏</title>
<style>
/* reset */
body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,form,fieldset,input,textarea,p,blockquote,th,td{margin:0;padding:0}
table{border-collapse:collapse;border-spacing:0;table-layout: fixed;}
address,caption,cite,code,dfn,em,strong,th,var{font-weight:normal;font-style:normal}
ol,ul{list-style:none}
caption,th{text-align:left}
h1,h2,h3,h4,h5,h6{font-weight:normal;font-size:100%}
q:before,q:after{content:''}
fieldset,img,abbr,acronym{border:0}

/* footer */
#footer_ied {margin: 0 auto;text-align:center;font-size:12px;line-height:19px;color:#cccccc;background: #100f19;}
.wrap_ied {margin:0 auto;padding:30px;width:940px;}
.wrap_ied a {color:#cccccc;}
#footer_ied .e {font-size:10px;-webkit-text-size-adjust:none;}

/* page */
.c:before,.c:after {content:"";display:table}
.c:after {clear:both}
.c {zoom:1}
body {font:12px/1.5 "\5FAE\8F6F\96C5\9ED1",sans-serif;padding-top: 42px;background: #000;}
a {text-decoration:none;overflow:hidden;}
a:hover {text-decoration:underline}
.wrap,.ost,#footer_ied {width: 100%;min-width: 1000px;_width:expression((document.documentElement.clientWidth||document.body.clientWidth)<1002?'1000px':'');}
.wrap{background: url(./images/rp.jpg) no-repeat 50% 0;}
.container{margin: 0 auto;width: 1000px;}
.hide {display:block;width:0;height:0;overflow:hidden;}
.pr {position:relative;}
.pa {position:absolute;}
.db {display:block;text-indent:-999em;}

/* killyesterday */
a,em,i,b{color: inherit;font-style: inherit;font-weight: inherit;_font-style: normal;_font-weight: normal;}
.wrap a:hover{text-decoration: none;}
.fl{float: left;}
.fr{float: right;}
.mc{margin: 0 auto;}
.sp{background: url(./images/sp.png) no-repeat;}
:focus{outline: none;}

/* head */
.head{height: 540px;background: url(./images/hd.jpg) no-repeat 50% 0;}
.logo{left: 12px;top: 15px;width: 187px;height: 94px;background: url(./images/logo.png) no-repeat;display: block;}
.intro{left: 20px;top: 382px;color: #ffffff;font-size: 14px;line-height: 25px;font-style: italic;}
.intro i{color: #16f3d4;}
.session{left: 382px;top: 150px;width: 143px;height: 143px;background: url(./images/session.png) no-repeat;color: #561602;font-size: 21px;font-weight: bold;line-height: 140px;text-align: center;text-shadow: 0 2px 1px #edd884;}

/* content */
.content{height: 1418px;background: url(./images/ct.jpg) no-repeat 50% 0;}

.ul-mode{padding-top: 8px;height: 299px;}
.ul-mode li{float: left;margin-left: 56px;width: 204px;height: 234px;background: #3b2631;border-radius: 4px;overflow: hidden;}
.ul-mode .fix{margin-left: 8px;}
.ul-mode .btn-mode,.ul-mode .btn-mode img{position: relative;width: 204px;height: 122px;display: block;}
.ul-mode .btn-mode p{position: absolute;left: 0;bottom: 0;width: 100%;filter:progid:DXImageTransform.Microsoft.gradient(enabled='true',startColorstr='#BF000000', endColorstr='#BF000000');background:rgba(0,0,0,0.75);cursor: pointer;}
:root .ul-mode .btn-mode p{filter:none;}
.ul-mode .btn-mode p em{margin-left: 10px;color: #ffffff;font-size: 16px;font-weight: bold;line-height: 30px;white-space: nowrap;}
.ul-mode .btn-mode p b{font-weight: normal;display: none;}
.ul-mode .btn-mode p i{position: absolute;right: 3px;top: 5px;width: 20px;height: 20px;background-position: -325px -11px;}

.ul-mode .l1 .btn-mode:hover p{background: #802620;}
.ul-mode .l2 .btn-mode:hover p{background: #2b6a68;}
.ul-mode .l3 .btn-mode:hover p{background: #772766;}
.ul-mode .l4 .btn-mode:hover p{background: #90430b;}
.ul-mode .l5 .btn-mode:hover p{background: #0b6d8d;}
.ul-mode .l6 .btn-mode:hover p{background: #562777;}
.ul-mode .l7 .btn-mode:hover p{background: #932200;}
.ul-mode .l8 .btn-mode:hover p{background: #0061a5;}
.ul-mode .l9 .btn-mode:hover p{background: #692c0d;}

.ul-mode .btn-mode:hover p{top: 0;padding-top: 24px;height: 98px;color: #ffffff;font-size: 12px;line-height: 12px;text-align: center;display: none;display: block;}
.ul-mode .btn-mode:hover p em{font-size: 28px;line-height: 50px;display: block;}
.ul-mode .btn-mode:hover p em label{display: none;}
.ul-mode .btn-mode:hover p b{display: inline;}
.ul-mode .btn-mode:hover p i{position: static;margin-left: 4px;width: 12px;height: 12px;background-position: 0 -11px;display: inline-block;vertical-align: top;}
.ul-mode .l6 .btn-mode:hover p em{font-size:22px!important}

.ul-mode span{width: 194px;height: 30px;color: #ebc7d9;font-size: 14px;line-height: 16px;display: block;}
.ul-mode .s2{font-size: 13px;padding-top: 20px;height: 20px;text-align: center;white-space: nowrap;padding: 15px 5px;}
.ul-mode .s3{font-size: 12px;height: 40px;text-align: center;white-space: nowrap; padding: 5px 5px;}
.ul-mode span.s1{padding-top: 50px;}

.ul-mode .btn-view,.ul-mode .btn-view1{margin: 0 auto;width: 120px;height: 40px;border-radius: 5px;font-size: 14px;font-weight: bold;line-height: 40px;text-align: center;display: block;}
.ul-mode .btn-view{background: #00c7ae;color: #ffffff;}
.ul-mode .btn-view1{background: #8685af;color: #514f74;}

.ul-mode .btn-view-disabled{margin: 0 auto;width: 120px;height: 40px;background: #8A8A8A;border-radius: 5px;color: #464646;font-size: 14px;font-weight: bold;line-height: 40px;text-align: center;display: block;}

.ul-mode .c{margin: 0 auto;width: 190px;}
.ul-mode .c a{float: left;width: 95px;height: 40px;color: #ffffff;font-size: 14px;font-weight: bold;line-height: 40px;text-align: center;display: block;}
.ul-mode .c .fl{background: #00c7ae;border-radius: 5px 0 0 5px;}
.ul-mode .c .fr{background: #fc830d;border-radius: 0 5px 5px 0;}
.ul-mode .c .fr i{margin-right: 4px;width: 15px;height: 14px;background-position: -28px -11px;display: inline-block;vertical-align: middle;}

.box-nav{height: 71px;}
.box-nav .nav{margin: 0 auto;width: 860px;height: 71px;overflow: hidden;}
.box-nav .nav .c{left: -3440px;}
.box-nav .nav p{width: 999999px;}
.box-nav .nav a{float: left;/*width: 428px;height: 71px;border-left: 1px solid #0be3d1;border-right: 1px solid #078d76;*/width: 860px;color: #ffffff;font-size: 26px;font-weight: bold;line-height: 68px;text-align: center;text-shadow: 0 0 5px #0fdbca;display: block;cursor: default;}
.box-nav .nav .on{color: #fffc00;}
.box-nav .btn-arrow{top: 0;width: 70px;height: 71px;display: block;}
.box-nav .prev{left: 0;background-position: -242px -11px;}
.box-nav .next{right: 0;background-position: -153px -11px;}
.box-nav i{top: -46px;width: 70px;height: 70px;background-position: -64px -11px;display: block;}
.box-nav .i1{left: -46px;}
.box-nav .i2{right: -46px;}

.box-calendar{width: 1000px;height: 774px;overflow: hidden;}
.outer{left: -4000px;;top: 0;width: 999999px;height: 774px;}
.calendar{float: left;width: 1000px;}
.box-calendar .cover{left: 0;bottom: -21px;width: 1000px;height: 51px;background: url(./images/cover.png) no-repeat;}
.tab-week{width: 100%;}
.tab-week td{height: 59px;background: #4d4a75;border-right: 1px solid #1d1c2d;color: #8a87d4;font-size: 20px;font-weight: bold;line-height: 59px;text-align: center;}
.tab-calendar{width: 100%;}
.tab-calendar td{position: relative;height: 142px;background: #444269;border: solid #1d1c2d;border-width: 1px 1px 0 0;}
.tab-calendar em{position: absolute;right: 10px;bottom: 10px;color: #4f4d78;font-size: 20px;font-weight: bold;line-height: 20px;text-align: right;}
.tab-calendar p{color: #8381bf;font-size: 20px;font-weight: bold;line-height: 22px;text-align: center;}
.tab-calendar p b{font-size: 12px;font-weight: normal;display: block;line-height: 14px;padding-top: 5px;}
.tab-calendar .p2{font-size: 18px;}
.tab-calendar .p2 b{margin-top: 5px;}
.tab-calendar .odd{background: #555381;}
.tab-calendar .odd p{color: #8d8ad5;}
.tab-calendar .odd em{color: #626093;}
.tab-calendar .mode p{padding-top: 76px;color: #ffffff;}
.tab-calendar .mode6 p{padding-top: 78px;line-height: 18px;}
.tab-calendar .mode em{display: none;}
.tab-calendar .mode0{background: url(./images/m0.jpg) no-repeat !important;background-size: 100% 100%;}
.tab-calendar .mode1{background: url(./images/m1.jpg) no-repeat !important;background-size: 100% 100%;}
.tab-calendar .mode2{background: url(./images/m2.jpg) no-repeat !important;background-size: 100% 100%;}
.tab-calendar .mode3{background: url(./images/m3.jpg) no-repeat !important;background-size: 100% 100%;}
.tab-calendar .mode4{background: url(./images/m4.jpg) no-repeat !important;background-size: 100% 100%;}
.tab-calendar .mode5{background: url(./images/m5.jpg) no-repeat !important;background-size: 100% 100%;}
.tab-calendar .mode6{background: url(.images/m6.jpg) no-repeat !important;background-size: 100% 100%;}
.tab-calendar .mode7{background: url(./images/m7.jpg) no-repeat !important;background-size: 100% 100%;}
.tab-calendar .mode8{background: url(./images/m8.jpg) no-repeat !important;background-size: 100% 100%;}
.tab-calendar .mode9{background: url(./images/m9.jpg) no-repeat !important;background-size: 100% 100%;}
.tab-calendar .mode10{background: url(./images/m10.jpg) no-repeat !important;background-size: 100% 100%;}
.tab-calendar .mode11{background: url(./images/m11.jpg) no-repeat !important;background-size: 100% 100%;}
.tab-calendar .mode12{background: url(./images/m12.jpg) no-repeat !important;background-size: 100% 100%;}
.tab-calendar .mode13{background: url(./images/md13.jpg) no-repeat !important;background-size: 100% 100%;}
.tab-calendar .mode14{background: url(http://ossweb-img.qq.com/images/lol/act/a20160412rgm/md1.jpg) no-repeat !important;background-size: 100% 100%;}
.tab-calendar .mode15{background: url(http://ossweb-img.qq.com/images/lol/act/a20160412rgm/m14.jpg) no-repeat !important;background-size: 100% 100%;}
.tab-calendar .mode16{background: url(./images/m16.jpg) no-repeat !important;background-size: 100% 100%;}


.tab-calendar .mode1 p b{color: #fcb2ad;}
.tab-calendar .mode2 p b{color: #b2fdfb;}
.tab-calendar .mode3 p b{color: #ffa3eb;}
.tab-calendar .mode4 p b{color: #ffc59b;}
.tab-calendar .mode5 p b{color: #83c7dd;}
.tab-calendar .mode6 p b{margin-top: 2px;color: #ab81c8;}
.tab-calendar .mode6 p {font-size:16px;}
.tab-calendar .mode12 p {font-size:17px;}

.tab-calendar .mode11 ul{height: 142px;}
.tab-calendar .mode11 li{padding:12px 0 0 48px;height:59px;font-size:18px;font-weight: bold;color:#fff;}
.tab-calendar .mode11 b{display:block;margin-top: 2px;font-size: 12px;font-weight: normal;line-height: 14px;}
.purple_txt{color:#ab81c8;}
.red_txt{color:#ffb9a4;}

.tab-calendar .mode.on:before{content: '';position: absolute;left: 0;top: 0;width: 138px;height: 138px;display: block;border: 2px solid;border-color: #c0995e;
	animation: frameShow 3s linear infinite;
	-webkit-animation: frameShow 3s linear infinite;
}
@keyframes frameShow{
	0%{border-color: #c0995e;}
	50%{border-color: #ffffff;}
	100%{border-color: #c0995e;}
}
@-webkit-keyframes frameShow{
	0%{border-color: #c0995e;}
	50%{border-color: #ffffff;}
	100%{border-color: #c0995e;}
}
.tab-calendar .disable{background: #53525f;}
.tab-calendar .disable p{color: #888888;}
.tab-calendar .disable em{color: #777777;}

.box-tip{margin-top: 60px;color: #ffffff;font-size: 14px;line-height: 25px;text-align: center;}
.box-tip em{color: #00c7ae;}
.box-tip p{margin: 0 auto;width: 936px;height: 35px;background: url(./images/line.png) no-repeat 50% 50%;color: #00c7ae;font-size: 20px;font-weight: bold;line-height: 35px;text-indent: 2.5em;}

.pop-video{width: 940px;height: 550px;border: 4px solid #16edf2;display: none;}
.pop-video div{width: 100%;height: 100%;}
.btn-close{right: -75px;top: -10px;color: #16edf2;font: bold 70px/60px simsun;text-align: center;display: block;transition: 0.5s;-webkit-transition: 0.5s;}
.btn-close:hover{transform: rotate(180deg);-webkit-transform: rotate(180deg);text-decoration: none;}







/* slide */
.slide{padding: 12px 16px;width: 144px;background: #383656;border-radius: 10px;}
.slide p{height: 40px;color: #00c7ae;font-size: 20px;font-weight: bold;line-height: 40px;text-align: center;display: block;}
.slide img{display: block;}
.slide span{margin: 5px 0;color: #ffffff;font-size: 13px;line-height: 20px;display: block;}
.slide a{color: #00c7ae;}

.float,.fixed {right: 50px;top: 580px;}
.float {position:absolute;top: 580px !important;right: 50px;}/* important必须有，兼容ie6 */
.fixed {
	position:fixed;top: 50px;
	_position:absolute;_top:expression(eval(document.documentElement.scrollTop)+50);_bottom:auto;/*ie6 fixed*/
}
* html {background-image:url(about:blank);background-attachment:fixed;}/*解决 ie6 Fixed闪动问题*/

/*20160921新增*/
.tab-calendar .mode_spe{background-color: #772766;}
.tab-calendar .mode_spe p{padding-top: 0;}
</style>
</head>
<body onLoad="ajax()">
	
<!--[if lt IE 7]>
<p class="chromeframe">您使用的IE浏览器版本过低，为获得更佳浏览体验，<a href="http://windows.microsoft.com/">建议升级您的IE浏览器</a>，或使用<a href="http://www.google.com/chromeframe/?redirect=true">Google Chrome</a>、<a href="http://www.firefox.com.cn/">Firefox</a>等高级浏览器，将会得到更好的体验！</p>
<![endif]-->

<div class="wrap">
<div class="container">
	<div class="head pr">
		<h1 class="hide">吉格斯的模式实验室</h1>
		<a class="logo pa" href="http://lol.qq.com/" target="_blank" title="英雄联盟"></a>
		<!--<p class="session pa">第二期</p>-->
		<p class="intro pa">
			<i>欢迎来到吉格斯的模式实验室！</i>在这里你将接连体验到英雄联盟最好玩、最酷炫的游戏模式：<br />
			还记得令无数召唤师疯狂的<i>“无限火力”</i>吗？<br />
			还有傻傻分不清楚你我的<i>“克隆模式”</i>？<br />
			当然还有<i>魄罗王模式、末日人机</i>等等都有可能在这里回归哦！<br />
			赶快加入吉格斯的模式实验室，用100种姿势<i>征服召唤师峡谷</i>！
		</p>
	</div>
	<div class="content">
		<ul class="ul-mode">
			<!--<li class="l1">
				<a class="btn-mode" href="javascript:videoPop('s00201nhpfu');">
					<img src="http://ossweb-img.qq.com/images/lol/act/a20160412rgm/mode1.jpg" />
					<p><em>飞升模式</em><b>点击查看视频</b><i class="sp"></i></p>
				</a>
				<span class="s2">时间：7/1 18:00 - 7/4 10:00</span>
				<a class="btn-view" href="http://lol.qq.com/act/a20160412rgm/game-mod.htm" target="_blank">查看模式详情</a>
			</li>
			<li class="l4 fix">
				<a class="btn-mode" href="javascript:videoPop('s0196m3xvcn');">
					<img src="http://ossweb-img.qq.com/images/lol/act/a20160412rgm/mode4.jpg" />
					<p><em>六杀模式</em><b>点击查看视频</b><i class="sp"></i></p>
				</a>
				<span class="s2">时间：7/8 18:00 - 7/11 10:00</span>
				<a class="btn-view" href="http://lol.qq.com/webplat/info/news_version3/152/4585/4586/m3238/201604/454629.shtml" target="_blank">查看模式详情</a>
			</li>-->
			<!--<li class="l3">
				<a class="btn-mode" href="javascript:videoPop('a0196tr626t');">
					<img src="http://ossweb-img.qq.com/images/lol/act/a20160412rgm/mode3.jpg" />
					<p><em>无限火力</em><b>点击查看视频</b><i class="sp"></i></p>
				</a>
				<span class="s2">时间：5/27 18:00 - 5/30 10:00</span>
				<a class="btn-view" href="http://lol.qq.com/webplat/info/news_version3/152/4585/4586/m3238/201605/463521.shtml" target="_blank">查看模式详情</a>
			</li>-->
			<!--<li class="l6">
				<a class="btn-mode" href="javascript:videoPop('p0300jhbj9e');">
					<img src="http://ossweb-img.qq.com/images/lol/act/a20160412rgm/mode6.jpg" />
					<p><em>这货不是统治战场</em><b>点击查看视频</b><i class="sp"></i></p>
				</a>
				<span class="s2">时间：7/15 18:00 - 7/18 10:00</span>
				<a class="btn-view" href="http://lol.qq.com/webplat/info/news_version3/152/4585/4586/m3238/201606/471434.shtml" target="_blank">查看模式详情</a>
			</li>-->
			<!-- <li class="l7 fix">
				<a class="btn-mode" href="javascript:videoPop('a0315vkn24t');">
					<img src="http://ossweb-img.qq.com/images/lol/act/a20160412rgm/mode7.jpg" />
					<p><em><label>全新模式：</label>枢纽攻防战</em><b>点击查看视频</b><i class="sp"></i></p>
				</a>
				<span class="s2">时间：已结束</span>
				<a class="btn-view" href="http://lol.qq.com/act/a20160715siegemode/" target="_blank">查看模式详情</a>
			</li>
			<li class="l7">
				<a class="btn-mode" href="javascript:videoPop('a0315vkn24t');">
					<img src="http://ossweb-img.qq.com/images/lol/act/a20160412rgm/mode7.jpg" />
					<p><em><label>全新模式：</label>枢纽攻防战</em><b>点击查看视频</b><i class="sp"></i></p>
				</a>
				<span class="s2">时间：已结束</span>
				<a class="btn-view" href="http://lol.qq.com/act/a20160715siegemode/" target="_blank">查看模式详情</a>
			</li> -->
			<!-- <li class="l2 fix">
				<a class="btn-mode" href="javascript:videoPop('p0020l3r122');">
					<img src="http://ossweb-img.qq.com/images/lol/act/a20160412rgm/mode2.jpg" />
					<p><em>魄罗大乱斗</em><b>点击查看视频</b><i class="sp"></i></p>
				</a>
				<span class="s2">时间：已结束</span>
				<a class="btn-view" href="http://lol.qq.com/webplat/info/news_version3/152/4585/4586/m3238/201604/452176.shtml" target="_blank">查看模式详情</a>
			</li>
			<li class="l5">
				<a class="btn-mode" href="javascript:videoPop('i0300c28hs8');">
					<img src="http://ossweb-img.qq.com/images/lol/act/a20160412rgm/mode5.jpg" />
					<p><em>克隆模式</em><b>点击查看视频</b><i class="sp"></i></p>
				</a>
				<span class="s2">时间：已结束</span>
				<a class="btn-view" href="http://lol.qq.com/webplat/info/news_version3/152/4585/4586/m3238/201605/462906.shtml" target="_blank">查看模式详情</a>
			</li>
			<li class="l1">
				<a class="btn-mode" href="javascript:videoPop('s00201nhpfu');">
					<img src="http://ossweb-img.qq.com/images/lol/act/a20160412rgm/mode1.jpg" />
					<p><em>飞升模式</em><b>点击查看视频</b><i class="sp"></i></p>
				</a>
				<span class="s2">时间：8/19 18:00 - 8/22 10:00</span>
				<a class="btn-view" href="http://lol.qq.com/act/a20160412rgm/game-mod.htm" target="_blank">查看模式详情</a>
			</li>
			<li class="l8">
				<a class="btn-mode" href="javascript:alert('敬请期待！')">
					<img src="http://ossweb-img.qq.com/images/lol/act/a20160412rgm/mode8.jpg" />
					<p><em>互选征召</em><b>点击查看视频</b><i class="sp"></i></p>
				</a>
				<span class="s2">时间：8/26 18:00 - 8/29 10:00</span>
				<a class="btn-view" href="javascript:alert('敬请期待！')" target="_blank">查看模式详情</a>
			</li> -->
			<!--<li class="l3 fix">
				<a class="btn-mode" href="javascript:videoPop('u0022205a2g');">
					<img src="http://ossweb-img.qq.com/images/lol/act/a20160412rgm/mode9.jpg" />
					<p><em>末日人工智能</em><b>点击查看视频</b><i class="sp"></i></p>
				</a>
				<span class="s2">时间：10/28 18:00 - 11/07 10:00</span>
				<a class="btn-view" href="http://lol.qq.com/act/a20161024mrrj/" target="_blank">查看模式详情</a>
			</li>
			<li class="l1">
				<a class="btn-mode" href="javascript:videoPop('p0020l3r122')">
					<img src="http://ossweb-img.qq.com/images/lol/act/a20160412rgm/mode2.jpg" />
					<p><em>魄罗大乱斗</em><b>点击查看视频</b><i class="sp"></i></p>
				</a>
				<span class="s2">时间：11/11 18:00 - 11/14 10:00</span>
				<a class="btn-view" href="http://lol.qq.com/webplat/info/news_version3/152/4585/4586/m3238/201604/452176.shtml" target="_blank">查看模式详情</a>
			</li>
			<li class="l6">
				<a class="btn-mode" href="javascript:videoPop('s00201nhpfu');">
					<img src="http://ossweb-img.qq.com/images/lol/act/a20160412rgm/mode1.jpg" />
					<p><em>飞升模式</em><b>点击查看视频</b><i class="sp"></i></p>
				</a>
				<span class="s2">时间：11/18 18:00 - 11/21 10:00</span>
				<a class="btn-view" href="http://lol.qq.com/act/a20160412rgm/game-mod.htm" target="_blank">查看模式详情</a>
			</li>
			<li class="l4">
				<a class="btn-mode" href="javascript:videoPop('s00201nhpfu');">
					<img src="http://ossweb-img.qq.com/images/lol/act/a20160412rgm/mode1.jpg" />
					<p><em>飞升模式</em><b>点击查看视频</b><i class="sp"></i></p>
				</a>
				<span class="s2">时间：11/25 18:00 - 11/28 10:00</span>
				<a class="btn-view" href="http://lol.qq.com/act/a20160412rgm/game-mod.htm" target="_blank">查看模式详情</a>
			</li>-->			
			<!--<li class="l9 fix">
				<a class="btn-mode" href="javascript:alert('敬请期待！');">
					<img src="http://ossweb-img.qq.com/images/lol/act/a20160412rgm/mode12.jpg" />
					<p><em>召唤师峡谷大乱斗</em><b>点击查看视频</b><i class="sp"></i></p>
				</a>
				<span class="s2">时间：04/14 18:00 - 04/17 10:00</span>
				<a class="btn-view" href="http://lol.qq.com/webplat/info/news_version3/152/22006/m14290/201704/571418.shtml#n3" target="_blank">查看模式详情</a>
			</li>
			<li class="l9">
				<a class="btn-mode" href="javascript:alert('敬请期待！');">
					<img src="http://ossweb-img.qq.com/images/lol/act/a20160412rgm/mode12.jpg" />
					<p><em>召唤师峡谷大乱斗</em><b>点击查看视频</b><i class="sp"></i></p>
				</a>
				<span class="s2">时间：04/21 18:00 - 04/24 10:00</span>
				<a class="btn-view" href="http://lol.qq.com/webplat/info/news_version3/152/22006/m14290/201704/571418.shtml#n3" target="_blank">查看模式详情</a>
			</li>-->
			<li class="l3 fix">
				<a class="btn-mode" href="javascript:alert('活动已结束！');">
					<img src="./images/mode16.jpg" />
					<p><em>枢纽攻防战</em><b>点击查看视频</b><i class="sp"></i></p>
				</a>
				<span class="s2">时间：09/29 18:00 - 10/02 10:00</span>
				<a class="btn-view" href="javascript:alert('活动已结束！');">查看模式详情</a>
			</li>
			<li class="l6">
				<a class="btn-mode" href="javascript:alert('活动已结束！');">
					<img src="./images/mode16.jpg" />
					<p><em>枢纽攻防战</em><b>点击查看视频</b><i class="sp"></i></p>
				</a>
				<span class="s2">时间：10/06 18:00 - 10/09 10:00</span>
				<a class="btn-view" href="javascript:alert('活动已结束！');" target="_blank">查看模式详情</a>
			</li>
			<li class="l6">
				<a class="btn-mode" href="javascript:alert('活动已结束！');">
					<img src="./images/mode13.jpg" />
					<p><em>死兆星：奇点</em><b>点击查看视频</b><i class="sp"></i></p>
				</a>
				<span class="s2">时间：10/20 18:00 - 10/23 10:00</span>
				<a class="btn-view" href="javascript:alert('活动已结束！');" target="_blank">查看模式详情</a>
			</li>
			<li class="l6">
				<a class="btn-mode" href="javascript:popVideo('p03992e9711','video','pop-video')">
					<img src="./images/mode13.jpg" />
					<p><em>死兆星：奇点</em><b>点击查看视频</b><i class="sp"></i></p>
				</a>
				<span class="s2">时间：10/27 18:00 - 10/30 10:00</span>
				<a class="btn-view" href="newl/Notic?id=1" target="_blank">查看模式详情</a>
			</li>
		</ul>
		<div class="box-nav pr">
			<div class="nav pr">
				<p class="c pa" id="yue">
					<a href="javascript:;">一月</a>
					 <a href="javascript:;">二月</a>
					<a href="javascript:;">三月</a>
					<a href="javascript:;">四月</a>
					<a href="javascript:;">五月</a>
					<a href="javascript:;">六月</a>
					<a href="javascript:;">七月</a>
					<a href="javascript:;">八月</a>
					<a href="javascript:;">九月</a>
					<a href="javascript:;">10月</a>
				</p>
			</div>
			<a class="btn-arrow prev sp pa" href="javascript:;"></a>
			<a class="btn-arrow next sp pa" href="javascript:;"></a>
			<i class="i1 sp pa"></i>
			<i class="i2 sp pa"></i>
		</div>
		<div class="box-calendar pr">
			<div class="outer pa">				
				<!-- 一月 -->
				<div class="calendar">
					<table class="tab-week">
						<tr>
							<td>日</td>
							<td>一</td>
							<td>二</td>
							<td>三</td>
							<td>四</td>
							<td>五</td>
							<td>六</td>
						</tr>
					</table>
					<table class="tab-calendar">						
						<tr>
							<td><em>01</em><p>魄罗大战斗<b>已结束</b></p></td>
							<td><em>02</em><p>魄罗大战斗<b>已结束</b></p></td>
							<td><em>03</em><p>魄罗大战斗<b>已结束</b></p></td>
							<td><em>04</em></td>
							<td><em>05</em></td>
							<td><em>06</em><p>魄罗大战斗<b>已结束</b></p></td>
							<td><em>07</em><p>魄罗大战斗<b>已结束</b></p></td>
						</tr>
						<tr>
							<td><em>08</em><p>魄罗大战斗<b>已结束</b></p></td>
							<td><em>09</em><p>魄罗大战斗<b>已结束</b></p></td>
							<td><em>10</em></td>
							<td><em>11</em></td>
							<td><em>12</em></td>
							<td><em>13</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>14</em><p>飞升模式<b>已结束</b></p></td>
						</tr>
						<tr>
							<td><em>15</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>16</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>17</em></td>
							<td><em>18</em></td>
							<td><em>19</em></td>
							<td><em>20</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>21</em><p>飞升模式<b>已结束</b></p></td>
						</tr>
						<tr>
							<td><em>22</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>23</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>24</em></td>
							<td><em>25</em></td>
							<td><em>26</em></td>
							<td><em>27</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>28</em><p>飞升模式<b>已结束</b></p></td>
						</tr>
						<tr>
							<td><em>29</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>30</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>31</em></td>
							<td><em>01</em></td>
							<td><em>02</em></td>
							<td><em>03</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>04</em><p>飞升模式<b>已结束</b></p></td>
						</tr>
					</table>
				</div>
				<!-- END -->
				<!-- 二月 -->
				<div class="calendar">
					<table class="tab-week">
						<tr>
							<td>日</td>
							<td>一</td>
							<td>二</td>
							<td>三</td>
							<td>四</td>
							<td>五</td>
							<td>六</td>
						</tr>
					</table>
					<table class="tab-calendar">						
						<tr>
							<td><em>29</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>30</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>31</em></td>
							<td><em>01</em></td>
							<td><em>02</em></td>
							<td><em>03</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>04</em><p>飞升模式<b>已结束</b></p></td>
						</tr>
						<tr>
							<td><em>05</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>06</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>07</em></td>
							<td><em>08</em></td>
							<td><em>09</em></td>
							<td><em>10</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>11</em><p>飞升模式<b>已结束</b></p></td>
						</tr>
						<tr>
							<td><em>12</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>13</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>14</em></td>
							<td><em>15</em></td>
							<td><em>16</em></td>
							<td><em>17</em><p>血月杀<b>已结束</b></p></td>
							<td><em>18</em><p>血月杀<b>全天已结束</b></p></td>
						</tr>
						<tr>
							<td><em>19</em><p>血月杀<b>全天已结束</b></p></td>
							<td><em>20</em><p>血月杀<b>已结束</b></p></td>
							<td><em>21</em></td>
							<td><em>22</em></td>
							<td><em>23</em></td>
							<td><em>24</em><p>血月杀<b>已结束</b></p></td>
							<td><em>25</em><p>血月杀<b>全天已结束</b></p></td>
						</tr>
						<tr>
							<td><em>26</em><p>血月杀<b>全天已结束</b></p></td>
							<td ><em>27</em><p>血月杀<b>已结束</b></p></td>
							<td><em>28</em></td>
							<td><em>01</em></td>
							<td><em>02</em></td>
							<td><em>03</em></td>
							<td><em>04</em></td>
						</tr>
					</table>
				</div>
				<!-- END -->
				<!-- 三月 -->
				<div class="calendar">
					<table class="tab-week">
						<tr>
							<td>日</td>
							<td>一</td>
							<td>二</td>
							<td>三</td>
							<td>四</td>
							<td>五</td>
							<td>六</td>
						</tr>
					</table>
					<table class="tab-calendar">						
						<tr>
							<td><em>26</em><p>血月杀<b>全天已结束</b></p></td>
							<td><em>27</em><p>血月杀<b>已结束</b></p></td>
							<td><em>28</em></td>
							<td><em>01</em></td>
							<td><em>02</em></td>
							<td><em>03</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>04</em><p>无限乱斗<b>全天已结束</b></p></td>
						</tr>
						<tr>
							<td><em>05</em><p>无限乱斗<b>全天已结束</b></p></td>
							<td><em>06</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>07</em></td>
							<td><em>08</em></td>
							<td><em>09</em></td>
							<td><em>10</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>11</em><p>无限乱斗<b>全天已结束</b></p></td>
						</tr>
						<tr>
							<td><em>12</em><p>无限乱斗<b>全天已结束</b></p></td>
							<td><em>13</em><p>无限乱斗<b>全天已结束</b></p></td>
							<td><em>14</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>15</em></td>
							<td><em>16</em></td>
							<td><em>17</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>18</em><p>飞升模式<b>全天已结束</b></p></td>
						</tr>
						<tr>
							<td><em>19</em><p>飞升模式<b>全天已结束</b></p></td>
							<td><em>20</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>21</em></td>
							<td><em>22</em></td>
							<td><em>23</em></td>
							<td><em>24</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>25</em><p>飞升模式<b>全天已结束</b></p></td>
						</tr>
						<tr>
							<td><em>26</em><p>飞升模式<b>全天已结束</b></p></td>
							<td><em>27</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>28</em></td>
							<td><em>29</em></td>
							<td><em>30</em></td>
							<td><em>31</em><p>飞升模式<b>已结束</b></p></td>
							<!-- <td class="mode mode11">
								<em>01</em>
								<ul>	
									<li>飞升模式<b class="purple_txt">00:00 - 10:00</b></li>
									<li>枢纽攻防战<b class="red_txt">12:00 - 23:59</b></li>
								</ul>
							</td> -->
							<td><em>01</em><p>飞升模式<br>枢纽攻防战<b>已结束</b></p></td>
						</tr>
					</table>
				</div>
				<!-- END -->
				<!-- 四月 -->
				<div class="calendar">
					<table class="tab-week">
						<tr>
							<td>日</td>
							<td>一</td>
							<td>二</td>
							<td>三</td>
							<td>四</td>
							<td>五</td>
							<td>六</td>
						</tr>
					</table>
					<table class="tab-calendar">						
						<tr>
							<td><em>26</em><p>飞升模式<b>全天已结束</b></p></td>
							<td><em>27</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>28</em></td>
							<td><em>29</em></td>
							<td><em>30</em></td>
							<td><em>31</em><p>飞升模式<b>已结束</b></p></td>
							<!-- <td class="mode mode11">								
								<em>01</em>
								<ul>	
									<li>飞升模式<b class="purple_txt">00:00 - 10:00</b></li>
									<li>枢纽攻防战<b class="red_txt">12:00 - 23:59</b></li>
								</ul>
							</td> -->
							<td><em>01</em><p>飞升模式<br>枢纽攻防战<b>已结束</b></p></td>
						</tr>
						<tr>
							<td><em>02</em><p>枢纽攻防战<b>已结束</b></p></td>
							<td><em>03</em><p>枢纽攻防战<b>已结束</b></p></td>
							<td><em>04</em><p>枢纽攻防战<b>已结束</b></p></td>
							<td><em>05</em></td>
							<td><em>06</em></td>
							<td><em>07</em><p>枢纽攻防战<b>已结束</b></p></td>
							<td><em>08</em><p>枢纽攻防战<b>已结束</b></p></td>
						</tr>
						<tr>
							<td><em>09</em><p>枢纽攻防战<b>已结束</b></p></td>
							<td><em>10</em><p>枢纽攻防战<b>已结束</b></p></td>
							<td><em>11</em></td>
							<td><em>12</em></td>
							<td><em>13</em></td>
							<td><em>14</em><p>召唤师峡谷大乱斗<b>已结束</b></p></td>
							<td><em>15</em><p>召唤师峡谷大乱斗<b>全天已结束</b></p></td>
						</tr>
						<tr>
							<td><em>16</em><p>召唤师峡谷大乱斗<b>全天已结束</b></p></td>
							<td><em>17</em><p>召唤师峡谷大乱斗<b>已结束</b></p></td>
							<td><em>18</em></td>
							<td><em>19</em></td>
							<td><em>20</em></td>
							<td><em>21</em><p>召唤师峡谷大乱斗<b>已结束</b></p></td>
							<td><em>22</em><p>召唤师峡谷大乱斗<b>全天已结束</b></p></td>
						</tr>
						<tr>
							<td><em>23</em><p>召唤师峡谷大乱斗<b>全天已结束</b></p></td>
							<td><em>24</em><p>召唤师峡谷大乱斗<b>已结束</b></p></td>
							<td><em>25</em></td>
							<td><em>26</em></td>
							<td><em>27</em></td>
							<td><em>28</em><p>魄罗大乱斗<b>已结束</b></p></td>
							<td><em>29</em><p>魄罗大乱斗<b>已结束</b></p></td>
						</tr>
					</table>
				</div>
				<!-- END -->
				<!-- 五月 -->
				<div class="calendar">
					<table class="tab-week">
						<tr>
							<td>日</td>
							<td>一</td>
							<td>二</td>
							<td>三</td>
							<td>四</td>
							<td>五</td>
							<td>六</td>
						</tr>
					</table>
					<table class="tab-calendar">						
						<tr>
							<td><em>30</em><p>魄罗大乱斗<b>已结束</b></p></td>
							<td><em>01</em><p>魄罗大乱斗<b>已结束</b></p></td>
							<td><em>02</em></td>
							<td><em>03</em></td>
							<td><em>04</em></td>
							<td><em>05</em></td>
							<td><em>06</em></td>
						</tr>
						<tr>
							<td><em>07</em></td>
							<td><em>08</em></td>
							<td><em>09</em></td>
							<td><em>10</em></td>
							<td><em>11</em></td>
							<td><em>12</em><p>死兆星模式<b>已结束</b></p></td>
							<td><em>13</em><p>死兆星模式<b>全天已结束</b></p></td>
						</tr>
						<tr>
							<td><em>14</em><p>死兆星模式<b>全天</b></p></td>
							<td><em>15</em><p>死兆星模式<b>已结束</b></p></td>
							<td><em>16</em></td>
							<td><em>17</em></td>
							<td><em>18</em></td>
							<td><em>19</em><p>死兆星模式<b>已结束</b></p></td>
							<td><em>20</em><p>死兆星模式<b>全天已结束</b></p></td>
						</tr>
						<tr>
							<td><em>21</em><p>死兆星模式<b>全天已结束</b></p></td>
							<td ><em>22</em><p>死兆星模式<b>已结束</b></p></td>
							<td><em>23</em></td>
							<td><em>24</em></td>
							<td><em>25</em></td>
							<td><em>26</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>27</em><p>飞升模式<b>全天已结束</b></p></td>
						</tr>
						<tr>
							<td><em>28</em><p>飞升模式<b>全天已结束</b></p></td>
							<td><em>29</em><p>已结束</p></td>
							<td><em>30</em></td>
							<td><em>31</em></td>
							<td><em>01</em></td>
							<td><em>02</em></td>
							<td><em>03</em></td>
						</tr>
					</table>
				</div>
				<!-- END -->
				<!-- 六月 -->
				<div class="calendar">
					<table class="tab-week">
						<tr>
							<td>日</td>
							<td>一</td>
							<td>二</td>
							<td>三</td>
							<td>四</td>
							<td>五</td>
							<td>六</td>
						</tr>
					</table>
					<table class="tab-calendar">						
						<tr>
							<td><em>28</em></td>
							<td><em>29</em></td>
							<td><em>30</em></td>
							<td><em>31</em></td>
							<td><em>01</em></td>
							<td><em>02</em></td>
							<td><em>03</em></td>
						</tr>
						<tr>
							<td><em>04</em></td>
							<td><em>05</em></td>
							<td><em>06</em><p>末日人机<b>已结束</b></p></td>
							<td><em>07</em><p>末日人机<b>全天已结束</b></p></td>
							<td><em>08</em><p>末日人机<b>全天已结束</b></p></td>
							<td><em>09</em><p>末日人机<b>全天已结束</b></p></td>
							<td><em>10</em><p>末日人机<b>全天已结束</b></p></td>
						</tr>
						<tr>
							<td><em>11</em><p>末日人机<b>全天已结束</b></p></td>
							<td><em>12</em><p>末日人机<b>全天已结束</b></p></td>
							<td><em>13</em><p>末日人机<b>全天已结束</b></p></td>
							<td><em>14</em><p>末日人机<b>全天已结束</b></p></td>
							<td><em>15</em><p>末日人机<b>已结束</b></p></td>
							<td><em>16</em><p>血月杀<b>已结束</b></p></td>
							<td><em>17</em><p>血月杀<b>全天已结束</b></p></td>
						</tr>
						<tr>
							<td><em>18</em><p>血月杀<b>全天已结束</b></p></td>
							<td><em>19</em><p>血月杀<b>已结束</b></p></td>
							<td><em>20</em></td>
							<td><em>21</em></td>
							<td><em>22</em></td>
							<td><em>23</em><p>血月杀<b>已结束</b></p></td>
							<td><em>24</em><p>血月杀<b>全天已结束</b></p></td>
						</tr>
						<tr>
							<td><em>25</em><p>血月杀<b>全天已结束</b></p></td>
							<td><em>26</em><p>血月杀<b>已结束</b></p></td>
							<td><em>27</em></td>
							<td><em>28</em></td>
							<td><em>29</em></td>
							<td><em>30</em><p>血月杀<b>已结束</b></p></td>
							<td><em>01</em><p>血月杀<b>全天已结束</b></p></td>
						</tr>
					</table>
				</div>
				<!-- END -->
				<!-- 七月 -->
				<div class="calendar">
					<table class="tab-week">
						<tr>
							<td>日</td>
							<td>一</td>
							<td>二</td>
							<td>三</td>
							<td>四</td>
							<td>五</td>
							<td>六</td>
						</tr>
					</table>
					<table class="tab-calendar">						
						<tr>
							<td><em>02</em><p>血月杀<b>全天已结束</b></p></td>
							<td><em>03</em><p>血月杀<b>已结束</b></p></td>
							<td><em>04</em></td>
							<td><em>05</em></td>
							<td><em>06</em></td>
							<td><em>07</em><p>魄罗大乱斗<b>已结束</b></p></td>
							<td><em>08</em><p>魄罗大乱斗<b>全天已结束</b></p></td>
						</tr>
						<tr>
							<td><em>9</em><p>魄罗大乱斗<b>全天已结束</b></p></td>
							<td><em>10</em><p>魄罗大乱斗<b>已结束</b></p></td>
							<td><em>11</em></td>
							<td><em>12</em></td>
							<td><em>13</em></td>
							<td ><em>14</em><p>魄罗大乱斗<b>已结束</b></p></td>
							<td><em>15</em><p>魄罗大乱斗<b>全天已结束</b></p></td>
						</tr>
						<tr>
							<td><em>16</em><p>魄罗大乱斗<b>全天已结束</b></p></td>
							<td><em>17</em><p>魄罗大乱斗<b>已结束</b></p></td>
							<td><em>18</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>19</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>20</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>21</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>22</em><p>无限乱斗<b>全天已结束</b></p></td>
						</tr>
						<tr>
						    <td><em>23</em><p>无限乱斗<b>全天已结束</b></p></td>
							<td><em>24</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>25</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>26</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>27</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>28</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>29</em><p>无限乱斗<b>全天已结束</b></p></td>
						</tr>
						<tr>
						    <td><em>30</em><p>无限乱斗<b>全天已结束</b></p></td>
							<td><em>31</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>01</em></td>
							<td><em>02</em></td>
							<td><em>03</em></td>
							<td><em>04</em></td>
							<td><em>05</em></td>
						</tr>
					</table>
				</div>
				<!-- END -->
				<!-- 八月 -->
				<div class="calendar">
					<table class="tab-week">
						<tr>
							<td>日</td>
							<td>一</td>
							<td>二</td>
							<td>三</td>
							<td>四</td>
							<td>五</td>
							<td>六</td>
						</tr>
					</table>
					<table class="tab-calendar">						
						<tr>
							<td><em>30</em></td>
							<td><em>31</em></td>
							<td><em>01</em></td>
							<td><em>02</em></td>
							<td><em>03</em></td>
							<td><em>04</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>05</em><p>飞升模式<b>全天已结束</b></p></td>
						</tr>
						<tr>
							<td><em>06</em><p>飞升模式<b>全天已结束</b></p></td>
							<td ><em>07</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>08</em></td>
							<td><em>09</em></td>
							<td><em>10</em></td>
							<td><em>11</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>12</em><p>飞升模式<b>全天已结束</b></p></td>
						</tr>
						<tr>
							<td><em>13</em><p>飞升模式<b>全天已结束</b></p></td>
							<td><em>14</em><p>飞升模式<b>已结束</b></p></td>
							<td><em>15</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>16</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>17</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>18</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>19</em><p>无限乱斗<b>已结束</b></p></td>
						</tr>
						<tr>
						    <td><em>20</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>21</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>22</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>22</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>23</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>24</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>25</em><p>无限乱斗<b>已结束</b></p></td>
						</tr>
						<tr>
						    <td><em>26</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>27</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>28</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>29</em><p>无限乱斗<b>已结束</b></p></td>
							<td><em>30</em></td>
							<td><em>31</em></td>
							<td><em>01</em></td>
						</tr>
					</table>
				</div>
				<!-- END -->
				<!--9月-->
				<div class="calendar" id="date910">
					 <table class="tab-week">
						<tr>
							<td>日</td>
							<td>一</td>
							<td>二</td>
							<td>三</td>
							<td>四</td>
							<td>五</td>
							<td>六</td>
						</tr>
					</table>
					<table class="tab-calendar">						
						<tr>
							<td><em>27</em></td>
							<td><em>28</em></td>
							<td><em>29</em></td>
							<td><em>30</em></td>
							<td><em>31</em></td>
							<td><em>01</em></td>
							<td><em>02</em></td>
						</tr>
						<tr>
							<td><em>03</em></td>
							<td><em>04</em></td>
							<td><em>05</em></td>
							<td><em>06</em></td>
							<td><em>07</em></td>
							<td><em>08</em><p>怪兽入侵<b>全天已结束</b></p></td>
							<td><em>09</em><p>怪兽入侵<b>全天已结束</b></p></td>
						</tr>
						<tr>
							<td><em>10</em><p>怪兽入侵<b>全天已结束</b></p></td>
							<td><em>11</em><p>怪兽入侵<b>全天已结束</b></p></td>
							<td><em>12</em><p>怪兽入侵<b>全天已结束</b></p></td>
							<td><em>13</em><p>怪兽入侵<b>全天已结束</b></p></td>
							<td><em>14</em><p>怪兽入侵<b>全天已结束</b></p></td>
							<td><em>15</em><p>怪兽入侵<b>全天已结束</b></p></td>
							<td><em>16</em><p>怪兽入侵<b>全天已结束</b></p></td>
						</tr>
						<tr>
						    <td><em>17</em><p>怪兽入侵<b>全天已结束</b></p></td>
							<td><em>18</em><p>怪兽入侵<b>全天已结束</b></p></td>
							<td><em>19</em><p>怪兽入侵<b>全天已结束</b></p></td>
							<td><em>20</em><p>怪兽入侵<b>全天已结束</b></p></td>
							<td><em>21</em><p>怪兽入侵<b>全天已结束</b></p></td>
							<td><em>22</em><p>怪兽入侵<b>全天已结束</b></p></td>
							<td><em>23</em><p>怪兽入侵<b>全天已结束</b></p></td>
						</tr>
						<tr>
						    <td><em>24</em><p>怪兽入侵<b>全天已结束</b></p></td>
							<td><em>25</em><p>怪兽入侵<b>全天已结束</b></p></td>
							<td><em>26</em><p>怪兽入侵<b>全天已结束</b></p></td>
							<td><em>27</em></td>
							<td><em>28</em></td>
							<td><em>29</em><p>枢纽攻防战<b>已结束</b></p></td>
							<td><em>30</em><p>枢纽攻防战<b>全天已结束</b></p></td>
						</tr>
					</table>
				</div>
				END
				10月
				<div class="calendar">
					<table class="tab-week">
						<tr>
							<td>日</td>
							<td>一</td>
							<td>二</td>
							<td>三</td>
							<td>四</td>
							<td>五</td>
							<td>六</td>
						</tr>
					</table>
					<table class="tab-calendar">						
						<tr>
							<td><em>01</em><p>枢纽攻防战<b>全天已结束</b></p></td>
							<td><em>02</em><p>枢纽攻防战<b>已结束</b></p></td>
							<td><em>03</em></td>
							<td><em>04</em></td>
							<td><em>05</em></td>
							<td><em>06</em><p>枢纽攻防战<b>已结束</b></p></td>
							<td><em>07</em><p>枢纽攻防战<b>全天已结束</b></p></td>
						</tr>
						<tr>
							<td><em>08</em><p>枢纽攻防战<b>全天已结束</b></p></td>
							<td><em>09</em><p>枢纽攻防战<b>已结束</b></p></td>
							<td><em>10</em></td>
							<td><em>11</em></td>
							<td><em>12</em></td>
							<td><em>13</em><p>枢纽攻防战<b>已结束</b></p></td>
							<td><em>14</em><p>枢纽攻防战<b>全天已结束</b></p></td>
						</tr>
						<tr>
							<td><em>15</em><p>枢纽攻防战<b>全天已结束</b></p></td>
							<td><em>16</em><p>枢纽攻防战<b>已结束</b></p></td>
							<td><em>17</em></td>
							<td><em>18</em></td>
							<td><em>19</em></td>
							<td><em>20</em><p>死兆星:奇点<b>已结束</b></p></td>
							<td><em>21</em><p>死兆星:奇点<b>全天已结束</b></p></td>
						</tr>
						<tr>
						    <td><em>22</em><p>死兆星:奇点<b>全天已结束</b></p></td>
							<td><em>23</em><p>死兆星:奇点<b>已结束</b></p></td>
							<td><em>24</em></td>
							<td><em>25</em></td>
							<td><em>26</em></td>
							<td class="mode mode16"><em>27</em><p>死兆星:奇点<b>18:00-24:00</b></p></td>
							<td class="mode mode16"><em>28</em><p>死兆星:奇点<b>00:00-24:00</b></p></td>
						</tr>
						<tr>
						    <td class="mode mode16"><em>29</em><p>死兆星:奇点<b>00:00-24:00</b></p></td>
							<td class="mode mode16"><em>30</em><p>死兆星:奇点<b>00:00-10:00</b></p></td>
							<td><em>31</em></td>
							<td><em>01</em></td>
							<td><em>02</em></td>
							<td><em>03</em></td>
							<td><em>04</em></td>
						</tr> 
					</table>
				</div>
				<!--END-->
			</div>
			<p class="cover pa"></p>
		</div>
		<div class="box-tip">
			<p>英雄成就</p>
			温馨提示：在吉格斯的实验室中，所有游戏模式的贡献成就点数都将累计到<em>英雄成就</em>之中！
		</div>
	</div>
</div>
</div>

<div class="pop-video pr" id="pop-video">
    <a class="btn-close pa" href="javascript:hideVideo();" title="关闭">&times;</a>
	<div id="video"></div>
</div>

<!--<div class="float" id="float">
	<div class="slide">
		<p>关注官方微信</p>
		<img width="144" height="144" src="http://ossweb-img.qq.com/images/lol/act/a20160412rgm/qrcode.jpg" alt="二维码" />
		<span>扫描二维码关注英雄联盟官方微信公众号，最新模式订阅功能已上线！</span>
		<a href="http://lol.qq.com/webplat/info/news_version3/152/4579/4580/m3106/201607/490655.shtml" target="_blank">点击查看详情>></a>
	</div>
</div>-->
<script src="./js/lol.js"></script>
<script src="./js/foot.js"></script>
<script src="./js/milo.js"></script>
<script src="./js/ping_tcss_ied.js"></script>
<script src="./js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
/* 
   function ajax(){
     
   $.ajax({
			type:"post",
			url:"model/ajax",
			//data:"page="+page+"&ptype="+ptype+"&lprice="+lprice+"&hprice="+hprice,
			datetype:"json",
			success:function( objstr ){
			//alert(objstr); 	
			var objs =eval("("+objstr+")");
			   var notic=new Array();
			    //notic[i]=obj[i];
			    var yue="";
			    var date="";
				alert(objs.length);
				for(num=0;num<objs.length;num++){   //10
				   alert(num+1+"月");
				    notic[num]=objs[num];
				   alert(notic[num].lolDates);
			       for(i=0;i<notic[num].lolDates.length;i++){    //28 30 31
			                  alert(i+1+"日");
			                  alert("日期"+date);
			                        if(i<10){
							           if(i=0)
								        {
								          if(!(notic[num].lolDates[i].names&&notic[num].lolDates[i].names))
								          {
								          alert("!=null");
								          date+="<tr><td><em>01</em><p>"+notic[num].lolDates[i].names+"<b>"+notic[num].lolDates[i].status+"</b></p></td>"; 
								          //return;
								          }
								          else {
								           alert("=null");
								           date+="<tr><td><em>01</em><p><b></b></p></td>"; 
								           //return;
								           }
								           
								        }
								         else
								        {
								          if(!(notic[num].lolDates[i].names&&notic[num].lolDates[i].names))
								          {
									        date+="<tr><td><em>0"+notic[num].lolDates[i].date1+"</em><p>"+notic[num].lolDates[i].names+"<b>"+notic[num].lolDates[i].status+"</b></p></td>";
									        continue;
								          }
								          else
								          {
									        date+="<tr><td><em>01</em><p><b></b></p></td>"; 
									        continue;
								          }
								        } 
								    }  
								   // alert(date);
								    
								   // return;
							       /*  else
							        {
							           if((i+1)%7==0&&!(i=27)){
							              date+="<td><em>01</em><p>"+notic[num].lolDates[i].names+"<b>"+notic[num].lolDates[i].status+"</b></p></td></tr><tr>"; 
							              }
							           if(i=27){
							             date+="<td><em>01</em><p>"+notic[num].lolDates[i].names+"<b>"+notic[num].lolDates[i].status+"</b></p></td>"+
							                         "<td><em></em></td><td><em></em></td>"+
										              "<td><em></em></td><td><em></em></td>";
							           }   
							            date+="<td><em>01</em><p>"+notic[num].lolDates[i].names+"<b>"+notic[num].lolDates[i].status+"</b></p></td>"; 
							         }    
						    
			               }
			                
			       yue+="<a href='javascript:;'>"+notic[num].id+"</a>";
				}   
                 // alert("月份"+yue);
                 //alert("日期"+date);
				  $("#date910").html(date);
                $("#yue").html(yue);		 
			},
			error:function(){
				alert("失败了");
			}
		});	
 
  
    } */
  
   
</script>
<script src="./js/tvp.player.js"></script>
<script>


//月份切换
var index = 0,
	navI = 9,
//	navW = 430,
	navW = 860,
//	navL = ($(".nav a").length-1)/2;
	navL = $(".nav a").length-1;

//初始化
$(".nav p").css({
	'left': 0-navI*navW+'px'
});
$(".box-calendar .outer").css({
	'left': 0-navI*1000+'px'
});
//点击
$(".box-nav .prev").click(function(){
	navI<=0?navI=0:navI--;
	navGo();
})
$(".box-nav .next").click(function(){
	navI>=navL?navI=navL:navI++;
	navGo();
})
function navGo(){
	if(!$(".nav p").is(":animated")){
	//stop 停止当前动画  创建自定义动画
		$(".nav p").stop(false,false).animate({
//			'left': 0-navI*navW*2+'px'
			'left': 0-navI*navW+'px'
		});
		$(".nav p a").eq(navI).click();
	}
}

//月份点击
$(".nav p a").each(function(i){
	$(this).click(function(){
		if(!$(".box-calendar .outer").is(":animated")){
			index = i;
//			$(this).addClass("on").siblings().removeClass("on");
			$(".box-calendar .outer").stop(false,false).animate({
				'left': 0-index*1000+'px'
			});
		}
	})
})

//侧边栏
var fixE = $("#float");
$(window).bind('scroll.fixed', function() {
	if ($(window).scrollTop() >= 530) {
		fixE.removeClass("float").addClass('fixed');
	} else {
		fixE.removeClass("fixed").addClass('float');
	}
}).trigger('scroll.fixed');

//日历变色
$(".tab-calendar").each(function(i){
	$(".tab-calendar:eq("+i+") td:odd").addClass("odd");
})

//弹窗视频
function TGDialogS(e){
	    need("biz.dialog-min",function(Dialog){
	        Dialog.show({
	            id:e,
	            bgcolor:'#000', //弹出“遮罩”的颜色，格式为"#FF6600"，可修改，默认为"#fff"
	            opacity:70      //弹出“遮罩”的透明度，格式为｛10-100｝，可选
	        });
	    });
	}
	function closeDialog(){
	    need("biz.dialog-min",function(Dialog){
	        Dialog.hide();
	    });
	}
	function playVideo(vid) {
		var video = new tvp.VideoInfo();
		video.setVid(vid);
		var player = new tvp.Player('100%', '100%');
		player.setCurVideo(video);
		player.addParam("autoplay","1");
		player.addParam("wmode","opaque");
		player.addParam("flashskin", "//imgcache.qq.com/minivideo_v1/vd/res/skins/TencentPlayerMiniSkin.swf");
		player.write("video");
	}
	function popVideo(vid) {
		TGDialogS('pop-video')
		playVideo(vid);
	}
	function hideVideo() {
		var flv_s = document.getElementById("video");
		if (flv_s){flv_s.innerHTML= "";}
		closeDialog();
	}


//弹窗
function TGDialogS(e){
	need("biz.dialog-min",function(Dialog){
		Dialog.show({
			id:e,
			bgcolor:'#000', //弹出“遮罩”的颜色，格式为"#FF6600"，可修改，默认为"#fff"
			opacity:50      //弹出“遮罩”的透明度，格式为｛10-100｝，可选
		});
	});
}
function closeDialog(){
	need("biz.dialog-min",function(Dialog){
		Dialog.hide();
	});
}

// 统计
if(typeof(pgvMain) == 'function'){pgvMain();}
</script>
</body>
</html><!--[if !IE]>|xGv00|79d4833fa5c08c0746cddd8149755ea2<![endif]-->