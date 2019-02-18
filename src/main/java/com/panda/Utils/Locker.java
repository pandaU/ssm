package com.panda.Utils;

import org.apache.shiro.crypto.hash.Md5Hash;

//加密工具
public class Locker {
    //md5
    public static String encry(String password){
        Md5Hash md5Hash=new Md5Hash(password);
        return md5Hash.toString();
    }
}
