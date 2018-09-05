package com.bitacademy.controller;

import com.bitacademy.service.JobService;
import com.bitacademy.vo.InterviewVo;
import org.apache.ibatis.jdbc.Null;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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

    @RequestMapping(value = "/Interview_InputForm")
    public String Interview_InputForm(){
        return "/job/Interview_InputForm";
    }

    @RequestMapping(value = "/List", method=RequestMethod.GET )
    public String List(){
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
    public String Interview(@RequestParam("page") int page, Model model){
        List<InterviewVo> list=jobService.selectList();
        if(page ==0){
            page=1;
    }
        model.addAttribute("interMap", jobService.setpage(page));
        model.addAttribute("list",list);
        return "/job/Interview";
    }

    @ResponseBody
    @RequestMapping(value="/InterviewComplete",method = {RequestMethod.POST,RequestMethod.GET})
    public void InterviewComplete(@RequestBody InterviewVo interviewVo){
        jobService.insertinterview(interviewVo);
    }


    @ResponseBody
    @RequestMapping(value="/InterviewPopupInclude",method = {RequestMethod.POST,RequestMethod.GET})
    public InterviewVo selectNum(@RequestParam ("Num") int Num,Model model){
        model.addAttribute("vo,",jobService.selectNum(Num));
        return jobService.selectNum(Num);
    }

}
