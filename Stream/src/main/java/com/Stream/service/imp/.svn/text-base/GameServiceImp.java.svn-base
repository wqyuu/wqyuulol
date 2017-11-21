package com.Stream.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.Stream.dao.GameDao;
import com.Stream.entity.BaseEntity;
import com.Stream.entity.Kind;
import com.Stream.entity.KindGame;
import com.Stream.entity.User;
import com.Stream.service.IcommonService;

@Service
public class GameServiceImp implements IcommonService {

	@Resource
	private GameDao gdao;
	
	public GameDao getGdao() {
		return gdao;
	}

	public void setGdao(GameDao gdao) {
		this.gdao = gdao;
	}

	@Override
	public <T extends BaseEntity> void add(T t) {
		gdao.add(t);
	}

	@Override
	public <T extends BaseEntity> T selectByName(T t) {
		// TODO Auto-generated method stub
		return gdao.selectByName(t);
	}

	@Override
	public <T extends BaseEntity> T selectById(T t) {
		return gdao.selectById(t);
	}

	@Override
	public <T extends BaseEntity> T selectLogin(T t) {
		return null;
	}

	@Override
	public <T extends BaseEntity> List<T> selectList() {
		return gdao.selectList();
	}

	@Override
	public <T extends BaseEntity> void update(T t) {
          gdao.update(t);
	}

	@Override
	public boolean reg(User user) {
		return false;
	}

	@Override
	public int log(User user) {
		return 0;
	}


	@Override
	public <T extends BaseEntity> T queryUser(String code) {
		return null;
	}

	@Override
	public <T extends BaseEntity> T selectKindGame(T t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <T extends BaseEntity> List<T> selectKinds(T t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <T extends BaseEntity> int count(T t) {
		return 0;
	}

	@Override
	public <T extends BaseEntity> List<T> selectGames(Kind k) {
		return gdao.selectGames(k);
	}

	@Override
	public void regconf(User user) {
		// TODO Auto-generated method stub
		
	}



	@Override
	public void insert(KindGame kGame) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public <T extends BaseEntity> void delById(T t) {
		// TODO Auto-generated method stub
	}

	@Override
	public <T extends BaseEntity> T selectGameKind(T t) {
		return gdao.selectGameKind(t);
	}

	@Override
	public <T extends BaseEntity> void delBygId(T t) {
		gdao.delBygId(t);
		
	}

	@Override
	public <T extends BaseEntity> List<T> selectByid(T t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <T extends BaseEntity> List<T> selectList(T t) {
		// TODO Auto-generated method stub
		return null;
	}
}
