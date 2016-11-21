package com.mum.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mum.domain.Project;
import com.mum.domain.Task;

public interface TaskRepository extends JpaRepository<Task, Integer>{
	List<Task> findByProject(Project project);
}
