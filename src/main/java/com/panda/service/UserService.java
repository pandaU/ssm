package com.panda.service;

import com.panda.pojo.Roles;
import com.panda.pojo.User;
import com.panda.pojo.UserDb;
import org.springframework.stereotype.Service;


import java.util.List;



public interface UserService {
    List<Roles> selectPermission(String UserName);
    UserDb selectByUserName(String  UserName);
    int add(User user);
    List select();
}
