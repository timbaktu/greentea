package com.springmvc.service;

import java.util.List;

import com.springmvc.model.ExercisePlan;

public interface ExercisePlanService {


	List<ExercisePlan> findAllExerciePlan();
	
	List<ExercisePlan> findExercisePlan(int id);	
}
