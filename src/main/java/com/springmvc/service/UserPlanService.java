package com.springmvc.service;

import java.util.List;

import com.springmvc.model.Events;
import com.springmvc.model.ExercisePlan;
import com.springmvc.model.UserPlan;

public interface UserPlanService {


	List<UserPlan> findUserPlan(int id); 
		
}
