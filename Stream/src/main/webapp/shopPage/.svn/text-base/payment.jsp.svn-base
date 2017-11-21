<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!--支付页面-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>支付-英雄联盟周边商城</title>
    <link rel="icon" href="./images/favicon.ico" type="image/x-icon"/>
    <link href="./css/buy.css" rel="stylesheet" type="text/css">
    <!--[if !IE]>支付<![endif]-->
    <link href="./css/usabase.css" rel="stylesheet" type="text/css">
    <!--[if !IE]>共用样式表<![endif]-->
    <link href="./css/member.css" rel="stylesheet" type="text/css">
    <style>
        .topbar {height: 80px;}
        .menubar {display: none;}
    </style>
<script type="text/javascript" src="./js/jquery-1.8.0.min.js"></script>
<script type="text/javascript">
function jisuanTotal() {
		//获取所有的复选按钮
		var chks = document.getElementsByName("pid");
		var total = 0;
		var num=0;
		for (var i = 0; i < chks.length; i++) {
			//判断复选按钮是否被选中
			if (chks[i].checked == true) {
				var pid = chks[i].value;
				var xiaoji =$("#td_" + pid+"").text();
				var n =$("#td2_" + pid+"").text();
				total +=xiaoji;
				num+=n;
				alert($("#td2_" + pid+"").text());
			}
		}
		//为合计赋值
		$("#tota").html(total);
		$("#numcount").html(num);
		//${total } = total;
	}
function addressLi(addid){
    alert($("#adlMobile__"+addid+"").text());
   $("#blk_address_selected").html("<input type='hidden' name='City' value='"+$("#adlProvinceCity_"+addid+"").text()+"' />"+
   "<input type='hidden' name='Add' value='"+$("#adlAddress_"+addid+"").text()+"'/>"+
     "<input type='hidden' name='mail' value='"+$("#adlPostCode_"+addid+"").text()+"'/>"+
      "<input type='hidden' name='phone' value='"+$("#adlMobile__"+addid+"").text()+"'/>"+
   "<input type='hidden' name='Rece' value='"+$("#adlReceiptor_"+addid+"").text()+"'/>"+
   "<input type='hidden' name='aid' value='"+$("#addRec_"+addid+"").val()+"'/>"+
   $("#adlProvinceCity_"+addid+"").text()+""+
   ""+
   $("#adlAddress_"+addid+"").text()+"-"+$("#adlReceiptor_"+addid+"").text()+""
   );
    // adlAddress_1adlReceiptor_1
}
var citylist=new Array();
citylist[0]=["滨海","和平","河东"];
citylist[1]=["德玛西亚","艾欧尼亚"];
function changecity1(prov){
	//
	document.regform.selcity.options.length=0;
	if(prov=="0"){
		var op=new Option("选择城市","0");
		document.regform.selcity.options.add(op);
		return;
		}
	var provindex=parseInt(prov)-1;
	var citys=citylist[provindex];
	for(var i=0;i<citys.length;i++){
		var city=citys[i];
		var op=new Option(city,city);
		document.regform.selcity.options.add(op);
		}
	}

function submitForm(){
		document.searchForm.submit();
	}
function addAddress1(){
		document.regform.submit();
	}
function Pay2(){
		document.regform1.submit();
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
<div style="width: 100px;height: 100px;">
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
<div class="mainbar w980 clearf pb30">
    <!--[if !IE]>浏览目录<![endif]-->
    <a id="maintop"></a>
    <div class="mulu">
        <div class="buytopml2">
        </div>
    </div>

    <!--[if !IE]>购物车主区域<![endif]-->
    <div class="buybar clearf">
        <div class="buyleft fl">
            <div class="buyadd_bar">
                <a id="ddlist1"></a>
                <div class="buyadd_top">
                    配送至
                </div>
               
                <input id="taddressId" type="hidden" value="0">
                <!--[if !IE]>地址<![endif]-->
                <ul class="gwc_addlist clearf" id="blk_address_list">
                    <input id="adds" type="hidden" value="上海">
                    <input id="addRec" type="hidden" value="46336">
                    <c:forEach var="address" items="${adlist}" varStatus="">
                    <li name="addressLi" id="addr_${address.id}" value="1" onclick="addressLi(${address.id})">
                    <input id="addRec_${address.id}" type="hidden" value="${address.id}">
                        <div class="gwc_addk">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="gwc_addktab">
                                <thead>
                                <tr>
                                    <th height="26" align="left" id="adlProvinceCity_${address.id}" width="150">${city.name}</th>
                                    <th width="40" align="center">
                                        <a href="javascript:editAddress();" class="gai pl5 addclick">修改</a>
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td height="54" colspan="2" class="c666">
                                        <font id="adlAddress_${address.id}">${district.name }</font><br>
                                        <font id="adlPostCode_${address.id}">${ address.mail}</font>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <font class="f14" id="adlReceiptor_${address.id}">${street.name }</font>&nbsp;&nbsp;
                                        <font class="f14" id="adlMobile__${address.id}">${ address.phone}</font>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </li>
                    </c:forEach>
                    <li class="gwc_add">
                        <div class="gwc_addk2" onclick="radioChecked();">
                            <a class="jiaadd addclick">新建收货地址</a>
                        </div>
                    </li>
                </ul>
               
                
                <script id="tmpl_address_list" type="text/html">
                    <input id="adds" type="hidden" value="上海">
                    <input id="addRec" type="hidden" value="46336">
                    {if list && list.length}
                    {for item in list}
                    <li name="addressLi" id="addr_${item.id}" value="${item.id}" {if item['default']}class="click"{/if} onclick="selectExistsAddress(${item.id});">
                        <div class="gwc_addk">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="gwc_addktab">
                                <thead>
                                <tr>
                                    <th height="26" align="left" id="adlProvinceCity" width="150">${item.region}</th>
                                    <th width="40" align="center">
                                        <a href="javascript:editAddress(${item.id});" class="gai pl5 addclick">修改</a>
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td height="54" colspan="2" class="c666">
                                        <font id="adlAddress">${item.detail}</font><br>
                                        <font id="adlPostCode">${item.zip}</font>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <font class="f14" id="adlReceiptor">${item.name}</font>&nbsp;&nbsp;
                                        <font class="f14" id="adlMobile">${item.mobile}</font>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </li>
                    {/for}
                    {/if}
                    <li class="gwc_add">
                        <div class="gwc_addk2" onclick="radioChecked();">
                            <a class="jiaadd addclick">新建收货地址</a>
                        </div>
                    </li>
                </script>

                <!--[if !IE]>新增地址<![endif]-->
                <div class="gwc_newadd" style="display:none">
                <form action="order/Address" name="regform" method="post">
                    <input type="hidden" id="addrId" value=""/>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                        <tr>
                            <td class="left"><font class="cfb6">* </font>收货人：</td>
                            <td>
                                <input name="name" id="receiptor" type="text" value=""
                                       onblur="this.value=this.value.removeXSS();" class="gew_inp inpw100"
                                       onkeyup="value=value.replace(/[^\u4E00-\u9FA5^a-z^A-Z^0-9]/g,'')"
                                       onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\u4E00-\u9FA5^a-z^A-Z^0-9]/g,''))">
                                <span style="color:red;display:none" id="receiptorPrompt"
                                      class="pl5 c999">格式不正确,收货人只能包含中文、字母和数字!</span>
                            </td>
                        </tr>
                        <tr>
                            <input type="hidden" id="province_hid" value="">
                            <input type="hidden" id="city_hid" value="">
                            <td class="left"><font class="cfb6">* </font>选择地区：</td>
                            <td>
                  <!--  <select id="a_province" name="province" onchange="changeCityList(0);"> -->
                              <select name="selprov" onchange="changecity1(this.value)">
                              <option value="请选择">请选择</option>
                               <c:forEach var="city" items="${citylList1}" varStatus="i">
                                    <option value="${i.index}">${city.name}</option>
                                </c:forEach>   
                               </select> 
                                <!-- <option value="请选择">请选择</option>
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
                                </select> -->
                                

<!-- <select name="selcity">
<option value="0">选择城市</option>
</select> -->
                                <select id="a_city" name="selcity" >
                                  <option value="0">请选择</option>
                                     <%-- <c:forEach var="dis" items="${disList1}" >
                                    <option value="${dis.id}">${dis.name}</option>
                                      </c:forEach> --%>
                                </select>
                                <%-- <select id="a_county" name="district" name="selcity2" >
                                    <option value="0">请选择</option>
                                     <c:forEach var="stree" items="${streeList1}" >
                                    <option value="${stree.id}">${stree.name}</option>
                                      </c:forEach>
                                </select> --%>
                                <span style="color:red;display:none" id="provincePrompt"
                                      class="pl5 c999">省份不能为空!</span>
                                <span style="color:red;display:none" id="cityPrompt" class="pl5 c999">城市不能为空!</span>
                                <!-- <span style="color:red;display:none" id="districtPrompt"
                                      class="pl5 c999">区或县不能为空!</span> -->
                            </td>
                        </tr>
                        <tr>
                            <td class="left"><font class="cfb6">* </font>详细地址：</td>
                            <td>
                         
                                <span class="fb c000" id="show"></span><!--[if !IE]>加样式 none 默认隐藏<![endif]-->
                                <input id="address" name="detail" value="" type="text" class="gew_inp inpw220" size="30">
                                <span style="color:red;display:none" id="addressPrompt" class="pl5 c999"> (请填写详细的地址，且长度不少于5位)</span>
                            </td>
                        </tr>
                        <tr>
                            <td class="left"><font class="cfb6">* </font> 手机：</td>
                            <td>
                                <input name="mobile" id="mobile" type="text" class="gew_inp inpw220" value="" size="15">
                                <span style="color:red;display:none" id="mobilePrompt" class="c999 pl5"> (手机/电话是为了联系收货人，至少需填写一项)</span>
                            </td>
                        </tr>
                        <tr>
                            <td class="left"><font class="cfe0"></font> 电话：</td>
                            <td>
                                <input name="phone_part1" id="phone_part1" type="text" class="gew_inp inpw50"> -
                                <input name="phone_part2" id="phone_part2" type="text" class="gew_inp inpw140">
                                <input type="hidden" id="telephone" name="tel">
                            </td>
                        </tr>
                        <tr>
                            <td class="left"><font class="cfb6"></font>邮政编码：</td>
                            <td>
                                <input id="postCode" name="zip" type="text" class="gew_inp inpw100">
                                <span style="color:red;display:none" id="postCodePrompt" class="pl5 c999">邮政编码格式不正确</span>
                            </td>
                        </tr>
                        <tr>
                            <td width="200" class="right">默认地址：</td>
                            <td width="740">
                                <select id="isDefault" name="isDefault">
                                    <option value="0">否</option>
                                    <option value="1">是</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="left"></td>
                            <td style="padding-top:10px;"><a class="gew_btn" href="javascript:addAddress1();">保存地址</a>
                                <a class="gew_btnhui" href="javascript:closeUpdateAddress();">关闭编辑</a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                   </form> 
                </div>

                <a id="ddlist2"></a>
                <div class="buyadd_top">
                    支付及快递
                </div>
                <div class="zhifubar">

                    <div class="zhifu2 clearf" style="display: none;">
                        <div class="fl zhifuwen">选择支付方式：</div>
                        <ul class="lolzhifulist">
                            <li class="hover buywx">微信支付<span></span></li>
                            <!--<li class="buynav1">网银支付<span></span></li>-->
                            <!--<li class="buynav2">快捷支付(信用卡)<span></span></li>-->
                            <!--<li class="buynav3">快捷支付(借记卡)<span></span></li>-->
                        </ul>
                    </div>
                    <div class="zhifu_yhmb clearfloat"></div>

                    <div class="zhifu clearf">
                        <div class="fl zhifuwen">快递方式：</div>
                        <ul class="zhifulist">
                            <input type="hidden" id="deliverType" name="deliverType" value="10102">
                            <li class="hover"><img
                                    src="./images/buy_shunfeng.jpg"><span></span>
                            </li>
                            <li class="wen">若非顺丰服务范围，则将为您提供邮政快递服务</li>
                        </ul>
                    </div>
                    <div class="zhifu clearf">
                        <div class="fl zhifuwen">收货时间：</div>
                        <ul class="zhifulist" id="isHolidayUl">
                            <input type="hidden" value="1" name="isHoliday" id="isHoliday" />
                            <input type="hidden" value="2" name="payType" id="payType" />
                            <li class="hover" onclick="chooseIsHoliday(this,1)">周一至周日<span></span></li>
                            <li onclick="chooseIsHoliday(this,2)">周一至周五<span></span></li>
                            <li onclick="chooseIsHoliday(this,3)">周末<span></span></li>
                        </ul>
                    </div>
                </div>

                <a id="ddlist3"></a>
                <div class="buyadd_top">
                    商品信息
                </div>
                <table border="0" align="center" cellpadding="0" cellspacing="0" class="shopdd">
                    <thead>
                    <tr>
                        <th width="50" class="leftwen">商品</th>
                        <th>&nbsp;</th>
                        <th width="80">颜色/尺寸</th>
                        <th width="80">数量</th>
                        <th width="80">小计</th>
                    </tr>
                    </thead>
                    <tbody id="blk_cart_list">
                    <c:set var="total" value="0"></c:set>
                    <c:set var="num" value="0"></c:set>
                     <c:forEach var="car" items="${carMap.values()}" varStatus="i">
                        <tr class="cart-goods" goodsId="1">
                                <td height="56" class="imgleft leftwen">
                                    <img src="./images/${car.shouban.img }">
                                </td>
                                <td>
                                   <input type="checkbox" name="pid" value="${car.shouban.id }" checked="checked"
								onclick="jisuanTotal()" />
                                </td>
                                <td class="leftwen"><span class="c666">现价： &yen;${car.shouban.price }元</span></td>
                                <td>
                                   
                                    <span class="c999">1</span>&nbsp;
                                  
                                </td>
                                <td  id="td2_${car.shouban.id }" >${car.num }</td>
                                <td id="td_${car.shouban.id }">${car.shouban.price*car.num }</td>
                            </tr>
                        <tr>
                            <td class="imgleft leftwen" height="36"></td>
                            <td class="leftwen"></td>
                            <td></td>
                            <td colspan="2" class="rightwen"><a href="/cart.shtml" class="fanghui">返回购物车修改</a></td>
                         <c:set var="total" value="${total+car.shouban.price*car.num }"></c:set>
                         <c:set var="num" value="${num+car.num }"></c:set>
                         <input        type="hidden"  id="total1_${car.shouban.id }"  value="${total+car.shouban.price*car.num }"/>
                        </tr>
                   </c:forEach>
                   
                    </tbody>
                    <script id="tmpl_cart_list" type="text/html">
                        {if list && list.length}
                        {for cart in list}
                        {for item in cart.sales}
                        {if item.selected}
                            <tr class="cart-goods" goodsId="${item.goodsInfo.iGoodsId}">
                                <td height="56" class="imgleft leftwen">
                                    <img src="${item.goodsInfo.sProfileImg}">
                                </td>
                                <td class="leftwen"><span class="cff0">{if cart.sActType == 3}【组合】{elseif item.isAward}【赠品】{/if}</span>${item.goodsInfo.sMallName}<br><span class="c666">{if item.isAward}原价： &yen;${item.goodsInfo.iPrice/100}{else}现价： &yen;${item.iFinalPrice/100}{/if}元</span></td>
                                <td>
                                    {for attr in item.goodsInfo.attr}
                                    <span class="c999">${attr.sAttrValue}</span>&nbsp;
                                    {/for}
                                </td>
                                <td>${item.iTotal}</td>
                                <td>&yen;${(item.iFinalPrice*item.iTotal)/100}</td>
                            </tr>
                        {/if}
                        {/for}
                        {/for}
                        {/if}
                        <tr>
                            <td class="imgleft leftwen" height="36"></td>
                            <td class="leftwen"></td>
                            <td></td>
                            <td colspan="2" class="rightwen"><a href="/cart.shtml" class="fanghui">返回购物车修改</a></td>
                        </tr>
                    </script>
                    <script id="tmpl_cart_error" type="text/html">
                        {if data && data.msg}
                        <tr>
                            <td colspan="5">${data.msg}</td>
                        </tr>
                        {/if}
                    </script>
                </table>
                <a id="ddlist4"></a>

                <div class="yhqlist" id="yhqlist">
                    <div class="buyadd_top">
                        卡券 <span class="c999">(请选择或输入您的卡券，单个订单仅能使用一张卡券，含优惠券、折扣券和包邮卡)</span>
                    </div>
                    <div class="peisong" id="order_coupon_div">
                        <!--<div class="buy_quan" id="useCoupon">-->
                            <!--<div class="buy_quan_font">使用卡券</div>-->
                            <!--<div class="yhlist_yes" id="orderCouponNoShow" style="display:none;"></div>-->
                            <!--<div class="yhlist" id="order_coupon_span">-->
                                <!--<input type="text" id="order_coupon" class="yhlist_txt" value="">-->
                                <!--<input type="button" class="yhlist_bot" value="使用"-->
                                       <!--onclick="checkCoupon()">-->
                            <!--</div>-->
                            <!--<div id="error_message_order" class="ordbar_wen" style="display:none;"></div>-->
                        <!--</div>-->

                        <!--分栏优惠券-->
                        <div class="quan_tab">
                            <ul class="tab_menu">
                                <li class="current">可用卡券
                                 
                                </li>
                                <!--<li loaded="0">不可用卡券</li>-->
                            </ul>

                            <div class="tab_box">
                                <div id="blk_coupon_available" style="padding-top: 20px;"><div class="buyyhq clearf">
                                        <a id="coupon_1" couponno="1" onclick="chooseCoupon(this, 1)" class=""  title="1"><!--选中 yhqhover-->
                                            <span class="pr5">1优惠券</span><span style="display: inline-block; width: 245px; height: 18px; overflow: hidden;">oiwqdhhqwldjlqjd</span><br><font class="f12 c999">有效期至4654</font>
                                        </a>
                                    </div></div>
                                <div id="blk_coupon_unavailable" class="hide" style="padding-top: 20px;"></div>
                                <script id="tmpl_coupon_available" type="text/html">
                                    {if list && list.length}
                                    {for item in list}
                                    <div class="buyyhq clearf">
                                        <a id="coupon_${item.iCouponId}" couponno="${item.iCouponId}" onclick="chooseCoupon(this, ${item.iCouponId})" class=""  title="${item.sTemptName}"><!--选中 yhqhover-->
                                            <span class="pr5">[{if item.iCouponType == 1}优惠券{elseif item.iCouponType == 2}折扣券{elseif item.iCouponType == 3}包邮卡{/if}]</span><span style="display: inline-block; width: 245px; height: 18px; overflow: hidden;">${item.sTemptName}</span><br><font class="f12 c999">有效期至${item.dtEndTime}</font>
                                        </a>
                                    </div>
                                    {/for}
                                    {/if}
                                </script>
                                <script id="tmpl_coupon_unavailable" type="text/html">
                                    {if list && list.length}
                                    {for item in list}
                                    <div class="buyyhq clearf">
                                        <a class="yhq_hui">
                                            <span class="pr5">[{if item.iCouponType == 1}优惠券{elseif item.iCouponType == 2}折扣券{elseif item.iCouponType == 3}包邮卡{/if}]</span>${item.sTemptName}<br><font class="f12 c999">有效期至${item.dtEndTime}</font>
                                        </a>
                                    </div>
                                    {/for}
                                    {/if}
                                </script>
                                <script id="tmpl_coupon_error" type="text/html">
                                    {if data && data.msg}
                                    <div>${data.msg}</div>
                                    {/if}
                                </script>
                            </div>
                        </div>
                        <!--分栏优惠券end-->
                    </div>
                </div>
            </div>
        </div>
        <!--[if !IE]>购物车右侧<![endif]-->
        <div class="buyrightbar fr" id="buyrightbar">
            <div class="navBox_1" id="topBox" style="top: 0px;">
                <h3>填写核对订单</h3>
                <div class="buybai">
                    <!--邮费判断-->
                    <form action="order/Pay" method="post" name="regform1">
                    <div class="buy_dd buybottom">
                        <div class="buyddtop clearf">
                            <div class="buyddleft1 fl">
                                配送至
                            </div>
                            <a class="buyddright fr" onclick="toMao('ddlist1',75)">修改</a>
                        </div>
                        
                        <div class="buy_ddfont" id="blk_address_selected">eee</div>
                    </div>
                    
                    <div class="buy_dd buybottom">
                        <div class="buyddtop clearf">
                            <div class="buyddleft2 fl">
                                支付及快递
                            </div>
                            <a class="buyddright fr" onclick="toMao('ddlist2',75)">修改</a>
                        </div>
                        <div class="buy_ddfont">
                            支付方式： 微信支付<br>
                            快递方式： 顺丰速运<br>
                            收货时间： <font id="isHolidayView">周一至周日</font>
                        </div>
                    </div>
                    <div class="buy_dd buybottom">
                        <div class="buyddtop clearf">
                            <div class="buyddleft2 fl">
                                订单金额信息
                            </div>
                            <a class="buyddright fr" onclick="toMao('ddlist3',75)">查看</a>
                        </div>
                        <div class="buy_ddfont">
                            金额： &yen;<span id="tota"><%-- ${total} --%></span> &nbsp;&nbsp;&nbsp; 数量：<span id="numcount"><%-- ${num } --%></span><br>
                            运费： &yen;<font id="carriageView">元</font> &nbsp;&nbsp;&nbsp;
                            <span id="coupon_view_span" class="cfb6" style="display:none;">
                                优惠：&yen;<font id="couponView">20元</font>
                            </span>
                            <br>
                            <span class="cfb6">需付金额：${total-100} &yen;</span><span class="cfb6 f20" id="realPaymentView"></span>
                        </div>
                    </div>
                    <!--<div class="buy_dd buybottom">-->
                        <!--<div class="buyddtop clearf">-->
                            <!--<div class="buyddleft4 fl">-->
                                <!--优惠券-->
                            <!--</div>-->
                            <!--<a class="buyddright fr" onclick="toMao('ddlist3',75)">使用优惠券</a>-->
                        <!--</div>-->
                        <!--<div class="buy_ddfont">-->
                            <!--<div id="showCoupon">-->
                            <!--</div>-->
                        <!--</div>-->
                    <!--</div>-->
                    <div class="buy_wen buybottom">
                        <span class="buytit" id="nochoosetip" style="display:none !important;">未选择配送地址!</span>
                        <span class="buytit" id="nochoosebanktip" style="display:none !important;">未选择银行!</span>
                        <a class="buy_bot" href="javascript:Pay2();" id="orderSubmit">付款</a>
                    </div>
                    </form>
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
<script type="text/javascript" src="./js/milo.js" charset="utf-8"></script>
<script type="text/javascript" src="./js/template.js" charset="utf-8"></script>
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
<script type="text/javascript" src="http://js01.daoju.qq.com/zb/lolriotmall/pc/js/area.js"></script>
<script type="text/javascript" src="http://js02.daoju.qq.com/zb/lolriotmall/pc/js/jquery.tabs.js"></script>
<script type="text/javascript">

    //活动内容
    $(function () {
        //获取要定位元素距离浏览器顶部的距离
        //滚动条的滑动距离大于等于定位元素距离浏览器顶部的距离，就固定，反之就不固定
        var navH = $("#topBox").offset().top;
        var clientHeight =$(window).height()  
        //滚动条事件
        $(window).scroll(function () {
            //获取滚动条的滑动距离
            var scroH = $(this).scrollTop();
            //滚动条的滑动距离大于等于定位元素距离浏览器顶部的距离，就固定，反之就不固定
            console.log(scroH+clientHeight+152, $(document).height());
            if (scroH > navH) {//翻页
//            	if(scroH+clientHeight+152 >= $(document).height()){
//            		$("#topBox").attr("class", "navBox_2");
//	                $("#topBox").css("top", "-72px");
//	                if ($.browser.msie && ($.browser.version == "6.0")) {
//	                    $("#topBox").css("top", "78px")
//	                }
//            	}else{
            		$("#topBox").attr("class", "navBox_2");
	                $("#topBox").css("top", "75px");
	                if ($.browser.msie && ($.browser.version == "6.0")) {
	                    $("#topBox").css("top", "78px")
	                }
//            	}

            } else {
                $("#topBox").attr("class", "navBox_1")
                $("#topBox").css("top", "0px")
            }
        })
    });

    /* ======================地址选择部分部分实现 ==========================*/

    var addressUrl = "http://apps.game.qq.com/daoju/v3/api/user/info/address.php?";

    var pageSize = 100;  // 每页显示条数

    // 公用参数
    var commonParams = {
        ret_key: 'ret',
        jsonp_name: 'address_info',
        bizcode: bizCode
    }

    // 地址列表缓存，编辑时用
    var addressList = {};
    var selectedAddrId = null;

    /**
     * 获取订单列表
     *  @param status 订单状态
     *  @param page 页码
     */
    function ajaxAddressRecord(page, callback) {

        var params = $.extend({
            pn: typeof page == 'undefined' ? 1 : page,
            ps: pageSize
        }, commonParams);

        //alert(pars)
        $.getScript(addressUrl + $.param(params), function () {
            var rsp = window.address_info;

            console.log('addressList', rsp);

            if(rsp.ret == -1022){
                need(['biz.login','biz.dialog'], function (login, dialog) {
                    login.login();
                });
                return false;
            }

            need(['util.template'], function (template) {
                if (rsp.ret == 0) {
                    var list = rsp.data[0].sShipAddress ? rsp.data[0].sShipAddress : [];

                    $('#blk_address_list').html(template.parseDOMTemplate('tmpl_address_list').process(list, 'list')).fadeIn();

                    for (var i = 0, len = list.length; i < len; i++) {
                        addressList[list[i].id] = list[i];
                    }

                    callback && callback(list, addressList);
                }
//                else {
//                    $('#blk_address_list').html(template.parseDOMTemplate('tmpl_address_error').process(rsp, 'data')).fadeIn();
//                }
            });
        });
    }

    function radioChecked(){
        if(window.addressList.length >= 5){
            return warning("收货地址最多添加5条！");
        }

        $('.gwc_newadd').show();
        $('.gwc_addlist').hide();

        $("#show").html('');
        $('#addrId').val('');

        //$('#addressIds').attr("value","new");
        // $("#txtprovince").attr("value",0);
        $('#receiver').attr('value','');
        $('#a_province').attr('value','请选择');
        $('#a_city').attr('value','请选择');
        $('#a_county').attr('value','请选择');
        $('#address').attr('value','');
        $('#mobile').attr('value','');
        $('#telephone').attr('value','');
        $('#postCode').attr('value','');
        $("#receiptAddrId").attr('value','');
        $('#orderSubmit').attr('class','buy_bothui');
        $('#orderSubmit').removeAttr('href');
        $('#nochoosetip').show();
        //$('#orderSubmit').show();
    }

    function closeUpdateAddress(){
        $('.gwc_newadd').hide();
        $('.gwc_addlist').show();
        $('#nochoosetip').hide();
        $('#orderSubmit').attr('class','buy_bot');
        $('#orderSubmit').attr('href','javascript:payCheck();');
    }


    //选择当前地址信息
    //ok
    function selectExistsAddress(addrId){
        var address = addressList[addrId],
            regionInfo = address && address.region.split('|');

        if(!address) return false;

        selectedAddrId = address.id;

        $("#blk_address_list li").removeClass("click");
        $('#addr_'+addrId).addClass("click");

        need(['util.template'], function (template) {
            $('#blk_address_selected').html(template.parseDOMTemplate('tmpl_address_selected').process(address, 'address')).fadeIn();
        });

        $("#addressIds").attr('value',address.id);
        $('#a_province').attr('value',regionInfo[0]);
        $('#a_city').attr('value',regionInfo[1]);
        $('#a_county').attr('value',regionInfo[2]);

        refreshPayInfo();

    }

    function getAddressFormFields() {

        var params = {
            name: $('#receiptor').val(),
            region: $('#a_province').val() + '|' + $('#a_city').val() + '|' + $('#a_county').val(),
            detail: $('#address').val(),
            mobile: $('#mobile').val(),
            tel: '',
            zip: $('#postCode').val(),
            'default': $('#isDefault').val() == '1' ? true : false
        };

        if ($("#phone_part1").val() != "" && $("#phone_part2").val() != "") {
            params.tel = $('#phone_part1').val() + '-' + $('#phone_part2').val();
        }

        if ($('#addrId').val() != '') {
            params.id = $('#addrId').val();
        }

        console.log('getAddressFormFields', params);

        return params;

    }

    function setAddressFormFields(data) {
        var regionInfo = data.region.split('|');

        console.log('setAddressFormFields', data);
        $('#receiptor').val(data.name);
        $('#a_province').val(regionInfo[0]).trigger('change');
        $('#a_city').val(regionInfo[1]).trigger('change');
        $('#a_county').val(regionInfo[2]);
        $('#address').val(data.detail);
        $('#mobile').val(data.mobile);

        $('#postCode').val(data.zip);
        $('#isDefault').val(data['default'] ? 1 : 0);

        if (data.tel != '') {
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

        if (checkAddress()) {
            need(['util.json2'], function () {
                var address = getAddressFormFields();

                var params = $.extend({
                    opt: 'modify',
                    sShipAddress: JSON.stringify(address)
                }, commonParams);

                //alert(pars)
                $.getScript(addressUrl + $.param(params), function () {
                    var rsp = window.address_info;

                    console.log('addAddress', rsp);

                    if (rsp.ret == 0) {
                        ajaxAddressRecord(1, function (addressList) {
                            closeUpdateAddress();
                            selectExistsAddress(address.id || addressList[0].id); // 执行选中操作，新增默认选新增的这个（id最大，排在数组最前面）
                        });
                    } else {
                        warning(rsp.msg);
                    }
                });
            });
        }
    }

    function editAddress(id) {
        $('.gwc_newadd').show();
        $('.gwc_addlist').hide();
        setAddressFormFields(addressList[id]);
    }

    /**
     * 确认收货
     * @param serial 订单编号
     */
    function updateAddress(id) {
        addAddress(id);
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

    //选择是否节假日收货
    function chooseIsHoliday(obj,isHoliday){
        $('#isHolidayUl li').removeAttr('class');
        $(obj).addClass('hover');
        $('#isHoliday').val(isHoliday);
        $('#isHolidayView').html($(obj).text());
    }

    /* ======================购物车商品展示实现 ==========================*/


    var userLevel = milo.cookie.get("userLevel");

    var selectedCartIds = milo.request('cartids'); // 选中购物车id，形如321,322,323
    var selectedAwards = milo.request('awards'); // 选中的赠品id,形如：25:123|26:432,123


    var cartItemList = null; //购物车商品列表 形如：{id:{}, id:{}}


    function setFinalPrice(cart, isActPrice) {
        var goodsInfo = cart.goodsInfo ? cart.goodsInfo : cart;

        isActPrice = typeof isActPrice == 'boolean' ? isActPrice : false;

        if (isActPrice) {
            cart.iFinalPrice = parseInt(goodsInfo.iPrice);
        } else {
            if (new Date().getTime() > new Date(goodsInfo.dtPromoteStart).getTime() && new Date().getTime() < new Date(goodsInfo.dtPromoteEnd).getTime()) {
                cart.iFinalPrice = parseInt(goodsInfo.iPromotePrice);
            } else {
                cart.iFinalPrice = parseInt(goodsInfo.iPrice);
            }
        }

        return cart;
    }

    /**
     *  获取赠品列表信息，没有直接返回空
     */
    function getAwardList(awardIds, callback) {
        var awardIdList = {};

        if(!!awardIds){
            // saleId1:mallId1,mallId2|saleId2:mallId3
            var tmp1 = awardIds.split('|'), tmp2 = [];

            for(var i = 0; i< tmp1.length; i++){
                var tmp3 = tmp1[i].split(':');
                tmp2.push(tmp3[1]);
                awardIdList[tmp3[0]] = tmp3[1].split(','); //拆分为{saleid:[goodsId,goodsId]}对象形式
            }

            ajaxGoodsByIds(tmp2.join(',').split(','), function (goodsList) {
                callback && callback(awardIdList, goodsList);
            });
        } else{
            callback && callback({}, {});
        }
    }

    /**
     * 获取订单列表
     *  @param status 订单状态
     *  @param page 页码
     */
    var goodsId = '';
    function ajaxCartGoodsRecord(awardIdList, awardList, callback) {

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

            console.log('cartItemList', rsp);

            need(['util.template'], function (template) {
                if (rsp.result == 0) {
                    if (rsp.data.total > 0) {
                        var list = rsp.data.list, selectedCartIdsTmp = selectedCartIds +','; // 匹配用

                        // 排序，不然每次改变购物车数量的试试，商品顺序会变
                        list.sort(function (a, b) {
                            return parseInt(a.iCartId.split(',')[0]) - parseInt(b.iCartId.split(',')[0]) > 0 ? -1: 1;
                        });

                        cartItemList = []; // 商品id为key的列表

                        // 下面主要是把多种组合营销的商品格式化为统一的list.sales的格式，便于模板统一循环处理
                        for (var i = 0, ilen = list.length; i < ilen; i++) {
                            var cart, mallId, total;

                            if (list[i].sales) { // 组合购买商品
                                var totalNum = 0, totalFinalPrice = 0;

                                for (var j = 0, jlen = list[i].sales.length; j < jlen; j++) {
                                    cart = list[i].sales[j];

                                    if(selectedCartIdsTmp.indexOf(cart.iCartId+',') == -1){ // 未选中，不处理
                                        continue;
                                    }

                                    mallId = cart.goodsInfo.iMallId;
                                    total = parseInt(cart.iTotal);

                                    cart.selected = true;
                                    cart.isMainGood = j == 0 ? true : false; // 组合第一个商品
                                    setFinalPrice(cart, list[i].sActType != 3 ? false : true);
                                    totalFinalPrice += parseInt(cart.iFinalPrice) * total;
                                    totalNum += total;

                                    cartItemList.push(cart);
                                }

                                list[i].iTotal = totalNum;
                                list[i].iFinalPrice = totalFinalPrice; // 组合优化合计价格

                            } else { // 非组合营销类商品
                                mallId = list[i].goodsInfo.iMallId;
                                total = parseInt(list[i].iTotal);

                                if(selectedCartIdsTmp.indexOf(list[i].iCartId+',') == -1){ // 未选中，不处理
                                    continue;
                                }

                                list[i].selected = true;
                                list[i].sales = [ // 兼容处理组合商品的情况
                                    setFinalPrice(list[i])
                                ]
                                list[i].iFinalPrice = list[i].iFinalPrice;

                                cartItemList.push(list[i]);
                            }

                            if (list[i].awards) { // 买赠和满赠的赠品处理
//                                var selectedAwardsTmp = selectedAwards + ',';

                                for (var j = 0, jlen = list[i].awards.length; j < jlen; j++) {
                                    var awardId =list[i].awards[j].iMallId;

                                    list[i].awards[j].iFinalPrice = 0;

//
//                                    if(list[i].goodsInfo.iSaleId == 0 || selectedAwardsTmp.indexOf(list[i].goodsInfo.iSaleId) == -1 || selectedAwardsTmp.indexOf(list[i].awards[j].iMallId) == -1){
//                                        continue;
//                                    }

                                    if(awardIdList[list[i].goodsInfo.iSaleId]){
                                        var actAwardIds = awardIdList[list[i].goodsInfo.iSaleId];

                                        for(var k =0; k < actAwardIds.length; k++){
                                            if(awardList[actAwardIds[k]]){ // 存在赠品列表里才展示出来
                                                cart = {
                                                    selected: true,
                                                    goodsInfo: awardList[actAwardIds[k]],
                                                    isAward: true,
                                                    iFinalPrice: 0,
                                                    iTotal: list[i].sActType == 2 ? list[i].iTotal : 1
                                                };
                                                list[i].sales.push(cart);
                                                cartItemList.push(cart);
                                            }
                                        }
                                        awardIdList[list[i].goodsInfo.iSaleId] = []; // 处理完置空，防止重复处理
                                    }

                                }
                            }
                        }

                        console.log('sssss', list);
                        //提取goodsid
                        var goodsAry = [];
                        $.each(list,function(index,element){
                            if(element.sales){
                                goodsAry.push(element.sGoodsId);
                            }
                        })
                        goodsId = goodsAry.join(',');
//                        console.log(template.parseDOMTemplate('tmpl_cart_list').process(list, 'list'));
                        $('#blk_cart_list').html(template.parseDOMTemplate('tmpl_cart_list').process(list, 'list')).fadeIn();
                    } else {
                        $('#blk_cart_list').html(template.parseDOMTemplate('tmpl_cart_error').process({msg: '您的购物车中还没有商品， <a href="/list.shtml">去逛逛吧</a>'}, 'data')).fadeIn();
                    }

                } else {
//                    console.log('list error', template.parseDOMTemplate('tmpl_cart_error').process(rsp, 'data'));
                    $('#blk_cart_list').html(template.parseDOMTemplate('tmpl_cart_error').process(rsp, 'data')).fadeIn();
                }
//                refreshPayInfo();
                callback && callback(cartItemList);
            });
        });
    }

    /* =====================优惠券选择部分实现 ==========================*/

    var couponList = {};
    var selectedCouponId = ''; // 当前选中优惠券
//    var list = [];
    var couponParams = {};

    /**
     * 获取优惠券列表
     *  @param status 订单状态
     *  @param page 页码
     */
    function ajaxCouponRecord(available) {
        var url = "http://apps.game.qq.com/daoju/v3/zb/client/coupon/CouponList.php?";

        var  supplier_id = cartItemList[0].iSupplierId, goods = [], couponTypeList = [], totalPrice = 0;

        // 组装获取优惠券的参数
        $.each(cartItemList, function() {

            if(!this.isAward) {
                var isDiscount = 0;

                if (new Date().getTime() > new Date(this.goodsInfo.dtPromoteStart).getTime() && new Date().getTime() < new Date(this.goodsInfo.dtPromoteEnd)) { //限时折扣
                    isDiscount = 1;
                }

                totalPrice += parseInt(this.iFinalPrice) * parseInt(this.iTotal);

                supplier_id = this.iSupplierId;
                goods.push(this.goodsInfo.iGoodsId);

                couponTypeList.push({
                    iCatId: this.goodsInfo.iCatId,
                    iCurrPrice: this.goodsInfo.iCurrPrice * this.iTotal,
                    isDiscount: isDiscount, //0是无折扣 1限时折扣
                    iMallId: this.goodsInfo.iMallId,
                    iShipFree: this.goodsInfo.iShipFree
                });
            }
        });

        need(['util.json2'], function () {
            couponParams = {
                Act: available ? 'listnew' : 'listfail',
                _biz_code: bizCode,
                _output_fmt: '2',
                price: totalPrice,
                supplierid: supplier_id,
                discount: '',
                goodsinfo: JSON.stringify(couponTypeList),
                p: typeof page == 'undefined' ? 1 : page,
                ps: 30
            };

            //alert(pars)
            $.getScript(url + $.param(couponParams), function () {
                var rsp = window.CouponList;

                console.log('couponList', rsp);

                need(['util.template'], function (template) {
                    if (rsp.result == 0) {
                        var list = [], tmpList = rsp.data.list, shipFree = isShipFreeGoods();

                        couponList = {};

                        for(var i in tmpList){
                            if(tmpList[i].iCouponType == 3 && (totalPrice >= 19900  || shipFree)  ) continue;

                            list.push(tmpList[i]);
                            couponList[tmpList[i].iCouponId] = tmpList[i];
                        }

                        console.log('avaliable coupon list', list, couponList);

                        if (list.length > 0) {

                            list = sortCouponList(list, totalPrice);

                            if(available){
                                $('#blk_coupon_available').html(template.parseDOMTemplate('tmpl_coupon_available').process(list, 'list')).fadeIn();
                                selectMaxCoupon(list);
                            } else{
                                $('#blk_coupon_unavailable').html(template.parseDOMTemplate('tmpl_coupon_unavailable').process(list, 'list')).fadeIn();
                            }
                        } else {
                            if(available) {
                                $('#blk_coupon_available').html(template.parseDOMTemplate('tmpl_coupon_error').process({msg: '亲爱的召唤师：您暂无可用优惠券！'}, 'data')).fadeIn();
                            } else {
                                $('#blk_coupon_unavailable').html(template.parseDOMTemplate('tmpl_coupon_error').process({msg: '亲爱的召唤师：您暂无不可用优惠券！'}, 'data')).fadeIn();
                            }
                        }
                    } else {
                        $('#blk_coupon_available').html(template.parseDOMTemplate('tmpl_coupon_error').process(rsp, 'data')).fadeIn();
                    }
                });

                $('.quan_tab').Tabs({
                    event:'click',
                    callback: function (a) {
                        var $curTab = $('.tab_menu .current');
                        if($curTab.index() == 1 && $curTab.attr('loaded') == 0){
                            ajaxCouponRecord(false);
                            $curTab.attr('loaded', 1);
                        }
                    }
                });
            });
        });
    }
    /**
     * 优惠券按优惠金额从大到小排序
     */
    function sortCouponList(list, totalPrice) {

        var carruage = addressList[selectedAddrId] ? (addressList[selectedAddrId].region.indexOf('广东') > -1 ? 1000 : 1500) : 1500;

        for(var i =0; i<list.length; i++){
            if(list[i].iCouponType == 1){
                list[i].val = list[i].iDenominate;
            } else if(list[i].iCouponType == 2){
                list[i].val = totalPrice * (100-list[i].iDenominate)/100;
            } else {
                list[i].val = carruage;
            }
        }

        list.sort(function(a,b){
            return b.val-a.val
        });
        return list;
    }

    /**
     * 默认选中最大优惠额度的优惠券
     */
    function selectMaxCoupon(list) {
        var maxCouponId = list[0].iCouponId;
        chooseCoupon($('#coupon_'+maxCouponId), maxCouponId);
    }

    function chooseCoupon(couponEl, couponId){
        var $couponEl = $(couponEl);

        if($couponEl.hasClass('yhqhover')){
            window.selectedCouponId = 0;
            $couponEl.removeClass('yhqhover');
        } else{
            window.selectedCouponId = couponId;

            $('#blk_coupon_available').find('a').removeClass('yhqhover');
            $couponEl.addClass('yhqhover');
        }
        refreshPayInfo();
    }
    
    /* ======================右侧已选信息刷新实现 ==========================*/

    // 是否有包邮商品
    function isShipFreeGoods() {
        var shipFree = false;

        $.each(cartItemList, function() {
            if(!this.isAward && this.goodsInfo.iShipFree == 1){
                console.log('shipFree goods',this.goodsInfo.sMallName,this.goodsInfo);
                shipFree = true;
                return;
            }
        });

        return shipFree;
    }

    /**
     * 获取快递费
     */
    function getCarriage(cartItemList, amount, num, supplier_id, province, callback) {
        var url = 'http://apps.game.qq.com/daoju/v3/zb/client/transportation/transFeeModel.php?';

//        if(province.indexOf('广东') > -1){
//            callback(1000);
//        }

        var params = {
            operateType: 1,
            format: 1,
            number: num,
            amount: amount,
            providerid: supplier_id,
            regionname: province
        };

        var shipFree = false;

        if(isShipFreeGoods()){
            console.log('carriage free');
            callback && callback({
                fee: 0
            });
        } else {
            //alert(pars)
            $.getScript(url + $.param(params), function () {
                var rsp = window.ret;

                console.log('carriage', rsp);

                callback && callback(rsp.jData);
            });
        }
    }

    /**
     * 根据商品变化实时刷新支付信息，数量，总价和优惠折扣等
     */
    function refreshPayInfo(callback) {
        var totalNum = 0, // 商品数量
            totalPrice = 0, // 商品总价
            payPrice = 0, // 实际支付
           	tmpPrice = 0, // 用于计算优惠金额用
            supplierId = 619,
            useShipFreeCard = false, // 是否使用了包邮卡
            addrProvince =  selectedAddrId ? addressList[selectedAddrId].region.split('|')[0] : '其它';

        $.each(cartItemList, function() {
            var cart = this;
            supplierId = cart.goodsInfo.iSuppliersId;
            totalNum += parseInt(cart.iTotal);
            payPrice += cart.iFinalPrice * cart.iTotal;
          	totalPrice += cart.goodsInfo.iOriPrice * cart.iTotal;
        });

        tmpPrice = payPrice;

        $('#tota').html(totalPrice/100);
        $('#numcount').html(totalNum);


        if(selectedCouponId && couponList[selectedCouponId]){
            var coupon = couponList[selectedCouponId];
            if(coupon.iCouponType == 1){
                tmpPrice = payPrice = payPrice - coupon.iDenominate;
            } else if(coupon.iCouponType == 2){ // 折扣券，需要单独处理指定商品和分类
                var couponMoney = 0;

                // iRule 1全场，2分类，5商品，3全场除限
                if(coupon.iRule == 3){ // 除去限时折扣
                    $.each(cartItemList, function() {
                        var cart = this;
                        // 非限时折扣折扣商品才打折
                        if(!(new Date().getTime() > new Date(cart.goodsInfo.dtPromoteStart).getTime() && new Date().getTime() < new Date(cart.goodsInfo.dtPromoteEnd).getTime())){
                            couponMoney += Math.ceil((cart.iFinalPrice * cart.iTotal) * ((100-coupon.iDenominate)/100));
                        }
                    });
                } else if(coupon.iRule == 2){ // 指定分类
                    $.each(cartItemList, function() {
                        var cart = this;

                        if(coupon.iRuleBigType == cart.goodsInfo.iCatId && (coupon.iRuleSmallType == '0' || coupon.iRuleSmallType == cart.goodsInfo.iSmallCatId)){
                            couponMoney += Math.ceil((cart.iFinalPrice * cart.iTotal) * ((100-coupon.iDenominate)/100));
                        }
                    });
                } else if(coupon.iRule == 5){ // 指定商品优惠券处理
                    var goodsIds = coupon.sRuleTxt + ',';

                    $.each(cartItemList, function() {
                        var cart = this;

                        if(goodsIds.indexOf(cart.goodsInfo.iMallId+',') > -1){
                            couponMoney += Math.ceil((cart.iFinalPrice * cart.iTotal) * ((100-coupon.iDenominate)/100));
                        }
                    });
                } else{
                    couponMoney = Math.ceil(payPrice * ((100-coupon.iDenominate)/100));
                }
                tmpPrice = payPrice = payPrice - couponMoney;

            } else if(coupon.iCouponType == 3){
//                payPrice = payPrice - carriage; // 物流费不算优惠
                useShipFreeCard = true;
//                $('#carriageView').html(0);
            }
        }

        getCarriage(cartItemList, payPrice, totalNum, supplierId, addrProvince, function (carruage) {
            //满199包邮
            var carriage = carruage.fee ;//totalPrice > 199 ? 0 : addressList[selectedAddrId].region.indexOf('广东') > -1 ? 10 : 15;

//          	totalPrice /= 100;
//            payPrice /= 100;



          	$('#couponView').html((totalPrice-tmpPrice)/100);
          	if(totalPrice-tmpPrice > 0){
            	$('#coupon_view_span').show();
            } else{
            	$('#coupon_view_span').hide();
            }

            // 免邮卡处理
            payPrice += useShipFreeCard ? 0: carriage/1;
            $('#carriageView').html(useShipFreeCard ? 0: carriage/100);

            $('#realPaymentView').html(payPrice/100);

            callback && callback();
        });
    }

    // 特殊处理逻辑都放到这里
    function specialProcess(callback) {
        try {
            // 月饼，进行提取地提示
            if ($('#blk_cart_list tr[goodsId=2121]').length > 0) {
                var selectedCity = addressList[selectedAddrId].region.split('|')[1],
                    supportCitys = '上海|北京|深圳|广州|成都|武汉|重庆|苏州|杭州|南京|西安|';
				selectedCity = selectedCity.replace(/市$/,'');
                if (supportCitys.indexOf(selectedCity + '|') == -1) {
                    $.prompt('您所填写的收货地址所在城市不支持月饼提领，您希望继续付款吗?', {
                        buttons: [{title: '继续支付', value: true}, {title: '修改地址', value: false}],
                        submit: function (result, m, f) {
                            if (result) {
                                callback && callback();
                            }
                        }
                    });
                } else {
                    callback && callback();
                }
            } else {
                callback && callback();
            }
        } catch(e){
            callback && callback();
        }
    }

    function payCheck(){
        specialProcess(function () {
            // 最后再计算一次价格，包括运费
            refreshPayInfo(function () {
                pay();
            });
        });
    }

    function pay() {

        need(['daoju.zb.comm', 'daoju.zb.model.order'], function (comm, orderModel) {

            comm.easPing();

            if (cartItemList.length == 0) {
                comm.alert('亲爱的召唤师~购物车没有商品, 请先加入购物车再购买');
                return;
            }

            if (!selectedAddrId) {
                comm.alert('亲爱的召唤师~请选择收货地址');
                return;
            }
            //        if (Pay.cartJson.data.haveVirtualGoods) {
            //            if (!window.zone) {
            //                comm.alert('请选择游戏区服和角色');
            //                return;
            //            } else {
            //                Pay.orderObj.areaid = window.zone.areaid;
            //                Pay.orderObj.roleid = window.zone.roleid;
            //                Pay.orderObj.rolename = window.zone.rolename;
            //            }
            //        }

            var supplier_id = cartItemList[0].goodsInfo.iSuppliersId, address = addressList[selectedAddrId];

            var params = {
                //            _app_id:1005,
                //            _plug_id:9500,
                //            _cs:1,
                //            _output_fmt:2,
                _biz_code: bizCode,
                supplier_id: supplier_id,
                cart_ids: selectedCartIds,
                o_price: parseFloat($('#realPaymentView').html())*100,
                w_mobile:address.mobile,
                w_address: address.region+" "+address.detail,
                w_name: address.name,
                w_zip: address.zip,
                w_tel: address.tel,
                areaid:'',
                roleid:'',
                rolename:'',
                buyplat: 9,
                coupon_id: window.selectedCouponId,
                nest_id:'',
                judou_num:0,
                anchor_id: parseInt(milo.cookie.get('anchorid')) || '0',
                remark: $('#isHolidayView').html(),
                awards: selectedAwards,
                source: milo.cookie.get('ADTAG')? milo.cookie.get('ADTAG') : '' // 用于计算订单渠道转化
            }

            var operation = {
                backUrl: location.protocol+'//'+location.host+'/payresult.shtml?serial=',
                buySuccess: function (json) {
                },
                buyFailure: function (json) {
                    comm.alert(json.msg);
                },
                paySuccess: function (json) {
                    window.location = location.protocol+'//'+location.host+'/payresult.shtml?serial=' + json.serial;
                },
                payFailure: function (json) {
                    comm.confirm(json.msg + '，您可以<a style="color:#1994eb;" href="/user/orderlist.shtml">点此查看订单</a>或点击确定按钮重试！', function () {
                        orderModel.midas_qy_pay({
                            _appname: Pay.orderObj._biz_code,
                            serial: json.serial
                        }, operation);
                    });
                },
                payClose: function (json) {
                    window.location = location.protocol+'//'+location.host+ '/payresult.shtml?serial=' + json.serial;
                }
            };
            orderModel.buy(params, operation);
        });
    }


    milo.ready(function () {
//        need(['biz.login'], function (login) {
//            login.checkLogin(function () {

                ajaxAddressRecord(1, function (addressList) {
                    getAwardList(selectedAwards, function (awardIdList, awardList) {
                        ajaxCartGoodsRecord(awardIdList, awardList, function (cartItemList) {
                            if(cartItemList.length > 0) {
                                if(addressList && addressList.length > 0 ){
                                    selectExistsAddress($('.click').attr('value') || addressList[0].id);
                                } // 执行选中操作
                                ajaxCouponRecord(true);
                            }
                        });
                    });
                });

                _init_area(1,"");

    });
//        });
//    });

</script>
<script language="javascript">
    milo.ready(function () {

        window.pingOptions = {'biz': 'lolriotmall','appid': 1005, 'area':2, 'ec':milo.request('ADTAG') || milo.request('CLICKTAG')};

        if(!window.customPing) { 
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
</html>
