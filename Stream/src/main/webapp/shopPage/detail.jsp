<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<base href="<%=basePath%>">
<meta name="robots" content="all" />
<meta http-equiv="x-ua-compatible" content="IE=edge">
<meta name="author" content="Tencent" />
<title>商品详情-英雄联盟周边商城</title>
<meta name="Description" content="英雄联盟周边商城--打造你的英雄联盟生活方式！这是英雄联盟游戏团队服务于玩家，给到玩家更多更优质体验的地方，我们根据玩家喜爱的英雄原型，设计并制作很多好玩的实物周边，让英雄联盟走入你的生活，而不仅仅在电脑前。英雄联盟周边商城由腾讯公司搭建并服务于玩家，深圳市合泰文化发展有限公司为周边商城提供客服及物流等服务支持。" />
<meta name="Keywords" content="英雄联盟,LOL,英雄联盟周边商城, 英雄联盟周边,英雄联盟商城, 英雄周边,英雄联盟手办,英雄联盟毛绒,英雄联盟公仔,英雄联盟海报,英雄联盟连帽衫,英雄联盟鼠标垫,LOL周边商城, LOL周边,LOL商城,LOL手办,LOL毛绒,LOL公仔,LOL海报,LOL连帽衫,LOL鼠标垫,卡牌大师,吉格斯手办,盖伦手办,金克丝手办,娜美手办,卡特琳娜手办,锤石,提莫帽子,英雄原型,男女服饰,海报艺术,手办毛绒,LOL,法师,刺客,坦克,射手,辅助,游戏周边,周边商城,游戏周边商城,腾讯周边商城腾讯互动娱乐周边商城" />
<link rel="icon" href="./images/favicon.ico" type="image/x-icon" /> 
<link rel="stylesheet" href="./css/usabase.css"/>
<link rel="stylesheet" href="./css/show.css"/>
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
<body>
<!--[if lt IE 8]>
<p class="chromeframe">您使用的IE浏览器版本过低，本站不再支持，<a href="http://windows.microsoft.com/">升级您的IE浏览器</a>，或使用<a href="http://www.google.com/chromeframe/?redirect=true">Google Chrome</a>、<a href="http://www.google.com/chromeframe/?redirect=true">Firefox</a>等高级浏览器，将会得到更好的体验！</p>
<![endif]-->
<!--低版本IE提示 S-->
<!--低版本IE提示 E-->
<div class="wrap">
    <!--顶部-->
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
            <a id="menu_45" href="/index.shtml?CLICKTAG=lolriotmall.pc.index.nav45" class="click">商城首页</a>
            <i class="menu-ico"></i>
        </li>
        <li class="menu_zhongli">
            <a id="menu_46" href="${pageContext.request.contextPath }/shopPage/list.jsp">雕塑手办</a>
            <i class="menu-ico"></i>
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
            <i class="menu-ico"></i>
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
            <i class="menu-ico"></i>
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
            <i class="menu-ico"></i>
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
            <i class="menu-ico"></i>
            <div class="submenu clearfix">
                <ul class="fl submenu-list">
                    <li>
                        <a href="/list.shtml?catid=218&amp;CLICKTAG=lolriotmall.pc.index.nav74_subNav76" class="submenu-link" parentid="menu_74">队服T恤</a>
                    </li>
                    <li>
                        <a href="/list.shtml?catid=219&amp;CLICKTAG=lolriotmall.pc.index.nav74_subNav77" class="submenu-link" parentid="menu_74">队服裤子</a>
                    </li>
                    <li>
                        <a href="/list.shtml?catid=231&amp;CLICKTAG=lolriotmall.pc.index.nav74_subNav85" class="submenu-link" parentid="menu_74">队服外套</a>
                    </li>
                    <li>
                        <a href="/list.shtml?catid=230&amp;CLICKTAG=lolriotmall.pc.index.nav74_subNav84" class="submenu-link" parentid="menu_74">队服套装</a>
                    </li>
                </ul>
                <a class="fr subm-img" href="/list.shtml?catid=215&amp;CLICKTAG=lolriotmall.pc.index.nav74_navIcon74">
                    <img src="./images/20170628162725_524866.jpg" width="81" height="81" alt="LPL队服">
                </a>
            </div>
        </li>
        <li class="menu_zhongli">
            <a id="menu_57" href="/list.shtml?catid=116&amp;CLICKTAG=lolriotmall.pc.index.nav57">更多</a>
            <i class="menu-ico"></i>
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
                    <img src="./images/20170929133640_601976.png" width="81" height="81" alt="更多">
                </a>
            </div>
        </li>
 </ul>
    <script id="tmpl_nav" type="text/html">
       
    </script>
    <!--[if !IE]>搜索栏<![endif]-->
    <div class="fr sosobar">
        <div class="soso">
            <input name="textfield" type="" class="sosoinp yahei" id="soinp" value="" onfocus="if(this.value==''){this.value='';}" onblur="if(this.value==''){this.value='';}" maxlength="20">
            <div class="keyword-list">
                <a href="/list.shtml?keyword=卡特琳娜&amp;CLICKTAG=lolriotmall.pc.index.search" title="卡特琳娜">卡特琳娜</a>
                <a href="/list.shtml?keyword=提莫&amp;CLICKTAG=lolriotmall.pc.index.search" title="提莫">提莫</a>
            </div>
            <a href="javascript:searchKeyWord();" class="sosobot"><i class="ico-menu mseach"></i></a>
        </div>
    </div>
    <form id="keyWordSearchForm">
        <input type="hidden" name="keyWord" id="keyWord" value="">
        <input type="hidden" name="keyType" id="keyType" value="">
        <input name="start" type="hidden" value="0" id="keyWordStart">
    </form>
</div>
</div>
<div style="width: 100px;height:100px; ">
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
    <div class="usamainbar wfull clearfix">    
        <!--浏览目录-->
        <div class="breadcrumb bbm clearfix" id="blk_detail_crumbs"></div>
		<script type="text/html" id="tmpl_detail_crumbs">
            <a href="index.shtml" target="_blank" class="fl bcb-link">商城首页</a>
            {if data}
            {for item in data}
			<i class="fl ico-menu bcb-arr"></i>
            <a class="fl bcb-cur" href="{if item.url}${item.url}{else}javascript:;{/if}">${item.name}</a>
            {/for}
            {/if}
        </script>

        <!--中部主体-->
        <div class="mainbar w1180 clearfix">
            <!--商品信息 S-->
            <div class="xiangqbar clearfix" id="blk_detail_main" style="min-height: 540px;height: auto;">
				<!--<div class="loading" style="display:;"><span class="loadmsg">loading...</span></div>-->
				<div class="fl xiangq_big" id="blk_detail_main_img">
				<div class="tab_box tb-booth tb-pic tb-s310 product-img-box">
					<a class="product-image image-zoom MagicZoom" rel="loading-msg:Loading zoom..." id="main-image" href="">
						<img id="big_pic" src="./images/${shouban.img}" width="570" height="570" class="jqzoom">
						<span class="notice"></span> 
					 </a>                  
				</div>  
				<div class="zoom-action">
					<a id="btn_blk_detail_main_img_popup" href="javascript:;" class="zoom-xiangqimg" title="点击放大">点击放大</a>
				</div>
				<div class="more-views-container tab_menu">
					<div class="more-views">
						<ul class="slider clearfix">
							
							<li>
								<a data-seq="" id="main-image-" href="" rev="" rel="zoom-id:main-image;">
									<img src="./images/${shouban.img}" width="34" height="34"/>
								</a>
							</li>
							
						</ul>
					</div>
				</div>                    
				<div id="product-modal" class="moby product-zoompop">
					<a href="javascript:hideZoomPop();" class="close" data-moby="hide" data-target="#product-modal">Close</a>
					<div class="inner">
						<div class="product-img-box">
							<a class="product-image image-zoom MagicZoom" rel="loading-msg:Loading zoom..." id="modal-image" href="">
							<img src="./images/${shouban.img}"/>
								<span class="notice"></span>
							</a>
						</div>
						<div class="more-views-container">
							<div id="js-more-views" class="more-views">
								<ul class="slider clearfix">
							
								<li>
									<a href="" id="modal-image-" data-seq="" rev="" rel="zoom-id:modal-image;">
										<img src="./images/${shouban.img}"/>
									</a>
								</li>
								
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="fr" id="blk_detail_main_info">
				<div class="proInfo_r">
					<!--信息-->
					<div class="xiangq_font">        
						<div class="xiangq_fonttop">
							<h3>${shouban.names}</h3>
						</div>
						<div class="xiangq_fontwen">
						<c:forEach items="${stype}" var="type">
						 ${type.names}
						</c:forEach>
						</div>
							<div class="xiangq_yx">
								 <div class="pt10"></div>
								 <div class="xiangq_wen xiangq_wenjg clearf">
									<span class="left pt7">促销价：${shouban.price}</span>
									<span class="jiage"><font class="f20 fb pr3">&yen;</font></span>
									<div class=" clearfix"></div>
								</div>
								
								<div class="xiangq_wen clearf">
									<span class="yuanjia cff0">原价：${shouban.price+20}，你可省20</span>
								</div>
								
							</div>            
							<!--[if !IE]>评价、喜欢宝贝<![endif]-->
							<div class="xiangq_ping clearfix">
							
								<div class="xiangq_xiaol fl f14">                        
									<span>最近销量</span>
									<span class="c333">${shouban.numbers}</span>
								</div>
								<div class="xiangq_pingj fl f14">
							
								<div class="xiangq_pingj fl f14" style="text-align:left;">
							
									<span>累计评价</span>
									<span class="c333" id="num_detail_main_info_comment_num">${scomnum}</span> 
								</div>                    
								<!-- <div class="xiangq_xih fl f14">  
									<span>累计收藏宝贝</span>                  
									<span class="c333" id="num_detail_main_info_collect_num"></span>                        
								</div> -->
							</div>
							<div id="blk_detail_main_spec"></div>
							<div id="blk_detail_main_btn"></div>
							<!-- 尺码详情表弹窗 -->
							<div class="chima-pop">
								<a href="javascript:;" class="chima-pop-close"><i class="i-close"></i></a>
								<div class="chima-pop-cont">
									<div class="chima-popc-head">
										<p>尺寸</p>
									</div>
									<div class="chima-popc-main clearfix">
										<div class="fl chima-popc-img">
											<i class="ico-clothes"></i>
										</div>
										<div class="fl chima-popc-table">
											<p class="chima-table-tit">商城T恤尺寸</p>
											<table class="chima-table">
												<colgroup>
													<col class="w_20">
													<col class="w_150">
													<col class="w_130">
												</colgroup>
												<tbody>
													<tr>
														<th></th>
														<th>1/2胸围（A）</th>
														<th>衣长（B）</th>
													</tr>
													<tr>
														<td>S</td>
														<td>44.5-47cm</td>
														<td>44.5-47.5cm</td>
													</tr>
													<tr>
														<td>M</td>
														<td>44.5-47cm</td>
														<td>44.5-47.5cm</td>
													</tr>
													<tr>
														<td>L</td>
														<td>44.5-47cm</td>
														<td>44.5-47.5cm</td>
													</tr>
													<tr>
														<td>XL</td>
														<td>44.5-47cm</td>
														<td>44.5-47.5cm</td>
													</tr>
													<tr>
														<td>2XL</td>
														<td>44.5-47cm</td>
														<td>44.5-47.5cm</td>
													</tr>
												</tbody>                                                        
											</table>
										</div>                                                
									</div>
								</div>
							</div>
							                
							<div class="xiangq_wen clearfix">
								<ul class="xiangq_bz clearfix">
									<li><span class="fw1"></span><a class="fu1">7天无理由退换货</a></li>
									<li><span class="fw2"></span><a class="fu2">100%官方正品</a></li>
									<li><span class="fw3"></span><a class="fu3">全场每单满199元包邮</a></li> 
								</ul>
							</div>
						</div>
					</div>                                  
				</div>
				<div class="cb"></div>
			</div> 
			<script type="text/tmpl" id="tmpl_detail_main">
			{if json.ret != 0 || !json.data || !json.data.list}
            <div class="defaultnull clearfix">
                <div class="nullcon">
                    <div class="pic"></div>
                    <div class="txt">
                        <p class="tt">未查到商品信息！</p>
                        <p>您可以：</p>
                        <p>1、进入首页更多折扣商品等着你，<a href="index.shtml" target="_blank" class="blue">立即前往&gt;</a></p>
                    </div>
                </div>
            </div>
            {elseif json.data.list.dtShowBegin > json.now || json.data.list.dtShowEnd <= json.now}
            <div class="defaultnull clearfix">
                <div class="nullcon">
                    <div class="pic"></div>
                    <div class="txt">
                        <p class="tt">此商品已下架！</p>
                        <p>您可以：</p>
                        <p>1、进入首页更多折扣商品等着你，<a href="index.html" target="_blank" class="blue">立即前往&gt;</a></p>
                    </div>
                </div>
            </div>
            {else}
                <!--大图-->
			<div class="fl xiangq_big" id="blk_detail_main_img">
				<div class="tab_box tb-booth tb-pic tb-s310 product-img-box">
					<a class="product-image image-zoom MagicZoom" rel="loading-msg:Loading zoom..." id="main-image" href="${json.data.list._imgData[0]}">
						{if json.data.list._imgData[0]}<img id="big_pic" src="${json.data.list._imgData[0]}" width="570" height="570" class="jqzoom">{/if}
						<span class="notice"></span> 
					 </a>                  
				</div>  
				<div class="zoom-action">
					<a id="btn_blk_detail_main_img_popup" href="javascript:;" class="zoom-xiangqimg" title="点击放大">点击放大</a>
				</div>
				<div class="more-views-container tab_menu">
					<div class="more-views">
						<ul class="slider clearfix">
							{var i=0}
							{for item in json.data.list._imgData}
							<li>
								<a data-seq="${i}" id="main-image-${i}" href="${item}" rev="${item}" rel="zoom-id:main-image;">
									<img src="${item}" width="34" height="34"/>
								</a>
							</li>
							{var i=i+1}
							{/for}
						</ul>
					</div>
				</div>                    
				<div id="product-modal" class="moby product-zoompop">
					<a href="javascript:hideZoomPop();" class="close" data-moby="hide" data-target="#product-modal">Close</a>
					<div class="inner">
						<div class="product-img-box">
							<a class="product-image image-zoom MagicZoom" rel="loading-msg:Loading zoom..." id="modal-image" href="${json.data.list._imgData[0]}">
								{if json.data.list._imgData[0]}<img src="${json.data.list._imgData[0]}"/>{/if}
								<span class="notice"></span>
							</a>
						</div>
						<div class="more-views-container">
							<div id="js-more-views" class="more-views">
								<ul class="slider clearfix">
								{var i=0}
								{for item in json.data.list._imgData}
								<li>
									<a href="${item}" id="modal-image-${i}" data-seq="${i}" rev="${item}" rel="zoom-id:modal-image;">
										<img src="${item}"/>
									</a>
								</li>
								{var i=i+1}
								{/for}
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="fr" id="blk_detail_main_info">
				<div class="proInfo_r">
					<!--信息-->
					<div class="xiangq_font">        
						<div class="xiangq_fonttop">
							<h3>${json.data.list.sMallName}</h3>
						</div>
						<div class="xiangq_fontwen">${json.data.list.sMallBrief}</div>
							<div class="xiangq_yx">
								 <div class="pt10"></div>
								 <div class="xiangq_wen xiangq_wenjg clearf">
									<span class="left pt7">{if json.data.list.diffPrice > 0}促销价{else}现价{/if}：</span>
									<span class="jiage"><font class="f20 fb pr3">&yen;</font>${json.data.list.iCurrPriceYuan}</span>
									<div class=" clearfix"></div>
								</div>
								{if json.data.list.diffPrice > 0}
								<div class="xiangq_wen clearf">
									<span class="yuanjia cff0">原价：${json.data.list.iOriPriceYuan}{if json.data.list._discountRate>0}，你可省${json.data.list._discountRate}%{/if}</span>
								</div>
								{/if}
							</div>            
							<!--[if !IE]>评价、喜欢宝贝<![endif]-->
							<div class="xiangq_ping clearfix">
								{if !(json.data.list.iCatId == 218 || json.data.list.iCatId == 219 || json.data.list.iCatId == 230 || json.data.list.iCatId == 231)}
								<div class="xiangq_xiaol fl f14">                        
									<span>最近销量</span>
									<span class="c333">${json.data.list.iTotalSoldNum}</span>
								</div>
								<div class="xiangq_pingj fl f14">
								{else}
								<div class="xiangq_pingj fl f14" style="text-align:left;">
								{/if}
									<span>累计评价</span>
									<span class="c333" id="num_detail_main_info_comment_num"></span> 
								</div>                    
								<div class="xiangq_xih fl f14">  
									<span>累计收藏宝贝</span>                  
									<span class="c333" id="num_detail_main_info_collect_num"></span>                        
								</div>
							</div>
							<div id="blk_detail_main_spec"></div>
							<div id="blk_detail_main_btn"></div>
							<!-- 尺码详情表弹窗 -->
							<div class="chima-pop">
								<a href="javascript:;" class="chima-pop-close"><i class="i-close"></i></a>
								<div class="chima-pop-cont">
									<div class="chima-popc-head">
										<p>尺寸</p>
									</div>
									<div class="chima-popc-main clearfix">
										<div class="fl chima-popc-img">
											<i class="ico-clothes"></i>
										</div>
										<div class="fl chima-popc-table">
											<p class="chima-table-tit">商城T恤尺寸</p>
											<table class="chima-table">
												<colgroup>
													<col class="w_20">
													<col class="w_150">
													<col class="w_130">
												</colgroup>
												<tbody>
													<tr>
														<th></th>
														<th>1/2胸围（A）</th>
														<th>衣长（B）</th>
													</tr>
													<tr>
														<td>S</td>
														<td>44.5-47cm</td>
														<td>44.5-47.5cm</td>
													</tr>
													<tr>
														<td>M</td>
														<td>44.5-47cm</td>
														<td>44.5-47.5cm</td>
													</tr>
													<tr>
														<td>L</td>
														<td>44.5-47cm</td>
														<td>44.5-47.5cm</td>
													</tr>
													<tr>
														<td>XL</td>
														<td>44.5-47cm</td>
														<td>44.5-47.5cm</td>
													</tr>
													<tr>
														<td>2XL</td>
														<td>44.5-47cm</td>
														<td>44.5-47.5cm</td>
													</tr>
												</tbody>                                                        
											</table>
										</div>                                                
									</div>
								</div>
							</div>
							                
							<div class="xiangq_wen clearfix">
								<ul class="xiangq_bz clearfix">
									<li><span class="fw1"></span><a class="fu1">7天无理由退换货</a></li>
									<li><span class="fw2"></span><a class="fu2">100%官方正品</a></li>
									<li><span class="fw3"></span><a class="fu3">全场每单满199元包邮</a></li> 
								</ul>
							</div>
						</div>
					</div>                                  
				</div>
				<div class="cb"></div>
				{/if}
			</script>
			<script type="text/html" id="tmpl_detail_main_spec">
			{var i=0}
			{for item in spec}
			<div class="xiangq_wen xiangq_wenma" style="{if item.name =='提领城市'}height: 120px;{/if}">
				<span class="left pt5">${item.name}：</span>
				<span class="yanse">
					<ul class="buy_chima">
						{for attr in item.list}
						<li class="clearfix" attrid="${attr.iAttrId}" goodsids="${attr.goodsIds}">
							<a class="{if attr.selected} click {/if} {if attr.disable && !item.selected} disable {/if}">${attr.sAttrValue}</a>
						</li>
						{/for}
					</ul>
				</span>
				{if i==1}
				<!--<a id="btn_detail_main_spec_size_popup" class="fl chim_biao" style="display:none;" state="1" designgoodsid="0" goodsno="" sizevalve="" waredetailid="134" isdiscount="0">-->
					<!--<i class="i-cloth"></i>尺码详情表-->
				<!--</a>-->
				{/if}
			</div>
			{var i=i+1}
			{/for}
			</script>
			<script type="text/html" id="tmpl_detail_main_btn">
			<div class="xiangq_wen xiangq_num clearfix mt5">
				<span class="left pt5">数量：</span>
				<span class="xiangq_num_act btn_detail_main_buy_min">
					<a class="">-</a>
				</span>
				<span>
					<input type="text" class="buy_inp inpt_detail_main_buy_num" value="1" maxlength="3" size="2" stock_num="${json.data.list.stockNum}" limit_num="{if json.data.list.sBuyLimit}${json.data.list.sBuyLimit.iSingleBuyLimit}{else}-1{/if}"/>
				</span>
				<span class="xiangq_num_act btn_detail_main_buy_plus">
					<a class="">+</a>
				</span>
				{if json.data.list.stockNum > 0}
				<span class="pt5 pl5">（{if json.data.list.stockNum >100}库存充足{else}还剩：<strong style="color: #f94915;">${json.data.list.stockNum}</strong>件{/if}）</span>
				{else}
				<span class="pt5 pl5">（已售罄）</span>
				{/if}
			</div>                    
			<div class="xiangq_wen  mt10 botxian" style="padding-top:15px;">
				<span class="left">&nbsp;</span>
				{if json.data.list.dtSellBegin > json.now}
				<span><div class="buy_nobot">即将上架</div></span>
				{elseif json.data.list.dtSellEnd <= json.now}
				<span><div class="buy_nobot">暂停售卖</div></span>
				{elseif json.data.list.stockNum > 0}
				<span>
					{if '1245'.indexOf(json.data.list.iSaleType) == -1}<a id="btn_detail_cart_buy" class="buy_bot" href="javascript:;">立即购买</a>{/if}
				</span>
				<span class="pl10">
					<a id="btn_detail_cart_add" class="buyjia_bot" href="javascript:;"><span class="bcart-box"><i class="i-bcart"></i></span>加入购物车</a>
				</span>
				<span class="jiatit" style="display:none;">
					<div>&nbsp;</div>成功加入！<br>
					&nbsp;&nbsp;&nbsp;
					<a href="cart.shtml" class="pl10" blank="_top">去购物车</a>
				</span>
				<div class="likebox clearf">
					<a class="shoucz fl" href="javascript:;" style="display:none;">收藏宝贝</a>
					<a class="shoucz liked fl" href="javascript:;" style="display:none;">已收藏</a>
				</div>
				{else}
				<span>
					{if json.data.list.iMallId != ''}<div class="buy_nobot">暂时无货</div>{else}<div class="buy_nobot" style="width: 240px;">再等等，还有玩家未付款</div>{/if}
				</span>
				{/if}
				<div class="clearfloat"></div>
			</div>      
			</script>
                <!--商品信息 E-->
                <a id="shopxg"></a>
                <!-- 组合优惠 -->
				<div id="blk_detail_bundle">
				
				<div class="xiangq_wen xiangq_num clearfix mt5">
				
				
			
			</div>                    
			<div class="xiangq_wen  mt10 botxian" style="padding-top:15px;">
				<span class="left">&nbsp;</span>
			
				
				
				
				
				<span>
				<a id="btn_detail_cart_buy" class="buy_bot" href="javascript:;">立即购买</a>
				</span>
				<span class="pl10">
					<a id="btn_detail_cart_add" class="buyjia_bot" href="car/addCar?id=${shouban.id}">
					<span class="bcart-box">加入购物车<i class="i-bcart"></i>
					</span>
					</a>
					
				</span>
				<span class="jiatit" style="display:none;">
					<div>&nbsp;</div>成功加入！<br>
					&nbsp;&nbsp;&nbsp;
					<a href="car/addCar?id=${shouban.id}" class="pl10" blank="_top">去购物车</a>
				</span>
				<div class="likebox clearf">
					<a class="shoucz fl" href="javascript:;" style="display:block;">收藏宝贝</a>
					<a class="shoucz liked fl" href="javascript:;" style="display:none;">已收藏</a>
				</div>
				
				
				<div class="clearfloat"></div>
			</div>      
				</div>
				<script type="text/tmpl" id="tmpl_detail_bundle">
				{if json.ret != 0 || !json.data || !json.data.sales || json.data.sales.length == 0}

				{else}
                <div class="groupcont">
                    <div class="group-tit">组合优惠</div>
                    <div class="groupbox clearfix">
					{for item in json.data.sales}
						{if item_index>0}<div class="fl group-add">+</div>{/if}
                        <div class="fl group-goodbox" mallid="${item.iMallId}" saleid="${item.iSaleId}">
                            <div class="group-good">
                                <img class="group-good-img" src="${item.sProfileImg}" width="186" height="186">
                                <div class="group-actbox" style="display:none;">
                                    <div class="group-actboxbg"></div>
                                    <div class="group-actbox-cont blk_detail_bundle_spec"></div>
                                </div>
                            </div>
                            <p class="group-goodpri">价格：<font class="f12">&yen;</font>${item.iSalePriceYuan}</p>
                        </div>
					{/for}
                        <div class="fl group-introbox">组合更优惠</div>
                        <div class="fl group-infobox">
                            <div class="group-pri clearfix">
                                <span class="fl">套餐价：</span>
                                <span class="fl"><font class="f16 fb">&yen;</font><strong>${json.salesInfo.totalPriceYuan}</strong></span>
								{if json.salesInfo.diffPriceYuan>0}
                                <span class="fl pri-sale">省<font class="f12">&yen;</font>${json.salesInfo.diffPriceYuan}</span>
								{/if}
                            </div>
                            <p class="pri-oldpri">原价：<font class="f12">&yen;</font>${json.salesInfo.orgPriceYuan}</p>
                            <a id="btn_detail_bundle_buy" href="javascript:;" class="btn-groupbox btn-buy">立即购买</a>
                            <a id="btn_detail_bundle_addcart" href="javascript:;" class="btn-groupbox btn-joincart"><i class="i-gpcart"></i>加入购物车</a>
                            <!-- 成功加入弹窗！ -->
                            <span class="group-jiatit" style="display:none;">
                                <div>&nbsp;</div>成功加入！<br>
                                <!--<a onclick="toMao('shopxg')">相关推荐商品</a>-->&nbsp;&nbsp;&nbsp;
                                <a href="cart.shtml" class="pl10" blank="_top">去购物车</a>
                            </span>
                        </div>
                    </div>
                </div>
				{/if}
				</script>
				<script type="text/tmlp" id="tmpl_detail_bundle_spec">
				{var i=0}
				{for item in spec}
				<div class="sel-group size-sel clearfix">
					<label class="fl">${item.name}：</label>
					<div class="fl mrselect {if i==0} zindexm {/if}">
						<span class="selected" attrid="{if item.selectedAttr.iAttrId}${item.selectedAttr.iAttrId}{else}{/if}">
						{if item.selectedAttr.sAttrValue}${item.selectedAttr.sAttrValue}{else}请选择{/if}
						</span>
						<i class="comicon i-grayarrow"></i>
						<div class="downlist" style="z-index:105;">
							<ul>
							{for attr in item.list}
							{if item.selected || !attr.disable}
								<li attrid="${attr.iAttrId}" goodsids="${attr.goodsIds}">${attr.sAttrValue}</li>
							{/if}
							{/for}
							</ul>
						</div>
					</div>
				</div>
				{var i=i+1}
				{/for}
				<a href="javascript:;" class="group-btn-sure bnt_detail_bundle_spec_submit">确定</a>
				</script>
                <!--详情导航-->
                <div class="hed_bj w1180" id="blk_detail_tab">
                    <ul class="hedtop shownav fl">
                        
                        <li class="shownav2">用户点评</li>
                     
                    </ul>
                </div>
                <div class="w1180 detail-box">                    
                    <div id="ware_desc">
                        <!-- 商品详情 s-->
                        <div class="detail-page shopxgmain shownavbar1" id="blk_detail_tab_desc"></div>
                        <!-- 商品详情 e-->
                       <!--  <div class="defaultnull clearfix">
										<div class="nullcon">
											<div class="pic"></div>
											<div class="txt">
												<p class="tt">未查到商品评论！</p>
												<p>您可以：</p>
												<p>1、进入"我的订单"添加评论，<a href="http://tiyan.lolriotmall.qq.com/user/orderlist.shtml" target="_blank" class="blue">立即前往&gt;</a></p>
											</div>
										</div>
									</div> -->
                        <div class="detail-page shownavbar2_bak" style="display:block;">
                            <div class="pb50">
                                <div class="shopxgwen" >
									<div id="blk_detail_tab_comment">
										
										<ul class="pinglist">
										<li class="clearfix">
											<div class="userc-info fl">
												<div class="usercimg">
													<img src="./images/20170626185655_94993.big.jpg" height="50" width="50">
												</div>
												<p class="usercname">Nick</p>
											</div>
											<div class="mid fl">
												<div class="comment-point clearfix">
													<span class="fl">商品评分：</span>
													<span class="pord-icon fl">
														<!-- 分数乘以2 -->
														<i class="comicon i-star500"></i>
													</span>
													
													<span class="fl ml5 ico-jcpoint"></span>
												
												</div>
												<div class="commoent-txt">6666666666666666</div>
												<p class="point-time">2017-8-1</p>
											</div>
										</li>
									<li class="clearfix">
											<div class="userc-info fl">
												<div class="usercimg">
													<img src="./images/20170626185655_94993.big.jpg" height="50" width="50">
												</div>
												<p class="usercname">Nick</p>
											</div>
											<div class="mid fl">
												<div class="comment-point clearfix">
													<span class="fl">商品评分：</span>
													<span class="pord-icon fl">
														<!-- 分数乘以2 -->
														<i class="comicon i-star500"></i>
													</span>
													
													<span class="fl ml5 ico-jcpoint"></span>
												
												</div>
												<div class="commoent-txt">6666666666666666</div>
												<p class="point-time">2017-8-1</p>
											</div>
										</li>
									</ul>
										</div>
                                        <!--评论列表 end-->
                                    </div>
                                </div>
								<script type="text/tmpl" id="tmpl_detail_tab_comment">
								{if json.result != 0}
									<div class="defaultnull clearfix">
										<div class="nullcon">
											<div class="pic"></div>
											<div class="txt">
												<p class="tt">未查到商品评论！</p>
												<p>您可以：</p>
												<p>1、进入"我的订单"添加评论，<a href="http://tiyan.lolriotmall.qq.com/user/orderlist.shtml" target="_blank" class="blue">立即前往&gt;</a></p>
											</div>
										</div>
									</div>

									{elseif !json.data || !json.data.list || json.data.total==0}
									<div class="defaultnull clearfix">
										<div class="nullcon">
											<div class="pic"></div>
											<div class="txt">
												<p class="tt">未查到商品评论！</p>
												<p>您可以：</p>
												<p>1、进入"我的订单"添加评论，<a href="http://tiyan.lolriotmall.qq.com/user/orderlist.shtml" target="_blank" class="blue">立即前往&gt;</a></p>
											</div>
										</div>
									</div>
									{else}

									<!--评论列表-->
									<ul class="pinglist">
									{for item in json.data.list}
										<li class="clearfix">
											<div class="userc-info fl">
												<div class="usercimg">
													<img src="${item.sUserPic}" height="50" width="50">
												</div>
												<p class="usercname">${item.sUserNick}</p>
											</div>
											<div class="mid fl">
												<div class="comment-point clearfix">
													<span class="fl">商品评分：</span>
													<span class="pord-icon fl">
														<!-- 分数乘以2 -->
														<i class="comicon i-star${item.iGoodsScore}"></i>
													</span>
													{if item.iOrder == 1}
													<span class="fl ml5 ico-jcpoint"></span>
													{/if}
												</div>
												<div class="commoent-txt">${item.sComment}</div>
												<p class="point-time">${item.dtModifyDate}</p>
											</div>
										</li>
									{/for}
									</ul>
								{/if}
								</script>
                                <!-- 分页 -->
                                <div class="pagebox clearfix" >
									<div class="pagelist fr clearf">
                                        <div class="page" id="page_detail_tab_comment">
										</div>
									</div>
								</div>
                            </div>
                        </div>
                        <!--售后服务-->
                        <div class="detail-page shownavbar4"  style="display:none;">
							<div class="shownavbar4" style="display: block;">
								<!--[if !IE]>售后服务<![endif]-->
								<div class="hed_bj w980" style="display: none;">
									<ul class="hedtop">
										<li class="hedhover">售后服务</li>
									</ul>
								</div>  
								<div class="shopxgmain" style="padding:40px 16px;">
									
								<!--商品详情页服务	-->
								
								<!--7天无理由退换货-->
								<a name="help1"></a>
								<div class="helphed">7天无理由退换货</div>
								<div class="helpmain">
									
									<span>一、顾客提出“七天无理由退换货”服务的申请条件 <br>
						二、“七天无理由退换货”服务的申请流程<br>
						三、“七天无理由退换货”服务的商品品类划分<br>
						四、关于邮费争议问题<br>五、各品类《商品完好定义》</span>
								
									
								  <span class="spb4 c000">一、顾客提出“七天无理由退换货”服务的申请条件</span>
								  
								   <span>1 提出的商品需在支持“七天无理由退换货”的商品品类范围内，"七天无理由退换货"的商品品类参见《七天无理由退换货"服务的商品品类划分》。商城依据商品品类划分后的“七天无理由退换货”服务于周边商城正式上线执行，具体约定以商品服务标签为准。<br>
						2 顾客在签收商品之日起七天内（按照物流签收后的第二天零时起计算时间，满168小时为7天）发起申请；<br>
						3 顾客的服务申请在形式上符合相关法律法规的规定；<br>
						4 申请金额仅以顾客实际支付的商品价款为限；<br>5 顾客提出“七天无理由退换货”服务的申请，商品需完好，详见各品类《商品完好定义》；</span>

						 <span class="spb4 c000">二、“七天无理由退换货”服务的申请流程</span>
								  
								   <span>1 在满足上述申请条件的前提下，顾客联系客服发起“七天无理由退换货”服务的申请；
						<br>
						2 在收到顾客“七天无理由退换货”服务申请后，客服指引顾客提供相关证明，确认及判定；
						<br>
						3 当LOL周边商城根据相关规范判定顾客“七天无理由退换货”服务申请成立，则开始进入退换货流程；<br>
						4 申请金额仅以顾客实际支付的商品价款为限；<br>5 顾客提出“七天无理由退换货”服务的申请，商品需完好，详见各品类《商品完好定义》；</span>
									
									 <span class="spb4 c000">三、“ 七天无理由退换货”服务的商品品类划分</span>
									 <span>目前商城商品都支持“七天无理由退换货”；<br>海报属特殊商品，除破损等质量问题外，不支持7天无理由退换货服务
									</span>
									
									 <span class="spb4 c000">四、关于邮费争议问题</span>
								  <span>由顾客发起的“七天无理由退换货”服务的邮费承担原则：交易中的运费争议，根据“谁过错，谁承担”的原则处理<br>
						1 如果商品存在质量问题、描述不符合等商家责任，来回运费都需要由商家承担；<br>
						2 如果是商品不喜欢等客户责任，则来回运费由客户来承担；</span>

									<span class="spb4 c000">五、各品类《商品完好定义》</span>
									
								 <table width="720" border="0" cellspacing="1" cellpadding="4" style="background:#CCC; line-height:22px;" class="ex_table">
						  <tbody><tr>
							<td width="160" align="center" bgcolor="#FFFFFF" class="ex_left">类目名称</td>
							<td bgcolor="#FFFFFF" class="ex_left">商品完好定义</td>
						  </tr>
						  <tr>
							<td width="160" align="center" bgcolor="#FFFFFF" class="ex_left">手办</td>
							<td bgcolor="#FFFFFF">1&nbsp;商品外包装完整，相关附（配）件齐全；<!--（若有）要求吊牌完整；-->手办类商品外包装未拆封；<br>
							  2&nbsp;商品表面无划痕、无磨损、无磕碰、无使用、无拆卸等痕迹；<br>
							  3 防伪标识码未刮开或撕损；</td>
						  </tr>
						  <tr>
							<td width="160" align="center" bgcolor="#FFFFFF" class="ex_left">服装</td>
							<td bgcolor="#FFFFFF">1 商品外包装完整，相关附（配）件齐全；要求吊牌完整；<br>
						2 商品无显著穿着、无洗涤、无沾染化妆品（如口红等）、无破损等痕迹；<br>
						防伪标识码未刮开或撕损；</td>
						  </tr>
						  <tr>
							<td width="160" align="center" bgcolor="#FFFFFF" class="ex_left">海报</td>
							<td bgcolor="#FFFFFF">1 商品外包装完整，相关附（配）件齐全；
						2 商品表面无划痕、无破损、无使用等痕迹；</td>
						  </tr>
						  <tr>
							<td width="160" align="center" bgcolor="#FFFFFF" class="ex_left">适用以上所有类目</td>
							<td bgcolor="#FFFFFF">上述商品完好定义中，赠品发票说明、定义补充如下：<br>
						1 （若有）赠品遗失破损、发票遗失不影响原商品退还；赠品破损或遗失可折价（如能估量折价的，以估值折价为准；无法估值折价的，折价上限不超过原商品成交价的10%）、发票遗失按相应退税点由用户承担；<br>
						2 外包装的定义：系指商品出厂原包装，不含商家或物流自行二次封装；<br>
						3 塑封包装的定义：生产厂商采用密封条（签）或整体塑（密）封形式对商品的包装</td>
						  </tr>
						</tbody></table>


							   
									
							 </div>
								
								<!--如何办理退换货-->
								<a name="help5"></a>
								<div class="helphed">退换货流程</div>
								<div class="helpmain">
									<img src="./images/tuihuo_lc.jpg" class="mt10 mb20">
									<span class="spb4 c000"> 1. 联系客服发起退/换货申请
						</span>
									<span>凡在英雄联盟游戏周边商城购买商品，您即可享受英雄联盟游戏周边商城的售后服务。如果您需要办理退/换货，请您先通过电话或邮件的方式与英雄联盟游戏周边商城客服中心联系。<br>
									<font class="cfb6">客服联系方式：</font>   QQ: <a id="qq_qianfont">售前服务</a>  <a id="qq_huofont">售后服务</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客服电话: 0755-25727866&nbsp;&nbsp;&nbsp;&nbsp;客服邮箱: <a href="mailto:service@lolriotmall.qq.com">service@lolriotmall.qq.com</a><br>
									<font class="cfb6">客服服务时间：</font>   周一至周日（节假日均可），每天上午09:00-晚上24:00
									</span>
									
									 <span class="spb4 c000"> 2. 待客服确认是否可以退/换货
						</span>
									<span><font class="cfb6">有质量问题商品退/换货：</font>买家需向客服提供说明商品质量问题的图片，客服根据<a href="helpExpress.html#help1">7天无理由退/换货</a>相关规定对商品进行判定商品是否可以进入退/换货流程；<br>
						<font class="cfb6">无质量问题商品的退/换货：</font> 客服根据7天无理由退/换货的时间规定，判定商品是否可以进入退/换货流程；<br>
									注：手办、雕塑等易碎品需在签收快递前进行检验，如有破损，请选择拒收快递；
									</span>
									
									<span class="spb4 c000">3. 如何邮寄退/换货商品</span>
									
									<span><font class="cfb6">3-1. 邮寄所需材料：</font><br>需退换货的商品+商品发货清单（详见商品包装内）+发票（如果有发票则需一同寄回）+防伪卡 <br>备注：务必在商品发货单背面完善以下信息，发货单背面信息如下。</span>
									<img src="http://img.lolriotmall.qq.com/imgjs_pc/images/new/tuihuo_lc2.jpg" class=" mb10"> 
									<span>备注：如以上信息有缺失，可能会造成我们无法为您办理退换货事宜；如因您填写资料有误，而导致无法退换货、延误退换货的时间，英雄联盟游戏周边商城不承担责任。如商品发货单及发票(如有)未随货物一并寄回，可能造成我们延误办理退换货、甚至无法为您办理退换货。</span>

						<span><font class="cfb6">3-2. 退/换货包裹接收地址：</font><br>快递地址：深圳市龙岗区清风大道43号华强物流工业园1栋4楼西 邮编：518115<br>
						单位名称：深圳市合泰文化发展有限公司<br>
						收件人：合泰退货仓<br>
						电话：0755-28379601</span> 
						<span><font class="cfb6">3-3. 邮费说明：</font><br><b>商品质量问题的退/换货：</b>我们会为您承担回邮费用（请您注意使用合理的方式进行邮寄，英雄联盟游戏周边商城为您承担的邮寄费用上限原则上不超过英雄联盟游戏周边商城向您收取的货物运费金额。例如：若给您邮寄商品时的邮费是15元，则我们为您承担回邮费用不超过15元）；<br>
						<b>邮费承担方式：</b>邮寄时买家需先垫付邮费，在收到商品的7日内，邮费会转到买家财付通账户或买家提供的其他账户；<br>
						<b>商品无质量问题的退/换货：</b>回邮的费用需由您自行承担。</span>

						<span class="spb4 c000"> 4. 客服收货后退款/重新发货时间
						</span>
									<span>退货：收到退货商品后，我们会于2个工作日内将款项退回，具体到账时间以银行到账时间为准；<br>
						换货：收到需要换货的商品后，我们会于1个工作日内（按照物流签收后的第二天零时起计算时间，满168小时为7天）将所调换商品寄出；
									</span>
															  
								</div>
								
								
								<!--如何办理退换货-->
								<!--<a name="help2"></a>
								<div class="helphed">如何办理退换货</div>
								<div class="helpmain">
									<span  class="spb4 c000">如何办理退换货</span>
									<span class="spb15">凡在英雄联盟游戏周边商城购买商品，您即可享受英雄联盟游戏周边商城的售后服务。如果您需要办理退/换货，请您先通过电话或售后QQ方式与英雄联盟游戏周边商城客服中心联系。<br>
						客服电话 ：0755-25727866&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客服邮箱 ：service@lolriotmall.qq.com<br>
						服务时间 ：周一至周日（不含国家的法定节假日），每天上午09:00-晚上24:00</span>
									
									<span  class="spb4 c000">退/换货包裹接收地址</span>
											 
						 <span  class="spb15">快递地址：深圳市龙岗区清风大道43号华强物流工业园1栋4楼西
						邮编：518115<br>单位名称：深圳市合泰文化发展有限公司<br>收件人：合泰退货仓<br>电话：0755-28379601<br></span>
									
									 <span  class="spb4 c000">退换货费用问题申明</span>
								  <span><font class="cfb6">1、商品质量问题的换货</font>，我们会为您承担回邮费用（请您注意使用合理的方式进行邮寄，英雄联盟游戏周边商城为您承担的邮寄费
						用上限原则上不超过英雄联盟游戏周边商城向您收取的货物运费金额）。</span>
						 <span  class="spb15"><font class="cfb6">2、商品无质量问题的换货</font>，来回运费需由您自行承担<br>
						注：送货时间自商品出库后开始计算</span>
							 </div>-->
								
								
								<!--退货方式及时效-->
								<!--<a name="help3"></a>
								<div class="helphed">退货方式及时效</div>
								<div class="helpmain">
									<span class="cfb6">请您联系客服后，严格按以下步骤进行操作：</span>
									<span  class="spb4 c000">1、首先请您务必在商品发货单背面填写如下信息：</span>
									<span class="spb15">a.   您的姓名、地址、联系方式。<br>
						b.  你需要办理退换货商品的名称、数量及尺码和颜色。<br>
						c.   商品非质量问题退换货需填写：退换货原因、如果您欲更换商品，请您将名称、数量及尺码和颜色；商品质量问题退
						换货请注明商品存在的质量问题。<br>
						<font class="cfb6 lh24">如以上信息有缺失，可能会造成我们无法为您办理退换货事宜；如因您填写资料有误，而导致无法退换货、延误退换货的时间，英雄联盟游戏周边商城不承担责任。</font></span>


								  <span  class="c000">2、请您将需要换货的商品、背面信息填写完整的商品发货单及发票(如有)，通过邮政包裹或快递方式寄送至英雄联盟游戏周边商城
						（寄送参照退/换货 包裹接收地址），如商品发货单及发票(如有)未随货物一并寄回，可能造成我们延误办理退换货、甚至无法为您
						办理退换货。</span>
						 <span  class="c000">3、请在您寄回商品后，尽快将寄回的快递单号以邮件的方式告知我们，以便我们跟进您寄回快递的签收进度。</span>
								  <span  class="c000">4、我们在收到您寄回的商品后，首先需要对您退回的商品进行质检，在三个工作日内为您处理。若您需要更换的商品缺货，我们会在第一时间联系您，在征求您的同意的情况下为您更换其他商品。</span>
							 </div>-->
							 
							 
							 <a name="help3"></a>
								<div class="helphed">商品送错的处理方案</div>
								<div class="helpmain">
									<span>如玩家收到的商品不符合其订购要求，如衣物尺码，海报样式等，请在确认收货7天之内与客服联系。如情况属实，我们会亲自让快递上门取件帮您办理换货。</span>
							 </div>
							 
							 <!--售后服务及投诉-->
								<a name="help4"></a>
								<div class="helphed">售后服务及投诉</div>
								<div class="helpmain">
									<span>
									在线客服：<a id="qq_qianhelpwen">售前咨询</a>&nbsp;&nbsp;<a id="qq_houhelpwen">售后咨询</a><br>
						语音客服：0755-25727866<br>
						邮件服务：<a href="mailto:service@lolriotmall.qq.com">service@lolriotmall.qq.com</a><br>
						投诉与建议：<a href="mailto:service@lolriotmall.qq.com">service@lolriotmall.qq.com</a><br>
									</span>
								</div>
									
								<!--商品详情页服务end	-->
								
								

								</div></div>             
                        </div>
                    </div>    
                </div>

            </div>
        </div>
            
    </div>
</div>
<!-- 底部 -->
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
<!--badjs-->
<script type=text/javascript src=./js/bj-report.min.js></script><script>!function(){BJ_REPORT.init({id:1178,combo:1,delay:100,url:"//badjs2.qq.com/badjs",ignore:[/(Script Error)|(getHtml)|(gamehelper)|(WeixinJSBridge)/i],level:4})}()</script>
<script type="text/javascript" src="./js/jquery1.8-min.js"></script>
<script type="text/javascript" src="./js/milo.js" charset="gbk"></script>
<script type="text/javascript" src="./js/template.js" charset="gbk"></script>
<script type="text/javascript" src="./js/lol.js"></script>
<script type="text/javascript" src="./js/actual_index_nav.js"></script>

<script type="text/javascript">

    var bizCode = 'lolriotmall';

    // console 兼容性处理
    try{
        console.log('test console');
    } catch(e){
        window.console = {log :function () {}};
    }

    milo.loader.loadByTag([
        {
            name: 'util.jquery-min',
            value:$
        },
        {
            name: 'util.template',
            value: TrimPath
        }
    ]);

    // 绑定事件
    function bindEvents() {
        $(".gotop").click(function(){
            $("html,body").stop().animate({ scrollTop:0},500);
        });

        $(".rightbot").toggle(function() {
            $(".rightqq_bar").animate({right:'-104',opacity:'0'},"slow");
            $(".rightbot").addClass("rightbot_close");
        }, function() {
            $(".rightbot").removeClass("rightbot_close");
            $(".rightqq_bar").animate({right:'14',opacity:'1'},"slow");
        });


        $(".top_mem a.lolweixin").hover(function(){
                $(this).children().show();
            }
            ,function(){
                $(this).children().hide();
            });

        $('#soinp').bind('keypress',function(event){
            if(event.keyCode == "13")
            {
                searchKeyWord();
            }
        });

        $(".sosoinp").focus(function(){
            $(".keyword-list").hide();
        });
        $(".sosoinp").blur(function(){
            if($(this).val() == ''){
                $(".keyword-list").show();
            }
        });
    }

    // 渲染导航条
    function renderNav() {
        var data = window.actual_index_nav,
            navs = [], idxs = {};

        // 因为父节点不一定不在子节点前面，所以分了2次for循环处理
        for(var i in data){
            if(data[i].iParentId == 0){
                idxs[data[i].iSeqId] = navs.length;
                data[i].subs = [];
                navs.push(data[i]);
            }
        }
        for(var i in data){
            if(data[i].iParentId != 0){
                try {
                    navs[idxs[data[i].iParentId]].subs.push(data[i]);
                } catch(e){}
            }
        }

        need(['util.template'], function (template) {
            $('#blk_nav').html(template.parseDOMTemplate('tmpl_nav').process(navs, 'list')).fadeIn();

            try {
                $curNavMenu = $('#blk_nav a[href="' + location.pathname + location.search + '"]');

                // 如果二级菜单单独设置为一级菜单的问题
                $curNavMenu.each(function () {
                   if(!$(this).hasClass('submenu-link')){
                       $curNavMenu = $(this);
                       return false;
                   }
                });

                if ($curNavMenu.attr('parentid')) {
                    $curNavMenu = $('#' + $curNavMenu.attr('parentid'));
                }

                $curNavMenu.addClass('click');
            } catch(e){}
        });
    }
    
    function logout() {
        need(['biz.login'], function (loginManager) {
            loginManager.logout(function () {
                window.location.reload();
            });
        });
    }

    function login() {
        need(['biz.login'], function (loginManager) {
            loginManager.login();
        });
    }
    
    function renderUserInfo(loginedCallback, unlonginCallback) {
        need(['biz.login'], function (loginManager) {
            loginManager.checkLogin(function () {
                $("#login_qq_span").html(loginManager.getUserUin());
                loginManager.getNickName(function (loginInfo) {
                    if (loginInfo.isLogin) {
                        $("#login_nickname_span").text(loginInfo.nickName);
                    }
                });
                loginManager.getUserFace(function (loginInfo) {
                    if (loginInfo.isLogin) {
                        $("#login_userFace_span").html(loginInfo.userFace);
                    }
                });

                loginedCallback && loginedCallback();
            }, function () {
                unlonginCallback && unlonginCallback();
            });
        });
    }

    //查询购物车信息
    function renderCartNum(){

        if($('#headerCartNum').length == 0) return false;

        var url = "http://apps.game.qq.com/daoju/v3/api/hs/plug_sw/cart/cart.php?";

        var params = {
            Act: 'list',
            _biz_code: bizCode,
            supplier_id: '',
            _output_var: 'CartGoodsList'
        };

        //alert(pars)
        $.getScript(url + $.param(params), function () {
            var rsp = window.CartGoodsList;

            if(rsp.result == 0 && rsp.data && rsp.data.list){
                var item, total = 0;
                for(var i in rsp.data.list){
                    item = rsp.data.list[i];
                    if(item.sales){
                        for(var j in item.sales){
                            total += parseInt(item.sales[j].iTotal);
                        }
                    } else{
                        total += parseInt(item.iTotal);
                    }

                }

                $('#headerCartNum').html(total);
            }
        });
    }

    function searchKeyWord(){
        var keyWord = $('#soinp').val();

        if(keyWord!='' && keyWord!='搜索你喜欢的英雄周边'){
            window.location.href="/list.shtml?keyword="+keyWord+'&CLICKTAG=lolriotmall.pc.index.search';
        }
    }


    /**
     * 渲染翻页
     */
    function renderPager(curPage, totalPage) {
        var page = {},
            $pageBlock = $('#blk_page_bar'),
            $pageBlockBottom = $('#blk_page_bar_bottom');

        if (totalPage < 2) {
            return $pageBlock.hide();
        }
        console.log(curPage, totalPage);
        page.total = totalPage;
        page.number = parseInt(curPage, 10);
        page.prev = Math.max(page.number - 1, 1);
        page.next = Math.min(page.number + 1, page.total);
        // 每次只显示各5个页码
        tmpPage = page.number >= 3 ? (page.total - page.number >= 3 ? page.number : page.total - 2) : 3;
        page.showFrom = Math.max((tmpPage - 2), 1);
        page.showTo = Math.min((tmpPage + 2), page.total);
        page.list = [];

        for (var i = page.showFrom; i <= page.showTo; i++) {
            page.list.push(i);
        }

        need(['util.template'], function (template) {

            $pageBlock.html(template.parseDOMTemplate('tmpl_page_bar').process(page, 'page')).fadeIn();

            if($pageBlockBottom.length > 0) $pageBlockBottom.html($pageBlock.html());
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
        var url = "http://apps.game.qq.com/daoju/v3/api/hs/plug_sw/cart/cart.php?";

        var params = {
            Act:'add',
            type:'add',
            biz_code:bizCode,
            mall_id: mall_id,
            mall_num:mall_num,
            _output_var: 'CartModel_addCart'
        };

        //alert(pars)
        $.getScript(url + $.param(params), function () {
            var rsp = window.CartModel_addCart;

            console.log('addCart', rsp);

            warning(rsp.result == 0 ? '已成功添加购物车！' : rsp.msg);
            callback && callback(rsp.result == 0, rsp);
        });
    }


    // 获取指定id的商品信息，id数组传入
    function ajaxGoodsByIds(goodsIds, callback) {

        var url =  'http://apps.game.qq.com/daoju/v3/zb/client/goods/GoodsApp.php?',
            params = {
                opt_type:'goods_list_by_ids',
                from:'lolriotmall-PC',
                biz: bizCode,
                mall_ids:goodsIds.join(','),
                page_size:100,
                page_no:1,
                plat:'pc',
                output_format:'jsonp'
            };

        $.getScript(url + $.param(params), function () {
            var rsp = window.ogoods_app;

            console.log('ajaxGoodsByIds', rsp);

            if (rsp.ret == 0) {
                if (rsp.data.total > 0) {
                    var result = {}, list = rsp.data.list;

                    $.each(list, function () {
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

    milo.ready(function () {
        if (!!milo.request('ADTAG')) { // 记录ADTAG，用于订单统计
            milo.cookie.set('ADTAG', milo.request('ADTAG'), 259200, location.host, "/");
        }

        // 微信登录给退出提示
        if(isWxLogin()) {
            wxLoginGuide();
        }

        bindEvents();
        renderNav();
        renderUserInfo(function () {
            renderCartNum();
        }, function () {
            // 个人中心，未登录，直接弹出登录框
            if(/\/user\//.test(location.href)){
                login();
            }
        });
    });



    

</script>
<!--右侧营销右侧营销QQend-->


<!--[if IE 6]>
<script src="/js/iepng.js" type="text/javascript"></script>
<script type="text/javascript"> EvPNG.fix('div,  ul, li, dl, dt, dd, img, input, h3, a, a:hover, span');</script>
<!ie6[endif]-->

<script type="text/javascript">
<!-- //平台、设备和操作系统-->
var system ={ 
    win : false, 
    mac : false, 
    xll : false 
}; 
//检测平台  
var p = navigator.platform; 
//alert(p); 
system.win = p.indexOf("Win") == 0; 
system.mac = p.indexOf("Mac") == 0; 
system.x11 = (p == "X11") || (p.indexOf("Linux") == 0); 
//跳转语句  
/*
if(!(system.win||system.mac||system.xll)){//转向后台登陆页面 
    window.location.href="http://lolriotmall.qq.com/wireless/index.html";
}
*/
</script>
<!--[if !IE]>腾讯上报点击流js<![endif]-->
<!-- <script src="http://pingjs.qq.com/tcss.ping.js"></script>
<script>
    if(typeof(pgvMain) == 'function')
        pgvMain();
</script>
 --><!--[if IE 6]>
<script src="http://gamevip.qq.com/act/public/DD_belatedPNG_0.0.8a-min.js" mce_src="DD_belatedPNG.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('.guide');
document.execCommand("BackgroundImageCache", false, true);
</script>
<![endif]-->
<script src="./js/basegoods.js" charset="utf-8"></script>
<script>
var ViewGoodsDetail = CommTool.extend(function(){}, ClassGoods);
ViewGoodsDetail = CommTool.extend(ViewGoodsDetail, ClassCollect);
ViewGoodsDetail = CommTool.extend(ViewGoodsDetail, ClassSelector);


ViewGoodsDetail.prototype.renderMain = function(){
	var defer = $.Deferred();
	var goodsId = CommTool.request('id');
	this.getGoodsInfo({
		mall_id: goodsId
	}).always(function(jsonGoods){
		need(['util.template'], function(template){
			console.log('renderMain',jsonGoods);
            customPing(jsonGoods.data.list.iCatId, jsonGoods.data.list.iMallId);
//			jsonGoods.now = util.getServerDateTime();
			if (jsonGoods.ret == 0 && jsonGoods.data && jsonGoods.data.list) {
				if (jsonGoods.now >= jsonGoods.data.list.dtPromoteStart && jsonGoods.now < jsonGoods.data.list.dtPromoteEnd) {
					jsonGoods.data.list._isDiscount = true;
					jsonGoods.data.list.iCurrPrice = jsonGoods.data.list.iPromotePrice;
					jsonGoods.data.list.iCurrPriceYuan = jsonGoods.data.list.iPromotePriceYuan;
					jsonGoods.data.list.iCurrVipPrice = jsonGoods.data.list.iVipPromotePrice;
					jsonGoods.data.list.iCurrVipPriceYuan = jsonGoods.data.list.iVipPromotePriceYuan;
					
				} else {
					jsonGoods.data.list._isDiscount = false;
					jsonGoods.data.list.iCurrPrice = jsonGoods.data.list.iPrice;
					jsonGoods.data.list.iCurrPriceYuan = jsonGoods.data.list.iPriceYuan;
					jsonGoods.data.list.iCurrVipPrice = jsonGoods.data.list.iVipPrice;
					jsonGoods.data.list.iCurrVipPriceYuan = jsonGoods.data.list.iVipPriceYuan;
				}
				jsonGoods.data.list.diffPrice = jsonGoods.data.list.iOriPrice - jsonGoods.data.list.iCurrPrice;
				jsonGoods.data.list.sProfileImg = jsonGoods.data.list.sProfileImg.replace(/\.jpg/, '.big.jpg');
				$.each(jsonGoods.data.list._imgData, function(k,v){
					jsonGoods.data.list._imgData[k] = v.replace(/\.jpg/, '.big.jpg');
				});
				jsonGoods.data.list._discountRate = parseInt((jsonGoods.data.list.iCurrPrice - jsonGoods.data.list.iOriPrice)/jsonGoods.data.list.iOriPrice *100);
				//jsonGoods.data.list._imgData[0] = 'https://euw.merch.riotgames.com/media/catalog/product/cache/41/image/9df78eab33525d08d6e5fb8d27136e95/m/s/msi_17_ecomm_1kx1k.png';
				jsonGoods.data.list._vipDiffPriceYuan = parseFloat((jsonGoods.data.list.iCurrPrice - jsonGoods.data.list.iCurrVipPrice) / 100).toFixed(2);
			}
			$("#blk_detail_main").html(template.parseDOMTemplate("tmpl_detail_main").process(jsonGoods, "json"));

			$('#num_detail_main_info_collect_num').html(parseInt(jsonGoods.data.list.iFavNum) + parseInt(CommTool.getLocalCollectGoods(goodsId) || 0));

			$('#blk_detail_main_img a').click(function(){
				return false;
			});
			$('#blk_detail_main_img a.close').click(function(){
				hideZoomPop();
				return false;
			});
			$('#btn_blk_detail_main_img_popup').click(function(){
				showZoomPop();
			});

			$.getScript('//js01.daoju.qq.com/zb/lolriotmall/pc/js/magiczoom.js', function(){
				//图片放大镜
				MagicZoom.options = {
					'zoom-width' : 570,
					'zoom-height' : 570,
					'zoom-position': 'inner',
					'smoothing-speed' : 80,
					'fps' : 30,
					'zoom-fade' : false,
					'selectors-mouseover-delay' : 20,
					'hint' : false,
					'zoom-window-effect' : 'false',
					'selectors-effect' : 'false',
					'show-title' : 'false',
					'click-to-activate' : 'true',
					'click-to-deactivate': 'true',
					'show-loading':false,
					'initializeOn':'click'
				}; 
				//切换图片路径
				$('.tab_menu li a').bind('click',function(){
					var selector = '#modal-image-'+$(this).data('seq');
					var src = $(selector).attr('rev');
					var href = $(selector).attr('href')
					$('#modal-image').attr('href',href)
					$('#modal-image img').attr('src',src);
					$('.inner-zoom img').attr('src',href);

					return false;
				});
				//弹窗中切换图片路径
				$('#product-modal #js-more-views li a').bind('click',function(){
					var selector = '#main-image-'+$(this).data('seq');
					var src = $(selector).attr('rev');
					var href = $(selector).attr('href')
					$('#main-image').attr('href',href)
					$('#main-image img').attr('src',src);
					$('.inner-zoom img').attr('src',href);

					return false;
				});
			});

			

			

			//显示放大弹窗
			window.showZoomPop=function(){
				$("#product-modal").show();
				return;
			}

			//关闭弹窗
			window.hideZoomPop=function(){
				$("#product-modal").hide();
				return;
			}

			$('body').off('click').on('click', function(e){
				var target = e.srcElement || e.target;
				if($(target).parents('#product-modal').length == 0){
					hideZoomPop();
				}
			});

			defer.resolve();
		});
	});
	return defer;
};
ViewGoodsDetail.prototype.renderSpec = function(){
	var thisObj = this;
	thisObj.getGoodsInfo({
		mall_id: CommTool.request('id')
	}).done(function(jsonGoods){
		console.log('renderSpec', CommTool.request('id'));
		var specObj = new ClassSpec(jsonGoods.data.related);
		var spec = specObj.getSpec(jsonGoods.data.list.iMallId);
		need(['util.template'], function(template){
			var is_show_chima = false;
			//console.log('renderSpec', jsonGoods, spec)
			$("#blk_detail_main_spec").html(template.parseDOMTemplate("tmpl_detail_main_spec").process(spec, "spec"));

			thisObj.getCategory().done(function(jsonCategory){
				var category = {};
				$.each(jsonCategory.data, function(){
					category[this.iCatId] = this;
				});
				var category_level_1_id = null;
				var recursion = function(catid, isLoop) {
					if (!category[catid]) {
						return false;
					}
					var cat = category[catid];
					if(cat.iParentId == 0){
						category_level_1_id = cat.iCatId;
					}else{
						recursion(cat.iParentId, true);
					}
				};
				recursion(jsonGoods.data.list.iCatId);

				if(category_level_1_id == 120){//男女服饰
					is_show_chima = true;
					$('#btn_detail_main_spec_size_popup').show();
					//尺码详情表
					$(".chim_biao").click(function(){
						$(".chima-pop").show();
						return;
					})

					//关闭尺码详情表
					$(".chima-pop-close").click(function(){
						$(".chima-pop").hide();
						return;
					})  
				}
			});
			$('#blk_detail_main_spec').off('click', 'li > a').on('click', 'li > a', function(){
				if ($(this).hasClass('disable')) {
					return;
				}
				var selectedAttr = [];
				if ($(this).hasClass('click ')) { //取消选中
					$(this).removeClass('click');
				} else { //选中商品属性
					selectedAttr.push($(this).html().trim());
				}
				$(this).parents('.xiangq_wen').siblings().each(function() {
					var attrValue = $.trim($(this).find('li > a.click').html());
					attrValue && selectedAttr.push(attrValue);
				});
				var otherGoodId = specObj.getGoodByAttr(selectedAttr);
				if (otherGoodId && otherGoodId != jsonGoods.data.list.iMallId) {
					window.location = 'detail.shtml?id=' + otherGoodId;
				} else {
					$("#blk_detail_main_spec").html(template.parseDOMTemplate("tmpl_detail_main_spec").process(specObj.getSpec(selectedAttr), "spec"));
					is_show_chima && $('#btn_detail_main_spec_size_popup').show();
				}
			});

		});
	}).fail(function(){
		console.log('renderSpec.fail');
	});
};
ViewGoodsDetail.prototype.renderBtn = function(){
	var thisObj = this;
	var deferRenderBtn = $.Deferred();
	var goodsId = CommTool.request('id');
	var deferGoods = this.getGoodsInfo({
		mall_id: goodsId
	});
	var deferLimit = this.getLimitInfo({
		propid: goodsId
	});
console.log('renderBtn',deferGoods.state(),deferLimit.state());
	$.when(deferGoods, deferLimit).done(function(jsonGoods, jsonLimit){
		jsonLimit.list || (jsonLimit.list = [{}]);
		var limitUsed = jsonLimit.list[0].used || 0;
		var limitFreeze = jsonLimit.list[0].freeze || 0;
		jsonGoods.data.list.stockNum = parseInt(jsonGoods.data.list.iMallQty - limitUsed - limitFreeze) || 0;
		jsonGoods.data.list.stockNum = Math.max(0, jsonGoods.data.list.stockNum);
		need(['util.template'], function(template){
			$("#blk_detail_main_btn").html(template.parseDOMTemplate("tmpl_detail_main_btn").process(jsonGoods, "json"));

			$('#blk_detail_main').on('blur', '.inpt_detail_main_buy_num', function() { //购买数量输入框
				$this = $(this);
				var num = parseInt($this.val()) || 1;
				var stock_num = $this.attr('stock_num');
				var limit_num = $this.attr('limit_num');


				if (stock_num <= 0) {
					CommTool.alert('此商品已售完！');
				} else if (num > stock_num) {
					CommTool.alert('此商品库存只有' + stock_num + '个！');
				} else if (limit_num > 0 && num > limit_num) {
					CommTool.alert('此商品限量单次仅能购买' + limit_num + '个！');
				} else {

				}

				num = Math.min(num, stock_num);
				num = limit_num > 0 ? Math.min(num, limit_num) : num;
				num = Math.max(num, 1);
				$this.val(num);

			});
			$('#blk_detail_main').on('click', '.btn_detail_main_buy_min', function() { //减少购买数量
				var $inpt = $('#blk_detail_main_btn .inpt_detail_main_buy_num');
				$inpt.val(parseInt($inpt.val()) - 1);
				$inpt.trigger('blur');
			});
			$('#blk_detail_main').on('click', '.btn_detail_main_buy_plus', function() { //增加购买数量
				var $inpt = $('#blk_detail_main_btn .inpt_detail_main_buy_num');
				$inpt.val(parseInt($inpt.val()) + 1);
				$inpt.trigger('blur');
			});
			
			$('#btn_detail_cart_add').click(function() { //加入购物车
				need(['daoju.zb.model.cart'], function(cartModel) {
					cartModel.add({
						biz_code: CommTool.biz,
						mall_id: CommTool.request('id'),
						mall_num: $('#blk_detail_main .inpt_detail_main_buy_num').val()
					}, function(addJson) {
						if(addJson.result == 0){
							$('.jiatit').show();
							renderCartNum();
						}else{
							CommTool.alert(addJson.msg);
						}

					});
				});
			});
			$('#btn_detail_cart_buy').click(function() { //立即购买
				need(['daoju.zb.model.cart'], function(cart) {
					cart.add({
						'type': 'update',
						biz_code: CommTool.biz,
						mall_id: CommTool.request('id'),
						mall_num: $('#blk_detail_main .inpt_detail_main_buy_num').val()
					}, function(addJson) {
						if(addJson.result == 0){
							var option = {
								Act: 'list',
								biz_code: CommTool.biz,
								supplier_id: '',
								_biz_code: '',
								_output_var: 'CartModel_listCart'
							};
							var url = 'http://apps.game.qq.com/daoju/v3/api/hs/plug_sw/cart/cart.php?'+$.param(option);
							CommTool.getScriptForPromise(url, option._output_var, 'result').done(function(cartJson){
								var cartIds = [];
								var goodsIds = CommTool.request('id');
								$.each(cartJson.data.list, function(){
									this.sGoodsId == goodsIds && cartIds.push(this.iCartId);
								});
								window.location = 'payment.shtml?cartids=' + cartIds.join(',');
							}).fail(function(){
								CommTool.alert('抱歉, 网络繁忙请稍后再试！');
							});
						}else{
							CommTool.alert(addJson.msg);
						}
						
					});
				});
			});

			 //tab切换
			$("#blk_detail_tab .shownav li").click(function(){
				$(this).addClass("hedhover").siblings().removeClass("hedhover");
				$("#ware_desc .detail-page").eq($(this).index()).show().siblings().hide();
				return;
			})

			deferRenderBtn.resolve();
		});
	});
	return deferRenderBtn;
};

ViewGoodsDetail.prototype.renderCrums = function(){//面包屑
	var thisObj = this;
	var goodsId = CommTool.request('id');
	var deferGoods = this.getGoodsInfo({
		mall_id: goodsId
	});
	var deferCategory = this.getCategory();
	
	$.when(deferGoods,deferCategory).done(function(jsonGoods, jsonCategory){
		var crums = [];
		var category = {};
		jsonCategory.data || (jsonCategory.data={});
		$.each(jsonCategory.data, function(){
			category[this.iCatId] = this;
		});
		var recursion = function(catid, isLoop) {
			if (!category[catid]) {
				return false;
			}
			var cat = category[catid];
			crums.push({
				url: 'list.shtml?catid='+cat.iCatId,
				name: cat.sCatName
			});
			cat.iParentId != 0 && recursion(cat.iParentId, true);
			isLoop || crums.reverse();
		};
		recursion(jsonGoods.data.list.iCatId);
		crums.push({
			url: '',
			name: jsonGoods.data.list.sMallName
		});
		need(['util.template'], function(template){
			$("#blk_detail_crumbs").html(template.parseDOMTemplate("tmpl_detail_crumbs").process(crums, "data")); 
		});
	});
};

ViewGoodsDetail.prototype.renderBundle = function(){//组合购买
	var thisObj = this;
	var goodsId = CommTool.request('id');
	this.getGoodsInfo({
		mall_id: goodsId
	}).done(function(jsonGoods){
		jsonGoods.salesInfo = {};
		jsonGoods.salesInfo.totalPrice = 0;
		jsonGoods.salesInfo.diffPrice = 0;
		jsonGoods.salesInfo.orgPrice = 0;
		
		jsonGoods.data.sales && $.each(jsonGoods.data.sales, function(){
			this.iSalePriceYuan = CommTool.fen2yuan(this.iSalePrice);
			jsonGoods.salesInfo.totalPrice += parseInt(this.iSalePrice);
			jsonGoods.salesInfo.orgPrice += parseInt(this.iPrice);
		});
		jsonGoods.salesInfo.diffPrice = jsonGoods.salesInfo.orgPrice - jsonGoods.salesInfo.totalPrice;
		jsonGoods.salesInfo.totalPriceYuan = CommTool.fen2yuan(jsonGoods.salesInfo.totalPrice);
		jsonGoods.salesInfo.diffPriceYuan = CommTool.fen2yuan(jsonGoods.salesInfo.diffPrice);
		jsonGoods.salesInfo.orgPriceYuan = CommTool.fen2yuan(jsonGoods.salesInfo.orgPrice);
		need(['util.template'], function(template){
			var specFunc = function(spec){
				$.each(spec, function(){
					var selectedAttr = {};
					this.list && $.each(this.list, function(){
						this.selected && (selectedAttr = this);
					});
					this.selectedAttr = selectedAttr;
				});

				return spec;
			}

			var getMallStr = function(successFunc){
				var saleId = 0;
				var mallIdArr = [];
				var $box = $('#blk_detail_bundle .group-goodbox');
				$box.each(function(){
					$this = $(this);
					//saleId = $(this).attr('saleid');
					
					popupSku($(this)).done(function(){
						var goodsId = $this.attr('sku_goodid');
						goodsId && mallIdArr.push(goodsId);
						if(mallIdArr.length == $box.length){
							successFunc(mallIdArr.join(','));
						}
					}).fail(function(){
						CommTool.alert('抱歉, 网络繁忙请稍后再试！');
					});
				});
			};

			var popupSku = function($boxObj){
				if(!$boxObj.is('.group-goodbox')){
					window.console && window.console.log('renderBundle.popupSku: param $boxObj is not .group-goodbox');
					return false;
				}
				var defer = $.Deferred();
				var goodsId = $boxObj.attr('mallid');
				thisObj.getGoodsInfo({mall_id: goodsId}).done(function(jsonBundleGoods){
					var specObj = $boxObj.data('specObj');
					var spec = $boxObj.data('spec');
					if(!specObj || !spec){
						specObj = new ClassSpec(jsonBundleGoods.data.related);
						spec = specObj.getSpec();//jsonBundleGoods.data.list.iMallId
						$boxObj.data('specObj', specObj);
						$boxObj.data('spec', spec);
						$boxObj.data('jsonGoods', jsonBundleGoods);
					}
console.log('mouseenter .group-goodbox ',jsonBundleGoods,specObj);
console.log('specObj.skuLen',specObj.skuLen,$.isEmptyObject(spec),spec);
					if(specObj.skuLen <= 1 || !spec || $.isEmptyObject(spec)){//只有一个sku,不需要选择sku
						$boxObj.attr('sku_goodid', goodsId);
						$boxObj.find('.group-actbox').remove();
					}else{
						spec = specFunc(spec);
						$boxObj.find('.group-actbox').show();
						$boxObj.find(".blk_detail_bundle_spec").html(template.parseDOMTemplate("tmpl_detail_bundle_spec").process(spec, "spec"));
					}
					defer.resolve();
				}).fail(function(){
					defer.reject();
				});
				return defer;
			}

			$("#blk_detail_bundle").html(template.parseDOMTemplate("tmpl_detail_bundle").process(jsonGoods, "json"));
			$('#blk_detail_bundle').off('mouseenter', '.group-goodbox').on('mouseenter', '.group-goodbox', function(){
				var $this = $(this);
				popupSku($this);
			}).off('mouseleave', '.group-goodbox').on('mouseleave', '.group-goodbox', function(){
				$(this).find('.group-actbox').hide();
			});
			
			$('#blk_detail_bundle').off('click', '.mrselect').on('click', '.mrselect', function(){
				$(this).find('.downlist').toggle();
			});
			$('#blk_detail_bundle').off('click', '.downlist > ul > li').on('click', '.downlist > ul > li', function(){
				$box = $(this).parents('.group-goodbox');
				var specObj = $box.data('specObj');
				var selectedAttr = [];
				//var attrid = $(this).attr('attrid');
				var attrname = $(this).html().trim();
				attrname && (selectedAttr.push(attrname));
				$(this).parents('.sel-group').siblings('.sel-group').each(function(){
					//var other_attrid = $(this).find('span.selected').attr('attrid');
					var other_attrname = $(this).find('span.selected').html().trim();
					other_attrname && (selectedAttr.push(other_attrname));
				});
				
				var goodid = specObj.getGoodByAttr(selectedAttr);
				console.log('click downlist > ul > li  goodid', goodid);
				if(goodid){
					$box.attr('sku_goodid',goodid);
					var spec = specObj.getSpec(goodid);
				}else{
					$box.attr('sku_goodid', '');
					var spec = specObj.getSpec(selectedAttr);
				}
				spec = specFunc(spec);
				console.log('click downlist > ul > li  spec', spec,selectedAttr);
				$box.data('spec',spec);
				$box.find(".blk_detail_bundle_spec").html(template.parseDOMTemplate("tmpl_detail_bundle_spec").process(spec, "spec"));
			});
			$('#blk_detail_bundle').off('click', '.bnt_detail_bundle_spec_submit').on('click', '.bnt_detail_bundle_spec_submit', function(){
				$box = $(this).parents('.group-goodbox');
				var goodsId = $box.attr('sku_goodid');
				if(goodsId){
					$box.find('.group-actbox').hide();
				}
			});
			
			$('#btn_detail_bundle_addcart').click(function(){//加入购物车
				getMallStr(function(mallStr){
					need(['daoju.zb.model.cart'], function(cartModel) {
						cartModel.add({
							biz_code: CommTool.biz,
							mall_id: mallStr,
							mall_num: 1
						}, function(addJson) {
							if(addJson.result == 0){
								$('.group-jiatit').show();
								renderCartNum();
							}else{
								CommTool.alert(addJson.msg);
							}

						});
					});
				});
			});
			$('#btn_detail_bundle_buy').click(function(){//立即购买
				getMallStr(function(mallStr){
					need(['daoju.zb.model.cart'], function(cartModel) {
						cartModel.add({
							type:'update',
							biz_code: CommTool.biz,
							mall_id: mallStr,
							mall_num: 1
						}, function(addJson) {
							if(addJson.result == 0){
								var option = {
									Act: 'list',
									biz_code: CommTool.biz,
									supplier_id: '',
									_biz_code: '',
									_output_var: 'CartModel_listCart'
								};
								var url = 'http://apps.game.qq.com/daoju/v3/api/hs/plug_sw/cart/cart.php?'+$.param(option);
								CommTool.getScriptForPromise(url, option._output_var, 'result').done(function(cartJson){
									var cartIds = [];
									var mallIds = mallStr.split(',');
									$.each(cartJson.data.list, function(){
										$.inArray(this.sGoodsId, mallIds)>=0 && cartIds.push(this.iCartId);
									});
									window.location = 'payment.shtml?cartids=' + cartIds.join(',');
								}).fail(function(){
									CommTool.alert('抱歉, 网络繁忙请稍后再试！');
								});
								
							}else{
								CommTool.alert(addJson.msg);
							}

						});
					});
				});
			});

		});
	});
};
ViewGoodsDetail.prototype.popupBundleSpec = function(){//组合购买sku选择器
	
}

ViewGoodsDetail.prototype.renderDetail = function(){
	var thisObj = this;
	var goodsId = CommTool.request('id');
	var deferGoods = this.getGoodsInfo({
		mall_id: goodsId
	});
	var deferSupplier = this.supplierInfo();
	
	$.when(deferGoods, deferSupplier).done(function(jsonGoods, dataSupplier){
		jsonGoods.data.list.dtLastUpdate_date = jsonGoods.data.list.dtLastUpdate.split(' ')[0];
		jsonGoods.data.list.supplier = dataSupplier[jsonGoods.data.list.iSuppliersId];
		
		need(['util.template'], function(template){
			$("#blk_detail_tab_desc").html(template.parseDOMTemplate("tmpl_detail_tab_desc").process(jsonGoods, "json")); //商品详情
			$("#blk_detail_tab_desc img").each(function() { //校正图片尺寸
				$(this).load(function() {
					var w = $(this).width();
					w > 1280 && $(this).width('1280');
				});
			});
			//$("#blk_detail_tab_supplier").html(template.parseDOMTemplate("tmpl_detail_tab_supplier").process(jsonGoods, "json")); //供应商详情
		});
	});
};
ViewGoodsDetail.prototype.renderComment = function(option){
	var thisObj = this;
	option = $.extend({
		iGoodsId: CommTool.request('id')
	},option);
	this.getCommentList(option).always(function(jsonComment){
		console.log('renderComment', jsonComment);
		need(['util.template','util.jquery.page'], function(template){
			if(jsonComment.result == 0 && jsonComment.data && jsonComment.data.list){
				$.each(jsonComment.data.list, function() {
					this.sTagNameArr = this.sTagName ? this.sTagName.split(',') : [];
				});
				$('#num_detail_main_info_comment_num').html(jsonComment.data.total);
				$('#blk_detail_tab .shownav2 span').html(jsonComment.data.total);
			}
			console.log('jsonComment',jsonComment);
			$("#blk_detail_tab_comment").html(template.parseDOMTemplate("tmpl_detail_tab_comment").process(jsonComment, "json")); //商品详情


			$("#page_detail_tab_comment").empty();
			if(jsonComment.data.total == 0){
				$("#page_detail_tab_comment").hide();
			}else{
				$("#page_detail_tab_comment").show();
			}
			$("#page_detail_tab_comment").jpage({
				total_num : jsonComment.data.total,
				url : '',
				pn_key : 'page_num',
				ps_key : 'page_size',
				page_size : thisObj.commentListOption.ps,
				do_default : false,
				first : "",
				last : "",
				prev : "上一页",
				next : "下一页",
				item_container:"<span>",
				curr_num : thisObj.commentListOption.p,
				on_class : "current",
				clickEvent : function(obj) {
					var option = {};
					option.p = $(obj).attr("page");
					thisObj.renderComment(option);
				}
			});
		});
	});
};
ViewGoodsDetail.prototype.renderLike = function(option){
	var thisObj = this;
	var goodsId = CommTool.request('id');
	
	var deferCollect = thisObj.getCollectList({
		goodid: goodsId
	}).done(function(jsonCollect){
		console.log('renderLike', jsonCollect);
		var mapCollect = {};
		$.each(jsonCollect.data.list, function(){
			mapCollect[this.iGoodsId] = this;
		});

		if(mapCollect[goodsId]){
			$('#blk_detail_main_btn .likebox a').eq(1).show().siblings().hide();
		}else{
			$('#blk_detail_main_btn .likebox a').eq(0).show().siblings().hide();
		}
	}).fail(function(){
		$('#blk_detail_main_btn .likebox a').eq(0).show().siblings().hide();
	});
	var deferGoods = thisObj.getGoodsInfo({
		mall_id: goodsId
	}).done(function(jsonGoods){
		$('#blk_detail_main_btn').off('click', '.likebox a').on('click', '.likebox a', function(){//收藏
			var $this = $(this);
			need(['biz.login'], function(login){
				login.checkLogin(function(){
					var goodsName = jsonGoods.data.list.sMallName;
					var price = jsonGoods.data.list.iPrice;
					var goodpic = jsonGoods.data.list.sProfileImg;
					if($this.hasClass('liked')){
						thisObj.cancelCollect(goodsId).done(function(){
							CommTool.alert('您已成功取消收藏！');
							CommTool.setLocalCollectGoods(goodsId, 0);

							$('#num_detail_main_info_collect_num').html(parseInt(jsonGoods.data.list.iFavNum) + parseInt(CommTool.getLocalCollectGoods(goodsId) || 0));
							$('#blk_detail_main_btn .likebox a').eq(0).show().siblings().hide();
						}).fail(function(jsonCollect){
							CommTool.alert(jsonCollect.msg);
						});
					}else{
						thisObj.addCollect({
							goodid: goodsId,
							goodname: goodsName,
							price: price,
							goodpic: goodpic
						}).done(function(){
							CommTool.alert('您已成功添加收藏！');
							$('#blk_detail_main_btn .likebox a').eq(1).show().siblings().hide();
							CommTool.setLocalCollectGoods(goodsId, 1);
							$('#num_detail_main_info_collect_num').html(parseInt(jsonGoods.data.list.iFavNum) + parseInt(CommTool.getLocalCollectGoods(goodsId) || 0));
						}).fail(function(jsonCollect){
							CommTool.alert(jsonCollect.msg);
						});
					}
				},function(){
					login.login();
				});
			});
			
		});
	});
	
};







var goodsDetail = new ViewGoodsDetail;
var goodsCollect = new ClassCollect;
goodsDetail.renderMain().done(function(){
	goodsDetail.renderSpec();
	goodsDetail.renderBtn().done(function(){
		goodsDetail.renderLike();
	});
	goodsDetail.renderComment();
	
	
	
});
goodsDetail.renderCrums();
goodsDetail.renderBundle();
goodsDetail.renderDetail();


// 自定义上报
function customPing(catId, goodsId) {
    try {
        window.pingOptions.catid = catId;
        window.pingOptions.propid = goodsId;

        need(["daoju.ping"], function (ping) {
            ping.report(window.pingOptions);
        });
    } catch(e){}
}

</script>
<script language="javascript">
    milo.ready(function () {

        window.pingOptions = {'biz': 'lolriotmall','appid': 1005, 'area':2, 'ec':milo.request('ADTAG') || milo.request('CLICKTAG')};

        if(!window.customPing) { // �е�ҳ��Ҫ��������ͳ�Ʋ���
            need(["daoju.ping"],function(ping){
                ping.report(window.pingOptions);
            });
        }
    });
</script>
<script type="text/javascript" src="./js/stats.js" charset="UTF-8"></script><!-- ��Ѷ����--PCר�� -->

<!--企业QQ-->
<script language="javascript">
    milo.ready(function () {
        setTimeout(function () {
            milo.loader.loadScript('http://wpa.b.qq.com/cgi/wpa.php', function () {
                BizQQWPA.addCustom({aty: '2', a: '2', nameAccount: 800016781, selector: 'qq_qian'});
                BizQQWPA.addCustom({aty: '2', a: '4', nameAccount: 800053395, selector: 'qq_hou'});
                BizQQWPA.addCustom({aty: '2', a: '2', nameAccount: 800016781, selector: 'qq_qianfw'});
                BizQQWPA.addCustom({aty: '2', a: '4', nameAccount: 800016781, selector: 'qq_houfw'});
                BizQQWPA.addCustom({aty: '2', a: '2', nameAccount: 800016781, selector: 'qq_qianhelp'});
                BizQQWPA.addCustom({aty: '2', a: '4', nameAccount: 800016781, selector: 'qq_houhelp'});
            });
        },1500)
    });
</script>
<!--企业QQ end-->
</body>
</html>