package com.panda.service;

import com.panda.mapper.RolesMapper;
import com.panda.mapper.UserDbMapper;
import com.panda.mapper.UserMapper;
import com.panda.pojo.Roles;
import com.panda.pojo.User;
import com.panda.pojo.UserDb;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDbMapper userDbMapper;
    @Autowired
    private RolesMapper rolesMapper;
    @Override
    public UserDb selectByUserName(String UserName) {
        return userDbMapper.selectByUserName(UserName);
    }
    public List<Roles>  selectPermission(String UserName){
        List list=new ArrayList();
        Roles roles = rolesMapper.selectByUserName(UserName);
        list.add(roles);
        return list;
    }
    @Override
    public int add(User user) {
        return 0;
    }

    @Override
    public List select() {
        return null;
    }
}
