<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!--收获地址列表-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta content="英雄联盟,LOL,英雄联盟周边商城, 英雄联盟周边,英雄联盟商城, 英雄周边,英雄联盟手办,英雄联盟毛绒,英雄联盟公仔,英雄联盟海报,英雄联盟连帽衫,英雄联盟鼠标垫,LOL周边商城, LOL周边,LOL商城,LOL手办,LOL毛绒,LOL公仔,LOL海报,LOL连帽衫,LOL鼠标垫,卡牌大师,吉格斯手办,盖伦手办,金克丝手办,娜美手办,卡特琳娜手办,锤石,提莫帽子,英雄原型,男女服饰,海报艺术,手办毛绒,LOL,法师,刺客,坦克,射手,辅助,游戏周边,周边商城,游戏周边商城,腾讯周边商城腾讯互动娱乐周边商城"
          name="Keywords">
    <meta name="description"
          content="英雄联盟周边商城--打造你的英雄联盟生活方式！这是英雄联盟游戏团队服务于玩家，给到玩家更多更优质体验的地方，我们根据玩家喜爱的英雄原型，设计并制作很多好玩的实物周边，让英雄联盟走入你的生活，而不仅仅在电脑前。英雄联盟周边商城由腾讯公司搭建并服务于玩家，深圳市合泰文化发展有限公司为周边商城提供客服及物流等服务支持。"/>
    <title>英雄联盟周边商城-用户中心</title>
    <link rel="icon" href="./images/favicon.ico" type="image/x-icon"/>
    <link href="./css/usabase.css" rel="stylesheet" type="text/css">
    <!--[if !IE]>共用样式表<![endif]-->
    <link href="./css/member.css" rel="stylesheet" type="text/css">
    <!--[if !IE]>共用样式表<![endif]-->
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
                    <img src="http://ossweb-img.qq.com/images/daojushop/zb/navigation/201706/20170622170047_844267.jpg" width="81" height="81" alt="雕塑手办">
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
                    <img src="http://ossweb-img.qq.com/images/daojushop/zb/navigation/201706/20170622162123_179921.png" width="81" height="81" alt="毛绒玩偶">
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
                    <img src="http://ossweb-img.qq.com/images/daojushop/zb/navigation/201706/20170622165956_696740.jpg" width="81" height="81" alt="男女服饰">
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
                    <img src="http://ossweb-img.qq.com/images/daojushop/zb/navigation/201706/20170622170007_999128.jpg" width="81" height="81" alt="海报艺术">
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
                    <img src="http://ossweb-img.qq.com/images/daojushop/zb/navigation/201706/20170628162725_524866.jpg" width="81" height="81" alt="LPL队服">
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
                    <img src="http://ossweb-img.qq.com/images/daojushop/zb/navigation/201706/20170626164713_396902.jpg" width="81" height="81" alt="更多">
                </a>
            </div>
        </li>
    </ul>
    <script id="tmpl_nav" type="text/html">
        {if list && list.length}
        {for item in list}
        <li class="menu_zhongli" >
            <a id="menu_${item.iSeqId}" href="${item.sUrl}{if item.sUrl.indexOf('?') == -1 }?{else}&{/if}CLICKTAG=lolriotmall.pc.index.nav${item.iSeqId}">${item.sName}</a>
            <i class="menu-ico{if item.iTag == 1} ico-hot{elseif item.iTag == 2} ico-new{/if}"></i>
            {if item.subs && item.subs.length}
            <div class="submenu clearfix">
                <ul class="fl submenu-list">
                    {for subItem in item.subs}
                    <li>
                        <a href="${subItem.sUrl}{if subItem.sUrl.indexOf('?') > -1 }&{/if}CLICKTAG=lolriotmall.pc.index.nav${item.iSeqId}_subNav${subItem.iSeqId}" class="submenu-link" parentid="menu_${item.iSeqId}">${subItem.sName}</a>
                    </li>
                    {/for}
                </ul>
                <a class="fr subm-img" href="${item.sUrl}{if item.sUrl.indexOf('?') > -1 }&{/if}CLICKTAG=lolriotmall.pc.index.nav${item.iSeqId}_navIcon${item.iSeqId}">
                    <img src="${item.sIcon}" width="81" height="81" alt="${item.sName}">
                </a>
            </div>
            {/if}
        </li>
        {/for}
        {/if}
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
<div style="width: 100px;height: 100px; display: none;">
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
<!--[if !IE]>中部主体<![endif]-->
<div class="mainbar member w980 clearf">
    <div class="memtop"></div>
    <div class="memmain clearf">
        <!--[if !IE]>左侧导航<![endif]-->
<div class="memleft" id="categoryAddress">
    <ul>
        <li><a href="/cart.shtml">我的购物车</a></li>
        <li id="myOrder"><a href="/user/orderlist.shtml">我的订单</a></li>
        <li id="myFavor"><a href="/user/favorlist.shtml">商品收藏</a></li>
        <li id="myCoupou"><a href="/user/couponlist.shtml">福利中心</a></li>
        <!--<li id="myLottery"><a href="/user/lotteryList.do">抽奖信息</a></li>-->
        <li id="myAddress"><a href="/user/addresslist.shtml">收货地址</a></li>
        <li id="myUserInfo"><a href="/user/userinfo.shtml">个人资料</a></li>
        <!--<li id="myWareSequence"><a href="/user/userWareSequenceInfo.html">幸运数字</a></li>-->
        <!--<li id="myLottery"><a href="/user/userLotteryInfo.html">中奖信息</a></li>-->
        <li id="myNotice"><a href="/user/noticelist.shtml">官方公告</a></li>
        <!--<li id="myMessageInfo"><a href="/user/messageInfoList.do">短消息</a></li>-->
    </ul>
</div>
        <!--[if !IE]>右侧<![endif]-->
        <div class="memright clearf">
            <div class="memtabbar" id="main">
                <table width="100%" baddress="0" cellspacing="0" cellpadding="0" class="mermtab">
                    <thead>
                    <tr>
                        <th width="130" class="wcenter">姓名</th>
                        <th width="400" class="wcenter">地址</th>
                        <th width="150" class="wcenter">联系电话</th>
                        <th width="130" class="wcenter">是否默认</th>
                        <th width="130" class="wcenter">操作</th>
                    </tr>
                    </thead>
                    <tbody id="blk_address_list"></tbody>
                    <script id="tmpl_address_list" type="text/html">
                        {if list && list.length}
                        {for item in list}
                        <tr>
                            <td height="40" class="wcenter">${item.name}</td>
                            <td>
                                <span class="c333 f12">${item.region}${item.detail} </span>
                            </td>
                            <td class="wcenter c666">
                                ${item.mobile}
                            </td>
                            <td class="wcenter2">
			    	<span class="c999">
			    		{if item.default}是{else}否{/if}
			    	</span>
                            </td>
                            <td class="wcenter2">
                                <a href="javascript:editAddress(${item.id});" class="pr10">修改</a>
                                <a href="javascript:deleteAddress(${item.id});">删除</a>
                            </td>
                        </tr>
                        {/for}
                        {/if}
                    </script>
                </table>
                <div id="addForm">
                    <form id="addAddressForm">
                        <input type="hidden" id="addrId" value=""/>
                        <table baddress="0" cellspacing="0" cellpadding="0" class="memtab">
                            <tbody>
                            <tr>
                                <th colspan="2"><span id="addText">新增</span><span id="editText" style="display: none;">编辑</span>收货地址</th>
                            </tr>
                            <tr>
                                <td width="200" class="right"><font class="cfb6">*</font> 收货人：</td>
                                <td width="740"><input id="receiptor" name="name" type="text"
                                                       class="gew_inp inpw120" size="15" maxlength="20"
                                                       onkeyup="value=value.replace(/[^\u4E00-\u9FA5^a-z^A-Z^0-9]/g,'')"
                                                       onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\u4E00-\u9FA5^a-z^A-Z^0-9]/g,''))">
                                    <span style="color:red;display:none" id="receiptorPrompt" class="pl5 c999">格式不正确,收货人只能包含中文、字母和数字!</span>
                                </td>
                            </tr>
                            <tr>
                                <td width="200" class="right"><font class="cfb6">*</font> 选择地区：</td>
                                <td width="740">
                                    <select id="a_province" name="province" onchange="changeCityList()">
                                        <option value="请选择">请选择</option>
                                        <option value="北京">北京</option>
                                        <option value="天津">天津</option>
                                        <option value="上海">上海</option>
                                        <option value="重庆">重庆</option>
                                        <option value="河北">河北</option>
                                        <option value="山西">山西</option>
                                        <option value="内蒙古">内蒙古</option>
                                        <option value="辽宁">辽宁</option>
                                        <option value="吉林">吉林</option>
                                        <option value="黑龙江">黑龙江</option>
                                        <option value="江苏">江苏</option>
                                        <option value="浙江">浙江</option>
                                        <option value="安徽">安徽</option>
                                        <option value="福建">福建</option>
                                        <option value="江西">江西</option>
                                        <option value="山东">山东</option>
                                        <option value="河南">河南</option>
                                        <option value="湖北">湖北</option>
                                        <option value="湖南">湖南</option>
                                        <option value="广东">广东</option>
                                        <option value="广西">广西</option>
                                        <option value="海南">海南</option>
                                        <option value="四川">四川</option>
                                        <option value="贵州">贵州</option>
                                        <option value="云南">云南</option>
                                        <option value="西藏">西藏</option>
                                        <option value="陕西">陕西</option>
                                        <option value="甘肃">甘肃</option>
                                        <option value="青海">青海</option>
                                        <option value="宁夏">宁夏</option>
                                        <option value="新疆">新疆</option>
                                    </select>&nbsp;&nbsp;&nbsp;
                                    <select id="a_city" name="city">
                                        <option value="请选择">请选择</option>
                                    </select>&nbsp;&nbsp;&nbsp;
                                    <select id="a_county" name="district">
                                        <option value="请选择">请选择</option>
                                    </select>
                                    <span style="color:red;display:none" id="provincePrompt"
                                          class="pl5 c999">省份不能为空!</span>
                                    <span style="color:red;display:none" id="cityPrompt" class="pl5 c999">城市不能为空!</span>
                                    <span style="color:red;display:none" id="districtPrompt"
                                          class="pl5 c999">区或县不能为空!</span>
                                </td>
                            </tr>

                            <tr>
                                <td width="200" class="right"><font class="cfb6">*</font> 详细地址：</td>
                                <td width="740"><input id="address" name="detail" type="text" class="gew_inp inpw120"
                                                       size="15" maxlength="40">&nbsp;&nbsp;&nbsp;<span class="c999">(请填写详细的路名或街道地址，确保准确送达)</span>
                                    <span style="color:red;display:none" id="addressPrompt"
                                          class="pl5 c999">请填写正确的收货地址!</span>
                                </td>
                            </tr>
                            <tr>
                                <td width="200" class="right"><font class="cfb6">*</font> 电话：</td>
                                <td width="740"><input id="phone_part1" type="text" class="gew_inp inpw50"> - <input
                                        id="phone_part2" type="text" class="gew_inp inpw100"></td>
                                <input type="hidden" id="telephone" name="tel">
                            </tr>
                            <tr>
                                <td width="200" valign="top" class="right"><span class="lh24"><font
                                        class="cfb6">*</font> 手机：</span></td>
                                <td width="740"><input name="mobile" id="mobile" type="text" class="gew_inp inpw120 mb5"
                                                       size="15">
                                    <span style="color:red;display:none" id="mobliePrompt" class="pl5 c999">(手机，电话至少填写一项)</span>
                                    <br>
                                    <img src="http://js01.daoju.qq.com/zb/lolriotmall/pc/images/member/mobile.jpg" style="vertical-align:middle"><span
                                            class="cfb6 pl5">手机/电话是为了联系收货人，至少需填写一项！</span></td>
                            </tr>
                            <tr>
                                <td width="200" class="right">邮政编码：</td>
                                <td width="740"><input id="postCode" name="zip" type="text" class="gew_inp inpw120"
                                                       size="15">
                                    <span style="color:red;display:none" id="postCodePrompt"
                                          class="pl5 c999">邮政编码格式不正确</span>
                                </td>
                            </tr>

                            <tr>
                                <td width="200" class="right">默认收货：</td>
                                <td width="740">
                                    <select id="isDefault" name="isDefault">
                                        <option value="0">否</option>
                                        <option value="1">是</option>
                                    </select>
                                </td>
                            </tr>

                            <tr>
                                <td width="200" class="right">&nbsp;</td>
                                <td width="740" height="60"><a href="javascript:addAddress();" class="gew_btn">保存地址</a>
                                </td>
                            </tr>

                            </tbody>
                        </table>
                    </form>
                </div>
                <div class="meuad" id="userAd">
                </div>


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
</body>
<script type="text/javascript" src="./js/area.js"></script>
<script type="text/javascript">

    var url = "http://apps.game.qq.com/daoju/v3/api/user/info/address.php?";

    var pageSize = 100;  // 每页显示条数

    // 公用参数
    var commonParams = {
        ret_key: 'ret',
        jsonp_name: 'address_info',
        bizcode: bizCode
    }
    // 地址列表缓存，编辑时用
    var addressList = null;

    /**
     * 获取订单列表
     *  @param status 订单状态
     *  @param page 页码
     */
    function ajaxAddressRecord(page) {

        var params = $.extend({
            pn: typeof page == 'undefined' ? 1 : page,
            ps: pageSize
        }, commonParams);

        //alert(pars)
        $.getScript(url + $.param(params), function () {
            var rsp = window.address_info;

            console.log('addressList', rsp);

            need(['util.template'], function (template) {
                if (rsp.ret == 0) {
                    if (rsp.data.length > 0) {
                        window.addressList = rsp.data[0].sShipAddress;

                        $('#blk_address_list').html(template.parseDOMTemplate('tmpl_address_list').process(rsp.data[0].sShipAddress, 'list')).fadeIn();
                        renderPager(page, Math.ceil(rsp.data.length / pageSize));
                    } else {
                        $('#blk_address_list').html(template.parseDOMTemplate('tmpl_address_error').process({msg: '暂无收货地址！请在下面添加'}, 'data')).fadeIn();
                    }
                } else {
                    $('#blk_address_list').html(template.parseDOMTemplate('tmpl_address_error').process(rsp, 'data')).fadeIn();
                }
            });
        });
    }


    function getAddressFormFields() {

        var params = {
            name: $('#receiptor').val(),
            region:$('#a_province').val()+'|'+$('#a_city').val()+'|'+$('#a_county').val(),
            detail: $('#address').val(),
            mobile: $('#mobile').val(),
            tel: '',
            zip: $('#postCode').val(),
            'default': $('#isDefault').val() == '1'? true :false
        };

        if ($("#phone_part1").val() != "" && $("#phone_part2").val() != "") {
            params.tel = $('#phone_part1').val() + '-' + $('#phone_part2').val();
        }

        if($('#addrId').val() != ''){
            params.id = $('#addrId').val();
        }

        console.log('getAddressFormFields', params);

        return params;

    }

    function setAddressFormFields(data) {
            var regionInfo = data.region.split('|');

            console.log('setAddressFormFields', data);
            $('#receiptor').val(data.name),
            $('#a_province').val(regionInfo[0]).trigger('change');
            $('#a_city').val(regionInfo[1]).trigger('change');
            $('#a_county').val(regionInfo[2]),
            $('#address').val(data.detail),
            $('#mobile').val(data.mobile),

            $('#postCode').val(data.zip),
            $('#isDefault').val(data.default ? 1: 0);

        if (data.tel != ''){
            var telInfo = data.tel.split('-');
            $('#phone_part1').val(telInfo[0]);
            $('#phone_part2').val(telInfo[1]);
        }

        $('#addrId').val(data.id);
    }

    /**
     * 确认收货
     * @param serial 订单编号
     */
    function addAddress(id) {

        if(checkAddress()) {
            need(['util.json2'], function () {
                var params = $.extend({
                    opt: 'modify',
                    sShipAddress: JSON.stringify(getAddressFormFields())
                }, commonParams);

                //alert(pars)
                $.getScript(url + $.param(params), function () {
                    var rsp = window.address_info;

                    console.log('addAddress', rsp);

                    if (rsp.ret == 0) {
                        ajaxAddressRecord(1);
                        warning('地址保存成功');
                        resetForm();
                    } else {
                        warning(rsp.msg);
                    }
                });
            });

        }
    }

    function resetForm() {
        $('#editText').hide();
        $('#addText').show();
        $("#addAddressForm").get(0).reset();
    }

    function getAddressById(id) {
        for(var i= 0, len = window.addressList.length; i < len; i++){
            if(window.addressList[i].id == id){
                return window.addressList[i];
            }
        }
    }

    function editAddress(id){
        $('#addText').hide();
        $('#editText').show();
        setAddressFormFields(getAddressById(id));
    }

    /**
     * 确认收货
     * @param serial 订单编号
     */
    function updateAddress(id) {
        addAddress(id);
    }


    /**
     * 取消订单
     */
    function deleteAddress(id) {

//        ret_key:ret
//        jsonp_name:address_info
//        bizcode:lol
//        _r:0.1685788967477122
//        opt:modify
//        sShipAddress:{"default":true,"detail":"东方 v","id":"52565","mobile":"14334633341","name":"得到解决","region":"河北|唐山|路北区","tel":"","zip":"111112"}
//


//        ret_key:ret
//        jsonp_name:address_info
//        bizcode:lol
//        _r:0.8025594835229475
//        opt:modify
//        sShipAddress:{"name":"erwer","region":"河北|秦皇岛|山海关区","detail":"dsfsfds","mobile":"18600020021","tel":""}


//        ret_key:ret
//        jsonp_name:address_info
//        bizcode:lol
//        _r:0.27259743026114625
//        opt:modify
//        sShipAddress:{"delete":true,"default":false,"detail":"sdfdsfsdf","id":"55649","mobile":"13890908908","name":"asfsdfdsfsdfsdf","region":"天津|河北|","tel":"","zip":""}

        $.prompt('您确定要删除地址吗?', {
            buttons: [{title: '确定', value: true}, {title: '取消', value: false}],
            submit: function (e, result, m, f) {
                if (e) {
                    need(['util.json2'], function () {

                        var shipInfos = getAddressById(id);

                        shipInfos.delete = true;

                        var params = $.extend({
                            opt: 'modify',
                            sShipAddress: JSON.stringify(shipInfos)
                        }, commonParams);

                        //alert(pars)
                        $.getScript(url + $.param(params), function () {
                            var rsp = window.address_info;

                            console.log('deleteAddress', rsp);

                            if (rsp.ret == 0) {
                                ajaxAddressRecord(1);
                            } else {
                                warning(rsp.msg);
                            }
                        });
                    });
                }
            }
        });
    }

    // 选中用户省份，城市信息
    function provinceClick() {
        var province_hid = $('#province_hid').val();
        var city_hid = $('#city_hid').val();
        var district_hid = $('#district_hid').val();
        changeOption(0, province_hid);
        changeOption(1, city_hid);
        changeOption(2, district_hid);
    }

    function changeCityList() {
        changeOption(1);
    }

    //验证收货地址
    function checkAddress() {
        var receiptor = $("#receiptor").val();
        if (receiptor.length < 2) {
            $('#receiptorPrompt').show();
            $('#receiptor').focus();
            return false;
        }/**else if(!/^[a-zA-Z0-9_u4e00-u9fa5]+$/.test(receiptor)){
			$('#receiptorPrompt').show();
			$('#receiptor').focus();
			return false;
		}*/
        else {
            $('#receiptorPrompt').hide();
        }

        var province = $("#a_province").val();
        if (province == "请选择" || province == 0) {
            $('#provincePrompt').show();
            return false;
        } else {
            $('#provincePrompt').hide();
        }

        var city = $("#a_city").val();
        if (city == "请选择" || city == 0) {
            $('#cityPrompt').show();
            return false;
        } else {
            $('#cityPrompt').hide();
        }

        var district = $("#a_county").val();
        if (district == "请选择" || city == district) {
            $('#districtPrompt').show();
            return false;
        } else {
            $('#districtPrompt').hide();
        }
        var receiptAddress = $("#address").val();
        if (receiptAddress == "") {
            $('#addressPrompt').show();
            $('#address').focus();
            return false;
        }
        else if (receiptAddress.length <= 5) {
            $('#addressPrompt').show();
            $('#address').focus();
            return false;
        }
        else if (!/[\u4e00-\u9fa5]/i.test(receiptAddress)) {
            $('#addressPrompt').show();
            $('#address').focus();
            return false;
        } else {
            $('#addressPrompt').hide();
        }

        var postCode = $("#postCode").val();
        /**if(postCode==""){
			$('#postCodePrompt').show();
			$('#postCode').focus();
			return false;
		}else */
        if (postCode != "" && isNaN(postCode)) {
            $('#postCodePrompt').show();
            $('#postCode').focus();
            return false;
        } else if (postCode != "" && postCode.length != 6) {
            $('#postCodePrompt').show();
            $('#postCode').focus();
            return false;
        } else {
            $('#postCodePrompt').hide();
        }

        var mobile = $("#mobile").val();
        var telePhone = $("#phone_part1").val() + $("#phone_part2").val();
        var par1 = /^1[0-9]{10}$/;
        var par2 = /^[\d]{9,12}$/;
        if (par1.test(mobile)) {
            $('#mobliePrompt').hide();
            $('#telephonePrompt').hide();
        }
        else {
            if (!par2.test(telePhone)) {
                $('#telephonePrompt').show();
                $('#mobliePrompt').show();
                $('#mobile').focus();
                return false;
            }
        }

        return true;
    }


    milo.ready(function () {
        $('#myAddress').addClass('hover');
        ajaxAddressRecord(1);
        _init_area(1,"");
    });

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
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=38440852" charset="UTF-8"></script><!-- ��Ѷ����--PCר�� -->

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
</html>
