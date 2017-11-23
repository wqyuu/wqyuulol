package com.Stream.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.Stream.dao.OrderDao;
import com.Stream.entity.BaseEntity;
@Service
public class OrderServiceImp {
	@Resource
	private OrderDao oDao;
	
	public OrderDao getoDao() {
		return oDao;
	}
	public void setoDao(OrderDao oDao) {
		this.oDao = oDao;
	}
	public <T extends BaseEntity> void add(T t) {
		oDao.add(t);
	}
	public  <T extends BaseEntity> List<T> selectByid(T t ) {
		return oDao.selectByid(t);
	}
	public void deleteByuid(Integer uid) {
	}
}
