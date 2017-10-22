package com.springmvc.controller;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.springmvc.model.User;
import com.springmvc.service.UserService;

@RestController
@EnableWebMvc
public class LoginController {
    
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/loggedinuser1/", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public Map<String, String> getLoggedInUser() {

		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			userName = ((UserDetails)principal).getUsername();
		} else {
			userName = principal.toString();
		}
    	
		User user = userService.findBySSO(userName);
        Map<String, String> map = new HashMap<>();
        if(user != null) {
            map.put("username", user.getSsoId());
            map.put("userId", user.getId()+"");
        }
        else {
            map.put("username", userName);
            map.put("userId", "0");     	
        }
        return map;
    }	
	
	@RequestMapping(value = "/user/{username}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public User getLoggedInUser(@PathVariable String username) {
    	
		User user = userService.findBySSO(username);
		return user;
    }
	
	@RequestMapping(value = { "/register" }, method = RequestMethod.POST)
	@ResponseBody
	public String saveUser(@RequestBody User user,BindingResult result) {
		/*
		 * Preferred way to achieve uniqueness of field [sso] should be implementing custom @Unique annotation 
		 * and applying it on field [sso] of Model class [User].
		 * 
		 * Below mentioned peace of code [if block] is to demonstrate that you can fill custom errors outside the validation
		 * framework as well while still using internationalized messages.
		 * 
		 */
		
		userService.saveUser(user);
		return "registrationsuccess";
	}

}
