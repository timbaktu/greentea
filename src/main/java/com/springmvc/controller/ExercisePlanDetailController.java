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
import com.springmvc.service.ExercisePlanDetailService;

@RestController
@EnableWebMvc
public class ExercisePlanDetailController {
	
	@Autowired
	ExercisePlanDetailService service;

    //-------------------Retrieve All Users--------------------------------------------------------
    @RequestMapping(value = "/exerciseplandetail/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
//    public ResponseEntity<List<ExercisePlanDetail>> listExercisePlanDetail() {
      public ResponseEntity<List<ExercisePlanDetail>>  listExercisePlanDetail(@PathVariable("id") int id) {
        List<ExercisePlanDetail> exerciseplandetail = service.findExerciePlanDetail(id);
        if(exerciseplandetail.isEmpty()){
            return new ResponseEntity<List<ExercisePlanDetail>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<ExercisePlanDetail>>(exerciseplandetail, HttpStatus.OK);
    }


}
