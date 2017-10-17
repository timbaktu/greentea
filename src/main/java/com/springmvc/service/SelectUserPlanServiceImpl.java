package com.springmvc.service;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

import org.hibernate.mapping.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.dao.UserDao;
import com.springmvc.dao.UserPlanDao;
import com.springmvc.model.User;
import com.springmvc.model.UserPlan;
import com.springmvc.model.UserProfile;
import com.springmvc.model.UserProfileType;


@Service("selectuserplanService")
@Transactional
public class SelectUserPlanServiceImpl implements SelectUserPlanService{

	@Autowired
	private UserPlanDao dao;

	

	public void saveUserPlan(UserPlan userplan) {
		dao.save(userplan);
	}



	@Override
	public void updateUser(UserPlan userplan) {
		// TODO Auto-generated method stub
		
	}



	@Override
	public void deleteUser(UserPlan userplan) {
		// TODO Auto-generated method stub
		
	}
	
}
