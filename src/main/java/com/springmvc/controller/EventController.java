package com.springmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import com.springmvc.model.Events;
import com.springmvc.service.EventService;

@RestController
@EnableWebMvc
public class EventController {
	
	@Autowired
	EventService service;

    //-------------------Retrieve All Users--------------------------------------------------------
    @RequestMapping(value = "/events/", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<List<Events>> listAllEvents() {
        List<Events> events = service.findAllEvents();
        if(events.isEmpty()){
            return new ResponseEntity<List<Events>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<Events>>(events, HttpStatus.OK);
    }


}
