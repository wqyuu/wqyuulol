/*package com.Stream.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.Stream.constants.msg.Message;
import com.Stream.constants.msg.MessageCode;
import com.Stream.entity.Player;
import com.Stream.service.IPlayerService;

@RequestMapping("/api")
//@RestController
@Controller
public class APIPlayerController {
	@Autowired
	private IPlayerService playerService;
	
	*//**
	 * 通过玩家昵称搜索
	 * @param playerName
	 * @return
	 *//*
	//@GetMapping("/searchPlayers/{playerName}")
	@RequestMapping("/searchPlayers")
	public Message searchPlayers(String playerName) {//@PathVariable
		Message msg = new Message();
		System.out.println(playerName);
		List<Player> players = playerService.searchPlayerList(playerName);
		if (players != null) {
			msg.setWhat(MessageCode.SUCCESSFUL);
			msg.setObject(players);
		} else {
			msg.setWhat(MessageCode.FAIL);
			msg.setObject(MessageCode.FAILLY);
		}
		return msg;
	}
	
	*//**
	 * 排位排行榜
	 * @param areaId 大区ID
	 * @param pageNum 第几页
	 * @return
	 *//*
	@GetMapping("/playerRanking/areaId/{areaId}")
	public Message playerTierRanking(@PathVariable int areaId, @RequestParam("pageNum") int pageNum) {
		Message msg = new Message();
		List<Player> players = playerService.playerTierRanking(areaId, pageNum);
		if (players != null) {
			msg.setWhat(MessageCode.SUCCESSFUL);
			msg.setObject(players);
		} else {
			msg.setWhat(MessageCode.FAIL);
			msg.setObject(MessageCode.FAILLY);
		}
		return msg;
	}
	
}
*/