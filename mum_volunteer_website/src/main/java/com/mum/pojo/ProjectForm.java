package com.mum.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import com.mum.domain.Skill;
import com.mum.domain.Task;
import com.mum.domain.enums.Status;
import com.mum.service.SkillService;

public class ProjectForm {
	
	private int id;
	private String title;
	
	private String description;
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date startDate;
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date endDate;
	
	private List<Skill> allSkils = new ArrayList<>();
	private List<Task> tasks = new ArrayList<>();
	
	private List<Skill> skills;
	
	private String location;
	private Status status;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Status getStatus() {
		return status;
	}
	public void setStatus(Status status) {
		this.status = status;
	}
	public List<Skill> getSkill() {
		return skills;
	}
	public void setSkill(List<Integer> skill) {
		this.skills = skills;
	}
	public List<Skill> getAllSkils() {
		return allSkils;
	}
	public void setAllSkils(List<Skill> allSkils) {
		this.allSkils = allSkils;
	}
	public List<Skill> getSkills() {
		return skills;
	}
	public void setSkills(List<Skill> skills) {
		this.skills = skills;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public List<Task> getTasks() {
		return tasks;
	}
	public void setTasks(List<Task> tasks) {
		this.tasks = tasks;
	}
	
	
	
}
