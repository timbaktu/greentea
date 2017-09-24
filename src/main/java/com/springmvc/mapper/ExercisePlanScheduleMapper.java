package com.springmvc.mapper;

import com.springmvc.bean.ExercisePlanScheduleBean;
import com.springmvc.model.ExercisePlanSchedule;

public class ExercisePlanScheduleMapper {
	
	public static void createExercisePlanScheduleBean(ExercisePlanScheduleBean bean, ExercisePlanSchedule schedule) {
		bean.setId(schedule.getId());
		bean.setTitle(schedule.getName());
		bean.setDescription(schedule.getDescription());
		bean.setPlanid(schedule.getplanid());
		bean.setUrl("http://localhost:8080/GreenTea/exercise-plan-details.html?id=" + 1); // schedule.getExerciseTypeId
		bean.setStartDate("2017-09-07");
		//bean.setEndDate("2017-09-10");
		bean.setClassName("info");
	}
	
	public static void createExercisePlanSchedule() {
		
	}

}
