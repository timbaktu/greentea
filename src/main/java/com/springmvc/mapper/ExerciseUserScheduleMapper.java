package com.springmvc.mapper;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import com.springmvc.bean.ExercisePlanScheduleBean;
import com.springmvc.bean.ExerciseUserScheduleBean;
import com.springmvc.model.ExercisePlanSchedule;
import com.springmvc.model.ExerciseUserSchedule;

public class ExerciseUserScheduleMapper {
	
	public static void createExerciseUserScheduleBean(ExerciseUserScheduleBean bean, ExerciseUserSchedule schedule) {
		bean.setUser_id(schedule.getUser_id());
		bean.setStatus(schedule.getStatus());
		bean.setSchedule_id(schedule.getId());
		bean.setExercise_completed(schedule.getExercise_completed());
		bean.setWorkout_time(schedule.getWorkout_time());
		bean.setNotes(schedule.getNotes());
		bean.setReps_completed(schedule.getReps_completed());
		bean.setDuration(schedule.getDuration());
		bean.setTitle(schedule.getExercise_user_schedule().getName());
		bean.setDay(schedule.getExercise_user_schedule().getday());
		bean.setDescription(schedule.getExercise_user_schedule().getDescription());
		bean.setPlanid(schedule.getExercise_user_schedule().getplanid());
	    SimpleDateFormat formattedDate = new SimpleDateFormat("yyyy-MM-dd");            
	    Calendar c = Calendar.getInstance();        
	    c.add(Calendar.DATE, schedule.getExercise_user_schedule().getday());  // number of days to add      
	    String plandate = (String)(formattedDate.format(c.getTime()));
		bean.setUrl("exercise-plan-details.html?id=" + schedule.getExercise_user_schedule().getExercise_type_id());
		bean.setStartDate(plandate);
		//bean.setEndDate("2017-09-10");
		bean.setClassName(schedule.getExercise_user_schedule().getclassName());
		bean.setExercise_type_id(schedule.getExercise_user_schedule().getExercise_type_id());
	}
	
	public static void createExerciseUserSchedule() {
		
	}

}
