package com.springmvc.model;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.GenerationType;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.SecondaryTable;
import javax.persistence.SecondaryTables;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import com.fasterxml.jackson.annotation.JsonBackReference;



@Entity
@Table(name="wf_exerciseplanschedule") 
@SecondaryTables({
      @SecondaryTable(name="wf_exercise_type", pkJoinColumns={@PrimaryKeyJoinColumn(name = "id")})
      })

public class ExercisePlanSchedule implements java.io.Serializable{

	public ExercisePlanSchedule() {
		// TODO Auto-generated constructor stub
	}

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@NotNull
	@Size(min=1, max=50)
	@Column(name = "planid", nullable = false)
	private int planid;
	
	@NotNull
	@Size(min=3, max=50)
	@Column(table = "wf_exercise_type", name = "exercise_type_name", nullable = false)
	private String name;

	@NotNull
	@Size(min=3, max=50)
	@Column(table = "wf_exercise_type", name = "description", nullable = false)
	private String description;
	
	
	public int getId() {
		return id;
	}

	public void setplanId(int planid) {
		this.planid = planid;
	}

	public int getplanid() {
		return planid;
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
	
	public void setDescription(String description) {
		this.description = description;
	}

		
	public String getDescription() {
		return description;
	}


	@Override
	public String toString() {
		return "ExercisePlanSchedule [planid=" + planid + ",id=" + id + ", name=" + name + ", description="
				+ description + "]";
	}
	
	
	

}
