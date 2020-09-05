package com.web.law.service;

import com.web.law.domain.Admin;
import com.web.law.domain.User;
import com.web.law.repository.AdminRepository;
import com.web.law.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @ClassName : VipService
 * @Description :
 * @Author : lixin
 * @Date: 2020-08-25 22:49
 */
@Service
public class AdminService extends BaseService<Admin> {

    private AdminRepository repository;

    @Autowired
    public AdminService(AdminRepository repository){
        this.repository = repository;
        super.init(repository);
    }

    public Admin findUserByNickname(String adminNickname) {
        return repository.findByAdminNickname(adminNickname);
    }
}
