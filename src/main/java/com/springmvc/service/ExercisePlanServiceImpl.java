package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.dao.ExercisePlanDao;
import com.springmvc.model.ExercisePlan;

@Service("exerciseplanService")
@Transactional
public class ExercisePlanServiceImpl implements ExercisePlanService {

	@Autowired
	private ExercisePlanDao dao;


	public List<ExercisePlan> findAllExerciePlan() {
		return dao.findAllExercisePlan();
	}

	public List<ExercisePlan> findExercisePlan(int id) {
		return dao.findExercisePlan(id);
	}

	
}
