package com.mum.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import com.mum.domain.Administrator;
import com.mum.repository.AdministratorRepository;


@Service
@Repository
public class AdministratorService {

	@Autowired
	AdministratorRepository AdministratorRepository;

	public void saveAdministrator(Administrator admin) {
		AdministratorRepository.save(admin);
	}

	public Administrator getAdministrator(int id) {
		return AdministratorRepository.getOne(id);
	}

	public void updateAdministrator(Administrator admin) {
		AdministratorRepository.save(admin);
	}

	public void deleteAdministrator(Administrator admin) {
		AdministratorRepository.delete(admin);
	}
}
