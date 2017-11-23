package com.Stream.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.Stream.entity.Admin;
import com.Stream.entity.Game;
import com.Stream.entity.Kind;
import com.Stream.entity.KindGame;
import com.Stream.entity.User;
import com.Stream.service.IcommonService;
import com.Stream.utils.CallBack;
import com.google.common.base.FinalizablePhantomReference;

@Controller
@RequestMapping("/admin")
public class AdminController extends BaseController {

	@Resource(name="adminServiceImp")
	private IcommonService aService;
	public IcommonService getkService() {
		return kService;
	}

	public void setkService(IcommonService kService) {
		this.kService = kService;
	}
	@Resource(name="userServiceImp")
	private IcommonService uService;
	@Resource(name="kindServiceImp")
	private IcommonService kService;
	@Resource(name="gameServiceImp")
	private IcommonService gService;
	
	
	public IcommonService getgService() {
		return gService;
	}

	public void setgService(IcommonService gService) {
		this.gService = gService;
	}

	public IcommonService getuService() {
		return uService;
	}

	public void setuService(IcommonService uService) {
		this.uService = uService;
	}

	public IcommonService getaService() {
		return aService;
	}

	public void setaService(IcommonService aService) {
		this.aService = aService;
	}
	@RequestMapping(value="/login")
	public ModelAndView login(Admin a,HttpSession session){
		
		Admin a1=aService.selectByName(a);
		if(a1!=null&&a1.getApass().equals(a.getApass())){
			System.out.println("12346：：：："+a1.getAname());
			//SecurityUtils.getSecurityManager().logout(SecurityUtils.getSubject());  
	        // 登录后存放进shiro token  
	        Subject subject = SecurityUtils.getSubject();  
	        UsernamePasswordToken token = new UsernamePasswordToken(a1.getAname(), a1.getApass());  
	        subject.login(token);  
	        //用户认证状态
	        Boolean isAuthenticated = subject.isAuthenticated();
	        System.out.println("用户认证状态："+isAuthenticated);//输出true
	       // Admin curUser = (Admin)subject.getPrincipal(); 
	        if (isAuthenticated) {
	        	session.setAttribute("admin", a1);
		        return new ModelAndView("admin/adminpage");	
			}else{
				return new ModelAndView("jsp/error/ErrorCode500");
			}
		}
		  return new ModelAndView("jsp/error/ErrorCode500");
	}
	@RequestMapping(value="/UserAll")
	public void UserAll(){
		json(new CallBack() {
			@Override
			public void process(Map<String, Object> result) {
			List<User> uList=uService.selectList();
			result.put("uList", uList)	;
			}
		});
	}
	@RequestMapping(value="/restrict")
	public void restrict(final User user){
		json(new CallBack() {
			@Override
			public void process(Map<String, Object> result) {
				User u=uService.selectById(user);
				u.setStat(2);
				uService.update(u);
			}
		});
	}
	
	@RequestMapping(value="/relieveuser")
	public void relieveuser(final User user){
		json(new CallBack() {
			@Override
			public void process(Map<String, Object> result) {
				User u=uService.selectById(user);
				u.setStat(1);
				uService.update(u);
			}
		});
	}
	@RequestMapping(value="/addkind")
	public void addkind(final Kind kind){
		json(new CallBack() {
			@Override
			public void process(Map<String, Object> result) {
				kService.add(kind);
			}
		});
	}
	@RequestMapping(value="/KindAll")
	public void KindAll(){
		json(new CallBack() {
			@Override
			public void process(Map<String, Object> result) {
			  Kind kind=new Kind();	
			  List<Kind> kList=kService.selectKinds(kind);
			  System.out.println(kList);
			  result.put("kList", kList);
			}
		});
	}
	
	@RequestMapping(value="/getallgames")
	public void getallgames(){
		json(new CallBack() {
			@Override
			public void process(Map<String, Object> result) {
			  List<Game> gList=gService.selectList();
			  System.out.println(gList);
			  result.put("gList", gList);
			}
		});
	}
	@RequestMapping(value="/managerkind")
	public void managerkind(final Kind kind){
		json(new CallBack() {
			
			@Override
			public void process(Map<String, Object> result) {
				String kgames[]=request.getParameterValues("kgames");
				KindGame kGame=new KindGame();
				kGame.setKind(kind);
				kService.delById(kGame);
				Game game=new Game();
				for (int i = 0; i < kgames.length; i++) {
					game.setId(Integer.parseInt(kgames[i]));
					kGame.setKind(kind);
					kGame.setGame(game);
					kService.insert(kGame);
				}
			}
		});
	}
	
	@RequestMapping(value="/getgames")
	public void getgames(){
		json(new CallBack() {
			@Override
			public void process(Map<String, Object> result) {
			  List<Game> gList=gService.selectList();
			  System.out.println(gList);
			  result.put("gList", gList);
			}
		});
	}
	
	@RequestMapping(value="/updategameinfo")
	public void updategameinfo(final Game game){
		json(new CallBack() {
			@Override
			public void process(Map<String, Object> result) {
				game.setImg("../image/"+game.getImg());
				gService.update(game);
			}
		});
	}
	@RequestMapping(value="/kindsall")
	public void kindsall(final Game game){
		json(new CallBack() {
			@Override
			public void process(Map<String, Object> result) {
				 Kind kind=new Kind();	
				  List<Kind> kList=kService.selectKinds(kind);
				  System.out.println(kList);
				  result.put("kList", kList);
			}
		});
	}
	@RequestMapping(value = "/upload")
	public ModelAndView upload(final Game game) {
		return exetuce(new CallBack() {
			@Override
			public void process(Map<String, Object> result) {
				try {
					request.setCharacterEncoding("UTF-8");
				} catch (UnsupportedEncodingException e1) {
					e1.printStackTrace();
				}
				
				MultipartFile file = game.getFile();// 获取文件路径
				String fileName = "";// 文件的名字：MMS.log
				try {
					fileName = new String(file.getOriginalFilename().getBytes("8859_1"), "UTF-8");
					String name = new String(game.getName().getBytes("8859_1"), "UTF-8");// 防止文件名乱码
					InputStream inputStream = file.getInputStream();
					// realPath为
					// F:\STworkspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp1\wtpwebapps\SSM\’upload
					String realPath = request.getServletContext().getRealPath("image");// 获取upload真实路径
					String path = getPath(realPath);// 拼上时间串以免重复
					/**
					 * F:\STworkspace\.metadata\.plugins\org.eclipse.wst.server.
					 * core\tmp1\wtpwebapps\SSM\‘upload\20171110\MMS.log
					 */
					String filePath = path + File.separator + fileName;// 全部路径
					System.out.println(filePath);
					//String userName = user.getUserName();
					FileOutputStream outputStream = new FileOutputStream(filePath);
					// 使用工具上传
					IOUtils.copy(inputStream, outputStream);
					game.setName(name);
					game.setImg(fileName);
					gService.add(game);
					response.setCharacterEncoding("UTF-8");
					inputStream.close();
					outputStream.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}, "admin/adminpage");
	}
	
	@RequestMapping(value="/getgamekind")
	public void getgamekind(final Game game){
		json(new CallBack() {
			@Override
			public void process(Map<String, Object> result) {
				 Kind kind=new Kind();	
				 Game gL=gService.selectGameKind(game);
				 List<Kind> kList=gL.getKind();
				  System.out.println(kList);
				  result.put("kList", kList);
			}
		});
	}
	
	@RequestMapping(value="/updategamekind")
	public void updategamekind(final Game game){
		json(new CallBack() {
			@Override
			public void process(Map<String, Object> result) {
				String kgames[]=request.getParameterValues("kinds");
				KindGame kGame=new KindGame();
				kGame.setGame(game);
				kService.delBygId(kGame);
				Kind kind=new Kind();
				for (int i = 0; i < kgames.length; i++) {
					kind.setKid(Integer.parseInt(kgames[i]));
					kGame.setKind(kind);
					kGame.setGame(game);
					kService.insert(kGame);
				}
			}
		});
	}
	
	@RequestMapping(value="/upgame")
	public void upgame(final Game game){
		json(new CallBack() {
			@Override
			public void process(Map<String, Object> result) {
				Game gup=gService.selectById(game);
				gup.setStat(1);
				gService.update(gup);
			}
		});
	}
	
	@RequestMapping(value="/downgame")
	public void downgame(final Game game){
		json(new CallBack() {
			@Override
			public void process(Map<String, Object> result) {
				Game gup=gService.selectById(game);
				gup.setStat(0);
				gService.update(gup);
			}
		});
	}
}
