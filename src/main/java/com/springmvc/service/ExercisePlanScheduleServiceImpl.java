package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.dao.ExercisePlanDao;
import com.springmvc.dao.ExercisePlanDetailDao;
import com.springmvc.dao.ExercisePlanScheduleDao;
import com.springmvc.model.ExercisePlan;
import com.springmvc.model.ExercisePlanDetail;
import com.springmvc.model.ExercisePlanSchedule;

@Service("exerciseplanscheduleService")
@Transactional
public class ExercisePlanScheduleServiceImpl implements ExercisePlanScheduleService {

	@Autowired
	private ExercisePlanScheduleDao dao;


	public List<ExercisePlanSchedule> findExercisePlanSchedule(int id) {
		return dao.findExercisePlanSchedule(id);
	}


	
}
