package com.Stream.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.Stream.entity.Game;
import com.Stream.entity.Kind;
import com.Stream.service.imp.GameServiceImp;
import com.Stream.utils.CallBack;

@Controller
@RequestMapping("/game")
public class GameController extends BaseController {

	@Resource
	private GameServiceImp gameservice;

	public GameServiceImp getGameservice() {
		return gameservice;
	}

	public void setGameservice(GameServiceImp gameservice) {
		this.gameservice = gameservice;
	}

	@RequestMapping(value = "/findAllgame")
	public ModelAndView findAllgame() {
	
		List<Game> gameList = gameservice.selectList();
		Map<String, Object> map = new HashMap<>();
		for (Game game:gameList) {

			System.out.println(game.getId()+"asdasdasdasd"+game.getImg());
		}
		map.put("gamelist", gameList);
		
		return new ModelAndView("jsp/index", map);
		
	}


}
