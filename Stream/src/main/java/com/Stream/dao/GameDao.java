package com.Stream.dao;

import java.util.List;

import com.Stream.entity.BaseEntity;
import com.Stream.entity.Kind;

public interface GameDao {
	public <T extends BaseEntity> void add(T t);
	public <T extends BaseEntity> T selectById(T  t);
	public <T extends BaseEntity> List<T> selectList();
	public <T extends BaseEntity> T selectGameKind(T  t);
	public <T extends BaseEntity> List<T> selectGames(Kind kind);
	public <T extends BaseEntity> T selectByName(T  t);
	public <T extends BaseEntity> void update(T  t);
	public <T extends BaseEntity> void delBygId(T  t);
}
