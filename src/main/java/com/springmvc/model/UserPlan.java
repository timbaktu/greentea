package com.springmvc.model;

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

@Entity
@Table(name="wf_user_plan")
public class UserPlan {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@NotNull
	@Size(min=3, max=50)
	@Column(name = "user_id", nullable = false)
	private int user_id;

	@NotNull
	@Size(min=3, max=50)
	@Column(name = "plan_id", nullable = false)
	private int plan_id;

	
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


	public int getPlan_id() {
		return plan_id;
	}


	public void setPlan_id(int plan_id) {
		this.plan_id = plan_id;
	}


	@Override
	public String toString() {
		return "UserPlan [id=" + id + ", user_id=" + user_id + ", plan_id=" + plan_id + "]";
	}
	
	
	

}
