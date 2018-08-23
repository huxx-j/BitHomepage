package com.bitacademy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JobController {

    @RequestMapping(value = "/job/WriteRecruit")
    public String WriteRecruit(){
        return "/job/WriteRecruit";
    }

    @RequestMapping(value = "/job/List")
    public String List(){
        return "/job/List";
    }

    @RequestMapping(value = "/job/Interview")
    public String Interview(){
        return "/job/Interview";
    }

}
