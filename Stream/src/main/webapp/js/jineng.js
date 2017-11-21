//alert("kk");
	var lis=new Array();
	   function  lol(){
	       //alert("-----");
	            $.ajax({
	                   type:"post",
	                   url:"http://localhost:8080/Stream/Skill/allskill.do",                
	                   datetype:"json", 
	                   async:false,
	                   success:function(objstr){
	                          // alert("666");
	                         //var objs=eval("("+objstr+")");
	                         //alert(objs);
	                         //var trs=new Array();
	                          /// alert(objstr.sList.length);
	                         for(var i=0;i<objstr.sList.length;i++){
	                            //var obj=objs[i];
	                            lis[i]=objstr.sList[i];
	                         }
	                        // alert("777");
	                         //alert(name);
	                         //name=""+objs[0].name;
	                        // alert(name);
	                         //$("#commTab").html(trs);
	                   },
	                   error:function(){
	                     alert("4396");
	                   }
	            });  
	            alert(lis);
	            return lis;
	       }
lol();	   
//alert(name);
//loadScript(lol);
//"\u5c4f\u969c"
if(!LOLsummonerjs)
	var LOLsummonerjs={
		"version":"6.1.1","data":
		{"SummonerBarrier":
		{"id":"SummonerBarrier","name":lis[0].name,//
		"description":lis[0].content,//"\u4e3a\u4f60\u7684\u82f1\u96c4\u5957\u4e0a\u62a4\u76fe\uff0c\u5438\u6536115-455\uff08" +
		//"\u53d6\u51b3\u4e8e\u82f1\u96c4\u7b49\u7ea7\uff09\u70b9\u4f24\u5bb3\uff0c\u6301\u7eed2\u79d2\u3002"
			"maxrank":1,"key":"21","image":
			{"full":lis[0].picture,//"SummonerBarrier.png",
				"sprite":"spell0.png","group":"spell","x":0,"y":0,"w":48,"h":48}},
		"SummonerBoost":{
		"id":"SummonerBoost",
		"name":lis[1].name,//"\u51c0\u5316", 
		"description":
    "\u79fb\u9664\u8eab\u4e0a\u7684\u6240\u6709\u9650\u5236\u6548\u679c\u548c\u53ec\u5524\u5e08\u6280\u80fd\u7684\u51cf\u76ca\u6548\u679c\uff0c\u5e76\u4e14\u82e5" +
    "\u5728\u63a5\u4e0b\u6765\u76843\u79d2\u91cc\u518d\u6b21\u88ab\u65bd\u52a0\u9650\u5236\u6548\u679c\u65f6\uff0c\u65b0\u6548\u679c\u7684\u6301\u7eed\u65f6\u95f4\u4f1a\u51cf\u5c1165%\u3002",
        "maxrank":1,
        "key":"1",
        "image":{"full":"SummonerBoost.png","sprite":"spell0.png","group":"spell","x":48,"y":0,"w":48,"h":48}},
        "SummonerClairvoyance":{
        "id":"SummonerClairvoyance",
        "name":"\u6d1e\u5bdf",
        "description":
       "\u5c06\u5730\u56fe\u4e0a\u4efb\u610f\u4e00\u5757\u533a\u57df\u66b4\u9732\u7ed9\u4f60" +
       "\u7684\u961f\u4f0d\uff0c\u6301\u7eed5\u79d2\u3002",
       "maxrank":1,
       "key":"2",
       "image":{"full":"SummonerClairvoyance.png","sprite":"spell0.png","group":"spell","x":96,"y":0,"w":48,"h":48}},
       "SummonerDot":{
      "id":"SummonerDot",
      "name":"\u5f15\u71c3",
      "description":
    "\u5f15\u71c3\u662f\u5bf9\u5355\u4f53\u654c\u65b9\u76ee\u6807\u65bd\u653e\u7684\u6301\u7eed\u6027" +
    "\u4f24\u5bb3\u6280\u80fd\uff0c\u57285\u79d2\u7684\u6301\u7eed\u65f6\u95f4\u91cc\u9020\u621070-410" +
    "\uff08\u53d6\u51b3\u4e8e\u82f1\u96c4\u7b49\u7ea7\uff09\u771f\u5b9e\u4f24\u5bb3\uff0c\u83b7\u5f97\u76ee" +
    "\u6807\u7684\u89c6\u91ce\uff0c\u5e76\u51cf\u5c11\u76ee\u6807\u6240\u53d7\u7684\u6cbb\u7597\u548c\u56de" +
    "\u590d\u6548\u679c\u3002",
    "maxrank":1,
    "key":"14",
    "image":{"full":"SummonerDot.png","sprite":"spell0.png","group":"spell","x":144,"y":0,"w":48,"h":48}},
    "SummonerExhaust":{
    	"id":"SummonerExhaust",
    	"name":"\u865a\u5f31",
    	"description":"\u865a\u5f31\u76ee\u6807\u654c\u65b9\u82f1\u96c4\uff0c\u964d\u4f4e\u76ee\u6807\u82f1" +
    			"\u96c430%\u7684\u79fb\u52a8\u901f\u5ea6\u548c\u653b\u51fb\u901f\u5ea6\uff0c\u4ee5\u53ca10" +
    			"\u62a4\u7532\u4e0e\u9b54\u6cd5\u6297\u6027\uff0c\u5e76\u4e14\u4ed6\u4eec\u6240\u9020\u6210" +
    			"\u7684\u4f24\u5bb3\u51cf\u5c1140%\uff0c\u6301\u7eed2.5\u79d2\u3002",
    "maxrank":1,
    "key":"3",
    "image":{"full":"SummonerExhaust.png","sprite":"spell0.png","group":"spell","x":192,"y":0,"w":48,"h":48}},
    "SummonerFlash":{
    "id":"SummonerFlash",
    "name":"\u95ea\u73b0",
    "description":"\u4f7f\u82f1\u96c4\u671d\u7740\u4f60\u7684\u6307\u9488\u6240\u505c\u7684\u533a\u57df" +
    		"\u77ac\u95f4\u4f20\u9001\u4e00\u5c0f\u6bb5\u8ddd\u79bb\u3002",
    "maxrank":1,
    "key":"4",
    "image":{"full":"SummonerFlash.png","sprite":"spell0.png","group":"spell","x":240,"y":0,"w":48,"h":48}},
    "SummonerHaste":{
    "id":"SummonerHaste",
    "name":"\u5e7d\u7075\u75be\u6b65",
    "description":"\u4f60\u7684\u82f1\u96c4\u5728\u79fb\u52a8\u65f6\u4f1a\u65e0\u89c6\u5355\u4f4d\u7684" +
    		"\u78b0\u649e\u4f53\u79ef\uff0c\u79fb\u52a8\u901f\u5ea6\u589e\u52a027%\uff0c\u6301\u7eed10\u79d2" +
    		"\u3002",
    "maxrank":1,
    "key":"6","image":{"full":"SummonerHaste.png","sprite":"spell0.png","group":"spell","x":288,"y":0,"w":48,"h":48}},
    "SummonerHeal":{"id":"SummonerHeal","name":"\u6cbb\u7597\u672f","description":"\u4e3a\u4f60\u548c\u76ee\u6807\u53cb\u519b\u82f1\u96c4\u56de\u590d95-345\uff08\u53d6\u51b3\u4e8e\u82f1\u96c4\u7b49\u7ea7\uff09\u751f\u547d\u503c\uff0c\u5e76\u4e3a\u4f60\u548c\u76ee\u6807\u53cb\u519b\u82f1\u96c4\u63d0\u4f9b30%\u79fb\u52a8\u901f\u5ea6\u52a0\u6210\uff0c\u6301\u7eed1\u79d2\u3002\u82e5\u76ee\u6807\u8fd1\u671f\u5df2\u53d7\u5230\u8fc7\u5176\u5b83\u6cbb\u7597\u672f\u7684\u5f71\u54cd\uff0c\u5219\u6cbb\u7597\u672f\u5bf9\u76ee\u6807\u4ea7\u751f\u7684\u6cbb\u7597\u6548\u679c\u51cf\u534a\u3002","maxrank":1,"key":"7","image":{"full":"SummonerHeal.png","sprite":"spell0.png","group":"spell","x":336,"y":0,"w":48,"h":48}},"SummonerMana":{"id":"SummonerMana","name":"\u6e05\u6670\u672f","description":"\u4e3a\u4f60\u7684\u82f1\u96c4\u548c\u5468\u56f4\u7684\u53cb\u519b\u56de\u590d40%\u7684\u6700\u5927\u6cd5\u529b\u503c\u3002","maxrank":1,"key":"13","image":{"full":"SummonerMana.png","sprite":"spell0.png","group":"spell","x":384,"y":0,"w":48,"h":48}},"SummonerOdinGarrison":{"id":"SummonerOdinGarrison","name":"\u536b\u620d\u90e8\u961f","description":"\u6211\u65b9\u9632\u5fa1\u5854\uff1a\u56de\u590d\u901f\u5ea6\u5f97\u5230\u5de8\u5e45\u63d0\u9ad8\uff0c\u6301\u7eed8\u79d2\u3002\u654c\u65b9\u9632\u5fa1\u5854\uff1a\u51cf\u5c1180%\u7684\u653b\u51fb\u529b\uff0c\u6301\u7eed8\u79d2\u3002","maxrank":1,"key":"17","image":{"full":"SummonerOdinGarrison.png","sprite":"spell0.png","group":"spell","x":432,"y":0,"w":48,"h":48}},"SummonerPoroRecall":{"id":"SummonerPoroRecall","name":"\u62a4\u9a7e\uff01","description":"\u5feb\u901f\u4f4d\u79fb\u5230\u9b44\u7f57\u4e4b\u738b\u65c1\u8fb9\u3002","maxrank":1,"key":"30","image":{"full":"SummonerPoroRecall.png","sprite":"spell0.png","group":"spell","x":0,"y":48,"w":48,"h":48}},"SummonerPoroThrow":{"id":"SummonerPoroThrow","name":"\u9b44\u7f57\u6295\u63b7","description":"\u628a\u4e00\u4e2a\u9b44\u7f57\u6295\u5411\u4f60\u7684\u654c\u4eba\u3002\u5982\u679c\u5b83\u547d\u4e2d\u4e86\u4e00\u540d\u654c\u4eba\uff0c\u90a3\u4e48\u4f60\u63a5\u4e0b\u6765\u5c31\u53ef\u4ee5\u5feb\u901f\u4f4d\u79fb\u5230\u88ab\u547d\u4e2d\u7684\u654c\u4eba\u65c1\u8fb9\u3002","maxrank":1,"key":"31","image":{"full":"SummonerPoroThrow.png","sprite":"spell0.png","group":"spell","x":48,"y":48,"w":48,"h":48}},"SummonerSmite":{"id":"SummonerSmite","name":"\u60e9\u6212","description":"\u5bf9\u76ee\u6807\u53f2\u8bd7\u91ce\u602a\u3001\u5927\u578b\u91ce\u602a\u6216\u654c\u65b9\u5c0f\u5175\u9020\u6210390-1000\uff08\u53d6\u51b3\u4e8e\u82f1\u96c4\u7b49\u7ea7\uff09\u70b9\u771f\u5b9e\u4f24\u5bb3\u3002","maxrank":1,"key":"11","image":{"full":"SummonerSmite.png","sprite":"spell0.png","group":"spell","x":96,"y":48,"w":48,"h":48}},"SummonerSnowball":{"id":"SummonerSnowball","name":"\u6807\u8bb0","description":"\u6cbf\u76f4\u7ebf\u6254\u51fa\u4e00\u4e2a\u96ea\u7403\u3002\u5982\u679c\u96ea\u7403\u547d\u4e2d\u4e86\u4e00\u4e2a\u654c\u4eba\uff0c\u90a3\u4e48\u8fd9\u4e2a\u654c\u4eba\u4f1a\u88ab\u3010\u6807\u8bb0\u3011\uff0c\u5e76\u4e14\u4f60\u7684\u82f1\u96c4\u63a5\u4e0b\u6765\u53ef\u4ee5\u5feb\u901f\u7a81\u8fdb\u5230\u88ab\u3010\u6807\u8bb0\u3011\u7684\u76ee\u6807\u65c1\u8fb9\u3002","maxrank":1,"key":"32","image":{"full":"SummonerSnowball.png","sprite":"spell13.png","group":"spell","x":384,"y":96,"w":48,"h":48}},"SummonerTeleport":{"id":"SummonerTeleport","name":"\u4f20\u9001","description":"\u5728\u5f15\u5bfc3.5\u79d2\u540e\uff0c\u5c06\u82f1\u96c4\u4f20\u9001\u5230\u53cb\u65b9\u5efa\u7b51\u7269\u3001\u5c0f\u5175\u6216\u5b88\u536b\u65c1\u8fb9\u3002","maxrank":1,"key":"12","image":{"full":"SummonerTeleport.png","sprite":"spell0.png","group":"spell","x":144,"y":48,"w":48,"h":48}}},"updated":"2016-01-19"};
