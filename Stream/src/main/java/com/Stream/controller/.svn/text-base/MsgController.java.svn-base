package com.Stream.controller;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.socket.TextMessage;

import com.Stream.entity.Message;
import com.Stream.entity.User;
import com.Stream.utils.MyWebSocketHandler;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping("/msg")
public class MsgController extends BaseController {
	@Resource
	MyWebSocketHandler handler;
	Map<Integer, User> users = new HashMap<Integer, User>();

	// 模拟一些数据
	@ModelAttribute
	public void setReqAndRes() {
		User u1 = new User();
		u1.setId(1);
		u1.setUsername("腾讯官方客服");
		users.put(u1.getId(), u1);
		User u2 = new User();
		u2.setId(2);
		u2.setUsername("腾讯官方客服");
		users.put(u2.getId(), u2);
	}

	@RequestMapping(value = "/login")
	public ModelAndView login(User user, HttpServletRequest request) {
		System.out.println("sss");
		request.getSession().setAttribute("uid", user.getId());
		request.getSession().setAttribute("name", users.get(user.getId()).getUsername());
		return new ModelAndView("page/talk");
	}

	// 跳转到交谈聊天页面
	@RequestMapping(value = "talk", method = RequestMethod.GET)
	public ModelAndView talk() {
		return new ModelAndView("talk");
	}

	// 跳转到发布广播页面
	@RequestMapping(value = "broadcast", method = RequestMethod.GET)
	public ModelAndView broadcast() {
		return new ModelAndView("broadcast");
	}

	// 发布系统广播（群发）
	@ResponseBody
	@RequestMapping(value = "broadcast", method = RequestMethod.POST)
	public void broadcast(String text) throws IOException {
		Message msg = new Message();
		msg.setDate(new Date());
		msg.setFrom(-1);
		msg.setFromName("系统广播");
		msg.setTo(0);
		msg.setText(text);
		handler.broadcast(new TextMessage(new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create().toJson(msg)));
	}
}
