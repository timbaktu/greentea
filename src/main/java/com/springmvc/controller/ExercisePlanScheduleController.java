package com.springmvc.controller;

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
import com.springmvc.mapper.ExercisePlanScheduleMapper;
import com.springmvc.model.ExercisePlanSchedule;
import com.springmvc.service.ExercisePlanScheduleService;

@RestController
@EnableWebMvc
public class ExercisePlanScheduleController {
	
	@Autowired
	ExercisePlanScheduleService service;

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


}
