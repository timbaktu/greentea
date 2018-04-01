package com.springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.util.UriComponentsBuilder;

import com.springmvc.bean.ExercisePlanDetailBean;
import com.springmvc.bean.PlanDetailBean;
import com.springmvc.mapper.ExercisePlanDetailMapper;
import com.springmvc.mapper.PlanDetailMapper;
import com.springmvc.model.ExercisePlanDetail;
import com.springmvc.model.PlanDetail;
import com.springmvc.service.ExercisePlanDetailService;

@RestController
@EnableWebMvc
public class ExercisePlanDetailController {
	
	@Autowired
	ExercisePlanDetailService service;

    //-------------------Retrieve All Users--------------------------------------------------------
    @RequestMapping(value = "/exerciseplandetail/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
      public ResponseEntity<List<ExercisePlanDetailBean>>  listExercisePlanDetail(@PathVariable("id") int id) {
    	 List<ExercisePlanDetail> exerciseplandetails = service.findExerciePlanDetail(id);
         List<ExercisePlanDetailBean> exerciseplandetailsbean  = new ArrayList<ExercisePlanDetailBean>();
         
         for(ExercisePlanDetail exerciseplandetail : exerciseplandetails) {
         	ExercisePlanDetailBean exerciseplandetailbean = new ExercisePlanDetailBean();
         	ExercisePlanDetailMapper.createExercisePlanDetailBean(exerciseplandetailbean, exerciseplandetail);
         	exerciseplandetailsbean.add(exerciseplandetailbean);
         }
         
         
         if(exerciseplandetailsbean.isEmpty()){
             return new ResponseEntity<List<ExercisePlanDetailBean>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
         }
         return new ResponseEntity<List<ExercisePlanDetailBean>>(exerciseplandetailsbean, HttpStatus.OK);

}
    
    //---------------- Sending two entries. First entry will have current exercise details. Second entry having an id will be an indicator if this is last exercise for the day and display finish button.
    @RequestMapping(value = "/nextexercise/{schedule_id}/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<List<ExercisePlanDetailBean>>  listNextExercise(@PathVariable("schedule_id") int scheduleid,@PathVariable("id") int id) {
  	   
    	   List<ExercisePlanDetail> exerciseplandetails = service.findNextExerice(scheduleid,id);
       List<ExercisePlanDetailBean> exerciseplandetailsbean  = new ArrayList<ExercisePlanDetailBean>();
       Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
       String uname  = authentication.getPrincipal().toString();
       for(ExercisePlanDetail exerciseplandetail : exerciseplandetails) {
       	ExercisePlanDetailBean exerciseplandetailbean = new ExercisePlanDetailBean();
       	ExercisePlanDetailMapper.createExercisePlanDetailBean(exerciseplandetailbean, exerciseplandetail);
       	exerciseplandetailsbean.add(exerciseplandetailbean);
       }
       
       
       if(exerciseplandetailsbean.isEmpty()){
           return new ResponseEntity<List<ExercisePlanDetailBean>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
       }
       return new ResponseEntity<List<ExercisePlanDetailBean>>(exerciseplandetailsbean, HttpStatus.OK);

}
    
}
