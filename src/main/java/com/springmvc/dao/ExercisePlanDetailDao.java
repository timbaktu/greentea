package com.springmvc.dao;

import java.util.List;

import com.springmvc.model.ExercisePlan;
import com.springmvc.model.ExercisePlanDetail;

public interface ExercisePlanDetailDao {
	List<ExercisePlanDetail> findExercisePlanDetail(int id);

	
	List<ExercisePlanDetail> findNextExerice(int scheduleid, int id);
}
