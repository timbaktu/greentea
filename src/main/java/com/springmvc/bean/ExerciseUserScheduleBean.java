package com.springmvc.bean;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

public class ExerciseUserScheduleBean implements java.io.Serializable{

	private int user_id;
	private int schedule_id;
	private int status;
	private int reps_completed;
	private int exercise_completed;
	private String notes;
	private int duration;
	private String workout_time;
	private int planid;
	private int day;
	private int exercise_type_id;
	private String title;
	private String description;
	private String className;
	private String startDate;
	private String url;

	
	
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getSchedule_id() {
		return schedule_id;
	}
	public void setSchedule_id(int schedule_id) {
		this.schedule_id = schedule_id;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getReps_completed() {
		return reps_completed;
	}
	public void setReps_completed(int reps_completed) {
		this.reps_completed = reps_completed;
	}
	public int getExercise_completed() {
		return exercise_completed;
	}
	public void setExercise_completed(int i) {
		this.exercise_completed = i;
	}
	public String getNotes() {
		return notes;
	}
	public void setNotes(String notes) {
		this.notes = notes;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int i) {
		this.duration = i;
	}
	public String getWorkout_time() {
		return workout_time;
	}
	public void setWorkout_time(String workout_time) {
		this.workout_time = workout_time;
	}
	public int getPlanid() {
		return planid;
	}
	public void setPlanid(int planid) {
		this.planid = planid;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	public int getExercise_type_id() {
		return exercise_type_id;
	}
	public void setExercise_type_id(int exercise_type_id) {
		this.exercise_type_id = exercise_type_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}

	
	
	

}
