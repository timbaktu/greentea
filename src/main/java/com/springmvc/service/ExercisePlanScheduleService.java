package com.springmvc.service;

import java.util.List;

import com.springmvc.model.ExercisePlan;
import com.springmvc.model.ExercisePlanDetail;
import com.springmvc.model.ExercisePlanSchedule;

public interface ExercisePlanScheduleService {

	List<ExercisePlanSchedule> findExercisePlanSchedule(int id);		
}
