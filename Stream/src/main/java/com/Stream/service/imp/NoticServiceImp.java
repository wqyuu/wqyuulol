package com.Stream.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.Stream.dao.NoticeDao;
import com.Stream.entity.BaseEntity;
import com.Stream.entity.Kind;
import com.Stream.entity.KindGame;
import com.Stream.entity.User;
import com.Stream.service.IcommonService;

@Service
public class NoticServiceImp implements IcommonService {

	@Resource
	private NoticeDao ndao;
	
	
	public NoticeDao getNdao() {
		return ndao;
	}

	public void setNdao(NoticeDao ndao) {
		this.ndao = ndao;
	}

	@Override
	public <T extends BaseEntity> List<T> selectList(T t) {
		return ndao.selectList(t);
	}
	@Override
	public <T extends BaseEntity> T selectById(T t) {
		return ndao.selectById(t);
	}
	@Override
	public <T extends BaseEntity> int count(T t) {
		return ndao.count(t);
	}
	@Override
	public <T extends BaseEntity> void add(T t) {
	}
	@Override
	public <T extends BaseEntity> T selectByName(T t) {
		return null;
	}

	@Override
	public <T extends BaseEntity> List<T> selectByid(T t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <T extends BaseEntity> void delById(T t) {
		// TODO Auto-generated method stub

	}

	@Override
	public <T extends BaseEntity> T selectLogin(T t) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <T extends BaseEntity> T selectGameKind(T t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <T extends BaseEntity> List<T> selectGames(Kind k) {
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
	public void regconf(User user) {
		// TODO Auto-generated method stub

	}

	@Override
	public <T extends BaseEntity> T queryUser(String code) {
		// TODO Auto-generated method stub
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
	public void insert(KindGame kGame) {
		// TODO Auto-generated method stub

	}

	@Override
	public <T extends BaseEntity> void delBygId(T t) {
		// TODO Auto-generated method stub

	}



	@Override
	public <T extends BaseEntity> List<T> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

}
