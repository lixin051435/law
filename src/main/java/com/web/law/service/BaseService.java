package com.web.law.service;

import com.web.law.domain.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.io.Serializable;
import java.util.Optional;

/**
 * @ClassName : BaseService
 * @Description :
 * @Author : lixin
 * @Date: 2020-08-25 22:45
 */
public class BaseService<E> {

    private JpaRepository repository;

    public void init(JpaRepository repository){
        this.repository = repository;
    }

    public Page<E> findByPage(int page,int size){
        Pageable pageable = PageRequest.of(page,size);
        return repository.findAll(pageable);
    }

    public void add(E e){
        repository.save(e);
    }

    public void remove(Serializable id){
        repository.deleteById(id);
    }

    public void update(E e){
        repository.save(e);
    }

    public E findById(Serializable id) {
        Optional<E> optional =  repository.findById(id);
        if(optional.isPresent()){
            return optional.get();
        }
        return null;
    }
}
