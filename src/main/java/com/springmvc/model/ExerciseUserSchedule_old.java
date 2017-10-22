//package com.springmvc.model;
//
//import java.util.HashSet;
//import java.util.Set;
//
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.FetchType;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.JoinColumn;
//import javax.persistence.JoinTable;
//import javax.persistence.ManyToMany;
//import javax.persistence.ManyToOne;
//import javax.persistence.Table;
//import javax.validation.constraints.NotNull;
//import javax.validation.constraints.Size;
//
//import org.hibernate.annotations.ForeignKey;
//import org.hibernate.validator.constraints.NotEmpty;
//
//@Entity
//@Table(name="wf_user_schedule") 
//
//public class ExerciseUserSchedule_old  implements java.io.Serializable{
//
//	
//	/**
//	 * 
//	 */
//	private static final long serialVersionUID = 1L;
//
//	
//	@ManyToOne
//	@ForeignKey(name="schedule_id")
//	private ExerciseSchedule schedule;
//	
//	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
//	private int id;
//	
//	public int getId() {
//		return id;
//	}
//
//	public void setId(int id) {
//		this.id = id;
//	}
//	
//	@NotNull
//	@Size(min=3, max=50)
//	@Column(name = "user_id", nullable = false)
//	private int user_id;
//	
//
////	@NotNull
////	@Size(min=3, max=50)
////	@Column(name = "schedule_id", nullable = false)
////	private int schedule_id;
//	
//	@NotNull
//	@Size(min=3, max=50)
//	@Column(name = "status", nullable = false)
//	private int status;
//	
//	@NotNull
//	@Size(min=3, max=50)
//	@Column(name = "reps_completed", nullable = false)
//	private int reps_completed;
//	
//	@NotNull
//	@Size(min=3, max=50)
//	@Column(name = "exercise_completed", nullable = false)
//	private int exercise_completed;
//
//	@NotNull
//	@Size(min=3, max=50)
//	@Column(name = "notes", nullable = false)
//	private String notes;
//	
//	@NotNull
//	@Size(min=3, max=50)
//	@Column(name = "duration", nullable = false)
//	private int duration;
//	
//	
//	@NotNull
//	@Size(min=3, max=50)
//	@Column(name = "workout_time", nullable = false)
//	private String workout_time;
//
//	public ExerciseSchedule getExercise_user_schedule() {
//		return schedule;
//	}
//
//	public void setExercise_user_schedule(ExerciseSchedule exercise_user_schedule) {
//		this.schedule = exercise_user_schedule;
//	}
//
//	public int getUser_id() {
//		return user_id;
//	}
//
//	public void setUser_id(int user_id) {
//		this.user_id = user_id;
//	}
//
//	public int getSchedule_id() {
//		return schedule.getId();
//	}
//
////	public void setSchedule_id(int schedule_id) {
////		this.schedule_id = schedule_id;
////	}
//
//	public int getStatus() {
//		return status;
//	}
//
//	public void setStatus(int status) {
//		this.status = status;
//	}
//
//	public int getReps_completed() {
//		return reps_completed;
//	}
//
//	public void setReps_completed(int reps_completed) {
//		this.reps_completed = reps_completed;
//	}
//
//	public int getExercise_completed() {
//		return exercise_completed;
//	}
//
//	public void setExercise_completed(int exercise_completed) {
//		this.exercise_completed = exercise_completed;
//	}
//
//	public String getNotes() {
//		return notes;
//	}
//
//	public void setNotes(String notes) {
//		this.notes = notes;
//	}
//
//	public int getDuration() {
//		return duration;
//	}
//
//	public int getPlanID() {
//		return schedule.getplanid() ;
//	}
//	
//	public void setDuration(int duration) {
//		this.duration = duration;
//	}
//
//	public String getWorkout_time() {
//		return workout_time;
//	}
//
//	public void setWorkout_time(String workout_time) {
//		this.workout_time = workout_time;
//	}
//	
//	@Override
//	public String toString() {
//		return "ExerciseUserSchedule [planid=" + getPlanID() + ",exercise_type_id=" + schedule.getExercise_type_id() + ",day=" + schedule.getday() + ", name=" + schedule.getName() + ", classname=" + schedule.getclassName() + ", description=" +  schedule.getDescription() + ",user_id=" + user_id + ",schedule_id=" + getSchedule_id() + ",status=" + status + ",duration=" + duration + ", notes=" + notes + ", exercise_completed=" + exercise_completed + ", reps_completed="
//				+ reps_completed + "]";
//	}
//	
//	
//}
