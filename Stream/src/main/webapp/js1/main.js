/*axios的基本配置*/
axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';
//测试环境，生产环境需修改
//axios.defaults.baseURL = 'http://book.cdeledu.com';
//测试环境不做要求
//axios.defaults.timeout = 5000;
//vue 设置默认跳转路径
//书名和图书点击进入图书详情  http://localhost:8080/Stream/serach/kindGame1.do?Page
var DetailUrl='http://localhost:8080/Stream/jsp/kinds2.html?kid=';
var ClassificationUrl='/views/bookPc/bookMain/bookClassification.html?classificationId';
var ApiUrl='';
Vue.prototype.toDetail = function (kid){
	window.location.href=DetailUrl+kid;
}
/*Vue.prototype.toBookClassification=function(classificationId){
	window.location.href=ClassificationUrl+classificationId;
}
Vue.prototype.toBookApi=function(isbn10){
	window.location.href=bookApiUrl+isbn10;
}*/