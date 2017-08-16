package com.springmvc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.springmvc.model.ExercisePlan;
import com.springmvc.model.ExercisePlanDetail;
import com.springmvc.model.ExercisePlanSchedule;

@Repository("exerciseplanscheduleDao")
public class ExercisePlanScheduleDaoImpl extends AbstractDao<Integer, ExercisePlanSchedule> implements ExercisePlanScheduleDao {


	@SuppressWarnings("unchecked")
	public List<ExercisePlanSchedule> findExercisePlanSchedule(int id) {
		Criteria criteria = createEntityCriteria().add(Restrictions.eq("planid", id));
		return (List<ExercisePlanSchedule>) criteria.list();
	}

	
}
