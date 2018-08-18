package com.bitacademy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/support")
public class SupportController {
    @RequestMapping(value = "/Support_etcRent")
    public String Support_etcRent(){
        return "support/Support_etcRent";
    }

    @RequestMapping(value = "/Support_certification")
    public String Support_certification(){
        return "support/Support_certification";
    }

    @RequestMapping(value = "/Support_instructor")
    public String Support_instructor(){
        return "support/Support_instructor";
    }
}
