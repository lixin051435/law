package com.web.law.repository;

import com.web.law.domain.Question;
import com.web.law.domain.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface QuestionRepository extends JpaRepository<Question,String> {

    Page<Question> findAllByStatus(int status, Pageable pageable);
}
