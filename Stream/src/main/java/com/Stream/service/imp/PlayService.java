/*package com.Stream.service.imp;
import java.util.List;

import org.springframework.stereotype.Service;

import com.Stream.entity.Player;
import com.Stream.service.IPlayerService;

@Service
public class PlayService implements IPlayerService {

	@Override
	public List<Player> searchPlayerList(String playerName) {
		List<Player> players;
		try {
			players = PlayerSpider.searchPlayerList(playerName);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return players;
	}

	@Override
	public List<Player> playerTierRanking(int areaId, int pageNum) {
		List<Player> players;
		try {
			players = PlayerSpider.playerTierRanking(areaId, pageNum);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return players;
	}

}
*/