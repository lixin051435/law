package com.web.law.service;

import com.web.law.domain.Admin;
import com.web.law.domain.Question;
import com.web.law.repository.AdminRepository;
import com.web.law.repository.QuestionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

/**
 * @ClassName : VipService
 * @Description :
 * @Author : lixin
 * @Date: 2020-08-25 22:49
 */
@Service
public class QuestionService extends BaseService<Question> {

    private QuestionRepository repository;

    @Autowired
    public QuestionService(QuestionRepository repository){
        this.repository = repository;
        super.init(repository);
    }

    public Page<Question> getPageByExample(int page,int size,Question question){
        Pageable pageable = PageRequest.of(page,size);
        if(question == null){
            question = new Question();
        }
        if(null == question.getStatus() || 0 == question.getStatus()){
            question.setStatus(null);
        }
        if("0".equals(question.getUserId())){
            question.setUserId(null);
        }
        if("0".equals(question.getLawyerId())){
            question.setLawyerId(null);
        }
        Example<Question> example = Example.of(question);
        return repository.findAll(example,pageable);
    }
}
