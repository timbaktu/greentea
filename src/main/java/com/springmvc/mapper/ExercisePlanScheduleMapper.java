package com.springmvc.mapper;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import com.springmvc.bean.ExercisePlanScheduleBean;
import com.springmvc.model.ExercisePlanSchedule;

public class ExercisePlanScheduleMapper {
	
	public static void createExercisePlanScheduleBean(ExercisePlanScheduleBean bean, ExercisePlanSchedule schedule) {
		bean.setId(schedule.getId());
		bean.setTitle(schedule.getName());
		bean.setDay(schedule.getday());
		bean.setDescription(schedule.getDescription());
		bean.setPlanid(schedule.getplanid());
	    SimpleDateFormat formattedDate = new SimpleDateFormat("yyyy-MM-dd");            
	    Calendar c = Calendar.getInstance();        
	    c.add(Calendar.DATE, schedule.getday());  // number of days to add      
	    String plandate = (String)(formattedDate.format(c.getTime()));
		bean.setUrl("exercise-plan-details.html?id=" + schedule.getExercise_type_id());
		bean.setStartDate(plandate);
		//bean.setEndDate("2017-09-10");
		// Setting as true to remove 12a text
		bean.setAllDay(true);
		bean.setClassName(schedule.getclassName());
		bean.setExercise_type_id(schedule.getExercise_type_id());
	}
	
	public static void createExercisePlanSchedule() {
		
	}

}
