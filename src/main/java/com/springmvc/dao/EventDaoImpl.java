package com.springmvc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.springmvc.model.Events;
import com.springmvc.model.ExercisePlan;

@Repository("eventDao")
public class EventDaoImpl extends AbstractDao<Integer, Events> implements EventDao {


	@SuppressWarnings("unchecked")
	public List<Events> findAllEvents() {
		Criteria criteria = createEntityCriteria();
		return (List<Events>) criteria.list();
	}

	
}
