package com.web.law.service;

import com.web.law.domain.Admin;
import com.web.law.domain.Info;
import com.web.law.repository.AdminRepository;
import com.web.law.repository.InfoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @ClassName : VipService
 * @Description :
 * @Author : lixin
 * @Date: 2020-08-25 22:49
 */
@Service
public class InfoService extends BaseService<Info> {

    private InfoRepository repository;

    @Autowired
    public InfoService(InfoRepository repository){
        this.repository = repository;
        super.init(repository);
    }
}
