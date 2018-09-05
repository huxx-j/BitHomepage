package com.bitacademy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/course/localCampus")
public class CampusController {

    ///////////대전////////////////
    @RequestMapping(value ="/localCampus_Daejeon_introduction", method = RequestMethod.GET)
    public String localCampus_Daejeon_introduction(@RequestParam("beginwith")String beginwith,Model model) {
        System.out.println(beginwith);
    	model.addAttribute("beginwith",beginwith);
    	return "course/localCampus/localCampus_Daejeon_introduction";
    }

    @RequestMapping(value = "/DetailPage/Daejeon_windowNet", method = RequestMethod.GET)
    public String Daejeon_windowNet() {
        return "/course/localCampus/DetailPage/Daejeon_windowNet";
    }

    @RequestMapping(value = "/DetailPage/Daejeon_c", method = RequestMethod.GET)
    public String Daejeon_c() {
        return "/course/localCampus/DetailPage/Daejeon_c";
    }

    @RequestMapping(value = "/DetailPage/Daejeon_cPlus", method = RequestMethod.GET)
    public String Daejeon_cPlus() {
        return "/course/localCampus/DetailPage/Daejeon_cPlus";
    }

    @RequestMapping(value = "/DetailPage/Daejeon_java", method = RequestMethod.GET)
    public String Daejeon_java() {
        return "/course/localCampus/DetailPage/Daejeon_java";
    }

    ///////////부산////////////////
    @RequestMapping(value = "/localCampus_Busan_introduction", method = RequestMethod.GET)
    public String localCampus_Busan_introduction(@RequestParam("beginwith")String beginwith,Model model) {
        System.out.println(beginwith);
        model.addAttribute("beginwith",beginwith);
    	return "/course/localCampus/localCampus_Busan_introduction";
    }

    @RequestMapping(value ="/Busan_javaHigh", method = RequestMethod.GET)
    public String Busan_javaHigh() {
        return "/course/localCampus/DetailPage/Busan_javaHigh";
    }

    @RequestMapping(value ="/DetailPage/Busan_c", method = RequestMethod.GET)
    public String Busan_c() {
        return "/course/localCampus/DetailPage/Busan_c";
    }

    @RequestMapping(value = "/DetailPage/Busan_java", method = RequestMethod.GET)
    public String Busan_java() {
        return "/course/localCampus/DetailPage/Busan_java";
    }

    @RequestMapping(value = "/DetailPage/Busan_c2", method = RequestMethod.GET)
    public String Busan_c2() {
        return "/course/localCampus/DetailPage/Busan_c2";
    }
    /*@RequestMapping(value = "/module_Busan_Booklet", method = RequestMethod.GET)
    public String module_Busan_Booklet() {
        return "/course/localCampus/module_Busan_Booklet";
    }*/
    

    ///////////군포////////////////
    @RequestMapping(value = "/localCampus_Gunpo_introduction", method = RequestMethod.GET)
    public String localCampus_Gunpo_introduction(@RequestParam("beginwith")String beginwith,Model model) {
    	System.out.println(beginwith);
        model.addAttribute("beginwith",beginwith);
    	return "/course/localCampus/localCampus_Gunpo_introduction";
    }

    @RequestMapping(value = "/DetailPage/Gunpo_c", method = RequestMethod.GET)
    public String Gunpo_c() {
        return "/course/localCampus/DetailPage/Gunpo_c";
    }

    @RequestMapping(value = "/DetailPage/Gunpo_cPlus", method = RequestMethod.GET)
    public String Gunpo_cPlus() {
        return "/course/localCampus/DetailPage/Gunpo_cPlus";
    }

    @RequestMapping(value = "/DetailPage/Gunpo_c2", method = RequestMethod.GET)
    public String Gunpo_c2() {
        return "/course/localCampus/DetailPage/Gunpo_c2";
    }

    @RequestMapping(value = "/Gunpo_windowNet", method = RequestMethod.GET)
    public String Gunpo_windowNet() {
        return "/course/localCampus/DetailPage/Gunpo_windowNet";
    }

    ///////////김해////////////////
    @RequestMapping(value = "/localCampus_Gimhae_introduction", method = RequestMethod.GET)
    public String localCampus_Gimhae_introduction() {
        return "/course/localCampus/localCampus_Gimhae_introduction";
    }

    @RequestMapping(value = "/DetailPage/Gimhae_c", method = RequestMethod.GET)
    public String Gimhae_c() {
        return "/course/localCampus/DetailPage/Gimhae_c";
    }

    @RequestMapping(value = "/DetailPage/Gimhae_java", method = RequestMethod.GET)
    public String Gimhae_java() {
        return "/course/localCampus/DetailPage/Gimhae_java";
    }

    @RequestMapping(value = "/DetailPage/Gimhae_c2", method = RequestMethod.GET)
    public String Gimhae_c2() {
        return "/course/localCampus/DetailPage/Gimhae_c2";
    }

    
}
