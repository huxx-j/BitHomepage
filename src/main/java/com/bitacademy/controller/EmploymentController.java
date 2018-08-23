package com.bitacademy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/employment", method = RequestMethod.GET)
public class EmploymentController {

    @RequestMapping(value = "/employment_jobCenter", method = RequestMethod.GET)
    public String employment_jobCenter(){
        return "employment/employment_jobCenter";
    }

    @RequestMapping(value = "/employment_bitAdvantage", method = RequestMethod.GET)
    public String employment_bitAdvantage(){ return "employment/employment_bitAdvantage"; }

    @RequestMapping(value = "/employment_company", method = RequestMethod.GET)
    public String employment_company(){
        return "employment/employment_company";
    }

    @RequestMapping(value = "/employment_companyEmployment", method = RequestMethod.GET)
    public String employment_companyEmployment(){
        return "employment/employment_companyEmployment";
    }
}
