var LW201310_ChampionInfo = {
	dUserId : 0,
	dArea : 0,
	dUserName : '',
	dUserLevel : 0,
	dUserIcon : 0,
	dHeroId : 0,
	dHeroName : '',
	dCookieKey : "LOL_API_W2013_USER_",
	dPageURI : "http://lol.qq.com/web201310/",
	dAppsAPIURI : "http://apps.game.qq.com/lol/api/v2013/",
	init : function() {
		var self = LW201310_ChampionInfo;
		self.userParamsbyRequest();
	},
	userParamsbyRequest : function(callback) {
		var self = LW201310_ChampionInfo;
		var url = window.location.search;
		var re = /id=([a-zA-Z]+)/ig;
		var p = re.exec(url);
		if(p) {
			var tmpId = p[1];
			if(LOLherojs.champion.data[tmpId]) {
				self.dHeroId = LOLherojs.champion.data[tmpId].key;
				self.dHeroName = LOLherojs.champion.data[tmpId].title;
				self.loadUserinfo();
				self.loadMeida();
				return;
			}
		}
		//window.location.href = self.dPageURI+"info-heros.shtml";
		return;
	},	
	loadUserinfo : function() {
		var self = LW201310_ChampionInfo;
		need(["biz.login"], function(LoginManager){
			LoginManager.checkLogin(function(){		
				var cookieKey = self.dCookieKey+LoginManager.getUserUin();
				var tmp = milo.cookie.get(cookieKey);
				if(tmp){
					var cookieValue = tmp.split(",");
					self.dUserId = cookieValue[0];
					self.dArea = cookieValue[1];
					self.dUserName = decodeURI(cookieValue[2]);
					self.dUserLevel = cookieValue[3];
					self.dUserIcon = cookieValue[4];
					self.loadBattle();
				}
			});
		});
	},
	loadMeida: function() {
		var self = LW201310_ChampionInfo;
		var submitURI = "http://apps.game.qq.com/lol/guide/apis/?m0=searchGuides&a0=list&r1=GuideList&page=1&pagesize=20&p2=0&p3=" + self.dHeroId + "&p4=1&_" + Math.random();
		loadScript(submitURI, function () {
			var retHTML = '';
			if (0 == GuideList.status) {
				var result = GuideList.msg.result;
				if (result) {
					result.forEach(function (item, index) {
						if (1 == item.iTop) {
							className = 'item-hot';
							tjHTML = '<i class="spr ico-tj">荐</i>';
						} else {
							className = 'item-normal';
							tjHTML = '';
						}
						retHTML += '<li class="' + className + '"><p class="gt1"><a title="' + item.sTitle + '" href="http://lol.qq.com/guide/page.shtml?id=' + item.iAticleId + '" class="names" target="_blank"><i class="spr ico-arrow"></i><span>' + item.sTitle + '</span>' + tjHTML + '</a></p><p class="gt2">' + item.dDate.substr(0, 10) + '</p><p class="gt3"><span class="gfrom">来源：</span>' + item.sSource + '</p><p class="gt4"><span class="ghot">评分：</span><span class="sidbar"><i class="empt"></i><i class="' + (1 == item.iTop ? "upbar-red" : "upbar-green") + '" style="width:' + item.iScore * 10 + '%"></i></span></p></li>';
					});
				}
			}
			g("jMediaList").innerHTML = retHTML;
		});
	},
	loadBattle : function() {
		var self = LW201310_ChampionInfo;
		var submitURI = self.dAppsAPIURI+"hero.php?p1="+self.dUserId+"&p2="+self.dArea+"&c1="+self.dHeroId+"&d1=battleObj&r="+Math.random();
		loadScript(submitURI, function(){
			if(0==battleObj.status) {
				var retHTML = '<div class="pu-header"><img width="80" height="80" src="http://ossweb-img.qq.com/images/lol/img/profileicon2/profileicon'+self.dUserIcon+'.jpg" alt=""><span class="pu-lv">Lv '+self.dUserLevel+'</span></div><div class="pu-names"><h2>'+self.dUserName+'</h2><p class="pu-num">使用 <span class="cgreen">'+self.dHeroName+'</span> '+battleObj.msg.t+'次</p><p class="pu-num">胜利 <span class="cred">'+battleObj.msg.w+'</span> 次</p><p class="pu-num cgray">最近使用 '+battleObj.msg.d.substr(0,10).replace(/-/g, "/")+'</p></div>';
				g("jUserHeroinfo").innerHTML = retHTML;
				g("jUserHeroArea").innerHTML = "服务器："+LOLServerSelect.zoneToName(self.dArea);
				var battleHTML = '';
				var data = battleObj.msg.r.result;
				for(x in data) {
					var win=(data[x].win==1)?'<span class="cgreen">胜利</span>':'<span class="cred">失败</span>';
					var src='http://ossweb-img.qq.com/images/lol/img/champion/'+LOLherojs.champion.data[LOLherojs.champion.keys[data[x].champion]].image.full;
					var date=data[x].datetime.substr(0,10).replace(/-/g, "/");
					battleHTML += '<li class="myhis-list-item"><p class="name">'+win+'</p><p><img width="26" height="26" src="'+src+'" alt=""></p><p class="rline"><b>'+data[x].killed+'</b>杀</p><p class="rline"><b>'+data[x].death+'</b>死</p><p class="helps"><b>'+data[x].assists+'</b>助攻</p><p class="rline">'+date+'</p></li>';
				}
				g("jUserHeroBattle").innerHTML = battleHTML;
				g("jUserRecH5").style.display = '';
			}else{
				var retHTML = '<div class="pu-header"><img width="80" height="80" src="http://ossweb-img.qq.com/images/lol/img/profileicon2/profileicon'+self.dUserIcon+'.jpg" alt=""><span class="pu-lv">Lv '+self.dUserLevel+'</span></div><div class="pu-names"><h2>'+self.dUserName+'</h2><p class="pu-num">使用 <span class="cgreen">'+self.dHeroName+'</span> 0次</p><p class="pu-num">胜利 <span class="cred">0</span> 次</p><p class="pu-num cgray">无最近使用记录</p></div>';
				g("jUserHeroinfo").innerHTML = retHTML;
				g("jUserHeroArea").innerHTML = "服务器："+LOLServerSelect.zoneToName(self.dArea);
				g("jUserHeroBattle").innerHTML = '<p class="loading">'+battleObj.msg+'</p>';
				g("jUserRecH5").style.display = '';
			}
			g("jUserPersonalPage").href = self.dPageURI + "personal.shtml?id="+self.dUserId+"&area="+self.dArea;
		});
	}
}
LW201310_ChampionInfo.init();/*  |xGv00|3736dc71cd276077781ce03fce5c545c */