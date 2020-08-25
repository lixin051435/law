package com.web.law.repository;

import com.web.law.domain.Lawyer;
import com.web.law.domain.Vip;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VipRepository extends JpaRepository<Vip,String> {
}
