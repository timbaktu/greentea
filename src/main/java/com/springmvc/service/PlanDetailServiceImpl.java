package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.dao.ExercisePlanDao;
import com.springmvc.dao.ExercisePlanDetailDao;
import com.springmvc.dao.PlanDetailDao;
import com.springmvc.model.ExercisePlan;
import com.springmvc.model.ExercisePlanDetail;
import com.springmvc.model.PlanDetail;

@Service("plandetailService")
@Transactional
public class PlanDetailServiceImpl implements PlanDetailService {

	@Autowired
	private PlanDetailDao dao;


	public List<PlanDetail> findPlanDetail(int id) {
		return dao.findPlanDetail(id);
	}


	
}
