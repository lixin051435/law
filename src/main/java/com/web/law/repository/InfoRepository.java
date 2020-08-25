package com.web.law.repository;

import com.web.law.domain.Info;
import com.web.law.domain.Vip;
import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

@Repository
public interface InfoRepository extends JpaRepository<Info,String> {
}
