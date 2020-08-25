package com.web.law.controller;

import com.web.law.service.BaseService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.Serializable;

/**
 * @ClassName : BaseController
 * @Description :
 * @Author : lixin
 * @Date: 2020-08-25 22:41
 */
public class BaseController<E> {


    private BaseService<E> service;

    public E findById(Serializable id){
        return service.findById(id);
    }

    public Page<E> findByPage(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "5")int size){
        return service.findByPage(page,size);
    }

    public void init(BaseService service){
        this.service = service;
    }

    public void add(E e){
        service.add(e);
    }

    public void remove(Serializable id){
        service.remove(id);
    }

    public void update(E e){
        service.update(e);
    }
}
