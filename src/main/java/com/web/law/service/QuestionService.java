package com.web.law.service;

import com.web.law.domain.Admin;
import com.web.law.domain.Question;
import com.web.law.repository.AdminRepository;
import com.web.law.repository.QuestionRepository;
import org.springframework.beans.factory.annotation.Autowired;
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

    public Page<Question> getPageByStatus(int page,int size,int status){
        Pageable pageable = PageRequest.of(page,size);
        return repository.findAllByStatus(status,pageable);
    }
}
