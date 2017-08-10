package com.springmvc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.springmvc.model.ExercisePlan;

@Repository("exerciseplanDao")
public class ExercisePlanDaoImpl extends AbstractDao<Integer, ExercisePlan> implements ExercisePlanDao {


	@SuppressWarnings("unchecked")
	public List<ExercisePlan> findAllExercisePlan() {
		Criteria criteria = createEntityCriteria();
		return (List<ExercisePlan>) criteria.list();
	}

	
}
