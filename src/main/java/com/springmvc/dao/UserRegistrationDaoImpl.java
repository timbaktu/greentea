package com.springmvc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.springmvc.bean.UserRegistrationBean;
import com.springmvc.model.Events;
import com.springmvc.model.ExercisePlan;
import com.springmvc.model.User;
import com.springmvc.model.UserPlan;
import com.springmvc.model.UserRegistration;

@Repository("userregistrationDao")
public class UserRegistrationDaoImpl extends AbstractDao<Integer, UserRegistration> implements UserRegistrationDao {

	static final Logger logger = LoggerFactory.getLogger(UserRegistrationDaoImpl.class);


	@SuppressWarnings("unchecked")
	public List<UserRegistration> findUserRegistration(int id) {
		Criteria criteria = createEntityCriteria().add(Restrictions.eq("user_id", id));
		return (List<UserRegistration>) criteria.list();
	}

	@Override
	public void save(UserRegistration userregistration) {
		persist(userregistration);		
	}

	
}
