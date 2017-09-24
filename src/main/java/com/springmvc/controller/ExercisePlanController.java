package com.springmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.util.UriComponentsBuilder;

import com.springmvc.model.ExercisePlan;
import com.springmvc.model.PlanDetail;
import com.springmvc.service.ExercisePlanService;
import com.springmvc.service.PlanDetailService;

@RestController
@EnableWebMvc
public class ExercisePlanController {
	
	@Autowired
	ExercisePlanService service;
	
    @Autowired
    PlanDetailService planservice;

    //-------------------Retrieve All Users--------------------------------------------------------
    @RequestMapping(value = "/exerciseplan/", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<List<ExercisePlan>> listAllExercisePlan() {
        List<ExercisePlan> exerciseplan = service.findAllExerciePlan();
        if(exerciseplan.isEmpty()){
            return new ResponseEntity<List<ExercisePlan>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<ExercisePlan>>(exerciseplan, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/exerciseplan/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<List<PlanDetail>>  listPlanDetail(@PathVariable("id") int id) {
      List<PlanDetail> plandetail = planservice.findPlanDetail(id);
      if(plandetail.isEmpty()){
          return new ResponseEntity<List<PlanDetail>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
      }
      return new ResponseEntity<List<PlanDetail>>(plandetail, HttpStatus.OK);
  }


}
