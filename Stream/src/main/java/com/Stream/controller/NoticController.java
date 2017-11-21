package com.Stream.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.Stream.dao.NoticeDao;
import com.Stream.entity.LolNotic;
import com.Stream.entity.NoticHero;
import com.Stream.service.IcommonService;
import com.Stream.utils.CallBack;

@Controller
@RequestMapping("/notic")
public class NoticController extends BaseController {

	@Resource(name="noticServiceImp")
	private IcommonService nser;

	public IcommonService getNser() {
		return nser;
	}

	public void setNser(IcommonService nser) {
		this.nser = nser;
	}
	
	@RequestMapping(value="/findAllNotic")
	public ModelAndView findAllNotic(final LolNotic notic){
		return exetuce(new CallBack() {
			@Override
			public void process(Map<String, Object> result) {
				notic.setTotalCount(nser.count(notic));
				notic.setPageYes(true);
				notic.setPageRow(8);
				if(notic.getPage()>=notic.getTotalPage()){
					notic.setDownPage(notic.getTotalPage());
				}
				if(notic.getPage()==1){
					notic.setUpPage(1);
				}
				List<LolNotic> noList= nser.selectList(notic);
				result.put("backpage", notic.getUpPage());
				result.put("nextpage", notic.getDownPage());
				result.put("nList", noList);
			}
		}, "page/newList");
	}
	@RequestMapping(value="/Notice")
	public ModelAndView Notice(final LolNotic notic){
		return exetuce(new CallBack() {
			@Override
			public void process(Map<String, Object> result) {
			   LolNotic notice=nser.selectById(notic);
			   result.put("notic", notice);
			   result.put("hList", notice.getNoticHeros());
			  List<NoticHero>  hList=notice.getNoticHeros();
			  List slist=new ArrayList<>();
			  for (NoticHero noticHero : hList) {
				  slist.add(noticHero.getNoticSkills());
			}
			   result.put("slist",slist);
			   result.put("ooList", notice.getNoticOos());
			   result.put("noticO", notice.getNoticOs().get(0));
			}
		}, "page/gxgg");
	}
}
