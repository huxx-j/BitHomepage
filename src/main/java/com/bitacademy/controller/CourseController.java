package com.bitacademy.controller;

import com.bitacademy.service.CourseService;
import com.bitacademy.vo.BP2Vo;
import com.bitacademy.vo.PamphletVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping(value = "/course")
public class CourseController {

    @Autowired
    private CourseService courseService;

    @RequestMapping(value = "/shortcourse/refundInfo_01")
    public String refundInfo_01(){
        return "course/shortcourse/Course_shortCourse_refundInfo_01";
    }

    @RequestMapping(value = "/shortcourse/refundInfo_03")
    public String refundInfo_03(){
        return "course/shortcourse/Course_shortCourse_refundInfo_03";
    }

    @RequestMapping(value = "/license/Course_License_Expert")
    public String Course_License_Expert(){
        return "course/license/Course_License_Expert";
    }

    @RequestMapping(value = "/license/Course_Licenses")
    public String Course_Licenses(){
        return "course/license/Course_Licenses";
    }

    @RequestMapping(value = "/license/CProgrammingMaster_Acceptance")
    public String CProgrammingMaster_Acceptance(){
        return "course/license/CProgrammingMaster_Acceptance";
    }

    @RequestMapping(value = "/license/JavaProgrammingMaster_Acceptance")
    public String JavaProgrammingMaster_Acceptance(){
        return "course/license/JavaProgrammingMaster_Acceptance";
    }

    @RequestMapping(value = "/license/CProgrammingMaster_Details")
    public String CProgrammingMaster_Details(){
        return "course/license/CProgrammingMaster_Details";
    }

    @RequestMapping(value = "/license/JavaProgrammingMaster_Details")
    public String JavaProgrammingMaster_Details(){
        return "course/license/JavaProgrammingMaster_Details";
    }

    @RequestMapping(value = "/expert/PopupIncludeMain")
    public String PopupIncludeMain(@RequestParam("BPnum") int BPnum){
        return "course/expert/PopupIncludeMain";
    }

    @ResponseBody
    @RequestMapping(value = "/ajax/getLocationInfo", method = RequestMethod.POST)
    public List<BP2Vo> getLocationInfo(@RequestParam("BPNum") int BPNum) {
        return courseService.getLocationInfo(BPNum);
    }

    @ResponseBody
    @RequestMapping(value = "/ajax/getProjectInfo", method = RequestMethod.POST)
    public PamphletVo getProjectInfo(@RequestParam("termNum") int termNum, @RequestParam("groupNum") int groupNum) {
        return courseService.getProjectInfo(termNum, groupNum);
    }

}
