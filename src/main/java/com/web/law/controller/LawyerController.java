package com.web.law.controller;

import com.web.law.constants.SystemConstant;
import com.web.law.domain.Lawyer;
import com.web.law.service.LawyerService;
import com.web.law.utils.FileUploadAndDowloadUtils;
import com.web.law.utils.KeyUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

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

    @GetMapping("/logout")
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.removeAttribute(SystemConstant.SESSION_LAWYER);
        return "redirect:/lawyer/login";
    }

    @PostMapping("/login")
    public String login(Lawyer form, HttpServletRequest request) {
        HttpSession session = request.getSession();
        Lawyer lawyer = lawyerService.findLawyerByNickname(form.getLawyerNickname());
        if (lawyer != null) {
            if (lawyer.getLawyerPassword().equals(form.getLawyerPassword())) {
                session.setAttribute(SystemConstant.SESSION_LAWYER, lawyer);
                return "redirect:/lawyer/index";
            }
        }
        return "error";
    }
    @GetMapping("/login")
    public String toLogin() {
        return "lawyer/login";
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
        if(lawyer.getLawyerType() == 0){
            lawyer.setLawerExpense(0);
        }
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

    @RequestMapping("/recommend")
    public String recommend(Lawyer form,Model model){

        List<Lawyer> list = lawyerService.recommendByLawyer(form);
        model.addAttribute("list",list);
        return "forepage/recommend";

    }
}
