package com.springmvc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.springmvc.model.ExercisePlan;
import com.springmvc.model.ExercisePlanDetail;
import com.springmvc.model.ExercisePlanSchedule;
import com.springmvc.model.ExerciseUserSchedule;

@Repository("exerciseuserscheduleDao")
public class ExerciseUserScheduleDaoImpl extends AbstractDao<Integer, ExerciseUserSchedule> implements ExerciseUserScheduleDao {


	@SuppressWarnings("unchecked")
	public List<ExerciseUserSchedule> findExerciseUserSchedule(int id) {
		Criteria criteria = createEntityCriteria().add(Restrictions.eq("user_id", id));
		return (List<ExerciseUserSchedule>) criteria.list();
	}

	
}
