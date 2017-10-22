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
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.GenerationType;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.SecondaryTable;
import javax.persistence.SecondaryTables;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.ForeignKey;
import org.hibernate.validator.constraints.NotEmpty;

import com.fasterxml.jackson.annotation.JsonBackReference;



@Entity
@Table(name="wf_exerciseplanschedule") 
//@SecondaryTables({
//    @SecondaryTable(name="wf_user_plan", pkJoinColumns={
//            @PrimaryKeyJoinColumn(name="plan_id", referencedColumnName="planid") })
//      })

public class ExerciseUserSchedule implements java.io.Serializable{

	public ExerciseUserSchedule() {
		// TODO Auto-generated constructor stub
	}
	
	@ManyToOne
	@ForeignKey(name="exercise_type_id")
	private ExerciseType exercise_type;

	@ManyToOne
	    @JoinColumn(name = "planid",referencedColumnName = "plan_id", nullable=false)
	@ForeignKey(name = "plan_id")     
	private UserPlan userplan;

	
	

	public UserPlan getUserplan() {
		return userplan;
	}

	public void setUserplan(UserPlan userplan) {
		this.userplan = userplan;
	}

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
//	@NotNull
//	@Size(min=1, max=50)
//	@Column(name = "planid", nullable = false)
//	private int planid;
	
	@NotNull
	@Size(min=1, max=50)
	@Column(name = "day", nullable = false)
	private int day;
	

//
//	
//	@NotNull
//	@Size(min=3, max=50)
//	@Column(table = "wf_exercise_type", name = "classname", nullable = false)
//	private String classname;
//	
//	@NotNull
//	@Size(min=3, max=50)
//	@Column(table = "wf_exercise_type", name = "description", nullable = false)
//	private String description;
	
	
	public int getId() {
		return id;
	}

//	public void setplanId(int planid) {
//		this.planid = planid;
//	}
//
//	public int getplanid() {
//		return planid;
//	}

	public int getExercise_type_id() {
		return exercise_type.getId();
	}

//	public void setExercise_type_id(int exercise_type_id) {
//		this.exercise_type_id = exercise_type_id;
//	}

	public void setday(int day) {
		this.day = day;
	}

	public int getday() {
		return day;
	}
	
	public void setId(int id) {
		this.id = id;
	}


		public String getName() {
		return exercise_type.getName();
	}

//		public int getuser_id() {
//		return userplan.getUser_id();
//		}
//	public void setName(String name) {
//		this.name = name;
//
//	}
	
	
	public String getclassName() {
	return exercise_type.getClassname();
}

//public void setclassName(String classname) {
//	this.classname = classname;
//}
	
//	public void setDescription(String description) {
//		this.description = description;
//	}

		
	public String getDescription() {
		return exercise_type.getDescription();
	}


	@Override
	public String toString() {
		return "ExerciseUserSchedule [userid=" + getUserplan().getUser_id() + "exercise_type_id=" + getId() + ",id=" + id + ",day=" + day + ", name=" + getName() + ", classname=" + getclassName() + ", description="
				+ getDescription() + "]";
	}
	
	
	

}
