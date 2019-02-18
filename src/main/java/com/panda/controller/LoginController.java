package com.panda.controller;

import com.panda.pojo.User;
import com.panda.pojo.UserDb;
import com.panda.redis.RedisCacheManager;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.subject.Subject;
//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {
    @Autowired
    private RedisCacheManager redisCacheManager;
    @Autowired
    private MongoTemplate mongoTemplate;
    @RequestMapping(value = "login", method = RequestMethod.POST)
    @RequiresPermissions("user:update")
    public String login(UserDb user) {
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(user.getUsername(), user.getPassword());
        try {
            subject.login(token);
            subject.checkRole("admin");
        } catch (AuthenticationException e) {
            return "redirect:main.jsp";
        }
        return "main";
    }

    @RequestMapping("redis")
    @ResponseBody
    public String redisTest() {
        String  val;
        try {
            val = (String)redisCacheManager.get("age");
            System.out.println(val);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return "success";
    }
    @RequestMapping("mongo")
    @ResponseBody
    public String mongo() {
        User user =new User();
        user.setUname("panda");
        user.setUage(21);
        mongoTemplate.insert(user, "user");
        return "success";
    }
}
