package com.springmvc.mapper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.springmvc.bean.ExercisePlanDetailBean;
import com.springmvc.bean.PlanDetailBean;
import com.springmvc.model.ExercisePlanDetail;
import com.springmvc.model.PlanDetail;

public class ExercisePlanDetailMapper {
	
	public static void createExercisePlanDetailBean(ExercisePlanDetailBean bean, ExercisePlanDetail exerciseplandetail) {
		String desc = exerciseplandetail.getDescription();
	    String[] items = desc.split(";");
	    List<String> itemList = new ArrayList();
	    for (String s: items) {
	    itemList.add(s);
	    }
		bean.setDescription(itemList);
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
