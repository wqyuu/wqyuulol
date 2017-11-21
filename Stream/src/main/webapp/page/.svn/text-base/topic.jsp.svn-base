<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> Discuz! Board -  Powered by Discuz!</title>

<meta name="keywords" content="" />
<meta name="description" content=",Discuz! Board" />
<meta name="generator" content="Discuz! X2.5" />
<meta name="author" content="Discuz! Team and Comsenz UI Team" />
<meta name="copyright" content="2001-2012 Comsenz Inc." />
<meta name="MSSmartTagsPreventParsing" content="True" />
<meta http-equiv="MSThemeCompatible" content="Yes" />
<base href="http://bbs.lol.qq.com/" /><link rel="stylesheet" type="text/css" href="data/cache/style_6c2b1db9_9_common.css?Tu9" /><script type="text/javascript">var STYLEID = '1', STATICURL = 'static/', IMGDIR = 'static/image/common/', VERHASH = 'fXX', charset = 'utf-8', discuz_uid = '0', cookiepre = 'KsUB_2132_', cookiedomain = '', cookiepath = '/', showusercard = '1', attackevasive = '0', disallowfloat = 'newthread', creditnotice = '1|����|,2|��Ǯ|,3|����|', defaultstyle = '', REPORTURL = 'aHR0cDovL2xvY2FsaG9zdC94MjUvcGx1Z2luLnBocD9pZD10dDp0', SITEURL = 'http://bbs.lol.qq.com/', JSPATH = 'static/js/', cssPre = '6c2b1db9';</script>
<script src="./js/common.js" type="text/javascript"></script>
<script src="./js/topic.js" type="text/javascript"></script>
<meta name="application-name" content="Discuz! Board" />
<meta name="msapplication-tooltip" content="Discuz! Board" />
<meta name="msapplication-task" content="name=��̳��ҳ;action-uri=http://bbs.lol.qq.com/forum.php;icon-uri=http://bbs.lol.qq.com/static/image/common/bbs.ico" />
<link rel="stylesheet" id="css_index" type="text/css" href="./css/default.css" />
</head>

<body id="nv_plugin" class="pg_tt" onkeydown="if(event.keyCode==27) return false;">
<div id="append_parent"></div><div id="ajaxwaitid"></div>
<style type="text/css">html{overflow:auto;}.m_c .tedt {width:450px;}</style>
<script type="text/javascript">var tid = parseInt('4298035');var qtHeight=0;</script>
<script src="./forum.js" type="text/javascript"></script>
<script src="./js/forum_viewthread.js" type="text/javascript"></script>
<script type="text/javascript" src="./js/jquery-1.8.3.min.js"></script>
<!--<script type="text/javascript" src="http://localhost/jquery.mobile/demos/js/jquery.js"></script>-->
<script type="text/javascript">
var jq = jQuery.noConflict(); 
zoomstatus = parseInt(1);var imagemaxwidth = '600';var aimgcount = new Array();
var disablepostctrl = 0;
var postminchars = 10;
var postmaxchars = 10000;
var popHeight = 0;
</script>

<div class="wp">
<div class="pcomhd mbn" style=""><span class="y" id="count">(0��)</span>����ظ�</div>
<div id="f_pst" class="pncomment pl" style="">
<form method="post" autocomplete="off" id="fastpostform" action="forum.php?mod=post&action=reply&&tid=4298035&replysubmit=yes&infloat=yes&handlekey=fastpost&outframe=yes&act_id=1" onSubmit="var formPoint = getAbsPoint(this); popHeight = formPoint['y'];fastpostvalidate(this);return false;">
<table cellspacing="0" cellpadding="0">
<tr>
<td>

<span id="fastpostreturn"></span>
<div class="cl"><div id="fastposteditor">
<div class="tedt mtn">
<div class="bar"><script src="static/js/seditor.js?fXX" type="text/javascript"></script>
<div class="fpd">
<a href="javascript:;" class="fsml" id="fastpostsml">Smilies</a>
</div></div>
<div class="area">
<div class="pt hm">
 55555<a href="member.php?mod=logging&action=login&outframe=yes" onclick="showWindow('login', this.href,'get','',{'height':50})" class="xi2">555</a>
</div>
</div>
</div></div>
</div>

<input type="hidden" name="formhash" value="fa07be66" />
<input type="hidden" name="usesig" value="" />
<input type="hidden" name="subject" value="  " />
<input type="hidden" name="mobileqqnotice" value="1" />
<div class="ptm pnpost cl"><button type="submit" id="fastpostsubmit" name="replysubmit" class="pn pnc xs2 vm y" value="replysubmit"  onclick="showWindow('login', 'member.php?mod=logging&action=login&outframe=yes','get','',{'height':50})"tabindex="5">提交</button>
</div>
</td>
</tr>
</table>
</form>
</div>
</div>
<div class="wp mtw plbox cl" id="replylist">
<div class="plhd cl">
<ul>
	<li class="on" style="margin-left:20px;"><a href="javascript:;" id="hotpost">最热评论</a></li>
	<li ><a href="javascript:;" id="newpost">最近评论</a></li>
<li class="more"><a href="forum.php?mod=viewthread&tid=4298035" target="_blank">更多</a></li>
</ul>
</div>
<div class="plbody" id="postlist">


</div>
<div class="mitems" id="more" style="display:none;"><a href="javascript:;" onclick="viewThread(4298035, this.getAttribute('page'), this.getAttribute('filter')); return false;" id="morea" page="1" filter="">而且</a></div>
</div>

<script type="text/javascript" reload="1">
var perpage = 30;
var _f = 'hot';
var ctab = 0;
function viewThread(tid, page, filter) {
	page = parseInt(page);
	page = page <= 0 ? 1 : page;
	filter = filter == 'hot' ? 'hot' : '';
	ctab = _f == filter ? 0 : 1;
	_f = filter;
	if(page == 1) {jq('#postlist').html('');}
	var url = 'http://bbs.lol.qq.com/reply2.json?tid='+tid+'&page='+page+'&order='+filter;
	$('morea').setAttribute('filter', filter);
	jq('.plbody').height(200);
	jq.getJSON(url+'&rand='+Math.random(), function(data){makeView(data);});
}

function makeView(data) {
	jq('.plbody').height('auto');
	var html = "";
	for(var i = 0;i < data.length;i++){
		if(i == 0) {
			$('count').innerHTML = '(<span style="color:#00A481">'+data[i]['replysum']+'</span>��)';
			continue;
		}

		var reg = /<font size="\d">/gi;
                data[i]['message'] = data[i]['message'].replace(reg, '<font>');
                var reg = /<img(?![^<>]*?smilieid[^<>]*?>).*?>/gi;
                data[i]['message'] = data[i]['message'].replace(reg, '');

		if(isUndefined(data[i]['groupicon'])) { data[i]['groupicon'] = 'static/image/common/online_member.gif'; }
		if(isUndefined(data[i]['hot'])) { data[i]['hot'] = 0; }
		if(isUndefined(data[i]['groupid'])) { data[i]['groupid'] = 0; }
		html += '<div class="comment cl">';
		html += '<span class="avatar z"><a href="home.php?mod=space&uid='+data[i]['authorid']+'" target="_blank"><img src="'+data[i]['avatar']+'"></a></span>';
		html += '<div class="coitem"> <span class="lar"></span> <div class="authi">';
		html += '<span class="y">';
		if(data[i]['groupid'] == 2) {
			html += '<img src="static/image/common/newsgroup_1.jpg" class="vm">&nbsp;';
		} else if(data[i]['groupid'] == 53) {
			html += '<img src="static/image/common/newsgroup_2.jpg" class="vm">&nbsp;';
		}
		html += '<em>������ '+data[i]['dateline']+'</em></span>';
		html += '<a href="home.php?mod=space&uid='+data[i]['authorid']+'" target="_blank" class="pname xs2">'+data[i]['author']+'</a>';
		html += '</div> <div class="connby mtm"> '+data[i]['message']+' </div> </div> <div class="pob cl">';
		html += '<em><a href="javascript:;" class="czan z"><span class="h-ul">��</span> <span class="nums" id="'+parseInt(data[i]['pid'])+'">'+parseInt(data[i]['hot'])+'</span></a><span class="pipe">|</span>';
		html += '<a onclick="showWindow(\'reply\', this.href,\'get\',\'\',{\'height\':popHeight=getAbsPoint(this)[\'y\'] + 370 > document.documentElement.scrollHeight ? document.documentElement.scrollHeight - 400 : getAbsPoint(this)[\'y\']});" href="forum.php?mod=post&action=reply&tid=4298035&outframe=yes&act_id=1&repquote='+parseInt(data[i]['pid'])+'&extra=&page=1" class="fastre"><span class="h-ul">�ظ�</span></a></em>';
		html += '</div></div>';
	}
	if(data.length >= perpage + 1) {
		$('more').style.display="block";
		if(ctab) {
			$('morea').setAttribute('page', 2); 
			ctab = 0;
		} else {
			$('morea').setAttribute('page', parseInt($('morea').getAttribute('page'))+1); 
		}
	} else {
		$('more').style.display="none";
	}
	
	jq('#postlist').append(html);
	changeHeight();
	makeClick();
}

function ajaxReply(json) {
	if(isUndefined(json['groupicon'])) { json['groupicon'] = 'static/image/common/online_member.gif'; }
	if(isUndefined(json['hot'])) { json['hot'] = 0; }
	var html = '';
	html += '<div class="comment cl">';
	html += '<span class="avatar z"><a href="home.php?mod=space&uid='+json['authorid']+'" target="_blank"><img src="'+json['avatar']+'"></a></span>';
	html += '<div class="coitem"> <span class="lar"></span> <div class="authi">';
	html += '<span class="y"><em>������ '+json['dateline']+'</em></span>';
	html += '<a href="home.php?mod=space&uid='+json['authorid']+'" target="_blank" class="pname xs2">'+json['author']+'</a>';
	html += '</div> <div class="connby mtm"> '+json['message']+' </div> </div> <div class="pob cl">';
	html += '<em><a href="javascript:;" class="czan z"><span class="h-ul">��</span> <span class="nums" id="'+parseInt(json['pid'])+'">'+parseInt(json['hot'])+'</span></a><span class="pipe">|</span>';
	html += '<a onclick="showWindow(\'reply\', this.href,\'get\',\'\',{\'height\':popHeight=getAbsPoint(this)[\'y\'] + 370 > document.documentElement.scrollHeight ? document.documentElement.scrollHeight - 400 : getAbsPoint(this)[\'y\']})" href="forum.php?mod=post&action=reply&tid=4298035&outframe=yes&act_id=1&reppost='+parseInt(json['pid'])+'&extra=&page=1" class="fastre"><span class="h-ul">�ظ�</span></a></em>';
	html += '</div></div>';
	jq('#postlist').prepend(html);
}
$('hotpost').onclick = function(){$('hotpost').parentNode.className='on';$('newpost').parentNode.className='';viewThread(4298035, 1, 'hot');};
$('newpost').onclick = function(){$('newpost').parentNode.className='on';$('hotpost').parentNode.className='';viewThread(4298035, 1)};

function getCookie(objName){
    var arrStr = document.cookie.split("; ");
    for(var i = 0;i < arrStr.length;i ++){
        var temp = arrStr[i].split("=");
        if(temp[0] == objName) return unescape(temp[1]);
    } 
}

function getToken() {
    var hash=5381;
    var str = getCookie("skey");
    if(str==null||typeof(str)=="undefined"){
        str="";
    }

    for(var i=0,len=str.length;i<len;++i){
        hash+=(hash<<5&0x7fffffff)+str.charCodeAt(i)

    }
    return hash&0x7fffffff
}

function makeClick() {
jq('.pob>em>.czan').unbind('click');
jq('.pob>em>.czan').click(function(){
pid = this.childNodes[2].id;
var gtk = getToken();
jq.getJSON('http://bbs.lol.qq.com/plugin.php?id=qt:misc&action=up&tid=4298035&pid='+pid+'&g_tk='+gtk, 
function(data){
if(!data['code']){
	var node = $(pid);
	var num = parseInt(node.innerHTML)+1;
	node.parentNode.style.background="none";
	node.parentNode.innerHTML = '�Ѷ� <span class="nums" style="background-color:#ccc;">'+num+'</span>';
}else if(data['code'] == 404) {
	alert('���Ӳ�����');//showDialog('���Ӳ�����','','','',false);
}else if(data['code'] == 1) {
	alert('���Ѿ������� ');//showDialog('���Ѿ������� ','','','',false);
}
});
jq($(pid).parentNode).unbind('click');return false});
}var started = 0;
var proxy_hash = Math.random();
function startRequest(){
return;
    var ifr = document.createElement('iframe');
	ifr.style.height='0';
	ifr.style.border='none';
    ifr.src = 'http://lol.qq.com/commenton/proxy.html?'+proxy_hash;
    ifr.id = 'proxy';
    document.body.appendChild(ifr);
}
function changeHeight() {
	var hashH = document.documentElement.scrollHeight;
	if(qtHeight != hashH){
		qtHeight = hashH;
		document.getElementById("proxy").src="page/proxy.jsp";//+"#"+hashH;
	}
}
viewThread(4298035, 1, 'hot');
function getAbsPoint (e){
 var x = e.offsetLeft;
 var y = e.offsetTop;
 while(e = e.offsetParent){
x += e.offsetLeft;
y += e.offsetTop;
 }
 return {"x": x, "y": y};
}
function showWindow(k, url, mode, cache, menuv) {
	mode = isUndefined(mode) ? 'get' : mode;
	cache = isUndefined(cache) ? 1 : cache;
	var menuid = 'fwin_' + k;
	var menuObj = $(menuid);
	var drag = null;
	var loadingst = null;
	var hidedom = '';
	var qt_type = k;

	if(disallowfloat && disallowfloat.indexOf(k) != -1) {
		if(BROWSER.ie) url += (url.indexOf('?') != -1 ?  '&' : '?') + 'referer=' + escape(location.href);
		location.href = url;
		doane();
		return;
	}

	var fetchContent = function() {
		if(mode == 'get') {
			menuObj.url = url;
			url += (url.search(/\?/) > 0 ? '&' : '?') + 'infloat=yes&handlekey=' + k;
			url += cache == -1 ? '&t='+(+ new Date()) : '';
			if(BROWSER.ie &&  url.indexOf('referer=') < 0) {
				url = url + '&referer=' + encodeURIComponent(location);
			}
			ajaxget(url, 'fwin_content_' + k, null, '', '', function() {initMenu();show();
				if(qt_type=='reply'){
					var postsubmitObj=document.getElementById("postsubmit");
					if(postsubmitObj!=null) postsubmitObj.setAttribute("onclick", "if(typeof(pgvSendClickQt)!='undefined'){var tag1='BBS.LOL.TOPIC.NEWREPLY';pgvSendClickQt({hottag:tag1});}");
				}
			});
		} else if(mode == 'post') {
			menuObj.act = $(url).action;
			ajaxpost(url, 'fwin_content_' + k, '', '', '', function() {initMenu();show();});
		}
		if(parseInt(BROWSER.ie) != 6) {
			loadingst = setTimeout(function() {showDialog('', 'info', '<img src="' + IMGDIR + '/loading.gif"> ���Ժ�...')}, 500);
		}
	};
	var initMenu = function() {
		clearTimeout(loadingst);
		var objs = menuObj.getElementsByTagName('*');
		var fctrlidinit = false;
		for(var i = 0; i < objs.length; i++) {
			if(objs[i].id) {
				objs[i].setAttribute('fwin', k);
			}
			if(objs[i].className == 'flb' && !fctrlidinit) {
				if(!objs[i].id) objs[i].id = 'fctrl_' + k;
				drag = objs[i].id;
				fctrlidinit = true;
			}
		}
	};
	var show = function() {
		hideMenu('fwin_dialog', 'dialog');
		v = {'mtype':'win','menuid':menuid,'duration':3,'pos':'00','zindex':JSMENU['zIndex']['win'],'drag':typeof drag == null ? '' : drag,'cache':cache};
		for(k in menuv) {
			v[k] = menuv[k];
		}
		showMenu(v);
	};

	if(!menuObj) {
		menuObj = document.createElement('div');
		menuObj.id = menuid;
		menuObj.className = 'fwinmask';
		menuObj.style.display = 'none';
		$('append_parent').appendChild(menuObj);
		evt = ' style="" onmousedown="" ondblclick="hideWindow(\'' + k + '\')"';
		if(!BROWSER.ie) {
			hidedom = '<style type="text/css">object{visibility:hidden;}</style>';
		}
		menuObj.innerHTML = hidedom + '<table cellpadding="0" cellspacing="0" class="fwin"><tr><td class="t_l"></td><td class="t_c"' + evt + '></td><td class="t_r"></td></tr><tr><td class="m_l"' + evt + ')">&nbsp;&nbsp;</td><td class="m_c" id="fwin_content_' + k + '">'
			+ '</td><td class="m_r"' + evt + '"></td></tr><tr><td class="b_l"></td><td class="b_c"' + evt + '></td><td class="b_r"></td></tr></table>';
		if(mode == 'html') {
			$('fwin_content_' + k).innerHTML = url;
			initMenu();
			show();
		} else {
			fetchContent();
		}
	} else if((mode == 'get' && (url != menuObj.url || cache != 1)) || (mode == 'post' && $(url).action != menuObj.act)) {
		fetchContent();
	} else {
		show();
	}
	doane();
}
function showMenu(v) {
	var ctrlid = isUndefined(v['ctrlid']) ? v : v['ctrlid'];
	var showid = isUndefined(v['showid']) ? ctrlid : v['showid'];
	var menuid = isUndefined(v['menuid']) ? showid + '_menu' : v['menuid'];
	var height = isUndefined(v['height']) ? '' : v['height'];
	var ctrlObj = $(ctrlid);
	var menuObj = $(menuid);
	if(!menuObj) return;
	var mtype = isUndefined(v['mtype']) ? 'menu' : v['mtype'];
	var evt = isUndefined(v['evt']) ? 'mouseover' : v['evt'];
	var pos = isUndefined(v['pos']) ? '43' : v['pos'];
	var layer = isUndefined(v['layer']) ? 1 : v['layer'];
	var duration = isUndefined(v['duration']) ? 2 : v['duration'];
	var timeout = isUndefined(v['timeout']) ? 250 : v['timeout'];
	var maxh = isUndefined(v['maxh']) ? 600 : v['maxh'];
	var cache = isUndefined(v['cache']) ? 1 : v['cache'];
	var drag = isUndefined(v['drag']) ? '' : v['drag'];
	var dragobj = drag && $(drag) ? $(drag) : menuObj;
	var fade = isUndefined(v['fade']) ? 0 : v['fade'];
	var cover = isUndefined(v['cover']) ? 0 : v['cover'];
	var zindex = isUndefined(v['zindex']) ? JSMENU['zIndex']['menu'] : v['zindex'];
	var ctrlclass = isUndefined(v['ctrlclass']) ? '' : v['ctrlclass'];
	var winhandlekey = isUndefined(v['win']) ? '' : v['win'];
	zindex = cover ? zindex + 500 : zindex;
	if(typeof JSMENU['active'][layer] == 'undefined') {
		JSMENU['active'][layer] = [];
	}

	for(i in EXTRAFUNC['showmenu']) {
		try {
			eval(EXTRAFUNC['showmenu'][i] + '()');
		} catch(e) {}
	}

	if(evt == 'click' && in_array(menuid, JSMENU['active'][layer]) && mtype != 'win') {
		hideMenu(menuid, mtype);
		return;
	}
	if(mtype == 'menu') {
		hideMenu(layer, mtype);
	}

	if(ctrlObj) {
		if(!ctrlObj.getAttribute('initialized')) {
			ctrlObj.setAttribute('initialized', true);
			ctrlObj.unselectable = true;

			ctrlObj.outfunc = typeof ctrlObj.onmouseout == 'function' ? ctrlObj.onmouseout : null;
			ctrlObj.onmouseout = function() {
				if(this.outfunc) this.outfunc();
				if(duration < 3 && !JSMENU['timer'][menuid]) {
					JSMENU['timer'][menuid] = setTimeout(function () {
						hideMenu(menuid, mtype);
					}, timeout);
				}
			};

			ctrlObj.overfunc = typeof ctrlObj.onmouseover == 'function' ? ctrlObj.onmouseover : null;
			ctrlObj.onmouseover = function(e) {
				doane(e);
				if(this.overfunc) this.overfunc();
				if(evt == 'click') {
					clearTimeout(JSMENU['timer'][menuid]);
					JSMENU['timer'][menuid] = null;
				} else {
					for(var i in JSMENU['timer']) {
						if(JSMENU['timer'][i]) {
							clearTimeout(JSMENU['timer'][i]);
							JSMENU['timer'][i] = null;
						}
					}
				}
			};
		}
	}

	if(!menuObj.getAttribute('initialized')) {
		menuObj.setAttribute('initialized', true);
		menuObj.ctrlkey = ctrlid;
		menuObj.mtype = mtype;
		menuObj.layer = layer;
		menuObj.cover = cover;
		if(ctrlObj && ctrlObj.getAttribute('fwin')) {menuObj.scrolly = true;}
		menuObj.style.position = 'absolute';
		menuObj.style.zIndex = zindex + layer;
		menuObj.onclick = function(e) {
			return doane(e, 0, 1);
		};
		if(duration < 3) {
			if(duration > 1) {
				menuObj.onmouseover = function() {
					clearTimeout(JSMENU['timer'][menuid]);
					JSMENU['timer'][menuid] = null;
				};
			}
			if(duration != 1) {
				menuObj.onmouseout = function() {
					JSMENU['timer'][menuid] = setTimeout(function () {
						hideMenu(menuid, mtype);
					}, timeout);
				};
			}
		}
		if(cover) {
			var coverObj = document.createElement('div');
			coverObj.id = menuid + '_cover';
			coverObj.style.position = 'absolute';
			coverObj.style.zIndex = menuObj.style.zIndex - 1;
			coverObj.style.left = coverObj.style.top = '0px';
			coverObj.style.width = '100%';
			coverObj.style.height = Math.max(document.documentElement.clientHeight, document.body.offsetHeight) + 'px';
			coverObj.style.backgroundColor = '#000';
			coverObj.style.filter = 'progid:DXImageTransform.Microsoft.Alpha(opacity=50)';
			coverObj.style.opacity = 0.5;
			coverObj.onclick = function () { hideMenu(); };
			$('append_parent').appendChild(coverObj);
			_attachEvent(window, 'load', function () {
				coverObj.style.height = Math.max(document.documentElement.clientHeight, document.body.offsetHeight) + 'px';
			}, document);
		}
	}
	if(drag) {
		//dragobj.style.cursor = 'move';
		//dragobj.onmousedown = function(event) {try{dragMenu(menuObj, event, 1);}catch(e){}};
	}

	if(cover) $(menuid + '_cover').style.display = '';
	if(fade) {
		var O = 0;
		var fadeIn = function(O) {
			if(O > 100) {
				clearTimeout(fadeInTimer);
				return;
			}
			menuObj.style.filter = 'progid:DXImageTransform.Microsoft.Alpha(opacity=' + O + ')';
			menuObj.style.opacity = O / 100;
			O += 20;
			var fadeInTimer = setTimeout(function () {
				fadeIn(O);
			}, 40);
		};
		fadeIn(O);
		menuObj.fade = true;
	} else {
		menuObj.fade = false;
	}
	menuObj.style.display = '';
	if(ctrlObj && ctrlclass) {
		ctrlObj.className += ' ' + ctrlclass;
		menuObj.setAttribute('ctrlid', ctrlid);
		menuObj.setAttribute('ctrlclass', ctrlclass);
	}
	if(pos != '*') {
		setMenuPosition(showid, menuid, pos, height);
	}
	if(BROWSER.ie && BROWSER.ie < 7 && winhandlekey && $('fwin_' + winhandlekey)) {
		$(menuid).style.left = (parseInt($(menuid).style.left) - parseInt($('fwin_' + winhandlekey).style.left)) + 'px';
		$(menuid).style.top = (parseInt($(menuid).style.top) - parseInt($('fwin_' + winhandlekey).style.top)) + 'px';
	}
	if(maxh && menuObj.scrollHeight > maxh) {
		menuObj.style.height = maxh + 'px';
		if(BROWSER.opera) {
			menuObj.style.overflow = 'auto';
		} else {
			menuObj.style.overflowY = 'auto';
		}
	}

	if(!duration) {
		setTimeout('hideMenu(\'' + menuid + '\', \'' + mtype + '\')', timeout);
	}

	if(!in_array(menuid, JSMENU['active'][layer])) JSMENU['active'][layer].push(menuid);
	menuObj.cache = cache;
	if(layer > JSMENU['layer']) {
		JSMENU['layer'] = layer;
	}
	var hasshow = function(ele) {
		while(ele.parentNode && ((typeof(ele['currentStyle']) === 'undefined') ? window.getComputedStyle(ele,null) : ele['currentStyle'])['display'] !== 'none') {
			ele = ele.parentNode;
		}
		if(ele === document) {
			return true;
		} else {
			return false;
		}
	};
	if(!menuObj.getAttribute('disautofocus')) {
		try{
			var focused = false;
			var tags = ['input', 'select', 'textarea', 'button', 'a'];
			for(var i = 0; i < tags.length; i++) {
				var _all = menuObj.getElementsByTagName(tags[i]);
				if(_all.length) {
					for(j = 0; j < _all.length; j++) {
						if((!_all[j]['type'] || _all[j]['type'] != 'hidden') && hasshow(_all[j])) {
							_all[j].className += ' hidefocus';
							_all[j].focus();
							focused = true;
							var cobj = _all[j];
							_attachEvent(_all[j], 'blur', function (){cobj.className = trim(cobj.className.replace(' hidefocus', ''));});
							break;
						}
					}
				}
				if(focused) {
					break;
				}
			}
		} catch (e) {
		}
	}
}


function setMenuPosition(showid, menuid, pos, height) {
	var showObj = $(showid);
	var menuObj = menuid ? $(menuid) : $(showid + '_menu');
	if(isUndefined(pos) || !pos) pos = '43';
	var basePoint = parseInt(pos.substr(0, 1));
	var direction = parseInt(pos.substr(1, 1));
	var important = pos.indexOf('!') != -1 ? 1 : 0;
	var sxy = 0, sx = 0, sy = 0, sw = 0, sh = 0, ml = 0, mt = 0, mw = 0, mcw = 0, mh = 0, mch = 0, bpl = 0, bpt = 0;

	if(!menuObj || (basePoint > 0 && !showObj)) return;
	if(showObj) {
		sxy = fetchOffset(showObj);
		sx = sxy['left'];
		sy = sxy['top'];
		sw = showObj.offsetWidth;
		sh = showObj.offsetHeight;
	}
	mw = menuObj.offsetWidth;
	mcw = menuObj.clientWidth;
	mh = menuObj.offsetHeight;
	mch = menuObj.clientHeight;

	switch(basePoint) {
		case 1:
			bpl = sx;
			bpt = sy;
			break;
		case 2:
			bpl = sx + sw;
			bpt = sy;
			break;
		case 3:
			bpl = sx + sw;
			bpt = sy + sh;
			break;
		case 4:
			bpl = sx;
			bpt = sy + sh;
			break;
	}
	switch(direction) {
		case 0:
			menuObj.style.left = (document.body.clientWidth - menuObj.clientWidth) / 2 + 'px';
			mt = (document.documentElement.clientHeight - menuObj.clientHeight) / 2;
			break;
		case 1:
			ml = bpl - mw;
			mt = bpt - mh;
			break;
		case 2:
			ml = bpl;
			mt = bpt - mh;
			break;
		case 3:
			ml = bpl;
			mt = bpt;
			break;
		case 4:
			ml = bpl - mw;
			mt = bpt;
			break;
	}
	var scrollTop = Math.max(document.documentElement.scrollTop, document.body.scrollTop);
	var scrollLeft = Math.max(document.documentElement.scrollLeft, document.body.scrollLeft);
	if(!important) {
		if(in_array(direction, [1, 4]) && ml < 0) {
			ml = bpl;
			if(in_array(basePoint, [1, 4])) ml += sw;
		} else if(ml + mw > scrollLeft + document.body.clientWidth && sx >= mw) {
			ml = bpl - mw;
			if(in_array(basePoint, [2, 3])) {
				ml -= sw;
			} else if(basePoint == 4) {
				ml += sw;
			}
		}
		if(in_array(direction, [1, 2]) && mt < 0) {
			mt = bpt;
			if(in_array(basePoint, [1, 2])) mt += sh;
		} else if(mt + mh > scrollTop + document.documentElement.clientHeight && sy >= mh) {
			mt = bpt - mh;
			if(in_array(basePoint, [3, 4])) mt -= sh;
		}
	}
	if(pos.substr(0, 3) == '210') {
		ml += 69 - sw / 2;
		mt -= 5;
		if(showObj.tagName == 'TEXTAREA') {
			ml -= sw / 2;
			mt += sh / 2;
		}
	}
	if(direction == 0 || menuObj.scrolly) {
		if(BROWSER.ie && BROWSER.ie < 7) {
			if(direction == 0) mt += scrollTop;
		} else {
			if(menuObj.scrolly) mt -= scrollTop;
			menuObj.style.position = 'fixed';
		}
	}
	if(!height && popHeight > 0) {
		height = popHeight + 100;
	}
	if(height) {mt = height;}
	if(ml) menuObj.style.left = ml + 'px';
	if(mt) menuObj.style.top = mt + 'px';
	if(direction == 0 && BROWSER.ie && !document.documentElement.clientHeight) {
		menuObj.style.position = 'absolute';
		menuObj.style.top = (document.body.clientHeight - menuObj.clientHeight) / 2 + 'px';
	}
	if(menuObj.style.clip && !BROWSER.opera) {
		menuObj.style.clip = 'rect(auto, auto, auto, auto)';
	}
}
</script>
<iframe width="100%" height="0" scrolling="no" frameborder="0" src="" id="proxy" name="proxy" onload="changeHeight();"></iframe>
<script type="text/javascript" reload="1">
setInterval(function(){$('fastposteditor').style.width = $('replylist').clientWidth+'px';changeHeight();}, 200);
setTimeout(changeHeight, 1000);
</script>

</body>
</html>      
