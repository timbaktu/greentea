package com.springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.util.UriComponentsBuilder;

import com.springmvc.bean.PlanDetailBean;
import com.springmvc.bean.UserPlanBean;
import com.springmvc.mapper.PlanDetailMapper;
import com.springmvc.mapper.UserPlanMapper;
import com.springmvc.model.ExercisePlan;
import com.springmvc.model.PlanDetail;
import com.springmvc.model.User;
import com.springmvc.model.UserPlan;
import com.springmvc.service.ExercisePlanService;
import com.springmvc.service.PlanDetailService;
import com.springmvc.service.SelectUserPlanService;
import com.springmvc.service.UserPlanService;
import com.springmvc.service.UserService;

@RestController
@EnableWebMvc
public class ExercisePlanController {
	
	@Autowired
	ExercisePlanService service;
	
    @Autowired
    PlanDetailService planservice;

    @Autowired
    UserPlanService userplanservice;
    
	@Autowired
	SelectUserPlanService selectuserplanService;
    
    //-------------------Retrieve All Users--------------------------------------------------------
    @RequestMapping(value = "/exerciseplan/", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<List<ExercisePlan>> listAllExercisePlan() {
        List<ExercisePlan> exerciseplan = service.findAllExerciePlan();
        if(exerciseplan.isEmpty()){
            return new ResponseEntity<List<ExercisePlan>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<ExercisePlan>>(exerciseplan, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/plandetail/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<List<PlanDetailBean>> listPlanDetail(@PathVariable("id") int id) {
        List<PlanDetail> plandetails = planservice.findPlanDetail(id);
        List<PlanDetailBean> plandetailsbean  = new ArrayList<PlanDetailBean>();
        
        for(PlanDetail plandetail : plandetails) {
        	PlanDetailBean plandetailbean = new PlanDetailBean();
        	PlanDetailMapper.createPlanDetailBean(plandetailbean, plandetail);
        	plandetailsbean.add(plandetailbean);
        }
        
        
        if(plandetailsbean.isEmpty()){
            return new ResponseEntity<List<PlanDetailBean>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<PlanDetailBean>>(plandetailsbean, HttpStatus.OK);
    }

    @RequestMapping(value = "/userplan/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<List<UserPlanBean>> listUserPlanDetail(@PathVariable("id") int id) {
        List<UserPlan> userplandetails = userplanservice.findUserPlan(id);
        List<UserPlanBean> userplandetailsbean  = new ArrayList<UserPlanBean>();
        
        for(UserPlan userplandetail : userplandetails) {
        	UserPlanBean userplandetailbean = new UserPlanBean();
        UserPlanMapper.createUserPlanBean(userplandetailbean, userplandetail);
        	userplandetailsbean.add(userplandetailbean);
        }
        
        
        if(userplandetailsbean.isEmpty()){
            return new ResponseEntity<List<UserPlanBean>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<UserPlanBean>>(userplandetailsbean, HttpStatus.OK);
    }
    
	@RequestMapping(value = { "/selectuserplan" }, method = RequestMethod.POST)
	@ResponseBody
	public String selectuserplan(@RequestBody UserPlan userplan) {
		/*
		 * Preferred way to achieve uniqueness of field [sso] should be implementing custom @Unique annotation 
		 * and applying it on field [sso] of Model class [User].
		 * 
		 * Below mentioned peace of code [if block] is to demonstrate that you can fill custom errors outside the validation
		 * framework as well while still using internationalized messages.
		 * 
		 */
		
		selectuserplanService.saveUserPlan(userplan);
		return "registrationsuccess";
	}

}
