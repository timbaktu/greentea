package com.springmvc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.springmvc.model.ExercisePlan;
import com.springmvc.model.ExercisePlanDetail;

@Repository("exerciseplandetailDao")
public class ExercisePlanDetailDaoImpl extends AbstractDao<Integer, ExercisePlanDetail> implements ExercisePlanDetailDao {


	@SuppressWarnings("unchecked")
	public List<ExercisePlanDetail> findExercisePlanDetail(int id) {
		Criteria criteria = createEntityCriteria().add(Restrictions.eq("schedule_id", id));
		return (List<ExercisePlanDetail>) criteria.list();
	}

	public void savedetail(ExercisePlanDetail ed) {
	
		persist(ed);	
	}
	
	@SuppressWarnings("unchecked")
	public List<ExercisePlanDetail> findNextExerice(int scheduleid, int id) {
		Criteria criteria = createEntityCriteria().add(Restrictions.gt("id", id-1));
		criteria.add(Restrictions.eq("schedule_id", scheduleid));
		criteria.setMaxResults(2);
		return (List<ExercisePlanDetail>) criteria.list();

		

	}
	
}
