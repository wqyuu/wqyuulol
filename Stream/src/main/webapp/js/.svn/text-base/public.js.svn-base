//初始化cookie里保存的大区
function InitCookieArea(areaid){
	$("#areasel").html("更改大区");
	$("#jUserArea").html(GetAreaById(areaid));
	$("#areaid").val(areaid);
	$("#jUserArea").show();
}

function GetAreaById(areaId){
	if(areaId==31){
		return "峡谷之巅";
	}
	for(var x in LOLServerSelect.STD_DATA){
		if(areaId==LOLServerSelect.STD_DATA[x].v){
			var areaInfo = LOLServerSelect.STD_DATA[x].t.split(' ');
			return areaInfo[0];
		}
	}
	return '';
}

//初始化大区选择
function InitAreaSel() {
	need([ "biz.login", "biz.roleselector" ], function(LoginManager,
			RoleSelector) {
		LoginManager.checkLogin(function() {
			$("#loginedInfo").html(LoginManager.getUserUin());
			RoleSelector.init({
				'gameId' : 'lol',
				'isQueryRole' : true,
				'isShutdownSubmit' : true,
				'submitEvent' : function(roleObject) {
					var p1 = roleObject.submitData.areaid;
					var p2 = roleObject.submitData.areaname;
					var tmp = p2.split(" ");
					$("#areasel").html("更改大区");
					$("#jUserArea").html(tmp[0]);
					$("#areaid").val(p1);
					$("#jUserArea").show();
					milo.cookie.set('LPL_COM_AREAID'+PUBLIC_FUNCTION.diUin,p1);
					PUBLIC_FUNCTION.diArea = p1;
					InitUserInfo();
					
					try {
						var _data = milo.unSerialize(query_role_result.data);
						var accountid = _data["accountId"];
						changeArea(p1, p2, accountid);
					} catch(e) {}

					try {
                                                 YSBox.InitBoxInfo();
					} catch(e) {}
				}
			});
			RoleSelector.show();
		}, function() {
			LoginManager.login();
		});
	});
}

//初始化召唤师昵称/头像
function InitUserInfo(){
	var goUrl = "http://apps.game.qq.com/lol/api/v2013/summoner.php?p2="+PUBLIC_FUNCTION.diArea;
	$.getScript(goUrl, function() {
		if (retObj.status == 0) {
			var data = retObj.msg.info;
			$("#loginedInfo").html(decodeURI(data.name));
			$('#logined img').attr("src", "http://ossweb-img.qq.com/images/lol/img/profileicon2/profileicon"+data.icon+".jpg");
		}
	})
}

function InitSearchHotword() {
	var goUrl = "http://lpl.qq.com/web201612/data/LOL_NEWMATCH_FIR_PAGE_SEARCH_WORDS.js";
	$.getScript(goUrl, function() {
		if (SearchWords.status == 0) {
			var hotwords = SearchWords.msg.Title.split('#');
			var sHtml = '';
			if ($('#search-input').val() != '') {
				$('.keyword').hide();
			}
			for ( var x in hotwords) {
				sHtml += '<a href="http://lpl.qq.com/es/search.shtml?search=' + encodeURIComponent(encodeURIComponent(hotwords[x])) + '">' + hotwords[x] + '</a>';
			}
			$('.keyword').html(sHtml);
		}
	})
}

var GamePlace = [ '', '上单', '中单', 'ADC', '辅助', '打野' ];
var GamePlaceEn = [ '', 'TOP', 'MID', 'ADC', 'SUP', 'JUG' ];
var GetGameTypeList = [ '默认', '春季赛常规赛', '', '', '', '春季赛季后赛', '春季赛升降级赛', '夏季赛常规赛', '夏季赛季后赛', '夏季赛升降级赛', '胜者A组', '败者A组', '胜者B组', '败者B组', '胜者C组', '败者C组', '胜者D组', '败者D组', '淘汰赛', '小组赛','广州赛区','上海赛区','武汉赛区','长沙赛区','北京赛区','赛区对抗赛','1V1淘汰赛','娱乐赛','入围赛','预选赛','2017全球总决赛选拔赛','西安赛区'];
var GameModeList = [ '默认', 'BO1', 'BO2', 'BO3', 'BO5', '射手模式', '刺客模式', '克隆大作战', '双人共玩', '魄罗王大战' ];
var LivingInfoCfg = {
	'49' : {
		liveId : '764502578',
		chatRoomId : '94961178'
	},
	'50' : {
		liveId : '1076403327',
		chatRoomId : '3239927'
	},
	'52' : {
		liveId : '899617728',
		chatRoomId : '77406728'
	},
	'59' : {
		liveId : '764502578',
		chatRoomId : '94961178'
	},
        '70' : {
		liveId : '764502578',
		chatRoomId : '94961178'
	},
        '37' : {
		liveId : '899617728',
		chatRoomId : '77406728'
	}
}

var PUBLIC_FUNCTION = {
	bGameIdLpl : 5,
	bGameIdLspl : 7,
	BMatchLPLId : 49,
	BMatchLSPLId : 50,
	BMatchLCKLId : 52,
	dQTReplayId : '764502578',
	dQTReplayChatRoomeId : '94961178',
	TeamScoreType : '7',
	dBMatchUrl : "http://apps.game.qq.com//lol/match/apis/searchBMatchInfo.php",
	dPinLunUrl : "http://apps.game.qq.com/lol/act/a20140627video/getCommentPublic.php?p2=NP_CommentId",
	dDinYueUrl : "http://apps.game.qq.com/lol/match/apis/searchVideoSubscibe.php",
	diUin : 0,
	diArea : 0,
	dVideoPage : "http://lpl.qq.com/es/video_detail.shtml",
	dVideoList : {}, // 赛事视频-已加载数据
	dVideosTabNum : 12,// 赛事视频--显示多少赛事tab
	dVideosSTabNum : 12,// 赛事视频--显示多少二级赛事tab
	dLiveMatchList : {
        bMatchMSILId : 59,
        bMatchDEId : 70,
		bMatchLPLId : 49,
		bMatchLSPLId : 50,
		bMatchLCKLId : 52,
        bMatchLCLId : 37
	},
	
	/**
	 * 初始化视频中心-赛事tab
	 */
	InitVideoNewsTab : function(){
		var self = PUBLIC_FUNCTION;
		var arr = ["http://lpl.qq.com/web201612/data/LOL_NEWMATCH_FIR_PAGE_VIDEO_TAB.js","http://lpl.qq.com/web201612/data/LOL_MATCH2_NEWS_CATE_LIST.js","http://lpl.qq.com/web201612/data/LOL_NEWMATCH_FIR_PAGE_WORLDHERO_TAB.js"];
		include(arr,function(){
			var tabIds = VideoTab.msg.Title.split('#');
			var htmlStr = '';
			var limit = (tabIds.length<=self.dVideosTabNum?tabIds.length:self.dVideosTabNum);
			for(var i=0;i<limit;i++){
				var id = tabIds[i];
				switch(id){
					case '0':
						htmlStr += '<li class="fl"><a onclick="PUBLIC_FUNCTION.InitVideoNews(0,this)" href="javascript:;">全部</a></li>';
						break;
					case '20':
						var cateInfo = self.getCateById(id);
						htmlStr += '<li class="fl"><a onclick="PUBLIC_FUNCTION.InitVideoNews(20,this)" id="cate20" href="javascript:;">'+cateInfo['CateName']+'</a></li>';
						break;
					//新增天下英雄tab，点击显示天下英雄各个栏目  add by 996 20170712
					case '112':
						var cateInfo = self.getCateById(id);
						htmlStr += '<li class="fl"><a onclick="PUBLIC_FUNCTION.InitVideoNews(112,this)" id="cate112" href="javascript:;">'+cateInfo['CateName']+'</a></li>';
						break;
					default:
						var cateInfo = self.getCateById(id);
						htmlStr += '<li class="fl"><a onclick="PUBLIC_FUNCTION.InitVideoNews('+cateInfo['CateId']+',this)" href="javascript:;">'+cateInfo['CateName']+'</a></li>';
						break;
				}
			}
			self.InitVideoMathchTab();
			self.InitWorldHeroVideoTabs();
			$("#videoSortList").html(htmlStr);
			$('#videoSortList li').eq(0).children('a').trigger('click');
		});
	},
	
	InitVideoMathchTab : function (){
		var self = PUBLIC_FUNCTION;
		var bGameList = GameList.msg.bGameList;
		var length = bGameList.length;
		var limit = length<=self.dVideosSTabNum?length:self.dVideosSTabNum;
		var sHtml = '';
		self.dBGameList = bGameList;
		for(var i=0;i<limit;i++){
			sHtml += '<li class="fl"><a href="javascript:;" onclick="PUBLIC_FUNCTION.InitVideoNews('+bGameList[i].GameId+',this,1);">'+bGameList[i].GameName+'</a></li>';
		}
		$("#video-child-nav").html(sHtml);
	},
	//新增天下英雄tab，点击显示天下英雄各个栏目  add by 996 20170712
	InitWorldHeroVideoTabs : function (){
		var self = PUBLIC_FUNCTION;
		var cateInfo = {};
		var sHtml = '';
		var data = WorldHeroTab.msg.Title.split('#');
		var length = data.length;
		var limit = length<=self.dVideosSTabNum?length:self.dVideosSTabNum;
		for(var i=0;i<limit;i++){
			cateInfo = self.getCateById(data[i]);
			sHtml += '<li class="fl"><a href="javascript:;" onclick="PUBLIC_FUNCTION.InitVideoNews('+data[i]+',this,2);">'+cateInfo['CateName']+'</a></li>';
		}
		$("#video-child-nav-1").html(sHtml);
	},
	
	getCateById : function (id){
		if ('undefined' == typeof (NewsCateList['msg'][id][0])) {
			return false;
		}
		return NewsCateList['msg'][id][0];
	},
	
	/**
	 * 初始化赛事视频内容
	 */
	InitVideoNews : function(id,obj,flag){
		var self = PUBLIC_FUNCTION;
		var sHtml = "";
		if(id==20 && !flag){
			$('#video-child-nav').show();
			$('#video-child-nav-1').hide();
			$('#video-child-nav li').eq(0).children('a').trigger('click');
			return;
		}else if(id==112 && !flag){
			$('#video-child-nav-1').show();
			$('#video-child-nav').hide();
			$('#video-child-nav-1 li').eq(0).children('a').trigger('click');
			return;
		}
		else if((id!=20 || id!=112) && (!flag)){
			$('#video-child-nav').hide();
			$('#video-child-nav-1').hide();
		}
		// 判断数据是否已经加载过
		var data;
		if(flag==1){
			if(self.dVideoList[20] && self.dVideoList[20][id]){					
				data = self.dVideoList[20][id];
			}
		}
		if(flag==2){
			if(self.dVideoList[112] && self.dVideoList[112][id]){					
				data = self.dVideoList[112][id];
			}
		}
		else{
			if(self.dVideoList[id] && !flag){
				data = self.dVideoList[id];
			}
		}
		if(data){
			self.FillVideoList(data);
			if(obj){
				$(obj).addClass('on').parent().siblings().children("a").removeClass('on');
				if(flag==1){
					$('#cate20').addClass('on').parent().siblings().children("a").removeClass('on');
				}
				if(flag==2){
					$('#cate112').addClass('on').parent().siblings().children("a").removeClass('on');
				}
			}
		} else {
			if(id==0){
				// 全部
				var goUrl = "http://lpl.qq.com/web201612/data/LOL_NEWMATCH_HOMEPAGE_LATEST_VIDEOS_LIST.js";
			}else if(flag==1){
				// 赛事回顾二级分类 根据赛事查询
				var goUrl = "http://apps.game.qq.com/lol/match/apis/searchNewsInfo.php?p3=20&p8=2&p0="+id+"&r1=VideoInfo&pagesize=12";
			}
			else if(flag==2){
				// 天下英雄tab下面的各个二级分类
				var goUrl = "http://apps.game.qq.com/lol/match/apis/searchNewsInfo.php?p8=2&p3="+id+"&r1=VideoInfo&pagesize=12";
			}
			else{
				// 各个二级分类
				var goUrl = "http://apps.game.qq.com/lol/match/apis/searchNewsInfo.php?p8=2&p3="+id+"&r1=VideoInfo&pagesize=12";
			}
			$.getScript(goUrl,function(){
				if(VideoInfo.status==0){
					if(id==0){							
						var data = VideoInfo.msg;
					}else{							
						var data = VideoInfo.msg.result;
					}
					if(flag==1){
						if(!self.dVideoList[20]){
							self.dVideoList[20] = {};
						}
						self.dVideoList[20][id] = data;
					}
					else if(flag==2){
						if(!self.dVideoList[112]){
							self.dVideoList[112] = {};
						}
						self.dVideoList[112][id] = data;
					}
					else{
						self.dVideoList[id] = data;
					}
					if(data!=""){
						self.FillVideoList(data);
					}
					if(obj){
						$(obj).addClass('on').parent().siblings().children("a").removeClass('on');
						if(flag==1){
							$('#cate20').addClass('on').parent().siblings().children("a").removeClass('on');
						}
						if(flag==2){
							$('#cate112').addClass('on').parent().siblings().children("a").removeClass('on');
						}
					}
				}else{
					alert(VideoInfo.msg);
				}
			});
		}
	},
	
	FillVideoList: function(data){
		var self = PUBLIC_FUNCTION;
		var sHtml = '';
		for(var x in data){
			var videoData = jQuery.parseJSON(data[x].sExt1);
			var min = Math.floor(+videoData.iTime/60);
			if(min.toString().length<=1){
				min = '0'+min;
			}
			var sec = +videoData.iTime%60;
			if(sec.toString().length<=1){
				sec = '0'+sec;
			}
			sHtml += '<li class="fl">'
				   + '<img src="'+videoData.sImg+'" width="190" height="110">'
                                      + '<div class="vidcover"><a target="_blank" href="'+self.dVideoPage+'?nid='+data[x].NewsId+'" onclick="pgvSendClick({hottag:\'lpl.index.video.'+data[x].NewsId+'\',\'virtualDomain\':\'lol.qq.com\'})"></a></div>'
				   + '<p><a target="_blank" href="'+self.dVideoPage+'?nid='+data[x].NewsId+'" onclick="pgvSendClick({hottag:\'lpl.index.video.'+data[x].NewsId+'\',\'virtualDomain\':\'lol.qq.com\'})">'+videoData.sName+'</a></p>'
				   + '<div class="clearfix"><span class="ico fl">'+videoData.iTotal+'</span>'
				   + '<span class="pv-long"><i>'+min+':'+sec+'</i></span>'
				   + '<span class="fr">'+TOOLS.ReloadPubdate(data[x].indexDate)+'</span>'
				   + '</div>'
				   + '</li>';
		}
		$("#video_list").html(sHtml);
	},

	getLiveMatchObj : function() {
		if ('undefined' == typeof (LiveBMatchList)) {
			return false;
		}
		var self = PUBLIC_FUNCTION;
		var liveMatchLIst = LiveBMatchList.msg;
		var length = Object.getOwnPropertyNames(self.dLiveMatchList);
		for ( var i in self.dLiveMatchList) {
			if (!$.isEmptyObject(liveMatchLIst[self.dLiveMatchList[i]]) && liveMatchLIst[self.dLiveMatchList[i]]!='') {
				return liveMatchLIst[self.dLiveMatchList[i]];
			}
		}
		return false
	},

	// 填充大场导航条(赛事中心->主赛事->子赛事->进度->大场名称)
	FillNewsHtml : function(data) {
		var sHtml = '<a href="javascript:;">赛事中心</a>';
		if (data.bGameName) {
			sHtml += '<span class="sline"></span><a href="javascript:;" id="bgame">' + data.bGameName + '</a>';
		}

		if (data.sGameName && +data.sGameId != 0) {
			sHtml += '<span class="sline"></span><a href="javascript:;" id="sgame">' + data.sGameName + '</a>';
		} else if (data.GameName) {
			sHtml += '<span class="sline"></span><a href="javascript:;" id="sgame">' + data.GameName + '</a>';
		}

		if (data.sMatchNote) {
			sHtml += '<span class="sline"></span><a href="javascript:;" id="matchnote">' + data.sMatchNote + '</a>';
		} else if (data.GameProcName) {
			sHtml += '<span class="sline"></span><a href="javascript:;" id="matchnote">' + data.GameProcName + '</a>';
		}

		if (data.bMatchName) {
			sHtml += '<span class="sline"></span><span id="bmatch"  class="cimi-this">' + data.bMatchName + '</span>';
		} else {
			var lastLabel = sHtml.substr(sHtml.lastIndexOf("<a"));
			var lastCrumb = '<span class="cimi-this">' + lastLabel.substring(lastLabel.indexOf(">") + 1, lastLabel.lastIndexOf("</")) + '</span>';
			sHtml = sHtml.substring(0, sHtml.lastIndexOf("<a")) + lastCrumb;
		}
		$("#location_main").html(sHtml);
	},
	// 填充大场简要信息
	FillBMatchHtml : function(data) {
		var self = PUBLIC_FUNCTION;
		var teamList = TeamList.msg;
		$("#match_date").html(data.MatchDate);
		$("#match_progress").html(TOOLS.FormateMatchStatus(+data.MatchStatus));
		$("#teamA_page").attr('href', 'http://lpl.qq.com/es/team_detail.shtml?tid=' + data.TeamA);
		$("#teamA_page").html('<img alt="" src="' + teamList[data.TeamA].TeamLogo + '">');
		$("#teamA_name").html(teamList[data.TeamA].TeamName);
		$("#teamA_score").html(data.ScoreA);

		$("#teamB_page").attr('href', 'http://lpl.qq.com/es/team_detail.shtml?tid=' + data.TeamB);
		$("#teamB_page").html('<img alt="" src="' + teamList[data.TeamB].TeamLogo + '">');
		$("#teamB_name").html(teamList[data.TeamB].TeamName);
		$("#teamB_score").html(data.ScoreB);
		$("#match_detail").attr('href', 'http://lpl.qq.com/es/stats.shtml?bmid=' + data.bMatchId).attr('target', '_blank');
		if (+data.MatchStatus == 3 && +data.MatchWin == 1) {
			$("#teamA_result").show();
			$("#teamA_ret").addClass('victory');
		} else if (+data.MatchStatus == 3 && +data.MatchWin == 2) {
			$("#teamB_result").show();
			$("#teamB_ret").addClass('victory');
		}
		self.InitTwoTeamRank(data.GameId, data.TeamA, data.TeamB);
		// 相关赛事比分翻开效果
		scheduleHover(".match-score-box", ".match-score-box", "http://game.gtimg.cn/images/lol/match/public/open_s.gif", 50);
		// 显示资讯相关赛事div
		$("#related_match").show();
		return;
	},
	InitTwoTeamRank : function(sGameTd, teamA, teamB) {
		// 查询战队当前排名
		var goUrl = "http://apps.game.qq.com/lol/match/apis/searchGameTeamCurrentRank.php?p0=" + sGameTd + '&p1=' + teamA + ',' + teamB + '&r1=teamRank';
		$.getScript(goUrl, function() {
			if (teamRank.status == 0) {
				var rankInfo = teamRank.msg;
				for ( var x in rankInfo) {
					if (rankInfo[x].TeamId == teamA) {
						$("#teamA_rank").html(rankInfo[x].Rank);
					} else {
						$("#teamB_rank").html(rankInfo[x].Rank);
					}
				}
			} else {
				$(".team-ranking").hide();
			}
		});
		return;
	},
	// 加载评论
	//InitComment : function(id, type) {
	//	var self = PUBLIC_FUNCTION;
	//	var goUrl = self.dPinLunUrl + '&p0=' + id + '&p1=' + type;
	//	$.getScript(goUrl, function() {
	//		if (commentObj.status == 0) {
	//			var commentId = commentObj.msg;
	//			$("#comment_div").html('');
	//			GetComment(commentId, 'comment_div', 'PC');
	//			return;
	//		}
	//		$("#comment_div").html('');
	//	});
	//},
	// 视频订阅
	DinYue : function(qtMatchId) {
		need([ "biz.login" ], function(LoginManager) {
			LoginManager.checkLogin(function() {
				var self = PUBLIC_FUNCTION;
				var goUrl = self.dDinYueUrl + "?type=1&r1=retObj&elements_id=" + qtMatchId;
				$.getScript(goUrl, function() {
					if (retObj.status == 0) {
						alert("预约成功");
						$("#dinyue_" + qtMatchId).html("取消预约");
						$("#dinyue_" + qtMatchId).attr('href', 'javascript:PUBLIC_FUNCTION.CancelDinYue(' + qtMatchId + ');');
					} else {
						if (retObj.msg == "Already Subscribed") {
							alert("您已经预约过这场赛事");
							$("#dinyue_" + qtMatchId).html("取消预约");
							$("#dinyue_" + qtMatchId).attr('href', 'javascript:PUBLIC_FUNCTION.CancelDinYue(' + qtMatchId + ');');
						} else {
							alert(retObj.msg);
						}
					}
				});
			}, function() {
				LoginManager.login();
			});
		});
	},
	// 取消视频订阅
	CancelDinYue : function(qtMatchId) {
		need([ "biz.login" ], function(LoginManager) {
			LoginManager.checkLogin(function() {
				var self = PUBLIC_FUNCTION;
				var goUrl = self.dDinYueUrl + "?type=2&r1=retObj&elements_id=" + qtMatchId;
				$.getScript(goUrl, function() {
					if (retObj.status == 0) {
						alert("取消预约成功");
						$("#dinyue_" + qtMatchId).html("预约直播");
						$("#dinyue_" + qtMatchId).attr('href', 'javascript:PUBLIC_FUNCTION.DinYue(' + qtMatchId + ');');
					} else {
						alert(retObj.msg);
					}
				});
			}, function() {
				LoginManager.login();
			});
		});
	},
	// 初始化右上角已结束赛事(显示最近三条)
	InitbriefMatchList : function() {
		var self = PUBLIC_FUNCTION;
		var sHtml = '';
		var sGameId = TOOLS.GetQueryString('sgid');
		if (sGameId) {
			var goUrl = self.dBMatchUrl + '?p1=' + sGameId + '&p4=3&p6=2&r1=retObj';
			$.getScript(goUrl, function() {
				if (retObj.status == 0) {
					var data = retObj.msg.result;
					var limit = data.length > 3 ? 3 : data.length;
					for ( var i = 0; i < limit; i++) {
						sHtml += '<li><i class="base-spr ht"></i>' + '<a href="#">' + data[i].GameName + data[i].GameProcName + '：' + data[i].TeamNameA + ' ' + data[i].ScoreA + '-' + data[i].ScoreB + ' ' + data[i].TeamNameB + '</a><span>[已结束]</span><p class="notice-line"></p></li>';
					}
					$("#notice_list").html(sHtml);
				}
			});
		}
	},
	// 返回选手擅长位置
	ReloadMemberGamePlace : function(sGamePlace) {
		if (sGamePlace && sGamePlace != "") {
			var arr = sGamePlace.split(",");
			var html = "";
			for ( var x in arr) {
				if (arr[x] && arr[x] != "") {
					html += GamePlace[+arr[x]] + ','
				}
			}
			html = html.substr(0, html.length - 1);
			return html;
		} else {
			return "";
		}
	},
	// 视频中心统计视频播放量
	UploadTotalPlay : function(id, control) {
		if (control == 1) {
			var timer = setInterval(function() {
				if (player.getPlaytime() > 0) {
					loadScript('http://apps.game.qq.com/lol/act/website2013/updateTotalPlay.php?p0=lol&p1=video&r1=res&p2=' + id);
					clearInterval(timer);
				}
			}, 500);
		} else {
			loadScript('http://apps.game.qq.com/lol/act/website2013/updateTotalPlay.php?p0=lol&p1=video&r1=res&p2=' + id);
		}
	},
	// EAS数据上报函数 20160927
	// paramObj 上报参数对象
	EasDataUp : function(paramObj) {
		if (paramObj) {
			var self = PUBLIC_FUNCTION;
			LOL_Comm_Log.Click({
				'actionType' : paramObj.actionType ? paramObj.actionType : '',// 上报类型
				'contenProperty' : paramObj.contenProperty ? paramObj.contenProperty : '',// 内容分类
				'adName' : paramObj.adName ? paramObj.adName : '',// 广告位名称
				'adId' : paramObj.adId ? paramObj.adId : '',// 广告位id
				'contentId' : paramObj.contentId ? paramObj.contentId : '',// 内容id
				'contentType' : paramObj.contentType ? paramObj.contentType : '',// 内容分类
				'clickUrl' : paramObj.clickUrl ? paramObj.clickUrl : '',// 目标url：曝光、点击
				'svId' : paramObj.svId ? paramObj.svId : ''// 视频原始id
			})
		}
	},
	// 赛程列表(查看战报)click日志上报函数 20160927
	ReportDataClickLogUp : function(bmid) {
		if (bmid) {
			var self = PUBLIC_FUNCTION;
			LOL_Comm_Log.Click({
				'actionType' : 'click',// 上报类型
				'contenProperty' : 'wordlink',// 内容分类
				'contentId' : bmid,// 内容id
				'contentType' : 'match',// 内容分类
				'clickUrl' : 'http://lpl.qq.com/es/stats.shtml?bmid=' + bmid,// 目标url：曝光、点击
				'adId' : 'lolweb.match.reportclick.' + bmid
			})
		}
	},
	// 资讯列表click日志上报函数 20160927
	NewsClickLogUp : function(newsid, type) {
		if (newsid) {
			var self = PUBLIC_FUNCTION;
			LOL_Comm_Log.Click({
				'actionType' : 'click',// 上报类型
				'contenProperty' : type,// 内容分类
				'contentId' : newsid,// 内容id
				'contentType' : 'news',// 内容分类
				'clickUrl' : 'http://lpl.qq.com/es/news_detail.shtml?nid=' + newsid,// 目标url：曝光、点击
				'adId' : 'lolweb.match.newsclick.' + newsid
			})
		}
	},
	// 视频列表click日志上报函数 20160927
	VideosClickLogUp : function(newsid) {
		if (newsid) {
			var self = PUBLIC_FUNCTION;
			LOL_Comm_Log.Click({
				'actionType' : 'click',// 上报类型
				'contenProperty' : 'image',// 内容分类
				'contentId' : newsid,// 内容id
				'contentType' : 'video',// 内容分类
				'clickUrl' : 'http://lpl.qq.com/es/video_detail.shtml?nid=' + newsid,// 目标url：曝光、点击
				'adId' : 'lolweb.match.videoclick.' + newsid
			})
		}
	},
	// 资讯推荐位click日志上报函数 20160927
	RecNewsClickLogUp : function(newsid, url) {
		if (newsid) {
			var self = PUBLIC_FUNCTION;
			LOL_Comm_Log.Click({
				'actionType' : 'click',// 上报类型
				'contenProperty' : 'image',// 内容分类
				'contentId' : newsid,// 内容id
				'contentType' : 'news',// 内容分类
				'clickUrl' : url,// 目标url：曝光、点击
				'adId' : 'lolweb.match.recnewsclick.' + newsid
			})
		}
	},
	// 搜索
	Search : function() {
		var word = $('#search-input').val();
		if (word == '') {
			alert('请输入要搜索的内容');
			return;
		}
		window.location.href = "http://lpl.qq.com/es/search.shtml?search=" + encodeURIComponent(encodeURIComponent(word));
	}
};

// 积分榜一级赛事点击事件
$("#team_score_bar_common a").on("click", function() {
	var self = INIT_FUNCTION;
	var _idx = $(this).attr('rel');
	// 渲染积分榜
	var ret = self.FillTeamScoreHtml(self.dTeamScoreBar[_idx]);
	if (ret) {
		$("#group_bar_common a").eq(0).trigger("click");
		$(this).addClass('on').parent().siblings().children("a").removeClass('on');
	} else {
		alert("积分更新中，敬请期待");
	}
});

var INIT_FUNCTION = {

	dGroupTeamScore : {},// 积分榜数据
	dTeamScoreBar : [ 5, 51, 91, 92, 93 ],// 积分榜tab，分别对应LPL/LCK/LMS/LCS.EU/LCS.NA一级赛事id
	dBGameList : [],
	dBGameMatchs : [],// 当前赛程各个赛事赛程数组
	dMatchTabNum : 2,// 近期赛程--一开始默认显示多少赛事tab
	dMatchsNP : 0,// 当前赛程tab标识(0-tab1,1-tab2,2-tab3、、、)
	dUrlPre : "http://lpl.qq.com/web201612/data/",
	dInitCfg : {
		'newlist-page' : 'TopRecNews',
		'videolist-page' : 'TopRecNews',
		'his-data-page' : '',
		'after-data-page' : '',
		'searchlist-page' : 'TopRecNews',
		'detail-page' : 'OfficialContents#HotFocus#InitStaticNews#InitTeamScore#InitCurrentBMatchTab',
		'photo-page' : 'OfficialContents#HotFocus#GoodRecInfo'
	},

	initCommon : function(page) {
		var self = INIT_FUNCTION;
		var goUrl = "http://lpl.qq.com/web201612/data/LOL_NEWMATCH_FIR_PAGE_RECO_INFO.js";
		$.getScript(goUrl, function() {
			if ('undefined' == typeof (page)) {
				page = $('body').attr('id').replace(/^p\-/, '');
			}
			if (FirPageRecoInfo.status == 0) {
				self.dRecNewsInfo = FirPageRecoInfo.msg;
				var cfg = self.dInitCfg[page].split('#');
				$(cfg).each(function(key, val) {
					switch (val) {
						case 'OfficialContents':
							self.OfficialContents(self.dRecNewsInfo[24]);// 官方栏目
							break;
						case 'HotFocus':
							self.HotFocus(self.dRecNewsInfo[28]);// 热门焦点
							break;
						case 'GoodRecInfo':
							self.GoodRecInfo(self.dRecNewsInfo[26]);// 精品推荐
							break;
						case 'InitStaticNews':
							self.InitStaticNews();// 最新资讯(模板资讯)
							break;
						case 'InitTeamScore':
							self.InitTeamScore(); // 积分榜
							break;
						case 'InitCurrentBMatchTab':
							self.InitCurrentBMatchTab();// 近期赛程
							break;
						case 'TopRecNews':
							self.TopRecNews(self.dRecNewsInfo[22]); // 头部轮播图
							break;
					}
				})
			}
		});
	},

	/**
	 * 头部轮播图
	 */
	TopRecNews : function(data) {
		var sHtml = "";
		if (data[23] != "" && data[23].length == 4) {
			data = data[23];
			for ( var x in data) {
				sHtml += '<div class="tab-panel pr">' + '<img src="' + data[x].sIMG + '" width="100%" height="470" alt="rotate1" />' + '<div class="lb-btn-box pa"><a target="_blank" class="lb-btn" href="' + data[x].sUrl + '" onclick="pgvSendClick({hottag:\'lplweb.index.toplb.lb' + x + '\',\'virtualDomain\':\'lol.qq.com\'})">精彩回顾</a></div>' + '</div>';
			}
		}
		$("#head_pic_ad").html(sHtml);
		if ($("#head_pic_ad").size() > 0) {
			bigRotate()
		}
		;
	},

	/**
	 * 官方栏目
	 */
	OfficialContents : function(data) {
		var sHtml = "";
		if (data[25] != "" && data[25].length == 4) {
			data = data[25];
			for ( var x in data) {
				sHtml += '<div class="video-left-child fl">' + '<a target="_blank" href="' + data[x].sUrl + '" onclick="pgvSendClick({hottag:\'lplweb.index.official.img' + x + '\',\'virtualDomain\':\'lol.qq.com\'})">' + '<img src="' + data[x].sIMG + '" width="180" height="110" alt="rotate1" />' + '</a>' + '</div>';
			}
		}
		$("#official_contents").html(sHtml);
	},

	/**
	 * 热门焦点
	 */
	HotFocus : function(data) {
		var sHtml = "";
		// 大图 1个
		if (data[29] != "") {
			sHtml += '<a target="_blank" href="' + data[29][0].sUrl + '" onclick="pgvSendClick({hottag:\'lplweb.index.fixedgg.bimg\',\'virtualDomain\':\'lol.qq.com\'})">' + '<div class="video-left-child video-left-first-child fl">' + '<img src="' + data[29][0].sIMG + '"  width="375" height="110">' + '</div></a>';
		} else {
			sHtml += '<div class="video-left-child video-left-first-child fl"></div>';
		}
		// 小图 4个
		if (data[30] != "" && data[30].length == 4) {
			data = data[30];
			for ( var x in data) {
				sHtml += '<a target="_blank" href="' + data[x].sUrl + '"  onclick="pgvSendClick({hottag:\'lplweb.index.fixedgg.simg' + x + '\',\'virtualDomain\':\'lol.qq.com\'})">' + '<div class="video-left-child fl">' + '<img src="' + data[x].sIMG + '" width="180" height="110" />' + '</div></a>'
			}
		}
		$("#hot_focus").html(sHtml);
	},

	/**
	 * 精品推荐
	 */
	GoodRecInfo : function(data) {
		var sHtml = "";
		if (data[27] != "" && data[27].length == 4) {
			data = data[27];
			for ( var x in data) {
				sHtml += '<div class="tab-panel">' + '<a target="_blank" href="' + data[x].sUrl + '">' + '<img src="' + data[x].sIMG + '" width="100%" alt="rotate1" />' + '</a>' + '</div>';
			}
		}
		$("#good_rec_info").html(sHtml);
		smallRotate("320", "200", "0");
	},

	/**
	 * 最新资讯（模板资讯）
	 */
	InitStaticNews : function() {
		var self = INIT_FUNCTION;
		var goUrl = "http://lpl.qq.com/web201612/data/LOL_NEWMATCH_FIR_PAGE_STATIC_NEWS_INFO.js";
		$.getScript(goUrl, function() {
			if (FirPageSNewsInfo.status == 0) {
				var data = FirPageSNewsInfo.msg[0].Contents;
				$("#static_news").html(data);
			}
		});
	},

	/**
	 * 获取积分榜数据
	 */
	InitTeamScore : function() {
		var self = INIT_FUNCTION;
		var goUrl = "http://lpl.qq.com/web201612/data/LOL_NEWMATCH_FIRPAGE_GROUP_TEAM_SCORE.js";
		$.getScript(goUrl, function() {
			if (GroupTeamScores.status == 0) {
				self.dGroupTeamScore = GroupTeamScores.msg;
				// 默认显示LPL赛区积分
				$("#team_score_bar_common a").eq(0).trigger("click");
			} else {
				self.dGroupTeamScore = "";
			}
		})
	},

	/**
	 * 渲染积分榜数据01
	 */
	FillTeamScoreHtml : function(bGameId) {
		var self = INIT_FUNCTION;
		var sHtml = "";
		if (self.dGroupTeamScore) {
			var scores = self.dGroupTeamScore[bGameId].score;
			var groups = self.dGroupTeamScore[bGameId].group;
			// 没有积分
			if (groups == "") {
				return false;
			} else {
				groups.sort(function(a, b) {
					return a.Group > b.Group
				});
				for ( var x in groups) {
					group = groups[x].Group;
					self.FillGroupTeamScoreBoardHtml(scores[group], group);
					sHtml += '<a href="javascript:;" class="on">' + group + '组</a>';
				}
				$("#group_bar_common").html(sHtml);
				$('#group_bar_common a').unbind("click");
				$("#group_bar_common a").on("click", function() {
					$(this).addClass('on').siblings().removeClass('on');
					$(".match-rank-list").css({
						display : "none"
					});
					$(".match-rank-list").eq($(this).index()).css({
						display : "block"
					})
				});
			}
			// 积分未分组，隐藏分组tab
			if (groups.length == 1) {
				$("#group_bar_common").hide();
			} else {
				$("#group_bar_common").show();
			}
			return true;
		}
	},

	/**
	 * 渲染积分榜数据02
	 */
	FillGroupTeamScoreBoardHtml : function(data, flag) {
		var teamList = TeamList.msg;
		var sHtml = "";
		if (data) {
			for ( var x in data) {
				var scoreInfo = data[x];
				sHtml += '<li>' + '<em>' + (+x + 1) + '</em>' + '<div class="match-rank-team">' + '<a target="_blank" href="http://lpl.qq.com/es/team_detail.shtml?tid=' + scoreInfo.TeamId + '">' + '<img src="' + teamList[scoreInfo.TeamId].TeamLogo + '" width="52" height="52">' + '</a>' + '<span>' + scoreInfo.TeamName + '</span>' + '</div>' + ' <p class="match-rank-rult"><span class="vic">' + scoreInfo.Value1 + '</span> <span class="centline">/</span> ' + scoreInfo.Value3 + '</p>' + '<i>'
						+ scoreInfo.Score + '</i>' + '</li>';
			}
		}
		$("#team_score_board_common_" + flag).html(sHtml);
	},

	/**
	 * 初始化近期赛程-赛事tab
	 */
	InitCurrentBMatchTab : function() {
		var self = INIT_FUNCTION;
		var bGameList = GameList.msg.bGameList;
		var length = bGameList.length;
		var limit = length <= self.dMatchTabNum ? length : self.dMatchTabNum;
		self.dBGameList = bGameList;
		var lplIndex = 1;
		var sHtml = '';
		var moreHtml = '';
		for ( var i = 0; i < bGameList.length; i++) {
			if (i==0) {
				lplIndex = i;
				sHtml += '<li class="fl w1" id="bGameIndex_' + i + '"><a href="javascript:;" class="on">' + bGameList[i].GameName + '</a></li>';
			} else if (i==1) {
				sHtml += '<li class="fl w' + (i + 1) + '" id="bGameIndex_' + i + '"><a href="javascript:;">' + bGameList[i].GameName + '</a></li>';
			} else {
				moreHtml += '<li class="more-cont-list" id="bGameIndex_' + i + '"><a href="javascript:;">' + bGameList[i].GameName + '</a></li>';
			}
		}
		$("#scheduleSortList").html(sHtml);
		$("#moreSchedule").html(moreHtml);
		self.ListTab("#scheduleSortList li", ".match-rank-con", "#moreSchedule");
		self.InitCurrentBMatch(lplIndex);
	},

	// 初始化各个赛事当前赛程(最近5场)
	InitCurrentBMatch : function(index) {
		var self = INIT_FUNCTION;
		var teamList = TeamList.msg;
		var sHtml = '';
		gameId = self.dBGameList[index].GameId;
		self.dMGameId = gameId;
		var goUrl = self.dUrlPre + 'LOL_MATCH2_MATCH_HOMEPAGE_BMATCH_' + gameId + '_LIST.js';
		$.getJSON(goUrl, function(data) {
			if (data.status == 0) {
				var matchList = data.msg;
				self.dBGameMatchs[index] = matchList;
				for ( var x in matchList) {
					var item = matchList[x];
					var dateArr = item.MatchDate.split(" ");
					if (+item.MatchStatus == 1) {
						sHtml += '<li class="unstart clearfix">';
					} else if (+item.MatchStatus == 2) {
						sHtml += '<li class="ing clearfix">';
					} else {
						sHtml += '<li class="end clearfix">';
					}
					sHtml += '<div class="z-list w24 fl"><div class="middle"><p class="time">' + dateArr[0].substr(5) + ' ' + dateArr[1].substr(0, 5) + '</p><p>' + TOOLS.FormateMatchStatus(+item.MatchStatus) + '</p></div></div>';
					sHtml += '<div class="z-list w16 corps_name fl">' + teamList[item.TeamA].TeamName + '</div> ';
					if (+item.MatchStatus == 3 && +item.MatchWin == 1) {
						// sHtml += '<div class="z-list score fl"><span
						// class="z-list score_left"><em>' + item.ScoreA +
						// '</em><i class="i-line"></i><i class="ico"
						// rel="0"></i></span>:<span class="z-list
						// score_right"><em>' + item.ScoreB + '</em><i
						// class="i-line"></i><i class="ico"
						// rel="0"></i></span></div>';
						sHtml += '<div class="z-list score fl"><span class="z-list score_left">' + item.ScoreA + '</span>:<span class="z-list score_right">' + item.ScoreB + '</span></div>';
					} else if (+item.MatchStatus == 3 && +item.MatchWin == 2) {
						// sHtml += '<div class="z-list score fl"><span
						// class="z-list score_right"><em>' + item.ScoreA +
						// '</em><i class="i-line"></i><i class="ico"
						// rel="0"></i></span>:<span class="z-list
						// score_left"><em>' + item.ScoreB + '</em><i
						// class="i-line"></i><i class="ico"
						// rel="0"></i></span></div>';
						sHtml += '<div class="z-list score fl"><span class="z-list score_right">' + item.ScoreA + '</span>:<span class="z-list score_left">' + item.ScoreB + '</span></div>';
					} else {
						// sHtml += '<div class="z-list score fl"><span
						// class="z-list score_right"><em>' + item.ScoreA +
						// '</em><i class="i-line"></i><i class="ico"
						// rel="0"></i></span>:<span class="z-list
						// score_right"><em>' + item.ScoreB + '</em><i
						// class="i-line"></i><i class="ico"
						// rel="0"></i></span></div>';
						sHtml += '<div class="z-list score fl"><span class="z-list score_right">' + item.ScoreA + '</span>:<span class="z-list score_right">' + item.ScoreB + '</span></div>';
					}
					sHtml += '<div class="z-list corps_name w16 fl">' + teamList[item.TeamB].TeamName + '</div> ';
					sHtml += '<div class="z-list w24 fl">';
					if (+item.MatchStatus == 1) {
						if (+item.iQTMatchId) {
							sHtml += '<a id="dinyue_' + item.iQTMatchId + '" class="look_video" href="javascript:PUBLIC_FUNCTION.DinYue(' + item.iQTMatchId + ');">预约直播</a>';
						} else {
							sHtml += '<a href="javascript:;" class="look_video">敬请期待</a>';
						}
					} else if (+item.MatchStatus == 2) {
						sHtml += '<a class="look_video" href="http://lpl.qq.com/es/live.shtml?bgid=' + item.GameId + '&bmid=' + item.bMatchId + '" target="_blank">正在直播</a>';
					} else {
						if (+item.NewsId) {
							sHtml += '<a target="_blank" class="look_video" href="http://lpl.qq.com/es/video_detail.shtml?nid=' + item.NewsId + '"><i class="spr"></i>观看录像</a>';
						} else {
							sHtml += '<a class="" href="javascript:;" class="look_video"><i class="spr"></i>录像更新中</a>';
						}
					}
					sHtml += '</div>';
				}
			} else {
				sHtml += ' <li class="end clearfix">暂时没有比赛</li>'
			}
			$("#current_match_c").html(sHtml);
			scheduleHover(".score", "#current_match_c li", "http://game.gtimg.cn/images/lol/match/public/open_ss.gif", 50);
		});
	},

	// 切换资讯、视频 tab
	ListTab : function(listid, boxid, mid) {
		var self = INIT_FUNCTION;
		var list = $(listid), box = $(boxid), np = 0, mp = 0, pnum = 0, hTimer = null, mlist = $(mid).find("li"), mTimer = null;
		list.hover(function() {
			var index = $(this).index();
			clearTimeout(hTimer);
			if (index != np) {
				hTimer = setTimeout(function() {
					np = index;
					list.eq(np).children('a').addClass('on');
					list.eq(np).siblings().children('a').removeClass('on');
					box.eq(np).show().siblings(boxid).hide();
					// 逻辑代码 start
					if (listid == "#newsSortList li") {
						self.dNewsNP = index;
						$("#read_more_text_news").show();
						self.InitTextNews(index);
					} else if (listid == "#videoSortList li") {
						self.dVideosNP = index;
						$("#read_more_video_news").show();
						self.InitVideoNews(index);
					} else {
						self.dMatchsNP = index;
						self.InitCurrentBMatch(list[index].id.replace('bGameIndex_', ''));
					}
					// end
					list.parent().siblings('.tab-more').find("span").removeClass('curr')
				}, 200)
			}
		}, function() {
			clearTimeout(hTimer);
		})
		mlist.hover(function() {
			var index = $(this).index(), ListID = $(this).parent().attr("rel"), pnum = $("#" + ListID).find("li").length, nowTxt = $(this).find("a").html(), mp = index + pnum;
			if (index != mp) {
				np = index + pnum;
				mp = index + pnum;
				// console.log(np)
				clearTimeout(hTimer);
				hTimer = setTimeout(function() {
					var mbox = $("#" + ListID).siblings(".tab-more").find(".tab-more-btn").find("span");
					mbox.html(nowTxt);
					mbox.addClass('curr');
					box.eq(np).show().siblings(boxid).hide();
					// 逻辑代码 start
					if (listid == "#newsSortList li") {
						self.dNewsNP = mp;
						$("#read_more_text_news").show();
						self.InitTextNews(mp);
					} else if (listid == "#videoSortList li") {
						self.dVideosNP = mp;
						$("#read_more_video_news").show();
						self.InitVideoNews(mp);
					} else {
						self.dMatchsNP = mp;
						self.InitCurrentBMatch(mlist[index].id.replace('bGameIndex_', ''));
					}
					// end
					mlist.eq(index).addClass('on').siblings().removeClass('on');
					$("#" + ListID).find("li").removeClass('on');
				}, 200)
			}
		}, function() {
			clearTimeout(hTimer);
		})
	}

}

milo.ready(function() {
	need([ "biz.login" ], function(LoginManager) {
		LoginManager.checkLogin(function() {
//			$("#loginedInfo").html(LoginManager.getUserUin());
//			LoginManager.getUserFace(function(faceInfo) {
//				$('#logined img').attr('src', faceInfo.userFace);
//			});
			PUBLIC_FUNCTION.diUin = LoginManager.getUserUin();
			var areaid = milo.cookie.get('LPL_COM_AREAID'+PUBLIC_FUNCTION.diUin);
			if(areaid){
				PUBLIC_FUNCTION.diArea = areaid;
				InitCookieArea(areaid);
				InitUserInfo();
			}
		}, function() {
			// 未登录,弹登录框
			// LoginManager.login();
		});
	});
	
	$("#areasel").click(function(){
		InitAreaSel();
	})
	
	InitSearchHotword();
});/*  |xGv00|0ad35a423ae16b950fd614c85a67cc0d */