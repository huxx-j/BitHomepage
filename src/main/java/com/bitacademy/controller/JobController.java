package com.bitacademy.controller;

import com.bitacademy.service.JobService;
import com.bitacademy.vo.InterviewVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping(value = "/job", method = RequestMethod.GET)
public class JobController {

    @Autowired
    private JobService jobService;

    @RequestMapping(value = "/WriteRecruit")
    public String WriteRecruit(){
        return "/job/WriteRecruit";
    }

    @RequestMapping(value = "/List", method=RequestMethod.GET )
    public String List(Model model){
        List<InterviewVo> list=jobService.selectList();
        model.addAttribute("list",list);
        return "/job/List";
    }

    @ResponseBody
    @RequestMapping(value = "/search", method = {RequestMethod.POST,RequestMethod.GET})
    public List<InterviewVo> delCate(@RequestParam("inputSearch") String inputSearch ){
        return jobService.search(inputSearch);
    }
    @ResponseBody
    @RequestMapping(value = "/selectList", method = {RequestMethod.POST,RequestMethod.GET})
    public List<InterviewVo> selectList(){
        return jobService.selectList();
    }

    @RequestMapping(value = "/Interview")
    public String Interview(){
        return "/job/Interview";
    }

}
