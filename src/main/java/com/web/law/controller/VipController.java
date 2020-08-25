package com.web.law.controller;

import com.web.law.domain.Vip;
import com.web.law.service.VipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;

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

    @GetMapping("/list")
    public void list(){
        int page = 0;
        int size = 5;
        Page<Vip> pageInfo = vipService.findByPage(page,size);
        List<Vip> vips = pageInfo.getContent();
        for (Vip v :
                vips) {
            System.out.println(v);
        }
    }

    @RequestMapping("/add")
    public void insert(Vip vip){
        add(vip);
    }
}
