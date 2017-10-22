package com.springmvc.dao;

import java.util.List;

import com.springmvc.bean.UserRegistrationBean;
import com.springmvc.model.Events;
import com.springmvc.model.ExercisePlan;
import com.springmvc.model.User;
import com.springmvc.model.UserPlan;
import com.springmvc.model.UserRegistration;

public interface UserRegistrationDao {
	List<UserRegistration> findUserRegistration(int id);

	void save(UserRegistration userregistration);

}
