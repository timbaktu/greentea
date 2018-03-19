package com.springmvc.service;

import java.util.List;

import com.springmvc.model.ExercisePlan;
import com.springmvc.model.ExercisePlanDetail;

public interface ExercisePlanDetailService {


	List<ExercisePlanDetail> findExerciePlanDetail(int id); 
	
	List<ExercisePlanDetail> findNextExerice(int scheduleid,int id); 
	
}
