/*
author:寇笑宇
create time:7/11
update time:7/11
**/
package com.ssm.service.impl;

import com.ssm.mapper.UserMapper;
import com.ssm.pojo.User;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl  implements UserService {

    @Autowired
    private UserMapper userMapper;

    //测试数据库连接
    @Override
    public User selUser() {
        return userMapper.selUser();
    }

    @Override
    public void register(String _username, String _password) {
        User user=new User(_username,_password);
        User exituser = userMapper.getUserByUsername(user.getUsername());
        if(user.getUsername().trim()=="") throw new RuntimeException("昵称不可为空!!!");
        if(user.getPassword().trim()=="") throw new RuntimeException("密码不可为空!!!");
        if(exituser!=null){
            throw new RuntimeException("账号已存在");
        }else{
            //添加帐号
            userMapper.addUser(user.getUsername(),user.getPassword());
        }
    }

    @Override
    public User login(String _username, String _password){
        User user=new User(_username,_password);
        User exituser = userMapper.getUserByUsername(user.getUsername());
        if(user.getUsername().trim()=="") throw new RuntimeException("昵称不可为空!!!");
        if(user.getPassword().trim()=="") throw new RuntimeException("密码不可为空!!!");
        if(exituser==null){
            throw new RuntimeException("账号不存在!!!");
        }
        if(exituser.getPassword().equals(user.getPassword())){
            return exituser;
        }else{
            throw new RuntimeException("密码错误!!!");
        }
    }

}
