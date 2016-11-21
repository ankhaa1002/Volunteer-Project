package com.mum.pojo;

import java.util.Date;
import java.util.List;

import com.mum.domain.Address;
import com.mum.domain.Task;

public class VolunteerForm {

	private String firstName;

	private String middleName;

	private String LastName;

	private int telNumber;

	private Date DOB;

	private Address address;

	private String email;

	private List<Task> volunteerTask;

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

	public List<Task> getVolunteerTask() {
		return volunteerTask;
	}

	public void setVolunteerTask(List<Task> volunteerTask) {
		this.volunteerTask = volunteerTask;
	}

}
