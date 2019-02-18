package com.panda.shiro;

import com.panda.pojo.Roles;
import com.panda.pojo.UserDb;
import com.panda.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.realm.Realm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class MyRealm extends AuthorizingRealm {
    @Autowired
    private UserService userService;

    @Override
    public String getName() {
        return "MyRealm";
    }

    @Override
    public boolean supports(AuthenticationToken authenticationToken) {
        return authenticationToken instanceof UsernamePasswordToken;
    }
   //认证
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        //从token中 获取用户身份信息
        String username = (String) token.getPrincipal();
        //拿username从数据库中查询
        //....
        //如果查询不到则返回null
        if(selectByUserName(username)==null){//这里模拟查询不到
            return null;
        }
        //获取从数据库查询出来的用户密码 
        String password =selectByUserName(username);//这里使用静态数据模拟。。

        //返回认证信息由父类AuthenticatingRealm进行认证
        SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(
                username, password, getName());

        return simpleAuthenticationInfo;
    }
    //授权
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        String username=(String)principalCollection.getPrimaryPrincipal();
        //Set<String> rloe = selectRloe(username);
        Set<String> role = selectRloe(username);
        Set<String> permission = selectPermission(username);
        SimpleAuthorizationInfo simpleAuthorizationInfo=new SimpleAuthorizationInfo();
        simpleAuthorizationInfo.setRoles(role);
        simpleAuthorizationInfo.setStringPermissions(permission);
        return simpleAuthorizationInfo;
    }

    private Set<String> selectRloe(String username){
        Set<String> set=new HashSet<>();
        List<Roles> roles = userService.selectPermission(username);
        for (Roles role:roles) {
            set.add(role.getRoles());
        }
        return set;
    }
    private Set<String> selectPermission(String username){
        Set<String> set =new HashSet<>();
        List<Roles> roles = userService.selectPermission(username);
        for (Roles role:roles) {
            set.add(role.getPermission());
        }
        return set;
    }
    private String  selectByUserName(String UserName){
        UserDb userDb = userService.selectByUserName(UserName);
        return userDb.getPassword();
    }
}
