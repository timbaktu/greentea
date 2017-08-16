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

import com.springmvc.model.ExercisePlanDetail;
import com.springmvc.model.ExercisePlanSchedule;
import com.springmvc.service.ExercisePlanDetailService;
import com.springmvc.service.ExercisePlanScheduleService;

@RestController
@EnableWebMvc
public class ExercisePlanScheduleController {
	
	@Autowired
	ExercisePlanScheduleService service;

    //-------------------Retrieve All Users--------------------------------------------------------
    @RequestMapping(value = "/exerciseplanschedule/{planid}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
//    public ResponseEntity<List<ExercisePlanDetail>> listExercisePlanDetail() {
      public ResponseEntity<List<ExercisePlanSchedule>>  listExercisePlanSchedule(@PathVariable("planid") int id) {
        List<ExercisePlanSchedule> exerciseplanschedule = service.findExercisePlanSchedule(id);
        if(exerciseplanschedule.isEmpty()){
            return new ResponseEntity<List<ExercisePlanSchedule>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<ExercisePlanSchedule>>(exerciseplanschedule, HttpStatus.OK);
    }


}
