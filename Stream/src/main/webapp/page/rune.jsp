<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<base target="_self" />

<title>英雄联盟符文模拟器 - LOL符文模拟器 - 英雄联盟新符文模拟器 - LOL新符文模拟器 - 英雄联盟符文搭配
</title>






<meta name="Keywords" content="英雄联盟符文模拟器,LOL符文模拟器,新符文模拟器,英雄联盟符文加点" />

<meta name="Description" content="178最先更新LOL英雄联盟符文模拟器，适用于美服与国服第二赛季最新版本，介绍最靠谱的英雄符文搭配方案。" />


<!--[if lte IE 8]>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7,chrome=1" />
<![endif]-->
<base target="_blank" />
<script type="text/javascript" src="../js/j152.js"></script>
<script type="text/javascript" src="../js/lib.js"></script>
<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" type="text/css" href="../css/nav.css" />
<link rel="stylesheet" type="text/css" href="../css/reset.css" />
<link rel="stylesheet" type="text/css" href="../css/fun.css" />
<link rel="stylesheet" type="text/css" href="../css/base.css" />

<script type="text/javascript" src="../js/script-global.js"></script>
<script type="text/javascript" src="../js/global-lib.js"></script>
<link rel="shortcut icon" href="../images/favicon.ico">



<!--  <script type="text/javascript" src="http://www.178.com/s/js/j152.js"></script>
<script type="text/javascript" src="http://www.178.com/s/js/lib.js"></script>
<link rel="stylesheet" type="text/css" href="http://www.178.com/s/css/nav.css" />
<link rel="stylesheet" type="text/css" href="http://www.178.com/s/css/reset.css" />
<link rel="stylesheet" type="text/css" href="http://www.178.com/s/css/fun.css" />
<link rel="stylesheet" type="text/css" href="http://www.178.com/s/css/base.css" />

<script type="text/javascript" src="http://www.178.com/s/script-global.js"></script>
<script type="text/javascript" src="http://www.178.com/s/js/global-lib.js"></script>
<link rel="shortcut icon" href="http://cimg.178.com/lol/images/favicon.ico"> -->


<style>
#share{
display:block;
margin-top:5px;
}
	#content{margin:0 auto;overflow: hidden;}
	
	.RuneList li{width:197px;}
	.RuneList li span{width: 154px !important;}
</style>
</head>

<body>
<div id="content">
		<div class="content-top"><div class="content-bot content-tool clearfix">

<!--CONTENT START-->




<div class="RuneMain">
	<div class="Display">
		<div class="fl DisplayList" id="RuneData">
			<!--红色符文-->
			<ul class="Red">
				<li class="li-1"></li>
				<li class="li-2"></li>
				<li class="li-3"></li>
				<li class="li-4"></li>
				<li class="li-5"></li>
				<li class="li-6"></li>
				<li class="li-7"></li>
				<li class="li-8"></li>
				<li class="li-9"></li>
			</ul>
			<!--黄色符文-->

			<ul class="Yellow">
				<li class="li-1"></li>
				<li class="li-2"></li>
				<li class="li-3"></li>
				<li class="li-4"></li>
				<li class="li-5"></li>
				<li class="li-6"></li>
				<li class="li-7"></li>
				<li class="li-8"></li>
				<li class="li-9"></li>
			</ul>
			<!--蓝色符文-->
			<ul class="Blue">
				<li class="li-1"></li>
				<li class="li-2"></li>
				<li class="li-3"></li>
				<li class="li-4"></li>
				<li class="li-5"></li>
				<li class="li-6"></li>
				<li class="li-7"></li>
				<li class="li-8"></li>
				<li class="li-9"></li>
			</ul>
			<!--紫色符文-->
			<ul class="Purple">
				<li class="li-1"></li>
				<li class="li-2"></li>
				<li class="li-3"></li>
			</ul>
			<div class="ght">
				<a href="javascript:void(0);" onClick="del()"><img
						src="../images/241926527420.png"> </a>
				<a id="share" href="#"><img
						src="../images/241926588082.png"> </a>
			</div>
		</div>
		<div class="fr Statistics">
			<!--属性统计-->

			<ul id="Statistics"></ul>
			<!--IP统计-->
			<p id="RuneIP"></p>
		</div>
	</div>
	<div class="Clear" id="Select">
		<div class="RuneNavBox">
			<ol class="fl RuneNav">
				<li data-v="Red" class="hover">
					<a href="javascript:;" class="a-1">红色印记</a>
				</li>

				<li data-v="Yellow">
					<a href="javascript:;" class="a-2">黄色符文</a>
				</li>
				<li data-v="Blue">
					<a href="javascript:;" class="a-3">蓝色雕文</a>
				</li>
				<li data-v="Purple">
					<a href="javascript:;" class="a-4">紫色精华</a>
				</li>
			</ol>
			<dl class="fr LevelDl" id="Level">
				<dt>
					<em>修改召唤师等级：30</em><s></s>
				</dt>
				<dd>

					<ul>
						<li>
							1
						</li>
						<li>
							2
						</li>
						<li>
							3
						</li>
						<li>
							4
						</li>
						<li>
							5
						</li>
						<li>
							6
						</li>
						<li>
							7
						</li>
						<li>
							8
						</li>
						<li>
							9
						</li>
						<li>
							10
						</li>
						<li>
							11
						</li>
						<li>
							12
						</li>
						<li>
							13
						</li>
						<li>
							14
						</li>
						<li>
							15
						</li>
						<li>
							16
						</li>
						<li>
							17
						</li>
						<li>
							18
						</li>
						<li>
							19
						</li>
						<li>
							20
						</li>
						<li>
							21
						</li>
						<li>
							22
						</li>
						<li>
							23
						</li>
						<li>
							24
						</li>
						<li>
							25
						</li>
						<li>
							26
						</li>
						<li>
							27
						</li>
						<li>
							28
						</li>
						<li>
							29
						</li>
						<li class="hover">
							30
						</li>
					</ul>

				</dd>
			</dl>
		</div>
		<div class="Select">
			<dl>
				<dt>
					按等级：
				</dt>
				<dd>
					<ol id="ovs">
						<li data-v="1">
							初级
						</li>
						<li data-v="2">
							中级
						</li>
						<li data-v="3" class="hover">
							高级
						</li>
					</ol>
				</dd>

			</dl>
			<dl>
				<dt>
					按效果：
				</dt>
				<dd>
<ol>
						<li data-v="0" class="hover">
							全部
						</li>
						<li data-v="1">
							技能
						</li>
						<li data-v="2">
							防御
						</li>
						<li data-v="3">
							生命
						</li>
						<li data-v="4">
							法力
						</li>
						<li data-v="5">
							攻击
						</li>
						<li data-v="6">
							功能
						</li>
					</ol>
				</dd>
			</dl>

			<!--
<dl>
<dt>召唤师等级：</dt>
<dd><ol id="LvList"><li>1</li><li>2</li><li>3</li><li>4</li><li>5</li><li>6</li><li>7</li><li>8</li><li>9</li><li>10</li><li>11</li><li>12</li><li>13</li><li>14</li><li>15</li><li>16</li><li>17</li><li>18</li><li>19</li><li>20</li><li>21</li><li>22</li><li>23</li><li>24</li><li>25</li><li>26</li><li>27</li><li>28</li><li>29</li><li class="hover">30</li></ol></dd>
</dl>
-->
		</div>
		<!--符文列表-->
		<ul class="RuneList" id="RuneList"></ul>
		<div class="HoverData"></div>

	</div>
</div>

<!-- 
<script src="http://cimg.178.com/lol/images/icon/js/rune/data.js"></script>
<script src="http://cimg.178.com/lol/images/icon/js/rune/rune.js"></script>
 -->
<script src="../js/data.new.js"></script>
<script src="../js/rune.new.js"></script>
<!--CONTENT END-->

		</div></div>



	</div>
<script src="../js/php12.js" language="JavaScript" charset="utf-8"></script>
<script src="../js/php53.js" language="javascript" charset="utf-8"></script>






<script src="../js/php52.js" language="javascript" charset="utf-8"></script>
<script src="../js/php53.js" language="javascript" charset="utf-8"></script>

</body>
</html>
