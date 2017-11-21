package com.Stream.dao;

import java.util.List;

import com.Stream.entity.BaseEntity;

public interface HeroDao {

	public <T extends BaseEntity> List<T> selectList();
	public <T extends BaseEntity> List<T> selectByid(T  t);
}
