package com.springmvc.model;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.AssociationOverride;
import javax.persistence.AssociationOverrides;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
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
import com.fasterxml.jackson.annotation.JsonBackReference;



@Entity
//@Table(name="wf_exerciseplan")

@Table(name="wf_exerciseplandetail") 
@SecondaryTables({
      @SecondaryTable(name="wf_all_exercises", pkJoinColumns={@PrimaryKeyJoinColumn(name = "id")})
//      @SecondaryTable(name="wf_exerciseplanschedule", pkJoinColumns={@PrimaryKeyJoinColumn(name = "schedule_id", referencedColumnName="id")}),
//      @SecondaryTable(name="wf_exercise_type", pkJoinColumns={@PrimaryKeyJoinColumn(name = "exercise_type_id", referencedColumnName="id")})
      })


//@Table(name="wf_exerciseplandetail")
//@SecondaryTables({
//@SecondaryTable(name="wf_exercise_type", pkJoinColumns={@PrimaryKeyJoinColumn(name = "id", referencedColumnName="exercise_type_id")})

public class ExercisePlanDetail implements java.io.Serializable{
	@Column
	@ElementCollection(targetClass=ExerciseType.class)
	private Set<ExerciseType> ExerciseType = new HashSet<ExerciseType>(0);
	
	public ExercisePlanDetail() {
		// TODO Auto-generated constructor stub
	}
	
	public ExercisePlanDetail(Set<ExerciseType> ExerciseType) {
		this.ExerciseType = ExerciseType;
	}
	
//	@LazyCollection(LazyCollectionOption.FALSE)
	@OneToMany(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
	@JoinTable(name = "wf_exerciseplanschedule", joinColumns = { @JoinColumn(name = "id") }, inverseJoinColumns = { @JoinColumn(name = "exercise_type_id") })
//	@JsonIgnore
	@JsonBackReference
	
	public Set<ExerciseType> getExerciseTypes() {
		return this.ExerciseType;
	}
	
	public void setExerciseType(Set<ExerciseType> ExerciseType) {
		this.ExerciseType = ExerciseType;
	}
	

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@NotNull
	@Size(min=3, max=50)
	@Column(table = "wf_all_exercises", name = "exercise_name", nullable = false)
	private String name;

	@NotNull
	@Size(min=3, max=50)
	@Column(table = "wf_all_exercises", name = "exercise_description", nullable = false)
	private String description;
	
	@NotNull
	@Size(min=3, max=50)
	@Column(name = "timeinterval", nullable = false)
	private String timeinterval;

	
	@NotNull
	@Digits(integer=8, fraction=2)
	@Column(name = "number_of_reps", nullable = false)
	private int no_of_reps;
	
	@NotNull
	@Digits(integer=8, fraction=2)
	@Column(name = "number_of_sets", nullable = false)
	private int no_of_sets;
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	
//	@NotNull
//	@Size(min=3, max=50)
//	@Column(table = "wf_exercise_type", name = "exericse_type_name", nullable = false)
//	private String typename;
	
//	@NotNull
//	@Size(min=3, max=50)
//	@Column(table = "wf_exercise_type", name = "description", nullable = false)
//	private String typedescription;
	
	//	
//	@NotNull
//	@Size(min=3, max=50)
//	@Column(name = "schedule_id", nullable = false)
//	private int schedule_id;
//	
//	public int getschedule_Id() {
//		return schedule_id;
//	}
//
//	public void setschedule_Id(int schedule_id) {
//		this.schedule_id = schedule_id;
//	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getInterval() {
		return timeinterval;
	}

	public void setInterval(String timeinterval) {
		this.timeinterval = timeinterval;
	}
	
	public String getDescription() {
		return description;
	}

	public int getno_of_reps() {
		return no_of_reps;
	}

	public void setno_of_reps(int no_of_reps) {
		this.no_of_reps = no_of_reps;
	}

	public int getno_of_sets() {
		return no_of_sets;
	}

	public void setno_of_sets(int no_of_sets) {
		this.no_of_sets = no_of_sets;
	}
	

	
//	public void setTypeDescription(String typedescription) {
//		this.typedescription = typedescription;
//	}
//	
//
//	public String getTypeDescription() {
//		return typedescription;
//	}

	public void setDescription(String description) {
		this.description = description;
	}
	
//	public String getTypeName() {
//		return typename;
//	}
//
//	public void setTypeName(String typename) {
//		this.typename = typename;
//	}
	
	

//	
//	@NotNull
//	@Size(min=3, max=50)
//	@Column(table = "wf_exercise_type", name = "exercise_type_name", nullable = false)
//	private String typename;


	@Override
	public String toString() {
//		return "ExercisePlanDetail [id=" + id + ", name=" + name + ", description="
//				+ description + ", typedescription=" + typedescription + ", typename=" + typename + ", timeinterval=" + timeinterval + ", no_of_reps=" + no_of_reps + ", no_of_sets=" + no_of_sets + "]";
		return "ExercisePlanDetail [id=" + id + ", name=" + name + ", description="
		+ description + ", timeinterval=" + timeinterval + ", ExerciseType=" + ExerciseType + ", no_of_reps=" + no_of_reps + ", no_of_sets=" + no_of_sets + "]";

	}
	
	
	

}
