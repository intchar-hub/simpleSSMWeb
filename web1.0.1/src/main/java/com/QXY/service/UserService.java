/*
author:寇笑宇
create time:7/11
update time:7/11
**/
package com.QXY.service;

import com.QXY.pojo.User;

public interface UserService {
    User selUser();
    //注册
    void register(String _username,String _password);
    //登录
    User login(String _username,String _password);
}
