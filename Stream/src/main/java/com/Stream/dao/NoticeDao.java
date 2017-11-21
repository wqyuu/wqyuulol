package com.Stream.dao;

import java.util.List;

import com.Stream.entity.BaseEntity;

public interface NoticeDao {
	public <T extends BaseEntity> T selectById(T  t);
	public <T extends BaseEntity> List<T> selectList(T t);
	public <T extends BaseEntity> int count(T  t);
}
