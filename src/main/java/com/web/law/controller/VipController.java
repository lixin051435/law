package com.web.law.controller;

import com.web.law.domain.Vip;
import com.web.law.service.VipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @ClassName : VipController
 * @Description :
 * @Author : lixin
 * @Date: 2020-08-25 22:56
 */
@RequestMapping("/vip")
@Controller
public class VipController extends BaseController<Vip> {

    private VipService vipService;

    @Autowired
    public VipController(VipService vipService){
        this.vipService = vipService;
        super.init(vipService);
    }

    @RequestMapping("/list")
    public String list(@RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "5")int size, Model model){
        Page<Vip> pageInfo = vipService.findByPage(page,size);
        model.addAttribute("pageInfo",pageInfo);
        return "vip/list";
    }


    @RequestMapping("/toadd")
    public String toadd(){
        return "vip/add";
    }

    @RequestMapping("/add")
    public String add(Vip vip){
        insert(vip);
        return "redirect:list";
    }

    @RequestMapping("/toedit")
    public String toedit(String id,Model model){
        Vip vip = vipService.findById(id);
        model.addAttribute("vip",vip);
        return "vip/edit";
    }

    @RequestMapping("/edit")
    public String edit(Vip vip){
        update(vip);
        return "redirect:list";
    }

    @RequestMapping("/delete")
    public String delete(String id){
        remove(id);
        return "redirect:list";
    }
}
