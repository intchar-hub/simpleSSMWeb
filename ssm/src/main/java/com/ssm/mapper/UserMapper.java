/*
author:寇笑宇
create time:7/11
update time:7/11
**/
package com.ssm.mapper;

import com.ssm.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    //测试数据库连接
    User selUser();
    //首次注册添加帐号
    public void addUser(@Param("username") String username,@Param("password")String password);
    //通过用户名查找帐号--sprint1未完成
    public User getUserByUsername(@Param("username") String username);
    //更改帐号密码--sprint1未完成
    public void updateUser(User user);
}
