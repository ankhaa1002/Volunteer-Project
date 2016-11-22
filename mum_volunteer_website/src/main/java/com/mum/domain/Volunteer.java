package com.mum.domain;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Volunteer {
	@Id
	@GeneratedValue
	private int userId;
	@Column
	private String firstName;
	@Column
	private String middleName;
	@Column
	private String LastName;
	@Column
	private int telNumber;
	@Temporal(TemporalType.DATE)
	@Column
	private Date DOB;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn
	private User user;
	
	@Embedded
	private Address address;
	
	@Column
	private String email;
	
	@OneToMany(mappedBy = "volunteer")
	private List<Task> volunteerTask;
    
	@Column
	private String discription;
	
	public List<Task> getVolunteerTask() {
		return volunteerTask;
	}

	public void setVolunteerTask(List<Task> volunteerTask) {
		this.volunteerTask = volunteerTask;
	}

	public String getDiscription() {
		return discription;
	}

	public void setDiscription(String discription) {
		this.discription = discription;
	}

	public Volunteer() {
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return LastName;
	}

	public void setLastName(String lastName) {
		LastName = lastName;
	}

	public int getTelNumber() {
		return telNumber;
	}

	public void setTelNumber(int telNumber) {
		this.telNumber = telNumber;
	}

	public Date getDOB() {
		return DOB;
	}

	public void setDOB(Date dOB) {
		DOB = dOB;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
