package com.Stream.dao;

import java.util.List;

import com.Stream.entity.BaseEntity;

public interface SkillDao {
	public <T extends BaseEntity> List<T> selectList();
}
