package com.web.law.service;

import com.web.law.domain.Lawyer;
import com.web.law.domain.Question;
import com.web.law.repository.LawyerRepository;
import com.web.law.repository.QuestionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

/**
 * @ClassName : VipService
 * @Description :
 * @Author : lixin
 * @Date: 2020-08-25 22:49
 */
@Service
public class LawyerService extends BaseService<Lawyer> {

    private LawyerRepository repository;

    @Autowired
    public LawyerService(LawyerRepository repository){
        this.repository = repository;
        super.init(repository);
    }

    public Lawyer findLawyerByNickname(String lawyerNickname) {
        return repository.findByLawyerNickname(lawyerNickname);
    }

    public Page<Lawyer> findAllByType(int type, int page, int size){
        return repository.findAllByLawyerType(type, PageRequest.of(page,size));
    }
}
