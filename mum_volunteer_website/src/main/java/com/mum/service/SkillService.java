package com.mum.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.mum.domain.Project;
import com.mum.domain.Skill;
import com.mum.repository.SkillRepository;

@Repository
@Service
public class SkillService {

	@Autowired
	SkillRepository skillRepository;

	public void saveSkill(Skill skill) {
		skillRepository.save(skill);
	}

	public Skill findSkill(int id) {
		return skillRepository.findOne(id);
	}

	public List<Skill> findAllSkills() {
		return skillRepository.findAll();
	}

	public void updateProject(Skill skill) {
		skillRepository.save(skill);
	}

	public void deleteSkill(Skill skill) {
		skillRepository.delete(skill);
	}

}
