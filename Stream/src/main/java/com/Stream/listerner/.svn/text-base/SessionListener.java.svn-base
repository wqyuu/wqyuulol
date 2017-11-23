package com.Stream.listerner;

import java.util.Map;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.Stream.entity.CarShop;
import com.Stream.entity.User;
import com.Stream.service.imp.GcarshopServiceImp;


@WebListener
public class SessionListener implements HttpSessionListener,
		HttpSessionAttributeListener {
	//获取xml			applicatioinContext.xml
	ApplicationContext apct=new ClassPathXmlApplicationContext("applicatioinContext.xml");
	private GcarshopServiceImp carShopBiz= (GcarshopServiceImp) apct.getBean("gcarshopServiceImp");
	@Override
	public void attributeAdded(HttpSessionBindingEvent arg0) {
		try {			
			HttpSession session = arg0.getSession();
			Object obj = arg0.getValue();		
			if(obj instanceof User){
				User user = (User) obj;				
				Map<Integer, CarShop> carMap = carShopBiz.findCarShopByUid(user.getId());
				session.setAttribute("carMap", carMap);
				System.out.println(carMap);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void attributeRemoved(HttpSessionBindingEvent arg0) {
		
	}

	@Override
	public void attributeReplaced(HttpSessionBindingEvent arg0) {
	
	}

	@Override
	public void sessionCreated(HttpSessionEvent arg0) {
	
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent arg0) {
		
		try {
			HttpSession session = arg0.getSession();
			
			Map<Integer, CarShop> carMap =(Map<Integer, CarShop>) session.getAttribute("carMap");
			
			User user = (User) session.getAttribute("user");
			if(user!=null && carMap!=null){
				carShopBiz.addCarShop(carMap, user.getId());
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}

	

}
