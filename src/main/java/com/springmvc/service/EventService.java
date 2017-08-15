package com.springmvc.service;

import java.util.List;

import com.springmvc.model.Events;
import com.springmvc.model.ExercisePlan;

public interface EventService {


	List<Events> findAllEvents(); 
		
}
