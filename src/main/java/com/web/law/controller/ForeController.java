package com.web.law.controller;


import com.web.law.domain.Info;
import com.web.law.domain.Lawyer;
import com.web.law.domain.Vip;
import com.web.law.service.InfoService;
import com.web.law.service.LawyerService;
import com.web.law.service.UserService;
import com.web.law.service.VipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Collections;
import java.util.List;

/**
 * 前台所有请求controller
 */
@Controller
@RequestMapping("/fore")
public class ForeController {

    @Autowired
    private UserService userService;

    @Autowired
    private LawyerService lawyerService;

    @Autowired
    private InfoService infoService;

    @Autowired
    private VipService vipService;

    @RequestMapping("/index")
    public String index(Model model){
        List<Lawyer> lawyerList = lawyerService.findAll();
        Collections.shuffle(lawyerList);
        int size = lawyerList.size() / 2;
        if(size > 7){
            size = 7;
        }
//        lawyerList = lawyerList.subList(0,size);
        model.addAttribute("lawyerList",lawyerList);
        return "forepage/index";
    }

    @GetMapping("/lawyers")
    public String lawyers(@RequestParam(defaultValue = "0") int type,@RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "8")int size, Model model){
        Page<Lawyer> lawyerList = lawyerService.findAllByType(type,page,size);
        model.addAttribute("pageInfo",lawyerList);
        return "forepage/lawyers";
    }

    @GetMapping("/lawyer/{id}")
    public String lawyers(@PathVariable String id, Model model){
        Lawyer lawyer = lawyerService.findById(id);
        model.addAttribute("product",lawyer);
        return "forepage/proDetail";
    }

    @GetMapping("/infos")
    public String infos(@RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "10")int size, Model model){
        Page<Info> infos = infoService.findByPage(page,size);
        model.addAttribute("pageInfo",infos);
        return "forepage/infos";
    }


}
