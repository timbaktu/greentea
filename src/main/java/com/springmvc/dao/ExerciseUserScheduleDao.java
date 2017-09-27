package com.springmvc.dao;

import java.util.List;

import com.springmvc.model.ExercisePlan;
import com.springmvc.model.ExercisePlanDetail;
import com.springmvc.model.ExercisePlanSchedule;
import com.springmvc.model.ExerciseUserSchedule;

public interface ExerciseUserScheduleDao {
	List<ExerciseUserSchedule> findExerciseUserSchedule(int id);

	
}
