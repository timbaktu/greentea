package com.springmvc.mapper;
import com.springmvc.bean.EventsBean;
import com.springmvc.bean.UserPlanBean;
import com.springmvc.model.Events;
import com.springmvc.model.UserPlan;
import com.springmvc.util.DateTimeHelper;

public class UserPlanMapper {
	
	public static void createUserPlanBean(UserPlanBean bean, UserPlan userplan) {
		if(userplan != null) {
			bean.setId(userplan.getId());
			bean.setUser_id(userplan.getUser_id());
			bean.setPlan_id(userplan.getPlan_id());
		}
		else {
			bean.setId(0);
			bean.setUser_id(0);
			bean.setPlan_id(0);	
		}
	}
	
	public static void createUserPlan(UserPlanBean bean, UserPlan userplan) {
		if(userplan != null) {
			userplan.setPlan_id(bean.getPlan_id());
			userplan.setStart_date(DateTimeHelper.convertStringToDate(bean.getStart_date(), ""));
			userplan.setUser_id(bean.getUser_id());
		}
	}

}
