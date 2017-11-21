package com.Stream.constants;

public interface CommonConstants {

	boolean PAGE_YES_NO=false;
	int PAGE_ROW=3;
	int PAGE_VALUE=1;
	
	int SUCCESS=1001;
	int FAIL=1002;
	int INSERT_SUCCESS=1003;
	int DELETE_SUCCESS=1004;
	int UPDATE_SUCCESS=1005;
	int SELECT_SUCCESS=1006;
	
	int INSERT_Fail=1013;
	int DELETE_Fail=1014;
	int UPDATE_Fail=1015;
	int SELECT_Fail=1056;
	
	String INSERT_SB="INSERT_SB";
	String INSERT_CG="INSERT_CG";
	
	String DELETE_SB="DELETE_SB";
	String DELETE_CG="DELETE_CG";
	
	String UPDATE_SB="UPDATE_SB";
	String UPDATE_CG="UPDATE_CG";
	
	String SELECT_SB="SELECT_SB";
	String SELECT_CG="SELECT_CG";
	
	String JSON_TYPE="application/json";
	String HTML_TYPE="text/html";
	String TEXT_TYPE="text/plain";
	String XML_TYPE="text/xml";
	
	/**
     * 未验证，需要邮箱验证
     */
	int STAT_NOT_VALIDATE = 0;
    /**
     * 正常
     */
	int STAT_OK = 1;
    /**
     * 受限
     */
	int STAT_RESTRICT = 2;
    /**
     * 已删除
     */
	int STAT_DEL = 3;
	

    public static final String OK = "OK";

    public static final String ERROR = "服务器内部错误";

    public static final String ERROR_PARAMS = "参数错误";

    public static final String NOT_FOUND = "没有找到请求的资源";

    public static final String ERROR_LOGIN = "用户名或密码错误";

    public static final String EMPTY_LOGIN = "用户名或密码不能为空";

    public static final String EMPTY_NICKNAME = "昵称不能为空";

    public static final String ERROR_NICINAME = "昵称长度不能大于10个字符且不能包含非法字符";

    public static final String USER_NOT_VALIDATE = "请先验证邮箱";

    public static final String USER_USERNAME_EXISTS = "该用户名已被注册";

    public static final String USER_VALIDATED = "您的邮箱已经验证过了，无需再次验证";

    public static final String USER_HAVE_LOGIN = "您已经登陆，无需再次登陆";

    public static final String USER_NOT_LOGIN = "请先登陆";

    public static final String USER_RESTRICT = "你已经被限制登陆，请联系管理员解除限制";

    public static final String EMAIL_REGISTERED = "该邮箱已被注册";

    public static final String EMAIL_NOT_REGISTERED = "该邮箱还未注册";

    public static final String ERROR_EMAIL = "请输入正确的电子邮箱";

    public static final String CODE_ERROR = "邮箱验证码错误";

    public static final String EMPTY_USERNAME = "用户名不能为空";

    public static final String EMPTY_PASSWORD = "密码不能为空";

    public static final String EMPTY_PHONE = "手机号不能为空";

    public static final String ERROR_PHONE = "请填入真实的手机号码";

    public static final String EMPTY_EMAIL = "邮箱不能为空";

    public static final String ERROR_PASSWORD_FORMAT = "密码应不少于6位且不大于16位";

    public static final String NAME_EXISTS = "该名称已存在";

    public static final String LOGIN_NOT_ALLOW = "没有权限，禁止登陆";

    public static final String ERROR_FILE_TYPE = "不支持的文件类型";
}
