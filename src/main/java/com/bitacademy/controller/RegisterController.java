package com.bitacademy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value ="/register")
public class RegisterController {
	
	@RequestMapping(value = "/request/register_shortCourse_insertMMS", method = RequestMethod.GET)
    public String register_shortCourse_insertMMS() {
        
		return "register/request/register_shortCourse_insertMMS";
    }
	@RequestMapping(value = "/request/register_shortCourse", method = RequestMethod.GET)
    public String register_shortCourse() {
        
		return "register/request/register_shortCourse";
    }
}
