package com.springmvc.bean;

import java.util.Date;


public class UserRegistration {

private int id;
private String firstname;
private String lastname;
private Date birthdate;
private String gender;
private String weight;
private String height;
private String bmi;
private String username;
private String password;
public int getId() {
return id;
}
public void setId(int id) {
this.id = id;
}
public String getFirstname() {
return firstname;
}
public void setFirstname(String firstname) {
this.firstname = firstname;
}
public String getLastname() {
return lastname;
}
public void setLastname(String lastname) {
this.lastname = lastname;
}
public Date getBirthdate() {
return birthdate;
}
public void setBirthdate(Date birthdate) {
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
public String getUsername() {
return username;
}
public void setUsername(String username) {
this.username = username;
}
public String getPassword() {
return password;
}
public void setPassword(String password) {
this.password = password;
}
}
