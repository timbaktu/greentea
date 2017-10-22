package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.bean.UserRegistrationBean;
import com.springmvc.dao.ExercisePlanDao;
import com.springmvc.dao.ExercisePlanDetailDao;
import com.springmvc.dao.UserPlanDao;
import com.springmvc.dao.UserRegistrationDao;
import com.springmvc.model.ExercisePlan;
import com.springmvc.model.ExercisePlanDetail;
import com.springmvc.model.UserPlan;
import com.springmvc.model.UserRegistration;

@Service("userregistrationService")
@Transactional
public class UserRegistrationServiceImpl implements UserRegistrationService {

	@Autowired
	private UserRegistrationDao dao;


	public List<UserRegistration> findUserRegistration(int id) {
		return dao.findUserRegistration(id);
	}
	
	public void saveUserRegistration(UserRegistration userregistration) {
		dao.save(userregistration);
	}



	
}
