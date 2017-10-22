package com.springmvc.bean;

import java.util.Date;


public class UserRegistrationBean {

private int id;
private int user_id;
private String birthdate;
private String gender;
private String weight;
private String height;
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





}
