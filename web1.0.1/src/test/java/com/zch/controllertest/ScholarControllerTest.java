/**
 * author:赵宸浩
 * create time:7/15
 * update time:7/19
 */

package com.zch.controllertest;

import com.QXY.pojo.Scholar;
import com.QXY.service.ScholarService;

import java.util.List;

import static org.junit.Assert.*;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class ScholarControllerTest {

    @Autowired
    ScholarService scholarService;

    @org.junit.Test
    public void getAllScholars() {
        PageInfo pi = (PageInfo) request.getAttribute("pageInfo");
        System.out.println("当前页码："+pi.getPageNum());
        System.out.println("总页码："+pi.getPages());
        System.out.println("总记录数："+pi.getTotal());
        System.out.println("连续显示的页码：");
        int[] nums = pi.getNavigatepageNums();
        for (int i : nums){
            System.out.print(" "+i);
        }


        List<Scholar> scholars=scholarService.getAllScholars();
        PageInfo page=new PageInfo(scholars,5);
        for (Scholar scholar : list){
            System.out.println("Scholar{" +
                    "  scholar_name='" + scholar_name + '\'' +
                    ", school='" + school + '\'' +
                    ", profile='" + profile + '\'' +
                    '}');
        System.out.println(scholarService);
        new ScholarController().getAllScholars();
        System.out.println(scholarService);

    }
}