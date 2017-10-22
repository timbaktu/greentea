package com.springmvc.mapper;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import com.springmvc.bean.ExerciseUserScheduleBean;
import com.springmvc.model.ExerciseUserSchedule;

public class ExerciseUserScheduleMapper {
	
	public static void createExerciseUserScheduleBean(ExerciseUserScheduleBean bean, ExerciseUserSchedule schedule) throws ParseException {
		bean.setUser_id(schedule.getUserplan().getUser_id());
		bean.setSchedule_id(schedule.getId());
		bean.setPlanid(schedule.getUserplan().getPlan_id());
		bean.setDay(schedule.getday());
		bean.setDescription(schedule.getDescription());
	    SimpleDateFormat formattedDate = new SimpleDateFormat("yyyy-MM-dd");            
	    Calendar c = Calendar.getInstance(); 	    
	    String dt = schedule.getUserplan().getStart_date().toString();  // Start date
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	    c.setTime(sdf.parse(dt));
	    c.add(Calendar.DATE, schedule.getday()-1);  // number of days to add
	    dt = sdf.format(c.getTime());  // dt is now the new date
		bean.setUrl("exercise-plan-details.html?id=" + schedule.getExercise_type_id());
		bean.setStartDate(dt);
		bean.setAllDay(true);
		bean.setTitle(schedule.getName());
		//bean.setEndDate("2017-09-10");
		bean.setClassName(schedule.getclassName());
		bean.setExercise_type_id(schedule.getExercise_type_id());
	}

}
