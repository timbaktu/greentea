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
@Table(name="wf_exerciseplan")
public class ExercisePlan {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@NotNull
	@Size(min=3, max=50)
	@Column(name = "Plan_Name", nullable = false)
	private String name;

	@NotNull
	@Size(min=3, max=50)
	@Column(name = "Plan_Description", nullable = false)
	private String description;
	
	@NotNull
	@Digits(integer=8, fraction=2)
	@Column(name = "Number_of_days", nullable = false)
	private int no_of_days;
	

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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
	public int getno_of_days() {
		return no_of_days;
	}

	public void setno_of_days(int no_of_days) {
		this.no_of_days = no_of_days;
	}

	@Override
	public String toString() {
		return "ExercisePlan [id=" + id + ", name=" + name + ", description="
				+ description + ", no_of_days=" + no_of_days + "]";
	}
	
	
	

}
