package com.bitacademy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/center", method = RequestMethod.GET)
public class CenterController {

    @RequestMapping(value = "/Center_info", method = RequestMethod.GET)
    public String Center_info(){
        return "center/Center_info";
    }

    @RequestMapping(value = "/Center_feature", method = RequestMethod.GET)
    public String Center_feature(){
        return "center/Center_feature";
    }

    @RequestMapping(value = "/Center_history", method = RequestMethod.GET)
    public String Center_history(){
        return "center/Center_history";
    }

    @RequestMapping(value = "/Center_gallery", method = RequestMethod.GET)
    public String Center_gallery(){
        return "center/Center_gallery";
    }

    @RequestMapping(value = "/location", method = RequestMethod.GET)
    public String location(){
        return "center/location";
    }
}
