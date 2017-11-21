package com.Stream.dao;

import java.util.List;

import com.Stream.entity.BaseEntity;
import com.Stream.entity.User;

public interface UserDao {

	public <T extends BaseEntity> void add(T t);
	public <T extends BaseEntity> T selectByName(T  t);
	public <T extends BaseEntity> T selectById(T  t);
	public <T extends BaseEntity> void update(T  t);
	public <T extends BaseEntity> void addUser(T  t);
	public <T extends BaseEntity> List<T> selectList();
	public boolean reg(User user);
	public int log(User user);
	public void regconf(String code) ;
	public <T extends BaseEntity> T queryUser(String code);
}
