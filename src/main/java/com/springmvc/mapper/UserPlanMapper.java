package com.springmvc.mapper;
import com.springmvc.bean.EventsBean;
import com.springmvc.bean.UserPlanBean;
import com.springmvc.model.Events;
import com.springmvc.model.UserPlan;

public class UserPlanMapper {
	
	public static void createUserPlanBean(UserPlanBean bean, UserPlan userplan) {
		bean.setId(userplan.getId());
		bean.setUser_id(userplan.getUser_id());
		bean.setPlan_id(userplan.getPlan_id());
	}

}
