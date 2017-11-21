package com.Stream.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Stream.entity.Hero;
import com.Stream.service.IcommonService;
import com.Stream.utils.CallBack;

@Controller
@RequestMapping("/hero")
public class HeroController extends BaseController {

	@Resource(name="heroServiceImp")
	private IcommonService hService;

	public IcommonService gethService() {
		return hService;
	}

	public void sethService(IcommonService hService) {
		this.hService = hService;
	}
	
	@RequestMapping(value="/heroAll")
	public void heroAll(){
		json(new CallBack() {
			@Override
			public void process(Map<String, Object> result) {
				List<Hero> hList=hService.selectList();
				result.put("hList", hList);
			}
		});
	}
	@RequestMapping(value="/heroAhri")
	public void heroAhri(final Hero h){
		json(new CallBack() {
			@Override
			public void process(Map<String, Object> result) {
				List<Hero> hero=hService.selectByid(h);
				result.put("hero", hero);
			}
		});
	}
}
