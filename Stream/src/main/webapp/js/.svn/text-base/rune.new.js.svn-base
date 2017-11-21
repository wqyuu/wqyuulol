/* LOL符文系统 1.0 Adang */
function del() {
	var lis = $("#RuneData li");
	lis.html(''); // 清除已经选符文
	$("#RuneIP").html(''); // 清除总价
	$('#Statistics').html(''); // 清除统计
}
var Lol = {};
(function(o) {
	var Adang = runeData;
	// 基本参数
	o.obj = {
		Leve : 1,
		Color : 'Blue',
		Prop : 0,
		Lv : 30
	}

	// 英雄等级
	o.Lvs = function(k) {
		var lis = $("#RuneData li");
		lis.removeClass('yes'); // 清除状态
		lis.attr('data-v', ''); // 清除状态
		lis.html(''); // 清除已经选符文
		$("#RuneIP").html(''); // 清除总价
		$('#Statistics').html(''); // 清除统计
		for (var j = 1; j < (k + 1); j++) {
			var n = j;
			var i = 0;
			var t = 0;
			if (n % 10 == 0) {
				i = 9 * 3 + n / 10 - 1;
				t = 4;
			} else {
				var t = parseInt(n / 10) + 1;
				var c = parseInt(n / 10);
				var a = parseInt((n % 10 - 1) / 3) + c * 3;
				var b = (n % 10 - 1) % 3;
				i = a + b * 9;
			}
			lis.eq(i).addClass('yes');
			lis.eq(i).attr('data-v', 'yes');
		}
	}
	// 读取数据
	o.Data = function(op) {

		if (op) {
			$.extend(o.obj, op);
		}
		try {
			// var Data = eval('(' + eval(o.obj.Color) + ')');
			if (Adang[o.obj.Color] == null) {

				Adang[o.obj.Color] = runeData[o.obj.Color];
				o.Output();

			} else {
				o.Output();
			}
		} catch (e) {
			return;
		};
	}
	// 输出符文
	o.Output = function() {
		var d = Adang[''+o.obj.Color+''];
		var arr = [];
		for(var ei in d ){

			if(d[ei]['debug'] != 1){

				//var img = 'http://db.178.com/lol/images'+d[ei]['img'];
				//http://cimg.178.com/lol/images/content/rune/8003.png
				var img ='../images'+d[ei]['img'];// '../images'+d[ei]['img'];//y_3_3.png
				//http://cimg.178.com/lol/images/content/rune/8003.png
				//http://cimg.178.com/lol/images/content/rune/5245.png
				//http://db.178.com/lol/images/content/rune/5247.gif
				//http://cimg.178.com/lol/images/icon/js/runes/8003.png

				var txt = d[ei]['info'];

				if (o.obj.Prop == 0 ) { // 效果分类

					if(d[ei]['level'] != ""){ // 判断等级无数据不输出

						if(o.obj.Leve == d[ei]['level']){

							arr.push('<li a="' + o.obj.Color + '" b="' + d[ei]['id'] + '" c="'
								+  d[ei]['level'] + '"><img src="' + img + '" /><span  style="width:200px;overflow:hidden;height:44px;">'
								+ txt + '</span></li>');

						}

					}

				} else{

					if(d[ei]['type'] == o.obj.Prop){

						if(o.obj.Leve == d[ei]['level']){

							arr.push('<li a="' + o.obj.Color + '" b="' + d[ei]['id'] + '" c="'
								+  d[ei]['level'] + '"><img src="' + img + '" /><span style="width:200px;overflow:hidden;height:44px;">'
								+ txt + '</span></li>');

						}

					}

				}
			}

		}

		$('#RuneList').html(arr.join('\n'));
		var lis = $('#RuneList').find('li');
		lis.hover(function() {
					o.Hover($(this));
				}, function() {
					$(".HoverData").hide();
				});
		o.AddRune();
	}
	// 显示浮动层
	o.Hover = function(t) {
		var box = $(".HoverData");
		var offset = t.offset();
		var a = t.attr('a');
		var b = t.attr('b');
		var c = t.attr('c');
		var BoxX = offset.left;
		var BoxY = offset.top + t.height() + 3;
		var arr = [];
		var src, lev;
		var d = Adang[''+a+''];
		if (t.attr('src') == undefined) {
			src = t.find('img').attr('src')
		} else {
			src = t.attr('src');
		}
		if (c == '3') {
			lev = '高级';
		} else if (c == '2') {
			lev = '中级';
		} else {
			lev = '初级';
		}
		arr.push('<div class="Clear">');
		arr.push('<img src="' + src + '" alt=""><dl>');
		arr.push('<dt><strong class="fl">'+ d[b].name
				+ '</strong><span class="fr">IP:' + d[b]['ip']
				+ '</span></dt><dd>');
		arr.push('<p>' + d[b]['info']+ '</p>');
		// <!--arr.push('<p class="c-f00">' + d[b].Recom + '</p>');-->
		arr.push('</dd></dl></div>');
		box.html(arr.join(''));
		box.css({
					left : BoxX,
					top : BoxY
				});
		box.show();
		// box.fadeIn(300);
	}
	// 添加符文
	o.AddRune = function() {
		var lis = $('#RuneList li');
		lis.click(function() {
					var t = $(this);
					var l = $('.' + t.attr('a') + ' li');
					for (var i = 0; i < l.length; i++) {
						if (l.eq(i).html() == ''
								&& l.eq(i).attr('data-v') == 'yes') { // 判断当前格是否为空和是否可填状态
							var a = t.attr('a');
							var b = t.attr('b');
							var c = t.attr('c');

							if(a == 'Purple'){

								var $img = $('<img width="120" height="121" a="' + a + '" b="' + b + '" c="'
										+ c + '" src="' + t.find('img').attr('src')
										+ '" />');

							}else{

								var $img = $('<img width="50" height="56" a="' + a + '" b="' + b + '" c="'
										+ c + '" src="' + t.find('img').attr('src')
										+ '" />');

							}
							$img.hover(function() {
										o.Hover($(this));
									}, function() {
										$(".HoverData").hide();
									});
							l.eq(i).html($img);
							o.Statistics(a, b, c);
							break;
						}
					}
				});
	}
	// 数据统计
	o.Statistics = function(a, b, c, t) {
		var d = Adang[a];
		if(d[b]['debug'] == 2){
			var p = 2;
		}else{
			var p = 1;
		}
		var Pip = $("#RuneIP");
		var ul = $("#Statistics");

		// 统计IP
		if (Pip.html() == '') {
			Pip.html(d[b]['ip']);
		} else {
			var ip = parseFloat(Pip.html());
			if (t == undefined) {
				ip = Number(ip) + Number(d[b]['ip']);
			} else {
				ip = Number(ip)- Number(d[b]['ip']);
			}
			if (ip == 0) {
				Pip.html('');
			} else {
				Pip.html(ip);
			}
		}
		var f=0;
		for(f;f<p;f++){
			if(f > 0){
				var Alias = d[b]['Alias1'];
				if(d[b]['Units1'] == null){
					d[b]['Units1'] = '';
				}
				if(d[b]['bonus181'] != null){
					d[b]['bonus1'] = d[b]['bonus181'];
				}else{
					d[b]['bonus1'] = d[b]['bonus1'];
				}
				d[b]['Prop1'] = d[b]['Prop1'];

			}else{

				var Alias = d[b]['Alias'];
				if(d[b]['Units'] == null){
					d[b]['Units'] = '';
				}
				if(d[b]['bonus18'] != null){
					d[b]['bonus'] = d[b]['bonus18'];
				}else{
					d[b]['bonus'] = d[b]['bonus'];
				}
			}
			var li = ul.find('.' + Alias);
			// 统计属性
			if (li.html() == null) {
				var html = ul.html();

				if(d[b]['bonus18'] != null){

					html += '<li class="' + Alias + '"><em>' + '18级时'+d[b]['Prop']
							+ '：</em><span>' + d[b]['bonus'] + '</span>' + d[b]['Units']
							+ '</li>';

				}else{

					if(f > 0){

						html += '<li class="' + Alias + '"><em>' + d[b]['Prop1']
						+ '：</em><span>' + d[b]['bonus1'] + '</span>' + d[b]['Units1']
						+ '</li>';

					}else{

						html += '<li class="' + Alias + '"><em>' + d[b]['Prop']
						+ '：</em><span>' + d[b]['bonus'] + '</span>' + d[b]['Units']
						+ '</li>';

					}

				}
				ul.html(html);
			} else {
				var s1 = parseFloat(li.find('span').eq(0).html());
				if(f > 0){

					var s2 = parseFloat(d[b]['bonus1']);

				}else{

					var s2 = parseFloat(d[b]['bonus']);

				}
				var s3 = 0;
				if (t == undefined) {
					s3 = s1 + s2;
				} else {
					s3 = s1 - s2;
				}
				if (s3 > 0) {
					s3 = '+' + s3.toFixed(3);
				} else {
					s3 = s3.toFixed(3);
				}
				if (s3 == 0) {
					li.remove();
				} else {
					li.find('span').eq(0).html(s3);
				}
			}

		}
	}

	// 选项获取参数
	o.Select = function() {
		var ol = $("#Select ol");
		o.obj.Color = o.Liv(ol.eq(0).find('li'));
		o.obj.Leve = o.Liv(ol.eq(1).find('li'));
		o.obj.Prop = o.Liv(ol.eq(2).find('li'));
		o.Data();
	}
	o.Liv = function(lis) {
		for (var j = 0; j < lis.length; j++) {
			if (lis.eq(j).attr('class') == 'hover') {
				return lis.eq(j).attr('data-v');
			}
		}
	}
	o.share = function() {
		var r = "";
		var b = "";
		var y = "";
		var p = "";
		var runes = $("#RuneData").find("img");
		var pro = "";
		if (runes.size() != 0) {
			runes.each(function(i, img) {
						switch ($(img).attr("a")) {
							case "Red" :
								r += $(img).attr("c").substring(3)
										+ ""
										+ ($(img).attr("b").length > 1 ? $(img)
												.attr("b") : "0"
												+ $(img).attr("b"))+',';
								break;
							case "Yellow" :
								y += $(img).attr("c").substring(3)
										+ ""
										+ ($(img).attr("b").length > 1 ? $(img)
												.attr("b") : "0"
												+ $(img).attr("b"))+',';
								break;
							case "Blue" :
								b += $(img).attr("c").substring(3)
										+ ""
										+ ($(img).attr("b").length > 1 ? $(img)
												.attr("b") : "0"
												+ $(img).attr("b"))+',';
								break;
							case "Purple" :
								p += $(img).attr("c").substring(3)
										+ ""
										+ ($(img).attr("b").length > 1 ? $(img)
												.attr("b") : "0"
												+ $(img).attr("b"))+',';
								break;
						}
					});
		}
		pro = r + "|" + y + "|" + b + "|" + p;
		if (pro.length == 3) {
			return "";
		}

		return pro;
	};
	o.load = function() {
		var pro = location.search;
		if (pro != "") {
			pro = pro.substring(1).split("|");

			var prpt = {
				"Red" : pro[0],
				"Yellow" : pro[1],
				"Blue" : pro[2],
				"Purple" : pro[3]
			};

			var runeTable = $("#RuneData");
			var id = -1;
			var lv = -1;

			var temp = "";
			var $img="";
			$.each(prpt, function(key, rune) {

						if (rune != "") {
							temp = rune.split(",");

							for (var j = 0; j < temp.length; j++) {

								if(temp[j] == ''){

									break;

								}

								//
								//$img=$("<img src='http://db.178.com/lol/images" + runeData[key][temp[j]]['img'] + "' a='"
								$img=$("<img src='http://cimg.178.com/lol/images" + runeData[key][temp[j]]['img'] + "' a='"
												+ key + "' b='" + temp[j]
												+ "' c='" + runeData[key][temp[j]]['level'] + "' />");
								$img.hover(function() {
										o.Hover($(this));
									}, function() {
										$(".HoverData").hide();
									});

								runeTable.find("ul." + key + ">li").eq(j)
										.html($img);

								o.Statistics(key, temp[j], runeData[key][temp[j]]['level']);
							}
						}

					});

		}
	};

})(Lol);
Lol.Select();
Lol.Lvs(30);
// 英雄等级
/*
 * var LvLi = $('#LvList li'); LvLi.click(function(){ var a = $(this);
 * if(a.attr('class') == 'hover'){return;}
 * a.parent().find('li').removeClass('hover'); a.addClass('hover');
 * Lol.Lvs(parseFloat(a.html())); });
 */
var LvDl = $("#Level");
LvDl.hover(function() {
			$(this).find('dt').addClass('hover');
			$(this).find('dd').show();
		}, function() {
			$(this).find('dt').removeClass('hover');
			$(this).find('dd').hide();
		});
var lis = LvDl.find('li');
lis.click(function() {
			var a = $(this);
			if (a.attr('class') == 'hover') {
				LvDl.find('dd').hide();
				return;
			}
			lis.removeClass('hover');
			a.addClass('hover');
			LvDl.find('em').html('修改召唤师等级：' + $(this).html());
			LvDl.find('dd').hide();
			var lv = parseFloat(a.html());
			Lol.Lvs(lv);
			// ////修改召唤师后输出相关符文
			var ovs = $("#ovs li");
			ovs.removeClass();
			if (lv < 20) {
				ovs.eq(2).addClass('null');
				if (lv > 10) {
					ovs.eq(1).addClass('hover');
				}
			} else {
				ovs.eq(2).addClass('hover');
			}
			if (lv < 11) {
				ovs.eq(1).addClass('null');
				ovs.eq(0).addClass('hover');
			}
			Lol.obj.Leve = Lol.Liv(ovs);
			Lol.Data();
		});
// 选择类型
var SelectLi = $("#Select ol li");
SelectLi.click(function() {
			var a = $(this);
			if (a.attr('class') == 'hover' || a.attr('class') == 'null') {
				return;
			}
			a.parent().find('li').removeClass('hover');
			a.addClass('hover');
			Lol.Select();
		});
// 清除已添加符文
var LeftLi = $("#RuneData ul li");
LeftLi.click(function() {
			var t = $(this);
			if (t.html() != '') {
				var img = t.find('img').eq(0);
				var a = img.attr('a');
				var b = img.attr('b');
				var c = img.attr('c');
				Lol.Statistics(a, b, c, false);
				t.find('img').remove();
				$(".HoverData").hide();
			}
		});
// Name = 名称，Alias = 别名，lev1 = 等级1到3，Prop = 属性，Type = 分类，IP = 金钱 Img = 图标 Units
// = 单位 Standby = 备用
$("#share").click(function() {
			if (Lol.share() != "") {
				copy(location.href + "?" + Lol.share(), "复制成功",
						"您的浏览器不支持复制，请手动复制");
			}
			return false;
		});

function copy(txt, ieMsg, msg) {
	if (window.clipboardData) {
		window.clipboardData.clearData();
		window.clipboardData.setData("Text", txt);
		alert(ieMsg);
	} else {
		window.prompt('您的浏览器不支持复制，请手动复制', txt);
	}
}
Lol.load();