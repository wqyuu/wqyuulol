var LWA_VIDEOCENTER = {
	dDateObj : new Date(),
	dVideoDataURI : "http://lol.qq.com/web201310/js/videodata/",
	dRowListNum : 12,
	dRowHotNum : 10,
	dRowNewNum : 8,
	dsTime : '2014-04-21 00:00:00',
	deTime : '2014-04-26 23:59:59',
	dHeroTagsList : {"0":"所有英雄", "Fighter":"战士", "Mage":"法师", "Assassin":"刺客", "Tank":"坦克", "Marksman":"射手", "Support":"辅助"},
	dHeroList : {'keys':new Array(), 'data':new Array()},
	dSearchParam : {},
	dMsg_00 : "网络繁忙，请您稍后再试！",
	dMsg_01 : "暂无数据，请您稍后再试！",
    tv : {'v1':false,'v2':false,'v3':false,'v4':false,'v5':false},
    init : function() {
		var self = LWA_VIDEOCENTER;
		include("js/ArtTemplate.js",function(){
			self.GetIndexADVideoList();
			self.GetIndexNewVideoList();
			self.GetIndexAuthorVideoList(0);
		})
	},
    //轮播&推荐位
	GetIndexADVideoList : function() {
		var self = LWA_VIDEOCENTER;
		var submitURI = self.dVideoDataURI+'LOL_VIDEOLIST_IDX1.js?r='+Math.random();
		$.getJSON(submitURI, function(data){
			var retHTML1 = retHTML2 = '';
			if(0==data.status) {
				if('object'==typeof(data.msg.blist)) {			
					$("#jRec1").html(template('jRec1Temp',data.msg));
                    need("biz.scroll",function(s){
                        //左右滚动js代码
                        s.init({
                            conId:'J_promoVideo',//内容容器ID
                            frameWidth:'400',//显示框宽度
                            pageSpace:'400',//翻页宽度或高度
                            autoPlay:true,//true为自动播放、false为不自动播放
                            position:'left',//播放方向 left为向左，up为向上,设置为up时必须加上翻页高度pageHeight值
                            autoPlayTime:'5',//自动播放间隔时间(秒)
                            speed:30,
                            dotListId:'promo_triggers'//是否需要分页，不需要则删掉此行，并将页面上相应代码去掉，如此例分页代码为<div id="do" class="do"></div>，删掉即可
                        });
                    });
				}
				if('object'==typeof(data.msg.mlist)) {
					$("#jRec2").html(template('jRec2Temp',data.msg));
				}
			}
		});
	},
    //最新视频&视频排行
	GetIndexNewVideoList : function() {
		var self = LWA_VIDEOCENTER;
		var submitURI = self.dVideoDataURI+'LOL_VIDEOLIST_IDX2.js?r='+Math.random();
		$.getJSON(submitURI, function(data){
			if(0==data.status) {
				if('object'==typeof(data.msg.newlist)) {
					$("#jIndexAllVideo").html(template('jIndexAllVideoTemp',data.msg));
				}else{
					var retHTML0 = '<li class="noresult">'+self.dMsg_01+'</li>';
					$("#jIndexAllVideo").html(retHTML0);
				}
				if('object'==typeof(data.msg.tpvlist)) {
					$("#jIndexHotVideo1").html(template('jIndexHotVideo1Temp',data.msg))
				}else{
					var retHTML1 = '<li class="noresult">'+self.dMsg_01+'</li>';
					$("#jIndexHotVideo1").html(retHTML1);
				}
				
				if('object'==typeof(data.msg.wpvlist)) {
					$("#jIndexHotVideo2").html(template('jIndexHotVideo2Temp',data.msg))
				}else{
					var retHTML2 = '<li class="noresult">'+self.dMsg_01+'</li>';
					$("#jIndexHotVideo2").html(retHTML2);
				}
				
				if('object'==typeof(data.msg.mpvlist)) {
					$("#jIndexHotVideo3").html(template('jIndexHotVideo3Temp',data.msg))
				}else{
					var retHTML3 = '<li class="noresult">'+self.dMsg_01+'</li>';
					$("#jIndexHotVideo3").html(retHTML3);
				}				
				self.GetIndexHotVideoList(1);
			}else{
				// no data
			}
		});		
	},
    //排行tab切换
	GetIndexHotVideoList : function(id) {
		var self = LWA_VIDEOCENTER;
		$(".jHot").attr("class", "jHot");
		$("#jHot"+id).attr("class", "jHot cur");
		$(".jIndexHotVideo").hide();
		$("#jIndexHotVideo"+id).show();
	},
    //解说tab切换
	ChangeIndexAuthorTab : function(a, b) {
		var self = LWA_VIDEOCENTER;
		$("#jIndexAuthorUL li").attr('class', '');
		$("#jIndexAuthorUL li:eq("+a+")").attr('class', 'cur');
		if(b>0) {
			$("#jIndexAuthorULink").attr('href', 'http://lol.qq.com/v/search.shtml?p4='+b);
		}else{
			$("#jIndexAuthorULink").attr('href', 'http://lol.qq.com/v/search.shtml?p4=9999');
		}
		self.GetIndexAuthorVideoList(b);
	},
    //解说
	GetIndexAuthorVideoList : function(id) {
		var self = LWA_VIDEOCENTER;
		if(id>0) {
			var submitURI = self.dVideoDataURI+'LOL_VIDEOSTAR_IDX'+id+'.js?r='+Math.random();
		}else{
			var submitURI = self.dVideoDataURI+'LOL_VIDEOLIST_IDX3.js?r='+Math.random();
		}
		$.getJSON(submitURI, function(data){
			var retHTML = '';
			if(0==data.status) {
				if(data.msg.newlist) {
					$.each(data.msg.newlist, function(i, info){
						if(i<self.dRowListNum) {
							var type = id == 0 ? 'new':id;
							data.msg.newlist[i]['authorurl'] = '/v/star.shtml?id='+ ((id>0) ? data.msg.author.authorid : info.authorid);
							data.msg.newlist[i]['authorimg'] = (id>0) ? data.msg.author.thumb : info.author.thumb;
							data.msg.newlist[i]['authortit'] = (id>0) ? data.msg.author.author : info.author.author;
							data.msg.newlist[i]['type'] = type
							data.msg.newlist[i]['sDate'] = self.reloadPubdate(info.pubdate)
							data.msg.newlist[i]['sUrl'] = info.url+'&e_code=lolweb.videoauthorindex.author'+type;
						}
					});
				}else{
					retHTML = '<li class="noresult">'+self.dMsg_01+'</li>';
				}
			}else{
				retHTML = '<li class="noresult">'+self.dMsg_01+'</li>';
			}
			$("#jIndexAuthorVideo").html(template('jIndexAuthorVideoTemp',data.msg))
			//$("#jIndexAuthorVideo").html(retHTML);
//            $("#Jstar  .v-list li").tipTip({maxWidth: "300px"});
		});
	},
    
	reloadPubdate : function(string) {
		var re = /^(\d{2,4})-(\d{1,2})-(\d{1,2}) (\d{1,2}):(\d{1,2}):(\d{1,2})$/;
		if( re.test(string) ) {
			var t = string.match(re);
			var d = new Date(t[1], t[2]-1, t[3], t[4], t[5], t[6]);
			var c = new Date();
			var s = (c.getTime() - d.getTime())/1000;
			var m = Math.floor(s/60);
			var h = Math.floor(s/3600);
			var d = Math.floor(s/86400);
			var n = Math.floor(s/(86400*30));
			var y = Math.floor(s/(86400*365));
			if(y>0) return y+"年以前"; 
			if(n>0) return n+"个月以前";
			if(d>0) return d+"天以前";
			if(h>0) return h+"小时以前";
			if(m>0) return m+"分钟以前";
		}
		return "刚刚";
	}
}
LWA_VIDEOCENTER.init();/*  |xGv00|2ea59706c05f5a45ab6ecc15483369b9 */