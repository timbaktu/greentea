package com.springmvc.dao;

import java.util.List;

import com.springmvc.model.Events;
import com.springmvc.model.ExercisePlan;
import com.springmvc.model.UserPlan;

public interface UserPlanDao {
	List<UserPlan> findUserPlan(int id);

	
}
