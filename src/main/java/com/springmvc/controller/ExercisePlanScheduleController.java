package com.springmvc.controller;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.springmvc.bean.ExercisePlanScheduleBean;
import com.springmvc.bean.ExerciseUserScheduleBean;
import com.springmvc.mapper.ExercisePlanScheduleMapper;
import com.springmvc.mapper.ExerciseUserScheduleMapper;
import com.springmvc.model.ExercisePlanSchedule;
import com.springmvc.model.ExerciseUserSchedule;
import com.springmvc.service.ExercisePlanScheduleService;
import com.springmvc.service.ExerciseUserScheduleService;

@RestController
@EnableWebMvc
public class ExercisePlanScheduleController {
	
	@Autowired
	ExercisePlanScheduleService service;
	
	@Autowired
	ExerciseUserScheduleService userservice;

    //-------------------Retrieve All Users--------------------------------------------------------
    @RequestMapping(value = "/exerciseplanschedule/{planid}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
      public ResponseEntity<List<ExercisePlanScheduleBean>>  listExercisePlanSchedule(@PathVariable("planid") int id) {
        List<ExercisePlanSchedule> exerciseplanschedules = service.findExercisePlanSchedule(id);
        List<ExercisePlanScheduleBean> exercisePlanScheduleBeans = new ArrayList<ExercisePlanScheduleBean>();        
        for(ExercisePlanSchedule exercisePlanSchedule : exerciseplanschedules) {
        	ExercisePlanScheduleBean exercisePlanScheduleBean = new ExercisePlanScheduleBean();
        	ExercisePlanScheduleMapper.createExercisePlanScheduleBean(exercisePlanScheduleBean, exercisePlanSchedule);
        	exercisePlanScheduleBeans.add(exercisePlanScheduleBean);
        }
        
        if(exercisePlanScheduleBeans.isEmpty()){
            return new ResponseEntity<List<ExercisePlanScheduleBean>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<ExercisePlanScheduleBean>>(exercisePlanScheduleBeans, HttpStatus.OK);
    }

  @RequestMapping(value = "/exerciseuserschedule/{user_id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
  public ResponseEntity<List<ExerciseUserScheduleBean>>  listExerciseUserSchedule(@PathVariable("user_id") int id) throws ParseException {
    List<ExerciseUserSchedule> exerciseuserschedules = userservice.findExerciseUserSchedule(id);
    List<ExerciseUserScheduleBean> exerciseUserScheduleBeans = new ArrayList<ExerciseUserScheduleBean>();        
    for(ExerciseUserSchedule exerciseUserSchedule : exerciseuserschedules) {
    	ExerciseUserScheduleBean exerciseUserScheduleBean = new ExerciseUserScheduleBean();
    	ExerciseUserScheduleMapper.createExerciseUserScheduleBean(exerciseUserScheduleBean, exerciseUserSchedule);
    	exerciseUserScheduleBeans.add(exerciseUserScheduleBean);
    }
    
    if(exerciseUserScheduleBeans.isEmpty()){
        return new ResponseEntity<List<ExerciseUserScheduleBean>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
    }
    return new ResponseEntity<List<ExerciseUserScheduleBean>>(exerciseUserScheduleBeans, HttpStatus.OK);
  }
}
