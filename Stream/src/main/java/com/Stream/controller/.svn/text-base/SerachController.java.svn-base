package com.Stream.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Stream.constants.CommonConstants;
import com.Stream.entity.Game;
import com.Stream.entity.Kind;
import com.Stream.service.IcommonService;
import com.Stream.utils.CallBack;

@Controller
@RequestMapping("/serach")
public class SerachController extends BaseController {

	@Resource(name="gameServiceImp")
	private IcommonService gservice;
	@Resource(name="kindServiceImp")
	private IcommonService kservice;
	
	public IcommonService getKservice() {
		return kservice;
	}

	public void setKservice(IcommonService kservice) {
		this.kservice = kservice;
	}

	public IcommonService getGservice() {
		return gservice;
	}

	public void setGservice(IcommonService gservice) {
		this.gservice = gservice;
	}
	
	@RequestMapping(value="/findAllK")
	public ModelAndView findAllK(final Kind kind,@RequestParam(name="Page")final int Page){
		return exetuce(new CallBack() {
			
			@Override
			public void process(Map<String, Object> result) {
				kind.setTotalCount(kservice.count(kind));
				kind.setPageYes(true);
				kind.setPage(Page);
				List<Kind> kinds=kservice.selectKinds(kind);
				if(kinds!=null&&kinds.size()>0){
					System.out.println(kinds.size());
					Game game=kinds.get(0).getGame().get(0);
					result.put("kinds", kinds);
					result.put("game", game);
					result.put("totalpage", kind.getTotalPage());
				}
			}
		}, "jsp/search");
		
	}
	
	@RequestMapping(value="/findAllKind")
	public void findAllKind(final Kind kind,@RequestParam(name="Page")final int Page){
		json(new CallBack() {
			@Override
			public void process(Map<String, Object> result) {
				kind.setTotalCount(kservice.count(kind));
				kind.setPageYes(true);
				kind.setPage(Page);
				List<Kind> kinds=kservice.selectKinds(kind);
				if(kinds!=null&&kinds.size()>0){
					System.out.println(kinds.size());
					Game game=kinds.get(0).getGame().get(0);
					result.put("kinds", kinds);
					result.put("game", game);
					result.put("totalpage", kind.getTotalPage());
				}
			}
		});
	}
	@RequestMapping(value="/findtotalpage")
	public void findtotalpage(final Kind kind,@RequestParam(name="Page")final int Page){
		json(new CallBack() {
			@Override
			public void process(Map<String, Object> result) {
				kind.setTotalCount(kservice.count(kind));
				kind.setPageYes(true);
				kind.setPage(Page);
				List<Kind> kinds=kservice.selectKinds(kind);
				if(kinds!=null&&kinds.size()>0){
					System.out.println(kinds.size());
					Game game=kinds.get(0).getGame().get(0);
					result.put("kinds", kinds);
					result.put("game", game);
					result.put("totalpage", kind.getTotalPage());
				}
			}
		});
	}
	@RequestMapping(value="/kindGame")
	public ModelAndView kindGame(final Kind kind){
		return exetuce(new CallBack() {
			@Override
			public void process(Map<String, Object> result) {
				Kind kind1=kservice.selectKindGame(kind);
				kind.setTotalCount(kservice.count(kind));
				kind.setPageYes(true);
				List<Game> gameList=gservice.selectGames(kind);	
				result.put("kind1", kind1);
				result.put("totalpage", kind.getTotalPage());
				result.put("gameList", gameList);
			}
		}, "jsp/kinds");
	}
	
	@RequestMapping(value="/findBytag")
	public void findBytag (@RequestParam(name="tag")final String tag,@RequestParam(name="Page")final int Page){
		json(new CallBack() {
			@Override
			public void process(Map<String, Object> result) {
				if(tag!=null&&!"".equals(tag)){
					System.out.println(tag);
					Kind kind=new Kind();
					kind.setKname(tag);
					Kind kind1=kservice.selectByName(kind);
					if(kind1!=null){
						kind1.setPage(Page);
						kind1.setTotalCount(kservice.count(kind1));
						kind1.setPageYes(true);
						List<Game> gameList=gservice.selectGames(kind1);	
						result.put("kind1", kind1);
						result.put("totalpage", kind1.getTotalPage());
						result.put("gameList", gameList);
					}else{
						Game game=new Game();
						game.setName(tag);
						Game game1=gservice.selectByName(game);
						List<Game> gameList=new ArrayList<>();
						gameList.add(game1);
						Kind kind2=new Kind();
						kind2.setKname("全部类型");
						result.put("kind1", kind2);
						result.put("totalpage",1);
						result.put("gameList", gameList);
					}
			}
				}
		});
	}
	
	
	
	@RequestMapping(value="/kindGame1")
	public void kindGame1(final Kind kind){
		json(new CallBack() {
			@Override
			public void process(Map<String, Object> result) {
				Kind kind1=kservice.selectKindGame(kind);
				kind.setTotalCount(kservice.count(kind));
				kind.setPageYes(true);
				List<Game> gameList=gservice.selectGames(kind);	
				result.put("kind1", kind1);
				result.put("totalpage", kind.getTotalPage());
				result.put("gameList", gameList);
			}
		});
	}
	
	
	
	
	
	
}
