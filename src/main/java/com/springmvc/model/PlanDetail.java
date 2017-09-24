package com.springmvc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
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

@Entity
@Table(name="wf_exerciseplanschedule") 
//@SecondaryTables({
//      @SecondaryTable(name="wf_exercise_type", pkJoinColumns={@PrimaryKeyJoinColumn(name = "id") })
//      })

public class PlanDetail implements java.io.Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 4020362183194205605L;

	
	public PlanDetail() {
		// TODO Auto-generated constructor stub
	}
	
//	@OneToOne
//	  @JoinColumns( {
//	      @JoinColumn(name = "exercise_type_id", referencedColumnName = "ID", table = "wf_exercise_type") })
//	@SuppressWarnings("deprecation")
	@OneToOne
	@ForeignKey(name="exercise_type_id")
	private ExerciseType exercise_type;

	@NotNull
//	@Size(min=3, max=50)
//	@Column(table = "wf_exercise_type", name = "exercise_type_name", nullable = false)
//	private String name;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	

//	@NotNull
//	@Size(min=3, max=200)
//	@Column(table = "wf_exercise_type", name = "description", nullable = false)
//	private String description;

	
	@NotNull
	@Size(min=3, max=50)
	@Column(name = "day", nullable = false)
	private String day;

	@NotNull
	@Digits(integer=8, fraction=2)
	@Column(name = "planid", nullable = false)
	private int plan_id;
	
	@NotNull
	@Digits(integer=8, fraction=2)
	@Column(name = "reps", nullable = false)
	private int no_of_reps;
	
	@NotNull
	@Digits(integer=8, fraction=2)
	@Column(name = "no_of_exercises", nullable = false)
	private int no_of_exercise;
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getplan_id() {
		return plan_id;
	}

	public void setplan_id(int plan_id) {
		this.plan_id = plan_id;
	}
	
	public String getName() {
		return exercise_type.getName();
	}

//	public void setName(String name) {
//		this.name = name;
//	}


	public String getday() {
		return day;
	}

	public void setday(String day) {
		this.day = day;
	}

	public int getno_of_reps() {
		return no_of_reps;
	}

	public void setno_of_reps(int no_of_reps) {
		this.no_of_reps = no_of_reps;
	}

	public int getno_of_exercise() {
		return no_of_exercise;
	}

	public void setno_of_exercise(int no_of_exercise) {
		this.no_of_exercise = no_of_exercise;
	}

	public String getDescription() {
		return exercise_type.getDescription();
	}
//	
//	public void setDescription(String description) {
//		this.description = description;
//	}
	


	@Override
	public String toString() {
		return "PlanDetail [id=" + id + ",plan_id=" + plan_id + ", name=" + getName() + ", description="
		+ getDescription() + ", day=" + day + ", no_of_reps=" + no_of_reps + ", no_of_exercise=" + no_of_exercise + "]";
	}
	
	
	

}
