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

    @RequestMapping(value="/employ/Course_Employ")
    public String Course_Employ(){return "course/employ/Course_Employ";}

    @RequestMapping(value="employ/Course_Employ_AurosTech")
    public String Course_Employ_AurosTech(){return "course/employ/Course_Employ_AurosTech";}

    @RequestMapping(value="employ/Course_Employ_BAinfra")
    public String Course_Employ_BAinfra(){return "course/employ/Course_Employ_BAinfra";}

    @RequestMapping(value="employ/Course_Employ_BitComputer")
    public String Course_Employ_BitComputer(){return "course/employ/Course_Employ_BitComputer";}

    @RequestMapping(value="employ/Course_Employ_BizTechPartners")
    public String Course_Employ_BizTechPartners(){return "course/employ/Course_Employ_BizTechPartners";}

    @RequestMapping(value="employ/Course_Employ_ITtelecom")
    public String Course_Employ_ITtelecom(){return "course/employ/Course_Employ_ITtelecom";}

    @RequestMapping(value="employ/Course_Employ_ivis")
    public String Course_Employ_ivis(){return "course/employ/Course_Employ_ivis";}

    @RequestMapping(value="employ/Course_Employ_PSK")
    public String Course_Employ_PSK(){return "course/employ/Course_Employ_PSK";}

    @RequestMapping(value="employ/Course_Employ_TaehaMechatronics")
    public String Course_Employ_TaehaMechatronics(){return "course/employ/Course_Employ_TaehaMechatronics";}

    @RequestMapping(value="kukka/Course_Kukka_Introduction")
    public String Course_Kukka_Introduction(){return "course/kukka/Course_Kukka_Introduction";}

    @RequestMapping(value="kukka/Course_Kukka_JavaBigData_2018")
    public String Course_Kukka_JavaBigData_2018(){return "course/kukka/Course_Kukka_JavaBigData_2018";}

    @RequestMapping(value="kukka/Course_Kukka_RaspberryPiIoTService_2018")
    public String Course_Kukka_RaspberryPiIoTService_2018(){return "course/kukka/Course_Kukka_RaspberryPiIoTService_2018";}

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
    @RequestMapping(value = "/BITsupporters_2018")
    public String BITsupporters_2018(){
        return "course/BITsupporters_2018";
    }

    @RequestMapping(value = "/shortcourse/detailpage/Course_Python")
    public String Course_Python(){
        return "course/shortcourse/detailpage/Course_Python";
    }

}
