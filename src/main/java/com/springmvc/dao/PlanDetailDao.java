package com.springmvc.dao;

import java.util.List;

import com.springmvc.model.ExercisePlan;
import com.springmvc.model.ExercisePlanDetail;
import com.springmvc.model.PlanDetail;

public interface PlanDetailDao {
	List<PlanDetail> findPlanDetail(int id);

	
}
