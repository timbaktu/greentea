package com.springmvc.mapper;
import com.springmvc.bean.PlanDetailBean;
import com.springmvc.model.PlanDetail;

public class PlanDetailMapper {
	
	public static void createPlanDetailBean(PlanDetailBean bean, PlanDetail plandetail) {
		bean.setDay(plandetail.getday());
		bean.setDescription(plandetail.getDescription());
		bean.setName(plandetail.getName());
		bean.setId(plandetail.getId());
		bean.setno_of_exercise(plandetail.getno_of_exercise());
		bean.setPlanid(plandetail.getplan_id());
		bean.setno_of_reps(plandetail.getno_of_reps());
	}

}
