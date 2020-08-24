package com.web.law.repository;

import com.web.law.domain.Question;
import com.web.law.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface QuestionRepository extends JpaRepository<Question,String> {
}
