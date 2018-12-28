package com.panda.service;

import com.panda.mapper.UserMapper;
import com.panda.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public int add(User user) {
        return userMapper.insert(user);
    }

    @Override
    public List select() {
        return userMapper.selectAll();
    }
}
