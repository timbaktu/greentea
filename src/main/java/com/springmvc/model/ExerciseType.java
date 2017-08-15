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

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonManagedReference;
@Entity
@Table(name="wf_exercise_type")

public class ExerciseType  {
	public ExerciseType(){
		
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@NotNull
	@Size(min=3, max=50)
	@Column(name = "exercise_type_name", nullable = false)
	private String typename;

	@NotNull
	@Size(min=3, max=50)
	@Column(name = "description", nullable = false)
	private String typedescription;
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String gettypeName() {
		return typename;
	}

	public void settypeName(String typename) {
		this.typename = typename;
	}

	public String gettypeDescription() {
		return typedescription;
	}

	public void settypeDescription(String typedescription) {
		this.typedescription = typedescription;
	}

	@JsonManagedReference
	@Override
	public String toString() {
		return "ExerciseType [id=" + id + ", typename=" + typename + ", typedescription="
				+ typedescription + "]";
	}
	
	
	

}
