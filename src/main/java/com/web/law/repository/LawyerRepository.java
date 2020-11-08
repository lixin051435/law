package com.web.law.repository;

import com.web.law.domain.Lawyer;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LawyerRepository extends JpaRepository<Lawyer,String> {

    Lawyer findByLawyerNickname(String nickname);

    Page<Lawyer> findAllByLawyerType(Integer lawyerType, Pageable pageable);

    List<Lawyer> findAllByLawyerType(Integer lawyerType);

    List<Lawyer> findAllByLawyerGender(String gender);

    List<Lawyer> findAllByLawyerTypeAndLawyerGender(Integer lawyerType,String lawyerGender);

}
