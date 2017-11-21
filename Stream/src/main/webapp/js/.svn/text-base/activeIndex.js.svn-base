var LW_ActCenter = {
	sCollectURI : "http://apps.game.qq.com/lol/Go/video/collectAction?",
	sActListURI : "js/lol_act_1_index.js?r="+Math.random(),
	iType : null,
	dCollectObj : null,
	dActListObj : [],
	init : function(){
		var self = LW_ActCenter;
		milo.ready(function() {
		    need("biz.login",function(LoginManager){
		        LoginManager.checkLogin(function(){
		            include([self.sActListURI,self.sCollectURI+"p4=CollectObj&p3=WEB&p1=chk"],function(){
		            	if(CollectObj.status == 0){
		            		self.dCollectObj = CollectObj.msg.list;
		            	}
		            	self.LoadActive()
		            })
		        },function(){
		        	include(self.sActListURI,function(){
		        		self.LoadActive()
		        	})
		        });
		    });
		});
	},
	LoadActive : function(iType){
		var self = LW_ActCenter;
		self.iType = iType ? iType : null;
		var self = LW_ActCenter;
		self.dActListObj = [];
		if(!self.iType){
			self.dActListObj = action;
            $('#J_collectTips').hide();
        }else if(self.iType == 9999){
			if(self.dCollectObj.length != 0){
				for(var x in self.dCollectObj){
					for(var y in action){
						if(self.dCollectObj[x] == action[y]['iActId']){
							self.dActListObj.push(action[y])
						}
					}
				}
			}else{
                $('#J_collectTips').show();
            }
		}else{
            $('#J_collectTips').hide();
            for(var x in action){
				if(action[x]['iStatus'] == self.iType){
					self.dActListObj.push(action[x]);
				}
			}
		}
		for(var x in self.dActListObj){
			if(self.dCollectObj && $.inArray(self.dActListObj[x].iActId,self.dCollectObj) >= 0){
				self.dActListObj[x]['is_Collect'] = 1;
			}else{
				self.dActListObj[x]['is_Collect'] = 0;
			}
		}
        include("js/ArtTemplate.js",function(){
            $("#ActList").html(template('ActListTemp',{"ActList":self.dActListObj}));
        })
	},
	CollectAction :function(sAction,iActId,_this){
		 var self = LW_ActCenter;
		 need("biz.login",function(LoginManager){
	        LoginManager.checkLogin(function(){
	        	loadScript(self.sCollectURI+"p4=actionInfo&p3=WEB&p1="+sAction+'&p2='+iActId,function(){
	            	if(actionInfo.status == 0){
	            		if(sAction == 'add'){
	            			$(_this).attr('onclick','LW_ActCenter.CollectAction(\'del\','+iActId+',this)').removeClass('collected');
	            		}else{
	            			if(self.iType == 9999){
	            				$(_this).parents('li').remove();
	            			}else{
	            				$(_this).attr('onclick','LW_ActCenter.CollectAction(\'add\','+iActId+',this)').addClass('collected');
	            			}
	            		}
	            		self.ExchangeCollectObj(sAction,iActId)
	            	}else{
	            		alert(actionInfo.msg);
	            	}
	            })
	        },function(){
	            LoginManager.login()
	        });
	    });
	},
	LoadMyActive : function(){
		var self = LW_ActCenter;
		need("biz.login",function(LoginManager){
	        LoginManager.checkLogin(function(){
	            self.LoadActive(9999)
	        },function(){
	            LoginManager.login()
	        });
	    });
	},
	ExchangeCollectObj : function(sAction,iActId){
		var self = LW_ActCenter;
		if(sAction == 'add'){
			self.dCollectObj.push(String(iActId));
		}else{
			for(var x in self.dCollectObj){
				if(self.dCollectObj[x] == iActId){
					self.dCollectObj.splice(x,1);
				}
			}
		}
	}
};
LW_ActCenter.init();

//include("http://lol.qq.com/v2/js/roundabout.js", function() {
//
//    $('.btn-slider-r').on('click', function(){
//        $('#img-slider').roundabout('animateToNextChild');
//        return false;
//    });
//    $('.btn-slider-l').on('click', function(){
//        $('#img-slider').roundabout('animateToPreviousChild');
//        return false;
//    });
//    $('.activity-header p a').on('click', function() {
//        var $elem = $(this);
//        var index = $elem.index();
//        $('#img-slider').roundabout('animateToChild',index);
//        return false;
//    });
//    $('#img-slider').roundabout({
//        minScale: .01,
//        maxScale: 1,
//        autoplay:true,
//        autoplayPauseOnHover:true,
//        duration: 1000
//    }).bind({
//        animationEnd: function(e) {
//            var index = $('#img-slider').roundabout('getChildInFocus');
//            $('.activity-header p a').eq(index).addClass('active').siblings().removeClass('active');
//        }
//    });
//    $('.act-tab li').click(function(){
//        $(this).addClass('active').siblings().removeClass('active');
//    })
//
//});





/*  |xGv00|a7e386685bec8cd0470926e37e32ef8c */