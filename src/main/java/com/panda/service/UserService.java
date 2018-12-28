package com.panda.service;

import com.panda.pojo.User;
import org.springframework.stereotype.Service;

import java.util.List;


public interface UserService {
    int add(User user);
    List select();
}
