package com.springmvc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.hibernate.sql.JoinType;
import org.springframework.stereotype.Repository;

import com.springmvc.model.ExerciseUserSchedule;
import com.springmvc.model.UserPlan;

@Repository("exerciseuserscheduleDao")
public class ExerciseUserScheduleDaoImpl extends AbstractDao<Integer, ExerciseUserSchedule> implements ExerciseUserScheduleDao {


	@SuppressWarnings("unchecked")
	public List<ExerciseUserSchedule> findExerciseUserSchedule(int id) {
		Criteria criteria = createEntityCriteria();
		criteria.createAlias("userplan", "up");
		criteria.add(Restrictions.eq("up.user_id", id));
		return (List<ExerciseUserSchedule>) criteria.list();
	}

	
}
