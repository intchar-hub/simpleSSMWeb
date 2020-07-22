/*
author:寇笑宇
create time:7/11
update time:7/11
**/
package com.QXY.controller;

import com.QXY.pojo.User;
import com.QXY.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;
    //测试数据库连接
    @RequestMapping("/test")
    public User testUser(){
        return userService.selUser();
    }

    @RequestMapping("/register")
    public String register(Model model,User user){
        try{
            userService.register(user.getUsername(),user.getPassword());
        }
        catch (Exception e){
            model.addAttribute("error_msg",e.getMessage());
            return "register";
        }
        return "login";
    }

    @RequestMapping("/login")
    public String login(HttpSession session, Model model,User user){
        User exituser;
        try{
            exituser = userService.login(user.getUsername(),user.getPassword());
            session.setAttribute("user",exituser);
        }
        catch (Exception e){
            model.addAttribute("error_msg",e.getMessage());
            return "login";
        }
        return "redirect:/index.jsp";
        }

    @RequestMapping("/gologin")
    String gologin(){
        return "login";
    }

    @RequestMapping("/goregist")
    String goregist(){ return "regist"; }

}
