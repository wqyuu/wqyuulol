jQuery(function () {
    jQuery.getScript("http://tucao.uuu9.com/js/Cooike.js", function () {
        tucao.init();
    });
});
var backurl = "http://tucao.uuu9.com/tucao.ashx?callback=?";
var tucao = {};
tucao.init = function () {
    var html = '<div class="uuu9_vote">'
            + '<div class="uuu9_vote">'
            + '<div class="uuu9_vote_box_title">共有0人发表观点，请选择您的观点（只代表网友个人观点，与本网站立场无关）：</div>'
                + '<div class="uuu9_vote_box_button">'
                + '</div>'
                + '<div class="uuu9_vote_input_box">'
                   + ' <input type="text" class="uuu9_vote_input_text" maxlength="8" />'
                    + '<input type="button" class="uuu9_vote_input_button" value="发表" />'
                + '</div>'
            + '</div>'
        + '</div>';
    jQuery("#uuu9_vote_box").html(html);
    tucao.add();
    tucao.show();
};
tucao.setCookie = function (COOKIENAME) {
    jQuery.Tucao_cookie(COOKIENAME, COOKIENAME, { expires: 1, path: '/', domain: 'uuu9.com' }); 
};
tucao.show = function () {
    jQuery.getJSON(backurl, { t: "show", aid: tucaocanshu.aid, pid: tucaocanshu.pid, count: tucaocanshu.num }, function (data) {
        //查询
        jQuery(data).each(function (i, model) {
            if (i == 0) {
                jQuery(".uuu9_vote_box_title").html('共有' + model + '人发表观点，请选择您的观点（只代表网友个人观点，与本网站立场无关）：');
            } else {
                tmp = i > 4 ? 4 : i - 1;
                jQuery(".uuu9_vote_box_button").append('<span><a id="' + model.id + '" href="###" title="共有' + model.hcount + '人支持该观点" class="interactive_opinion_block_red' + tmp + '">' + model.text + '</a></span>');
            }
        });
        tucao.up();
    });
};
tucao.add = function () {
    jQuery(".uuu9_vote_input_button").click(function () {
        var CookieName = "UUU9TUCAOCOOKIEVALUE_PID_" + tucaocanshu.pid + "_AID_" + tucaocanshu.aid;
        if (null != jQuery.Tucao_cookie(CookieName) && jQuery.Tucao_cookie(CookieName).length > 0) {
            alert("您已经发表过观点");
            return;
        }
        var text = jQuery.trim(jQuery(".uuu9_vote_input_text").val());
        jQuery.getJSON(backurl, { t: "add", text: escape(text), aid: tucaocanshu.aid, pid: tucaocanshu.pid, count: tucaocanshu.num }, function (result) {
            if (result == 1) {
                alert('吐槽成功');
                jQuery(".uuu9_vote_box_button").append('<span><a href="###" title="' + text + '" class="interactive_opinion_block_red0">' + text + '</a></span>');
                tucao.setCookie(CookieName);
            } else if (result == 2) {
                alert('非法字符');
            } else if (result == 3) {
                //已有观点发表成功
                alert('发表成功');
                tucao.setCookie(CookieName);
            }
            tucao.clear();
        });
    });
};
tucao.up = function () {
    jQuery(".uuu9_vote_box_button a").click(function () {
        var CookieName = "UUU9TUCAOCOOKIEVALUE_PID_" + tucaocanshu.pid + "_AID_" + tucaocanshu.aid;
        if (null != jQuery.Tucao_cookie(CookieName) && jQuery.Tucao_cookie(CookieName).length > 0) {
            alert("您已经发表过观点");
            return;
        }
        jQuery.getJSON(backurl, { t: "up", id: jQuery(this).attr("id"), aid: tucaocanshu.aid, pid: tucaocanshu.pid, count: tucaocanshu.num }, function (result) {
            if (result > 0) {
                alert('吐槽成功');
                tucao.setCookie(CookieName);
            }
        })
    });
};
tucao.clear = function () {
    jQuery(".uuu9_vote_input_text").val('');
};