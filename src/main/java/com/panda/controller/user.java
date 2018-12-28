package com.panda.controller;

import com.panda.pojo.User;
import com.panda.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("mybatis")
public class user {
    @Autowired
    private UserService userService;

    @RequestMapping("add")
    @ResponseBody
    public  int  add(User user){

        return userService.add(user);
    }
    @RequestMapping("select")
    public  String select(Model model){
        //List list = userService.select();
        model.addAttribute("list","hello  linux");
        return  "User";
    }
}
