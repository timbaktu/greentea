package com.springmvc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.springmvc.model.Events;
import com.springmvc.model.ExercisePlan;
import com.springmvc.model.UserPlan;

@Repository("userplanDao")
public class UserPlanDaoImpl extends AbstractDao<Integer, UserPlan> implements UserPlanDao {


	@SuppressWarnings("unchecked")
	public List<UserPlan> findUserPlan(int id) {
		Criteria criteria = createEntityCriteria().add(Restrictions.eq("user_id", id));
		return (List<UserPlan>) criteria.list();
	}

	
}
