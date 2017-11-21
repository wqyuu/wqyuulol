document.domain = 'qq.com';
var showpop = false;

// add by 996 赛事官网直播间自刷新开发 2017-03-13 5分钟刷新一次
setInterval(function() {
	include("http://lpl.qq.com/web201612/data/LOL_MATCH2_LIVE_BMATCH_LIST.js",function(){
		GAME_LPL_PAGE.Init(true);
	});
}, 60000*5)

// 聊天室初始化
chat.init({
	// obj结构：{nick/*昵称*/,time/*时间戳*/,str/*聊天信息原始串*/,formatStr/*聊天信息格式化串（表情替换及html格式化）*/,barrageStr/*用于传给qt视频播放器的弹幕数据结构*/,isSelf/*是否自己发的消息*/}
	chatMsgCallback : function(obj) {// 聊天广播消息
		addChat(obj);
	},
	errorCallback : function(obj) {// flash出错回调
		var box = $("#chatList");
		box.append('<li>' + obj.msg + '</li>');
	}
});

// 发言按钮
$("#sendmsg").click(function() {
	sendMessage();
});

// 回车发言
$('#speak_msg').keydown(function(e) {
	if (e.keyCode == 13) {
		sendMessage();
	}
});

function sendMessage() {
	need([ "biz.login" ], function(LoginManager) {
		LoginManager.checkLogin(function() {
			var msg = $.trim($("#speak_msg").val());
			if (!msg) {
				return false;
			}
			$("#speak_msg").val("");
			chat.sendChatMsg(msg, function(ret) {
				if (ret.errno != 0) {
					if (ret.errno == 90100) {
						LoginManager.login();
					} else {
						var box = $("#chatList");
						box.append('<li>' + ret.msg + '</li>');
					}
				}
			});
			return false;
		}, function() {
			LoginManager.login();
		});
	});
}

// 聊天室聊天信息添加
function addChat(obj) {
	var box = $("#chatList"), tTimer = null, chat = $("#chatList"), sHtml = '';
	var d = new Date(+obj.time * 1000);
	var date = TOOLS.LinuxTimeToDate(d);
	if (obj.isSelf) {
		sHtml += '<li class="chat-me">';
	} else {
		sHtml += '<li>';
	}
	sHtml += '<span>' + obj.nick + '：</span>' + obj.formatStr + '</li>';
	box.append(sHtml);
	var boxheight = box.height();
	if (boxheight >= 510) {
		chat.css({
			"overflow-y" : "scroll"
		})
	}
	chat.scrollTop(chat[0].scrollHeight);
	// 保留100条聊天记录
	var lis = $("#chatList li");
	if (lis.length > 100) {
		if (navigator.userAgent.indexOf('MSIE') >= 0) {
			lis[0].removeNode(true);
		} else {
			lis[0].remove();
		}
	}
	// qt直播弹幕 ifrVideo是QT播放器的iframe id
	var objVideo = window.ifrVideo && (window.ifrVideo.window || window.ifrVideo.contentWindow);
	if (objVideo) {
		objVideo.AddLiveBarrage(obj.barrageStr);// 视频弹幕
	}
}

var GAME_LPL_PAGE = {
	iLS : 0,// 临时数据,
	dGameTopId : 1,// 16,
	dGameId : 58,// 16,
	dRecommendId : 71,// 一级推荐位ID(一个专题对应一个一级推荐位,2016LPL专题对应1)
	dRecommendCfg : {
		banner : 72, // 横幅广告
		bicpics : 74, // 图集-大图
		midpics : 73, // 图集-竖版中图
		smallpics : 75, // 图集-小图
		titbitpics : 76, // 现场花絮
		sponsorpics : 77,// 赞助商广告
		sidenav:78 // 右侧浮窗广告位
	}, // 推荐配置
	dMatchId : 0,// 如果有直播，当前正在播放的比赛的id，用来控制箭头样式
	dCurVideoTeam : 0,// 视频中心当前战队tab对应的战队id，默认0表示所有
	dPage : 1,// 战队积分榜、选手积分榜分页
	dPageSize : 30,
	dVPage : 1,// 视频中心分页
	dVPageSize : 10,
	dNPage : 1,// 相关资讯分页
	dNPageSize : 8,
	dGameBaseInfo : {},
	dQTLiveId : 764502578,
	dQTReplayId : 764502578,
	dLiveRoomId : 94961178,
	dQTReplayRoomId : 94961178,
	dBMatchUrl : "http://apps.game.qq.com/lol/match/apis/searchBMatchInfo.php",
	dPreUrl : "http://lpl.qq.com/web201612/data/",
	dNewsUrl : "http://apps.game.qq.com/lol/match/apis/searchNewsInfo.php",
	dTeamMemUrl : "http://apps.game.qq.com/lol/match/apis/searchTeamMembers.php",// 战队队员
	dGameProcUrl : "http://apps.game.qq.com/lol/match/apis/searchGameProc.php",// 比赛赛程进度(第一周、第二周等等)
	dLivePage : "http://lpl.qq.com/es/live.shtml",// 直播页面
	dBMatchExtsUrl : "http://apps.game.qq.com/lol/match/apis/searchBMatchInfo_Exts.php",
	dGameTmplUrl : "http://apps.game.qq.com/lol/match/apis/searchGameTmplData.php",
	dQTReplyUrl : 'http://qt.qq.com/php_cgi/qt_tv/php/varcache_get_lol_live_schedule_for_lol.php',
	dNoLive : true,// 当前页面是否已经有直播，true没有
	dHaveLive : false,// 全部赛程中是否有正在进行中的比赛，通过这个控制聊天室是否开启
	dReply : false,// 是否开启回放 9月23日之前都播回放库
	dLiveNum : 1,// 当前正在直播的赛程属于当前tab第几个,默认显示第一页(比赛赛程)
	dCurrNum : 1,// 靠近当前时间的赛程属于当前tab第几个,默认显示第一页(比赛赛程)
	dcurrBMatchId : 0,// 静态赛程proc数据返回的靠近当前时间的赛事id
	dcurrBMatchInfo : false,
	dLoadCurrBMatchFlag : false,
	dLiveFlag : 0,// 静态赛程proc数据返回的是否有正在直播的赛程的标志，1-有
	dDefaultGameType : 1,// 默认展示的赛事类型(如果后台没有设置，默认展示排在第一的赛事类型，例如常规赛)
	dDefaultChat : 101,// 默认展示形式(110-列表)
	dMvpList : [],// MVP列表
	dTicketUrl : '//lpl.qq.com/web201612/data/LOLTicketInfoAll.js', // 售票
	dVodCateId : 0,
	dVodFirstLoad:true,
	dShow2017 : true,
	dRefreshFlag : 0, // 刷新标识 0 初始状态， 1 刷新前为直播，2 刷新前为点播
						// 5分钟刷新一次逻辑修改为：直播时刷新，刷新前后均为点播不刷新，前点播后直播/前直播后点播刷新

	Init : function(refreshFlag) {
		var self = GAME_LPL_PAGE;
		

		var callBackFunction = function(refreshFlag){
			self.InitRecommendNews();// 广告推荐
			self.InitTicketInfo(); // 售票信息初始化
			self.InitHeroBPBoard();// 英雄B/P榜-----------
			self.InitPersonalrankInfo(9,"19,18");// 个人排行榜
			self.InitGameBaseInfo();// 赛事基础信息（包括赛事结果、赛事信息、赛事奖金、参赛队伍、场地信息）
			self.InitLive(); // 判断是直播还是点播
			if(refreshFlag){
				if(!self.dNoLive){
					//直播中 刷新赛程
					self.dRefreshFlag = 1; // 更新刷新表示为直播中状态
					self.InitGameType();// 初始化比赛赛程和比赛进度两个地方的比赛类型tab
				}else if(self.dNoLive && self.dRefreshFlag == 1){
					//刷新前为直播， 刷新后为点播， 刷新赛程
					self.dRefreshFlag = 2; // 更新刷新表示为点播状态
					self.InitGameType();// 初始化比赛赛程和比赛进度两个地方的比赛类型tab
				}else{
					//其他状态不刷新
				}
			}else{
				self.InitGameType();// 初始化比赛赛程和比赛进度两个地方的比赛类型tab				
			}
			self.InitVideoList(0);// 视频中心 参数为分类，0表示"所有"
		}
		self.InitCurrBMatchInfo(callBackFunction);
	},
	
	InitCurrBMatchInfo : function(callBackFunction){
		var self = GAME_LPL_PAGE;
		var goUrl = self.dPreUrl + 'LOL_MATCH2_MATCH_HOMEPAGE_BMATCH_LIST.js';
		$.getJSON(goUrl,function(data){
			if(data.status == 0){
				var matchList = data.msg;
				var start =  matchList.length-1;
				for(var i = start; i>=0; i--){
					if(+matchList[i]['MatchStatus'] == 3){
						self.dcurrBMatchId = matchList[i]['bMatchId'];
						self.dcurrBMatchInfo = matchList[i];
						break;
					}
				}
				if(typeof(callBackFunction) == 'function'){
					callBackFunction();
				}
			}
		})
	},

	// 资讯推荐位
	InitRecommendNews : function() {
		var self = GAME_LPL_PAGE;
		var goUrl = "http://lpl.qq.com/web201612/data/LOL_MATCH2_NEWS_RECOMMEND_" + self.dRecommendId + "_INFO.js";
		var sHtml = "";
		var idx = 0;
		$.getJSON(goUrl, function(data) {
			if (data.status == 0) {
				// 横幅广告
				var bannerAds = data.msg[self.dRecommendCfg.banner];
				for ( var i = 0; i < bannerAds.length; i++) {
					var banner = bannerAds[i];
					var position = banner.iPosition;
					$('#banner_ad_' + position).attr('href', banner.sUrl);
					$('#banner_ad_' + position).html('<img src="' + banner.sIMG + '" class="advt" width="1240" height="130">');
				}
				$('#banner_ad_1').html($('#banner_ad_1').html() + '<span>倒计时：<b>10</b> 秒</span>');

				// 图集
				var _tmpAds = {};
				var bigPics = data.msg[self.dRecommendCfg.bicpics];
				var smallPics = data.msg[self.dRecommendCfg.smallpics];
				var midPics = data.msg[self.dRecommendCfg.midpics];

				if (bigPics[0]) {
					_tmpAds['4'] = '<a href="' + bigPics[0]['sUrl'] + '" target="_blank" class="type3" onclick="pgvSendClick({hottag:\'a20170906s7.index.btn.midad4\',\'virtualDomain\':\'lol.qq.com\'})"><img src="' + bigPics[0]['sIMG'] + '" width="421" height="317"><span class="hover"><em>' + bigPics[0]['sTitle'] + '</em><i class="icon-column-enter"></i></span><i class="m-lines"><i class="line line1"></i><i class="line line2"></i><i class="line line3"></i><i class="line line4"></i></i></a>';
					;
				}
				for ( var i = 0; i < smallPics.length; i++) {
					var index = 0;
					switch (smallPics[i]['iPosition']) {
						case '1':
							index = 2;
							break;
						case '2':
							index = 3;
							break;
						case '3':
							index = 5;
							break;
						case '4':
							index = 6;
							break;
					}
					_tmpAds[index] = '<a href="' + smallPics[i]['sUrl'] + '" target="_blank" class="type2" onclick="pgvSendClick({hottag:\'a20170906s7.index.btn.midad' + index + '\',\'virtualDomain\':\'lol.qq.com\'})"><img src="' + smallPics[i]['sIMG'] + '" width="195" height="150"><span class="hover"><em>' + smallPics[i]['sTitle'] + '</em><i class="icon-column-enter"></i></span><i class="m-lines"><i class="line line1"></i><i class="line line2"></i><i class="line line3"></i><i class="line line4"></i></i></a>';
				}
				for ( var i = 0; i < midPics.length; i++) {
					var index = 0;
					switch (midPics[i]['iPosition']) {
						case '1':
							index = 1;
							_tmpAds['1'] = midPics[i];
							break;
						case '2':
							index = 7;
							_tmpAds['7'] = midPics[i];
							break;
					}
					_tmpAds[index] = '<a href="' + midPics[i]['sUrl'] + '" target="_blank" class="type1" onclick="pgvSendClick({hottag:\'a20170906s7.index.btn.midad' + index + '\',\'virtualDomain\':\'lol.qq.com\'})"><img src="' + midPics[i]['sIMG'] + '" width="186" height="317"><span class="hover"><em>' + midPics[i]['sTitle'] + '</em><i class="icon-column-enter"></i></span><i class="m-lines"><i class="line line1"></i><i class="line line2"></i><i class="line line3"></i><i class="line line4"></i></i></a>';
				}
				var sHtml = '';
				sHtml += '<li>'+_tmpAds[1]+'</li>' + '<li>'+_tmpAds[2]+_tmpAds[3]+'</li>' +  '<li>'+_tmpAds[4]+'</li>' + '<li>'+_tmpAds[5]+_tmpAds[6]+'</li>' +  '<li>'+_tmpAds[7]+'</li>';
				$('#mid_ad_container').html(sHtml);

				// 现场花絮
				var titbitsAds = data.msg[self.dRecommendCfg.titbitpics];
				var sHtml = '';
				titbitsAds.sort(function(a, b) {
					return a.iPosition - b.iPosition;
				});
				for ( var i = 0; i < titbitsAds.length; i++) {
					var titbit = titbitsAds[i];
					sHtml += '<li class="swiper-no-swiping swiper-slide">';
					sHtml += '<div class="swiper-inner-con">';
					sHtml += '<img src="' + titbit.sIMG + '">';
					sHtml += '<div class="m-scene-title"><p>' + titbit.sTitle + '</p></div>';
					sHtml += '<a href="' + titbit.sUrl + '" class="mask-href" target="_blank"></a>';
					sHtml += '</div>';
					sHtml += '</li>';
				}
				$('#titbitsAdContainer').html(sHtml);
				cimi.initTitbitsAd();

				// 赞助商广告位
				var sponsorAds = data.msg[self.dRecommendCfg.sponsorpics];
				var sHtml = '';
				sponsorAds.sort(function(a, b) {
					return a.iPosition - b.iPosition;
				})
				for ( var i = 0; i < sponsorAds.length; i++) {
					var sponsor = sponsorAds[i];
					if(sponsor.sUrl=='javascript:'){						
						sHtml += '<li><a href="'+sponsor.sUrl+'"><img src="' + sponsor.sIMG + '"></a></li>';
					}else{						
						sHtml += '<li><a href="'+sponsor.sUrl+'" target="_blank"><img src="' + sponsor.sIMG + '"></a></li>';
					}
				}
				$('#sponsorAdsContainer').html(sHtml);
				
				// 右侧浮窗广告位
				var sideAds = data.msg[self.dRecommendCfg.sidenav];
				if(sideAds){
					$('#ad_s7_sidenav').attr('href', sideAds[0].sUrl);
					$('#ad_s7_sidenav').html('<img src="' + sideAds[0].sIMG + '" width="167" height="59" class="nav-ad" >');
				}
			}
		});
	},

	// 售票初始化
	InitTicketInfo : function() {
		var self = GAME_LPL_PAGE;
		var ticketArr = {
			'6' : '125295',
			'7' : '125272',
			'8' : '125289'
		}

		getAllTicketInfoDetail().then(function(dTicketList) {
			var now = new Date().getTime();
			for ( var i in dTicketList) {
				var ticket = dTicketList[i];
				for ( var k in ticketArr) {
					if (k == ticket['iTicketId']) {
						var ticketStartTime = new Date(ticket.dtBeginTime.replace(new RegExp('-', 'g'), '/')).getTime();
						var ticketEndTime = new Date(ticket.dtEndTime.replace(new RegExp('-', 'g'), '/')).getTime();
						if (ticketStartTime <= now && ticketEndTime >= now) {
							if (ticket.canBuy) {
								$('#ticket_btn_' + ticket['iTicketId']).addClass('hot').removeClass('comming').html('门票热卖中').attr('href','http://lpl.qq.com/es/ticket.shtml?iTicketId='+k).attr('target','_blank');
							} else {
								$('#ticket_btn_' + ticket['iTicketId']).addClass('sellout').removeClass('comming').html('门票已售罄');
							}
						}else if (ticketEndTime < now){
                          $('#ticket_btn_' + ticket['iTicketId']).addClass('sellout').removeClass('comming').html('门票已售罄');   
                 }
					}
				}
			}
			
		
			
		})
	},

	// 赛事基础信息
	InitGameBaseInfo : function() {
		var self = GAME_LPL_PAGE;
		var goUrl = self.dPreUrl + 'LOL_MATCH2_GAME_GAME' + self.dGameId + '_INFO.js';
		$.getJSON(goUrl, function(data) {
			if (data.status == 0) {
				self.dGameBaseInfo = data.msg;
				// 赛事基本信息
				// self.FillGameBaseInfoHtml();
				// 赛事奖金
				// self.FillGameAwardInfoHtml();
				// 参赛队伍
				self.FillGameTeamHtml();
				// 视频中心之战队导航条
				// self.InitVideoTeamBar();
			}
		});
	},
	
	// 视频中心
	InitVideoList : function(sCateId) {
		var self = GAME_LPL_PAGE;
		if(+sCateId==0){
			var goUrl = self.dPreUrl + 'LOL_NEWMATCH_S7PAGE_LATEST_VIDEOS_LIST.js';
		}else{
			var goUrl = self.dPreUrl + 'LOL_NEWMATCH_S7PAGE_MATCHCATE_'+sCateId+'_VIDEOS_LIST.js';			
		}
		var sHtml = '';
		// 控制战队tab样式
		$.getScript(goUrl, function() {
			var VideosList = window['VideoInfo_' + sCateId];
			if (VideosList.status == 0) {
				var data = VideosList.msg;
				for ( var x in data) {
					if(x == 'forEach' || x=='reduce' || x=='indexOf'){
						continue;
					}
					var videoInfo = jQuery.parseJSON(data[x].sExt1);
					var min = Math.floor(+videoInfo.iTime / 60);
					if(min.toString().length<2){
						min = '0'+min.toString();
					}
					var sec = +videoInfo.iTime % 60;
					if(sec.toString().length<2){
						sec = '0'+sec.toString();
					}
					sHtml += '<li><img  src="' + videoInfo.sImg + '" ><i class="gradient-mask"></i><span class="u-video-time">' + min + ':' + sec + '</span><i class="m-video-mask"></i>';
					sHtml += '<div class="m-lines"><i class="line line1"></i><i class="line line2"></i><i class="line line3"></i><i class="line line4"></i></div>';
					sHtml += '<p>'+ videoInfo.sName+'</p><div class="m-video-info"><span>播放量 <a>'+videoInfo.iTotal+'</a></span><a>'+TOOLS.ReloadPubdate(data[x].indexDate)+'</a></div>';
					sHtml += '<a href="http://lpl.qq.com/es/video_detail.shtml?nid=' + data[x].NewsId + '" onclick="PUBLIC_FUNCTION.VideosClickLogUp(' + data[x].NewsId + ');"  target="_blank" class="mask-href"></a></li>';
				}
				$("#list_content_v").html(sHtml);
				$("#video_tab_" + sCateId).addClass('selected').siblings().removeClass('selected');
			} else {
				alert('查询暂无数据');
			}
		});
	},

	// 比赛赛程和比赛进度两个地方的比赛类型tab
	InitGameType : function() {
		var self = GAME_LPL_PAGE;
		var goUrl = "http://lpl.qq.com/web201612/data/LOL_MATCH2_GAME_" + self.dGameId + "_GAMETYPE_INFO.js";
		var sHtml = "";
		var sHtml2 = "";
		if(self.dShow2017){			
			$('.fullview-2017 .stage-type').html('<a class="on" href="javascript:GAME_LPL_PAGE.alert(\'敬请期待\');" id="game_type4_28">入围赛</a><a href="javascript:alert(\'敬请期待\');" id="game_type4_19">小组赛</a><a href="javascript:alert(\'敬请期待\');" id="game_type4_18">淘汰赛</a>');
			$('.fullview-2017 .day-type').remove();
			$('.vod-type span.comming').hide();
			$(".mv-vod-2017").html('');
		}
		$.getScript(goUrl, function() {
if (GameTypeList.status == 0) {				
var data = GameTypeList.msg;
				if (data) {
					self.dDefaultGameType = +data[0].GameTypeId;
					self.dDefaultChat = +data[0].ChartId;
					for ( var x in data) {
						var info = data[x];
						if (+info.iDefault == 1) {
							self.dDefaultGameType = +info.GameTypeId;
							self.dDefaultChat = +info.ChartId;
						}
						// 开放
						if (+info.iOpen == 1) {
							$('#game_type1_' + info.GameTypeId).attr('href', 'javascript:GAME_LPL_PAGE.InitGameSchedule1(' + info.GameTypeId + ',' + info.ChartId + ');')
							$('#game_type2_' + info.GameTypeId).attr('href', 'javascript:GAME_LPL_PAGE.InitGameSchedule1(' + info.GameTypeId + ',' + info.ChartId + ');')
							$('#game_type3_' + info.GameTypeId).attr('href', 'javascript:GAME_LPL_PAGE.InitGameSchedule2(' + info.GameTypeId + ',' + info.ChartId + ');')
							if(self.dShow2017){								
								$('#game_type4_' + info.GameTypeId).attr('href','javascript:;').attr('onclick', 'javascript:GAME_LPL_PAGE.ShowView2017List(' + info.GameTypeId + ');')
							}
						}
					}
				}
			}
			self.InitGameSchedule1(self.dDefaultGameType, self.dDefaultChat);// 比赛赛程
			self.InitGameSchedule2(self.dDefaultGameType, self.dDefaultChat);// 比赛进度
			if(self.dShow2017){				
				$('.vod-type a').eq(1).bind('click',function(){					
					self.ShowView2017List(self.dDefaultGameType,true);
				})
			}
		});
	},

	// 比赛赛程模块数据展示入口函数
	// chatid 赛事模板ID 101表示列表
	InitGameSchedule1 : function(gameType, chatid,viewFlag) {
		var self = GAME_LPL_PAGE;
		var goUrl = "http://lpl.qq.com/web201612/data/LOL_MATCH2_GAME_" + self.dGameId + "_PROC_INFO_NEW.js";
		if(viewFlag){
			$("[id^=game_type4_]").removeClass('on');			
			$("#game_type4_" + gameType).addClass('on');
		}else{			
			$("[id^=game_type1_]").removeClass('on');
			$("#game_type1_" + gameType).addClass('on');
			$("[id^=game_type2_]").removeClass('on');
			$("#game_type2_" + gameType).addClass('on');
		}
		$.getScript(goUrl, function() {
			if (GameProcList.status == 0) {
				var returnObj = GameProcList['msg'][+gameType];
				var data = returnObj.data;
				if (data) {
					if(viewFlag){						
						self.ShowBMatchsByList(gameType, returnObj, 3);
					}else{						
						self.ShowBMatchsByList(gameType, returnObj, 1);
					}
					return;
				}
			}
			// 比赛赛程
			$("#game_proc_bar").html('');
			$("#matchList").html('');
		});
	},

	// 比赛进度模块数据展示入口函数
	// chatid 赛事模板ID 101表示列表
	InitGameSchedule2 : function(gameType, chatid) {
		var self = GAME_LPL_PAGE;
		var goUrl = "http://lpl.qq.com/web201612/data/LOL_MATCH2_GAME_" + self.dGameId + "_PROC_INFO_NEW.js";
		$("[id^=game_type3_]").removeClass('selected');
		$("#game_type3_" + gameType).addClass('selected');
		// 根据赛制模板类型渲染数据
		switch (chatid) {
			// 列表
			case 101:
				$.getScript(goUrl, function() {
					if (GameProcList.status == 0) {
						var returnObj = GameProcList['msg'][+gameType];
						var data = returnObj.data;
						if (data) {
							var scoreHtml = '<a href="javascript:GAME_LPL_PAGE.InitTeamScoreBoard('+gameType+',0)" class="selected">A组</a>';
							scoreHtml += '<a href="javascript:GAME_LPL_PAGE.InitTeamScoreBoard('+gameType+',1)" >B组</a>';
							scoreHtml += '<a href="javascript:GAME_LPL_PAGE.InitTeamScoreBoard('+gameType+',2)" >C组</a>';
							scoreHtml += '<a href="javascript:GAME_LPL_PAGE.InitTeamScoreBoard('+gameType+',3)" >D组</a>';
							$('#game_type_xz .score-filter').html(scoreHtml);
							self.InitTeamScoreBoard(gameType,0);// 战队积分榜----------
							self.ShowBMatchsByList(gameType, returnObj, 2);
							return;
						}
					}
					// 赛事进度
					$("#game_proc_bar_2").html('');
					$("#list_content").html('');
					$("#list_content li").eq(0).addClass("ntb");
				});
				break;
			// 入围赛选拔赛模板展示
			case 15:
				self.InitTeamScoreBoard02(gameType);// 战队积分榜----------
				self.ShowBMatchsByTmpl15(gameType);
				break;
			case 2:
				// 八强单败没有季军赛
				self.ShowBMatchsByTmpl02(gameType);
				break;
		}
	},

	// 列表形式展示赛程
	// 比赛赛程和赛事进度模块数据展示：进度tab+如果有正在进行中的赛事切换到正在进行中赛事对应的进度tab，否则展示第一个tab的大场列表(例如第一周的大场列表)
	// flag=1表示比赛赛程模块、flag=2表示比赛进度模块
	ShowBMatchsByList : function(gameType, returnObj, flag) {
		var self = GAME_LPL_PAGE;
		var data = returnObj.data;
		var sHtml = "";
		var sHtml2 = "";
		var sHtml3 = "";
		var sHtml4 = '<div class="group-swiper"><div class="swiper-wrapper">';
		var gameProcId = 0;
		for ( var x in data) {
			if(x == 'forEach' || x=='reduce' || x=='indexOf'){
				continue;
			}
			sHtml += '<a id="process_1_' + data[x].GameProcId + '" href="javascript:GAME_LPL_PAGE.ShowGameScheduleList(' + gameType + ',' + data[x].GameProcId + ');">' + data[x].GameProcName + '</a>';
			sHtml2 += '<a id="process_2_' + data[x].GameProcId + '" href="javascript:GAME_LPL_PAGE.ShowGameScheduleList2(' + gameType + ',' + data[x].GameProcId + ');">' + data[x].GameProcName + '</a>';
			sHtml3 += '<a id="process_3_' + data[x].GameProcId + '" href="javascript:GAME_LPL_PAGE.ShowView2017List(' + gameType + ',' + data[x].GameProcId + ');">' + data[x].GameProcName + '</a>';
			sHtml4 += '<a id="process_4_' + data[x].GameProcId + '" class="swiper-slide" href="javascript:GAME_LPL_PAGE.ShowGameProcList(' + gameType + ',' + data[x].GameProcId + ');">' + data[x].GameProcName + '</a>';
		}
		sHtml4 += '</div></div>';
		if (+returnObj.liveFlag == 1) {
			gameProcId = data[+returnObj.liveNo].GameProcId;
		} else {
			if(self.dcurrBMatchInfo && self.dcurrBMatchInfo.GameTypeId == gameType){				
				gameProcId = self.dcurrBMatchInfo.GameProcId
			}else{
				gameProcId = data[+returnObj.currNo].GameProcId;
			}
		}
		switch (flag) {
			case 1:
				// 比赛赛程
				$("#day-type-1").html(sHtml);
				$("#day-type-2").html(sHtml2);
				if (self.dNoLive) {
					// 无直播
					self.ShowGameScheduleList2(gameType, gameProcId);// 比赛赛程
				} else {
					// 有直播
					self.ShowGameScheduleList(gameType, gameProcId);// 比赛赛程
				}
				break;
			case 2:
				// 赛事进度
				$("#game_type_xz .group-date-list").html(sHtml4);
				cimi.initZXSwiper();
				self.ShowGameProcList(gameType, gameProcId);// 比赛进度
				$("#game_type_rw").hide();
				$("#game_type_tt").hide();
				$("#game_type_xz").show();
				break;
			case 3:
				// 比赛赛程
				$(".fullview-2017 .day-type").html(sHtml3);
				self.ShowView2017List(gameType, gameProcId);
				break;
			default:
				// 比赛赛程
				$("#game_proc_bar").html(sHtml);
				// 赛事进度
				$("#game_proc_bar_2").html(sHtml2);
				self.ShowGameScheduleList(gameType, gameProcId);// 比赛赛程
				self.ShowGameProcList(gameType, gameProcId);// 比赛进度
				break;
		}
		// 方法定义在common.js里面
		tabSlide("match-week-wrap", "game_proc_bar_2", "schedule_date_left", "schedule_date_right", 85, 595, 7, 1);
	},
	
	ShowView2017List : function(gameType,firstFlag){
		var self = GAME_LPL_PAGE;		
		var sHtml = '';
		var goUrl = self.dPreUrl + 'LOL_NEWMATCH_S7PAGE_ALL_VIDEOS_LIST.js';
		// 控制战队tab样式
		$.getScript(goUrl, function() {
			if (VideoInfo.status == 0) {
				var data = VideoInfo.msg;
				var index = 1;
				switch(+gameType) {
					case 28:
						index = 1;
						break;
					case 19:
						index = 2;
						break;
					case 18:
						index = 3;
						break;
				}
				for ( var x in data) {
					if(x == 'forEach' || x=='reduce' || x=='indexOf'){
						continue;
					}
					if(+data[x]['sMatchNote'] != index){
						continue;
					}
					var videoInfo = jQuery.parseJSON(data[x].sExt1);
					var min = Math.floor(+videoInfo.iTime / 60);
					if(min.toString().length<2){
						min = '0'+min.toString();
					}
					var sec = +videoInfo.iTime % 60;
					if(sec.toString().length<2){
						sec = '0'+sec.toString();
					}
					sHtml += '<li>';
					sHtml += '<div class="pic"><img  src="' + videoInfo.sImg + '" height="110" width="190"><span>' + min + ':' + sec + '</span></div>';
					sHtml += '<div class="info"><p>'+ videoInfo.sName+'</p><div class="ststus"><div class="count fl">播放量 '+videoInfo.iTotal+'</div><div class="time fr">'+TOOLS.ReloadPubdate(data[x].indexDate)+'</div></div></div>';
					sHtml += '<a href="javascript:;" onclick="GAME_LPL_PAGE.ShowVideo(\''+ videoInfo.sVID+'\', \''+ videoInfo.sName+'\');"></a>';
					sHtml += '</li>';
				}
				if(sHtml == ''){
					if(firstFlag ){
						$('.fullview-2017 .stage-type a').eq(0).trigger('click');
					}else{						
						alert('敬请期待');
					}
						
					return ;
				}
				$(".mv-vod-2017").html(sHtml);
				//$(".mv-vod-2017 a").eq(0).trigger('click');
				$('#game_type4_'+gameType).addClass('on').siblings().removeClass('on');
			} else {
				alert('敬请期待');
			}
		});
		
	},
	
	// 入围赛模板展示
	ShowBMatchsByTmpl15 : function(gameType, flag) {
		var self = GAME_LPL_PAGE;
		var goUrl = self.dGameTmplUrl + '?p0=' + self.dGameId + '&p1=' + gameType + '&r1=GameTmplData';
		var teamList = TeamList.msg;
		var sHtml = '';
		var sHtml2 = '';
		var sHtmlArr = [];
		var sTeamHtmlArr = [];
		$.getScript(goUrl, function() {
			if (GameTmplData.status == 0) {
				var data = jQuery.parseJSON(GameTmplData.msg.ChartData);
				if (data) {
					for ( var x in data) {
						var matchobj = data[x];
						switch (x) {
							case '1':
								if (+matchobj[0].GameId != 0) {
									sHtmlArr[0] = self.ReturnTmpl01Element(matchobj[0], 1);
								} else {
									sHtmlArr[0] = '';
								}
								if (+matchobj[1].GameId != 0) {
									sHtmlArr[1] = self.ReturnTmpl01Element(matchobj[1], 2);
								} else {
									sHtmlArr[1] = '';
								}
								if (+matchobj[2].GameId != 0) {
									sHtmlArr[2] = self.ReturnTmpl01Element(matchobj[2], 3);
								} else {
									sHtmlArr[2] = '';
								}
								if (+matchobj[3].GameId != 0) {
									sHtmlArr[3] = self.ReturnTmpl01Element(matchobj[3], 4);
								} else {
									sHtmlArr[3] = '';
								}
								break;
						}
					}
					sHtml2 = '<li>' + sHtmlArr[0] + '</li>';
					sHtml2 += '<li>' + sHtmlArr[1] + '</li>';
					sHtml2 += '<li>' + sHtmlArr[2] +'</li>';
					sHtml2 += '<li>' + sHtmlArr[3] + '</li>';
					$("#against_list_rw").html(sHtml2);
					// 隐藏常规赛/升降级赛，显示季后赛
					$("#game_type_xz").hide();
					$("#game_type_tt").hide();
					$("#game_type_rw").show();
				}
			}
			// 赛事进度
			$("#game_proc_bar_2").html('');
			$("#list_content").html('');
			$("#list_content li").eq(0).addClass("ntb");
		});
	},
	
	ShowBMatchsByTmpl02 : function (gameType, flag){
		var self = GAME_LPL_PAGE;
		if(self.iLS == 1){
			var goUrl = self.dGameTmplUrl + '?p0=30&p1=' + gameType + '&r1=GameTmplData';
		}else{
			var goUrl = self.dGameTmplUrl + '?p0=' + self.dGameId + '&p1=' + gameType + '&r1=GameTmplData';			
		}
		var teamList = TeamList.msg;
		$.getScript(goUrl, function() {
			if (GameTmplData.status == 0) {
				var data = $.parseJSON(GameTmplData.msg.ChartData);
				if (data) {
					for ( var x in data) {
						var sHtmlArr = [];
						var sHtml = '';
						var matchobj = data[x];
						switch (x) {
							case '1':
								if (+matchobj[0].GameId != 0) {
									sHtmlArr.push(self.ReturnTmpl02Element(matchobj[0], 0));
								} else {
									sHtmlArr.push('');
								}
								if (+matchobj[1].GameId != 0) {
									sHtmlArr.push(self.ReturnTmpl02Element(matchobj[1], 1));
								} else {
									sHtmlArr.push('');
								}
								if (+matchobj[2].GameId != 0) {
									sHtmlArr.push(self.ReturnTmpl02Element(matchobj[2], 2));
								} else {
									sHtmlArr.push('');
								}
								if (+matchobj[3].GameId != 0) {
									sHtmlArr.push( self.ReturnTmpl02Element(matchobj[3], 3));
								} else {
									sHtmlArr.push('');
								}
								for(var i in sHtmlArr){
									sHtml += sHtmlArr[i];
								}
								$(".quarter-knockout .team-vs-list").html(sHtml);
								break;
							case '2':
								if (+matchobj[0].GameId != 0) {
									sHtmlArr.push(self.ReturnTmpl02Element(matchobj[0], 4));
								} else {
									sHtmlArr.push('<li><div class="team-vs"><a href="javascript:;" class="grid up"><i class="left"></i><b class="name"><img src="http://img.crawler.qq.com/lolwebvideo/20170620114728/5e53efcb0c7136b51d44c781f38e8205/0">待定</b><span class="right">0</span></a><a href="javascript:;" class="grid down"><i class="left"></i><b class="name"><img src="http://img.crawler.qq.com/lolwebvideo/20170620114728/5e53efcb0c7136b51d44c781f38e8205/0">待定</b><span class="right">0</span></a><p class="time"></p></div></li>');
								}
								if (+matchobj[1].GameId != 0) {
									sHtmlArr.push( self.ReturnTmpl02Element(matchobj[1], 5));
								} else {
									sHtmlArr.push('<li><div class="team-vs"><a href="javascript:;" class="grid up"><i class="left"></i><b class="name"><img src="http://img.crawler.qq.com/lolwebvideo/20170620114728/5e53efcb0c7136b51d44c781f38e8205/0">待定</b><span class="right">0</span></a><a href="javascript:;" class="grid down"><i class="left"></i><b class="name"><img src="http://img.crawler.qq.com/lolwebvideo/20170620114728/5e53efcb0c7136b51d44c781f38e8205/0">待定</b><span class="right">0</span></a><p class="time"></p></div></li>');
								}
								for(var i in sHtmlArr){
									sHtml += sHtmlArr[i];
								}
								$(".quarter-final .team-vs-list").html(sHtml);
								break;
							case '3':
								if (+matchobj[0].GameId != 0) {
									sHtmlArr.push(self.ReturnTmpl02Element(matchobj[0], 6));
								} else {
									sHtmlArr.push('<li><div class="team-vs"><a href="javascript:;" class="grid up"><i class="left"></i><b class="name"><img src="http://img.crawler.qq.com/lolwebvideo/20170620114728/5e53efcb0c7136b51d44c781f38e8205/0">待定</b><span class="right">0</span></a><a href="javascript:;" class="grid down"><i class="left"></i><b class="name"><img src="http://img.crawler.qq.com/lolwebvideo/20170620114728/5e53efcb0c7136b51d44c781f38e8205/0">待定</b><span class="right">0</span></a><p class="time"></p></div></li>');
								}
								$(".final .team-vs-list").html(sHtmlArr[0]);
								break;
						}
					}
					// 显示淘汰赛 隐藏入围赛/小组赛
					$("#game_type_xz").hide();
					$("#game_type_rw").hide();
					$("#game_type_tt").show();
				}
			}
		})
	},
	
	ReturnTmpl01Element : function(data, id) {
		var self = GAME_LPL_PAGE;
		var teamList = TeamList.msg;
		var sHtml = '';
		var teamAHtml = '';
		var teamBHtml = '';
		var winHtml = '';
		var sHtmlHeader = '';
		var videoHtml = '';
		var index = '一';
		switch(id){
			case 1:
				index = '一';
				break;
			case 2:
				index = '二';
				break;
			case 3:
				index = '三';
				break;
			case 4:
				index = '四';
				break;
		}
		// 胜负样式的区分
		if (+data.MatchStatus == 3 && +data.MatchWin == 1) {
			if(+data.TeamA == 85){				
				teamAHtml = '<a  href="javascript:;" class="grid up win">';
			}else{				
				teamAHtml = '<a href="http://lpl.qq.com/es/team_detail.shtml?tid='+data.TeamA+'" target="_blank" class="grid up win">';
			}
			
			if(+data.TeamB == 85){				
				teamBHtml = '<a  href="javascript:;" class="grid down">';
			}else{				
				teamBHtml = '<a href="http://lpl.qq.com/es/team_detail.shtml?tid='+data.TeamB+'" target="_blank" class="grid down">';
			}
			var teamInfo = teamList[data.TeamA];
			winHtml += '<div class="team-vs-result win">';
			winHtml += '<i class="left"></i>';
			winHtml += '<img src="'+teamInfo.TeamLogo+'">';
			winHtml += '<em>敬请<br>期待</em>';
			winHtml += '<div class="txt"><span>晋级2017全球总决赛小组赛 队伍'+index+'</span><b>Team '+teamInfo.TeamName+'</b></div>';
			winHtml += '</div>';
		} else if (+data.MatchStatus == 3 && +data.MatchWin == 2) {
			if(+data.TeamA == 85){				
				teamAHtml = '<a  href="javascript:;" class="grid up">';
			}else{				
				teamAHtml = '<a href="http://lpl.qq.com/es/team_detail.shtml?tid='+data.TeamA+'" target="_blank" class="grid up">';
			}
			
			if(+data.TeamB == 85){				
				teamBHtml = '<a  href="javascript:;" class="grid down win">';
			}else{				
				teamBHtml = '<a href="http://lpl.qq.com/es/team_detail.shtml?tid='+data.TeamB+'" target="_blank" class="grid down win">';
			}
			var teamInfo = teamList[data.TeamB];
			winHtml += '<div class="team-vs-result win">';
			winHtml += '<i class="left"></i>';
			winHtml += '<img src="'+teamInfo.TeamLogo+'">';
			winHtml += '<em>敬请<br>期待</em>';
			winHtml += '<div class="txt"><span>晋级2017全球总决赛小组赛 队伍'+index+'</span><b>Team '+teamInfo.TeamName+'</b></div>';
			winHtml += '</div>';
		} else {
			if(+data.TeamA == 85){				
				teamAHtml = '<a  href="javascript:;" class="grid up ">';
			}else{				
				teamAHtml = '<a href="http://lpl.qq.com/es/team_detail.shtml?tid='+data.TeamA+'" target="_blank" class="grid up">';
			}
			
			if(+data.TeamB == 85){				
				teamBHtml = '<a  href="javascript:;" class="grid down">';
			}else{				
				teamBHtml = '<a href="http://lpl.qq.com/es/team_detail.shtml?tid='+data.TeamB+'" target="_blank" class="grid down">';
			}
			winHtml += '<div class="team-vs-result">';
			winHtml += '<i class="left"></i>';
			winHtml += '<em>敬请<br>期待</em>';
			winHtml += '<div class="txt"><span>晋级2017全球总决赛小组赛 队伍'+index+'</span></div>';
			winHtml += '</div>';
		}
		// 是否有视频
		if (+data.NewsId && +data.NewsId > 0) {
			videoHtml = '<a onclick="PUBLIC_FUNCTION.VideosClickLogUp(' + data.NewsId + ');" href="http://lpl.qq.com/es/video_detail.shtml?nid=' + data.NewsId + '" target="_blank" class="season_team_vid">视频</a>';
		} else {
			videoHtml = '<a href="javascript:alert(\'视频更新中\')" class="season_team_vid">视频</a>';
		}
		
		sHtml += '<div class="team-vs">';
		sHtml += teamAHtml + '<i class="left"></i><b class="name"><img src="' + teamList[data.TeamA].TeamLogo + '">' + teamList[data.TeamA].TeamName + '</b><span class="right">' + data.ScoreA  + '</span></a>';
		sHtml += teamBHtml + '<i class="left"></i><b class="name"><img src="' + teamList[data.TeamB].TeamLogo + '">' + teamList[data.TeamB].TeamName + '</b><span class="right">' + data.ScoreB  + '</span></a>';
		sHtml += '<p class="time">'+self.getDateStr(data.MatchDate)+'</p>';
		if(+data.MatchStatus == 3){			
			sHtml += '<p class="team-btn">'+videoHtml+'<a href="http://lpl.qq.com/es/stats.shtml?bmid='+data.bMatchId+'" target="_blank">数据</a></p>';
		}
		sHtml += '</div>';
		sHtml += winHtml;
		return sHtml;
	},
	
	ReturnTmpl02Element : function(data, id) {
		var self = GAME_LPL_PAGE;
		var teamList = TeamList.msg;
		var sHtml = '';
		var teamAHtml = '';
		var teamBHtml = '';
		var videoHtml = '';
		// 胜负样式的区分
		if (+data.MatchStatus == 3 && +data.MatchWin == 1) {
			if(+data.TeamA == 85){				
				teamAHtml = '<a  href="javascript:;" class="grid up win">';
			}else{				
				teamAHtml = '<a href="http://lpl.qq.com/es/team_detail.shtml?tid='+data.TeamA+'" target="_blank" class="grid up win">';
			}
			
			if(+data.TeamB == 85){				
				teamBHtml = '<a  href="javascript:;" class="grid down">';
			}else{				
				teamBHtml = '<a href="http://lpl.qq.com/es/team_detail.shtml?tid='+data.TeamB+'" target="_blank" class="grid down">';
			}
		} else if (+data.MatchStatus == 3 && +data.MatchWin == 2) {
			if(+data.TeamA == 85){				
				teamAHtml = '<a  href="javascript:;" class="grid up">';
			}else{				
				teamAHtml = '<a href="http://lpl.qq.com/es/team_detail.shtml?tid='+data.TeamA+'" target="_blank" class="grid up">';
			}
			
			if(+data.TeamB == 85){				
				teamBHtml = '<a  href="javascript:;" class="grid down win">';
			}else{				
				teamBHtml = '<a href="http://lpl.qq.com/es/team_detail.shtml?tid='+data.TeamB+'" target="_blank" class="grid down win">';
			}
		} else {
			if(+data.TeamA == 85){				
				teamAHtml = '<a  href="javascript:;" class="grid up ">';
			}else{				
				teamAHtml = '<a href="http://lpl.qq.com/es/team_detail.shtml?tid='+data.TeamA+'" target="_blank" class="grid up">';
			}
			
			if(+data.TeamB == 85){				
				teamBHtml = '<a  href="javascript:;" class="grid down">';
			}else{				
				teamBHtml = '<a href="http://lpl.qq.com/es/team_detail.shtml?tid='+data.TeamB+'" target="_blank" class="grid down">';
			}
		}
		// 是否有视频
		if (+data.NewsId && +data.NewsId > 0) {
			videoHtml = '<a onclick="PUBLIC_FUNCTION.VideosClickLogUp(' + data.NewsId + ');" href="http://lpl.qq.com/es/video_detail.shtml?nid=' + data.NewsId + '" class="season_team_vid">视频</a>';
		} else {
			videoHtml = '<a href="javascript:alert(\'视频更新中\')" class="season_team_vid">视频</a>';
		}
		
		sHtml += '<li><div class="team-vs">';
		sHtml += teamAHtml + '<i class="left"></i><b class="name"><img src="' + teamList[data.TeamA].TeamLogo + '">' + teamList[data.TeamA].TeamName + '</b><span class="right">' + data.ScoreA  + '</span></a>';
		sHtml += teamBHtml + '<i class="left"></i><b class="name"><img src="' + teamList[data.TeamB].TeamLogo + '">' + teamList[data.TeamB].TeamName + '</b><span class="right">' + data.ScoreB  + '</span></a>';
		sHtml += '<p class="time">'+self.getDateStr(data.MatchDate)+'</p>';
		if(+data.MatchStatus == 3){			
			sHtml += '<p class="team-btn">'+videoHtml+'<a href="http://lpl.qq.com/es/stats.shtml?bmid='+data.bMatchId+'" target="_blank">数据</a></p>';
		}
		sHtml += '</div></li>';
		return sHtml;
	},
	
	getDateStr : function (matchDate){
		var date = new Date(matchDate.replace(/-/g,'/'));
		var month = date.getMonth()+1;
		var day = date.getDate();
		var dateArr = matchDate.split(' ');
		var week = date.getDay();
		var weekMap = {
				0 : '星期日',
				1 : '星期一',
				2 : '星期二',
				3 : '星期三',
				4 : '星期四',
				5 : '星期五',
				6 : '星期六'
		};
		return month + '月' + day + '日 '+ weekMap[week] +' ' + dateArr[1].substring(0,5);
	},
	
	// 按比赛进度显示比赛赛程
	ShowGameScheduleList : function(gameType, gameProcId) {
		var self = GAME_LPL_PAGE;
		var goUrl = self.dBMatchUrl + '?p1=' + self.dGameId + '&p5=' + gameType + '&p7=' + gameProcId + '&r1=BMatchList&pagesize=50';
		var bGameList = GameList.msg.bGameList;
		var teamList = TeamList.msg;
		var bGameName = '';
		var sHtml = "";
		$.getScript(goUrl, function() {
			if (BMatchList.status == 0) {
				var matchList = BMatchList.msg.result;
				var liveIndex = 0;
				for ( var x in matchList) {
					if(x == 'forEach' || x=='reduce' || x=='indexOf'){
						continue;
					}
					for ( var i in bGameList) {
						if (matchList[x].bGameId == bGameList[i].GameId) {
							bGameName = bGameList[i].GameName;
						}
					}
					var dateArr = matchList[x].MatchDate.split(" ");
					var liClass = '';
					var btnHtml = '';
					if (+matchList[x].MatchStatus == 1) {
						liClass = 'comming';
						if (+matchList[x].iQTMatchId) {
							btnHtml += '<a id="dinyue_' + matchList[x].iQTMatchId + '" href="javascript:PUBLIC_FUNCTION.DinYue(' + matchList[x].iQTMatchId + ');">预约</a>';
						} else {
							btnHtml += '<a href="javascript:;">敬请期待</a>';
						}
					} else if (+matchList[x].MatchStatus == 2) {
						liveIndex = x;
						liClass = 'ing';
					} else {
						liClass = '';
						if (+matchList[x].NewsId && +matchList[x].NewsId > 0) {
							btnHtml += '<a  class="btn-video" onclick="PUBLIC_FUNCTION.VideosClickLogUp(' + matchList[x].NewsId + ');" href="http://lpl.qq.com/es/video_detail.shtml?nid=' + matchList[x].NewsId + '">视频</a>';
						} else {
							btnHtml += '<a  class="btn-video" href="javascript:alert(\'视频更新中\')" >视频</a>';
						}
						btnHtml += ' <a href="http://lpl.qq.com/es/stats.shtml?bmid=' + matchList[x].bMatchId + '"  target="_blank" onclick="PUBLIC_FUNCTION.ReportDataClickLogUp(' + matchList[x].bMatchId + ');">数据</a>';
					}
					sHtml += '<li class="' + liClass + '">';
					sHtml += '<div class="time fl">' + dateArr[0].substr(5, 5) + '<br>' + dateArr[1].substr(0, 5) + '</div>';
					sHtml += '<div class="vs">';
					sHtml += '<div class="team fl"><img src="' + teamList[matchList[x].TeamA].TeamLogo + '"><span>' + teamList[matchList[x].TeamA].TeamName + '</span></div>';
					// A队胜
					if (+matchList[x].MatchStatus == 3 && +matchList[x].MatchWin == 1) {
						sHtml += '<div class="score"><b class="fl win">' + matchList[x].ScoreA + '</b><em>:</em><b class="fr">' + matchList[x].ScoreB + '</b></div>';
					} else if (+matchList[x].MatchStatus == 3 && +matchList[x].MatchWin == 2) {
						sHtml += '<div class="score"><b class="fl">' + matchList[x].ScoreA + '</b><em>:</em><b class="fr win">' + matchList[x].ScoreB + '</b></div>';
					} else {
						sHtml += '<div class="score"><b class="fl">' + matchList[x].ScoreA + '</b><em>:</em><b class="fr">' + matchList[x].ScoreB + '</b></div>';
					}
					sHtml += '<div class="team fr"><span>' + teamList[matchList[x].TeamB].TeamName + '</span><img src="' + teamList[matchList[x].TeamB].TeamLogo + '"></div>';
					sHtml += '</div>';
					sHtml += '<div class="btns fr">' + btnHtml + '</div>';
					sHtml += '</li>';
				}
				$("#matchList_1").html(sHtml);
				if(liveIndex >=5){
					var objTr = $("#matchList_1 li.ing");
					if(objTr.length>0){
						$("#matchList_1").animate({
							scrollTop : objTr[0].offsetTop - $('#matchList_2')[0].offsetTop 
						}, "slow");
					}
				}
				// 方法定义在commone.js里面
				if (+self.dLiveFlag == 1) {
					tabSlide("matchBox", "matchList", "matchPrev", "matchNext", 248, 1240, 5, self.dLiveNum);
				} else {
					tabSlide("matchBox", "matchList", "matchPrev", "matchNext", 248, 1240, 5, self.dCurrNum);
				}

				// 改变赛程进度tab样式
				$("[id^=process_1_]").removeClass('on');
				$("#process_1_" + gameProcId).addClass('on');
				// 重置，保证不影响翻页
				self.dLiveNum = 1;
				self.dCurrNum = 1;
			} else {
				sHtml = '<li>' + BMatchList.msg + '</li>'
				$("#matchList_1").html(sHtml);
			}
		});
	},

	// 按比赛进度显示比赛赛程
	ShowGameScheduleList2 : function(gameType, gameProcId) {
		var self = GAME_LPL_PAGE;
		var goUrl = self.dBMatchUrl + '?p1=' + self.dGameId + '&p5=' + gameType + '&p7=' + gameProcId + '&r1=BMatchList&pagesize=50';
		var bGameList = GameList.msg.bGameList;
		var teamList = TeamList.msg;
		var bGameName = '';
		var sHtml = "";
		$.getScript(goUrl, function() {
			if (BMatchList.status == 0) {
				var matchList = BMatchList.msg.result;
				var firstMatchId = 0;
				for ( var x in matchList) {
					if(firstMatchId == 0 && +matchList[x].MatchStatus == 3){
						firstMatchId = matchList[x]['bMatchId'];
					}
					for ( var i in bGameList) {
						if (matchList[x].bGameId == bGameList[i].GameId) {
							bGameName = bGameList[i].GameName;
						}
					}
					var dateArr = matchList[x].MatchDate.split(" ");

					sHtml += '<li id="game_schedult_' + matchList[x].bMatchId + '">';
					sHtml += '<div class="vod-hd">';
					sHtml += '<div class="time fl">' + dateArr[0] + '<br><b>' + dateArr[1].substr(0, 5) + '</b></div>';
					sHtml += '<div class="vs">';
					sHtml += '<div class="team fl"><div class="team-logo"><img src="' + teamList[matchList[x].TeamA].TeamLogo + '"></div><span>' + teamList[matchList[x].TeamA].TeamName + '</span></div>';
					// A队胜
					if (+matchList[x].MatchStatus == 3 && +matchList[x].MatchWin == 1) {
						sHtml += '<div class="score"><b class="fl win">' + matchList[x].ScoreA + '</b><em>:</em><b class="fr">' + matchList[x].ScoreB + '</b></div>';
					} else if (+matchList[x].MatchStatus == 3 && +matchList[x].MatchWin == 2) {
						sHtml += '<div class="score"><b class="fl">' + matchList[x].ScoreA + '</b><em>:</em><b class="fr win">' + matchList[x].ScoreB + '</b></div>';
					} else {
						sHtml += '<div class="score"><b class="fl">' + matchList[x].ScoreA + '</b><em>:</em><b class="fr">' + matchList[x].ScoreB + '</b></div>';
					}
					sHtml += '<div class="team fr"><span>' + teamList[matchList[x].TeamB].TeamName + '</span><div class="team-logo"><img src="' + teamList[matchList[x].TeamB].TeamLogo + '"></div></div>';
					sHtml += '<div class="vs-tag">';
					if (+matchList[x].MatchStatus == 3){
						sHtml += '<a id="vod_btn_' + matchList[x].bMatchId + '_76" href="javascript:GAME_LPL_PAGE.ShowGameScheduleVod(' + matchList[x].bMatchId + ',76);">巅峰时刻</a>';
						sHtml += '<a id="vod_btn_' + matchList[x].bMatchId + '_20" href="javascript:GAME_LPL_PAGE.ShowGameScheduleVod(' + matchList[x].bMatchId + ',20);">全场回顾</a>';
						if(+matchList[x].GameTypeId != 28){
							sHtml += '<a id="vod_btn_' + matchList[x].bMatchId + '_80" href="javascript:GAME_LPL_PAGE.ShowGameScheduleVod(' + matchList[x].bMatchId + ',80);">赛事速看</a>';							
						}
					}else{
						if (+matchList[x].iQTMatchId) {
							sHtml += '<a id="dinyue_' + matchList[x].iQTMatchId + '" href="javascript:PUBLIC_FUNCTION.DinYue(' + matchList[x].iQTMatchId + ');">预约直播</a>';
						} else {
							sHtml += '<a href="javascript:;">敬请期待</a>';
						}
					}
					sHtml += '</div>';
					sHtml += '</div>';
					sHtml += '</div>';
					sHtml += '<div class="vod-bd"><div class="vod-bd-container"><dl id="game_vod_' + matchList[x].bMatchId + '" class="swiper-wrapper"></dl></div><a href="javascript:" class="vod-left"></a><a href="javascript:" class="vod-right"></a></div>';
					sHtml += '</li>';
				}
				$("#matchList_2").html(sHtml);
				if(!self.dLoadCurrBMatchFlag){
					if(self.dcurrBMatchId != 0){
						self.ShowGameScheduleVod(self.dcurrBMatchId, 20);	
					}else{
						self.ShowGameScheduleVod(firstMatchId, 20);	
					}		
				}else{
					self.dLoadCurrBMatchFlag = false;
					if(firstMatchId != 0){						
						self.ShowGameScheduleVod(firstMatchId,20);
					}
				}
				// 方法定义在commone.js里面
				if (+self.dLiveFlag == 1) {
					tabSlide("matchBox", "matchList", "matchPrev", "matchNext", 248, 1240, 5, self.dLiveNum);
				} else {
					tabSlide("matchBox", "matchList", "matchPrev", "matchNext", 248, 1240, 5, self.dCurrNum);
				}

				// 改变赛程进度tab样式
				$("[id^=process_2_]").removeClass('on');
				$("#process_2_" + gameProcId).addClass('on');
				// 重置，保证不影响翻页
				self.dLiveNum = 1;
				self.dCurrNum = 1;
			} else {
				sHtml = '<li>' + BMatchList.msg + '</li>'
				$("#matchList_2").html(sHtml);
			}
		});
	},

	ShowGameScheduleVod : function(bMatchId, sCateId) {
		var self = GAME_LPL_PAGE;
		if ($('#game_schedult_' + bMatchId).hasClass('cur') && self.dVodCateId == sCateId) {
			return;
		}
		 self.dVodCateId = sCateId
		var goUrl = self.dNewsUrl + '?p1=' + self.dGameId + '&p3=' + sCateId + '&p6=' + bMatchId + '&r1=VideoList&pagesize=50';
		var sHtml = "";
		$.getScript(goUrl, function() {
			if (VideoList.status == 0) {
				$('#game_schedult_' + bMatchId).addClass('cur').siblings().removeClass('cur');
				var data = VideoList.msg.result;
				var videoId = 0;
				var title = '';
				for ( var x in data) {
				
					var newsInfo = data[x];
					var videoData = jQuery.parseJSON(newsInfo.sExt1);
					if(videoId == 0){
						videoId=videoData.sVID;
						title = newsInfo.Title;
					}
					sHtml += '<dd class="swiper-slide">';
					sHtml += '<a href="javascript: " onclick="GAME_LPL_PAGE.ShowVideo(\'' + videoData.sVID + '\', \''+newsInfo.Title+'\');"><img src="' + videoData.sImg + '"><span>' + newsInfo.Title + '</span></a>';
					sHtml += '</dd>';
				}
				$('#game_vod_' + bMatchId).html(sHtml);
				$('a[id^="vod_btn_"]').removeClass('on');
				$('#vod_btn_' + bMatchId + '_' + sCateId).addClass('on');
				cimi.bindVodSwiper();
				var objTr = $("#matchList_2 li.cur");
				if(objTr.length>0){
					$("#matchList_2").animate({
						scrollTop : objTr[0].offsetTop - $('#matchList_2')[0].offsetTop 
					}, "slow");
				}
				if($('#game_name').html() == ''){
					//$('#game_vod_'+bMatchId+' a').trigger('click')	
					self.ShowVideo(videoId, title)
				}
			} else {
				if(self.dLoadCurrBMatchFlag){
					alert('敬请期待')
				}else if(sCateId == 20){
					self.ShowGameScheduleVod(bMatchId,76);
				}
			}
			self.dLoadCurrBMatchFlag = true;
		})
	},
	
	ShowVideo : function (vid,title){
		var self = GAME_LPL_PAGE;
		cimi.loadVideo(vid, false);
		$('#live-status').html('正在点播：');
		$('#game_name').html(title);
	},

	// 按比赛进度显示赛事进度
	ShowGameProcList : function(gameType, gameProcId) {
		var self = GAME_LPL_PAGE;
		var goUrl = self.dBMatchUrl + '?p1=' + self.dGameId + '&p5=' + gameType + '&p7=' + gameProcId + '&r1=BMatchLists&pagesize=50';
		var bGameList = GameList.msg.bGameList;
		var teamList = TeamList.msg;
		var bGameName = '';
		var sHtml = "";
		$.getScript(goUrl, function() {
			if (BMatchLists.status == 0) {
				var matchList = BMatchLists.msg.result;
				for ( var x in matchList) {
					var data = matchList[x];
					var teamList = TeamList.msg;
					if (!teamList[data.TeamA] || !teamList[data.TeamB])
						return '';
					var mStatusHtml = '';
					mVideoStatus = '';
					var dateArr = data.MatchDate.split(" ");
					if (+data.MatchStatus == 1) {
						mStatusHtml = '<li class="comming">';
						if (+data.iQTMatchId) {
							mVideoStatus = '<div class="btns fr"><a id="dinyue_' + data.iQTMatchId + '" href="javascript:PUBLIC_FUNCTION.DinYue(' + data.iQTMatchId + ');">预约直播</a>';
						} else {
							mVideoStatus = '<div class="btns fr"><a href="javascript:;">敬请期待</a></div>';
						}
					} else if (+data.MatchStatus == 2) {
						mStatusHtml = '<li class="ing">';
						var shref = self.dLivePage + '?bgid=' + data.GameId + '&bmid=' + data.bMatchId;
						mVideoStatus = '';
					} else {
						mStatusHtml = '<li>';
						// 是否有视频
						if (+data.NewsId && +data.NewsId > 0) {
							mVideoStatus = '<div class="btns fr"><a href="http://lpl.qq.com/es/video_detail.shtml?nid=' + data.NewsId + '" class="btn-video">视频</a>';
						} else {
	mVideoStatus = '<div class="btns fr"><a href="javascript:alert(\'视频更新中，敬请期待\')" class="btn-video">视频</a>';
}
						mVideoStatus += '<a target="_blank" href="http://lpl.qq.com/es/stats.shtml?bmid=' + data.bMatchId + '">数据</a>';

mVideoStatus += '</div>';
					}
					
					sHtml += mStatusHtml;
					sHtml += '<div class="time fl">' + dateArr[0].substr(5, 5)  + '<br>' + dateArr[1].substr(0, 5) + '</div>';
					sHtml += '<div class="vs"><div class="team fl"><img src="' + teamList[data.TeamA].TeamLogo+ '"><span>' + teamList[data.TeamA].TeamName + '</span></div>';
					if (+data.MatchStatus == 3 && +data.MatchWin == 1) {
						sHtml += '<div class="score"><b class="fl win">' + data.ScoreA + '</b><em>:</em><b class="fr">' + data.ScoreB + '</b></div>';
					} else if (+data.MatchStatus == 3 && +data.MatchWin == 2) {
						sHtml += '<div class="score"><b class="fl ">' + data.ScoreA + '</b><em>:</em><b class="fr win">' + data.ScoreB + '</b></div>';
					} else {
						sHtml += '<div class="score"><b class="fl">' + data.ScoreA + '</b><em>:</em><b class="fr">' + data.ScoreB + '</b></div>';
					}
					sHtml += '<div class="team fr"><span>' + teamList[data.TeamB].TeamName + '</span><img src="' + teamList[data.TeamB].TeamLogo+ '"></div></div>';
					sHtml +=mVideoStatus;
 					sHtml += '</li>';					
				}
				$("#game_type_xz .group-match-list").html(sHtml);
				
				// 改变赛事进度tab样式
				$("[id^=process_4_]").removeClass('on');
				$("#process_4_" + gameProcId).addClass('on');
			} else {
				sHtml = '<li>' + BMatchLists.msg + '</li>'
				$("#game_type_xz .group-match-list").html(sHtml);
			}
		});
	},
	// 最新资讯
	InitNewsList : function() {
		var self = GAME_LPL_PAGE;
		var goUrl = "http://lpl.qq.com/web201612/data/LOL_MATCH2_PROJECT_BGAME_NEWS_" + self.dGameTopId + "_NEW.js";
		var sHtml = '';
		$.getJSON(goUrl, function(data) {
			if (data.status == 0) {
				// 最新
				var info = data.msg.latest_news;
				if (info) {
					sHtml = self.ReturnNewsHtml(info);
				}
				$("#latest_news").html(sHtml);

				// 赛场印象
				self.InitGameImage(data.msg.game_image);
			}
		});
	},
	// 赛场映象
	InitGameImage : function(data) {
		var self = GAME_LPL_PAGE;
		var sHtml = '';
		if (data) {
			for ( var x in data) {
				sHtml += '<li>' + '<a target="_blank" class="pv-lnk" onclick="PUBLIC_FUNCTION.NewsClickLogUp(' + data[x].NewsId + ',\'image\');" href="http://lpl.qq.com/es/news_detail.shtml?nid=' + data[x].NewsId + '">' + '<img src="' + data[x].sImg + '" alt="">' + '<span class="pv-long"><i></i></span>' + '<h5>' + data[x].Title + '</h5>' + '</a>' + '</li>';
			}
			$("#game_image").html(sHtml);
		} else {
			$("#game_image").html('<li>未查询到相关数据。</li>');
		}
	},
	ReturnNewsHtml : function(data) {
		var sHtml = "";
		for ( var x in data) {
			if (x == 10)
				break;
			if (x == 5) {
				sHtml += '</ul><p class="splitLine"></p><ul>';
			}
			sHtml += '<li>' + '<a target="_blank" onclick="PUBLIC_FUNCTION.NewsClickLogUp(' + data[x].NewsId + ',\'wordlink\');" href="http://lpl.qq.com/es/news_detail.shtml?nid=' + data[x].NewsId + '">';

			if (x == 0 || x == 5) {
				sHtml += '<span class="firstChild">';
			} else {
				sHtml += '<span>';
			}
			sHtml += data[x].Title + '</span>';
			sHtml += ' <span class="c-time">' + data[x].indexDate.substr(5, 5) + '</span> </a> </li>';
		}
		return sHtml;
	},
	// 战队积分榜
	InitTeamScoreBoard : function(gameType,index) {
		var self = GAME_LPL_PAGE;
		var goUrl = self.dPreUrl + 'LOL_MATCH2_GAME_' + self.dGameId + '_' + gameType + '_GROUP_TEAM_SCORE_TOP.js';
		var teamList = TeamList.msg;
		var sHtml = "";
		$.getScript(goUrl, function() {
			if (GroupTeamScores.status == 0) {
				var groups = ['E','F','G','H'];
				var group = groups[index];
				var scores = GroupTeamScores.msg.score;
				if (scores) {
					var temarr = scores[group];
					var showRank = 1;
					for(var y in temarr){
						if(y == 'forEach' || y=='reduce' || y=='indexOf'){
							continue;
						}
						var scoreInfo = temarr[y];
						sHtml += '<li>';
						sHtml += '<div class="rank">' + showRank + '</div>';
						sHtml += '<div class="team"><img src="' + teamList[scoreInfo.TeamId].TeamLogo + '" width="52" height="52"><span>' + teamList[scoreInfo.TeamId].TeamName + '</span></div>';
						sHtml += '<div class="win-lose"><span>'+ scoreInfo.Value1 +'</span> <em>/</em><span>'+scoreInfo.Value3 +'</span></div>';
						sHtml += '<div class="points">' + scoreInfo.Score + '</div>';
						sHtml += '</li>';
						showRank ++ ;
					}
					$("#game_type_xz .score-list").html(sHtml);
					$("#game_type_xz .score-filter a").eq(index).addClass('selected').siblings().removeClass('selected');
				}
			}
		});
	},
	// 战队积分榜
	InitTeamScoreBoard02 : function(gameType) {
		var self = GAME_LPL_PAGE;
		var goUrl = self.dPreUrl + 'LOL_MATCH2_GAME_' + self.dGameId + '_' + gameType + '_GROUP_TEAM_SCORE_TOP.js';
		var teamList = TeamList.msg;
		var sHtml = "";
		$.getScript(goUrl, function() {
			if (GroupTeamScores.status == 0) {
				var groups = ['A','B','C','D'];
				var scores = GroupTeamScores.msg.score;
				if (scores) {
					for ( var x in groups) {
						sHtml = '';
						var temarr = scores[groups[x]];
						var showRank = 1;
						for(var y in temarr){
							if(y == 'forEach' || y=='reduce' || y=='indexOf'){
								continue;
							}
							var scoreInfo = temarr[y];
							sHtml += '<li>';
							sHtml += '<div class="rank">' + showRank + '</div>';
							sHtml += '<div class="team"><img src="' + teamList[scoreInfo.TeamId].TeamLogo + '" width="52" height="52"><span>' + teamList[scoreInfo.TeamId].TeamName + '</span></div>';
							sHtml += '<div class="win-lose"><span>'+ scoreInfo.Value1 +'</span> <em>/</em><span>'+scoreInfo.Value3 +'</span></div>';
							sHtml += '<div class="points">' + scoreInfo.Score + '</div>';
							sHtml += '</li>';
							showRank ++ ;
						}
						$("#team_score_board_"+groups[x]).html(sHtml);
					}
				}
			}
		});
	},
	// 选手积分榜
	InitMemberScoreBoard : function(gameType) {
		return;
		var self = GAME_LPL_PAGE;
		// 临时解决方案：当比赛类型为1（春季赛常规赛）的时候，显示春季赛常规赛的选手积分
		if (gameType == 1) {
			var goUrl = "http://lpl.qq.com/web201612/data/LOL_MATCH2_GAME_" + self.dGameId + "_1_MEMBER_KDA_SCORE_TOP_50.js";
		} else {
			var goUrl = "http://lpl.qq.com/web201612/data/LOL_MATCH2_GAME_" + self.dGameId + "_MEMBER_KDA_SCORE_TOP_50.js";
		}
		var sHtml = "";
		var memberList = MemberList.msg;
		var heroArr = LOLherojs.champion['keys'];
		var heroData = LOLherojs.champion['data'];
		$.getJSON(goUrl, function(MemberScore) {
			if (MemberScore.status == 0) {
				var data = MemberScore.msg;
				if (data) {
					for ( var x in data) {
						var scoreInfo = data[x];
						var heroArray = scoreInfo.GameHero.split(',');
						sHtml += '<li>' + '<div class="rankTit_w1"><em>' + scoreInfo.Rank + '</em></div>' + '<div class="rankTit_w2">' + '<img src="' + scoreInfo.MemberIcon + '" width="50" height="50" class="rankTit_w2_img">' + '<p class="rankTit_w2_name">' + scoreInfo.MemberName + '</p>' + '<p class="rankTit_w2_pos">' + PUBLIC_FUNCTION.ReloadMemberGamePlace(scoreInfo.GamePlace) + '</p>' + '</div>' + '<div class="rankTit_w3">';
						if (heroArray) {
							for ( var x in heroArray) {
								var heroObj = heroData[heroArr[heroArray[x]]];
								sHtml += '<img src="http://ossweb-img.qq.com/images/lol/img/champion/' + heroObj.id + '.png" width="36" height="36" />';
							}
						}
						sHtml += '</div>' + '<div class="rankTit_w4"><p class="rankTit_w4_tit">KDA</p><p class="rankTit_w4_cent">' + scoreInfo.Score + '</p></div>';
						+'</li>';
					}
				}
				$("#member_score_board").html(sHtml);
				$("#member_score_board li").eq(0).addClass("ntb");
			} else {
				$("#member_score_board").html(sHtml);
				$("#member_score_board li").eq(0).addClass("ntb");
			}
		});
	},
	// 分组展示战队积分榜
	InitGroupTeamScoreBoard : function(gameType) {
		var self = GAME_LPL_PAGE;
		var goUrl = 'http://lpl.qq.com/web201612/data/LOL_MATCH2_GAME_' + self.dGameId + '_' + gameType + '_GROUP_TEAM_SCORE_TOP.js';
		$.getScript(goUrl, function() {
			if (GroupTeamScores.status == 0) {
				var groups = GroupTeamScores.msg.group;
				var datas = GroupTeamScores.msg.score;
				for ( var x in groups) {
					group = groups[x].Group;
					self.FillGroupTeamScoreBoardHtml(datas[group], group);
				}
			} else {
				$("#team_score_board_A").html(sHtml);
				$("#team_score_board_A li").eq(0).addClass("ntb");
				$("#team_score_board_B").html(sHtml);
				$("#team_score_board_B li").eq(0).addClass("ntb");
			}
		});
	},
	FillGroupTeamScoreBoardHtml : function(data, flag) {
		var self = GAME_LPL_PAGE;
		var teamList = TeamList.msg;
		var sHtml = "";
		if (data) {
			for ( var x in data) {
				var scoreInfo = data[x];
				sHtml += '<li>' + '<em>' + (+x + 1) + '</em>' + '<div class="match-rank-team">' + '<a target="_blank" href="http://lpl.qq.com/es/team_detail.shtml?tid=' + scoreInfo.TeamId + '">' + '<img src="' + teamList[scoreInfo.TeamId].TeamLogo + '" width="52" height="52">' + '</a>' + '<span>' + teamList[scoreInfo.TeamId].TeamName + '</span>' + '</div>' + ' <p class="match-rank-rult"><span class="vic">' + scoreInfo.Value1 + '</span> <span class="centline">/</span> ' + scoreInfo.Value3
						+ '</p>' + '<i>' + scoreInfo.Score + '</i>' + '</li>';
			}
		}
		$("#team_score_board_" + flag).html(sHtml);
		$("#team_score_board_" + flag + " li").eq(0).addClass("ntb");
	},

	// 英雄B/P榜
	InitHeroBPBoard : function() {
		var self = GAME_LPL_PAGE;
		var goUrl = "http://lpl.qq.com/web201612/data/LOL_MATCH2_GAME_" + self.dGameId + "_BAN_PICK_TOP_TEN.js";
		var sHtml = "";
		var heroArr = LOLherojs.champion['keys'];
		var heroData = LOLherojs.champion['data'];
		$.getJSON(goUrl, function(data) {
			if (data.status == 0) {
				var banInfo = data.msg.ban;
				var pickInfo = data.msg.pick;
				if (banInfo) {
					// 禁用榜
					if (banInfo.length > 0) {
						for ( var x in banInfo) {
							if(x == 'forEach' || x=='reduce' || x=='indexOf'){
								continue;
							}
							var bans = banInfo[x];
							var heroObj = heroData[heroArr[bans.ChampionId]];
							sHtml += '<li>' + '<p class="ranktimes">' + bans.ban + '次</p>' + '<div class="rankbg">' + '<div class="rankshow" style="height:' + bans.ban_rate + 'px;"></div>' + '</div>' + '<p class="rankpct">' + bans.ban_rate + '%</p>' + '<img src="http://ossweb-img.qq.com/images/lol/img/champion/' + heroObj.id + '.png" width="37" height="37">' + '<p class="rankname">' + heroObj.name + '</p>' + '</li>';
						}
						$("#heor_bp_board_ban").html(sHtml);
					}
				}
				if (pickInfo) {
					// 使用榜
					sHtml = '';
					if (pickInfo.length > 0) {
						for ( var x in pickInfo) {
							if(x == 'forEach' || x=='reduce' || x=='indexOf'){
								continue;
							}
							var picks = pickInfo[x];
							var heroObj = heroData[heroArr[picks.ChampionId]];
							sHtml += '<li>' + '<p class="ranktimes">' + picks.pick + '次</p>' + '<div class="rankbg">' + '<div class="rankshow" style="height:' + picks.pick_rate + 'px"></div>' + '</div>' + '<p class="rankpct">' + picks.pick_rate + '%</p>' + '<img src="http://ossweb-img.qq.com/images/lol/img/champion/' + heroObj.id + '.png" width="37" height="37">' + '<p class="rankname">' + heroObj.name + '</p>' + '</li>';
						}
						$("#heor_bp_board_pick").html(sHtml);
					}
				}
			}
		});
	},
	// 赛事基本信息(赛事结果、赛制信息、场地信息)
	FillGameBaseInfoHtml : function() {
		var self = GAME_LPL_PAGE;
		var teamList = TeamList.msg;
		var baseInfo = self.dGameBaseInfo['baseInfo'];
		var sHtml = "";
		// 赛事结果
		if (+baseInfo.RankNo1 || +baseInfo.RankNo2 || +baseInfo.RankNo3) {
			sHtml += '<div class="ranking"><img src="' + teamList[baseInfo.RankNo1].TeamLogo + '" width="100" height="100" /><p>恭喜<span>' + teamList[baseInfo.RankNo1].TeamName + '</span>获得<span>冠军</span></p></div>' + '<div class="ranking"><img src="' + teamList[baseInfo.RankNo2].TeamLogo + '" width="100" height="100" /><p>恭喜<span>' + teamList[baseInfo.RankNo2].TeamName + '</span>获得<span>亚军</span></p></div>' + '<div class="ranking"><img src="' + teamList[baseInfo.RankNo3].TeamLogo
					+ '" width="100" height="100" /><p>恭喜<span>' + teamList[baseInfo.RankNo3].TeamName + '</span>获得<span>季军</span></p></div>';
			$("#game_result").html(sHtml);
		} else {
			$("#game_result").html('');
		}
		// 场地信息
		sHtml = "";
		sHtml += '<strong>场馆地址：</strong>' + baseInfo.GamePlace;
		$("#address_info").html(sHtml);
	},
	// 赛事奖金
	FillGameAwardInfoHtml : function() {
		var self = GAME_LPL_PAGE;
		var gameAward = self.dGameBaseInfo['gameAward'];
		var sHtml1 = "";
		var sHtml2 = "";
		if (gameAward) {
			for ( var x in gameAward) {
				var data = gameAward[x];
				var awards = jQuery.parseJSON(data.AwardDesc);
				if (data.Rank <= 3) {
					sHtml1 += '<p class="lpl_centRank_' + data.Rank + '"><span class="dinbold">' + TOOLS.FormateNum(awards.award) + '</span><br><span class="dinlight">' + awards.currency + '</span></p>';
				} else {
					sHtml2 += '<li><strong>' + data.RankDesc + '</strong><em>' + TOOLS.FormateNum(awards.award) + '</em>' + awards.currency + '</li>';
				}
			}
		}
		$("#rank_before3").html(sHtml1);
		$("#rank_after3").html(sHtml2);
	},

	// 参赛队伍
	FillGameTeamHtml : function() {
		var self = GAME_LPL_PAGE;
		var gameTeam = self.dGameBaseInfo['gameTeam'];
		var teamList = TeamList.msg;
      gameTeam.sort(function(a,b){
      	var teamAInfo = teamList[a.TeamId];
        var teamBInfo = teamList[b.TeamId];
        return teamAInfo.TeamName>teamBInfo.TeamName?1:-1
      })
		if (gameTeam) {
			var length = gameTeam.length;
			var pagesize = 12;
			var page = Math.ceil(length / 12);
			for ( var i = 0; i < page; i++) {
				var start = i * pagesize;
				var end = start + pagesize;
				if (end > length) {
					end = length;
				}
				var sHtml = '';
				for ( var j = start; j < end; j++) {
					var teamInfo = teamList[gameTeam[j].TeamId];
					var teamUrl = 'http://lpl.qq.com/es/team_detail.shtml?tid=' + teamInfo.TeamId;
					sHtml += ' <li  class="m-team-li"> <div class="u-team-logo"><img src="' + teamInfo.TeamLogo + '" alt="战队logo"></div><p>' + teamInfo.TeamName + '</p><a href="' + teamUrl + '" target="_blank" class="mask-href"></a></li>';
				}
				
				$("#game_team" + i).html(sHtml);
			}
			cimi.initTeamSwiper();
		}
	},

	// 个人排行榜
	InitPersonalrankInfo : function(iType, iGameType) {
		var self = GAME_LPL_PAGE;
		var teamList = TeamList.msg;
		if (self.iLS == 1) {
			var sGameType = iGameType ? "&sGameType=" + iGameType : '';
			var sType = iType ? "&iType=" + iType : '';
			var goUrl = "http://apps.game.qq.com/lol/act/a20160519Match/Match.php?_a=personalrank";
			goUrl += "&iGameId=49"+sGameType+sType;
			goUrl += "&iPage=1&sRet=PERSONARANKLIST&r=" + Math.random();
		} else {
			var sGameType = iGameType ? "&sGameType=" + iGameType : '';
			var sType = iType ? "&iType=" + iType : '';
			var goUrl = "http://apps.game.qq.com/lol/act/a20160519Match/Match.php?_a=personalrank";
			goUrl += "&iGameId=" + self.dGameId +sGameType+sType;
			goUrl += "&iPage=1&sRet=PERSONARANKLIST&r=" + Math.random();
		}
		if (iType == 1) {
			var sConId = 'personalRanking-assist';
			var sField = 'sAveragingAssists';
			var sField_1 = 'iAssists';
		} else if (iType == 9) {
			var sConId = 'personalRanking-mvp';
			var sField = 'iMVPFrequency';
			var sField_1 = '';
		} else {
			var sConId = 'personalRanking-kill';
			var sField = 'sAveragingKill';
			var sField_1 = 'iKill';
		}
		var sConHtml = $('#' + sConId).text();
		if (sConHtml)
			return;
		$.getScript(goUrl, function() {
			// id="MVPLIST_0"
			if (PERSONARANKLIST_RES.ret_code == 0) {
				// MVP列表
				var sHtml = '';
				var iNum = 1;
				if(PERSONARANKLIST_RES.msg.data){
					for ( var x in PERSONARANKLIST_RES.msg.data) {
						var RANKList = PERSONARANKLIST_RES.msg.data[x];
						var MemberInfo = MemberList.msg[RANKList['iMemberId']];
						var TeamInfo = TeamList.msg[RANKList['iTeamId']];
						sHtml += '<tr>';
						sHtml += '<td class="tb-01"><span>' + iNum + '</span></td>';
						sHtml += '<td class="tb-02"><img src="' + MemberInfo.UserIcon + '" title="玩家头像" /><a>' + MemberInfo.NickName + '</a></td>';
						sHtml += '<td class="tb-03"><img src="' + TeamInfo.TeamLogo + '" title="战队图标" /></td>';
						sHtml += '<td class="tb-04">' + RANKList.iPosition + '</td>';
						if (sField_1 != '') {
							sHtml += '<td class="tb-05">' + RANKList[sField_1] + '(' + GetDigit1(RANKList[sField]) + ')</td>';
						} else {
							sHtml += '<td class="tb-05">' + RANKList[sField] + '</td>';
						}
						sHtml += '</tr>';
						iNum++;
					}
					$('#' + sConId).html(sHtml);
				}else{					
					$('#' + sConId).html('<tr><td colspan="5">入围赛将于9月23日开启</td></tr>');
				}
			}else{
				$('#' + sConId).html('<tr><td colspan="5">入围赛将于9月23日开启</td></tr>');
			}
		});
	},

	/**
	 * 初始化直播信息
	 */
	InitLive : function(obj) {
		var self = GAME_LPL_PAGE;
		var liveMatchLIst = LiveBMatchList.msg;
		if (!$.isEmptyObject(liveMatchLIst[self.dGameTopId])) {
			var liveObjList = liveMatchLIst[self.dGameTopId];
			self.dNoLive = false;
		} else if (!$.isEmptyObject(liveMatchLIst[self.dGameId])) {
			var liveObjList = liveMatchLIst[self.dGameId];
			self.dNoLive = false;
		} else {
			var date = new Date('2017/09/23 13:00:00').getTime();
			var now = new Date().getTime();
			if(now < date){
				self.dReply = true;
				self.dNoLive = false;
				self.InitQtReplyInfo();
				$('.mv-live-right').show();
				$('.mv-vod').hide();
				return 
			}
			
			self.dNoLive = true;
			if(self.dRefreshFlag == 0){
				self.dRefreshFlag = 2;
			}
			$('.mv-live-right').hide();
			$('.mv-vod').show();
			return;
		}
		if(self.iLS == 1){
			liveObjList[0] = undefined;
		}
		if (typeof (liveObjList[0]) != 'undefined') {
			var liveObj = liveObjList[0];
			$('#game_name').html('【' + liveObj.GameName + '】' + liveObj.bMatchName);
			$('#live-status').html('正在直播：');
			if(!self.dHaveLive){
				self.dHaveLive = true;
				self.MatchLive('', '', self.dQTLiveId, self.dLiveRoomId);
			}
			$('.mv-live-right').show();
			$('.mv-vod').hide();
		} else {
			var date = new Date('2017/09/23 13:00:00').getTime();
			if(self.iLS == 1){
				var now = new Date('2017/09/23 19:00:00').getTime();
			}else{
				var now = new Date().getTime();				
			}
			if(now < date){
				self.dReply = true;
				self.dNoLive = false;
				self.InitQtReplyInfo();
				$('.mv-live-right').show();
				$('.mv-vod').hide();
				return 
			}
			
			self.dNoLive = true;
			$('.mv-live-right').hide();
			$('.mv-vod').show();
		}
		if(self.dRefreshFlag == 0){
			if(self.dNoLive){			
				// 点播
				self.dRefreshFlag = 2;
			}else{
				// 直播
				self.dRefreshFlag = 1;
			}
		}
	},

	/**
	 * QT重播信息
	 */
	InitQtReplyInfo : function() {
		var self = GAME_LPL_PAGE;
		var goUrl = self.dQTReplyUrl + '?date=' + milo.toDateString();
		$.getJSON(goUrl, function(retObj) {
			if (retObj.code == 0) {
				var data = retObj.data;
				if (data.list.length <= 0) {
					$('#header_1').html('暂无直播');
					$('#liveCon').html('').css('background', 'none');
					return;
				}
				var list = data.list;
				var isQtReply = false;
				for ( var i in list) {
					var live = list[i];
					var starttime = TOOLS.Strtotime(live.begin_date);
					var endtime = TOOLS.Strtotime(live.end_date);
					var now = new Date().getTime() / 1000;
					var dateArr = live.begin_date.split(" ");
					var matchName = live.team_a_name + ' VS ' + live.team_b_name;
					var gameName = live.name.replace(matchName, '');
					if (now >= starttime && now <= endtime) {
						isQtReply = true;
						self.QtReply({
							name : live.name + ' ' + live.sub_title,
							room_id : live.room_id
						})
					}
				}
				if (isQtReply == false) {
					self.QtReply({
						name : '2016全明星精彩回放',
						room_id : self.dQTReplayId
					});
				}
			}
		});
	},

	QtReply : function(obj) {
		var self = GAME_LPL_PAGE;
		$('#live-status').html('正在回放：');
		$('#game_name').html(obj.name);
		// $('#game_name').html("2017LPL夏季赛常规赛");
		// $('#game_name2').html("2017LPL夏季赛常规赛");
		self.MatchLive('', '', self.dQTReplayId,self.dQTReplayRoomId);
	},

	/**
	 * 直播函数 tx_h-腾讯高清、tx_l-腾讯标清、qt_h-QT高清
	 */
	MatchLive : function(txh, txl, qth, roomid) {
		var list = $("#liveTab li"), channel = null;
		// 解决移动端不能播放的问题（ios没有flash插件）
		var u = navigator.userAgent;
		var isAndroid = u.indexOf('Android') > -1 || u.indexOf('Adr') > -1; // android终端
		var isiOS = !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/); // ios终端
		if (isiOS || isAndroid) {
			channel = 'http://qt.qq.com/zhibo/mobile.html?tag=' + qth;
		} else {
			channel = 'http://qt.qq.com/zhibo/index.html?tag=' + qth + '&ADTAG=zhibo.inner.lolweb.match2&usebarrage=1';
		}
		// 腾讯直播
		function txLive(channel) {
			var video = new tvp.VideoInfo();
			video.setChannelId(channel);
			var myplayer = new tvp.Player();
			myplayer.create({
				width : 720,
				height : 458,
				video : video,
				type : 1,
				modId : "liveCon",
				flashWmode : "opaque",
				autoplay : true
			});
		}
		// QT直播
		function qtLive(channel, width, height, id) {
			iframesrc = channel;
			$('#' + id).html('<iframe id="ifrVideo" frameborder="0" scrolling="no" width="' + width + '" height="' + height + '" src="' + iframesrc + '"></iframe>');
		}
		if (+qth) {
			qtLive(channel, 720, 458, 'liveCon');
		} else if (+txh) {
			txLive(txh);
		} else if (+txl) {
			txLive(txl);
		}

		// 聊天室
		if (roomid) {
			// 进入房间
			chat.joinRoom(roomid);
		}
	},

	// 初始化mvp数据
	InitMVPInfo : function() {
		var self = GAME_LPL_PAGE;
		var teamList = TeamList.msg;
		var PositionData = [ [], [ [ '场均击杀', 'sAveragingKill', 2 ], [ '场均补刀', 'sAveragingLastLasthit', 1 ], [ '场均承受伤害', 'sAveTotalDamageTaken', 1 ], [ '参团率', 'sAveragingOfferedRate', 3 ] ],// 上单
		[ [ '场均英雄伤害', 'sAveTotalDamToChamp', 1 ], [ '场均击杀', 'sAveragingKill', 2 ], [ '场均补刀', 'sAveragingLastLasthit', 1 ], [ '参团率', 'sAveragingOfferedRate', 3 ] ],// 中单
		[ [ '场均英雄伤害', 'sAveTotalDamToChamp', 1 ], [ '场均击杀', 'sAveragingKill' ], [ '场均补刀', 'sAveragingLastLasthit' ], [ '参团率', 'sAveragingOfferedRate', 3 ] ],// AD
		[ [ '场均助攻', 'sAveragingAssists', 2 ], [ '场均插眼', 'sAveragingWardPlaced', 1 ], [ '场均排眼', 'sAveragingWardKilled', 1 ], [ '参团率', 'sAveragingOfferedRate', 3 ] ],// 辅助
		[ [ '场均承受伤害', 'sAveTotalDamageTaken', 1 ], [ '场均排眼', 'sAveragingWardKilled', 1 ], [ '场均KDA', 'sAveragingKDA', 2 ], [ '参团率', 'sAveragingOfferedRate', 3 ] ] // 打野
		];
		var goUrl = "http://lpl.qq.com/web201612/data/LOL_NEWMATCH_FIR_PAGE_MOST_VALUE_PLAYERS.js";
		$.getScript(goUrl, function() {
			// id="MVPLIST_0"
			if (MostValuePlayers.status == 0) {
				$('#MVCmore').attr('href', 'http://lpl.qq.com/es/data/rank.shtml?iGameId=' + self.dGameId);
				self.dMvpList = MostValuePlayers.msg;
				// MVP列表
				for ( var x in self.dMvpList) {
					var sHtml = '';
					for ( var k in self.dMvpList[x]) {
						var data = self.dMvpList[x][k];
						var MemberInfo = MemberList.msg[data['iMemberId']];
						var TeamInfo = TeamList.msg[data['iTeamId']];
						if (k > 0) {
							var iconMedal = '<i class="iconMedal iconMedal-0' + k + '"></i>';
						} else {
							var iconMedal = '<i class="iconMedal"></i>';
						}
						sHtml += k == 3 ? '<li class="last-list">' : '<li>';
						sHtml += ' <img src="' + MemberInfo.UserIcon + '" width="184" height="161" title="" /> <i class="iconCorps"><img src="' + TeamInfo.TeamLogo + '" style="width: 100%;height: auto;" /></i> ' + iconMedal;
						sHtml += '<p class="playerName">' + MemberInfo.GameName + '</p>';
						sHtml += '<div class="name_cover"></div>';
						sHtml += '<div class="gameInfo">';
						sHtml += '<p> <span class="infoSpan_01">' + GetDigit2(data[PositionData[x][0][1]]) + '</span> <span class="infoSpan_02">' + PositionData[x][0][0] + '</span> </p>';
						sHtml += '<p> <span class="infoSpan_01">' + GetDigit2(data[PositionData[x][1][1]]) + '</span> <span class="infoSpan_02">' + PositionData[x][1][0] + '</span> </p>';
						sHtml += '<p> <span class="infoSpan_01">' + GetDigit2(data[PositionData[x][2][1]]) + '</span> <span class="infoSpan_02">' + PositionData[x][2][0] + '</span> </p>';
						sHtml += '<p> <span class="infoSpan_01">' + GetDigit3(data[PositionData[x][3][1]]) + '%</span> <span class="infoSpan_02">' + PositionData[x][3][0] + '</span> </p>';
						var key = decodeURIComponent(decodeURIComponent(MemberInfo.GameName));
						sHtml += '<p> <a target="_blank" href="http://lpl.qq.com/es/video.shtml?key=' + key + '">个人视频</a> </p>';
						sHtml += '<p> <a target="_blank" href="http://lpl.qq.com/es/player_detail.shtml?mbid=' + data['iMemberId'] + '">详细信息</a> </p>';
						sHtml += '</div>';
						sHtml += '</li>';
					}
					$('#MVPLIST_' + x).html(sHtml);
				}
			}
		});
	},
	ResetBorderBottom : function() {
		$(".match-ing").addClass('bornone');
		$(".match-ing").prev().addClass('bornone');
	}
}
// 直播函数 tx_h-腾讯高清、tx_l-腾讯标清、qt_h-QT高清
function matchLive(txh, txl, qth) {
	var list = $("#liveTab li"), channel = null;
	$("#tx_h").attr('data-id', txh);
	$("#tx_l").attr('data-id', txl);
	// 解决移动端不能播放的问题（ios没有flash插件）
	var u = navigator.userAgent;
	var isAndroid = u.indexOf('Android') > -1 || u.indexOf('Adr') > -1; // android终端
	var isiOS = !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/); // ios终端
	if (isiOS || isAndroid) {
		$("#qt_h").attr('data-id', 'http://qt.qq.com/zhibo/mobile.html?tag=' + qth);
	} else {
		$("#qt_h").attr('data-id', 'http://qt.qq.com/zhibo/index.html?tag=' + qth + '&ADTAG=zhibo.inner.lolweb.match2&usebarrage=1');
	}
	// 腾讯直播
	function txLive(channel) {
		var video = new tvp.VideoInfo();
		video.setChannelId(channel);
		var myplayer = new tvp.Player();
		myplayer.create({
			width : 900,
			height : 560,
			video : video,
			type : 1,
			modId : "liveCon",
			flashWmode : "opaque",
			autoplay : true
		});
	}
	// QT直播
	function qtLive(channel) {
		var iframesrc = channel;
		$("#liveCon").html('<iframe id="ifrVideo" frameborder="0" scrolling="no" width="900" height="560" src="' + iframesrc + '"></iframe>')
	}
	list.click(function() {
		$(this).addClass('curr').siblings().removeClass('curr');
		channel = $(this).find("a").attr("data-id");
		var site = $(this).attr("rel");
		if (site == "tx") {
			txLive(channel)
		}
		if (site == "qt") {
			qtLive(channel)
		}
	})
	if (+qth) {
		list.eq(2).click();
	} else if (+txh) {
		list.eq(0).click();
	} else if (+txl) {
		list.eq(1).click();
	}
	// 控制腾讯直播流是否开放
	if (txh == '') {
		list.eq(0).remove();
		list.eq(1).remove();
	}
};// 直播函数 tx_h-腾讯高清、tx_l-腾讯标清、qt_h-QT高清
function matchLive(txh, txl, qth) {
	var list = $("#liveTab li"), channel = null;
	$("#tx_h").attr('data-id', txh);
	$("#tx_l").attr('data-id', txl);
	// 解决移动端不能播放的问题（ios没有flash插件）
	var u = navigator.userAgent;
	var isAndroid = u.indexOf('Android') > -1 || u.indexOf('Adr') > -1; // android终端
	var isiOS = !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/); // ios终端
	if (isiOS || isAndroid) {
		$("#qt_h").attr('data-id', 'http://qt.qq.com/zhibo/mobile.html?tag=' + qth);
	} else {
		$("#qt_h").attr('data-id', 'http://qt.qq.com/zhibo/index.html?tag=' + qth + '&ADTAG=zhibo.inner.lolweb.match2&usebarrage=1');
	}
	// 腾讯直播
	function txLive(channel) {
		var video = new tvp.VideoInfo();
		video.setChannelId(channel);
		var myplayer = new tvp.Player();
		myplayer.create({
			width : 900,
			height : 560,
			video : video,
			type : 1,
			modId : "liveCon",
			flashWmode : "opaque",
			autoplay : true
		});
	}
	// QT直播
	function qtLive(channel) {
		var iframesrc = channel;
		$("#liveCon").html('<iframe id="ifrVideo" frameborder="0" scrolling="no" width="900" height="560" src="' + iframesrc + '"></iframe>')
	}
	list.click(function() {
		$(this).addClass('curr').siblings().removeClass('curr');
		channel = $(this).find("a").attr("data-id");
		var site = $(this).attr("rel");
		if (site == "tx") {
			txLive(channel)
		}
		if (site == "qt") {
			qtLive(channel)
		}
	})
	if (+qth) {
		list.eq(2).click();
	} else if (+txh) {
		list.eq(0).click();
	} else if (+txl) {
		list.eq(1).click();
	}
	// 控制腾讯直播流是否开放
	if (txh == '') {
		list.eq(0).remove();
		list.eq(1).remove();
	}
};
// 概率计算
function GetDigit1(v) {
	if (v > 0)
		return parseInt(v * 10) / 10;
	return 0;
}
// 概率计算
function GetDigit2(v) {
	if (v > 0)
		return parseInt(v * 100) / 100;
	return 0;
}
// 概率计算
function GetDigit3(v) {
	if (v > 0)
		return parseInt(v * 10000) / 100;
	return 0;
}

$(".clspop").on("click", function() {
	$("#vpop").html("");
	$("#videopop").hide();
})
function dragVideo() {
	var box = document.getElementById('videopop');
	box.onmousedown = function(event) {
		var e = event || window.event, t = e.target || e.srcElement,
		// 鼠标按下时的坐标x1,y1
		x1 = e.clientX, y1 = e.clientY,
		// 鼠标按下时的左右偏移量
		dragLeft = this.offsetLeft, dragTop = this.offsetTop;
		document.onmousemove = function(event) {
			var e = event || window.event, t = e.target || e.srcElement,
			// 鼠标移动时的动态坐标
			x2 = e.clientX, y2 = e.clientY,
			// 鼠标移动时的坐标的变化量
			x = x2 - x1, y = y2 - y1;
			box.style.left = (dragLeft + x) + 'px';
			box.style.top = (dragTop + y) + 'px';
		}
		document.onmouseup = function() {
			this.onmousemove = null;
		}
	}
}

GAME_LPL_PAGE.Init();