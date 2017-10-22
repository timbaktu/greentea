package com.springmvc.model;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.NotEmpty;
import org.joda.time.LocalDate;
import org.springframework.format.annotation.DateTimeFormat;

@SuppressWarnings("serial")
@Entity
@Table(name="wf_user_registration")
public class UserRegistration implements Serializable{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@NotNull
//	@Size(min=3, max=50)
	@Column(name = "user_id", nullable = false)
	private int user_id;

	@NotNull
//	@Size(min=3, max=50)
	@Column(name = "birthdate", nullable = false)
	private String birthdate;


	@NotNull
//	@Size(min=3, max=50)
	@Column(name = "gender", nullable = false)
	private String gender;
	

	@NotNull
//	@Size(min=3, max=50)
	@Column(name = "weight", nullable = false)
	private String weight;
	

	@NotNull
//	@Size(min=3, max=50)
	@Column(name = "height", nullable = false)
	private String height;

	@NotNull
//	@Size(min=3, max=50)
	@Column(name = "bmi", nullable = false)
	private String bmi;
	
	
	

	public int getId() {
		return id;
	}




	public void setId(int id) {
		this.id = id;
	}




	public int getUser_id() {
		return user_id;
	}




	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}




	public String getBirthdate() {
		return birthdate;
	}




	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}




	public String getGender() {
		return gender;
	}




	public void setGender(String gender) {
		this.gender = gender;
	}




	public String getWeight() {
		return weight;
	}




	public void setWeight(String weight) {
		this.weight = weight;
	}




	public String getHeight() {
		return height;
	}




	public void setHeight(String height) {
		this.height = height;
	}




	public String getBmi() {
		return bmi;
	}




	public void setBmi(String bmi) {
		this.bmi = bmi;
	}




	@Override
	public String toString() {
		return "UserPlan [id=" + id + ", user_id=" + user_id + ", birthdate=" + birthdate + ", gender=" + gender + ", weight=" + weight + ", height=" + height + ", bmi=" + bmi + "]";
	}
	
	
	

}
