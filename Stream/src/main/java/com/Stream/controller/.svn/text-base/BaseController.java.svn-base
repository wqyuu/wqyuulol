package com.Stream.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.Stream.constants.CommonConstants;
import com.Stream.utils.CallBack;
import com.Stream.utils.ResponseUtils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;


public class BaseController {
	protected Gson gson=new GsonBuilder().create();
	protected HttpServletRequest request;
	protected HttpServletResponse response;

    /**
     * 存放当前线程的HttpServletRequest对象
     */
    private static ThreadLocal<HttpServletRequest> httpServletRequestThreadLocal = new ThreadLocal<HttpServletRequest>();
	/**
     * 获取当前线程的HttpServletRequest对象
     *
     * @return 当前线程的HttpServletRequest对象
     */
    protected HttpServletRequest getRequest() {
        return httpServletRequestThreadLocal.get();
    }

    /**
     * 获取当前线程的HttpSession对象
     *
     * @return 当前线程的HttpSession对象
     */
    protected HttpSession getSession() {
        return getRequest().getSession();
    }
    
    /**
     * 向 HttpServletRequest 设置属性值
     *
     * @param name  属性名
     * @param value 属性值
     */
    protected void setRequestAttribute(String name, Object value) {
        HttpServletRequest request = this.getRequest();
        request.setAttribute(name, value);
    }

    /**
     * 向 HttpSession 设置属性值
     *
     * @param name  属性名
     * @param value 属性值
     */
    public void setSessionAttribute(String name, Object value) {
        HttpSession session = this.getSession();
        session.setAttribute(name, value);
    }

    /**
     * 从 HttpSession 中获取属性值
     *
     * @param name 属性名
     * @return 属性值
     */
    protected Object getSessionAttribute(String name) {
        HttpSession session = this.getSession();
        Object value = session.getAttribute(name);
        return value;
    }

    /**
     * 从 HttpServletRequest 中获取属性值
     *
     * @param name 属性名
     * @return 属性值
     */
    protected Object getRequestAttribute(String name) {
        HttpServletRequest request = this.getRequest();
        Object value = request.getAttribute(name);
        return value;
    }
	@ModelAttribute
	public void httpObject(HttpServletRequest request,HttpServletResponse response){
		this.request=request;
		this.response=response;
		httpServletRequestThreadLocal.set(request);
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
	
	public ModelAndView exetuce(CallBack callback,String viewname){
		Map<String, Object> map=new HashMap<String, Object>();
		int flag=CommonConstants.SUCCESS;
		try {
			callback.process(map);
		} catch (Exception e) {
			flag=CommonConstants.FAIL;
			e.printStackTrace();
		}finally
		{
			map.put("flag", flag);
		}
		return new ModelAndView(viewname,map);
	}
	
	public void json(CallBack callback){
		Map<String, Object> map=new HashMap<String, Object>();
		int flag=CommonConstants.SUCCESS;
		try {
			callback.process(map);
		} catch (Exception e) {
			flag=CommonConstants.FAIL;
			e.printStackTrace();
		}finally
		{
			map.put("flag", flag);
		}
		/**
		 * 能处理多种结果
		 */
		// response.setContentType("application/json;charset=UTF-8");
		// response.getWriter().write(gson.toJson(res));
		new ResponseUtils(response).renderJSON(gson.toJson(map));
		System.out.println(gson.toJson(map));
	}
	
	/**
     * 检查用户是否登陆，如果登陆就返回应该跳转到的页面，否则执行接下来的逻辑
     * 每次登陆之前都从request的header中获取跳转之前的链接referer
     * 如果为空（从别的网站跳转过来的），那么应该跳转到首页
     * 登陆流程中第一次登陆就会调用本方法获取跳转链接，登陆失败将referer写入session中
     * 如果是从登录页跳转过来的，可能是登陆出错了，但是跳转到登录页之前的referer在session存着，从session中获取
     * 如果sesson中有referer，那么登陆成功跳转到referer，并且从session中删除referer
     *
     * @return
     */
    public String getReferer() {
        String referer = null;
        String tmp = this.getRequest().getHeader("Referer");
        // 如果为空，不是从本站跳转过来的，应该跳转到首页
        if (tmp == null) {
            referer = "/";
        } else if (tmp.endsWith("/login")) {
            referer = (String) this.getSession().getAttribute("Referer");
        } else {
            referer = tmp;
        }
        this.getSession().setAttribute("Referer", referer);
        return referer;
    }
    
    public String getPath(String realPath) {
		SimpleDateFormat sfd = new SimpleDateFormat("yyyyMMdd");
		String date = sfd.format(new Date());
		// F:\STworkspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp1\wtpwebapps\SSM\‘upload\20171110
		String path = realPath + File.separator + date;
		System.out.println(path);
		File file = new File(path);
		if (!file.exists()) {
			file.mkdirs();
		}
		return path;
	}
}
