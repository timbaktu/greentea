package com.springmvc.mapper;
import com.springmvc.bean.ExercisePlanDetailBean;
import com.springmvc.bean.PlanDetailBean;
import com.springmvc.model.ExercisePlanDetail;
import com.springmvc.model.PlanDetail;

public class ExercisePlanDetailMapper {
	
	public static void createExercisePlanDetailBean(ExercisePlanDetailBean bean, ExercisePlanDetail exerciseplandetail) {
		bean.setDescription(exerciseplandetail.getDescription());
		bean.setHow_to(exerciseplandetail.gethow_to());
		bean.setId(exerciseplandetail.getId());
		bean.setImg_name(exerciseplandetail.getimg_name());
		bean.setInterval(exerciseplandetail.getInterval());
		bean.setNo_of_sets(exerciseplandetail.getno_of_sets());
		bean.setNo_of_reps(exerciseplandetail.getno_of_reps());
		bean.setSchedule_id(exerciseplandetail.getSchedule_id());
		bean.setVideo_link(exerciseplandetail.getvideo_link());
		bean.setName(exerciseplandetail.getName());
	}

}
