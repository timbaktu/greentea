package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.dao.ExercisePlanDao;
import com.springmvc.dao.ExercisePlanDetailDao;
import com.springmvc.model.ExercisePlan;
import com.springmvc.model.ExercisePlanDetail;

@Service("exerciseplandetailService")
@Transactional
public class ExercisePlanDetailServiceImpl implements ExercisePlanDetailService {

	@Autowired
	private ExercisePlanDetailDao dao;


	public List<ExercisePlanDetail> findExerciePlanDetail(int id) {
		return dao.findExercisePlanDetail(id);
	}


	public List<ExercisePlanDetail> findNextExerice(int scheduleid, int id) {
		return dao.findNextExerice(scheduleid, id);
	}
	
}
