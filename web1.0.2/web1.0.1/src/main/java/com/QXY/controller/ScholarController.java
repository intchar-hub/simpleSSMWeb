/*
author:寇笑宇
create time:7/16
update time:7/20
**/
package com.QXY.controller;

import com.QXY.pojo.Scholar;
import com.QXY.service.ScholarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/Scholar")
public class ScholarController {

    @Autowired
    private ScholarService scholarService;

    @RequestMapping("/getAll")
    public ModelAndView getAllScholars(){
        ModelAndView model=new ModelAndView();
        List<Scholar> scholars=new ArrayList<>();
        scholars=scholarService.getAllScholars();
        model.addObject("scholars",scholars);
        model.setViewName("index");
        return model;
    }

}
