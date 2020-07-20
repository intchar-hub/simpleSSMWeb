/**
 * author:赵宸浩
 * create time:7/15
 * update time:7/20
 */

package com.zch.mappertest;

import com.QXY.pojo.User;
import com.alibaba.fastjson.JSON;
import javax.annotation.Resource;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)     //表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
public class UserMapperTest {

    @Resource
    private UserService userService;

    @org.junit.Test
    public void testAddUser()throws Exception {
        User user = new User();
        user.setUsername("root");
        user.setPassword("root");
        userService.createUser(userEntity);
        System.out.println(JSON.toJSONString(user));
    }

    @org.junit.Test
    public void testGetUserByUsername() throws Exception {
        User user = userService.getUserByUsername(1);
        System.out.println(JSON.toJSONString(user));
    }

    @org.junit.Test
    public void updateUser() throws Exception {
        User user = userService.getUserByUsername(1);
        user.setPassword("root111");
        userService.updateUser(user);
        user = userService.getUserByUsername(1);
        System.out.println(JSON.toJSONString(user));
    }
}