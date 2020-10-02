package com.web.law.controller;


import com.web.law.constants.SystemConstant;
import com.web.law.domain.*;
import com.web.law.enums.QuestionStatusEnum;
import com.web.law.enums.VIPTypeEnum;
import com.web.law.service.*;
import com.web.law.utils.KeyUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
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

    @Autowired
    private QuestionService questionService;

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

    @GetMapping("/pay")
    public String pay(String lawyerId, Model model, HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute(SystemConstant.SESSION_USER);
        if(user == null){
            return "forepage/index";
        }
        Lawyer lawyer = lawyerService.findById(lawyerId);
        String vip_level = user.getVipLevel();
        String msg = "尊敬的VIP用户";
        Double total = lawyer.getLawerExpense() + 0.0;
        if(VIPTypeEnum.VIP1.getCode().equals(vip_level)){
            total = total * vipService.findById(VIPTypeEnum.VIP1.getCode()).getDiscount() * 0.1;
        }else if(VIPTypeEnum.VIP2.getCode().equals(vip_level)){
            total = total * vipService.findById(VIPTypeEnum.VIP1.getCode()).getDiscount() * 0.1;
        }else if(VIPTypeEnum.VIP3.getCode().equals(vip_level)){
            total = total * vipService.findById(VIPTypeEnum.VIP1.getCode()).getDiscount() * 0.1;
        }else{
            msg = "";
        }

        // 保留两位小数
        total = (double) Math.round(total * 100) / 100;

        // 添加一个问题
        Question question = new Question();
        question.setQuestionId(KeyUtils.genItemId());
        question.setStatus(QuestionStatusEnum.PAYED.getCode());
        question.setUserId(user.getUserId());
        question.setLawyerId(lawyer.getLawyerId());
        question.setPayment(new BigDecimal(total));
        questionService.insert(question);


        model.addAttribute("msg",msg);
        model.addAttribute("total",total);
        model.addAttribute("question",question);
        return "forepage/forePayed";
    }

    @GetMapping("/lawyer/{id}")
    public String lawyers(@PathVariable String id, Model model){
        Lawyer lawyer = lawyerService.findById(id);
        model.addAttribute("product",lawyer);
        return "forepage/proDetail";
    }
    @GetMapping("/myQuestion")
    public String myQuestion(@RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "10")int size, Model model,HttpServletRequest request){
        HttpSession session = request.getSession();
        Question question = new Question();
        User user = (User) session.getAttribute(SystemConstant.SESSION_USER);
        if(user == null){
            return "/user/login";
        }
        question.setUserId(user.getUserId());
        Page<Question> questions = questionService.getPageByExample(page,size,question);
        model.addAttribute("pageInfo",questions);
        return "forepage/myquestions";
    }
    @GetMapping("/question/{id}")
    public String toQuestionDetail(@PathVariable String id, Model model){
        Question question = questionService.findById(id);
        List<Lawyer> lawyerList = lawyerService.findAll();
        model.addAttribute("lawyerList",lawyerList);
        model.addAttribute("question",question);
        return "forepage/questionDetail";
    }

    @GetMapping("/infos")
    public String infos(@RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "10")int size, Model model){
        Page<Info> infos = infoService.findByPage(page,size);
        model.addAttribute("pageInfo",infos);
        return "forepage/infos";
    }
    @GetMapping("/info/{id}")
    public String toInfoDetail(@PathVariable String id, Model model){
        Info info = infoService.findById(id);
        model.addAttribute("info",info);
        return "forepage/infoDetail";
    }


}
