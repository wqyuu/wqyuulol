package com.Stream.dao;

import java.util.List;

import com.Stream.entity.BaseEntity;
import com.Stream.entity.CarShop;
import com.Stream.entity.GameCarshop;

public interface OrderDao {
	public <T extends BaseEntity> void add(T t);
	public  <T extends BaseEntity> List<T> selectByid(T t );
	public void deleteByuid(Integer uid);
	
}
