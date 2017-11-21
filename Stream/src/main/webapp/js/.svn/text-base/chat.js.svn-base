/*
 * @author clzhu
 */

/*!	SWFObject v2.2 <http://code.google.com/p/swfobject/> 
	is released under the MIT License <http://www.opensource.org/licenses/mit-license.php> 
*/
var swfobject = function() {
	
	var UNDEF = "undefined",
		OBJECT = "object",
		SHOCKWAVE_FLASH = "Shockwave Flash",
		SHOCKWAVE_FLASH_AX = "ShockwaveFlash.ShockwaveFlash",
		FLASH_MIME_TYPE = "application/x-shockwave-flash",
		EXPRESS_INSTALL_ID = "SWFObjectExprInst",
		ON_READY_STATE_CHANGE = "onreadystatechange",
		
		win = window,
		doc = document,
		nav = navigator,
		
		plugin = false,
		domLoadFnArr = [main],
		regObjArr = [],
		objIdArr = [],
		listenersArr = [],
		storedAltContent,
		storedAltContentId,
		storedCallbackFn,
		storedCallbackObj,
		isDomLoaded = false,
		isExpressInstallActive = false,
		dynamicStylesheet,
		dynamicStylesheetMedia,
		autoHideShow = true,
	
	/* Centralized function for browser feature detection
		- User agent string detection is only used when no good alternative is possible
		- Is executed directly for optimal performance
	*/	
	ua = function() {
		var w3cdom = typeof doc.getElementById != UNDEF && typeof doc.getElementsByTagName != UNDEF && typeof doc.createElement != UNDEF,
			u = nav.userAgent.toLowerCase(),
			p = nav.platform.toLowerCase(),
			windows = p ? /win/.test(p) : /win/.test(u),
			mac = p ? /mac/.test(p) : /mac/.test(u),
			webkit = /webkit/.test(u) ? parseFloat(u.replace(/^.*webkit\/(\d+(\.\d+)?).*$/, "$1")) : false, // returns either the webkit version or false if not webkit
			ie = !+"\v1", // feature detection based on Andrea Giammarchi's solution: http://webreflection.blogspot.com/2009/01/32-bytes-to-know-if-your-browser-is-ie.html
			playerVersion = [0,0,0],
			d = null;
		if (typeof nav.plugins != UNDEF && typeof nav.plugins[SHOCKWAVE_FLASH] == OBJECT) {
			d = nav.plugins[SHOCKWAVE_FLASH].description;
			if (d && !(typeof nav.mimeTypes != UNDEF && nav.mimeTypes[FLASH_MIME_TYPE] && !nav.mimeTypes[FLASH_MIME_TYPE].enabledPlugin)) { // navigator.mimeTypes["application/x-shockwave-flash"].enabledPlugin indicates whether plug-ins are enabled or disabled in Safari 3+
				plugin = true;
				ie = false; // cascaded feature detection for Internet Explorer
				d = d.replace(/^.*\s+(\S+\s+\S+$)/, "$1");
				playerVersion[0] = parseInt(d.replace(/^(.*)\..*$/, "$1"), 10);
				playerVersion[1] = parseInt(d.replace(/^.*\.(.*)\s.*$/, "$1"), 10);
				playerVersion[2] = /[a-zA-Z]/.test(d) ? parseInt(d.replace(/^.*[a-zA-Z]+(.*)$/, "$1"), 10) : 0;
			}
		}
		else if (typeof win.ActiveXObject != UNDEF) {
			try {
				var a = new ActiveXObject(SHOCKWAVE_FLASH_AX);
				if (a) { // a will return null when ActiveX is disabled
					d = a.GetVariable("$version");
					if (d) {
						ie = true; // cascaded feature detection for Internet Explorer
						d = d.split(" ")[1].split(",");
						playerVersion = [parseInt(d[0], 10), parseInt(d[1], 10), parseInt(d[2], 10)];
					}
				}
			}
			catch(e) {}
		}
		return { w3:w3cdom, pv:playerVersion, wk:webkit, ie:ie, win:windows, mac:mac };
	}(),
	
	/* Cross-browser onDomLoad
		- Will fire an event as soon as the DOM of a web page is loaded
		- Internet Explorer workaround based on Diego Perini's solution: http://javascript.nwbox.com/IEContentLoaded/
		- Regular onload serves as fallback
	*/ 
	onDomLoad = function() {
		if (!ua.w3) { return; }
		if ((typeof doc.readyState != UNDEF && doc.readyState == "complete") || (typeof doc.readyState == UNDEF && (doc.getElementsByTagName("body")[0] || doc.body))) { // function is fired after onload, e.g. when script is inserted dynamically 
			callDomLoadFunctions();
		}
		if (!isDomLoaded) {
			if (typeof doc.addEventListener != UNDEF) {
				doc.addEventListener("DOMContentLoaded", callDomLoadFunctions, false);
			}		
			if (ua.ie && ua.win) {
				doc.attachEvent(ON_READY_STATE_CHANGE, function() {
					if (doc.readyState == "complete") {
						doc.detachEvent(ON_READY_STATE_CHANGE, arguments.callee);
						callDomLoadFunctions();
					}
				});
				if (win == top) { // if not inside an iframe
					(function(){
						if (isDomLoaded) { return; }
						try {
							doc.documentElement.doScroll("left");
						}
						catch(e) {
							setTimeout(arguments.callee, 0);
							return;
						}
						callDomLoadFunctions();
					})();
				}
			}
			if (ua.wk) {
				(function(){
					if (isDomLoaded) { return; }
					if (!/loaded|complete/.test(doc.readyState)) {
						setTimeout(arguments.callee, 0);
						return;
					}
					callDomLoadFunctions();
				})();
			}
			addLoadEvent(callDomLoadFunctions);
		}
	}();
	
	function callDomLoadFunctions() {
		if (isDomLoaded) { return; }
		try { // test if we can really add/remove elements to/from the DOM; we don't want to fire it too early
			var t = doc.getElementsByTagName("body")[0].appendChild(createElement("span"));
			t.parentNode.removeChild(t);
		}
		catch (e) { return; }
		isDomLoaded = true;
		var dl = domLoadFnArr.length;
		for (var i = 0; i < dl; i++) {
			domLoadFnArr[i]();
		}
	}
	
	function addDomLoadEvent(fn) {
		if (isDomLoaded) {
			fn();
		}
		else { 
			domLoadFnArr[domLoadFnArr.length] = fn; // Array.push() is only available in IE5.5+
		}
	}
	
	/* Cross-browser onload
		- Based on James Edwards' solution: http://brothercake.com/site/resources/scripts/onload/
		- Will fire an event as soon as a web page including all of its assets are loaded 
	 */
	function addLoadEvent(fn) {
		if (typeof win.addEventListener != UNDEF) {
			win.addEventListener("load", fn, false);
		}
		else if (typeof doc.addEventListener != UNDEF) {
			doc.addEventListener("load", fn, false);
		}
		else if (typeof win.attachEvent != UNDEF) {
			addListener(win, "onload", fn);
		}
		else if (typeof win.onload == "function") {
			var fnOld = win.onload;
			win.onload = function() {
				fnOld();
				fn();
			};
		}
		else {
			win.onload = fn;
		}
	}
	
	/* Main function
		- Will preferably execute onDomLoad, otherwise onload (as a fallback)
	*/
	function main() { 
		if (plugin) {
			testPlayerVersion();
		}
		else {
			matchVersions();
		}
	}
	
	/* Detect the Flash Player version for non-Internet Explorer browsers
		- Detecting the plug-in version via the object element is more precise than using the plugins collection item's description:
		  a. Both release and build numbers can be detected
		  b. Avoid wrong descriptions by corrupt installers provided by Adobe
		  c. Avoid wrong descriptions by multiple Flash Player entries in the plugin Array, caused by incorrect browser imports
		- Disadvantage of this method is that it depends on the availability of the DOM, while the plugins collection is immediately available
	*/
	function testPlayerVersion() {
		var b = doc.getElementsByTagName("body")[0];
		var o = createElement(OBJECT);
		o.setAttribute("type", FLASH_MIME_TYPE);
		var t = b.appendChild(o);
		if (t) {
			var counter = 0;
			(function(){
				if (typeof t.GetVariable != UNDEF) {
					var d = t.GetVariable("$version");
					if (d) {
						d = d.split(" ")[1].split(",");
						ua.pv = [parseInt(d[0], 10), parseInt(d[1], 10), parseInt(d[2], 10)];
					}
				}
				else if (counter < 10) {
					counter++;
					setTimeout(arguments.callee, 10);
					return;
				}
				b.removeChild(o);
				t = null;
				matchVersions();
			})();
		}
		else {
			matchVersions();
		}
	}
	
	/* Perform Flash Player and SWF version matching; static publishing only
	*/
	function matchVersions() {
		var rl = regObjArr.length;
		if (rl > 0) {
			for (var i = 0; i < rl; i++) { // for each registered object element
				var id = regObjArr[i].id;
				var cb = regObjArr[i].callbackFn;
				var cbObj = {success:false, id:id};
				if (ua.pv[0] > 0) {
					var obj = getElementById(id);
					if (obj) {
						if (hasPlayerVersion(regObjArr[i].swfVersion) && !(ua.wk && ua.wk < 312)) { // Flash Player version >= published SWF version: Houston, we have a match!
							setVisibility(id, true);
							if (cb) {
								cbObj.success = true;
								cbObj.ref = getObjectById(id);
								cb(cbObj);
							}
						}
						else if (regObjArr[i].expressInstall && canExpressInstall()) { // show the Adobe Express Install dialog if set by the web page author and if supported
							var att = {};
							att.data = regObjArr[i].expressInstall;
							att.width = obj.getAttribute("width") || "0";
							att.height = obj.getAttribute("height") || "0";
							if (obj.getAttribute("class")) { att.styleclass = obj.getAttribute("class"); }
							if (obj.getAttribute("align")) { att.align = obj.getAttribute("align"); }
							// parse HTML object param element's name-value pairs
							var par = {};
							var p = obj.getElementsByTagName("param");
							var pl = p.length;
							for (var j = 0; j < pl; j++) {
								if (p[j].getAttribute("name").toLowerCase() != "movie") {
									par[p[j].getAttribute("name")] = p[j].getAttribute("value");
								}
							}
							showExpressInstall(att, par, id, cb);
						}
						else { // Flash Player and SWF version mismatch or an older Webkit engine that ignores the HTML object element's nested param elements: display alternative content instead of SWF
							displayAltContent(obj);
							if (cb) { cb(cbObj); }
						}
					}
				}
				else {	// if no Flash Player is installed or the fp version cannot be detected we let the HTML object element do its job (either show a SWF or alternative content)
					setVisibility(id, true);
					if (cb) {
						var o = getObjectById(id); // test whether there is an HTML object element or not
						if (o && typeof o.SetVariable != UNDEF) { 
							cbObj.success = true;
							cbObj.ref = o;
						}
						cb(cbObj);
					}
				}
			}
		}
	}
	
	function getObjectById(objectIdStr) {
		var r = null;
		var o = getElementById(objectIdStr);
		if (o && o.nodeName == "OBJECT") {
			if (typeof o.SetVariable != UNDEF) {
				r = o;
			}
			else {
				var n = o.getElementsByTagName(OBJECT)[0];
				if (n) {
					r = n;
				}
			}
		}
		return r;
	}
	
	/* Requirements for Adobe Express Install
		- only one instance can be active at a time
		- fp 6.0.65 or higher
		- Win/Mac OS only
		- no Webkit engines older than version 312
	*/
	function canExpressInstall() {
		return !isExpressInstallActive && hasPlayerVersion("6.0.65") && (ua.win || ua.mac) && !(ua.wk && ua.wk < 312);
	}
	
	/* Show the Adobe Express Install dialog
		- Reference: http://www.adobe.com/cfusion/knowledgebase/index.cfm?id=6a253b75
	*/
	function showExpressInstall(att, par, replaceElemIdStr, callbackFn) {
		isExpressInstallActive = true;
		storedCallbackFn = callbackFn || null;
		storedCallbackObj = {success:false, id:replaceElemIdStr};
		var obj = getElementById(replaceElemIdStr);
		if (obj) {
			if (obj.nodeName == "OBJECT") { // static publishing
				storedAltContent = abstractAltContent(obj);
				storedAltContentId = null;
			}
			else { // dynamic publishing
				storedAltContent = obj;
				storedAltContentId = replaceElemIdStr;
			}
			att.id = EXPRESS_INSTALL_ID;
			if (typeof att.width == UNDEF || (!/%$/.test(att.width) && parseInt(att.width, 10) < 310)) { att.width = "310"; }
			if (typeof att.height == UNDEF || (!/%$/.test(att.height) && parseInt(att.height, 10) < 137)) { att.height = "137"; }
			doc.title = doc.title.slice(0, 47) + " - Flash Player Installation";
			var pt = ua.ie && ua.win ? "ActiveX" : "PlugIn",
				fv = "MMredirectURL=" + encodeURI(window.location).toString().replace(/&/g,"%26") + "&MMplayerType=" + pt + "&MMdoctitle=" + doc.title;
			if (typeof par.flashvars != UNDEF) {
				par.flashvars += "&" + fv;
			}
			else {
				par.flashvars = fv;
			}
			// IE only: when a SWF is loading (AND: not available in cache) wait for the readyState of the object element to become 4 before removing it,
			// because you cannot properly cancel a loading SWF file without breaking browser load references, also obj.onreadystatechange doesn't work
			if (ua.ie && ua.win && obj.readyState != 4) {
				var newObj = createElement("div");
				replaceElemIdStr += "SWFObjectNew";
				newObj.setAttribute("id", replaceElemIdStr);
				obj.parentNode.insertBefore(newObj, obj); // insert placeholder div that will be replaced by the object element that loads expressinstall.swf
				obj.style.display = "none";
				(function(){
					if (obj.readyState == 4) {
						obj.parentNode.removeChild(obj);
					}
					else {
						setTimeout(arguments.callee, 10);
					}
				})();
			}
			createSWF(att, par, replaceElemIdStr);
		}
	}
	
	/* Functions to abstract and display alternative content
	*/
	function displayAltContent(obj) {
		if (ua.ie && ua.win && obj.readyState != 4) {
			// IE only: when a SWF is loading (AND: not available in cache) wait for the readyState of the object element to become 4 before removing it,
			// because you cannot properly cancel a loading SWF file without breaking browser load references, also obj.onreadystatechange doesn't work
			var el = createElement("div");
			obj.parentNode.insertBefore(el, obj); // insert placeholder div that will be replaced by the alternative content
			el.parentNode.replaceChild(abstractAltContent(obj), el);
			obj.style.display = "none";
			(function(){
				if (obj.readyState == 4) {
					obj.parentNode.removeChild(obj);
				}
				else {
					setTimeout(arguments.callee, 10);
				}
			})();
		}
		else {
			obj.parentNode.replaceChild(abstractAltContent(obj), obj);
		}
	} 

	function abstractAltContent(obj) {
		var ac = createElement("div");
		if (ua.win && ua.ie) {
			ac.innerHTML = obj.innerHTML;
		}
		else {
			var nestedObj = obj.getElementsByTagName(OBJECT)[0];
			if (nestedObj) {
				var c = nestedObj.childNodes;
				if (c) {
					var cl = c.length;
					for (var i = 0; i < cl; i++) {
						if (!(c[i].nodeType == 1 && c[i].nodeName == "PARAM") && !(c[i].nodeType == 8)) {
							ac.appendChild(c[i].cloneNode(true));
						}
					}
				}
			}
		}
		return ac;
	}
	
	/* Cross-browser dynamic SWF creation
	*/
	function createSWF(attObj, parObj, id) {
		var r, el = getElementById(id);
		if (ua.wk && ua.wk < 312) { return r; }
		if (el) {
			if (typeof attObj.id == UNDEF) { // if no 'id' is defined for the object element, it will inherit the 'id' from the alternative content
				attObj.id = id;
			}
			if (ua.ie && ua.win) { // Internet Explorer + the HTML object element + W3C DOM methods do not combine: fall back to outerHTML
				var att = "";
				for (var i in attObj) {
					if (attObj[i] != Object.prototype[i]) { // filter out prototype additions from other potential libraries
						if (i.toLowerCase() == "data") {
							parObj.movie = attObj[i];
						}
						else if (i.toLowerCase() == "styleclass") { // 'class' is an ECMA4 reserved keyword
							att += ' class="' + attObj[i] + '"';
						}
						else if (i.toLowerCase() != "classid") {
							att += ' ' + i + '="' + attObj[i] + '"';
						}
					}
				}
				var par = "";
				for (var j in parObj) {
					if (parObj[j] != Object.prototype[j]) { // filter out prototype additions from other potential libraries
						par += '<param name="' + j + '" value="' + parObj[j] + '" />';
					}
				}
				el.outerHTML = '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"' + att + '>' + par + '</object>';
				objIdArr[objIdArr.length] = attObj.id; // stored to fix object 'leaks' on unload (dynamic publishing only)
				r = getElementById(attObj.id);	
			}
			else { // well-behaving browsers
				var o = createElement(OBJECT);
				o.setAttribute("type", FLASH_MIME_TYPE);
				for (var m in attObj) {
					if (attObj[m] != Object.prototype[m]) { // filter out prototype additions from other potential libraries
						if (m.toLowerCase() == "styleclass") { // 'class' is an ECMA4 reserved keyword
							o.setAttribute("class", attObj[m]);
						}
						else if (m.toLowerCase() != "classid") { // filter out IE specific attribute
							o.setAttribute(m, attObj[m]);
						}
					}
				}
				for (var n in parObj) {
					if (parObj[n] != Object.prototype[n] && n.toLowerCase() != "movie") { // filter out prototype additions from other potential libraries and IE specific param element
						createObjParam(o, n, parObj[n]);
					}
				}
				el.parentNode.replaceChild(o, el);
				r = o;
			}
		}
		return r;
	}
	
	function createObjParam(el, pName, pValue) {
		var p = createElement("param");
		p.setAttribute("name", pName);	
		p.setAttribute("value", pValue);
		el.appendChild(p);
	}
	
	/* Cross-browser SWF removal
		- Especially needed to safely and completely remove a SWF in Internet Explorer
	*/
	function removeSWF(id) {
		var obj = getElementById(id);
		if (obj && obj.nodeName == "OBJECT") {
			if (ua.ie && ua.win) {
				obj.style.display = "none";
				(function(){
					if (obj.readyState == 4) {
						removeObjectInIE(id);
					}
					else {
						setTimeout(arguments.callee, 10);
					}
				})();
			}
			else {
				obj.parentNode.removeChild(obj);
			}
		}
	}
	
	function removeObjectInIE(id) {
		var obj = getElementById(id);
		if (obj) {
			for (var i in obj) {
				if (typeof obj[i] == "function") {
					obj[i] = null;
				}
			}
			obj.parentNode.removeChild(obj);
		}
	}
	
	/* Functions to optimize JavaScript compression
	*/
	function getElementById(id) {
		var el = null;
		try {
			el = doc.getElementById(id);
		}
		catch (e) {}
		return el;
	}
	
	function createElement(el) {
		return doc.createElement(el);
	}
	
	/* Updated attachEvent function for Internet Explorer
		- Stores attachEvent information in an Array, so on unload the detachEvent functions can be called to avoid memory leaks
	*/	
	function addListener(target, eventType, fn) {
		target.attachEvent(eventType, fn);
		listenersArr[listenersArr.length] = [target, eventType, fn];
	}
	
	/* Flash Player and SWF content version matching
	*/
	function hasPlayerVersion(rv) {
		var pv = ua.pv, v = rv.split(".");
		v[0] = parseInt(v[0], 10);
		v[1] = parseInt(v[1], 10) || 0; // supports short notation, e.g. "9" instead of "9.0.0"
		v[2] = parseInt(v[2], 10) || 0;
		return (pv[0] > v[0] || (pv[0] == v[0] && pv[1] > v[1]) || (pv[0] == v[0] && pv[1] == v[1] && pv[2] >= v[2])) ? true : false;
	}
	
	/* Cross-browser dynamic CSS creation
		- Based on Bobby van der Sluis' solution: http://www.bobbyvandersluis.com/articles/dynamicCSS.php
	*/	
	function createCSS(sel, decl, media, newStyle) {
		if (ua.ie && ua.mac) { return; }
		var h = doc.getElementsByTagName("head")[0];
		if (!h) { return; } // to also support badly authored HTML pages that lack a head element
		var m = (media && typeof media == "string") ? media : "screen";
		if (newStyle) {
			dynamicStylesheet = null;
			dynamicStylesheetMedia = null;
		}
		if (!dynamicStylesheet || dynamicStylesheetMedia != m) { 
			// create dynamic stylesheet + get a global reference to it
			var s = createElement("style");
			s.setAttribute("type", "text/css");
			s.setAttribute("media", m);
			dynamicStylesheet = h.appendChild(s);
			if (ua.ie && ua.win && typeof doc.styleSheets != UNDEF && doc.styleSheets.length > 0) {
				dynamicStylesheet = doc.styleSheets[doc.styleSheets.length - 1];
			}
			dynamicStylesheetMedia = m;
		}
		// add style rule
		if (ua.ie && ua.win) {
			if (dynamicStylesheet && typeof dynamicStylesheet.addRule == OBJECT) {
				dynamicStylesheet.addRule(sel, decl);
			}
		}
		else {
			if (dynamicStylesheet && typeof doc.createTextNode != UNDEF) {
				dynamicStylesheet.appendChild(doc.createTextNode(sel + " {" + decl + "}"));
			}
		}
	}
	
	function setVisibility(id, isVisible) {
		if (!autoHideShow) { return; }
		var v = isVisible ? "visible" : "hidden";
		if (isDomLoaded && getElementById(id)) {
			getElementById(id).style.visibility = v;
		}
		else {
			createCSS("#" + id, "visibility:" + v);
		}
	}

	/* Filter to avoid XSS attacks
	*/
	function urlEncodeIfNecessary(s) {
		var regex = /[\\\"<>\.;]/;
		var hasBadChars = regex.exec(s) != null;
		return hasBadChars && typeof encodeURIComponent != UNDEF ? encodeURIComponent(s) : s;
	}
	
	/* Release memory to avoid memory leaks caused by closures, fix hanging audio/video threads and force open sockets/NetConnections to disconnect (Internet Explorer only)
	*/
	var cleanup = function() {
		if (ua.ie && ua.win) {
			window.attachEvent("onunload", function() {
				// remove listeners to avoid memory leaks
				var ll = listenersArr.length;
				for (var i = 0; i < ll; i++) {
					listenersArr[i][0].detachEvent(listenersArr[i][1], listenersArr[i][2]);
				}
				// cleanup dynamically embedded objects to fix audio/video threads and force open sockets and NetConnections to disconnect
				var il = objIdArr.length;
				for (var j = 0; j < il; j++) {
					removeSWF(objIdArr[j]);
				}
				// cleanup library's main closures to avoid memory leaks
				for (var k in ua) {
					ua[k] = null;
				}
				ua = null;
				for (var l in swfobject) {
					swfobject[l] = null;
				}
				swfobject = null;
			});
		}
	}();
	
	return {
		/* Public API
			- Reference: http://code.google.com/p/swfobject/wiki/documentation
		*/ 
		registerObject: function(objectIdStr, swfVersionStr, xiSwfUrlStr, callbackFn) {
			if (ua.w3 && objectIdStr && swfVersionStr) {
				var regObj = {};
				regObj.id = objectIdStr;
				regObj.swfVersion = swfVersionStr;
				regObj.expressInstall = xiSwfUrlStr;
				regObj.callbackFn = callbackFn;
				regObjArr[regObjArr.length] = regObj;
				setVisibility(objectIdStr, false);
			}
			else if (callbackFn) {
				callbackFn({success:false, id:objectIdStr});
			}
		},
		
		getObjectById: function(objectIdStr) {
			if (ua.w3) {
				return getObjectById(objectIdStr);
			}
		},
		
		embedSWF: function(swfUrlStr, replaceElemIdStr, widthStr, heightStr, swfVersionStr, xiSwfUrlStr, flashvarsObj, parObj, attObj, callbackFn) {
			var callbackObj = {success:false, id:replaceElemIdStr};
			if (ua.w3 && !(ua.wk && ua.wk < 312) && swfUrlStr && replaceElemIdStr && widthStr && heightStr && swfVersionStr) {
				setVisibility(replaceElemIdStr, false);
				addDomLoadEvent(function() {
					widthStr += ""; // auto-convert to string
					heightStr += "";
					var att = {};
					if (attObj && typeof attObj === OBJECT) {
						for (var i in attObj) { // copy object to avoid the use of references, because web authors often reuse attObj for multiple SWFs
							att[i] = attObj[i];
						}
					}
					att.data = swfUrlStr;
					att.width = widthStr;
					att.height = heightStr;
					var par = {}; 
					if (parObj && typeof parObj === OBJECT) {
						for (var j in parObj) { // copy object to avoid the use of references, because web authors often reuse parObj for multiple SWFs
							par[j] = parObj[j];
						}
					}
					if (flashvarsObj && typeof flashvarsObj === OBJECT) {
						for (var k in flashvarsObj) { // copy object to avoid the use of references, because web authors often reuse flashvarsObj for multiple SWFs
							if (typeof par.flashvars != UNDEF) {
								par.flashvars += "&" + k + "=" + flashvarsObj[k];
							}
							else {
								par.flashvars = k + "=" + flashvarsObj[k];
							}
						}
					}
					if (hasPlayerVersion(swfVersionStr)) { // create SWF
						var obj = createSWF(att, par, replaceElemIdStr);
						if (att.id == replaceElemIdStr) {
							setVisibility(replaceElemIdStr, true);
						}
						callbackObj.success = true;
						callbackObj.ref = obj;
					}
					else if (xiSwfUrlStr && canExpressInstall()) { // show Adobe Express Install
						att.data = xiSwfUrlStr;
						showExpressInstall(att, par, replaceElemIdStr, callbackFn);
						return;
					}
					else { // show alternative content
						setVisibility(replaceElemIdStr, true);
					}
					if (callbackFn) { callbackFn(callbackObj); }
				});
			}
			else if (callbackFn) { callbackFn(callbackObj);	}
		},
		
		switchOffAutoHideShow: function() {
			autoHideShow = false;
		},
		
		ua: ua,
		
		getFlashPlayerVersion: function() {
			return { major:ua.pv[0], minor:ua.pv[1], release:ua.pv[2] };
		},
		
		hasFlashPlayerVersion: hasPlayerVersion,
		
		createSWF: function(attObj, parObj, replaceElemIdStr) {
			if (ua.w3) {
				return createSWF(attObj, parObj, replaceElemIdStr);
			}
			else {
				return undefined;
			}
		},
		
		showExpressInstall: function(att, par, replaceElemIdStr, callbackFn) {
			if (ua.w3 && canExpressInstall()) {
				showExpressInstall(att, par, replaceElemIdStr, callbackFn);
			}
		},
		
		removeSWF: function(objElemIdStr) {
			if (ua.w3) {
				removeSWF(objElemIdStr);
			}
		},
		
		createCSS: function(selStr, declStr, mediaStr, newStyleBoolean) {
			if (ua.w3) {
				createCSS(selStr, declStr, mediaStr, newStyleBoolean);
			}
		},
		
		addDomLoadEvent: addDomLoadEvent,
		
		addLoadEvent: addLoadEvent,
		
		getQueryParamValue: function(param) {
			var q = doc.location.search || doc.location.hash;
			if (q) {
				if (/\?/.test(q)) { q = q.split("?")[1]; } // strip question mark
				if (param == null) {
					return urlEncodeIfNecessary(q);
				}
				var pairs = q.split("&");
				for (var i = 0; i < pairs.length; i++) {
					if (pairs[i].substring(0, pairs[i].indexOf("=")) == param) {
						return urlEncodeIfNecessary(pairs[i].substring((pairs[i].indexOf("=") + 1)));
					}
				}
			}
			return "";
		},
		
		// For internal usage only
		expressInstallCallback: function() {
			if (isExpressInstallActive) {
				var obj = getElementById(EXPRESS_INSTALL_ID);
				if (obj && storedAltContent) {
					obj.parentNode.replaceChild(storedAltContent, obj);
					if (storedAltContentId) {
						setVisibility(storedAltContentId, true);
						if (ua.ie && ua.win) { storedAltContent.style.display = "block"; }
					}
					if (storedCallbackFn) { storedCallbackFn(storedCallbackObj); }
				}
				isExpressInstallActive = false;
			} 
		}
	};
}();


//qtchat(flash与js交互API)
;(function(win){
	var qtchat = function(container) {
		if (qtchat.api){
			return qtchat.api.selectQtChat(container);
		}
	};
	
	(function(qtchat) {
		qtchat.utils = function() {
		};
		qtchat.utils.log = function(msg, obj) {
			if (typeof console != "undefined" && typeof console.log != "undefined") {
				if (obj) {
					console.log(msg, obj);
				} else {
					console.log(msg);
				}
			}
		};
	})(qtchat);
	
	(function(qtchat) {
		var _qtchat = [];
	
		qtchat.api = function(container) {
			this.container = container;
			this.id = container.id;
		
			var _listeners = {};
			var _stateListeners = {};
			var _qtchat = undefined;
			var _qtchatReady = false;
			var _queuedCalls = [];
		
			// QtChat Getters
			this.getContainer = function() {
				return this.container;
			};

			// QtChat API Calls
			this.showTips = function(msg) {
				return this.callInternal('qtShowTips',msg);
			};
			this.joinRoom = function(roomid) {
				return this.callInternal('qtJoin',roomid);
			};
			this.quitRoom = function() {
				return this.callInternal('qtQuit');
			};
			
			// Getters
			this.getState = function() {
				return this.callInternal('qtGetState');
			};
			this.getVersion = function() {
				return this.callInternal('qtGetVersion');
			};
			this.getRoomId = function() {
				return this.callInternal('qtGetRoomId');
			};
			this.getSubRoomId = function() {
				return this.callInternal('qtGetSubRoomId');
			};
			this.getRoomMode = function() {
				return this.callInternal('qtGetRoomMode');
			};
			this.getQtChatId = function() {
				return this.callInternal('qtGetQtChatId');
			};
			
			// QtChat Events
			this.onError = function(callback) {
				return this.eventListener(qtchat.api.events.QTCHAT_ERROR, callback);
			};
			this.onReady = function(callback) {
				return this.eventListener(qtchat.api.events.API_READY, callback);
			};
			this.onBroadcast = function(callback) {
				return this.eventListener(qtchat.api.events.QTCHAT_BROADCAST, callback);
			};
			//onUnitReport:登录进房流程响应
			this.onUnitReport = function(callback) {
				return this.eventListener(qtchat.api.events.QTCHAT_UNITREPORT, callback);
			};
			// State events
			this.onConnected = function(callback) {
				return this.stateListener(qtchat.api.events.state.CONNECTED, callback);
			};
			this.onJoined = function(callback) {
				return this.stateListener(qtchat.api.events.state.JOINED, callback);
			};
		
			this.setQtChat = function(qtchat) {
				_qtchat = qtchat;
			};
		
			this.stateListener = function(state, callback) {
				if (!_stateListeners[state]) {
					_stateListeners[state] = [];
					this.eventListener(qtchat.api.events.QTCHAT_STATE, stateCallback(state));
				}
				_stateListeners[state].push(callback);
				return this;
			};

			function stateCallback(state) {
				return function(args) {
					var newstate = args.newstate, oldstate = args.oldstate;
					if (newstate == state) {
						var callbacks = _stateListeners[newstate];
						if (callbacks) {
							for (var c = 0; c < callbacks.length; c++) {
								if (typeof callbacks[c] == 'function') {
									callbacks[c].call(this, {
										oldstate: oldstate,
										newstate: newstate
									});
								}
							}
						}
					}
				};
			}

			this.addInternalListener = function(qtchat, type) {
				try {
					qtchat.qtAddEventListener(type, 'function(dat) { qtchat("' + this.id + '").dispatchEvent("' + type + '", dat); }');
				} catch(e) {
					qtchat.utils.log("Could not add internal listener");
				}
			};
		
			this.eventListener = function(type, callback) {
				if (!_listeners[type]) {
					_listeners[type] = [];
					if (_qtchat && _qtchatReady) {
						this.addInternalListener(_qtchat, type);
					}
				}
				_listeners[type].push(callback);
				return this;
			};
		
			this.dispatchEvent = function(type) {
				if (_listeners[type]) {
					var args = arguments[1];
					for (var l = 0; l < _listeners[type].length; l++) {
						if (typeof _listeners[type][l] == 'function') {
							_listeners[type][l].call(this, args);
						}
					}
				}
			};

			this.callInternal = function() {
				if (_qtchatReady) {
					var funcName = arguments[0],args = [];
					for (var argument = 1; argument < arguments.length; argument++) {
						args.push(arguments[argument]);
					}

					if (typeof _qtchat != "undefined" && typeof _qtchat[funcName] == "function") {
						var parastr = [];
						for(var i=0; i<args.length; i++){
							parastr.push('args['+i+']');
						}
						return eval('(_qtchat[funcName])('+parastr.join(',')+')');
					}
					return null;
				} else {
					_queuedCalls.push(arguments);
				}
			};
		
			this.qtchatReady = function(obj) {
				_qtchatReady = true;
			
				if (!_qtchat) {
					this.setQtChat(document.getElementById(obj.id));
				}
				this.container = document.getElementById(this.id);
			
				for (var eventType in _listeners) {
					this.addInternalListener(_qtchat, eventType);
				}
			
				this.dispatchEvent(qtchat.api.events.API_READY);
			
				while (_queuedCalls.length > 0) {
					this.callInternal.apply(this, _queuedCalls.shift());
				}
			};
		
			return this;
		};
	
		qtchat.api.selectQtChat = function(identifier) {
			var _container = document.getElementById(identifier);
		
			if (_container) {
				var foundQtChat = qtchat.api.qtchatById(_container.id);
				if (foundQtChat) {
					return foundQtChat;
				} else {
					return qtchat.api.addQtChat(new qtchat.api(_container));
				}
			} else if(!identifier) {
				return qtchat.getQtChats()[0];
			}
		
			return null;
		};
	
		qtchat.api.events = {
			API_READY: 'qtchatAPIReady',
			QTCHAT_READY: 'qtchatReady',
			QTCHAT_ERROR: 'qtchatError',
			QTCHAT_STATE: 'qtchatState',
			QTCHAT_BROADCAST: 'qtchatBroadcast',
			QTCHAT_UNITREPORT: 'qtchatUnitReport'
		};
	
		qtchat.api.events.state = {
			INIT: 'INIT',
			CONNECTING: 'CONNECTING',
			CONNECTED: 'CONNECTED',
			JOINING: 'JOINING',
			JOINED: 'JOINED'
		};
	
		qtchat.api.qtchatById = function(id) {
			for (var p = 0; p < _qtchat.length; p++) {
				if (_qtchat[p].id == id) {
					return _qtchat[p];
				}
			}
			return null;
		};
	
		qtchat.api.addQtChat = function(qtchat) {
			for (var p = 0; p < _qtchat.length; p++) {
				if (_qtchat[p] == qtchat) {
					return qtchat; // QtChat is already in the list;
				}
			}
		
			_qtchat.push(qtchat);
			return qtchat;
		};
	
		qtchat.getQtChats = function() {
			return _qtchat.slice(0);
		};
	})(qtchat);

	var _userQtChatReady = (typeof qtchatReady == 'function') ? qtchatReady : undefined;

	window.qtchatReady = function(obj) {
		var api = qtchat.api.qtchatById(obj.id);

		if (api) {
			api.qtchatReady(obj);
		} else {
			qtchat.api.selectQtChat(obj.id).qtchatReady(obj);
		}
	
		if (_userQtChatReady) {
			_userQtChatReady.call(this, obj);
		}
	};
	
	win.qtchat = qtchat;

})(this);



//chat(聊天室对外API)
;(function(win){
	var QTCOMM={};
	String.prototype.replaceAll=function(sFrom, sTo){return this.split(sFrom).join(sTo);}
	String.prototype.replacePairs=function(){var s=this;for(var i=0;i<arguments.length;++i){s=s.replaceAll(arguments[i][0],arguments[i][1]);}return s;} 
	String.prototype.toHtml=function(){return this.replacePairs.apply(this,String.prototype.toHtml.CONVERT_ARRAY);}
	String.prototype.toHtml.CONVERT_ARRAY=[["&","&#38;"],[" ","&nbsp;"],["'","&#39;"],["\"","&#34;"],["/","&#47;"],["<","&#60;"],[">","&#62;"],["\\","&#92;"],["\n","<br />"],["\r",""]];
	QTCOMM.getUrlPara=function(paraName,sUrl){if (typeof(sUrl)=='undefined'){sUrl = document.location.href;}var urlRegex = new RegExp(paraName+"=[^&#\?]*", "igm");var para = sUrl.match( urlRegex );if(!para){return "";}var v=para[0];from = v.indexOf( "=" );var paraValue = v.substr(from+1, v.length);while( paraValue.indexOf('<') >= 0 ){paraValue = paraValue.replace('<','');}if( paraValue .indexOf( "#" ) > 0 ){from = paraValue .indexOf( "#" );paraValue = paraValue .substr(0, from );}return paraValue;}
	QTCOMM.getCookie=function(name){var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");if(arr=document.cookie.match(reg)){return unescape(arr[2])}else{return null}}
	QTCOMM.getToken=function(){var hash=5381;var str=QTCOMM.getCookie("skey");if(str==null||typeof(str)=="undefined"){str=""}for(var i=0,len=str.length;i<len;++i){hash+=(hash<<5&0x7fffffff)+str.charCodeAt(i)}return hash&0x7fffffff}
	QTCOMM.addToken=function(url){if(url&&!(/varcache\_[a-zA-Z0-9\_\-\%]+\.php$/.test(url.split("?")[0]))&&!(/\.js$/.test(url.split("?")[0]))&&QTCOMM.getUrlPara("g_tk",url)==""){if(url.indexOf('?')!=-1){url+="&g_tk="+QTCOMM.getToken();}else{url+="?g_tk="+QTCOMM.getToken();}}return url;}
	QTCOMM.FloadJS=function(a,b,d){var src='',charset='';if(typeof(a)=='object'){src=QTCOMM.addToken(a.src);charset=a.charset}else{src=QTCOMM.addToken(a)};var c=document.createElement("script"),e=document.body||document.getElementsByTagName('head')[0],s=document.getElementsByTagName("script"),l=s.length,h=false;c.onerror=function(){c.onreadystatechange=null;if(d!==''&&'function'==typeof(d)){d()}};if(c.readyState){c.onreadystatechange=function(){if(c.readyState=="loaded"||c.readyState=="complete"){c.onreadystatechange=null;if('function'==typeof(b)){b()}}}}else{c.onload=function(){if('function'==typeof(b)){b()}}}while(l){var cs=s[l-1];if(src===cs.src){h=true;break};l--};if(!h){c.src=src;if(charset!=''){c.charset=charset};e.appendChild(c)}else{if('function'==typeof(b)){b()}}}

	var typeCfgs = {
		pclive:{
			type:"pclive",
			client_type:41,
			source_type:4,
			chat_php:'http://qt.qq.com/php_cgi/webqt/php/send_chatmsg.php'
		},
		normal:{
			type:"normal",
			client_type:39,
			source_type:2,
			chat_php:'http://qt.qq.com/php_cgi/webqt/php/send_chatmsg.php'
		}
	};
	var typeCfg=typeCfgs.normal;//默认配置
	var console = window.console || {log:function(){}};
	var dvQtChat="__dvQtChatRoom__";
	var myQtChatId=0;//id，用于区分不同终端
	var isBinDebug=location.href.indexOf("bin-debug")>-1;//本地调试版本
	var isReady=false;//qtchat API是否ready
	var readyRoomId=null;//ready后进房
	var chatMsgCallback=null;//消息回调
	var videoMsgCallback=null;//视频切换回调for pclive
	var errorCallback=null;//错误回调
	
	//检测flash版本
	function checkFlash(cb){
		if(!swfobject.hasFlashPlayerVersion("11.1")){
			var ver=swfobject.getFlashPlayerVersion();
			if(!!ver.major){//low flash
				showError({errno:101,msg:'flash版本太低',html:'您的flash版本太低<br/>请点击<a href="http://get.adobe.com/cn/flashplayer/" target="_blank">这里</a>安装新版本'});
			}else{//no flash
				showError({errno:102,msg:'没有安装flash插件',html:'您还没有安装flash插件<br/>请点击<a href="http://get.adobe.com/cn/flashplayer/" target="_blank">这里</a>安装'});
			}
		}else{
			cb();
		}
	}
	
	//创建flash所需div
	function createChatDiv(){
		if(!document.getElementById(dvQtChat)){
			var lay = document.createElement('div');
			lay.style.cssText = "position:absolute;left:-10px;top:-10px;";
			document.body.appendChild(lay);
			lay.innerHTML = '<div id="'+dvQtChat+'"></div>';
		}
	}
	
	//嵌入flash
	function embedQtChat(roomid){
		createChatDiv();
		var debug="none";
		if(!!QTCOMM.getUrlPara("test")){//console,trace,arthropod
			debug=QTCOMM.getUrlPara("test");
		}else if(isBinDebug){
			debug="trace";
		}
		var flashvars = {debug:debug,roomid:roomid,client_type:typeCfg.client_type,source_type:typeCfg.source_type,type:typeCfg.type};
		var swfVersionStr = "11.1.0"; 
		var params = {};
		params.allowscriptaccess = "always";
		var attributes = {};
		attributes.id = dvQtChat;
		attributes.name = dvQtChat;
		setTimeout(function(){
			swfobject.embedSWF(
				isBinDebug?"qtchat.swf?r="+Math.random():"http://ossweb-img.qq.com/images/js/qt/chat/qtchat.swf?r="+Math.random(),
				dvQtChat, "10", "10",swfVersionStr, null,
				flashvars, params, attributes
			);
		},0);
	}
	
	//初始化flash事件处理
	function initQtChat(){
		qtchat(dvQtChat).onReady(function(){
			isReady = true;
			myQtChatId = qtchat().getQtChatId();
			qtchat().onJoined(function(e){
				//TODO
			});
			qtchat().onUnitReport(function(e){
				var msg = e.msg;
				if(msg.errno == 0) return;
				switch(msg.svr){
					case "RoomAuthen":
						showError(msg);
						break;
					case "GroupSvr":
						showError(msg);
						break;
					default://do nothing
						break;
				}
			});
			qtchat().onBroadcast(function(e){
				if(e.msg.type == "CHATMSG"){//聊天广播
					if(!(e.msg.isSelf && e.msg.qtchatId==myQtChatId)){//过滤自己发的消息广播（自己发的消息在发送时展示）
						var str = e.msg.text.str;
						var isSelf = e.msg.isSelf;
						var formatStr = formatMsg(str);
						var barrageStr = str.replace(/\/\:(\d+):/g,"").replace(/\\/g,'\\\\').replace(/\"/g,'\\"');//去表情及转义
						barrageStr = '{"sUser":"","nNameColor":"001","sText":"'+barrageStr+'","nTextColor":"001","nType":0,"bIsSelf":'+(isSelf?'true':'false')+',"nUserType":0}';
						chatMsgCallback && chatMsgCallback({nick:e.msg.nickname,time:e.msg.text.time,str:str,formatStr:formatStr,barrageStr:barrageStr,isSelf:isSelf});
					}
				}else if(e.msg.type == "VIDEOMSG"){//视频切换
					videoMsgCallback && videoMsgCallback({uin:e.msg.uin,ustatus:e.msg.ustatus});
				}else{
					//TODO
				}
			});
			qtchat().onError(function(e){
				showError({errno:-1,msg:e.message||'未知错误'});
			});
			if(readyRoomId){
				qtchat().joinRoom(readyRoomId);
				readyRoomId = null;
			}
		});
	}
	
	function showError(msg){
		errorCallback && errorCallback(msg);
	}
	
	//表情id转图片
	function getFaceUrl(id){
		return "http://ossweb-img.qq.com/images/qtalk/webqt/face/"+id+(id>=149 ? ".png" : ".gif");
	}
	
	//表情字符格式化
	function formatMsg(msg){
		msg = (""+msg).toHtml();
		var reg=/&#47;:(\d+):/g;
		var match="";
		while(match=reg.exec(msg)){
			var img=getFaceUrl(match[1]);
			msg=msg.replace(new RegExp("&#47;:"+match[1]+":","g"),'<img src="'+img+'" />');
		}
		return msg;
	}
	
	//发言
	//op:{msg,callback}
	function sendChatMsg(msg,callback){
		if(!isReady || !qtchat().getRoomId() || (typeCfg.type=="normal"&&!qtchat().getSubRoomId())){
			callback && callback({errno:1,msg:"qtchat还未准备好，请稍候再发送"});
			return false;
		}
		
		var roomid = qtchat().getRoomId();
		var subroomid = qtchat().getSubRoomId();
		var data = {jsonobj:"qtchatCallbackData",roomid:roomid,subroomid:subroomid,msg:msg,webqtid:myQtChatId,client_type:typeCfg.client_type,type:typeCfg.type,r:Math.random()};
		var url = typeCfg.chat_php;
		var paras = [];
		for(var i in data){
			paras.push(i+"="+encodeURIComponent(data[i]));
		}
		url += '?'+paras.join("&");
		
		window.qtchatCallbackData = null;
		QTCOMM.FloadJS(url,function(){
			var ret = window.qtchatCallbackData;
			if(!ret){
				callback && callback({errno:-2,msg:"发送失败：服务器不给力"});
				return;
			}
			if(ret.code != 0){
				callback && callback({errno:ret.code,msg:ret.msg});
				return;
			}
			var str = ret.str;
			var isSelf = true;
			var formatStr = formatMsg(str);
			var barrageStr = str.replace(/\/\:(\d+):/g,"").replace(/\\/g,'\\\\').replace(/\"/g,'\\"');//去表情及转义
			barrageStr = '{"sUser":"","nNameColor":"001","sText":"'+barrageStr+'","nTextColor":"001","nType":0,"bIsSelf":'+(isSelf?'true':'false')+',"nUserType":0}';
			chatMsgCallback && chatMsgCallback({nick:ret.nick,time:ret.time,str:str,formatStr:formatStr,barrageStr:barrageStr,isSelf:isSelf});
			callback && callback({errno:0,msg:"发送成功"});
		},function(){
			callback && callback({errno:-1,msg:"发送失败：服务器不给力"});
		});
	}
	
	window.onbeforeunload = function(){
		try{
			qtchat().quitRoom();
		}catch(e){}
	}

	var chat={};
	chat.init = function(op){
		if(op.type){
			typeCfg=typeCfgs[op.type];
		}
		chatMsgCallback = op.chatMsgCallback;
		videoMsgCallback = op.videoMsgCallback;
		errorCallback = op.errorCallback;
		checkFlash(function(){
			embedQtChat(op.roomid);
			initQtChat();
		});
	};
	chat.joinRoom = function(roomid){
		if(isReady){
			readyRoomId = null;
			qtchat().joinRoom(roomid);
		}else{
			readyRoomId = roomid;
		}
	};
	chat.quitRoom = function(){
		qtchat() && qtchat().quitRoom && qtchat().quitRoom();
	};
	chat.sendChatMsg = sendChatMsg;
	
	//兼容seajs
	"function"==typeof define && define(function(){
		return chat;
	});
	win.chat = chat;

})(this);/*  |xGv00|926ba13aabd7afe18921ef2537520d12 */