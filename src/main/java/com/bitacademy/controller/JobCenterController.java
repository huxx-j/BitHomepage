package com.bitacademy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JobCenterController {

    @RequestMapping(value = "/employment/employment_jobCenter")
    public String employment_jobCenter(){
        return "/employment/employment_jobCenter";
    }

    @RequestMapping(value = "/job/WriteRecruit")
    public String WriteRecruit(){
        return "/job/WriteRecruit";
    }

    @RequestMapping(value = "/employment/employment_bitAdvantage")
    public String employment_bitAdvantage(){
        return "/employment/employment_bitAdvantage";
    }

    @RequestMapping(value = "/employment/employment_company")
    public String employment_company(){
        return "/employment/employment_company";
    }

    @RequestMapping(value = "/employment/employment_companyEmployment")
    public String employment_companyEmployment(){
        return "/employment/employment_companyEmployment";
    }
}
