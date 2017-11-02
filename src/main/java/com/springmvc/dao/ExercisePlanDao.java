package com.springmvc.dao;

import java.util.List;

import com.springmvc.model.ExercisePlan;

public interface ExercisePlanDao {
	List<ExercisePlan> findAllExercisePlan();

	List<ExercisePlan> findExercisePlan(int id);
	
}
