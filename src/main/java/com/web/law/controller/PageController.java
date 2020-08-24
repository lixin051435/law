package com.web.law.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * @ClassName : PageController
 * @Description :
 * @Author : lixin
 * @Date: 2020-08-24 21:41
 */
@Controller
public class PageController {

    @RequestMapping("/index")
    public String index(){
        return "index";
    }
}
