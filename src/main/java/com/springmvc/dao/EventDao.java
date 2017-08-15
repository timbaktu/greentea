package com.springmvc.dao;

import java.util.List;

import com.springmvc.model.Events;
import com.springmvc.model.ExercisePlan;

public interface EventDao {
	List<Events> findAllEvents();

	
}
