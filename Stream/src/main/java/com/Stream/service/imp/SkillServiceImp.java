package com.Stream.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.Stream.dao.SkillDao;
import com.Stream.entity.BaseEntity;
import com.Stream.entity.Kind;
import com.Stream.entity.KindGame;
import com.Stream.entity.User;
import com.Stream.service.IcommonService;
@Service
public class SkillServiceImp implements IcommonService {

	@Resource
	private SkillDao sdao;
	
	@Override
	public <T extends BaseEntity> List<T> selectList() {
		return sdao.selectList();
	}
	
	public SkillDao getSdao() {
		return sdao;
	}

	public void setSdao(SkillDao sdao) {
		this.sdao = sdao;
	}

	@Override
	public <T extends BaseEntity> void add(T t) {
	}
	@Override
	public <T extends BaseEntity> T selectByName(T t) {
		return null;
	}
	@Override
	public <T extends BaseEntity> T selectById(T t) {
		return null;
	}
	public <T extends BaseEntity> void delById(T t) {
	}
	@Override
	public <T extends BaseEntity> T selectLogin(T t) {
		return null;
	}
	@Override
	public <T extends BaseEntity> T selectGameKind(T t) {
		return null;
	}
	@Override
	public <T extends BaseEntity> List<T> selectGames(Kind k) {
		return null;
	}
	@Override
	public <T extends BaseEntity> void update(T t) {
	}
	@Override
	public <T extends BaseEntity> int count(T t) {
		return 0;
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
	public void regconf(User user) {
	}
	@Override
	public <T extends BaseEntity> T queryUser(String code) {
		return null;
	}
	@Override
	public <T extends BaseEntity> T selectKindGame(T t) {
		return null;
	}
	@Override
	public <T extends BaseEntity> List<T> selectKinds(T t) {
		return null;
	}
	@Override
	public void insert(KindGame kGame) {
	}
	@Override
	public <T extends BaseEntity> void delBygId(T t) {
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
