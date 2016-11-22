package com.mum.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import com.mum.domain.Administrator;
import com.mum.domain.User;
import com.mum.repository.AdministratorRepository;
import com.mum.repository.UserRepository;


@Service
@Repository
public class UserService {

	@Autowired
	UserRepository userRepository;

	public void saveUser(User admin) {
		userRepository.save(admin);
	}

	public User getUser(String id) {
		return userRepository.getOne(id);
	}

	public void updateUser(User admin) {
		userRepository.save(admin);
	}

	public void deleteUser(User admin) {
		userRepository.delete(admin);
	}
}
