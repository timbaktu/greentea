package com.springmvc.mapper;
import com.springmvc.bean.UserRegistrationBean;
import com.springmvc.model.UserRegistration;

public class UserRegistrationMapper {
	
	public static void createUserRegistrationBean(UserRegistrationBean bean, UserRegistration userregistration) {
		if(userregistration != null) {
			bean.setId(userregistration.getId());
			bean.setUser_id(userregistration.getUser_id());
			bean.setBirthdate(userregistration.getBirthdate());
			bean.setBmi(userregistration.getBmi());
			bean.setGender(userregistration.getGender());
			bean.setHeight(userregistration.getHeight());
			bean.setWeight(userregistration.getWeight());
		}
//		else {
//			bean.setId(0);
//			bean.setUser_id(0);
//			bean.setPlan_id(0);	
//		}
	}

}
