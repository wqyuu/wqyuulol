<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'MyTest1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="js/jquery-1.8.0.min.js"></script>
   <script >
   
   var showSummonerFun = function(){
   /*     
	var datas = LOLsummonerjs.data,
	u="./images/",
	getSummonerList = function(){
		var content=[],
		nid,
		url,
		name;
		for( var p in datas){
			nid = datas[p]["id"];
			if(nid=="SummonerBattleCry"||nid=="SummonerFortify"||nid=="SummonerPromoteSR"||nid=="SummonerRally"){continue;}
			name = datas[p]["name"];
			url = u+datas[p]["image"].full;
			//push添加元素到数组的尾部
			content.push('<li id="'+nid+'"><img src="'+url+'" alt="'+name+'"><p>'+name+'</p><span class="sbg"></span></li>');
		}
		//join 把数组元素转换成字符串，然后连起来，默认以“,”分割
		g("spellList").innerHTML=content.join('');//g  global简写 查找符合条件的  测试：g("VideoContent").innerHTML="niubibibibi";
	}(),
	ghtml = function(id){
		var d = datas[id],
		url = u+d.image.full,

		str = '<div class="spell-title"><img src="'+url+'" alt="'+d.name+'"><h4>'+d.name+'</h4><p class="cons">召唤师等级：<span>'+d.maxrank+'</span>级</p></div><div class="spell-desc">'+d.description+'</div><div><img src="./images/'+d.key+'.jpg" alt="'+d.name+'"></div>';
		return str;
	},
	showSummonerList = function(){
		var sw = g("spellList").getElementsByTagName('li'),
		now = 0,
		id,
		count;
		sw[now].className = "current";
		id = sw[now].id;
		g("spellDefail").innerHTML = ghtml(id);
		for (var i = 0; i < sw.length; i++) {
			sw[i].count = i;
			sw[i].onclick = function(){
				sw[now].className = "";   //设置上一个样式 空 消除边框
				this.className = "current";  //添加当前选中技能样式边框为蓝色
				id = this.id;
				g("spellDefail").innerHTML = ghtml(id);
				now = this.count;
				//alert(now);
			}
		}; 
	}();*/
};
loadScript("page/jineng.js",showSummonerFun);//   "脚本路径.js"，回调函数
  /*  var lis=new Array();
   function  lol(){
       alert("-----");
            $.ajax({
                   type:"post",
                   url:"Skill/allskill",
                   data:"",
                   datetype:"text", 
                   async:false,
                   success:function(objstr){
                   alert("666");
                         var objs=eval("("+objstr+")");
                         //alert(objs);
                         //var trs=new Array();
                         for(var i=0;i<objs.length;i++){
                            //var obj=objs[i];
                            lis[i]=objs[i];                           
                         }
                        // alert("777");
                         //alert(name);
                        var  name=""+objs[0].name;
                         alert(name);
                        // alert(name);
                         //$("#commTab").html(trs);
                   },
                   error:function(){
                     alert("4396");
                   }
            });   
            return lis;
       } */
   </script>
  </head>
  
  <body>
    This is my JSP page. <br>
    <ul id="skinBG" class="defail-skin-bg" style="left: -1240px;"><li title="默认皮肤"><img src="./images/big103000.jpg" alt="默认皮肤"></li><li title="高丽风情 阿狸"><img src="./images/big103001.jpg" alt="高丽风情 阿狸"></li><li title="暗影妖狐 阿狸"><img src="./images/big103002.jpg" alt="暗影妖狐 阿狸"></li><li title="焰尾妖狐 阿狸"><img src="./images/big103003.jpg" alt="焰尾妖狐 阿狸"></li><li title="偶像歌手 阿狸"><img src="./images/big103004.jpg" alt="偶像歌手 阿狸"></li><li title="勇者 阿狸"><img src="./images/big103005.jpg" alt="勇者 阿狸"></li><li title="风纪委员 阿狸"><img src="./images/big103006.jpg" alt="风纪委员 阿狸"></li><li title="电玩女神 阿狸"><img src="./images/big103007.jpg" alt="电玩女神 阿狸"></li><li title="星之守护者 阿狸"><img src="./images/big103014.jpg" alt="星之守护者 阿狸"></li></ul>
				<div class="defail-skin-nav">
					<div class="defail-skin-name"><span id="skinName">高丽风情 阿狸</span></div>
					<ul id="skinNAV"><li rel="_0" class=""><a title="默认皮肤"><img width="60" height="60" src="./images/small103000.jpg" alt="默认皮肤"><span class="sbor"></span></a></li><li rel="_1" class="current"><a title="高丽风情 阿狸"><img width="60" height="60" src="./images/small103001.jpg" alt="高丽风情 阿狸"><span class="sbor"></span></a></li><li rel="_2"><a title="暗影妖狐 阿狸"><img width="60" height="60" src="./images/small103002.jpg" alt="暗影妖狐 阿狸"><span class="sbor"></span></a></li><li rel="_3"><a title="焰尾妖狐 阿狸"><img width="60" height="60" src="./images/small103003.jpg" alt="焰尾妖狐 阿狸"><span class="sbor"></span></a></li><li rel="_4"><a title="偶像歌手 阿狸"><img width="60" height="60" src="./images/small103004.jpg" alt="偶像歌手 阿狸"><span class="sbor"></span></a></li><li rel="_5"><a title="勇者 阿狸"><img width="60" height="60" src="./images/small103005.jpg" alt="勇者 阿狸"><span class="sbor"></span></a></li><li rel="_6"><a title="风纪委员 阿狸"><img width="60" height="60" src="./images/small103006.jpg" alt="风纪委员 阿狸"><span class="sbor"></span></a></li><li rel="_7"><a title="电玩女神 阿狸"><img width="60" height="60" src="./images/small103007.jpg" alt="电玩女神 阿狸"><span class="sbor"></span></a></li><li rel="_8"><a title="星之守护者 阿狸"><img width="60" height="60" src="./images/small103014.jpg" alt="星之守护者 阿狸"><span class="sbor"></span></a></li></ul>
				</div>
    <img alt="" src="./images/small103000.jpg">
    <a href="javascript:lol()">5</a>
    
  </body>
</html>
