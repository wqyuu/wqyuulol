LOL_PERSONAL_HEROSKIN = {
	UserId : 0,
	AreaId : 0,
	SkinPageCurHero : '',
	MyHeroNum : 0,
	MySkinNum :0,
	MyHeroList : [],
	MySkinList : [],
	HeroId : 0,
	SkinId : 0,
	PageURI : "http://lol.qq.com/web201310/",
	DjcHeroLog : '?ADTAG=cop.innercop.lol_guanwang.personal.hero_',
	DjcSkinLog : '?ADTAG=cop.innercop.lol_guanwang.personal.skin_',
	CookieKey : "LOL_API_W2013_USER_",
	init : function() {
		var self = LOL_PERSONAL_HEROSKIN;
		self.HeroSkinTab();
		//解决ie浏览器不支持数组array的indexof方法
		self.AddIndexOfMethod();
		need(["biz.login"], function(LoginManager){
			LoginManager.checkLogin(function(){
				self.reloadPersonStyle(5);
				var url = window.location.search;
				var re = /id=(\d+)&area=(\d+)/ig;
				var p = re.exec(url);
				if(p) {
					self.UserId = p[1];
					self.AreaId = p[2];
					var goUrl = 'http://apps.game.qq.com/lol/api/v2013/ownedHerosSkins.php?p1='+self.UserId+'&p2='+self.AreaId+'&d1=HeroSkinList';
					//页面初始化
					loadScript(goUrl,self.swrapNAV);
				}else{			
					var cookieKey = self.CookieKey+LoginManager.getUserUin();
					var tmp = milo.cookie.get(cookieKey);
					if(tmp){
						var cookieValue = tmp.split(",");
						window.location.href = self.PageURI+"personal.shtml?id="+cookieValue[0]+"&area="+cookieValue[1]+"&showDiv=5";
					}else{
						LW201310_Userinfo.userLogin();
					}
				}
			}, function(){
				LW201310_Userinfo.userLogin();
			});
		});
	},
	//我的英雄、皮肤tab切换
	HeroSkinTab : function(){
		var sHtml = '';
		var self = LOL_PERSONAL_HEROSKIN;
		$("#heroBtn").click(function(){
			sHtml = '';
			$(this).addClass('current').siblings().removeClass('current');
			$("#skinBox").hide();
			$('#itemType').html('英雄');
			$('#myHeroNum').html(self.MyHeroNum+'个');
			$("#heroBox").show();
			
		});
		$("#skinBtn").click(function(){
			sHtml = '';
			$(this).addClass('current').siblings().removeClass('current');
			$("#heroBox").hide();
			$('#itemType').html('皮肤');
			$('#myHeroNum').html(self.MySkinNum+'个');
			$("#skinBox").show();
		});
	},
	reloadPersonStyle : function(a){
		for(i=1;i<=5;i++) {
			if(i==a) {
				$("#jPersonDiv"+i).show();
				$("#jPersonTab"+i).attr('class', 'current');
			}else{
				$("#jPersonDiv"+i).hide();
				$("#jPersonTab"+i).attr('class', '');
			}
		}
	},
	swrapNAV : function() {
		//console.log(HeroSkinList);
		var self = LOL_PERSONAL_HEROSKIN;
		if (HeroSkinList.status == 0) {
			self.MyHeroNum = HeroSkinList.msg.heronum;
			self.MySkinNum = HeroSkinList.msg.skinnum;
			self.MyHeroList = HeroSkinList.msg.heros;
			self.MySkinList = HeroSkinList.msg.skins;
			
			$('#myHeroNum').html(self.MyHeroNum+"个");
			
			var sw = self.gets.tag("seleteChecklist", "li"), 
			    lab = self.gets.tag("seleteChecklist", "label"), 
			    ord = 0, 
			    tags = lab[ord].getAttribute("data-id");
			// 我的英雄页
			self.doLoadHerobyKeyword(tags);
			// 我的皮肤页
			self.doLoadHerobyKeywordMySkin(tags);
			self.checkInput("jSearchHeroInput_hero");
			g("jSearchHeroInput_hero").onkeyup = function() {
				// 我的英雄页
				self.doLoadHerobyKeyword(this.value);
				// 我的皮肤页
				self.doLoadHerobyKeywordMySkin(this.value);
				sw[ord].className = "selete-item";
				sw[0].className = "selete-item current";
				ord = 0;
			}
			for (var i = 0; i < sw.length; i++) {
				sw[i].count = i;
				sw[i].onclick = function() {
					sw[ord].className = "selete-item";
					this.className = "selete-item current";
					tags = lab[this.count].getAttribute("data-id");
					// 我的英雄页
					self.doLoadHerobyKeyword(tags);
					// 我的皮肤页
					self.doLoadHerobyKeywordMySkin(tags);
					ord = this.count;
				}
			}
		} else {
			alert(HeroSkinList.msg);
		}
		//默认展示暗裔剑魔的皮肤
		self.showSkinByHero('Aatrox','266','暗裔剑魔','亚托克斯','Aatrox.png');
	},
	gets : {
			tag: function(p, o) {
		        return document.getElementById(p).getElementsByTagName(o);
		    },
		    ran: String(new Date()).split(":")[1],
		    ua: navigator.userAgent,
		    u:"../images/"
	},
	doLoadHerobyKeyword : function(keyword) {
		var self = LOL_PERSONAL_HEROSKIN;
		var data = LOLherojs.champion.data,
		    retHTML = '';
		for ( var x in data) {
			var heroHTML = self.doLoadHero(data[x], keyword);
			if ('' != heroHTML) {
				retHTML += self.doLoadHero(data[x], keyword);
			}
		}
		if (retHTML == '') {
			retHTML = '<li class="loading">非常抱歉，查无此英雄嗟！ 建议您输入正确的英雄称号、ID、或者英文名</li>'
		}
		g("jSearchHeroDiv").innerHTML = retHTML;
	},
	// 英雄列表
	doLoadHero : function(hero, keyword) {
		var self = LOL_PERSONAL_HEROSKIN;
		var retHTML = '',
		    mark = 0, 
		    thisid = hero.id, 
		    hrefs = "info-defail.shtml?id=", 
		    url ='../images/'+ hero.image.full;// self.gets.u + 'champion/' + hero.image.full;
		//展示未拥有英雄
		if(keyword=='havenot'){
			if(self.MyHeroList.indexOf(hero.key) == -1){
				retHTML += '<li class="nohero">'
					          +'<img alt="'+hero.name+' '+hero.title+'" src="'+url+'">'
					          +'<p>'+hero.name+'</p>'
			                  +'<a class="sbg" href="'+hrefs+thisid+'">'
			                  +    '<i class="commspr commico-search"></i>'
			                  +'</a>'
			                  +'<p class="commico-buy">'
			                  +    '<a href="'+hrefs+thisid+'">查看详情</a>'
			                  +    '<a href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo('+hero.key+',\'hero\');pgvSendClick({hottag:\'lolweb.personal.buyHero.'+hero.key+'\'});" >点击购买</a>'
			                  +'</p>'
			            +  '</li>';
				return retHTML;
			}
		}
		if (thisid.toLowerCase().indexOf(keyword.toLowerCase()) != '-1'
				|| hero.name.indexOf(keyword) != '-1'
				|| hero.title.indexOf(keyword) != '-1' 
				|| hero.key == keyword) {
			//没有该英雄
			if(self.MyHeroList.indexOf(hero.key) != -1){
				retHTML += '<li>';
			}else{
				retHTML += '<li class="nohero">';
			}
			retHTML +=   '<img alt="'+hero.name+' '+hero.title+'" src="'+url+'">'
				         +'<p>'+hero.name+'</p>'
				         +'<a class="sbg" href="'+hrefs+thisid+'">'
				         +    '<i class="commspr commico-search"></i>'
				         +'</a>'
				         +'<p class="commico-buy">'
				         +    '<a href="'+hrefs+thisid+'">查看详情</a>'
				         +    '<a href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo('+hero.key+',\'hero\');pgvSendClick({hottag:\'lolweb.personal.buyHero.'+hero.key+'\'});" >点击购买</a>'
				         +'</p>'
				    +  '</li>';
		} else {
			for ( var x in hero.tags) {
				if (hero.tags[x] == keyword) {
					//没有该英雄
					if(self.MyHeroList.indexOf(hero.key) != -1){
						retHTML += '<li>';
					}else{
						retHTML += '<li class="nohero">';
					}
					retHTML += '<img alt="'+hero.name+' '+hero.title+'" src="'+url+'">'
				         +'<p>'+hero.name+'</p>'
				         +'<a class="sbg" href="'+hrefs+thisid+'">'
				         +    '<i class="commspr commico-search"></i>'
				         +'</a>'
				         +'<p class="commico-buy">'
				         +    '<a href="'+hrefs+thisid+'">查看详情</a>'
				         +    '<a href="javascript:LOL_PERSONAL_HEROSKIN.SetBuyInfo('+hero.key+',\'hero\');pgvSendClick({hottag:\'lolweb.personal.buyHero.'+hero.key+'\'});" >点击购买</a>'
				         +'</p>'
				    +  '</li>';
				}
			}
		}
		return retHTML;
	},
	// 我的皮肤页       按条件展示英雄列表
	doLoadHerobyKeywordMySkin : function(keyword) {
		var self = LOL_PERSONAL_HEROSKIN;
		var data = LOLherojs.champion.data,
		    retHTML = '';
		for ( var x in data) {
			var heroHTML = self.doLoadHeroMySkin(data[x], keyword);
			if ('' != heroHTML) {
				retHTML += self.doLoadHeroMySkin(data[x], keyword);
			}
		}
		if (retHTML == '') {
			retHTML = '<li class="loading">非常抱歉，查无此英雄嗟！ 建议您输入正确的英雄称号、ID、或者英文名</li>'
		}
		$("#skinList").html(retHTML);
	},
	//我的皮肤页英雄列表
	doLoadHeroMySkin : function(hero, keyword) {
		var self = LOL_PERSONAL_HEROSKIN;
		var retHTML = '',
		    mark = 0, 
		    thisid = hero.id, 
		    hrefs = "info-defail.shtml?id=", 
		    url = self.gets.u + 'champion/' + hero.image.full;
		//展示未拥有英雄
		if(keyword=='havenot'){
			if(self.MyHeroList.indexOf(hero.key) == -1){
				retHTML += '<li id="hero_'+thisid+'">'
		                      +'<a title="'+hero.name+' '+hero.title+'" href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(\''+hero.id+'\',\''+hero.key+'\',\''+hero.name+'\',\''+hero.title+'\',\''+hero.image.full+'\');">'
		                      +'<img alt="'+hero.name+' '+hero.title+'" src="'+url+'">'
		                      +'<p>'+hero.name+'</p>'
		                      +'</a>'
		                +  '</li>';
				return retHTML;
			}
		}
		if (thisid.toLowerCase().indexOf(keyword.toLowerCase()) != '-1'
				|| hero.name.indexOf(keyword) != '-1'
				|| hero.title.indexOf(keyword) != '-1' 
				|| hero.key == keyword) {
			retHTML += '<li id="hero_'+thisid+'">'
				         +'<a title="'+hero.name+' '+hero.title+'" href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(\''+hero.id+'\',\''+hero.key+'\',\''+hero.name+'\',\''+hero.title+'\',\''+hero.image.full+'\');">'
				         +'<img alt="'+hero.name+' '+hero.title+'" src="'+url+'">'
				         +'<p>'+hero.name+'</p>'
				         +'</a>'
				    +  '</li>';
		} else {
			for ( var x in hero.tags) {
				if (hero.tags[x] == keyword) {
					retHTML += '<li id="hero_'+thisid+'">'
						         +'<a title="'+hero.name+' '+hero.title+'" href="javascript:LOL_PERSONAL_HEROSKIN.showSkinByHero(\''+hero.id+'\',\''+hero.key+'\',\''+hero.name+'\',\''+hero.title+'\',\''+hero.image.full+'\');">'
				                 +'<img alt="'+hero.name+' '+hero.title+'" src="'+url+'">'
				                 +'<p>'+hero.name+'</p>'
				                 +'</a>'
				            +  '</li>';
				}
			}
		}
		return retHTML;
	},
	showSkinByHero : function(heroId,heroKey,heroName,heroTitle,heroIcon){
		var self = LOL_PERSONAL_HEROSKIN;
		//皮肤js中取某个英雄的皮肤
		var skin = LOLherojs.skins.data[heroId],
		    length = skin.length,
		    imgUrl = 'http://ossweb-img.qq.com/images/lol/appskin/',
		    heroImg = self.gets.u+'champion/'+heroIcon,
		    ownedHeroNum = 0,
		    sHtml = '';
		$('#hero_'+self.SkinPageCurHero).removeClass('h-selected');
		$('#hero_'+heroId).addClass('h-selected');
		//皮肤页--英雄图片
		sHtml = '<img src="'+heroImg+'" alt="">';
		$('#heroimg').html(sHtml);
		//皮肤页--英雄名字
	    sHtml = heroName+' '+heroTitle+'<br><span>'+heroId+'</span>';
		$('#heroname').html(sHtml);
		if(self.MyHeroList.indexOf(heroKey) == -1 &&DjcLolMapList.msg.hero[heroKey]){
			var buyUrl = 'http://daoju.qq.com/lol/item/'+DjcLolMapList.msg.hero[heroKey]+'.shtml'+self.DjcHeroLog+DjcLolMapList.msg.hero[heroKey];
			$("#ifownedhero_a").attr('href',buyUrl);
			$("#ifownedhero").show();
		}else{
			$('#ifownedhero').hide();
		}
		sHtml = '';
		for(var i=0;i<length;i++){
			var img = imgUrl+skin[i].id+'.jpg';
			var name = skin[i].name=="default"?"默认皮肤":decodeURI(skin[i].name);
			//后面一个条件当为默认皮肤成立
			if(self.MySkinList.indexOf(skin[i].id) != -1 || !i){
				sHtml += '<li>';
				ownedHeroNum++;
			}else{
				sHtml += '<li class="noskin">';
			}
			
			sHtml +=     '<img src="'+img+'" alt="">'
				  +      '<p class="skin-name">'+name+'</p>';
			
			//检查"未拥有"的皮肤是否可用
			if(self.MySkinList.indexOf(skin[i].id) == -1 && i){
				if(!DjcLolMapList.msg.skin[skin[i].id]){
					sHtml += '<p class="skin-cover"><span>不可用</span></p></li>';
				}else{
					var buyUrl = 'http://daoju.qq.com/lol/item/'+DjcLolMapList.msg.skin[skin[i].id]+'.shtml'+self.DjcSkinLog+DjcLolMapList.msg.skin[skin[i].id];
					sHtml += '<p class="skin-cover"><span>未拥有</span><a href="'+buyUrl+'" onclick="LOL_PERSONAL_HEROSKIN.ReportLogBuySkin(\''+skin[i].id+'\')" target="_blank">点击购买</a></p></li>';
				}
			}
			
		}
		$('#skinlist').html(sHtml);
		//皮肤页--皮肤个数
		sHtml = heroTitle+'共有<span>'+length+'</span>款皮肤，您拥有<span>'+ownedHeroNum+'</span>款';
		$('#skinnum').html(sHtml);
		self.SkinPageCurHero = heroId;
	},
	SetBuyInfo : function(id,flag){
		var self = LOL_PERSONAL_HEROSKIN;
		if(flag=='hero'){
			var data = DjcLolMapList.msg.hero;
		}else{
			var data = DjcLolMapList.msg.skin;
		}
		if(!data[id]){
			alert("请登录游戏客户端进行购买");
			return;
		}
		//window.location.href='http://daoju.qq.com/lol/item/'+data[id]+'.shtml'+self.DjcHeroLog+data[id]; 
		window.open('http://daoju.qq.com/lol/item/'+data[id]+'.shtml'+self.DjcHeroLog+data[id]);
	},
	ReportLogBuySkin : function(skinId){
		//日志上报
        pgvSendClick({hottag:'lolweb.personal.buySkin.'+skinId});
	},
	checkInput : function(inptid){
		var inpt = g(inptid),
		valu = inpt.value;
		inpt.onblur = function(){
			if(this.value=='')this.value=valu;
		}
		inpt.onfocus = function(){
			if(this.value==valu)this.value='';
		}
	},
	// 获取页面传递的参数
	GetQueryString : function(name) {
		var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
		var r = window.location.search.substr(1).match(reg);
		if (r != null)
			return unescape(r[2]);
		return null;
	},
	//在使用indexOf方法前，执行一下下面的js, 原理就是如果发现数组没有indexOf方法，会添加上这个方法
	AddIndexOfMethod : function(){
		if (!Array.prototype.indexOf)
		{
		  Array.prototype.indexOf = function(elt /*, from*/)
		  {
		    var len = this.length >>> 0;
		    var from = Number(arguments[1]) || 0;
		    from = (from < 0)
		         ? Math.ceil(from)
		         : Math.floor(from);
		    if (from < 0)
		      from += len;
		    for (; from < len; from++)
		    {
		      if (from in this &&
		          this[from] === elt)
		        return from;
		    }
		    return -1;
		  };
		}
	},
	Request : function(url, varname, cache) {
		var self = LOL_PERSONAL_HEROSKIN;
		if (!self.G_defer_cache_map[url] || cache) {
			var dtd = $.Deferred();
			$.getScript(url, function() {
				eval('var tmpObj=' + varname + ';');
				if ('object' == typeof (tmpObj)) {
					dtd.resolve(tmpObj);
					// if(0==tmpObj.status) {
					// dtd.resolve(tmpObj);
					//    				}else{
					//    					dtd.reject(tmpObj);
					//    				}
				}
			});
			self.G_defer_cache_map[url] = dtd.promise();
		}
		return self.G_defer_cache_map[url];
	}
};/*  |xGv00|b72a9cd28720115f91102ed5c9654eff */