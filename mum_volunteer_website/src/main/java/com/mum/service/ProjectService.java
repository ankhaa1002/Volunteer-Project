package com.mum.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.mum.domain.Project;
import com.mum.repository.ProjectRepository;

@Service
@Repository
public class ProjectService {

	@Autowired
	ProjectRepository projectRepository;

	public Project saveProject(Project project) {
		Project p = projectRepository.save(project);
		return p;
	}

	public Project findProject(int id) {
		return projectRepository.findOne(id);
	}

	public List<Project> findAllProjects() {
		return projectRepository.findAll();
	}

	public List<Project> findProjectEntries(int firstResult, int maxResults) {
		return projectRepository.findAll(new PageRequest(firstResult / maxResults, maxResults)).getContent();
	}

	public void updateProject(Project project) {
		projectRepository.save(project);
	}
	
	public void deletePizza(Project project) {
		projectRepository.delete(project);
	}
}
