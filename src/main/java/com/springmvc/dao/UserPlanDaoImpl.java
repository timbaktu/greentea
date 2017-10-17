package com.springmvc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.springmvc.model.Events;
import com.springmvc.model.ExercisePlan;
import com.springmvc.model.User;
import com.springmvc.model.UserPlan;

@Repository("userplanDao")
public class UserPlanDaoImpl extends AbstractDao<Integer, UserPlan> implements UserPlanDao {

	static final Logger logger = LoggerFactory.getLogger(UserPlanDaoImpl.class);


	@SuppressWarnings("unchecked")
	public List<UserPlan> findUserPlan(int id) {
		Criteria criteria = createEntityCriteria().add(Restrictions.eq("user_id", id));
		return (List<UserPlan>) criteria.list();
	}

	@Override
	public void save(UserPlan userplan) {
		persist(userplan);		
	}

	
}
