package com.web.law.repository;

import com.web.law.domain.Admin;
import com.web.law.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User,String> {
}
