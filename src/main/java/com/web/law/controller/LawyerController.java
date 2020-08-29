package com.web.law.controller;

import com.web.law.domain.Lawyer;
import com.web.law.service.LawyerService;
import com.web.law.utils.FileUploadAndDowloadUtils;
import com.web.law.utils.KeyUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

/**
 * @ClassName : LawyerController
 * @Description :
 * @Author : lixin
 * @Date: 2020-08-25 22:56
 */
@RequestMapping("/lawyer")
@Controller
public class LawyerController extends BaseController<Lawyer> {

    private LawyerService lawyerService;

    @Autowired
    public LawyerController(LawyerService lawyerService){
        this.lawyerService = lawyerService;
        super.init(lawyerService);
    }

    @RequestMapping("/list")
    public String list(@RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "5")int size,Model model){
        Page<Lawyer> pageInfo = lawyerService.findByPage(page,size);
        model.addAttribute("pageInfo",pageInfo);
        return "lawyer/list";
    }

    @RequestMapping("/toadd")
    public String toadd(){
        return "lawyer/add";
    }
    @RequestMapping("/toedit")
    public String toedit(String id,Model model){
        Lawyer lawyer = lawyerService.findById(id);
        model.addAttribute("lawyer",lawyer);
        return "lawyer/edit";
    }

    @RequestMapping("/add")
    public String add(Lawyer lawyer, MultipartFile file, HttpServletRequest request){
        lawyer.setLawyerId(KeyUtils.genItemId());
        String url = FileUploadAndDowloadUtils.upload(file,request);
        lawyer.setLawyerIcon(url);
        insert(lawyer);
        return "redirect:list";
    }

    @RequestMapping("/edit")
    public String edit(Lawyer lawyer, MultipartFile file, HttpServletRequest request){
        String url = FileUploadAndDowloadUtils.upload(file,request);
        lawyer.setLawyerIcon(url);
        update(lawyer);
        return "redirect:list";
    }

    @RequestMapping("/delete")
    public String delete(String id){
        remove(id);
        return "redirect:list";
    }
}
