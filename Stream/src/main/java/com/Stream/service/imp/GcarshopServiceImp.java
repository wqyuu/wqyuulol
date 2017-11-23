package com.Stream.service.imp;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.Stream.dao.CarshopDao;
import com.Stream.dao.GameDao;
import com.Stream.entity.BaseEntity;
import com.Stream.entity.CarShop;
import com.Stream.entity.Game;
import com.Stream.entity.GameCarshop;
import com.Stream.entity.Kind;
import com.Stream.entity.KindGame;
import com.Stream.entity.User;
import com.Stream.service.IcommonService;

@Service
public class GcarshopServiceImp {
	@Resource(name="gameDao")
	private GameDao gdao;
	@Resource(name="carshopDao")
	private CarshopDao csd;

	public GameDao getGdao() {
		return gdao;
	}

	public void setGdao(GameDao gdao) {
		this.gdao = gdao;
	}

	public CarshopDao getCsd() {
		return csd;
	}

	public void setCsd(CarshopDao csd) {
		this.csd = csd;
	}

	public <T extends BaseEntity> void addCarShop(Map<Integer, CarShop> carMap, Integer uid){
		if(carMap!=null){
			Iterator<CarShop> carIter=carMap.values().iterator();
			//取出迭代器中的每一个购物车对象
			while(carIter.hasNext()){
				CarShop car=carIter.next();
				//创建一个与数据库中表对应的购物车对象XmCarshop，
				//用它来接carMap里的每一个对象，然后存在数据库中
				GameCarshop carshop=new GameCarshop();
				//设置商品
				Game game=new Game();
				game.setId(car.getGame().getId());
				carshop.setGame(game);
				//设置该商品的总数量
				carshop.setTotal(car.getNumber());
				//设置用户
				User user=new User();
				user.setId(uid);
				carshop.setUser(user);
				//存入数据库中
				csd.add(carshop);
			}
		}
	}
	
	public  <T extends BaseEntity> Map<Integer, CarShop> findCarShopByUid(Integer uid) {
		System.out.println("findCarShopByUid："+uid);
		Map<Integer, CarShop> carMap=new HashMap<Integer, CarShop>();
		//从库中拿到购物车
		List<GameCarshop> carList=csd.selectByid(uid);
		for(GameCarshop cs:carList){
			//因为session购物车中的对象是car，所以我们从库中xm_carshop拿到的数据要封装在car里面
			CarShop car=new CarShop();
			car.setNumber(cs.getTotal());
			//商品对象中只存了一个商品的id
			Game game=gdao.selectById(cs.getGame());
			car.setGame(game);
			//car.setProduct(cs.getProductInfo());
			carMap.put( cs.getGame().getId(), car);
		}
		//清空数据库中购物车的数据
		csd.deleteByuid(uid);
		return carMap;
	}

	public List<GameCarshop> findbyuid(Integer uid) {
		return csd.selectByid(uid);
	}
	}

