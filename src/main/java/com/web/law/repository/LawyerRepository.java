package com.web.law.repository;

import com.web.law.domain.Lawyer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LawyerRepository extends JpaRepository<Lawyer,String> {

    Lawyer findByLawyerNickname(String nickname);
}
