package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.dao.ExercisePlanDao;
import com.springmvc.dao.ExercisePlanDetailDao;
import com.springmvc.dao.UserPlanDao;
import com.springmvc.model.ExercisePlan;
import com.springmvc.model.ExercisePlanDetail;
import com.springmvc.model.UserPlan;

@Service("userplanService")
@Transactional
public class UserPlanServiceImpl implements UserPlanService {

	@Autowired
	private UserPlanDao dao;


	public List<UserPlan> findUserPlan(int id) {
		return dao.findUserPlan(id);
	}


	
}
