package com.mum.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.mum.domain.Project;
import com.mum.domain.Task;
import com.mum.repository.TaskRepository;

@Service
@Repository
public class TaskService {
	
	@Autowired
	private TaskRepository taskRepository;
	
	public Task saveTask(Task task) {
		Task t = taskRepository.save(task);
		return t;
	}

	public Task findTask(int id) {
		return taskRepository.findOne(id);
	}

	public List<Task> findAllPizzas() {
		return taskRepository.findAll();
	}

	public List<Task> findTaskEntries(int firstResult, int maxResults) {
		return taskRepository.findAll(new PageRequest(firstResult / maxResults, maxResults)).getContent();
	}

	public void updateTask(Task task) {
		taskRepository.save(task);
	}
	
	public void deletePizza(Task task) {
		taskRepository.delete(task);
	}
	
	public List<Task> findByProject(Project project){
		return taskRepository.findByProject(project);
	}
	
}
