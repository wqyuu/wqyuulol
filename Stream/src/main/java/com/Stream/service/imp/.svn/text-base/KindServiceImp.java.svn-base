package com.Stream.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.Stream.dao.KindDao;
import com.Stream.entity.BaseEntity;
import com.Stream.entity.Kind;
import com.Stream.entity.KindGame;
import com.Stream.entity.User;
import com.Stream.service.IcommonService;
@Service
public class KindServiceImp implements IcommonService {

	@Resource
	private KindDao kdao;
	
	
	public KindDao getKdao() {
		return kdao;
	}

	public void setKdao(KindDao kdao) {
		this.kdao = kdao;
	}

	@Override
	public <T extends BaseEntity> void add(T t) {
		kdao.add(t);
	}

	@Override
	public <T extends BaseEntity> T selectByName(T t) {
		// TODO Auto-generated method stub
		return kdao.selectByName(t);
	}

	@Override
	public <T extends BaseEntity> T selectById(T t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <T extends BaseEntity> T selectLogin(T t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <T extends BaseEntity> List<T> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <T extends BaseEntity> void update(T t) {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean reg(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int log(User user) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public <T extends BaseEntity> T queryUser(String code) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <T extends BaseEntity> T selectKindGame(T t) {
		return kdao.selectKindGame(t);
	}

	@Override
	public <T extends BaseEntity> List<T> selectKinds(T t) {
		return kdao.selectKinds(t);
	}

	@Override
	public <T extends BaseEntity> int count(T t) {
		return kdao.count(t);
	}



	@Override
	public <T extends BaseEntity> List<T> selectGames(Kind k) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void regconf(User user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insert(KindGame kGame) {
		kdao.insert(kGame);
		
	}

	@Override
	public <T extends BaseEntity> void delById(T t) {
		kdao.delById(t);
	}

	@Override
	public <T extends BaseEntity> T selectGameKind(T t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <T extends BaseEntity> void delBygId(T t) {
		kdao.delBygId(t);
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
