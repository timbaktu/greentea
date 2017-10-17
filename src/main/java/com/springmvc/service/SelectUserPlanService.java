package com.springmvc.service;

import java.util.List;

import com.springmvc.model.User;
import com.springmvc.model.UserPlan;


public interface SelectUserPlanService {
	
	void saveUserPlan(UserPlan userplan);
	
	void updateUser(UserPlan userplan);
	
	void deleteUser(UserPlan userplan);

}