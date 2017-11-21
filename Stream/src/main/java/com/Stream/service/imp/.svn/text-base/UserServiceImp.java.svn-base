package com.Stream.service.imp;

import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Stream.constants.CommonConstants;
import com.Stream.dao.UserDao;
import com.Stream.entity.BaseEntity;
import com.Stream.entity.Kind;
import com.Stream.entity.KindGame;
import com.Stream.entity.User;
import com.Stream.service.IcommonService;
import com.Stream.utils.MailUtil;

@Service
public class UserServiceImp implements IcommonService {

	@Resource
	private UserDao udao;
	
	public UserDao getUdao() {
		return udao;
	}

	public void setUdao(UserDao udao) {
		this.udao = udao;
	}

	@Override
	public <T extends BaseEntity> void add(T t) {
		// TODO Auto-generated method stub

	}

	@Override
	public <T extends BaseEntity> T selectByName(T t) {
		return udao.selectByName(t);
	}

	@Override
	public <T extends BaseEntity> T selectById(T t) {
		return udao.selectById(t);
	}

	@Override
	public <T extends BaseEntity> T selectLogin(T t) {
		return null;
	}

	@Override
	public <T extends BaseEntity> List<T> selectList() {
		return udao.selectList();
	}

	@Override
	public <T extends BaseEntity> void update(T t) {
		udao.update(t);
	}

	@Override
	public boolean reg(User user) {
		user.setStat(0);
		udao.addUser(user);
		String code = UUID.randomUUID().toString() + UUID.randomUUID().toString();
		code = code.replaceAll("-", "");
		System.out.println("code:"+code);
		user.setCode(code);
        User u1=udao.selectByName(user);
		if (user.getStat()==null||user.getStat()==0) {
			try {
				MailUtil.sendTo("<a href='127.0.0.1:8080/Stream/user/regconf.do?code=" + code + "&id="+u1.getId()+"'>激活帐号</a>",
						user.getEmail());
			} catch (Exception e) {
				e.printStackTrace();
			}
			return true;
		}
		return false;
	}

	@Override
	public int log(User user) {
		User rUser = udao.selectByName(user);
		if (null == rUser) {
			return CommonConstants.STAT_DEL;
		}
		if (rUser.getStat()== 0) {
			return CommonConstants.STAT_NOT_VALIDATE;
		}
		if (!rUser.getPassword().equals(user.getPassword())) {
			return CommonConstants.STAT_DEL;
		}
		return CommonConstants.STAT_OK;
	}

	@Override
	public void regconf(User user) {
		User user1 = udao.selectById(user);
		user1.setStat(1);
		user1.setCode(user.getCode());
		udao.update(user1);
	}

	@Override
	public <T extends BaseEntity> T queryUser(String code) {
		return null;
	}

	@Override
	public <T extends BaseEntity> T selectKindGame(T t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <T extends BaseEntity> List<T> selectKinds(T t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <T extends BaseEntity> int count(T t) {
		// TODO Auto-generated method stub
		return 0;
	}



	@Override
	public <T extends BaseEntity> List<T> selectGames(Kind k) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void insert(KindGame kGame) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public <T extends BaseEntity> void delById(T t) {
	}

	@Override
	public <T extends BaseEntity> T selectGameKind(T t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <T extends BaseEntity> void delBygId(T t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public <T extends BaseEntity> List<T> selectByid(T t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <T extends BaseEntity> List<T> selectList(T t) {
		// TODO Auto-generated method stub
		return null;
	}

}
