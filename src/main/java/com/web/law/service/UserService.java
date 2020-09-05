package com.web.law.service;

import com.web.law.domain.User;
import com.web.law.domain.Vip;
import com.web.law.repository.UserRepository;
import com.web.law.repository.VipRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

/**
 * @ClassName : VipService
 * @Description :
 * @Author : lixin
 * @Date: 2020-08-25 22:49
 */
@Service
public class UserService extends BaseService<User> {

    private UserRepository repository;

    @Autowired
    public UserService(UserRepository repository){
        this.repository = repository;
        super.init(repository);
    }

    public User findUserByNickname(String nickname){
        return repository.findByUserNickname(nickname);
    }
}
