
var contentHTML = jQuery("#content").html();
var isRender = false;

if (contentHTML != null && contentHTML != undefined &&  contentHTML.indexOf("<!--uuu9tujiv2-->") >= 0) {

    contentHTML = contentHTML.replace(/<!--uuu9tujiv2-->/g, "<div class=\"img_321321321321\" style=\"display: none;\">");
    contentHTML = contentHTML.replace(/<!--\/uuu9tujiv2-->/g, "</div>");

    jQuery("#content").html(contentHTML);
    isRender = true;

}
var TemplateImageHTMLUUU920111146 = "<div class=\"nph_photo nph_skin_white\" id=\"PhotoGallery{PFIX}\"><div class=\"bigpic_ck\" id=\"originPicture{PFIX}\"><a href=\"#\">查看大图</a></div><div class=\"nph_photo_view\">    <div id=\"photoView{PFIX}\" class=\"nph_cnt\" style=\"width: 518px; margin: 0 auto;\"><img src=\"http://dev.uuu9.com/tuji/img/loading.gif\">    </div>    <div class=\"nph_photo_prev\"><a target=\"_self\" id=\"preArrow{PFIX}\" class=\"nph_btn_pphoto\" hidefocus=\"true\"></a>    </div>    <div class=\"nph_photo_next\"><a target=\"_self\" id=\"nextArrow{PFIX}\" class=\"nph_btn_nphoto\" hidefocus=\"true\"></a>    </div>    <div id=\"photoLoading{PFIX}\" class=\"nph_photo_loading hidden\">    </div></div><div class=\"nph_cnt\">    <div><span class=\"nph_set_cur\"><strong>（<span id=\"photoIndex{PFIX}\" class=\"nph_c_lh\">1</span>/<em    id=\"photoCount{PFIX}\">7</em>）</strong></span></div>    <div id=\"photoDesc{PFIX}\" class=\"nph_photo_desc\"><h2></h2>    </div></div><span class=\"nph_hr_solid\"></span><div class=\"nph_cnt clearfix\">    <div class=\"nph_photo_thumb\" style=\"width: 484px;\"><div class=\"clearfix\">    <div class=\"nph_scrl\"><div class=\"nph_scrl_thumb\">    <div class=\"nph_scrl_main\" id=\"areaThumb{PFIX}\"><ul id=\"thumb{PFIX}\" class=\"nph_list_thumb\"></ul>    </div>    <div class=\"nph_scrl_bar clearfix\"><span class=\"nph_scrl_lt\"></span><span class=\"nph_scrl_rt\"></span><div class=\"nph_scrl_bd\"  >    <div class=\"nph_scrl_ct\" id=\"dragAreaBar{PFIX}\"><div id=\"dragBar{PFIX}\" class=\"nph_btn_scrl\" style=\"width:100px; left:0;\">    <b class=\"nph_btn_lt\"></b><b class=\"nph_btn_rt\"></b><span class=\"nph_btn_bd\"><span><b class=\"nph_btn_ct\"></b></span></span></div>    </div></div>    </div></div>    </div>    <span class=\"nph_scrl_prev\"><a id=\"photoPer{PFIX}\" class=\"nph_btn_pscrl\"></a></span>    <span class=\"nph_scrl_next\"><a id=\"photoNext{PFIX}\" class=\"nph_btn_nscrl\" >    </a></span></div>    </div></div><iframe id='cifr{PFIX}' style='display: none'></iframe></div>";

	

        var scrollImagesObjectArray = [];
    

        function PhotoGalleryShow() {

            var thisObj = this;
            var SN = 0;
            this.PostFix = "";
            this.CurIndex = -1;
            this.List = [];
            //0 "PhotoGallery", 1 "photoView", 2 "preArrow", 3 "nextArrow", 4 "photoLoading", 5 "photoIndex", 6 "photoCount", 7 "photoDesc", 8 "thumb", 9 "dragBar",10 "dragAreaBar",11 "originPicture",12 "areaThumb",13 "photoPer", 14 "photoNext"
            var IDs = ["PhotoGal lery", "photoView", "preArrow", "nextArrow", "photoLoading", "photoIndex", "photoCount", "photoDesc", "thumb", "dragBar", "dragAreaBar", "originPicture", "areaThumb", "photoPer", "photoNext"];
            this.Next = function () {
                this.ShowImage(this.CurIndex + 1);
            }

            this.Previous = function () {
                if (this.CurIndex - 1 >= 0) {
                    this.ShowImage((this.CurIndex - 1));
                }
            }
            var imageCount = 0;
            this.Init = function (sn, ptObj) {
                SN = sn;
                this.PostFix = "_" + sn + "_" + (new Date()).getMilliseconds();

                var TemplateImage = TemplateImageHTMLUUU920111146.replace(/{PFIX}/g, this.PostFix); //替换ID，生成唯一ID

                jQuery("<div></div>").html(TemplateImage).insertAfter(ptObj);
                for (var i = 0; i < IDs.length; i++) {
                    IDs[i] = IDs[i] + this.PostFix;
                }

                ptObj.find("img").each(function (i) {
                    var leng = thisObj.List.length;
                    thisObj.List[leng] = {};
                    var src = ""

                    if (isRender) {
                        src = jQuery(this).attr("src");
                        jQuery(this).attr("src", "");
                        jQuery(this).removeAttr("src");

                    } else {
                        src = jQuery(this).attr("url");
                        if (src == "" || src == undefined) {
                            src = jQuery(this).attr("src");
                            jQuery(this).attr("src", "");
                            jQuery(this).removeAttr("src");
                        }

                    }


                    var alt = jQuery(this).attr("alt");
                    thisObj.List[leng].src = src;
                    thisObj.List[leng].alt = alt;

                    jQuery(this).hide();
                    jQuery("#" + IDs[8]).append("<li i=\"" + i + "\" ><a><img  src=\"" + getSmallImage(src) + "\"></a></li>");
                    imageCount++;
                });

                jQuery("#" + IDs[6]).html(imageCount);
                jQuery("#" + IDs[8]).width((jQuery("#" + IDs[12]).width() / 4) * imageCount); //为图片列表设置宽度



                jQuery("#" + IDs[8] + " li").click(function () {
                    var index = parseInt(jQuery(this).attr("i"));
                    thisObj.ShowImage(index);
                });
                InitScrollBar();
                jQuery("#" + IDs[2] + ",#" + IDs[13]).click(function () { thisObj.Previous(); });
                jQuery("#" + IDs[3] + ",#" + IDs[14]).click(function () { thisObj.Next(); });
                jQuery("#" + IDs[8] + " li").first().click();
            }

            this.ShowImage = function (index) {

                if (index >= 0 && index == this.CurIndex) return;    //如果点击的是当前不发生任何动作

                if (index > (this.List.length - 1)) {
                    //                                    if (typeof (gonext) != "function") {
                    //                                        window.location.href = jQuery("#nextid").attr("href");
                    //                                    } else {
                    //                                        gonext();
                    //                                    }
                    return;
                }



                jQuery("#cifr" + this.PostFix).attr("src", "/photolog.html?i=" + aid + "&n=" + (index + 1)); //记录点击数

                if (this.List.length > 4) {
                    ScrollImageList(index); //如果超过 4 添加滚动效果
                }

                var curLiDom = jQuery("#" + IDs[8] + " li").eq(index);
                var nextArrowDom = jQuery("#" + IDs[3]);
                var perArrowDom = jQuery("#" + IDs[2]);
                jQuery("#" + IDs[8] + " li").removeClass("nph_list_active"); //删除选择的

                curLiDom.addClass("nph_list_active"); //添加选择状态的css

                if (index >= 0 && index < this.List.length) {

                    this.CurIndex = index;

                }

                if (this.List[index].img == null || this.List[index].img == undefined) {  //初始化加载图片并存储起来
                    // jQuery("#" + IDs[1] + " img").attr("lowsrc", getSmallImage(this.List[index].src));
                    var loadingDom = jQuery("#" + IDs[4]);
                    loadingDom.show();        //显示加载过程图片
                    var img = jQuery("<img i='" + index + "' src='" + this.List[index].src + "' />").hide();
                    jQuery("body").append(img);
                    img.load(function () {
                        var w = 0, h = 0;

                        if (jQuery(this).width() > 520) {

                            h = jQuery(this).height() * 520 / jQuery(this).width();
                            w = 520;

                            if (h > 500) {
                                w = (w / h) * 500;
                                h = 500;
                            }

                            jQuery(this).width(w);
                            jQuery(this).height(h);

                        }
                        var index = parseInt(jQuery(this).attr("i"));

                        loadingDom.hide();                                                    //隐藏加载过程图片 
                        nextArrowDom.height(thisObj.List[index].H);
                        perArrowDom.height(thisObj.List[index].H);
                        thisObj.List[index].img = this;
                        thisObj.LoadImages(index);
                        jQuery(this).show();

                    });
                    //  jQuery("#" + IDs[1] + " img").replaceWith(img);




                } else {
                    thisObj.LoadImages(index);
                }

                //加载图片
                nextArrowDom.height(this.List[index].H);                          //为ie6 底下添加高度
                perArrowDom.height(this.List[index].H);                           //为ie6 底下箭头显示添加高度
                jQuery("#" + IDs[11]).html("<a href=\"/viewpic.htm?url=" + getBigImage(this.List[index].src) + "\" target=\"_blank\" >查看大图</a>");    //添加查看大图连接
                jQuery("#" + IDs[7]).html("<h2>" + this.List[index].alt + "</h2>");

                jQuery("#" + IDs[5]).html(index + 1);


                //                if (typeof (goprev) == "function") {
                //                    window.location.hash = "#p" + this.PostFix + "_" + index;
                //                } else {
                //                    window.location.hash = "#p" + (index + 1);
                //                }

            }
            this.LoadImages = function (index) {
             
                jQuery("#" + IDs[1] + " img").replaceWith(this.List[index].img);

            }
            function ScrollImageList(pi) {
                var perH = 106, perH2 = 104;
                var perA = 3;
                var t = 0, tbar = 0;
                var listLength = thisObj.List.length;


                //如果点击索有小于上次索引则向左滚动反之向右滚动
                if (pi < perA) {
                    tbar = perH2 * pi;
                } else {
                    t = perH * (pi - perA + 1);
                    tbar = perH2 * 2;
                    if (pi == (listLength - 1)) {
                        t = perH * (pi - perA);
                        tbar = perH * perA;
                    }
                }
                if (t < 0) return;

                jQuery("#" + IDs[9]).css("left", tbar);             //滚动条定位
                var left = parseInt(jQuery("#" + IDs[8]).css("left").toString().replace("px", ""));
             
                thisObj.animationScroll.animation(left, (0 - t), 20); //图片定位
            }


            function InitScrollBar() {
                //8 "thumb", 9 "dragBar",10 "dragAreaBar",12 "areaThumb"
                var endOffsetRight = jQuery("#" + IDs[10]).width() - jQuery("#" + IDs[9]).width();
       
                var pixSW = jQuery("#" + IDs[10]).width() - jQuery("#" + IDs[9]).width();
                var pixW = jQuery("#" + IDs[8]).width() - jQuery("#" + IDs[12]).width();
                var startOffsetTop = jQuery("#" + IDs[8]).offset().top;
                var startOffsetLeft = jQuery("#" + IDs[8]).offset().left;
                var startX = 0,left = 0;
                
              
                jQuery("#" + IDs[9]).bind("mousedown", function (e) {

                    startX = e.clientX;

                    leftX = parseInt(jQuery(this).css("left").toString().replace("px", ""));
                    thisObj.animationScroll.animation(parseInt(jQuery("#" + IDs[8]).css("left").toString().replace("px", "")), (0 - (leftX / pixSW) * pixW), 10);

                    jQuery(document).bind("mousemove", function (e) {
                        var lx = e.clientX - startX;
                        if ((leftX + lx) < -1) return;

                        if ((leftX + lx) > endOffsetRight) return;

                        jQuery("#" + IDs[9]).css("left", leftX + lx);
                        jQuery("#" + IDs[8]).css("left", (0 - (leftX + lx) *  pixW / pixSW));

                    });
                    jQuery(document).mouseup(function () {
                        jQuery(document).unbind("mousemove");
                    });
                });

            }
        
            this.animationScroll =
            {
                startPx: 0,
                endPx: 0,
                MaxIndex: 0,
                index: 0,
                isAdd: true,
                interval: 100,
                Scroll: function () {
                    if (this.index < this.MaxIndex) {
                        if (this.isAdd) {
                            this.startPx += 10;
                            if (this.startPx > this.endPx) {
                                jQuery("#" + IDs[8]).css("left", this.endPx);
                                return;
                            }
                        } else {
                            this.startPx -= 10;
                            if (this.startPx < this.endPx) {
                                jQuery("#" + IDs[8]).css("left", this.endPx);
                                return;
                            }
                        }
                        this.index++;
                       // DMsg(this.index);
                        jQuery("#" + IDs[8]).css("left", this.startPx);

                        window.setTimeout("scrollImagesObjectArray[" + SN  + "].animationScroll.Scroll()", thisObj.animationScroll.interval);
                    }
                },
                animation: function (m, n, i) {

                    this.startPx = m;
                    this.endPx = n;
                    this.MaxIndex = Math.abs(Math.abs(n) - Math.abs(m));
                    this.interval = i;
                    if (Math.abs(m) < Math.abs(n)) {
                        this.isAdd = false;
                    } else {
                        this.isAdd = true;
                    }
                    this.index = 0;
                    this.Scroll();
                }
            }

        }

  

        function RenderGallery() {
            jQuery(".img_321321321321").each(function (i) {

                scrollImagesObjectArray[i] = new PhotoGalleryShow();
                scrollImagesObjectArray[i].Init(i, jQuery(this));

            });
        }
        RenderGallery();

        function getSmallImage(img) {
           // if (img == "" || img == undefined) return "";
            var dotletter = img.lastIndexOf(".");
            var sletter = 3;
            var split = img.lastIndexOf("/");

            if (img.substring((split + 1), (split + 3)).toLowerCase() != "_z") sletter = 0;
            return img.substring(0, split) + "/" + img.substring((split + sletter), dotletter) + "_s.jpg";
        }



        function getBigImage(img) {
            var sletter = 3;
            var split = img.lastIndexOf("/");

            if (img.substring((split + 1), (split + 3)).toLowerCase() != "_z") sletter = 0;

            return img.substring(0, (split + 1)) + img.substr(split + sletter);
        }
