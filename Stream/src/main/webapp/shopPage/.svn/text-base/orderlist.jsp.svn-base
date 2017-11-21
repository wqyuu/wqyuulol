<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!--订单列表-->
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
    <script type="text/javascript">
    //查看订单明细
	function openDetailDiv(oid) {
		var detailDiv = document.getElementById("detailDiv_" + oid);
		if (detailDiv.style.display == "block") {
			detailDiv.style.display = "none";
		} else {
			detailDiv.style.display = "block";
		}
	}
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
            <div id="logined" class="fl logined-box clearfix" style="display: none;">
                <span>欢迎您 ,</span>
                <div class="fl login-user clearfix">
                    <span style="display:none" id="login_userFace_span"></span>
                    <span style="display:none" id="login_qq_span"></span>
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
            <!-- 未登录状态 -->
            <a id="unlogin" href="javascript:login();" class="qqlogin">
                <i class="fl ico-menu mqq"></i>
                <span class="mtxt">用QQ账号登录</span>
            </a>
            <a href="/cart.shtml?CLICKTAG=lolriotmall.pc.index.cart" class="menu-cart clearfix">
                <i class="fl ico-menu mcart"></i>
                <span class="mtxt">购物车</span>
                <span id="headerCartNum" class="ico-menu mpoint">0</span>
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
                        <img src="http://js01.daoju.qq.com/zb/lolriotmall/pc/images/wxcode.png" width="83" height="82" alt="微信二维码">
                    </div>
                    <p class="mwx-txt">扫码手机购买</p>
                </div>
            </div>
        </div>
        <div class="top_qqtip">
            QQ登录中<font>...</font>
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
        <form id="searchForm">
            <div class="memright clearf" id="main">
                <!--[if !IE]>常用jquery<![endif]-->
                <h3>我的订单</h3>
                <!--[if !IE]>详情信息<![endif]-->
                <div class="mem_sai clearf">
                    <div class="mem_saileft">
                    </div>
                </div>
                <!--[if !IE]>详情信息end<![endif]-->
                <div class="memtabbar">
                <c:forEach var="order" items="${orderList}">
                    <table class="mermtab" width="100%" cellspacing="0" cellpadding="0" border="0">
                        <thead>
                        <tr>
                            <th class="wleft" width="310">订单号</th>
                            <th width="170"> 时间</th>
                            <th width="154">总金额</th>
                            <th width="186">状态</th>
                            <th width="120">操作</th>
                        </tr>
                        </thead>
                        <tbody id="blk_order_list">
                        <tr>
                            <td>
                               ${order.id }
                            </td>
                           <td class="c999">${order.ODate}</td>
                            <td class="c999">
                                <span>&yen; ${order.total}</span><br>
                               <span class="cff0">已优惠 20 元</span>
                            </td>  
                         <td valign="middle">
                         <font class="c509">待发货</font>
                          </td>
                            <td class="c999"><!-- && order.order.isComment==0 -->
                               <a href="javascript:openDetailDiv(${order.id })" >订单详情</a><br>
                                </td>
                        </tr>
                        </tbody>
                    </table>
                    
             <div id="detailDiv_${order.id }" style="display: none;" class="memtabbar" ><%-- ${order.OId } --%>
				 <table class="mermtab"  border="0" >
					<tr>
						<td colspan="2" class="c999">收货地址:${order.address }</td>
						<td  class="c999">详细：${order.cnee }</td>
						<td  class="c999">电话：${order.phone }</td>
					</tr>
					 <c:forEach var="detail" items="${order.lolOrderdetails}">
						<tr style="font-size: 12px;">
							<td width="100"  class="c999"><img src="./images/${detail.shouban.img }" width="54" height="54"></td>
							<td width="100"  class="c999"><span class="cff0">【${detail.shouban.names}】</span></td>
							<td width="100"  class="c999"><span class="c999">单价 &yen;${detail.shouban.price}</span></td>
							<td width="100"  class="c999"><span class="c999">数量：${detail.PNumber}</span>件</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			</c:forEach>
                    <script type="text/html" id="tmpl_order_list">
                        {if list && list.length}
                        {for item in list}
                        <tr>
                            <td>
                                {for goods in item.sGoodsInfo.list}
                                <div class="member_shop  clearf">
                                    <a class="mem_imglink" href="/detail.shtml?id=${goods.iGoodsId}" title="${goods.sGoodsName}" target="_blank">
                                        <img src="${goods.sGoodsPic}" width="54" height="54">
                                    </a>
                                    <div class="fl">
                                        <!--1满赠 2买赠 3组合 4满减 -1满赠赠品 -2买赠赠品-->
                                        <a class="c333" href="/detail.shtml?id=${goods.iGoodsId}" title="${goods.sGoodsName}" target="_blank">
                                            {if goods.sActType}
                                                {if goods.sActType == 3}
                                                <span class="cff0">【组合】</span>
                                                {elseif goods.sActType == -1}
                                                <span class="cff0">【赠品】</span>
                                                {elseif goods.sActType == -2}
                                                <span class="cff0">【赠品】</span>
                                                {/if}
                                            {/if}
                                            ${goods.sGoodsName}
                                        </a>
                                        {for attr in goods.sAttr}
                                        <span class="c999">${attr.sAttrName}：${attr.sAttrValue}</span>
                                        {/for}
                                        {if goods.sAttr && goods.sAttr.length > 0}<br>{/if}
                                        <span class="c999">单价 &yen;${goods.iCurrPrice/100}</span>
                                        <span class="c999">数量：${goods.iQuantity}</span>
                                    </div>
                                </div>
                                {/for}
                            </td>
                            <td class="c999">${item.sSerialNum}<br>${item.dtBuyTime}</td>
                            <td class="c999">
                                <span>&yen; ${item.payPrice/100}元</span><br>
                                {if item.iStatus == 1 && item.iCouponAmount > 0}<span class="cff0">已优惠 ${item.iCouponAmount/100} 元</span>{/if}
                            </td>
                            <td valign="middle">
                                <font class="c496 lh24">
                                    {if item.iStatus == -2}
                                    <font class="cff0 fb lh24 ">已过期</font>
                                    {elseif item.iStatus == -1}
                                    <font class="cd50 fb lh24">已取消</font>
                                    {elseif item.iStatus == 1}
                                    <font class="cfb6 fb lh24">待付款</font>
                                    {elseif item.iRefundStatus == 1}
                                    <font class="c509">退款中</font>
                                    {elseif item.iRefundStatus == 2}
                                    <font class="c509">已退款</font>
                                    {elseif item.iWaybillStatus < 101}
                                    <font class="c509">待发货</font><br/>
                                    <!--订单支付后24小时内发货-->
                                    {elseif item.iWaybillStatus == 101}
                                    <font class="c509">${item.logisticsCompany}(待收货)</font><br/>
                                    <font class="c999">${item.sWaybillNumber}</font><br/>
                                    <a href="javascript:signOrder('${item.sSerialNum}')" class="c509 unl">确定收货</a>
                                    {elseif item.iWaybillStatus == 102}
                                    <font class="c509">{if item.lCommentStatus == 0}已签收{else}已评价{/if}</font>
                                    {elseif item.iRefundStatus == 103}
                                    <font class="c509">退货中</font>
                                    {elseif item.iRefundStatus == 104}
                                    <font class="c509">退货中</font>
                                    {elseif item.iRefundStatus == 113}
                                    <font class="c509">已退货</font>
                                    {else}
                                    <font class="c509">订单状态异常</font>
                                    {/if}
                                </font><br>
                            </td>
                            <td class="c999"><!-- && order.order.isComment==0 -->
                                {if item.iStatus == 1}
                                <a href="/user/orderdetail.shtml?serial=${item.sSerialNum}" target="_blank">在线支付</a><br>
                                <a href="/user/orderdetail.shtml?serial=${item.sSerialNum}" target="_blank">订单详情</a><br>
                                <!-- /payment.shtml?serial=${item.sSerialNum} -->
                                <a href="javascript:closeOrder('${item.sSerialNum}', ${item.iSupplierId});">取消订单</a>
                                {elseif item.iWaybillStatus == 102}
                                {if item.lCommentStatus == 0}<a target="_blank" href="/user/comment.shtml?serial=${item.sSerialNum}">点评</a><br>{/if}
                                <a href="/user/orderdetail.shtml?serial=${item.sSerialNum}" target="_blank">订单详情</a>
                                {else}
                                <a href="/user/orderdetail.shtml?serial=${item.sSerialNum}" target="_blank">订单详情</a>
                                {/if}
                            </td>
                        </tr>
                        {/for}
                        {/if}
                    </script>
                    <script type="text/html" id="tmpl_order_error">
                        <tr>
                            <td height="50" colspan="5" class="wcenter">${data.msg}</td>
                        </tr>
                    </script>
                    <!--[if !IE]>分页信息<![endif]-->
                    <div id="blk_page_bar" class="pagebar mt20"></div>
                    <script type="text/html" id="tmpl_page_bar">
                        <div class="page ">
                            <!--防止多出一页-->
                            <!--防止无数据情况-->
                            <a class="page_a1" onclick="doPagination(${page.prev});" >上一页</a>
                            {for i in page.list}
                            <a class="page_a2 {if i == page.number} page_a{/if}" onclick="doPagination(${i});" title="第${i}页">${i}</a>
                            {/for}
                            <a class="page_a1" onclick="doPagination(${page.next});" >下一页</a>
                        </div>
                    </script>
                    <div class="meuad" id="userAd">
                    </div>
                </div>
                <a class="mem_add" target="_blank"></a>
                <!--[if !IE]>分页信息<![endif]-->
            </div>
        </form>
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
<script type=text/javascript src=//js01.daoju.qq.com/zb/x5/js/bj-report.min.js></script><script>!function(){BJ_REPORT.init({id:1178,combo:1,delay:100,url:"//badjs2.qq.com/badjs",ignore:[/(Script Error)|(getHtml)|(gamehelper)|(WeixinJSBridge)/i],level:4})}()</script>
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

<script type="text/javascript">

    var STATUS = {
        PAYING: 2,  // 待支付
        SENDING: 3,  // 待发货
        RECEIVING: 4,  // 待收货
        RECEIVED: 5,  // 已收货
        CANCELED: -1, // 已取消
        ABORTED: -2, // 已终止（支付有效期内未支付，自动失效）
        ALL: 9   // 全部
    };

    var curStatus = STATUS.ALL; //当前指定状态
    var pageSize = 10;  // 每页显示条数

    /**
     * 获取订单列表
     *  @param status 订单状态
     *  @param page 页码
     */
    function ajaxTradeRecord(status, page) {

        var url = "http://apps.game.qq.com/daoju/v3/zb/client/order/MyActualOrderList.php?";

        var params = {
            _biz_code: bizCode,
            _output_fmt: '2',
            pn: typeof page == 'undefined' ? 1 : page,
            ps: pageSize,
            newstatus: status
        };

        curStatus = status; // 缓存当前状态

        //alert(pars)
        $.getScript(url + $.param(params), function () {
            var rsp = window.MyActualOrderList;

            console.log('orderList', rsp);

            need(['util.template'], function (template) {
                if (rsp.result == 0) {
                    var list = rsp.data;

//                    if(curStatus == STATUS.RECEIVED || curStatus == STATUS.SERVICE) {
//                        list = [];
//
//                        for (var i in rsp.data) {
//                            if(curStatus == STATUS.RECEIVED && rsp.data[i].iWaybillStatus == 102){
//                                list.push(rsp.data[i]);
//                            } else if(curStatus == STATUS.SERVICE && rsp.data[i].iWaybillStatus != 102){
//                                list.push(rsp.data[i]);
//                            }
//                        }
//                    }

                    if (list && list.length > 0) {
                        $('#blk_order_list').html(template.parseDOMTemplate('tmpl_order_list').process(list, 'list')).fadeIn();
                        renderPager(page, Math.ceil(rsp.total/pageSize));
                    } else {
                        $('#blk_order_list').html(template.parseDOMTemplate('tmpl_order_error').process({msg:'亲爱的召唤师，暂无订单记录！'}, 'data')).fadeIn();
                        $('#blk_page_bar').hide();
                    }
                } else {
                    $('#blk_order_list').html(template.parseDOMTemplate('tmpl_order_error').process(rsp, 'data')).fadeIn();
                    $('#blk_page_bar').hide();
                }
            });
        });
    }

    /**
     * 查看不同状态订单
     * @param status 订单状态
     */
    function doChangeStateOrder(status) {
        $('.mem_saileft').find('a').removeClass('hover');
        $('#detailsHer_' + status).attr('class', 'hover');

        ajaxTradeRecord(status,1);
    }

    /**
     * 分页检索
     * @param page 页码
     */
    function doPagination(page) {
        // 检索
        ajaxTradeRecord(curStatus, page);
    }

    /**
     * 取消订单
     */
    function closeOrder(serial, supplierId) {

        $.prompt('您确定要取消订单吗?', {
            buttons: [{title: '确定', value: true}, {title: '取消', value: false}],
            submit: function (e, result, m, f) {
                if (e) {
                    var url = "http://apps.game.qq.com/daoju/v3/hs/zb_buy.php?";

                    var params = {
                        Act: 'cancel',
                        _biz_code: bizCode,
                        _output_fmt: '2',
                        supplier_id: supplierId,
                        serial_num: serial,
                        cancel_remark: ''
                    };

                    //alert(pars)
                    $.getScript(url + $.param(params), function () {
                        var rsp = window.zb_buy;

                        console.log('closeOrder', rsp);

                        if (rsp.result == 0) {
                            ajaxTradeRecord(curStatus,1);
                        } else {
                            warning(rsp.msg);
                        }
                    });
                }
            }
        });
    }

    /**
     * 确认收货
     * @param serial 订单编号
     */
    function signOrder(serial) {

        $.prompt('你确认收到商品了吗?', {
            buttons: [{title: '确定', value: true}, {title: '取消', value: false}],
            submit: function (result, m, f) {
                if (result) {
                    var url = "http://apps.game.qq.com/daoju/v3/zb/client/order/ReceiveMyActualOrder.php?";

                    var params = {
                        _biz_code: bizCode,
                        _output_fmt: '2',
                        serial: serial
                    };

                    //alert(pars)
                    $.getScript(url + $.param(params), function () {
                        var rsp = window.ReceiveMyActualOrder;

                        console.log('signOrder', rsp);

                        if (rsp.result == 0) {
                            ajaxTradeRecord(curStatus,1);
                        } else {
                            warning(rsp.msg);
                        }
                    });
                }
            }
        });
    }

    milo.ready(function () {
        $('#myOrder').addClass('hover');
        ajaxTradeRecord(STATUS.ALL,1);
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
