package com.mum.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.mum.repository.SkillRepository;
import com.mum.repository.VolunteerRepository;
import com.mum.domain.Skill;
import com.mum.domain.Volunteer;

@Service
@Repository
public class VolunteerService {
	@Autowired
	VolunteerRepository volunteerRepository;

	public void saveVolunteer(Volunteer volunteer) {
		volunteerRepository.save(volunteer);
	}

	public Volunteer getVolunteer(int id) {
		
			return volunteerRepository.findOne(id);
		
	}

	public void updateVolunteer(Volunteer volunteer) {
		volunteerRepository.save(volunteer);
	}

	public void deleteVolunteer(Volunteer volunteer) {
		
			volunteerRepository.delete(volunteer);
		
	}

	public List<Volunteer> findAllVolunteers() {
		return volunteerRepository.findAll();
	}

}
