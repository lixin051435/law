package com.web.law.service;

import com.web.law.domain.Vip;
import com.web.law.repository.VipRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @ClassName : VipService
 * @Description :
 * @Author : lixin
 * @Date: 2020-08-25 22:49
 */
@Service
public class VipService extends BaseService<Vip> {

    private VipRepository vipRepository;

    @Autowired
    public VipService(VipRepository vipRepository){
        this.vipRepository = vipRepository;
        super.init(vipRepository);
    }
}
