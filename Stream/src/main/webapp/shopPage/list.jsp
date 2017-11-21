<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE>
<html>
<head>
<base href="<%=basePath%>">
<script type="text/javascript" charset="utf-8" async=""
	src="./js/ta.js"></script><!-- ?na=800016781&amp;dm=qq.com&amp;cb=JSONP_CALLBACK_8_45 -->
<script type="text/javascript" charset="utf-8" async=""
	src="./js/ta.js?na=800016781&amp;dm=qq.com&amp;cb=JSONP_CALLBACK_6_6"></script>
<script type="text/javascript" charset="utf-8" async=""
	src="./js/ta.js?na=800053395&amp;dm=qq.com&amp;cb=JSONP_CALLBACK_4_89"></script>
<script type="text/javascript" charset="utf-8" async=""
	src="./js/ta.js?na=800016781&amp;dm=qq.com&amp;cb=JSONP_CALLBACK_2_85"></script>
<script type="text/javascript" charset="utf-8" async=""
	src="./js/contains.js"></script>
<script type="text/javascript" charset="utf-8" async=""
	src="http://combo.b.qq.com/c/=/crm/wpa/release/3.3.7/wpa/ta.js,/crm/wpa/release/3.3.7/wpa/kfuin.js,/crm/wpa/release/3.3.7/wpa/sid.js,/crm/wpa/release/3.3.7/util/titleFlash.js,/crm/wpa/release/3.3.7/util/className.js,/crm/wpa/release/3.3.7/util/Style.js,/crm/wpa/release/3.3.7/util/taskMgr.js?v=3.3.7.20160126"></script>
<script type="text/javascript" charset="utf-8" async=""
	src="./js/views.js"></script>
<script src="./js/cdn_djl.js" type="text/javascript"
	async=""></script>
<meta charset="utf-8">
<meta name="robots" content="all">
<meta http-equiv="x-ua-compatible" content="IE=edge">
<meta name="author" content="Tencent">
<title>商品列表-英雄联盟周边商城</title>
<meta name="Description"
	content="英雄联盟周边商城--打造你的英雄联盟生活方式！这是英雄联盟游戏团队服务于玩家，给到玩家更多更优质体验的地方，我们根据玩家喜爱的英雄原型，设计并制作很多好玩的实物周边，让英雄联盟走入你的生活，而不仅仅在电脑前。英雄联盟周边商城由腾讯公司搭建并服务于玩家，深圳市合泰文化发展有限公司为周边商城提供客服及物流等服务支持。">
<meta name="Keywords"
	content="英雄联盟,LOL,英雄联盟周边商城, 英雄联盟周边,英雄联盟商城, 英雄周边,英雄联盟手办,英雄联盟毛绒,英雄联盟公仔,英雄联盟海报,英雄联盟连帽衫,英雄联盟鼠标垫,LOL周边商城, LOL周边,LOL商城,LOL手办,LOL毛绒,LOL公仔,LOL海报,LOL连帽衫,LOL鼠标垫,卡牌大师,吉格斯手办,盖伦手办,金克丝手办,娜美手办,卡特琳娜手办,锤石,提莫帽子,英雄原型,男女服饰,海报艺术,手办毛绒,LOL,法师,刺客,坦克,射手,辅助,游戏周边,周边商城,游戏周边商城,腾讯周边商城腾讯互动娱乐周边商城">
<link rel="icon"
	href="./images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet"
	href="./css/usabase.css">
<link rel="stylesheet"
	href="./css/list.css">
<script charset="utf-8" async="" src="./js/i.js" id="_da"></script>
<script src="./js/cdn_dianjiliu.js"></script><!-- ?a=0.4539373799963886 -->
</head>

<style type="text/css">
.WPA3-SELECT-PANEL {
	z-index: 2147483647;
	width: 463px;
	height: 292px;
	margin: 0;
	padding: 0;
	border: 1px solid #d4d4d4;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 15px #d4d4d4;
}

.WPA3-SELECT-PANEL * {
	position: static;
	z-index: auto;
	top: auto;
	left: auto;
	right: auto;
	bottom: auto;
	width: auto;
	height: auto;
	max-height: auto;
	max-width: auto;
	min-height: 0;
	min-width: 0;
	margin: 0;
	padding: 0;
	border: 0;
	clear: none;
	clip: auto;
	background: transparent;
	color: #333;
	cursor: auto;
	direction: ltr;
	filter:;
	float: none;
	font: normal normal normal 12px "Helvetica Neue", Arial, sans-serif;
	line-height: 16px;
	letter-spacing: normal;
	list-style: none;
	marks: none;
	overflow: visible;
	page: auto;
	quotes: none;
	-o-set-link-source: none;
	size: auto;
	text-align: left;
	text-decoration: none;
	text-indent: 0;
	text-overflow: clip;
	text-shadow: none;
	text-transform: none;
	vertical-align: baseline;
	visibility: visible;
	white-space: normal;
	word-spacing: normal;
	word-wrap: normal;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	-ms-box-shadow: none;
	-o-box-shadow: none;
	box-shadow: none;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	-ms-border-radius: 0;
	-o-border-radius: 0;
	border-radius: 0;
	-webkit-opacity: 1;
	-moz-opacity: 1;
	-ms-opacity: 1;
	-o-opacity: 1;
	opacity: 1;
	-webkit-outline: 0;
	-moz-outline: 0;
	-ms-outline: 0;
	-o-outline: 0;
	outline: 0;
	-webkit-text-size-adjust: none;
	font-family: Microsoft YaHei, Simsun;
}

.WPA3-SELECT-PANEL a {
	cursor: auto;
}

.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-TOP {
	height: 25px;
}

.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-CLOSE {
	float: right;
	display: block;
	width: 47px;
	height: 25px;
	background:
		url(./images/SelectPanel-sprites.png)
		no-repeat;
}

.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-CLOSE:hover {
	background-position: 0 -25px;
}

.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-MAIN {
	padding: 23px 20px 45px;
}

.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-GUIDE {
	margin-bottom: 42px;
	font-family: "Microsoft Yahei";
	font-size: 16px;
}

.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-SELECTS {
	width: 246px;
	height: 111px;
	margin: 0 auto;
}

.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-CHAT {
	float: right;
	display: block;
	width: 88px;
	height: 111px;
	background:
		url(./images/SelectPanel-sprites.png)
		no-repeat 0 -80px;
}

.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-CHAT:hover {
	background-position: -88px -80px;
}

.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-AIO-CHAT {
	float: left;
}

.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-QQ {
	display: block;
	width: 76px;
	height: 76px;
	margin: 6px;
	background:
		url(./images/SelectPanel-sprites.png)
		no-repeat -50px 0;
}

.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-QQ-ANONY {
	background-position: -130px 0;
}

.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-LABEL {
	display: block;
	padding-top: 10px;
	color: #00a2e6;
	text-align: center;
}

.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-BOTTOM {
	padding: 0 20px;
	text-align: right;
}

.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-INSTALL {
	color: #8e8e8e;
}
</style>

<script src="./js/jquery-1.8.0.min.js"></script>
<script type="text/javascript">
  function all(){
     //alert("5");
       $.ajax({
		type : "post",
		url : "prod/inputAll",
		//data :"hid="+2,// +id,
		datetype : "text",
		//async : false,
		success : function(object) {
			objs = eval("(" + object + ")");
			//alert("success!");
			/* objs[0]//大类型
			objs[1]//小类型
			objs[2]//手办集合
			objs[3]//总页数 */
			var as="";
			for (var i = 0; i < objs[1]; i++) {
				//arr[i] = objs[i];
				//alert(ahri[i]);
				//
				as+="<a class='page_a2 page_a ' title='第"+(i+1)+"页'    href='javascript:slipage("+(i+1)+")'>"+(i+1)+"</a>"
			}
			$("#page").html(as);
			var prods="";
			for (var i = 0; i < objs[0].length; i++) {
				//arr[i] = objs[i];
				//alert(ahri[i]);
				prods+= "<li mallid='2326'><i class='ico-menu gl-like' ></i>"+
							"<a href='prod/Detail?id="+objs[0][i].id+"' target='_blank' class='gl-link'>"+
									"<div class='gl-img'>"+ 
								"<img src='./images/"+objs[0][i].img+"' width='527' height='506'>"+
									"</div><div class='gl-img gl-hoverimg'>"+
								"<img src='./images/"+objs[0][i].img+"' width='527' height='506' >"+
							"</div></a><p class='gl-name'>"+objs[0][i].names+"</p>"+
								"<p class='gl-pri'>"+objs[0][i].price+"</p></li>"; 
				/* prods+="<a href='' target='_blank' class='gl-link'>"+
							"<div class='gl-img'>"+
								"<img src='./images/"+objs[0][i].img+"' width='527' height='506' alt='1'>"+
							"</div></a>	<p class='gl-name'>"+objs[0][i].names+"</p><p class='gl-pri'>"+objs[0][i].price+"</p>"; */
			}
			$("#prod").html(prods);
		},
		error : function() {
			alert("4396");
		}
	});
	//alert(arr.length);
      
  }
  
 function addcla(){
  $("a").click(function(){
   alert("a");
       var $this=$(this);
         $this.toggleClass("click");
   });
 
 }
   function slipage(page){
   alert("slipage");
   
    $.ajax({
		type : "post",
		url : "prod/inputAll",
		data :"page="+page,// +id,
		datetype : "text",
		//async : false,
		success : function(object) {
			objs = eval("(" + object + ")");
			alert("success!");
			var as="";
			for (var i = 0; i < objs[1]; i++) {
				//arr[i] = objs[i];
				//alert(ahri[i]);
				//
				as+="<a class='page_a2 page_a ' title='第"+(i+1)+"页'  href='javascript:slipage("+(i+1)+")'>"+(i+1)+"</a>"
			}
			$("#page").html(as);
			var prods="";
			for (var i = 0; i < objs[0].length; i++) {
				//arr[i] = objs[i];
				//alert(ahri[i]);
				//
				prods+= "<li mallid='2326'><i class='ico-menu gl-like' ></i>"+
							"<a href='prod/Detail?id="+objs[0][i].id+"' target='_blank' class='gl-link'>"+
									"<div class='gl-img'>"+ 
								"<img src='./images/"+objs[0][i].img+"' width='527' height='506'>"+
									"</div><div class='gl-img gl-hoverimg'>"+
								"<img src='./images/"+objs[0][i].img+"' width='527' height='506' >"+
							"</div></a><p class='gl-name'>"+objs[0][i].names+"</p>"+
								"<p class='gl-pri'>"+objs[0][i].price+"</p></li>"; 
			}
			$("#prod").html(prods);
		},
		error : function() {
			alert("此类商品还没上架！");
		}
	}); 
   
   }
  var tags=new Array();
  function addtag(tag){
   alert("addtag");
  
  if(tag==1){
		tags+=tag+",";
		 
	}else if(tag==2){
		tags+=tag+",";
	}else if(tag==22){
		tags+=tag+",";
	}
	else if(tag==27){
		tags+=tag+",";
	}else if(tag==5){
		tags+=tag+",";
	}
	else if(tag==29){
		tags+=tag+",";
	}else if(tag==28){
		tags+=tag+",";
	}
	else if(tag==8){
		tags+=tag+",";
	}else if(tag==9){
		tags+=tag+",";
	}
	else if(tag==10){
		tags+=tag+",";
	}else if(tag==11){
		tags+=tag+",";
	}
  alert(tags);
    $.ajax({
		type : "post",
		url : "prod/protys",
		data :"tags="+tags,// +id,
		datetype : "text",
		//async : false,
		success : function(object) {
			objs = eval("(" + object + ")");
			alert("success!");
			var as="";
			for (var i = 0; i < objs[1]; i++) {
				//arr[i] = objs[i];
				//alert(ahri[i]);
				//
				as+="<a class='page_a2 page_a ' title='第"+(i+1)+"页'  href='javascript:slipage("+(i+1)+")'>"+(i+1)+"</a>"
			}
			$("#page").html(as);
			var prods="";
			for (var i = 0; i < objs[0].length; i++) {
				//arr[i] = objs[i];
				//alert(ahri[i]);
				//
				prods+= "<li mallid='2326'><i class='ico-menu gl-like' ></i>"+
							"<a href='prod/Detail?id="+objs[0][i].id+"' target='_blank' class='gl-link'>"+
									"<div class='gl-img'>"+ 
								"<img src='./images/"+objs[0][i].img+"' width='527' height='506'>"+
									"</div><div class='gl-img gl-hoverimg'>"+
								"<img src='./images/"+objs[0][i].img+"' width='527' height='506' >"+
							"</div></a><p class='gl-name'>"+objs[0][i].names+"</p>"+
								"<p class='gl-pri'>"+objs[0][i].price+"</p></li>"; 
			}
			$("#prod").html(prods);
		},
		error : function() {
			alert("此类商品还没上架！");
		}
	}); 
  }
  
</script>
<link rel="Stylesheet" type="text/css" href="./css/loginDialog.css" />
<script type="text/javascript" src="./js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">

		$(function($) {
			//弹出登录
			$("#example").hover(function() {
				$(this).stop().animate({
					opacity : '1'
				}, 600);
			}, function() {
				$(this).stop().animate({
					opacity : '0.6'
				}, 1000);
			}).on('click', function() {
				$("body").append("<div id='mask'></div>");
				$("#mask").addClass("mask").fadeIn("slow");
				$("#LoginBox").fadeIn("slow");
			});
			//
			//按钮的透明度
			$("#loginbtn").hover(function() {
				$(this).stop().animate({
					opacity : '1'
				}, 600);
			}, function() {
				$(this).stop().animate({
					opacity : '0.8'
				}, 1000);
			});
			//文本框不允许为空---按钮触发
			$("#loginbtn").on('click', function() {
				var txtName = $("#txtName").val();
				var txtPwd = $("#txtPwd").val();
				if (txtName == "" || txtName == undefined || txtName == null) {
					if (txtPwd == "" || txtPwd == undefined || txtPwd == null) {
						$(".warning").css({
							display : 'block'
						});
					} else {
						$("#warn").css({
							display : 'block'
						});
						$("#warn2").css({
							display : 'none'
						});
					}
				} else {
					if (txtPwd == "" || txtPwd == undefined || txtPwd == null) {
						$("#warn").css({
							display : 'none'
						});
						$(".warn2").css({
							display : 'block'
						});
					} else {
						$(".warning").css({
							display : 'none'
						});
					}
				}
			});
			//文本框不允许为空---单个文本触发
			$("#txtName").on('blur', function() {
				var txtName = $("#txtName").val();
				if (txtName == "" || txtName == undefined || txtName == null) {
					$("#warn").css({
						display : 'block'
					});
				} else {
					$("#warn").css({
						display : 'none'
					});
				}
			});
			$("#txtName").on('focus', function() {
				$("#warn").css({
					display : 'none'
				});
			});
			//
			$("#txtPwd").on('blur', function() {
				var txtName = $("#txtPwd").val();
				if (txtName == "" || txtName == undefined || txtName == null) {
					$("#warn2").css({
						display : 'block'
					});
				} else {
					$("#warn2").css({
						display : 'none'
					});
				}
			});
			$("#txtPwd").on('focus', function() {
				$("#warn2").css({
					display : 'none'
				});
			});
			//关闭
			$(".close_btn").hover(function() {
				$(this).css({
					color : 'black'
				})
			}, function() {
				$(this).css({
					color : '#999'
				})
			}).on('click', function() {
				$("#LoginBox").fadeOut("fast");
				$("#mask").css({
					display : 'none'
				});
			});
		});
    </script>
</head>
<body onLoad="all()">
	<iframe src="javascript:false" title="" frameborder="0" tabindex="-1"
		style="position: absolute; width: 0px; height: 0px; border: 0px;"></iframe>
	<iframe style="display: none;"></iframe>
<!--[if lt IE 8]>
<p class="chromeframe">您使用的IE浏览器版本过低，本站不再支持，<a href="http://windows.microsoft.com/">升级您的IE浏览器</a>，或使用<a href="http://www.google.com/chromeframe/?redirect=true">Google Chrome</a>、<a href="http://www.google.com/chromeframe/?redirect=true">Firefox</a>等高级浏览器，将会得到更好的体验！</p>
<![endif]-->
<!--低版本IE提示 S-->
<!--低版本IE提示 E-->
<div class="wrap">
    <!--顶部-->
<div class="topbar wfull">
<div class="top clearfix">
    <div class="logobar fl">
        <a class="logo" href="/index.shtml?CLICKTAG=lolriotmall.pc.index.logo" title="英雄联盟周边商城"></a>
    </div>
    <div class="top_mem fr" id="topHead">
        <!-- 登录状态 -->
        <div class="login-bar">
        
	
	       <c:if test="${not empty vip }">
            <div id="logined" class="fl logined-box clearfix" style="display: block;">
                <span>欢迎您 ,</span>
                <div class="fl login-user clearfix">
                    <span style="display:none" id="login_userFace_span">http://thirdqq.qlogo.cn/g?b=sdk&amp;k=1aiaSWFl1TuNyxgQstHIXxw&amp;s=100&amp;t=1507191730</span>
                    <span style="display:block" id="login_qq_span">${vip.qq }</span>
                    <b id="login_nickname_span"></b>
                    <i class="fl ico-menu marrl"></i>
                    <div class="menu-downbox">
                        <div class="downbox-bg"></div>
                        <ul class="menu-downlist clearfix">
                            <li class="first">
                                <a href="/user/orderlist.shtml" class="downlist-link" title="我的订单">我的订单</a>
                            </li>
                            <li>
                                <a href="/user/favorlist.shtml" class="downlist-link" title="我的收藏">我的收藏</a>
                            </li>
                            <li>
                                <a href="/user/userinfo.shtml" class="downlist-link" title="个人信息">个人信息</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <a href="javascript:logout();">退出</a>
            </div>
            </c:if>
            <!-- 未登录状态 -->
             <c:if test="${empty vip }">
            <a href="#" id="example"><i class="fl ico-menu mqq"></i>
                <span class="mtxt">用QQ账号登录</span></a>
            <!-- <a id="unlogin" href="javascript:showLoginDiv();" class="qqlogin" style="display: block;"> -->
                
                
          <!--   </a> -->
          </c:if>
            <a href="/cart.shtml?CLICKTAG=lolriotmall.pc.index.cart" class="menu-cart clearfix">
                <i class="fl ico-menu mcart"></i>
                <span class="mtxt">购物车</span>
                <span id="headerCartNum" class="ico-menu mpoint">4</span>
            </a>
            <div href="javascript:;" class="fl menu-ser clearfix">
                <i class="fl ico-menu mser"></i>
                <span class="mtxt">客服咨询</span>
                <i class="fl ico-menu marrl"></i>
                <div class="menu-downbox">
                    <div class="downbox-bg"></div>
                    <ul class="menu-downlist">
                        <li class="first">
                            <a id="qq_qian" href="javascript:;" class="downlist-link" title="售前咨询">售前咨询</a>
                        </li>
                        <li>
                            <a id="qq_hou" href="javascript:;" class="downlist-link" title="售后咨询">售后咨询</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="fl lolweixin clearfix">
                <i class="fl ico-menu mwxin"></i>
                <span class="mtxt">微信商城</span>
                <i class="fl ico-menu marrl"></i>
                <div class="mwx-code">
                    <div class="mwx-codebg"></div>
                    <div class="mwx-codeimg">
                        <img src="../images/wxcode.png" width="83" height="82" alt="微信二维码">
                    </div>
                    <p class="mwx-txt">扫码手机购买</p>
                </div>
            </div>
        </div>
        <div class="top_qqtip">
           	
        </div>
    </div>
</div>
<!--[if !IE]>导航栏<![endif]-->
<div class="menubar clearfix">
    <!--主导航栏-->
    <ul id="blk_nav" class="menu_zhong fl">          <li class="menu_zhongli">
        <a id="menu_45" href="/index.shtml?CLICKTAG=lolriotmall.pc.index.nav45">商城首页</a>
    </li>
        <li class="menu_zhongli">
            <a id="menu_46" href="/list.shtml?catid=101&amp;CLICKTAG=lolriotmall.pc.index.nav46">雕塑手办</a>
            <div class="submenu clearfix">
                <ul class="fl submenu-list">
                    <li>
                        <a href="/list.shtml?catid=121&amp;CLICKTAG=lolriotmall.pc.index.nav46_subNav51" class="submenu-link" parentid="menu_46">大型雕塑</a>
                    </li>
                    <li>
                        <a href="/list.shtml?catid=122&amp;CLICKTAG=lolriotmall.pc.index.nav46_subNav52" class="submenu-link" parentid="menu_46">中型雕塑</a>
                    </li>
                    <li>
                        <a href="/list.shtml?catid=208&amp;CLICKTAG=lolriotmall.pc.index.nav46_subNav66" class="submenu-link" parentid="menu_46">限定款手办</a>
                    </li>
                    <li>
                        <a href="/list.shtml?catid=209&amp;CLICKTAG=lolriotmall.pc.index.nav46_subNav67" class="submenu-link" parentid="menu_46">手办</a>
                    </li>
                </ul>
                <a class="fr subm-img" href="/list.shtml?catid=101&amp;CLICKTAG=lolriotmall.pc.index.nav46_navIcon46">
                    <img src="./images/20170622170047_844267.jpg" width="81" height="81" alt="雕塑手办">
                </a>
            </div>
        </li>
        <li class="menu_zhongli">
            <a id="menu_47" href="/list.shtml?catid=119&amp;CLICKTAG=lolriotmall.pc.index.nav47">毛绒玩偶</a>
            <div class="submenu clearfix">
                <ul class="fl submenu-list">
                    <li>
                        <a href="/list.shtml?catid=125&amp;CLICKTAG=lolriotmall.pc.index.nav47_subNav54" class="submenu-link" parentid="menu_47">玩偶</a>
                    </li>
                    <li>
                        <a href="/list.shtml?catid=126&amp;CLICKTAG=lolriotmall.pc.index.nav47_subNav55" class="submenu-link" parentid="menu_47">帽子</a>
                    </li>
                </ul>
                <a class="fr subm-img" href="/list.shtml?catid=119&amp;CLICKTAG=lolriotmall.pc.index.nav47_navIcon47">
                    <img src="./images/20170622162123_179921.png" width="81" height="81" alt="毛绒玩偶">
                </a>
            </div>
        </li>
        <li class="menu_zhongli">
            <a id="menu_48" href="/list.shtml?catid=120&amp;CLICKTAG=lolriotmall.pc.index.nav48">男女服饰</a>
            <div class="submenu clearfix">
                <ul class="fl submenu-list">
                    <li>
                        <a href="/list.shtml?catid=127&amp;CLICKTAG=lolriotmall.pc.index.nav48_subNav59" class="submenu-link" parentid="menu_48">卫衣&amp;夹克</a>
                    </li>
                    <li>
                        <a href="/list.shtml?catid=128&amp;CLICKTAG=lolriotmall.pc.index.nav48_subNav60" class="submenu-link" parentid="menu_48">T恤</a>
                    </li>
                </ul>
                <a class="fr subm-img" href="/list.shtml?catid=120&amp;CLICKTAG=lolriotmall.pc.index.nav48_navIcon48">
                    <img src="./images/20170622165956_696740.jpg" width="81" height="81" alt="男女服饰">
                </a>
            </div>
        </li>
        <li class="menu_zhongli">
            <a id="menu_49" href="/list.shtml?catid=117&amp;CLICKTAG=lolriotmall.pc.index.nav49">海报艺术</a>
            <div class="submenu clearfix">
                <ul class="fl submenu-list">
                    <li>
                        <a href="/list.shtml?catid=129&amp;CLICKTAG=lolriotmall.pc.index.nav49_subNav70" class="submenu-link" parentid="menu_49">英雄海报</a>
                    </li>
                    <li>
                        <a href="/list.shtml?catid=214&amp;CLICKTAG=lolriotmall.pc.index.nav49_subNav72" class="submenu-link" parentid="menu_49">画册</a>
                    </li>
                </ul>
                <a class="fr subm-img" href="/list.shtml?catid=117&amp;CLICKTAG=lolriotmall.pc.index.nav49_navIcon49">
                    <img src="./images/20170622170007_999128.jpg" width="81" height="81" alt="海报艺术">
                </a>
            </div>
        </li>
        <li class="menu_zhongli">
            <a id="menu_74" href="/list.shtml?catid=215&amp;CLICKTAG=lolriotmall.pc.index.nav74">LPL队服</a>
            <div class="submenu clearfix">
                <ul class="fl submenu-list">
                    <li>
                        <a href="/list.shtml?catid=218&amp;CLICKTAG=lolriotmall.pc.index.nav74_subNav76" class="submenu-link" parentid="menu_74">队服T恤</a>
                    </li>
                    <li>
                        <a href="/list.shtml?catid=219&amp;CLICKTAG=lolriotmall.pc.index.nav74_subNav77" class="submenu-link" parentid="menu_74">队服裤子</a>
                    </li>
                </ul>
                <a class="fr subm-img" href="/list.shtml?catid=215&amp;CLICKTAG=lolriotmall.pc.index.nav74_navIcon74">
                    <img src="./images/20170628162725_524866.jpg" width="81" height="81" alt="LPL队服">
                </a>
            </div>
        </li>
        <li class="menu_zhongli">
            <a id="menu_57" href="/list.shtml?catid=116&amp;CLICKTAG=lolriotmall.pc.index.nav57">更多</a>
            <div class="submenu clearfix">
                <ul class="fl submenu-list">
                    <li>
                        <a href="/list.shtml?catid=131&amp;CLICKTAG=lolriotmall.pc.index.nav57_subNav68" class="submenu-link" parentid="menu_57">鼠标垫</a>
                    </li>
                    <li>
                        <a href="/list.shtml?catid=210&amp;CLICKTAG=lolriotmall.pc.index.nav57_subNav69" class="submenu-link" parentid="menu_57">其他</a>
                    </li>
                </ul>
                <a class="fr subm-img" href="/list.shtml?catid=116&amp;CLICKTAG=lolriotmall.pc.index.nav57_navIcon57">
                    <img src="./images/20170626164713_396902.jpg" width="81" height="81" alt="更多">
                </a>
            </div>
        </li>
    </ul>
    <script id="tmpl_nav" type="text/html">
    </script>
    <!--[if !IE]>搜索栏<![endif]-->
    <div class="fr sosobar">
        <div class="soso">
            <input name="textfield" type="" class="sosoinp yahei" id="soinp" value="" onfocus="if(this.value==''){this.value='';}"  onblur="if(this.value==''){this.value='';}" />
            <div class="keyword-list">
                <a href="/list.shtml?keyword=卡特琳娜&CLICKTAG=lolriotmall.pc.index.search" title="卡特琳娜">卡特琳娜</a>
                <a href="/list.shtml?keyword=提莫&CLICKTAG=lolriotmall.pc.index.search" title="提莫">提莫</a>
            </div>
            <a href="javascript:searchKeyWord();" class="sosobot"><i class="ico-menu mseach"></i></a>
        </div>
    </div>
    <form id="keyWordSearchForm">
        <input type="hidden" name="keyWord" id="keyWord" value="" />
        <input type="hidden" name="keyType" id="keyType" value="" />
        <input name="start" type="hidden" value="0" id="keyWordStart"/>
    </form>
</div>
</div>
<div style="width: 100px;height: 100px;  display: none;">
<form action="${pageContext.request.contextPath }/shop/login2" method="post" >
						<div id="LoginBox"  >
							<div class="row1">
								用户登录<a href="javascript:void(0)" title="关闭窗口" class="close_btn"
									id="closeBtn">×</a>
							</div>

							<div class="row">
							
								账&nbsp;&nbsp;&nbsp;&nbsp;号: <span class="inputBox"> <input
									type="text" id="txtName" name="txtName" placeholder="账号/邮箱" />
								</span> <a href="javascript:void(0)" title="提示" class="warning"
									id="warn">用户名不能为空</a>
							</div>
							<div class="row">
								密&nbsp;&nbsp;&nbsp;&nbsp;码: <span class="inputBox"> <input
									type="password" id="txtPwd" name="txtPwd" placeholder="密码" />
								</span><a href="javascript:void(0)" title="提示" class="warning"
									id="warn2">密码不能为空</a>
							</div>
							<div class="row">
							<input type="submit" value="登录" id="loginbtn" />
								<!-- <a href="" >登录</a> -->
							</div>
						
							<p  style="color: red;">${xmerr}</p>

					<div class="row_foot">
						<a href="">忘记密码</a>&nbsp;/ <a href="../page/register.jsp">注册</a>
					</div>
				</div>

					</form>
</div>					
    <!-- 页面内容区 -->
    <!-- 页面内容区 -->
    <div class="usamainbar wfull clearfix">    
        <!--浏览目录-->
        <div class="breadcrumb clearfix" id="blk_productlist_crumbs"></div>
		<script type="text/html" id="tmpl_productlist_crumbs">
			<a href="index.shtml" class="fl bcb-link" title="商城首页">商城首页</a>
			{for item in data}
			<i class="fl ico-menu bcb-arr"></i>
			<a href="{if item.href}${item.href}{else}javascript:;{/if}" class="fl bcb-cur">${item.name}</a>
			{/for}
		</script>

        <!-- 广告栏 -->
		<div id="blk_list_top_banner" width="1920" height="200">
		<div class="list-banner" >
			<a href="javascript:;" class="list-banlink" style="cursor:default;">
				<img src="./images/20171024185531_800579.jpg" width="1920" height="200" class="list-banimg">
			</a>
		</div></div>
		<script type="text/tmpl" id="tmpl_list_top_banner">
		<div class="list-banner" >
			<a href="javascript:;" class="list-banlink" style="cursor:default;">
				<img src="${data.img}" width="1920" height="200" class="list-banimg">
			</a>
		</div>
		</script>
        <!-- 商品区 -->
        <div class="list-shop clearfix">
            <div class="fl sidebar" id="leftBox">
				<div id="blk_productlist_left_category"></div>
				<script type="text/tmpl" id="tmpl_productlist_left_category">
					{if data && data.childrenLength > 0}
					<dl class="navlist">
						<dt><i class="ico-menu navl-line"></i><span catid="${data.id}" style="cursor:pointer;">{if data.name}${data.name}{else}类目{/if}</span></dt>
						{for item in data.children}
						<dd><a href="javascript:void(0);" catid="${item.id}">${item.name}</a></dd>
						{/for}
					</dl>
					{/if}
				</script>
                <dl class="navlist" id="blk_productlist_left_price">
                    <dt><i class="ico-menu navl-line"></i><span style="cursor:pointer;">价格</span></dt>
                    <dd><a href="javascript:addtag(1);" value="0-300"  minprice="10000" maxprice="30000">100-300元</a></dd><!-- class="click" -->
                    <dd><a href="javascript:addtag(2);" value="300-20000" minprice="30000" >300元以上</a></dd>
                </dl>
                <dl class="navlist" id="blk_productlist_left_hero">
                    <dt><i class="ico-menu navl-line"></i><span style="cursor:pointer;" lol_tag="">英雄</span></dt>
                    <dd><a href="javascript:addtag(22);" lol_tag="上单">上单</a></dd>
                    <dd><a href="javascript:addtag(27);" lol_tag="中单">中单</a></dd>
                    <dd><a href="javascript:addtag(5);" lol_tag="ADC">ADC</a></dd>
                    <dd><a href="javascript:addtag(29);" lol_tag="辅助">辅助</a></dd>
                    <dd><a href="javascript:addtag(28);" lol_tag="打野">打野</a></dd>
                    <dd><a href="javascript:addtag(8);" lol_tag="坦克">坦克</a></dd>
                    <dd><a href="javascript:addtag(9);" lol_tag="法师">法师</a></dd>
                    <dd><a href="javascript:addtag(10);" lol_tag="射手">射手</a></dd>
                    <dd><a href="javascript:addtag(11);" lol_tag="刺客">刺客</a></dd>
                </dl>               
            </div>
            <div class="fr shopcont">
                <!-- 分页、有无货、排序 -->
                <div class="shop-action clearfix">
                    <div class="fl sorting-filter" id="blk_productlist_sort">
                        <div class="sfbox">
							<span>人气</span>
							<i class="ico-menu sfarr"></i>
						</div>
                        <ul class="sortinglist">
                            <li order="iRecRank" sort="desc" class="" ><a href="prod/Attr?order=hot">人气</a></li>
                            <li order="iSoldNum" sort="desc" ><a href="prod/Attr?order=numbers">销量</a></li>
                            <li order="dtLastUpdate" sort="desc" ><a href="prod/Attr?order=onew">新品</a></li>
                            <li order="iPrice" sort="asc" ><a href="prod/Attr?order=price1">价格升序</a></li>
                            <li order="iPrice" sort="desc" ><a href="prod/Attr?order=price2">价格降序</a></li>
                        </ul>
                    </div>
                    <div class="fl sorting-stock" id="productlist_check">
                        <i class="sorting-check"></i>
                        <span>仅显示有货</span>
                         <i class="sorting-check"></i>
                        <span><a href="shopPage/list.jsp">显示所有</a></span>
                        
                    </div>
                    
                    <div class="pagelist fr clearf">
                        <div class="page" id="page_productlist_product">
                            <!--防止多出一页-->
                            <!--防止无数据情况-->
							<!--
                            <a class="page_a1">上一页</a>
                            <a class="page_a2 page_a current" onclick="doPagination(0);" title="第1页">1</a> 
                            <a class="page_a2 page_a" onclick="doPagination(0);" title="第2页">2</a> 
                            <a class="page_a2 page_a" onclick="doPagination(0);" title="第3页">3</a>
                            <a class="page_a1">下一页</a>
							-->
							  <a class="page_a1" >上一页</a>
							<div id="page">
                            </div>
                            <a class="page_a1">下一页</a>
                        </div>
                    </div>
                </div>
                <!-- 商品列表区 -->
                <div class="good-list clearfix" id="blk_productlist_product">
					<ul>
					     
						<div id="prod">
						</div>
					    
					
				</ul>
				</div>
                <!-- 分页 -->
                <div class="shop-action clearfix">
                    <div class="pagelist fr clearf">
                        <div class="page" id="page_productlist_product_bottom"></div>
                    </div>
                </div>
                
                
				
                
                
                
                
				<script type="text/html" id="tmpl_productlist_product">
                {if json.ret != 0}
                <div class="defaultnull clearfix">
                    <div class="nullcon">
                        <div class="pic"></div>
                        <div class="txt">
                            <p class="tt">抱歉, 网络繁忙请稍后再试！</p>
                            <p>您可以：</p>
                            <p>1、<a id="btn_productlist_product_refresh" href="javascript:;" target="_blank" class="blue">点此刷新页面&gt;</a></p>
                        </div>
                    </div>
                </div>
				{elseif !json.data || !json.data.list || json.data.list.length == 0}
                <div class="defaultnull clearfix">
                    <div class="nullcon">
                        <div class="pic"></div>
                        <div class="txt">
                            <p class="tt">未查到商品信息！ </p>
                            <p>您可以：</p>
                            <p>选择其他商品，<a href="/list.shtml" target="_blank" class="blue">立即前往&gt;</a></p>
                        </div>
                    </div>
                </div>
                {else}
				<ul>
                    {for item in json.data.list}
					<li mallid="${item.iMallId}">
						{if item.waterMarkName}
							{if item.iWaterMark == 3}
								<i class="ico-menu gl-new">NEW</i>
							{elseif item.iWaterMark == 4}
								<i class="ico-menu gl-hot">HOT</i>
							{/if}
                        {/if}
						<i class="ico-menu gl-like" style="display:none;"></i><!-- 点赞添加gl-liked -->
						<a href="detail.shtml?id=${item.iMallId}" target="_blank" class="gl-link">
							<div class="gl-img">
								<img src="${item.sProfileImg}" width="527" height="506" alt="${item.sMallName}">
							</div>
							{if item.sDetailImg[0]}
							<div class="gl-img gl-hoverimg">
								<img src="${item.sDetailImg[0]}" width="527" height="506" alt="${item.sMallName}"> 
							</div> 
							{/if}
						</a> 
						<p class="gl-name">${item.sMallName}</p>   
						<p class="gl-pri">¥${item.iCurrPriceYuan}</p>                                                       
					</li>
					{/for}
				</ul>
				{/if}
				</script>
            </div>
        </div>
    </div>
    
</div>
<!--[if !IE]>底部<![endif]-->
<div class="bottom">
    <div class="bottomshop">
        <div id="bottomshop">
            <div class="fuwubar w980">
                <ul class="fuwu">
                    <li><span class="fw1"></span><a class="fu1">7天无理由退换货</a></li>
                    <li><span class="fw2"></span><a class="fu2">100%官方正品</a></li>
                    <!--<li><span class="fw3"></span><a class="fu3">购物送游戏礼包</a></li>-->
                    <li><span class="fw4"></span><a class="fu4">全场每单满199元包邮</a></li>
                </ul>
            </div>
            <div class="helpbar w980">
                <ul class="help clearf">
                    <li class="he_w1">
                        <h3><a href="/help/helpAfterSale.shtml#help1" target="_blank">购物指南</a></h3>
                        <a href="/help/helpAfterSale.shtml#help1" target="_blank">帐号注册与登录</a>
                        <a href="/help/helpAfterSale.shtml#help2" target="_blank">购买流程介绍</a>
                        <a href="/help/helpAfterSale.shtml#help3" target="_blank">支付方式</a>
                        <a href="/help/helpAfterSale.shtml#help4" target="_blank">常见问题</a>
                    </li>
                    <li class="he_w2">
                        <h3><a href="/help/helpShopping.shtml#help1" target="_blank">配送服务</a></h3>
                        <a href="/help/helpShopping.shtml#help1" target="_blank">全场满199元免运费</a>
                        <a href="/help/helpShopping.shtml#help2" target="_blank">配送范围及运费</a>
                        <a href="/help/helpShopping.shtml#help3" target="_blank">配送进度查询</a>
                        <!--<a href="#" target="_blank">微信配速查询</a>-->
                    </li>
                    <li class="he_w3">
                        <h3><a href="/help/helpExpress.shtml#help1" target="_blank">售后服务</a></h3>
                        <a href="/help/helpExpress.shtml#help1" target="_blank">7天无理由退换货</a>
                        <a href="/help/helpExpress.shtml#help5" target="_blank">退换货流程</a>
                        <a href="/help/helpExpress.shtml#help3" target="_blank">商品送错的处理方案</a>
                        <a href="/help/helpExpress.shtml#help4" target="_blank">售后服务及投诉</a>

                    </li>
                    <li class="he_w4">
                        <h3><a href="/help/helpIndex.shtml" target="_blank">服务中心</a></h3>
                        <div class="fuwu_qq"><a id="qq_qianfw">售前咨询</a>&nbsp;&nbsp;<a id="qq_houfw">售后咨询</a></div>
                        <span>客服热线：0755-25727866</span>
                        <!--<span>客服热线：0755-82112581</span>-->
                        <a href="mailto:service@lolriotmall.qq.com">售后：service@lolriotmall.qq.com</a>
                    </li>
                </ul>
            </div>
            <div class="bottomlink w980">
                <a href="/help/helpabouts.shtml#help5">关于商城</a>
                <a href="/help/helpabouts.shtml#help4">服务条款</a>
                <a href="/help/helpabouts.shtml#help3">合作伙伴</a>
                <a href="/help/helpabouts.shtml#help2">法律声明</a>
                <!--<a href="/help/helpabouts.shtml#help1">商务合作</a-->
            </div>
            <div class="foot clearf">
                <div class="bqlogo fl"></div>
                <div class="copyright fl">
                    深圳市合泰文化发展有限公司提供客服支持 |  客服邮箱：
                    <a href="mailto:service@lolmall.qq.com">service@lolriotmall.qq.com</a>
                    <br>
                    Copyright (C) 1998 – 2015 Tencent. All Rights Reserved.腾讯公司 版权所有
                </div>
            </div>
        </div>
    </div>
</div>
<!--[if !IE]>大背景<![endif]-->
<div class="bodyBG">
    <div class="bg01"></div>
    <div class="bg02"></div>
    <div class="bg03"></div>
    <div class="bg04"></div>
    <div class="bg05"></div>
</div>
	<script type="text/javascript"
		src="./js/bj-report.min.js"></script>
	<script>
		!function() {
			BJ_REPORT
					.init({
						id : 1178,
						combo : 1,
						delay : 100,
						url : "//badjs2.qq.com/badjs",
						ignore : [ /(Script Error)|(getHtml)|(gamehelper)|(WeixinJSBridge)/i ],
						level : 4
					})
		}()
	</script>
	<script type="text/javascript"
		src="./js/jquery1.8-min.js"></script>
	<script type="text/javascript"
		src="./js/milo.js"
		charset="gbk"></script>
	<script type="text/javascript"
		src="./js/template.js"
		charset="gbk"></script>
	<script type="text/javascript"
		src="./js/lol.js"></script>
	<script type="text/javascript"
		src="./js/actual_index_nav.js"></script>

	<script type="text/javascript">
		var bizCode = 'lolriotmall';

		// console 兼容性处理
		try {
			console.log('test console');
		} catch (e) {
			window.console = {
				log : function() {
				}
			};
		}

		milo.loader.loadByTag([ {
			name : 'util.jquery-min',
			value : $
		}, {
			name : 'util.template',
			value : TrimPath
		} ]);

		// 绑定事件
		function bindEvents() {
			$(".gotop").click(function() {
				$("html,body").stop().animate({
					scrollTop : 0
				}, 500);
			});

			$(".rightbot").toggle(function() {
				$(".rightqq_bar").animate({
					right : '-104',
					opacity : '0'
				}, "slow");
				$(".rightbot").addClass("rightbot_close");
			}, function() {
				$(".rightbot").removeClass("rightbot_close");
				$(".rightqq_bar").animate({
					right : '14',
					opacity : '1'
				}, "slow");
			});

			$(".top_mem a.lolweixin").hover(function() {
				$(this).children().show();
			}, function() {
				$(this).children().hide();
			});

			$('#soinp').bind('keypress', function(event) {
				if (event.keyCode == "13") {
					searchKeyWord();
				}
			});

			$(".sosoinp").focus(function() {
				$(".keyword-list").hide();
			});
			$(".sosoinp").blur(function() {
				if ($(this).val() == '') {
					$(".keyword-list").show();
				}
			});
		}

		// 渲染导航条
		function renderNav() {
			var data = window.actual_index_nav, navs = [], idxs = {};

			// 因为父节点不一定不在子节点前面，所以分了2次for循环处理
			for ( var i in data) {
				if (data[i].iParentId == 0) {
					idxs[data[i].iSeqId] = navs.length;
					data[i].subs = [];
					navs.push(data[i]);
				}
			}
			for ( var i in data) {
				if (data[i].iParentId != 0) {
					try {
						navs[idxs[data[i].iParentId]].subs.push(data[i]);
					} catch (e) {
					}
				}
			}

			need([ 'util.template' ], function(template) {
				$('#blk_nav').html(
						template.parseDOMTemplate('tmpl_nav').process(navs,
								'list')).fadeIn();

				try {
					$curNavMenu = $('#blk_nav a[href="' + location.pathname
							+ location.search + '"]');

					// 如果二级菜单单独设置为一级菜单的问题
					$curNavMenu.each(function() {
						if (!$(this).hasClass('submenu-link')) {
							$curNavMenu = $(this);
							return false;
						}
					});

					if ($curNavMenu.attr('parentid')) {
						$curNavMenu = $('#' + $curNavMenu.attr('parentid'));
					}

					$curNavMenu.addClass('click');
				} catch (e) {
				}
			});
		}

		function logout() {
			need([ 'biz.login' ], function(loginManager) {
				loginManager.logout(function() {
					window.location.reload();
				});
			});
		}

		function login() {
			need([ 'biz.login' ], function(loginManager) {
				loginManager.login();
			});
		}

		function renderUserInfo(loginedCallback, unlonginCallback) {
			need([ 'biz.login' ], function(loginManager) {
				loginManager.checkLogin(function() {
					$("#login_qq_span").html(loginManager.getUserUin());
					loginManager.getNickName(function(loginInfo) {
						if (loginInfo.isLogin) {
							$("#login_nickname_span").text(loginInfo.nickName);
						}
					});
					loginManager.getUserFace(function(loginInfo) {
						if (loginInfo.isLogin) {
							$("#login_userFace_span").html(loginInfo.userFace);
						}
					});

					loginedCallback && loginedCallback();
				}, function() {
					unlonginCallback && unlonginCallback();
				});
			});
		}

		//查询购物车信息
		function renderCartNum() {

			if ($('#headerCartNum').length == 0)
				return false;

			var url = "http://apps.game.qq.com/daoju/v3/api/hs/plug_sw/cart/cart.php?";

			var params = {
				Act : 'list',
				_biz_code : bizCode,
				supplier_id : '',
				_output_var : 'CartGoodsList'
			};

			//alert(pars)
			$.getScript(url + $.param(params), function() {
				var rsp = window.CartGoodsList;

				if (rsp.result == 0 && rsp.data && rsp.data.list) {
					var item, total = 0;
					for ( var i in rsp.data.list) {
						item = rsp.data.list[i];
						if (item.sales) {
							for ( var j in item.sales) {
								total += parseInt(item.sales[j].iTotal);
							}
						} else {
							total += parseInt(item.iTotal);
						}

					}

					$('#headerCartNum').html(total);
				}
			});
		}

		function searchKeyWord() {
			var keyWord = $('#soinp').val();

			if (keyWord != '' && keyWord != '搜索你喜欢的英雄周边') {
				window.location.href = "/list.shtml?keyword=" + keyWord
						+ '&CLICKTAG=lolriotmall.pc.index.search';
			}
		}

		/**
		 * 渲染翻页
		 */
		function renderPager(curPage, totalPage) {
			var page = {}, $pageBlock = $('#blk_page_bar'), $pageBlockBottom = $('#blk_page_bar_bottom');

			if (totalPage < 2) {
				return $pageBlock.hide();
			}
			console.log(curPage, totalPage);
			page.total = totalPage;
			page.number = parseInt(curPage, 10);
			page.prev = Math.max(page.number - 1, 1);
			page.next = Math.min(page.number + 1, page.total);
			// 每次只显示各5个页码
			tmpPage = page.number >= 3 ? (page.total - page.number >= 3 ? page.number
					: page.total - 2)
					: 3;
			page.showFrom = Math.max((tmpPage - 2), 1);
			page.showTo = Math.min((tmpPage + 2), page.total);
			page.list = [];

			for (var i = page.showFrom; i <= page.showTo; i++) {
				page.list.push(i);
			}

			need([ 'util.template' ], function(template) {

				$pageBlock.html(
						template.parseDOMTemplate('tmpl_page_bar').process(
								page, 'page')).fadeIn();

				if ($pageBlockBottom.length > 0)
					$pageBlockBottom.html($pageBlock.html());
				//            $pageBlock.on('click', 'a', function () {
				//                var number = $(this).attr('data-number');
				//                if (number != page.number) {
				//                    doPagination(number);
				//                }
				//                return false;
				//            });
			});
		}

		/**
		 * 添加购物车
		 * @param mall_id 商品id，多个用逗号分隔
		 * @param mall_num 数量
		 * @param callback 回调
		 */
		function addCart(mall_id, mall_num, callback) {
			var url = "./js/cart.php?";

			var params = {
				Act : 'add',
				type : 'add',
				biz_code : bizCode,
				mall_id : mall_id,
				mall_num : mall_num,
				_output_var : 'CartModel_addCart'
			};

			//alert(pars)
			$.getScript(url + $.param(params), function() {
				var rsp = window.CartModel_addCart;

				console.log('addCart', rsp);

				warning(rsp.result == 0 ? '已成功添加购物车！' : rsp.msg);
				callback && callback(rsp.result == 0, rsp);
			});
		}

		// 获取指定id的商品信息，id数组传入
		function ajaxGoodsByIds(goodsIds, callback) {

			var url = './js/GoodsApp.php?', params = {
				opt_type : 'goods_list_by_ids',
				from : 'lolriotmall-PC',
				biz : bizCode,
				mall_ids : goodsIds.join(','),
				page_size : 100,
				page_no : 1,
				plat : 'pc',
				output_format : 'jsonp'
			};

			$.getScript(url + $.param(params), function() {
				var rsp = window.ogoods_app;

				console.log('ajaxGoodsByIds', rsp);

				if (rsp.ret == 0) {
					if (rsp.data.total > 0) {
						var result = {}, list = rsp.data.list;

						$.each(list, function() {
							result[this.iMallId] = this;
						});

						callback && callback(result);
					}
				}
			});
		}

		function isWxLogin() {
			return milo.cookie.get('openid') && milo.cookie.get('access_token');
		}

		function wxLoginGuide() {
			warning('购买周边商品，请退出后用QQ账号登录！');
		}

		milo.ready(function() {
			if (!!milo.request('ADTAG')) { // 记录ADTAG，用于订单统计
				milo.cookie.set('ADTAG', milo.request('ADTAG'), 259200,
						location.host, "/");
			}

			// 微信登录给退出提示
			if (isWxLogin()) {
				wxLoginGuide();
			}

			bindEvents();
			renderNav();
			renderUserInfo(function() {
				renderCartNum();
			}, function() {
				// 个人中心，未登录，直接弹出登录框
				if (/\/user\//.test(location.href)) {
					login();
				}
			});
		});
	</script>
	<!--右侧营销右侧营销QQend-->
	<script src="./js/basegoods.js"
		charset="utf-8"></script>
	<script>
		//console.log('ViewGoodslist',ViewGoodslist);
		var ViewGoodslist = CommTool.extend(function() {
		}, ClassGoods);
		ViewGoodslist = CommTool.extend(ViewGoodslist, ClassCollect);

		ViewGoodslist.prototype.renderGoodsList = function(goodsJson, callback) {
			var thisObj = this;
			need(
					[ 'util.template' ],
					function(template) {
						//	    console.log('goodsJson', goodsJson, util.getServerDateTime());
						//		goodsJson.now = util.getServerDateTime();
						goodsJson.data
								&& goodsJson.data.list
								&& $
										.each(
												goodsJson.data.list,
												function() {
													var thisGoods = this;
													this.waterMarkName = thisObj
															.getWaterMarkName(this.iWaterMark);
													this.sMallName = this.sMallName.length > 29 ? this.sMallName
															.slice(0, 29)
															+ '...'
															: this.sMallName;
													this.iOriPriceYuan = parseFloat(
															this.iOriPrice / 100)
															.toFixed(2);

													if (goodsJson.now >= this.dtPromoteStart
															&& goodsJson.now < this.dtPromoteEnd) {//限时折扣
														this._isDiscount = true;
														this.iCurrPriceYuan = parseFloat(
																this.iPromotePrice / 100)
																.toFixed(2);
													} else {
														this._isDiscount = false;
														this.iCurrPriceYuan = parseFloat(
																this.iPrice / 100)
																.toFixed(2);
													}
													this.sProfileImg = this.sProfileImg
															.replace(
																	/[(\.big)]*\.jpg/gi,
																	'.big.jpg'); // 要考虑到多次重复替换

													$
															.each(
																	this.sDetailImg,
																	function(k,
																			v) {
																		thisGoods.sDetailImg[k] = v
																				.replace(
																						/[(\.big)]*\.jpg/gi,
																						'.big.jpg');
																	})
												});
						$("#blk_productlist_product").html(
								template.parseDOMTemplate(
										"tmpl_productlist_product").process(
										goodsJson, "json"));
						//plugin.showLTM({selector:".blk_productlist_product_discount_time",tplId:"tmpl_productlist_product_discount_time"});

						if (goodsJson.data && goodsJson.data.list
								&& goodsJson.data.list.length) {
							need(
									[ "util.jquery.page" ],
									function() {
										var params = {
											total_num : goodsJson.data.total,
											url : '',
											pn_key : 'page_num',
											ps_key : 'page_size',
											page_size : thisObj.goodsListOption.page_size,
											do_default : false,
											first : "",
											last : "",
											prev : "上一页",
											next : "下一页",
											item_container : "<span>",
											curr_num : thisObj.goodsListOption.page_no,
											on_class : "current",
											clickEvent : function(obj) {
												var option = {};
												option.page_no = $(obj).attr(
														"page");
												thisObj.loadGoodsList(option);
											}
										};
										$('#blk_productlist_sort').fadeIn();
										$('#productlist_check').fadeIn();
										$("#page_productlist_product").empty()
												.fadeIn();
										$("#page_productlist_product").jpage(
												params);
										$("#page_productlist_product_bottom")
												.empty().fadeIn();
										$("#page_productlist_product_bottom")
												.jpage(params);
										//$('#page_productlist_product').prepend('<span class="p-f">共'+json.data.total+'条记录</span>');
									});
						} else {
							$('#blk_productlist_sort').hide();
							$('#productlist_check').hide();
							$("#page_productlist_product").hide();
							$("#page_productlist_product_bottom").hide();
						}

						$('#blk_productlist_sort').off('click',
								'.sortinglist > li').on(
								'click',
								'.sortinglist > li',
								function() {
									$('#blk_productlist_sort > .sfbox > span')
											.html($(this).html());
									thisObj.loadGoodsList({
										order_by : $(this).attr('order'),
										sort : $(this).attr('sort')
									});
								});
						/*在此处填写检测是否有货物*/
						$("#productlist_check")
								.off('click', '.sorting-check')
								.on(
										'click',
										'.sorting-check',
										function() {
											if ($(this).hasClass(
													'sorting-checked')) {
												isInstock = false;
												$('.sorting-check')
														.removeClass(
																'sorting-checked');
												thisObj.loadGoodsList({});
											} else {
												isInstock = true;
												$('.sorting-check').addClass(
														'sorting-checked');
												thisObj.loadGoodsList({});
											}

										});
						/*end-检测是否有货物*/

						$('#blk_productlist_product')
								.off('click', '.gl-like')
								.on(
										'click',
										'.gl-like',
										function() {
											$this = $(this);
											$li = $this.parent('li');
											var goodsId = $li.attr('mallid');
											var price = $li.find('.gl-pri')
													.html();
											need(
													[ 'biz.login' ],
													function(login) {
														login
																.checkLogin(
																		function() {
																			var isCancel = $this
																					.hasClass('gl-liked');
																			var defer = isCancel ? thisObj
																					.cancelCollect(goodsId)
																					: thisObj
																							.addCollect({
																								goodid : goodsId,
																								goodname : $li
																										.find(
																												'.gl-name')
																										.html(),
																								price : price
																										.replace(
																												/\D/g,
																												''),
																								goodpic : $li
																										.find(
																												'.gl-img img')
																										.attr(
																												'src')
																							});
																			defer
																					.done(function() {
																						$this
																								.toggleClass('gl-liked');
																						if (!isCancel) {
																							CommTool
																									.setLocalCollectGoods(
																											goodsId,
																											1);
																						} else {
																							CommTool
																									.setLocalCollectGoods(
																											goodsId,
																											0);
																						}
																					});
																			defer
																					.fail(function(
																							json) {
																						var msg = json.msg
																								|| '抱歉, 网络繁忙请稍后再试！';
																						CommTool
																								.alert(msg);
																					});
																		},
																		function() {
																			login
																					.login();
																		});
													});

										});

						$('#blk_productlist_left_price').off('click', 'a,span')
								.on(
										'click',
										'a,span',
										function() {
											$parent = $(this).parent();
											$parent.addClass('cur').siblings()
													.removeClass('cur');
											thisObj.loadGoodsList({
												min_price : $(this).attr(
														'minprice')
														|| '',
												max_price : $(this).attr(
														'maxprice')
														|| '',
												page_no : 1
											});
										})

						$('#blk_productlist_left_category')
								.off('click', 'a,span')
								.on(
										'click',
										'a,span',
										function() {
											$parent = $(this).parent();
											$parent.addClass('cur').siblings()
													.removeClass('cur');
											var option = {
												cat_tag_id : parseInt($(this)
														.attr('catid')) || 1,
												cat_tag_type : 'cat',
												page_no : 1
											};
											option.cat_tag_id == 1 ? option.cat_tag_type = 'all'
													: undefined;
											thisObj.loadGoodsList(option);
											//var goodslist = new ViewGoodslist;
											//goodslist.loadGoodsList(option);
										});

						$('#blk_productlist_left_hero').off('click', 'a,span')
								.on(
										'click',
										'a,span',
										function() {
											$parent = $(this).parent();
											$parent.addClass('cur').siblings()
													.removeClass('cur');
											var option = {
												lol_tag : $(this).attr(
														'lol_tag')
														|| '',
												page_no : 1
											};
											thisObj.loadGoodsList(option);
											//var goodslist = new ViewGoodslist;
											//goodslist.loadGoodsList(option);
										});

						callback && callback();
					});
		};

		ViewGoodslist.prototype.loadGoodsList = function(option, callbackFunc) {
			var thisObj = this;
			console.log('loadGoodsList.this', this);

			thisObj
					.getGoodsList(option)
					.always(
							function(goodsJson) {
								console.log('loadGoodsList.goodsJson',
										goodsJson);
								var goodsIds = [];
								goodsJson.data
										&& goodsJson.data.list
										&& $
												.each(
														goodsJson.data.list,
														function() {
															goodsIds
																	.push(this.iMallId);
														});
								var deferGoods = $.Deferred();
								console.log('loadGoodsList.f.this', this);
								thisObj.renderGoodsList(goodsJson, function() {
									callbackFunc && callbackFunc(goodsJson);

									deferGoods.resolve();
								});
								need(
										[ 'biz.login' ],
										function(login) {
											login
													.checkLogin(
															function() {
																var deferCollect = goodsIds.length > 0 ? thisObj
																		.getCollectList({
																			goodid : goodsIds
																					.join(',')
																		})
																		: $
																				.Deferred();

																$
																		.when(
																				deferGoods,
																				deferCollect)
																		.done(
																				function(
																						foo,
																						collectJson) {
																					console
																							.log(
																									'loadGoodsList.collectJson',
																									collectJson);
																					var map = {};
																					$
																							.each(
																									collectJson.data.list,
																									function() {
																										map[this.iGoodsId] = this.iGoodsId;
																									});
																					$(
																							"#blk_productlist_product > ul > li")
																							.each(
																									function() {
																										var $obj = $(
																												this)
																												.children(
																														'.gl-like');
																										var goodsId = $(
																												this)
																												.attr(
																														'mallid');
																										var localLiked = CommTool
																												.getLocalCollectGoods(goodsId);
																										//console.log('localLiked',localLiked);
																										var isLiked = localLiked !== undefined ? parseInt(localLiked)
																												: map[goodsId];
																										//console.log('isLiked',isLiked, map[goodsId], localLiked);
																										isLiked
																												&& $obj
																														.addClass('gl-liked');
																										$obj
																												.show();
																									});
																				});
															},
															function() {
																deferGoods
																		.done(function() {
																			$(
																					"#blk_productlist_product > ul > li")
																					.each(
																							function() {
																								var $obj = $(
																										this)
																										.children(
																												'.gl-like');
																								$obj
																										.removeClass('gl-liked');
																								$obj
																										.show();

																							});
																		});
															});
										});

							});
		};

		ViewSelector = CommTool.extend(function() {
		}, ClassSelector);

		ViewSelector.prototype.renderCrums = function(option) {//面包屑
			this.crumsData(option).always(
					function(data) {
						console
								.log('ClassSelector.init.renderCrums.data',
										data);
						need([ 'util.template' ], function(template) {
							$("#blk_productlist_crumbs").html(
									template.parseDOMTemplate(
											"tmpl_productlist_crumbs").process(
											data, "data"));
						});
					});
		};
		ViewSelector.prototype.renderCategory = function(option) {//左侧类目
		//	if(option.cat_tag_type != 'cat'){
		//		return ;
		//	}
			this
					.categoryData(option)
					.always(
							function(data) {
								console
										.log(
												'ClassSelector.init.createCatetory.data',
												data);
								need(
										[ 'util.template' ],
										function(template) {
											data.img
													|| (data.img = '//js01.daoju.qq.com/zb/lolriotmall/pc/images/default_cate_banner.jpg');
											$("#blk_list_top_banner")
													.html(
															template
																	.parseDOMTemplate(
																			"tmpl_list_top_banner")
																	.process(
																			data,
																			"data"));
											$("#blk_productlist_left_category")
													.html(
															template
																	.parseDOMTemplate(
																			"tmpl_productlist_left_category")
																	.process(
																			data,
																			"data"));

										});

							});
		};
		ViewSelector.prototype.renderHero = function(option) {//左侧英雄分类

			//目前在页面写死

		};
		//milo.ready(function () {

		var catid = CommTool.request('catid');
		var tagid = CommTool.request('tagid');
		var markid = CommTool.request('markid');
		var saleid = CommTool.request('saleid');
		var keyword = decodeURI(CommTool.request('keyword'));
		keyword = keyword.replace(/^\s*/, '').replace(/\s*$/, '');

		var goodsList = new ViewGoodslist;
		var selector = new ViewSelector;
		var option = {};
		if (keyword) {
			option = {
				keyword : keyword
			};
		} else if (catid) {
			option = {
				cat_tag_id : catid,
				cat_tag_type : 'cat'
			};
		} else if (tagid) {
			option = {
				cat_tag_id : tagid,
				cat_tag_type : 'tag'
			};
		} else if (markid) {
			option = {
				cat_tag_id : markid,
				cat_tag_type : 'wmark'
			};
		} else {
			option = {
				cat_tag_id : '1',
				cat_tag_type : 'all'
			};
		}
		option.order_by = 'iRecRank';
		option.sort = 'desc';

		saleid && (option.saleid = saleid);
		//	timeFall.push((new Date).getTime());
		goodsList.loadGoodsList(option, function() {
			//		timeFall.push((new Date).getTime());
			//		console.log('timefall', timeFall);
		});
		selector.renderCrums(option);
		selector.renderCategory(option);
		selector.renderHero(option);

		//});
	</script>

	<script language="javascript">
		milo.ready(function() {

			window.pingOptions = {
				'biz' : 'lolriotmall',
				'appid' : 1005,
				'area' : 2,
				'ec' : milo.request('ADTAG') || milo.request('CLICKTAG')
			};

			if (!window.customPing) { // �е�ҳ��Ҫ��������ͳ�Ʋ���
				need([ "daoju.ping" ], function(ping) {
					ping.report(window.pingOptions);
				});
			}
		});
	</script>
	<script type="text/javascript"
		src="./js/stats.js" charset="UTF-8"></script>
	<!-- ��Ѷ����--PCר�� -->

	<!--企业QQ-->
	<script language="javascript">
		milo.ready(function() {
			setTimeout(function() {
				milo.loader.loadScript('http://wpa.b.qq.com/cgi/wpa.php',
						function() {
							BizQQWPA.addCustom({
								aty : '2',
								a : '2',
								nameAccount : 800016781,
								selector : 'qq_qian'
							});
							BizQQWPA.addCustom({
								aty : '2',
								a : '4',
								nameAccount : 800053395,
								selector : 'qq_hou'
							});
							BizQQWPA.addCustom({
								aty : '2',
								a : '2',
								nameAccount : 800016781,
								selector : 'qq_qianfw'
							});
							BizQQWPA.addCustom({
								aty : '2',
								a : '4',
								nameAccount : 800016781,
								selector : 'qq_houfw'
							});
							BizQQWPA.addCustom({
								aty : '2',
								a : '2',
								nameAccount : 800016781,
								selector : 'qq_qianhelp'
							});
							BizQQWPA.addCustom({
								aty : '2',
								a : '4',
								nameAccount : 800016781,
								selector : 'qq_houhelp'
							});
						});
			}, 1500)
		});
	</script>
	<!--企业QQ end-->

	<!--[if IE 6]>
<script src="/js/iepng.js" type="text/javascript"></script>
<script type="text/javascript"> EvPNG.fix('div,  ul, li, dl, dt, dd, img, input, h3, a, a:hover, span');</script>
<!ie6[endif]-->




</body>
<style type="text/css" id="462396197"></style>
</html>