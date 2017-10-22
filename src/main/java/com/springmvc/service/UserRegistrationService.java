package com.springmvc.service;

import java.util.List;

import com.springmvc.bean.UserRegistrationBean;
import com.springmvc.model.Events;
import com.springmvc.model.ExercisePlan;
import com.springmvc.model.UserPlan;
import com.springmvc.model.UserRegistration;

public interface UserRegistrationService {


	List<UserRegistration> findUserRegistration(int id); 
	
	void saveUserRegistration(UserRegistration userregistration);
		
}
