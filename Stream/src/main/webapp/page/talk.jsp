<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%
	String path = request.getContextPath();
	String basePath = request.getServerName() + ":"
			+ request.getServerPort() + path + "/";
%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN"
"http://www.w3.org/TR/html4/strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<script type="text/javascript" src="../js1/jquery-1.11.1.min.js"></script>
<style>
textarea {
	height: 300px;
	width: 100%;
	resize: none;
	outline: none;
}

input[type=button] {
	float: right;
	margin: 5px;
	width: 50px;
	height: 35px;
	border: none;
	color: white;
	font-weight: bold;
	outline: none;
}

.clear {
	background: red;
}

.send {
	background: green;
}

.clear:active {
	background: yellow;
}

.send:active {
	background: yellow;
}

.msg {
	width: 100%;
	height: 25px;
	outline: none;
}

#content {
	border: 1px solid gray;
	width: 100%;
	height: 400px;
	overflow-y: scroll;
}

.from {
	background-color: green;
	width: 80%;
	border-radius: 10px;
	height: 30px;
	line-height: 30px;
	margin: 5px;
	float: left;
	color: white;
	padding: 5px;
	font-size: 22px;
}

.to {
	background-color: gray;
	width: 80%;
	border-radius: 10px;
	height: 30px;
	line-height: 30px;
	margin: 5px;
	float: right;
	color: white;
	padding: 5px;
	font-size: 22px;
}

.name {
	color: gray;
	font-size: 12px;
}

.tmsg_text {
	color: white;
	background-color: rgb(47, 47, 47);
	font-size: 18px;
	border-radius: 5px;
	padding: 2px;
}

.fmsg_text {
	color: white;
	background-color: rgb(66, 138, 140);
	font-size: 18px;
	border-radius: 5px;
	padding: 2px;
}

.sfmsg_text {
	color: white;
	background-color: rgb(148, 16, 16);
	font-size: 18px;
	border-radius: 5px;
	padding: 2px;
}

.tmsg {
	clear: both;
	float: right;
	width: 80%;
	text-align: right;
}

.fmsg {
	clear: both;
	float: left;
	width: 80%;
}
</style> -->
<script>

		var path = '<%=basePath%>';
		var uid=<%=session.getAttribute("uid")%>;
		if(uid==-1){
			location.href="<%=basePath%>";
		}
		//var uid=1;
		var path="localhost:8080/Stream";
		var from=uid;//uid;
		var fromName='${name}';
		if(uid==1){
			var to=2;
		}else{
			var to=1;
		}
		//var to=uid;//==1?2:1
		var websocket;
		if ('WebSocket' in window) {
			alert("ws://" + path + "/ws?uid="+uid);//     ws://localhost:8080/Stream/ws?uid=1
			websocket = new WebSocket("ws://" + path + "/ws.do?uid="+uid);
		} else if ('MozWebSocket' in window) {
			websocket = new MozWebSocket("ws://" + path + "/ws"+uid);
		} else {
			alert("web1");
			websocket = new SockJS("http://" + path + "/ws/sockjs"+uid);
		}
		websocket.onopen = function(event) {
			console.log("WebSocket:已连接");
			alert("WebSocket:已连接");
			console.log(event);
		};
		websocket.onmessage = function(event) {
			var data=JSON.parse(event.data);
			console.log("WebSocket:收到一条消息",data);
			//alert(data);
			var textCss=data.from==-1?"sfmsg_text":"fmsg_text";
			$("#content").append("<div class='fmsg'><label class='name'>"+data.fromName+"&nbsp;"+data.date+"</label><div class='"+textCss+"'>"+data.text+"</div></div>");
			scrollToBottom();
		};
		websocket.onerror = function(event) {
			console.log("WebSocket:发生错误 ");
			console.log(event);
		};
		websocket.onclose = function(event) {
			console.log("WebSocket:已关闭");
			console.log(event);
		}
		function sendMsg(){
				var v=$("#msg").val();
				if(v==""){
					return;
				}else{
					var data={};
					data["from"]=from;
					data["fromName"]=fromName;
					data["to"]=to;
					data["text"]=v;
					websocket.send(JSON.stringify(data));
					$("#content").append("<div class='tmsg' style='margin-left: 250px;'><label class='name'>我&nbsp;"+new Date().Format("yyyy-MM-dd hh:mm:ss")+"</label><div class='tmsg_text'>"+data.text+"</div></div>");
					scrollToBottom();
					$("#msg").val("");
				}
			}
			
			function scrollToBottom(){
				var div = document.getElementById('content');
				div.scrollTop = div.scrollHeight;
			}
			
			Date.prototype.Format = function (fmt) { //author: meizz 
			    var o = {
			        "M+": this.getMonth() + 1, //月份 
			        "d+": this.getDate(), //日 
			        "h+": this.getHours(), //小时 
			        "m+": this.getMinutes(), //分 
			        "s+": this.getSeconds(), //秒 
			        "q+": Math.floor((this.getMonth() + 3) / 3), //季度 
			        "S": this.getMilliseconds() //毫秒 
			    };
			    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
			    for (var k in o)
			    if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
			    return fmt;
			}
			
			function send(event){
				var code;
				 if(window.event){
					 code = window.event.keyCode; // IE
				 }else{
					 code = e.which; // Firefox
				 }
				if(code==13){ 
					sendMsg();            
				}
			}
			
			function clearAll(){
				$("#content").empty();
			}
		</script>
</head>
<body>
<html>
<head>
<meta charset="utf-8">
<title>双子稚心丶Amor</title>
<link href="../csss/style.css" rel="stylesheet" type="text/css">
<script src="../jq/jquery.js"></script>
<script src="../jq/index.js"></script>
<script src="../jq/superslide.2.1.js"></script>
<script src="../jq/nicescroll.js"></script>
</head>

<body>
<div class="qq-exe"><img src="../images/QQ-ICON.png"><input type="text" value="腾讯QQ" placeholder="腾讯QQ"></div>

<div class="win-bg"><img src="../images/win-bg.png" ></div>

<div class="qq-login">
  <div class="login-menu">
    <span></span><span></span><span class="login-close"></span>
  </div>
  <div class="login-ner">
    <div class="login-left">
      <div class="login-head"><img src="../images/login/head.jpg"></div>
    </div>
    <div class="login-on">
     <form action="${pageContext.request.contextPath}/msg/login.do" method="post">
      <div class="login-txt">
      <input type="text" placeholder="QQ号码/手机/邮箱" name="id"><input type="password" placeholder="密码" name="password"></div>
      <div class="login-xuan"><span class="fl"><input type="checkbox"><i>记住密码</i></span><span class="fr"><input type="checkbox"><i>自动登录</i></span></div>
      <div class="login-but">安全登录<input type="submit" value=" " class="a" > </div>
      </form>	
    </div>
    <div class="login-right">
      <a href="http://zc.qq.com/chs/index.html" target="_blank">注册账号</a><a href="https://aq.qq.com/cn2/findpsw/pc/pc_find_pwd_input_account?pw_type=0&aquin=" target="_blank">找回密码</a>
    </div>
  </div>
</div>

<div class="qq">
  <div class="qq-top">
    <div class="qq-top-icon">
      <i><img src="images/qq-top.png"></i>
      <span class="qq-top-02 close"><img src="../images/qq-top-02.png"></span>
      <span class="qq-top-01 min"><img src="../images/qq-top-01.png"></span>
    </div>
    <div class="qq-top-name">
      <span>小木偶的心</span>
      <dl><dd><img src="../images/zai.png"></dd><dt><img src="../images/lv.png"></dt><dt><img src="images/svip.png"></dt></dl>
    </div>
    <div class="qq-top-shuo"><input type="text" value="这两天空间被各种婚礼刷屏了"></div>
    <div class="qq-top-menu">
      <ul>
        <li></li><li></li><li></li><li></li>
      </ul>
      <span class="qq-top-001"></span>
      <span class="qq-top-002"></span>
    </div>
    <div class="qq-serch">搜索：联系人、讨论组、群、企业</div>
  </div>
  <div class="qq-xuan">
    <ul>
      <li class="qq-xuan-li"><span></span><i></i></li>
      <li><span></span><i></i></li>
      <li><span></span><i></i></li>
      <li><span></span><i></i></li>
    </ul>
  </div>
  <div class="qq-hui">
    <ul>
      <li>
        <div class="qq-hui-img"><img src="../images/head/01.jpg"><i></i></div>
        <div class="qq-hui-name"><span>腾讯官方在线客服</span><i>16:30</i></div>
        <div class="qq-hui-txt" title="">欢迎使用腾讯官方在线客服，请选择您所要咨询的问题： 
 划重点！！！【  季前赛更新 铸就你的取胜之道   】 
  1.举报违规专线  
  2.封号问题  
  3.游戏登录问题  
  4.游戏卡机问题  
  5.游戏操作、出装等攻略问题  
  6.各渠道充值问题  
  7.活动专区  
  8.其他问题  
  S7赛季奖励问题详解  
   人工服务  </div>
      </li>
      <li>
        <div class="qq-hui-img"><img src="../images/head/02.jpg"><i></i></div>
        <div class="qq-hui-name"><span class="red">尛伊_6th空白</span><i>16:29</i></div>
        <div class="qq-hui-txt" title="">后天上午十点钟有漫展哦~我有门票你去么[图片]</div>
      </li>
      <li>
        <div class="qq-hui-img"><img src="../images/head/03.jpg"><i></i></div>
        <div class="qq-hui-name"><span>一粒沙~白</span><i>16:29</i></div>
        <div class="qq-hui-txt" title="">[图片]怎么样看起来好吃吧</div>
      </li>
      <li>
        <div class="qq-hui-img"><img src="../images/head/04.jpg"><i></i></div>
        <div class="qq-hui-name"><span class="red">彡分钟丶热°</span><i>16:26</i></div>
        <div class="qq-hui-txt" title="">恩 拜~</div>
      </li>
      <li>
        <div class="qq-hui-img"><img src="../images/head/05.jpg"><i></i></div>
        <div class="qq-hui-name"><span class="red">二次元灬小埋酱</span><i>16:24</i></div>
        <div class="qq-hui-txt" title="">欧尼酱 >~< 下次带我去吃好吃的好不好嘛</div>
      </li>
      <li>
        <div class="qq-hui-img"><img src="../images/head/06.jpg"><i></i></div>
        <div class="qq-hui-name"><span>爱思考的逗比</span><i>16:21</i></div>
        <div class="qq-hui-txt" title="">[图片]这个公式我算了一天终于算出来了</div>
      </li>
      <li>
        <div class="qq-hui-img"><img src="../images/head/07.jpg"><i></i></div>
        <div class="qq-hui-name"><span>二货青年欢乐多</span><i>16:21</i></div>
        <div class="qq-hui-txt" title="">今天我踢了我前面的同学一脚、被他狠狠地</div>
      </li>
      <li>
        <div class="qq-hui-img"><img src="../images/head/08.jpg"><i></i></div>
        <div class="qq-hui-name"><span>喵喵喵喵~喵星人</span><i>16:21</i></div>
        <div class="qq-hui-txt" title="">屁颠屁颠卖萌喵星人驾到、愚蠢的地球人</div>
      </li>
      <li>
        <div class="qq-hui-img"><img src="../images/head/01.jpg"><i></i></div>
        <div class="qq-hui-name"><span>室外摄影大师</span><i>16:30</i></div>
        <div class="qq-hui-txt" title="">下次我们去公园拍摄吧~[图片]</div>
      </li>
      <li>
        <div class="qq-hui-img"><img src="../images/head/02.jpg"><i></i></div>
        <div class="qq-hui-name"><span class="red">尛伊_6th空白</span><i>16:29</i></div>
        <div class="qq-hui-txt" title="">后天上午十点钟有漫展哦~我有门票你去么[图片]</div>
      </li>
      <li>
        <div class="qq-hui-img"><img src="../images/head/03.jpg"><i></i></div>
        <div class="qq-hui-name"><span>一粒沙~白</span><i>16:29</i></div>
        <div class="qq-hui-txt" title="">[图片]怎么样看起来好吃吧</div>
      </li>
      <li>
        <div class="qq-hui-img"><img src="../images/head/04.jpg"><i></i></div>
        <div class="qq-hui-name"><span class="red">彡分钟丶热°</span><i>16:26</i></div>
        <div class="qq-hui-txt" title="">恩 拜~</div>
      </li>
      <li>
        <div class="qq-hui-img"><img src="../images/head/05.jpg"><i></i></div>
        <div class="qq-hui-name"><span class="red">二次元灬小埋酱</span><i>16:24</i></div>
        <div class="qq-hui-txt" title="">欧尼酱 >~< 下次带我去吃好吃的好不好嘛</div>
      </li>
      <li>
        <div class="qq-hui-img"><img src="../images/head/06.jpg"><i></i></div>
        <div class="qq-hui-name"><span>爱思考的逗比</span><i>16:21</i></div>
        <div class="qq-hui-txt" title="">[图片]这个公式我算了一天终于算出来了</div>
      </li>
      <li>
        <div class="qq-hui-img"><img src="../images/head/07.jpg"><i></i></div>
        <div class="qq-hui-name"><span>二货青年欢乐多</span><i>16:21</i></div>
        <div class="qq-hui-txt" title="">今天我踢了我前面的同学一脚、被他狠狠地</div>
      </li>
      <li>
        <div class="qq-hui-img"><img src="../images/head/08.jpg"><i></i></div>
        <div class="qq-hui-name"><span>喵喵喵喵~喵星人</span><i>16:21</i></div>
        <div class="qq-hui-txt" title="">屁颠屁颠卖萌喵星人驾到、愚蠢的地球人</div>
      </li>
    </ul>
  </div>
  <div class="qq-bot">
    <div class="qq-menu">
      <ul>
        <li><img src="../images/bot-menu/01.png"></li>
        <li><img src="../images/bot-menu/02.png"></li>
        <li><img src="../images/bot-menu/03.png"></li>
        <li><img src="../images/bot-menu/04.png"></li>
        <li><img src="../images/bot-menu/05.png"></li>
        <li><img src="../images/bot-menu/06.png"></li>
        <li><img src="../images/bot-menu/07.png"></li>
        <li><img src="../images/bot-menu/08.png"></li>
        <li><img src="../images/bot-menu/09.png"></li>
        <li><img src="../images/bot-menu/10.png"></li>
      </ul>
    </div>
    <div class="qq-bou-she">
      <ul>
        <li><img src="../images/bot-menu/11.png"></li>
        <li><img src="../images/bot-menu/12.png"></li>
        <li><img src="../images/bot-menu/13.png"></li>
        <li><img src="../images/bot-menu/14.png"></li>
        <li><img src="../images/bot-menu/15.png"></li>
        <li><img src="../images/bot-menu/16.png"><span>查找</span></li>
        <li><img src="../images/bot-menu/05.png"><span>应用宝</span></li>
      </ul>
    </div>
  </div>
</div>

<div class="qq-chat">
  <div class="qq-chat-win">
    <ul>
      <li class="she"></li><li class="min"></li><li class="max"></li><li class="close"></li>
    </ul>
  </div>
  <div class="qq-chat-top">
    <div class="qq-chat-tops">
      <div class="qq-chat-t-head"><img src=""></div>
      <div class="qq-chat-t-name"></div>
      <div class="qq-chat-t-shuo">充钱，你才会变得更强！</div>
    </div>
    <div class="qq-chat-menu">
      <ul>
        <li><span><img src="../images/chat/icon-01.png"></span></li>
        <li><span><img src="../images/chat/icon-02.png"></span></li>
        <li><span><img src="../images/chat/icon-03.png"></span><i></i></li>
        <li><span><img src="../images/chat/icon-04.png"></span><i></i></li>
        <li><span><img src="../images/chat/icon-05.png"></span><i></i></li>
        <li><span><img src="../images/chat/icon-06.png"></span></li>
        <li><span><img src="../images/chat/icon-07.png"></span><i></i></li>
      </ul>
    </div>
  </div>
  <div class="qq-chat-bot">
    <div class="qq-chat-txt">
      <ul>
        <li>
          <div class="qq-chat-you blue"><span></span><i></i></div>
          <div class="qq-chat-ner" id="content">在么？找你有点事</div>
        </li>
      </ul>
    </div>
    <div class="qq-chat-text">
      <ul>
        <li><span><img src="../images/chat/menu-01.png"></span></li>
        <li><span><img src="../images/chat/menu-02.png"></span></li>
        <li><span><img src="../images/chat/menu-03.png"></span></li>
        <li><span><img src="../images/chat/menu-04.png"></span></li>
        <li><span><img src="../images/chat/menu-05.png"></span><i></i></li>
        <li><span><img src="../images/chat/menu-06.png"></span></li>
        <li><span><img src="../images/chat/menu-07.png"></span><i></i></li>
        <li><span><img src="../images/chat/menu-08.png"></span></li>
        <li><span><img src="../images/chat/menu-09.png"></span><i></i></li>
        <li class="fr" style="margin-right:5px;"><span><img src="../images/chat/menu-10.png"></span><p>消息记录</p><i></i></li>
      </ul>
      <textarea   id="msg"  class="msg" onkeydown="send(event)"></textarea>
      <div class="qq-chat-but">
        <span class="fasong" onclick="sendMsg()">发送(S)</span>
        <span class="close-chat"  onclick="clearAll()">关闭(C)</span>
      </div>
    </div>
  </div>
</div>
<div style="text-align:center;">
<p>来源:<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p>
</div>
</body>
</html>

	<%-- 欢迎：${sessionScope.name }
	<div id="content"></div>
	<input type="text" placeholder="请输入要发送的信息" id="msg" class="msg" onkeydown="send(event)">
	<input type="button" value="发送" class="send" onclick="sendMsg()" >
	<input type="button" value="清空" class="clear" onclick="clearAll()"> --%>
