package com.springmvc.service;

import java.util.List;

import com.springmvc.model.ExercisePlan;
import com.springmvc.model.ExercisePlanDetail;
import com.springmvc.model.PlanDetail;

public interface PlanDetailService {


	List<PlanDetail> findPlanDetail(int id); 
		
}
