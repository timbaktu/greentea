package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.dao.ExercisePlanDao;
import com.springmvc.dao.ExercisePlanDetailDao;
import com.springmvc.dao.ExercisePlanScheduleDao;
import com.springmvc.dao.ExerciseUserScheduleDao;
import com.springmvc.model.ExercisePlan;
import com.springmvc.model.ExercisePlanDetail;
import com.springmvc.model.ExercisePlanSchedule;
import com.springmvc.model.ExerciseUserSchedule;

@Service("exerciseuserscheduleService")
@Transactional
public class ExerciseUserScheduleServiceImpl implements ExerciseUserScheduleService {

	@Autowired
	private ExerciseUserScheduleDao dao;


	public List<ExerciseUserSchedule> findExerciseUserSchedule(int id) {
		return dao.findExerciseUserSchedule(id);
	}


	
}
