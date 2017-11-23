package com.Stream.utils;

import java.util.List;  
  
import org.apache.shiro.authc.AuthenticationException;  
import org.apache.shiro.authc.AuthenticationInfo;  
import org.apache.shiro.authc.AuthenticationToken;  
import org.apache.shiro.authc.SimpleAuthenticationInfo;  
import org.apache.shiro.authc.UsernamePasswordToken;  
import org.apache.shiro.authz.AuthorizationInfo;  
import org.apache.shiro.authz.SimpleAuthorizationInfo;  
import org.apache.shiro.realm.AuthorizingRealm;  
import org.apache.shiro.subject.PrincipalCollection;

import com.Stream.entity.Admin;
import com.Stream.service.imp.AdminServiceImp;  
  
/**** 
 * 自定义Realm 
 *  
 * @author Swinglife 
 *  
 */  
public class MyShiroRealm extends AuthorizingRealm {  
  
    /*** 
     * 获取授权信息 
     */  
    @Override  
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection pc) {  
        //根据自己系统规则的需要编写获取授权信息，这里为了快速入门只获取了用户对应角色的资源url信息  
        String Name = (String) pc.fromRealm(getName()).iterator().next();  
        if (Name != null) {  
        	Admin admin=new Admin();
        	admin.setAname(Name);
        	adminService.selectByName(admin);
                SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();  
               //将权限资源添加到用户信息中  
               // info.setRoles("admin");
             info.addStringPermission("admin");  
             return info;  
            }  
        return null;  
    }  
    /*** 
     * 获取认证信息 
     */  
    @Override  
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken at) throws AuthenticationException {  
        UsernamePasswordToken token = (UsernamePasswordToken) at;  
        // 通过表单接收的用户名  
        String name = token.getUsername();  
        if (name != null && !"".equals(name)) {  
        	Admin a1=new Admin();
        	a1.setAname(name);
            Admin admin = adminService.selectByName(a1);
            if (admin != null) {  
                return new SimpleAuthenticationInfo(admin.getAname(), admin.getApass(), getName());  
            }  
        }  
        return null;  
    }  
      
    /**用户的业务类**/  
    private AdminServiceImp adminService;

	public AdminServiceImp getAdminService() {
		return adminService;
	}
	public void setAdminService(AdminServiceImp adminService) {
		this.adminService = adminService;
	}  
      
  
}  
