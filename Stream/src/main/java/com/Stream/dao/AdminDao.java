package com.Stream.dao;

import com.Stream.entity.BaseEntity;

public interface AdminDao {
	public <T extends BaseEntity> T selectByName(T  t);
}
