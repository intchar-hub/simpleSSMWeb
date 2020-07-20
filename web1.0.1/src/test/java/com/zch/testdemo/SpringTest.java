/**
 * author:赵宸浩
 * create time:7/16
 * update time:7/16
 */

package com.zch.testdemo;

public class SpringTest {
    @Test
    public void springTest(){
        ApplicationContext app = new ClassPathXmlApplicationContext("applicationContext.xml");
        ItemsService itemsService = app.getBean(ItemsService.class);
        Items items = itemsService.findDetail(1);
        System.out.println(items.getName());
    }
}

