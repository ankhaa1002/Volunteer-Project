package com.mum.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mum.domain.Project;


public interface ProjectRepository extends JpaRepository<Project, Integer>{

}
