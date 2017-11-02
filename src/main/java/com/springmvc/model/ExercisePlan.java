package com.springmvc.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

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
	@Size(min=3, max=50)
	@Column(name = "img_name", nullable = true)
	private String img_name;
	
	@NotNull
	@Digits(integer=8, fraction=2)
	@Column(name = "Number_of_days", nullable = false)
	private int no_of_days;
	
	@NotNull
	@Digits(integer=8, fraction=2)
	@Column(name = "days_per_week", nullable = false)
	private int days_per_week;	

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
	
	public String getimg_name() {
		return img_name;
	}

	public void setimg_name(String img_name) {
		this.img_name = img_name;
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
	
	

	public int getDays_per_week() {
		return days_per_week;
	}

	public void setDays_per_week(int days_per_week) {
		this.days_per_week = days_per_week;
	}

	@Override
	public String toString() {
		return "ExercisePlan [id=" + id + ", img_name=" + img_name + ", name=" + name + ", description="
				+ description + ", no_of_days=" + no_of_days + ", days_per_week=" + days_per_week + "]";
	}
	
	
	

}
