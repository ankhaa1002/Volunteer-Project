package com.mum.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mum.domain.User;


public interface UserRepository extends JpaRepository<User, String>{
	User findByuserName(String username);
}

