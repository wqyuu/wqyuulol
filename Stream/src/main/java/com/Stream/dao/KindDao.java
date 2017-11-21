package com.Stream.dao;

import java.util.List;

import com.Stream.entity.BaseEntity;
import com.Stream.entity.KindGame;

public interface KindDao {
	public <T extends BaseEntity> T selectKindGame(T  t);
	public <T extends BaseEntity> List<T> selectKinds(T  t);
	public <T extends BaseEntity> int count(T  t);
	public <T extends BaseEntity> List<T> selectGame(T  t);
	public <T extends BaseEntity> T selectByName(T  t);
	public void insert(KindGame kGame);
	public <T extends BaseEntity> void add(T t);
	public <T extends BaseEntity> void delById(T  t);
	public <T extends BaseEntity> void delBygId(T  t);
	
}
