var _178 = {
    isinit: false,
    sitetitle: '178游戏网',
    textblockId: 'text',
    imgpage: 'http://www.178.com/pic/',
    imgmaxwidth: 550,
    tipclass: 'tooltip-default'
};
var userAgent = navigator.userAgent, bChrome = /Chrome/.test(userAgent), bSafari = /Safari/.test(userAgent) && !bChrome, bFirefox = /Firefox/.test(userAgent), bOpera = /Opera/.test(userAgent), bWebkit = /WebKit/.test(userAgent), bIE = !(!window.attachEvent || window.opera), bIE6 = bIE && 7 > parseFloat(navigator.appVersion.split("MSIE")[1]), bIE7 = bIE && 8 > parseFloat(navigator.appVersion.split("MSIE")[1]), bIE8 = bIE && 9 > parseFloat(navigator.appVersion.split("MSIE")[1]), bGecko = !bWebkit && -1 != navigator.userAgent.indexOf("Gecko"), bCSS3 = !(bIE && bIE8);
if (bIE6)try {
    document.execCommand("BackgroundImageCache", !1, !0)
} catch (e$$10) {
}
var _178func = new function () {
    this.uriSearchArr = this.uriHashArr = [];
    this.timeHash = function () {
        var a = new Date;
        return a = a.getTime()
    };
    this.counter = function (a) {
        "undefined" == typeof window.frames["global-hidiframe"] && jQuery("body").append('<iframe src="about:blank" name="global-hidiframe" id="global-hidiframe" frameborder="0"></iframe>');
        window.frames["global-hidiframe"].location.replace(a)
    };
    this.copyToClipboard = function (a, c) {
        !0 !== c && window.clipboardData ? (window.clipboardData.setData("Text", a), alert("\u590d\u5236\u6210\u529f\uff01\u4f60\u73b0\u5728\u53ef\u5c06\u5185\u5bb9\u8fdb\u884c\u7c98\u8d34\uff08CTRL+V\uff09\u3002")) : alert("des")
    };
    this.addFav = function (a, c) {
        a || (a = document.title);
        c || (c = location.href);
        if (bIE6) window.external.AddFavorite(c, a); else {
            var b = "\u8bf7\u6309 CTRL+D \u6216", b = bIE ? b + "\u5355\u51fb\u6d4f\u89c8\u5668\u4e0a\u7684\u201c\u6536\u85cf\u5939\u201d\u661f\u5f62\u6309\u94ae\u8fdb\u884c\u6536\u85cf" : bChrome ? b + "\u5355\u51fb\u6d4f\u89c8\u5668\u5730\u5740\u680f\u5de6\u4fa7\u7684\u661f\u5f62\u6309\u94ae\u8fdb\u884c\u6536\u85cf" : bSafari ? b + "\u5355\u51fb\u6d4f\u89c8\u5668\u5730\u5740\u680f\u5de6\u4fa7\u7684\u52a0\u53f7\u6309\u94ae\u8fdb\u884c\u6536\u85cf" : bFirefox ? b + "\u5355\u51fb\u6d4f\u89c8\u5668\u4e0a\u7684\u201c\u6536\u85cf\u5939\u201d\u661f\u5f62\u6309\u94ae\u8fdb\u884c\u6536\u85cf" : bOpera ? b + "\u5355\u51fb\u4e3b\u83dc\u5355\u6309\u94ae\uff0c\u9009\u62e9\u201c\u4e66\u7b7e\u201d -> \u201c\u5c06\u7f51\u9875\u52a0\u5165\u4e66\u7b7e\u201d\u8fdb\u884c\u6536\u85cf" : b + ')">\u8bf7\u4f7f\u7528\u6d4f\u89c8\u5668\u7684\u6536\u85cf\u5939\u529f\u80fd\u6536\u85cf\u672c\u9875';
            alert(b)
        }
    };
    this.uriSearch = function (a) {
        if (!this.uriSearchArr.length)for (var c = location.search ? location.search.split("?")[1] : "", c = c.split("&"), b = 0; b < c.length; b++) {
            var d = c[b].split("=");
            this.uriSearchArr[d[0]] = d[1] || !1
        }
        return !a ? location.search.substr(location.search.indexOf("?") + 1) : this.uriSearchArr[a] || !1
    };
    this.uriHash = function (a, c) {
        this.uriHashArr = [];
        for (var b = location.hash, d = b ? b.split("#")[1] : "", d = d.split("&"), e = 0; e < d.length; e++) {
            var j = d[e].split("=");
            this.uriHashArr[j[0]] = j[1] || !1
        }
        c = 0 === c ? 0 : c || !1;
        return !1 !== c ? (location.hash = this.uriHashArr[a] ? b.replace(a + "=" + this.uriHashArr[a], a + "=" + c) : b + ("" == b ? "#" : "&") + a + "=" + c, c) : !a ? location.hash.substr(location.hash.indexOf("#") + 1) : this.uriHashArr[a] || !1
    };
    this.randNumber = function (a) {
        var c = new Date, c = c.getTime();
        a || (a = 1E3);
        return Math.ceil((9301 * c + 49297) % 233280 / 233280 * a)
    };
    this.init = function () {
        if (_178.isinit || this.uriSearch("imgcounter"))return !1;
        jQuery("body").hasClass("global-imgloader") && this.uriSearch("img") && (jQuery("body").append("<div>" + (this.uriSearch("title") ? "<h1>" + decodeURI(unescape(this.uriSearch("title"))) + "</h1>" : "") + "<h2>" + this.uriSearch("img").replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/"/g, '&quot;') + '</h2><div class="global-imgloader"><img src="' + this.uriSearch("img").replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/"/g, '&quot;') + '" /></div><div id="global-share"></div></div>'), document.title = "\u56fe\u7247" + (this.uriSearch("title") ? "\uff1a" + decodeURI(unescape(this.uriSearch("title"))) : ""));
        _page.searchblock();
        _page.tabblock();
        _page.scrollblock();
        _page.imglinks();
        _page.linktip();
        _menu.init();
        _slideshow.init();
        _178.isinit = !0
    }
}, _cookie = new function () {
    this.read = function (a) {
        var c = document.cookie, b = c.indexOf(a + "=");
        if (-1 == b)return !1;
        b += a.length + 1;
        a = c.indexOf(";", b);
        return -1 == a ? c.substring(b) : c.substring(b, a)
    };
    this.add = function (a, c, b) {
        b || (b = new Date, b.setTime(b.getTime() + 2592E6));
        document.cookie = a + "=" + c + ";path=/;domain=." + location.hostname + ";expires=" + b.toGMTString();
        return !0
    };
    this.del = function (a) {
        if (!this.read(a))return !1;
        var c = new Date;
        c.setTime(expires.getTime() - 1);
        document.cookie = a + "=" + this.read(a) + ";path=/;domain=." + location.hostname + ";expires=" + c.toGMTString();
        return !0
    }
};
jQuery.cookie = function (a, c, b) {
    if ("undefined" != typeof c) {
        b = b || {};
        null === c && (c = "", b.expires = -1);
        var d = "";
        if (b.expires && ("number" == typeof b.expires || b.expires.toUTCString)) "number" == typeof b.expires ? (d = new Date, d.setTime(d.getTime() + 864E5 * b.expires)) : d = b.expires, d = "; expires=" + d.toUTCString();
        var e = b.path ? "; path=" + b.path : "", j = b.domain ? "; domain=" + b.domain : "", b = b.secure ? "; secure" : "";
        document.cookie = [a, "=", encodeURIComponent(c), d, e, j, b].join("")
    } else {
        c = null;
        if (document.cookie && "" != document.cookie) {
            b = document.cookie.split(";");
            for (d = 0; d < b.length; d++)if (e = jQuery.trim(b[d]), e.substring(0, a.length + 1) == a + "=") {
                c = decodeURIComponent(e.substring(a.length + 1));
                break
            }
        }
        return c
    }
};
var _menu = new function () {
    this.data = {};
    this.cur = this.fadetime = this.submenu = !1;
    this.init = function (a, c) {
        c = c || jQuery("#menu");
        if (!c.length || c.hasClass("initted"))return !1;
        var a = a || this.data, b = jQuery("<div />").addClass("menusub").appendTo(c);
        jQuery("<div />").appendTo(b);
        c.find("a").each(function () {
            if (a[this.rel]) {
                var d = jQuery(this);
                d.parent().addClass("sub");
                d.find("span").append("<em />");
                d.bind("mouseover", function () {
                    clearTimeout(_menu.fadetime);
                    _menu.fadetime = !1;
                    if (d.hasClass("cur"))return !1;
                    _menu.hidesub();
                    d.addClass("cur");
                    _menu.cur = this;
                    _menu.submenu = b;
                    for (var e = a[this.rel], j = "", f = 0; f < e.length; f++)if (e[f])var n = e[f].url && "" != e[f].url && "|" != e[f].url, j = j + ((n ? '<a href="' + e[f].url + '" target="_blank"' + (e[f].icon && "" != e[f].icon ? ' style="background-image:url(' + e[f].icon + ')"' : "") + ">" : "<h3>") + "<span>" + e[f].title + "</span></" + (n ? "a>" : "h3>"));
                    b.find("div").html(j);
                    b.css("top", c.height() - 1).css("left", d.offset().left - c.offset().left - 5).slideDown()
                }).bind("mouseout", function () {
                    b.mouseout()
                })
            }
        });
        b.css("top", c.height() - 1).bind("mousemove", function () {
            clearTimeout(_menu.fadetime);
            _menu.fadetime = !1
        }).bind("mouseout", function () {
            clearTimeout(_menu.fadetime);
            _menu.fadetime = setTimeout(function () {
                _menu.hidesub()
            }, 200)
        })
    };
    this.hidesub = function () {
        jQuery(this.submenu).stop().css({height: "auto", display: "none"});
        jQuery(this.cur).removeClass("cur");
        this.cur = this.submenu = !1
    }
}, _tip = {
    isinit: !1,
    isshow: !1,
    isfloat: !1,
    tipblock: !1,
    contblock: !1,
    curnode: !1,
    curloading: !1,
    maxwidth: 350,
    cache: [],
    options: {pos: "mouse", usetable: !1, classname: _178.tipclass || "tooltip-default"},
    curoptions: {},
    init: function () {
        if (_tip.isinit)return !1;
        _tip.tipblock = jQuery('<div id="global-tooltip" />').appendTo("body");
        if (_tip.curoptions.usetable) {
            var a = jQuery("<table>", {
                cellspacing: 0,
                cellpadding: 0
            }).addClass("tooltip").appendTo(_tip.tipblock), c = jQuery("<td>").attr("valign", "top").text(" "), b = jQuery("<tr>"), d = c.clone();
            a.append(b.clone().append(c.clone().addClass("top-left")).append(c.clone().addClass("top-center")).append(c.clone().addClass("top-right"))).append(b.clone().append(c.clone().addClass("middle-left")).append(d.addClass("middle-center")).append(c.clone().addClass("middle-right"))).append(b.clone().append(c.clone().addClass("bottom-left")).append(c.clone().addClass("bottom-center")).append(c.clone().addClass("bottom-right")));
            _tip.contblock = d
        } else _tip.contblock = jQuery("<div />").addClass("tooltip").appendTo(_tip.tipblock);
        _tip.maxwidth = parseInt(_tip.tipblock.css("max-width")) || _tip.maxwidth;
        bIE6 && _tip.tipblock.css("width", "auto");
        _tip.isinit = !0
    },
    show: function (a, c, b) {
        if (!a && _tip.isshow)return !1;
        c || (c = "body");
        _tip.curnode = jQuery(c);
        b = !0 === b ? {pos: "bottomright"} : b || {};
        b.classname = b.classname || _178.tipclass;
        _tip.curoptions = jQuery.extend({}, _tip.options, b);
        jQuery.extend(_tip.curoptions, {title: c.title || "", alt: c.alt || ""});
        a === c.title && (a = _tip.curoptions.title);
        _tip.init();
        _tip.position(a, !0);
        c.title = "";
        c.alt = "";
        jQuery(c).unbind("mouseout.tooltip").bind("mouseout.tooltip", function () {
            _tip.hide()
        });
        _tip.isshow = !0
    },
    position: function (a, c) {
        _tip.tipblock.removeClass(_tip.curoptions.classname).css({width: "auto"});
        "mouse" != _tip.curoptions.pos && _tip.tipblock.css({top: "-1000px", left: "-1000px"});
        _tip.contblock.html(a);
        _tip.tipblock.addClass(_tip.curoptions.classname).css("width", bIE6 && _tip.contblock.width() > _tip.maxwidth ? _tip.maxwidth : _tip.tipblock.width());
        var b = _tip["_" + _tip.curoptions.pos](_tip.tipblock.width(), _tip.tipblock.height());
        b && (_tip.move(b.x, b.y), bIE6 && c && _tip.position(a))
    },
    hide: function () {
        if (!_tip.isinit || !_tip.isshow)return !1;
        _tip.curnode.unbind("mousemove.tooltip");
        _tip.curnode[0].title = _tip.curoptions.title;
        _tip.curnode[0].alt = _tip.curoptions.alt;
        _tip.curnode = !1;
        _tip.curoptions = {};
        _tip.tipblock.removeClass(_tip.curoptions.classname).css({width: "auto", top: "-1000px", left: "-1000px"});
        _tip.contblock.html();
        _tip.curloading = !1;
        _tip.isshow = !1
    },
    move: function (a, c) {
        _tip.tipblock.css({top: c, left: a})
    },
    _mouse: function (a, c) {
        _tip.curnode.unbind("mousemove.tooltip").bind("mousemove.tooltip", function (b) {
            var d = b.pageX + 25, b = b.pageY + 20, e = jQuery(window).width(), j = jQuery(window).height(), f = jQuery(window).scrollTop(), n = jQuery(window).scrollLeft();
            d + a + 25 > e + n && (d = d - a - 25 - 20);
            b + 10 + c > j + f && (b = j + f - c - 10);
            _tip.move(d, b)
        })
    },
    _bottomright: function (a, c) {
        var b = _tip.curnode.offset(), d = b.left + _tip.curnode.outerWidth(), b = b.top + _tip.curnode.outerHeight();
        return _tip.checkpos(d, b, a, c)
    },
    _bottomleft: function (a, c) {
        var b = _tip.curnode.offset(), d = b.left - a, b = b.top + _tip.curnode.outerHeight();
        return _tip.checkpos(d, b, a, c)
    },
    _topright: function (a, c) {
        var b = _tip.curnode.offset(), d = b.left + _tip.curnode.outerWidth();
        return _tip.checkpos(d, b.top - c, a, c)
    },
    _topleft: function (a, c) {
        var b = _tip.curnode.offset();
        return _tip.checkpos(b.left - a, b.top - c, a, c)
    },
    checkpos: function (a, c, b, d) {
        var e = _tip.curnode.offset();
        a + b + 5 > jQuery(window).width() ? a = e.left - b - 5 : 0 > a && (a = 15);
        c + d + 10 > jQuery(window).scrollTop() + jQuery(window).height() ? c = c - 10 - (c + d - (jQuery(window).scrollTop() + jQuery(window).height())) : e.top - 100 < jQuery(window).scrollTop() ? c = e.top + _tip.curnode.outerHeight() : c < jQuery(window).scrollTop() ? c = jQuery(window).scrollTop() + 10 : 0 > c && (c = 15);
        return {x: a, y: c}
    }
}, _slideshow = new function () {
    this.isinit = this.cur = this.to = this.old = this.max = this.time = this.animate = this.interval = this.intervalTime = !1;
    this.duration = 400;
    this.autotime = 5E3;
    this.dom = {block: !1, link: !1, imagesblock: !1, images: !1, textsblock: !1, texts: !1, list: !1, bar: !1};
    this.links = [];
    this.imgloaded = [];
    this.init = function () {
        if (this.isinit || 1 > jQuery("#global-slideshow").length || !(this.dom.block = jQuery("#global-slideshow")))return !1;
        this.dom.link = jQuery(this.dom.block).find(".global-slideshow-body > a");
        this.dom.imagesblock = jQuery(this.dom.link).find(".global-slideshow-images");
        this.dom.textsblock = jQuery(this.dom.link).find(".global-slideshow-texts");
        this.dom.list = jQuery(this.dom.block).find(".global-slideshow-links");
        jQuery(this.dom.list).find("a").each(function (a) {
            if (a < jQuery(_slideshow.dom.list).find("a").length - 1) {
                jQuery(this).removeClass("cur");
                jQuery(this).find("span").outerHeight() < jQuery(this).height() && jQuery(this).addClass("alt");
                var c, b, d, e;
                c = this.href;
                b = jQuery(this).find("small").html();
                d = jQuery(this).find("span").html();
                e = jQuery(this).find("i").html();
                b || (b = "");
                _slideshow.links.push({link: c, title: d, subhead: b, img: e});
                _slideshow.imgloaded.push(!1);
                0 < a ? (_slideshow.dom.imagesblock.append('<img src="" alt="' + d + '" class="_init" />'), _slideshow.dom.textsblock.append("<strong" + ("" == b && b != d ? ' class="alt"' : "><small>" + b + "</small") + "><span>" + d + "</span></strong>")) : (jQuery(this).addClass("cur"), _slideshow.dom.imagesblock.find("img").removeClass("cur").addClass("loading").css("opacity", 0));
                jQuery(this).bind("mousemove", function () {
                    _slideshow.roll(a)
                }).bind("mouseout", function () {
                    _slideshow.rollStop(a)
                });
                _slideshow.max = a
            }
        });
        this.dom.images = this.dom.imagesblock.find("img");
        this.dom.images.each(function (a) {
            jQuery(this).bind("load", function () {
                _slideshow.imgload(a, this)
            })
        });
        this.dom.texts = this.dom.textsblock.find("strong");
        this.dom.block.append('<div class="global-slideshow-timing"><b></b></div>');
        this.dom.bar = this.dom.block.find(".global-slideshow-timing")[0];
        this.cur = -1;
        this.intervalStart(!0);
        this.dom.block.bind("mousemove", function () {
            _slideshow.intervalStop()
        }).bind("mouseout", function () {
            _slideshow.interval || _slideshow.intervalStart()
        });
        this.isinit = !0
    };
    this.checklistheight = function () {
        jQuery(this.dom.list).find("a").each(function (a) {
            jQuery(this).removeClass("alt");
            a < jQuery(_slideshow.dom.list).find("a").length - 1 && jQuery(this).find("span").outerHeight() < jQuery(this).height() && jQuery(this).addClass("alt")
        })
    };
    this.imgload = function (a, c) {
        jQuery(c).hasClass("_init") && jQuery(c).removeClass("_init");
        this.imgloaded[a] = !0;
        this.cur == a && this.rollimg(a)
    };
    this.rollimg = function (a) {
        jQuery(this.dom.images[a]).animate({opacity: 1, top: 0}, this.duration, function () {
            jQuery(_slideshow.dom.images[a]).removeClass("loading").addClass("cur")
        });
        jQuery(this.dom.texts[a]).animate({opacity: 1, top: 0}, this.duration, function () {
            jQuery(_slideshow.dom.texts[a]).removeClass("loading").addClass("cur");
            _slideshow.interval && _slideshow.intervalStart()
        })
    };
    this.rollStop = function () {
        clearTimeout(this.time);
        this.time = !1;
        jQuery(this.dom.bar).find("b").css("width", 0)
    };
    this.roll = function (a) {
        if (this.cur == a)return !1;
        !a && 0 !== a && (a = this.cur + 1);
        a > this.max && (a = 0);
        this.rollStop();
        this.to = a;
        this.time = setTimeout(function () {
            _slideshow.old = _slideshow.cur;
            jQuery(_slideshow.dom.images[_slideshow.cur]).stop().animate({opacity: 0}, _slideshow.duration, function () {
                jQuery(_slideshow.dom.images[_slideshow.old]).removeClass("cur")
            }).css("z-index", 1);
            jQuery(_slideshow.dom.images[_slideshow.to]).stop().css({
                opacity: 0,
                top: bIE6 ? 0 : 40,
                "z-index": 2
            }).addClass("loading");
            jQuery(_slideshow.dom.texts[_slideshow.cur]).stop().animate({opacity: 0}, _slideshow.duration, function () {
                jQuery(_slideshow.dom.texts[_slideshow.old]).removeClass("cur")
            }).css("z-index", 1);
            jQuery(_slideshow.dom.texts[_slideshow.to]).stop().css({
                opacity: 0,
                top: bIE6 ? 0 : 40,
                "z-index": 2
            }).addClass("loading");
            _slideshow.imgloaded[_slideshow.to] ? _slideshow.rollimg(_slideshow.to) : _slideshow.dom.images[_slideshow.to].src = _slideshow.links[_slideshow.to].img + "?" + _178func.timeHash();
            _slideshow.dom.link[0].href = _slideshow.links[a].link;
            jQuery(_slideshow.dom.list).find("a").removeClass("cur");
            jQuery(_slideshow.dom.list).find("a").eq(_slideshow.to).addClass("cur");
            _slideshow.cur = _slideshow.to;
            _slideshow.checklistheight()
        }, 100)
    };
    this.intervalStop = function (a) {
        clearTimeout(this.intervalTime);
        this.intervalTime = !1;
        a || (this.interval = !1);
        jQuery(this.dom.bar).find("b").css("width", 0)
    };
    this.intervalStart = function (a) {
        this.interval = !0;
        this.intervalTime = setTimeout(function () {
            _slideshow.interval && (_slideshow.roll(), _slideshow.intervalStop(!0))
        }, a ? 0 : 5E3)
    }
}, _page = new function () {
    this.imgs = [];
    this.scrollDOM = [];
    this.imglinks = function (a) {
        a = a || jQuery("#" + _178.textblockId);
        a.find("img").filter(":not[width]").each(function () {
            var a = jQuery(this);
            if ("a" != this.parentNode.tagName.toLowerCase()) {
                var b = function () {
                    a.width() > _178.imgmaxwidth && a.width(_178.imgmaxwidth).css({cursor: "url(http://cimg.178.com/www/images/zoom.cur),pointer"}).click(function () {
                        window.open(_178.imgpage + "?img=" + a.attr("src") + "&title=" + escape(document.title))
                    })
                };
                this.complete ? b() : a.load(function () {
                    b()
                })
            }
        })
    };
    this.linktip = function (a) {
        a || (a = jQuery("body"));
        a.find("a").each(function () {
            jQuery(this).hasClass("hastip") && jQuery(this).bind("mouseover", function () {
                _tip.show(this.title, this)
            })
        })
    };
    this.tabblock = function (a) {
        a || (a = jQuery("body"));
        a.find(".tabbed").each(function () {
            var a = jQuery(this).hasClass("tabbed-click"), b = jQuery(this).find(".tabbed-tabs:first > *"), d = jQuery(this).find(".tabbed-contents:first > *"), e = !1;
            b.each(function (j) {
                jQuery(this).hasClass("cur") && (e = !0);
                jQuery(this).bind(a ? "click" : "mouseover", function () {
                    if (jQuery(this).hasClass("cur"))return !1;
                    b.removeClass("cur");
                    d.removeClass("cur");
                    jQuery(this).addClass("cur");
                    jQuery(d[j]).addClass("cur");
                    return !1
                })
            });
            e || (b.eq(0).addClass("cur"), d.eq(0).addClass("cur"))
        })
    };
    this.searchblock = function (a) {
        a || (a = jQuery("#global-search"));
        var c = a.find("input[name=wd]");
        if (!c.length)return !1;
        c.attr("title", c.val()).bind("focus", function () {
            jQuery(this).val() == jQuery(this).attr("title") && jQuery(this).val("")
        }).bind("blur", function () {
            "" == jQuery(this).val() && jQuery(this).val(jQuery(this).attr("title"))
        });
        a.submit(function () {
            window.open("http://www.baidu.com/s?wd=" + jQuery(this).find("input[name=wd]").val() + " site:" + location.host);
            return !1
        })
    };
    this.scrollblock = function (a) {
        a = a || jQuery("body");
        a.find(".scrolled").each(function () {
            var a = jQuery(this), b = a.hasClass("scrolled-x");
            b || a.find(".scrolled-content:first").css("width", a.find(".scrolled-viewpoint:first").width() - a.find(".scrolled-scroll:first").outerWidth(!0));
            a.addClass("clearfix").tinyscrollbar(b ? {axis: "x"} : "");
            _page.scrollDOM.push(a)
        })
    }
};
(function () {
    jQuery.fn.tinyscrollbar = function (a) {
        var c, b;

        function d() {
            g.obj.bind("mousedown", e);
            g.obj[0].ontouchstart = function (a) {
                a.preventDefault();
                g.obj.unbind("mousedown");
                e(a.touches[0]);
                return !1
            };
            l.obj.bind("mouseup", n);
            a.scroll && this.addEventListener ? (r[0].addEventListener("DOMMouseScroll", j, !1), r[0].addEventListener("mousewheel", j, !1)) : a.scroll && (r[0].onmousewheel = j)
        }

        function e(a) {
            s.start = q ? a.pageX : a.pageY;
            a = parseInt(g.obj.css(m));
            c = "auto" == a ? 0 : a;
            jQuery(document).bind("mousemove", n);
            document.ontouchmove = function (a) {
                jQuery(document).unbind("mousemove");
                n(a.touches[0])
            };
            jQuery(document).bind("mouseup", f);
            g.obj.bind("mouseup", f);
            g.obj[0].ontouchend = document.ontouchend = function (a) {
                jQuery(document).unbind("mouseup");
                g.obj.unbind("mouseup");
                f(a.touches[0])
            };
            return !1
        }

        function j(b) {
            1 <= h.ratio || (b = jQuery.event.fix(b || window.event), i -= (b.wheelDelta ? b.wheelDelta / 120 : -b.detail / 3) * a.wheel, i = Math.min(h[a.axis] - p[a.axis], Math.max(0, i)), g.obj.css(m, i / k.ratio), h.obj.css(m, -i), b.preventDefault())
        }

        function f() {
            jQuery(document).unbind("mousemove", n);
            jQuery(document).unbind("mouseup", f);
            g.obj.unbind("mouseup", f);
            document.ontouchmove = g.obj[0].ontouchend = document.ontouchend = null;
            return !1
        }

        function n(d) {
            1 <= h.ratio || (b = Math.min(l[a.axis] - g[a.axis], Math.max(0, c + ((q ? d.pageX : d.pageY) - s.start))), i = b * k.ratio, h.obj.css(m, -i), g.obj.css(m, b));
            return !1
        }

        var a = jQuery.extend({
            axis: "y",
            wheel: 40,
            scroll: !0,
            size: "auto",
            sizethumb: "auto",
            classViewport: "scrolled-viewpoint",
            classContent: "scrolled-content",
            classScrollbar: "scrolled-scroll"
        }, a), r = jQuery(this), p = {obj: jQuery("." + a.classViewport, this)}, h = {obj: jQuery("." + a.classContent, this)}, k = {obj: jQuery("." + a.classScrollbar, this)}, l = {obj: jQuery(".track", k.obj)}, g = {obj: jQuery(".thumb", k.obj)}, q = "x" == a.axis, m = q ? "left" : "top", t = q ? "Width" : "Height", i;
        b = c = 0;
        var s = {};
        if (1 < this.length)return this.each(function () {
            jQuery(this).tinyscrollbar(a)
        }), this;
        this.initialize = function () {
            this.update();
            d()
        };
        this.update = function (c) {
            var c = c || !1, d = i;
            p.obj.css("overflow", "hidden");
            k.obj.css("display", "block");
            i = 0;
            p[a.axis] = p.obj[0]["offset" + t];
            h[a.axis] = h.obj[0]["scroll" + t];
            h.ratio = p[a.axis] / h[a.axis];
            k.obj.toggleClass("disable", 1 <= h.ratio);
            l[a.axis] = "auto" == a.size ? p[a.axis] : a.size;
            g[a.axis] = Math.min(l[a.axis], Math.max(0, "auto" == a.sizethumb ? l[a.axis] * h.ratio : a.sizethumb));
            k.ratio = "auto" == a.sizethumb ? h[a.axis] / l[a.axis] : (h[a.axis] - p[a.axis]) / (l[a.axis] - g[a.axis]);
            g.obj.css(m, i / k.ratio);
            h.obj.css(m, -i);
            s.start = g.obj.offset()[m];
            var e = t.toLowerCase();
            k.obj.css(e, l[a.axis]);
            l.obj.css(e, l[a.axis]);
            g.obj.css(e, g[a.axis]);
            !(1 <= h.ratio) && c && (i = d, i + p[a.axis] > h[a.axis] && (i = h[a.axis] - p[a.axis]), h.obj.css(m, -i), 0 < k.ratio && 0 < i && (b = i / k.ratio, g.obj.css(m, b)))
        };
        return this.initialize()
    }
})(jQuery);
var _globalvar = {};
function _178init(a) {
    if (a)for (var c in a)switch (c) {
        case "menudata":
            _menu.data = a[c];
            break;
        default:
            _178[c] = a[c]
    }
    _178func.init()
}
jQuery(document).ready(function () {
    _178init(_globalvar)
});
function bookmark(a, c) {
    document.all ? window.external.AddFavorite(c, a) : window.sidebar && window.sidebar.addPanel(a, c, "")
};