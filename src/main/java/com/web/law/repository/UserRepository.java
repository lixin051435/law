package com.web.law.repository;

import com.web.law.domain.Admin;
import com.web.law.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User,String> {

    User findByUserNickname(String nickname);
}
