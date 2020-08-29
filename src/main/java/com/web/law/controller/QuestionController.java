package com.web.law.controller;

import com.web.law.domain.Question;
import com.web.law.enums.QuestionStatusEnum;
import com.web.law.service.QuestionService;
import com.web.law.utils.KeyUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Key;

/**
 * @ClassName : QuestionController
 * @Description :
 * @Author : lixin
 * @Date: 2020-08-25 22:56
 */
@RequestMapping("/question")
@Controller
public class QuestionController extends BaseController<Question> {

    private QuestionService questionService;

    @Autowired
    public QuestionController(QuestionService questionService){
        this.questionService = questionService;
        super.init(questionService);
    }

    @RequestMapping("/list")
    public String list(@RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "5")int size,int status,Model model){
        Page<Question> pageInfo = questionService.getPageByStatus(page,size,status);
        model.addAttribute("pageInfo",pageInfo);
        String result = "";
        if(QuestionStatusEnum.ANSWERING.getCode() == status){
            result = "question/answering-list";
        }else if(QuestionStatusEnum.FINISHED.getCode() == status){
            result = "question/finished-list";
        }else{
            result = "question/all-list";
        }
        return result;
    }



    @RequestMapping("/toadd")
    public String toadd(){
        return "question/add";
    }
    @RequestMapping("/toedit")
    public String toedit(String id,Model model){
        Question question = questionService.findById(id);
        model.addAttribute("question",question);
        return "question/edit";
    }

    @RequestMapping("/add")
    public String add(Question question){
        question.setQuestionId(KeyUtils.genItemId());
        insert(question);
        return "redirect:list";
    }

    @RequestMapping("/edit")
    public String edit(Question question){
        update(question);
        return "redirect:list";
    }

    @RequestMapping("/delete")
    public String delete(String id){
        remove(id);
        return "redirect:list";
    }
}
