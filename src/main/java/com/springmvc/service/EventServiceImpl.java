package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.dao.EventDao;
import com.springmvc.dao.ExercisePlanDao;
import com.springmvc.model.Events;
import com.springmvc.model.ExercisePlan;

@Service("eventService")
@Transactional
public class EventServiceImpl implements EventService {

	@Autowired
	private EventDao dao;


	public List<Events> findAllEvents() {
		return dao.findAllEvents();
	}


	
}
