package com.web.law.service;

import com.web.law.domain.Lawyer;
import com.web.law.repository.LawyerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

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
    public LawyerService(LawyerRepository repository) {
        this.repository = repository;
        super.init(repository);
    }

    public Lawyer findLawyerByNickname(String lawyerNickname) {
        return repository.findByLawyerNickname(lawyerNickname);
    }

    public Page<Lawyer> findAllByType(int type, int page, int size) {
        return repository.findAllByLawyerType(type, PageRequest.of(page, size));
    }

    public List<Lawyer> recommendByLawyer(Lawyer form) {
        String field = form.getLawyerField();
        List<Lawyer> lawyers = null;
        if (form.getLawyerType().equals(-1) && form.getLawyerGender().equals("-1")) {
            lawyers = repository.findAll();
        } else if (!form.getLawyerType().equals(-1) && form.getLawyerGender().equals("-1")) {
            lawyers = repository.findAllByLawyerType(form.getLawyerType());
        } else if (form.getLawyerType().equals(-1) && !form.getLawyerGender().equals("-1")) {
            lawyers = repository.findAllByLawyerGender(form.getLawyerGender());
        } else if (!form.getLawyerType().equals(-1) && form.getLawyerGender().equals("-1")) {
            lawyers = repository.findAllByLawyerTypeAndLawyerGender(form.getLawyerType(), form.getLawyerGender());
        }

        if (field != null && !field.equals("")) {
            List<Lawyer> list = new ArrayList<>();
            List<String> fields = Arrays.asList(field.split(","));

            for (Lawyer l :
                    lawyers) {
                for (String f :
                        fields) {
                    if (l.getLawyerField().contains(f)) {
                        list.add(l);
                    }
                }

            }
            return list;
        } else {
            return lawyers;
        }

    }
}
