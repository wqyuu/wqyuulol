<%@ page language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
  <link href="../csss/store.css" rel="stylesheet">
</head>
<nav class="navbar navbar-inverse">
    <div class="container-fluid headheight">
        <div class="col-md-offset-3">
            <div class="navbar-header">
                <a href="http://localhost:8080/Stream/game/findAllgame.do">
                    <img alt="Brand" src="../image/logo.jpg" width="90" height="60">
                </a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="http://localhost:8080/Stream/game/findAllgame.do">商城</a>
                    </li>
                    <li class="navbar-form">
                     <form action="${pageContext.request.contextPath}/jsp/game.html" method="get">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search" id="tag" name="tag">
                        </div>
                        <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                    </form>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <c:choose>
                        <c:when test="${user == null}">
                            <li><a href="../jsp/login.jsp" >登录</a></li>
                            <li><a href="../jsp/register.jsp" >注册</a></li>
                        </c:when>
                        <c:otherwise>
                            <li><a href="${pageContext.request.contextPath}/user/personal.do?id=${user.id}">${user.username}     您好</a></li>
                            <li><a href="${pageContext.request.contextPath}/jsp/shoppingcart.jsp">购物车</a></li>
                            <li><a href="${pageContext.request.contextPath}/user/logout.do" >退出</a></li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </div>
        </div>
        <div class="responsive_store_nav_ctn_spacer"><div id="store_header" class="">
		<div class="content">
			<div id="store_controls">
				<div id="cart_status_data">
																					<div class="store_header_btn_green store_header_btn" id="store_header_cart_btn" style="display: none;">
							<div class="store_header_btn_caps store_header_btn_leftcap"></div>
							<div class="store_header_btn_caps store_header_btn_rightcap"></div>
							<a id="cart_link" class="store_header_btn_content" href="http://store.steampowered.com/cart/?snr=1_4_4__12">
								购物车								(<span id="cart_item_count_value">0</span>)
							</a>
						</div>
									</div>
			</div>
							<div id="store_nav_area">
					<div class="store_nav_leftcap"></div>
					<div class="store_nav_bg">
						<div class="store_nav">

													<div class="tab  flyout_tab" id="foryou_tab" data-flyout="foryou_flyout" data-flyout-align="left" data-flyout-valign="bottom" onmouseover="EnsureStoreMenuTagsLoaded( '#foryou_yourtags' );">
								<span class="pulldown">
									<a class="pulldown_desktop" href="http://store.steampowered.com/?snr=1_4_4__12">您的商店</a>
									<span></span>
								</span>
							</div>
							<div class="popup_block_new flyout_tab_flyout responsive_slidedown" id="foryou_flyout" style="visibility: visible; top: 42px; left: 0px; display: none; opacity: 1;">
								<div class="popup_body popup_menu">
									<a class="popup_menu_item" href="http://store.steampowered.com/?snr=1_4_4__12">
										商店主页									</a>
									<div class="hr"></div>
									<a class="popup_menu_item" href="http://store.steampowered.com/recommended/?snr=1_4_4__12">
										最近查看过的									</a>
									<a class="popup_menu_item" href="http://store.steampowered.com/curators/topcurators/?snr=1_4_4__12">
										Steam 鉴赏家									</a>
									<a class="popup_menu_item" href="http://store.steampowered.com/updated/all/?snr=1_4_4__12">
										最近更新									</a>
								</div>
							</div>
						

															<div class="tab  flyout_tab" id="genre_tab" data-flyout="genre_flyout" data-flyout-align="left" data-flyout-valign="bottom">
									<span class="pulldown">
										<a class="pulldown_desktop" href="http://store.steampowered.com/games/?snr=1_4_4__12">游戏</a>
										<a class="pulldown_mobile" href="#">游戏</a>
										<span></span>
									</span>
								</div>
								<div class="popup_block_new flyout_tab_flyout responsive_slidedown" id="genre_flyout" style="visibility: visible; top: 42px; left: 104.833px; display: none; opacity: 0.661959;">
									<div class="popup_body popup_menu">
																																											<a class="popup_menu_item" href="http://store.steampowered.com/genre/Free%20to%20Play/?snr=1_4_4__12">
													免费游玩												</a>
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																<a class="popup_menu_item" href="http://store.steampowered.com/genre/Early%20Access/?snr=1_4_4__12">
													抢先体验												</a>
																																																																																																																																																																																																																																																	<a class="popup_menu_item" href="http://store.steampowered.com/freestuff/demos/?snr=1_4_4__12">
											<span>试玩</span>
										</a>
										<a class="popup_menu_item" href="http://store.steampowered.com/vr/?snr=1_4_4__12">
											<span>虚拟现实</span>
										</a>
										<a class="popup_menu_item" href="http://store.steampowered.com/controller/?snr=1_4_4__12">
											<span>可支持 Steam 控制器</span>
										</a>
										<div class="hr"></div>
										<div class="popup_menu_subheader">按类型浏览：</div>

																																																						<a class="popup_menu_item" href="http://store.steampowered.com/tag/zh-cn/%E4%BC%91%E9%97%B2/?snr=1_4_4__12">
													休闲												</a>
																																												<a class="popup_menu_item" href="http://store.steampowered.com/tag/zh-cn/%E4%BD%93%E8%82%B2/?snr=1_4_4__12">
													体育												</a>
																																																																	<a class="popup_menu_item" href="http://store.steampowered.com/tag/zh-cn/%E5%86%92%E9%99%A9/?snr=1_4_4__12">
													冒险												</a>
																																												<a class="popup_menu_item" href="http://store.steampowered.com/tag/zh-cn/%E5%8A%A8%E4%BD%9C/?snr=1_4_4__12">
													动作												</a>
																																												<a class="popup_menu_item" href="http://store.steampowered.com/tag/zh-cn/%E5%A4%A7%E5%9E%8B%E5%A4%9A%E4%BA%BA%E5%9C%A8%E7%BA%BF/?snr=1_4_4__12">
													大型多人在线												</a>
																																												<a class="popup_menu_item" href="http://store.steampowered.com/tag/zh-cn/%E6%A8%A1%E6%8B%9F/?snr=1_4_4__12">
													模拟												</a>
																																												<a class="popup_menu_item" href="http://store.steampowered.com/tag/zh-cn/%E7%8B%AC%E7%AB%8B/?snr=1_4_4__12">
													独立												</a>
																																												<a class="popup_menu_item" href="http://store.steampowered.com/tag/zh-cn/%E7%AB%9E%E9%80%9F/?snr=1_4_4__12">
													竞速												</a>
																																												<a class="popup_menu_item" href="http://store.steampowered.com/tag/zh-cn/%E7%AD%96%E7%95%A5/?snr=1_4_4__12">
													策略												</a>
																																												<a class="popup_menu_item" href="http://store.steampowered.com/tag/zh-cn/%E8%A7%92%E8%89%B2%E6%89%AE%E6%BC%94/?snr=1_4_4__12">
													角色扮演												</a>
																					
										<div class="hr"></div>
										<a class="popup_menu_item" href="http://store.steampowered.com/tag/browse/?snr=1_4_4__12">
											查看热门标签										</a>
										<div class="hr"></div>
										<div class="popup_menu_subheader">按平台浏览：</div>
										<a class="popup_menu_item" href="http://store.steampowered.com/macos?snr=1_4_4__12">
											Mac OS X										</a>
										<a class="popup_menu_item" href="http://store.steampowered.com/linux?snr=1_4_4__12">
											SteamOS + Linux										</a>
									</div>
								</div>
							
							<div class="tab  flyout_tab" id="software_tab" data-flyout="software_flyout" data-flyout-align="left" data-flyout-valign="bottom">
								<span class="pulldown">
									<a class="pulldown_desktop" href="http://store.steampowered.com/software/?snr=1_4_4__12">软件</a>
									<a class="pulldown_mobile" href="#">软件</a>
									<span></span>
								</span>

							</div>
							<div class="popup_block_new flyout_tab_flyout responsive_slidedown" id="software_flyout" style="visibility: visible; top: 42px; left: 183.667px; display: none; opacity: 1;">
								<div class="popup_body popup_menu">
									<a class="popup_menu_item" href="http://store.steampowered.com/software/?snr=1_4_4__12">
										软件中心									</a>
									<div class="hr"></div>
																			<a class="popup_menu_item" href="http://store.steampowered.com/tag/zh-cn/%E5%8A%A8%E7%94%BB%E5%88%B6%E4%BD%9C%E8%88%87%E5%BB%BA%E6%A8%A1/?snr=1_4_4__12">
											动画制作與建模										</a>
																			<a class="popup_menu_item" href="http://store.steampowered.com/tag/zh-cn/%E5%AE%9E%E7%94%A8%E5%B7%A5%E5%85%B7/?snr=1_4_4__12">
											实用工具										</a>
																			<a class="popup_menu_item" href="http://store.steampowered.com/tag/zh-cn/%E6%95%99%E8%82%B2/?snr=1_4_4__12">
											教育										</a>
																			<a class="popup_menu_item" href="http://store.steampowered.com/tag/zh-cn/%E6%B8%B8%E6%88%8F%E5%BC%80%E5%8F%91/?snr=1_4_4__12">
											游戏开发										</a>
																			<a class="popup_menu_item" href="http://store.steampowered.com/tag/zh-cn/%E7%85%A7%E7%89%87%E7%BC%96%E8%BE%91/?snr=1_4_4__12">
											照片编辑										</a>
																			<a class="popup_menu_item" href="http://store.steampowered.com/tag/zh-cn/%E7%BD%91%E7%BB%9C%E5%87%BA%E7%89%88/?snr=1_4_4__12">
											网络出版										</a>
																			<a class="popup_menu_item" href="http://store.steampowered.com/tag/zh-cn/%E8%A7%86%E9%A2%91%E5%88%B6%E4%BD%9C/?snr=1_4_4__12">
											视频制作										</a>
																			<a class="popup_menu_item" href="http://store.steampowered.com/tag/zh-cn/%E8%AE%BE%E8%AE%A1%E4%B8%8E%E6%8F%92%E7%94%BB/?snr=1_4_4__12">
											设计与插画										</a>
																			<a class="popup_menu_item" href="http://store.steampowered.com/tag/zh-cn/%E9%9F%B3%E9%A2%91%E5%88%B6%E4%BD%9C/?snr=1_4_4__12">
											音频制作										</a>
									
								</div>
							</div>

							<div class="tab  flyout_tab" id="hardware_tab" data-flyout="hardware_flyout" data-flyout-align="left" data-flyout-valign="bottom">
								<span class="pulldown">
									<a class="pulldown_desktop" href="http://store.steampowered.com/hardware/?snr=1_4_4__12">硬件</a>
									<a class="pulldown_mobile" href="#">硬件</a>
									<span></span>
								</span>

							</div>
							<div class="popup_block_new flyout_tab_flyout responsive_slidedown" id="hardware_flyout" style="visibility: visible; top: 42px; left: 262.5px; display: none; opacity: 0.383277;">
								<div class="popup_body popup_menu">
									<a class="popup_menu_item" href="http://store.steampowered.com/app/353370/?snr=1_4_4__12">
										Steam 控制器									</a>
									<a class="popup_menu_item" href="http://store.steampowered.com/app/353380/?snr=1_4_4__12">
										Steam 流式盒									</a>
									<a class="popup_menu_item" href="http://store.steampowered.com/hardware/?snr=1_4_4__12#Machines">
										Steam 主机									</a>
									<a class="popup_menu_item" href="http://store.steampowered.com/app/358040/?snr=1_4_4__12">
										HTC Vive									</a>
								</div>
							</div>

							<div class="tab  flyout_tab" id="videos_tab" data-flyout="videos_flyout" data-flyout-align="left" data-flyout-valign="bottom">
								<span class="pulldown">
									<a class="pulldown_desktop" href="http://store.steampowered.com/videos/?snr=1_4_4__12">视频</a>
									<a class="pulldown_mobile" href="#">视频</a>
									<span></span>
								</span>

							</div>
							<div class="popup_block_new flyout_tab_flyout responsive_slidedown" id="videos_flyout" style="visibility: visible; top: 42px; left: 341.333px; display: none; opacity: 0.35298;">
								<div class="popup_body popup_menu">
									<a class="popup_menu_item" href="http://store.steampowered.com/videos/?snr=1_4_4__12">
										视频中心									</a>
									<div class="hr"></div>
									<div class="popup_menu_subheader">按类型浏览：</div>
																			<a class="popup_menu_item" href="http://store.steampowered.com/search/?snr=1_4_4__12#category1=992&amp;sort_by=Released_DESC&amp;page=1&amp;tags=4700">
											电影										</a>
																			<a class="popup_menu_item" href="http://store.steampowered.com/search/?snr=1_4_4__12#category1=992&amp;sort_by=Released_DESC&amp;page=1&amp;tags=4242">
											章节式										</a>
																			<a class="popup_menu_item" href="http://store.steampowered.com/search/?snr=1_4_4__12#category1=992&amp;sort_by=Released_DESC&amp;page=1&amp;tags=15339">
											纪录片										</a>
																			<a class="popup_menu_item" href="http://store.steampowered.com/search/?snr=1_4_4__12#category1=992&amp;sort_by=Released_DESC&amp;page=1&amp;tags=150626">
											游戏										</a>
																			<a class="popup_menu_item" href="http://store.steampowered.com/search/?snr=1_4_4__12#category1=992&amp;sort_by=Released_DESC&amp;page=1&amp;tags=12057">
											教程										</a>
																			<a class="popup_menu_item" href="http://store.steampowered.com/search/?snr=1_4_4__12#category1=992&amp;sort_by=Released_DESC&amp;page=1&amp;tags=4234">
											短片										</a>
									
									<div class="hr"></div>
									<div class="popup_menu_subheader">按类型浏览：</div>
																			<a class="popup_menu_item" href="http://store.steampowered.com/search/?snr=1_4_4__12#category1=992&amp;sort_by=Released_DESC&amp;page=1&amp;tags=19">
											动作										</a>
																			<a class="popup_menu_item" href="http://store.steampowered.com/search/?snr=1_4_4__12#category1=992&amp;sort_by=Released_DESC&amp;page=1&amp;tags=4085">
											日本动画										</a>
																			<a class="popup_menu_item" href="http://store.steampowered.com/search/?snr=1_4_4__12#category1=992&amp;sort_by=Released_DESC&amp;page=1&amp;tags=1719">
											欢乐										</a>
																			<a class="popup_menu_item" href="http://store.steampowered.com/search/?snr=1_4_4__12#category1=992&amp;sort_by=Released_DESC&amp;page=1&amp;tags=5984">
											剧情										</a>
																			<a class="popup_menu_item" href="http://store.steampowered.com/search/?snr=1_4_4__12#category1=992&amp;sort_by=Released_DESC&amp;page=1&amp;tags=1667">
											恐怖										</a>
																			<a class="popup_menu_item" href="http://store.steampowered.com/search/?snr=1_4_4__12#category1=992&amp;sort_by=Released_DESC&amp;page=1&amp;tags=3942">
											科幻										</a>
																	</div>
							</div>

							<a class="tab  " href="http://store.steampowered.com/news/?snr=1_4_4__12">
								<span>新闻</span>
							</a>

							<div class="search_area">
								<div id="store_search">
									<form id="searchform" name="searchform" method="get" action="http://store.steampowered.com/search/" onsubmit="return SearchSuggestCheckTerm(this);">
										<input name="snr" value="1_4_4__12" type="hidden">
										<div class="searchbox">
											<input id="store_nav_search_term" name="term" class="default" placeholder="搜索商店" size="22" autocomplete="off" type="text">
											<a href="#" id="store_search_link" onclick="var $Form = $J(this).parents('form'); $Form.submit(); return false;"><img src="http://store.akamai.steamstatic.com/public/images/blank.gif"></a>
										</div>
									</form>
								</div>
								<div id="searchterm_options" class="search_suggest popup_block_new" style="display: none;">
									<div class="popup_body" style="border-top: none;">
										<div id="search_suggestion_contents">
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
					<div class="store_nav_rightcap"></div>
				</div>
					</div>
	</div>
	</div>
    </div>
</nav>
