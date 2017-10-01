package com.springmvc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.springmvc.model.ExercisePlan;
import com.springmvc.model.ExercisePlanDetail;
import com.springmvc.model.PlanDetail;

@Repository("plandetailDao")
public class PlanDetailDaoImpl extends AbstractDao<Integer, PlanDetail> implements PlanDetailDao {


	@SuppressWarnings("unchecked")
	public List<PlanDetail> findPlanDetail(int id) {
		Criteria criteria = createEntityCriteria().add(Restrictions.eq("plan_id", id));
		criteria.addOrder(Order.asc("day"));
		return (List<PlanDetail>) criteria.list();
	}

	
}
