package com.Stream.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.Stream.entity.Skill;
import com.Stream.entity.User;
import com.Stream.service.IcommonService;
import com.Stream.utils.CallBack;

@Controller
@RequestMapping("/Skill")
public class SkillController extends BaseController {

	@Resource(name="skillServiceImp")
	private IcommonService ser;

	public IcommonService getSer() {
		return ser;
	}

	public void setSer(IcommonService ser) {
		this.ser = ser;
	}
	
	@RequestMapping("/allskill")
	public void allskill(){
		json(new CallBack() {
			@Override
			public void process(Map<String, Object> result) {
				List<Skill> sList=ser.selectList();
				result.put("sList", sList);
			}
		});
	}
	
	
}
