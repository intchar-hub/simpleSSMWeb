/**
 * author:赵宸浩
 * create time:7/16
 * update time:7/16
 */
package com.zch.testdemo;

import com.sun.tools.javac.jvm.Items;

public class MybatisTest {
    @Test   //测试mybatis的环境是否正确
    public void myBatisTest(){
        ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext.xml");
        ItemsMapper itemsMapper = app.getBean(ItemsMapper.class);
        Items items = itemsMapper.findDetail(1);
        System.out.println(items.getName());
    }
}
