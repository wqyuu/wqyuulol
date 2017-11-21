package com.Stream.service;

import java.util.List;

import com.Stream.entity.BaseEntity;
import com.Stream.entity.Game;
import com.Stream.entity.Kind;
import com.Stream.entity.KindGame;
import com.Stream.entity.User;


public interface IcommonService {
	
	public <T extends BaseEntity> void add(T t);
	public <T extends BaseEntity> T selectByName(T  t);
	public <T extends BaseEntity> T selectById(T  t);
	public <T extends BaseEntity> List<T> selectByid(T  t);
	public <T extends BaseEntity> void delById(T  t);
	public <T extends BaseEntity> T selectLogin(T  t);
	public <T extends BaseEntity> List<T> selectList(T t);
	public <T extends BaseEntity> List<T> selectList();
	public <T extends BaseEntity> T selectGameKind(T  t);
	public <T extends BaseEntity> List<T> selectGames(Kind k);
	public <T extends BaseEntity> void update(T  t);
	public <T extends BaseEntity> int count(T  t);
	public boolean reg(User user);
	public int log(User user);
	public void regconf(User user) ;
	public <T extends BaseEntity> T queryUser(String code);
	public <T extends BaseEntity> T selectKindGame(T  t);
	public <T extends BaseEntity> List<T> selectKinds(T  t);
	public void insert(KindGame kGame);
	public <T extends BaseEntity> void delBygId(T  t);
}
