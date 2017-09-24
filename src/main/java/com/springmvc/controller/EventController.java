package com.springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.springmvc.bean.EventsBean;
import com.springmvc.bean.ExercisePlanScheduleBean;
import com.springmvc.mapper.EventsMapper;
import com.springmvc.mapper.ExercisePlanScheduleMapper;
import com.springmvc.model.Events;
import com.springmvc.model.ExercisePlanSchedule;
import com.springmvc.service.EventService;

@RestController
@EnableWebMvc
public class EventController {
	
	@Autowired
	EventService service;

    //-------------------Retrieve All Events--------------------------------------------------------
    @RequestMapping(value = "/events/", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<List<EventsBean>> listAllEvents() {
        List<Events> events = service.findAllEvents();
        List<EventsBean> eventsbean  = new ArrayList<EventsBean>();
        
        for(Events event : events) {
        	EventsBean eventbean = new EventsBean();
        	EventsMapper.createEventsBean(eventbean, event);
        	eventsbean.add(eventbean);
        }
        
        
        if(eventsbean.isEmpty()){
            return new ResponseEntity<List<EventsBean>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<EventsBean>>(eventsbean, HttpStatus.OK);
    }


}
