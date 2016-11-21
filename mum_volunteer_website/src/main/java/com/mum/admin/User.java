package com.mum.admin;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import com.mum.domain.Volunteer;

@Entity
public class User {
	@Id
	@GeneratedValue
	private int id;
	@Column
	private String userName;
	@Column
	private String passWord;
	@Column
	private String userType;
	
	@OneToOne(mappedBy="user")
	private Volunteer volunteer;

	public Volunteer getVolunteer() {
		return volunteer;
	}
	public void setVolunteer(Volunteer volunteer) {
		this.volunteer = volunteer;
	}
	public String getUserType() {
		return userType;
	}
	User(){
		
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

}
