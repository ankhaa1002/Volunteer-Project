package com.mum.domain;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

@Entity
public class Skill {
	@Id
	@GeneratedValue
	private int id;
	@Column
	private String name;
	@ManyToMany
	@JoinTable(name = "volunteer_skill", joinColumns = @JoinColumn(name = "SKILL_ID"), inverseJoinColumns = @JoinColumn(name = "VOLUNTEER_ID"))
	private List<Volunteer> volunteers;

	public Skill() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Volunteer> getVolunteers() {
		return volunteers;
	}

	public void setVolunteers(List<Volunteer> volunteers) {
		this.volunteers = volunteers;
	}
	
	
}
