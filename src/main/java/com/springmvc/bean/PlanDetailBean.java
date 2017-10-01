package com.springmvc.bean;

public class PlanDetailBean implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String description;
	private String Name;
	private String day;
	private int planid;
	private int no_of_reps;
	private int no_of_exercises;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getName() {
		return Name;
	}
	
	public void setName(String name) {
	this.Name = name;
}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	
	public Integer getWeek() {
		if (Integer.parseInt(day) % 7 == 1)
			return (Integer.parseInt(day) / 7) + 1;
		
		if (Integer.parseInt(day) == 1)
			return 1;
		
		return null;
	}
	
	public int getPlanid() {
		return planid;
	}
	public void setPlanid(int planid) {
		this.planid = planid;
	}
	public int getno_of_reps() {
		return no_of_reps;
	}

	public void setno_of_reps(int no_of_reps) {
		this.no_of_reps = no_of_reps;
	}
	public int getno_of_exercise() {
		return no_of_exercises;
	}

	public void setno_of_exercise(int no_of_exercise) {
		this.no_of_exercises = no_of_exercise;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
	
	
}
