package com.web.law.controller;

import com.web.law.domain.Info;
import com.web.law.domain.Lawyer;
import com.web.law.service.InfoService;
import com.web.law.utils.KeyUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;

/**
 * @ClassName : InfoController
 * @Description :
 * @Author : lixin
 * @Date: 2020-08-25 22:56
 */
@RequestMapping("/info")
@Controller
public class InfoController extends BaseController<Info> {

    private InfoService infoService;

    @Autowired
    public InfoController(InfoService infoService){
        this.infoService = infoService;
        super.init(infoService);
    }

    @RequestMapping("/list")
    public String list(@RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "5")int size,Model model){
        Page<Info> pageInfo = infoService.findByPage(page,size);
        model.addAttribute("pageInfo",pageInfo);
        return "info/list";
    }

    @RequestMapping("/toadd")
    public String toadd(){
        return "info/add";
    }
    @RequestMapping("/toedit")
    public String toedit(String id,Model model){
        Info info = infoService.findById(id);
        model.addAttribute("info",info);
        return "info/edit";
    }

    @RequestMapping("/add")
    public String add(Info info){
        info.setInfoId(KeyUtils.genItemId());
        info.setCreatetime(new Date());
        insert(info);
        return "redirect:list";
    }

    @RequestMapping("/edit")
    public String edit(Info info){
        Date date = infoService.findById(info.getInfoId()).getCreatetime();
        info.setCreatetime(date);
        update(info);
        return "redirect:list";
    }

    @RequestMapping("/delete")
    public String delete(String id){
        remove(id);
        return "redirect:list";
    }
}
