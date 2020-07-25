/*
author:寇笑宇
create time:7/16
update time:7/24
**/
package com.QXY.controller;

import com.QXY.pojo.Scholar;
import com.QXY.service.ScholarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.github.pagehelper.PageInfo;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/scholar")
public class ScholarController {

    @Autowired
    private ScholarService scholarService;

    //显示全部数据
    @RequestMapping("/getAll")
    public ModelAndView getAllScholars(@RequestParam(defaultValue = "1")int page,@RequestParam(defaultValue = "5")int size){
        ModelAndView model=new ModelAndView();
        List<Scholar> scholars=new ArrayList<>();
        //确定所选的分页大小和页数
        try {
            scholars=scholarService.getAllScholars(page,size);
        } catch (Exception e) {
            e.printStackTrace();
        }
        PageInfo<Scholar> pageInfos=new PageInfo<Scholar>(scholars);
        model.addObject("pageInfos",pageInfos);
        model.setViewName("index");
        return model;
    }

    //跳转至每一名学者的个人页面
    @RequestMapping("/getScholarByID")
    public ModelAndView getScholarByID(@RequestParam(value = "scholarId")String scholarId){
        ModelAndView model=new ModelAndView();
        Scholar scholar=new Scholar();
        try {
            scholar=scholarService.getScholarsByID(scholarId);
        }catch (Exception e){
            e.printStackTrace();
            model.addObject("error_msg",e.getMessage());
            model.setViewName("detail");
            return model;
        }
        model.addObject("scholar",scholar);
        model.setViewName("detail");
        return model;
    }

    //按学校查询
    @RequestMapping("/getScholarsBySchool")
    public ModelAndView getScholarBySchool(@RequestParam(value = "school")String school,@RequestParam(defaultValue = "1")int page,@RequestParam(defaultValue = "5")int size){
        ModelAndView model=new ModelAndView();
        List<Scholar> list=new ArrayList<>();
        try {
            if(school.equals("all"))
                list=scholarService.getAllScholars(page,size);
            else
                list=scholarService.getScholarsBySchool(school,page,size);
        }catch (Exception e){
            model.addObject("error_msg",e.getMessage());
            model.setViewName("pg_collage");
            return model;
        }
        PageInfo<Scholar> pageInfos=new PageInfo<Scholar>(list);
        model.addObject("pageInfos",pageInfos);
        model.addObject("school",school);
        model.setViewName("pg_collage");
        return model;
    }

    //按专业查询
    @RequestMapping("/getScholarsByMajor")
    public ModelAndView getScholarByMajor(@RequestParam(value = "major")String major,@RequestParam(defaultValue = "1")int page,@RequestParam(defaultValue = "5")int size){
        ModelAndView model=new ModelAndView();
        List<Scholar> list=new ArrayList<>();
        try {
            if(major.equals("all"))
                list=scholarService.getAllScholars(page,size);
            else
                list=scholarService.getScholarsByMajor(major,page,size);
        }catch (Exception e){
            model.addObject("error_msg",e.getMessage());
            model.setViewName("pg_major");
            return model;
        }
        PageInfo<Scholar> pageInfos=new PageInfo<Scholar>(list);
        model.addObject("pageInfos",pageInfos);
        model.addObject("major",major);
        model.setViewName("pg_major");
        return model;
    }

    @RequestMapping("/getScholarsByName")
    public ModelAndView getScholarsByName(HttpServletRequest request){
        ModelAndView model=new ModelAndView();
        String name=request.getParameter("search");
        List<Scholar> list=new ArrayList<>();
        List<Scholar> scholars=new ArrayList<>();
        try {
            list=scholarService.getScholarsByName(name);
            scholars=scholarService.getAllScholars(1,5);
        }catch (Exception e){
            model.addObject("error_msg",e.getMessage());
            model.setViewName("index");
            return model;
        }
        PageInfo<Scholar> pageInfos=new PageInfo<Scholar>(scholars);
        model.addObject("searchList",list);
        model.addObject("pageInfos",pageInfos);
        model.setViewName("index");
        return model;
    }

}
