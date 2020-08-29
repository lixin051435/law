package com.web.law.controller;

import com.web.law.domain.Admin;
import com.web.law.service.AdminService;
import com.web.law.utils.KeyUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.security.auth.kerberos.KeyTab;

/**
 * @ClassName : AdminController
 * @Description :
 * @Author : lixin
 * @Date: 2020-08-25 22:56
 */
@RequestMapping("/admin")
@Controller
public class AdminController extends BaseController<Admin> {

    private AdminService adminService;

    @Autowired
    public AdminController(AdminService adminService){
        this.adminService = adminService;
        super.init(adminService);
    }

    @RequestMapping("/list")
    public String list(@RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "5")int size,Model model){
        Page<Admin> pageInfo = adminService.findByPage(page,size);
        model.addAttribute("pageInfo",pageInfo);
        return "admin/list";
    }

    @RequestMapping("/toadd")
    public String toadd(){
        return "admin/add";
    }
    @RequestMapping("/toedit")
    public String toedit(String id,Model model){
        Admin admin = adminService.findById(id);
        model.addAttribute("admin",admin);
        return "admin/edit";
    }

    @RequestMapping("/add")
    public String add(Admin admin){
        admin.setAdminId(KeyUtils.genItemId());
        insert(admin);
        return "redirect:list";
    }

    @RequestMapping("/edit")
    public String edit(Admin admin){
        update(admin);
        return "redirect:list";
    }

    @RequestMapping("/delete")
    public String delete(String id){
        remove(id);
        return "redirect:list";
    }
}
