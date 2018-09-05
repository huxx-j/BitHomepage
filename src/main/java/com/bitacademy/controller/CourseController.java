package com.bitacademy.controller;

import com.bitacademy.service.CourseService;
import com.bitacademy.vo.BP2Vo;
import com.bitacademy.vo.PamphletVo;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/course")
public class CourseController {
    @Autowired
    private CourseService courseService;

    public CourseController() {
    }

    ////////////////////////여기부터 자격증(/licence)//////////////////////////////////
    @RequestMapping(value = "/license/Course_License_Expert", method = RequestMethod.GET)
    public String Course_License_Expert() {
        return "course/license/Course_License_Expert";
    }

    @RequestMapping(value = "/license/Course_Licenses", method = RequestMethod.GET)
    public String Course_Licenses() {
        return "course/license/Course_Licenses";
    }

    @RequestMapping(value = "/license/CProgrammingMaster_Acceptance", method = RequestMethod.GET)
    public String CProgrammingMaster_Acceptance() {
        return "course/license/CProgrammingMaster_Acceptance";
    }

    @RequestMapping(value = "/license/JavaProgrammingMaster_Acceptance", method = RequestMethod.GET)
    public String JavaProgrammingMaster_Acceptance() {
        return "course/license/JavaProgrammingMaster_Acceptance";
    }

    @RequestMapping(value = "/license/CProgrammingMaster_Details", method = RequestMethod.GET)
    public String CProgrammingMaster_Details() {
        return "course/license/CProgrammingMaster_Details";
    }

    @RequestMapping(value = "/license/JavaProgrammingMaster_Details", method = RequestMethod.GET)
    public String JavaProgrammingMaster_Details() {
        return "course/license/JavaProgrammingMaster_Details";
    }


    //////////////////////////여기부터 전문가(/expert)/////////////////////////////////////
    @RequestMapping(value ="/expert/PopupIncludeMain", method = RequestMethod.GET)
    public String PopupIncludeMain(@RequestParam("BPnum") int BPnum) {
        return "course/expert/PopupIncludeMain";
    }

    @RequestMapping(value = "/expert/Course_Expert_JavaExpert", method = RequestMethod.GET)
    public String Course_Expert_JavaExpert() {
        return "course/expert/Course_Expert_JavaExpert";
    }

    @RequestMapping(value = "/expert/Course_Expert_Embedded", method = RequestMethod.GET)
    public String Course_Expert_Embedded() {
        return "course/expert/Course_Expert_Embedded";
    }



    //////////////////////////여기부터 기업맞춤교육(/employ)/////////////////////////////////////
    @RequestMapping({"/employ/Course_Employ"})
    public String Course_Employ() {
        return "course/employ/Course_Employ";
    }

    @RequestMapping(value = "/employ/Course_Employ_AurosTech", method = RequestMethod.GET)
    public String Course_Employ_AurosTech() {
        return "course/employ/Course_Employ_AurosTech";
    }

    @RequestMapping(value = "/employ/Course_Employ_BAinfra", method = RequestMethod.GET)
    public String Course_Employ_BAinfra() {
        return "course/employ/Course_Employ_BAinfra";
    }

    @RequestMapping(value = "/employ/Course_Employ_BitComputer", method = RequestMethod.GET)
    public String Course_Employ_BitComputer() {
        return "course/employ/Course_Employ_BitComputer";
    }

    @RequestMapping(value = "/employ/Course_Employ_BizTechPartners", method = RequestMethod.GET)
    public String Course_Employ_BizTechPartners() {
        return "course/employ/Course_Employ_BizTechPartners";
    }

    @RequestMapping(value = "/employ/Course_Employ_ITtelecom", method = RequestMethod.GET)
    public String Course_Employ_ITtelecom() {
        return "course/employ/Course_Employ_ITtelecom";
    }

    @RequestMapping(value = "/employ/Course_Employ_ivis", method = RequestMethod.GET)
    public String Course_Employ_ivis() {
        return "course/employ/Course_Employ_ivis";
    }

    @RequestMapping(value = "/employ/Course_Employ_PSK", method = RequestMethod.GET)
    public String Course_Employ_PSK() {
        return "course/employ/Course_Employ_PSK";
    }

    @RequestMapping(value = "/employ/Course_Employ_TaehaMechatronics", method = RequestMethod.GET)
    public String Course_Employ_TaehaMechatronics() {
        return "course/employ/Course_Employ_TaehaMechatronics";
    }


    //////////////////////////여기부터 국가기간(/kukka)/////////////////////////////////////
    @RequestMapping(value = "kukka/Course_Kukka_Introduction", method = RequestMethod.GET)
    public String Course_Kukka_Introduction() {
        return "course/kukka/Course_Kukka_Introduction";
    }

    @RequestMapping(value = "kukka/Course_Kukka_JavaBigData_2018", method = RequestMethod.GET)
    public String Course_Kukka_JavaBigData_2018() {
        return "course/kukka/Course_Kukka_JavaBigData_2018";
    }

    @RequestMapping(value = "kukka/Course_Kukka_RaspberryPiIoTService_2018", method = RequestMethod.GET)
    public String Course_Kukka_RaspberryPiIoTService_2018() {
        return "course/kukka/Course_Kukka_RaspberryPiIoTService_2018";
    }
    @RequestMapping(value = "kukka/Course_Support", method = RequestMethod.GET)
    public String Course_Support() {
    	System.out.println("국비지원 컨트롤러 옴");
        return "course/kukka/Course_Support";
    }
    

    @ResponseBody
    @RequestMapping(value = {"/ajax/getLocationInfo"},method = {RequestMethod.POST})
    public List<BP2Vo> getLocationInfo(@RequestParam("BPNum") int BPNum) {
        return this.courseService.getLocationInfo(BPNum);
    }

    @ResponseBody
    @RequestMapping(value = {"/ajax/getProjectInfo"},method = {RequestMethod.POST})
    public PamphletVo getProjectInfo(@RequestParam("termNum") int termNum, @RequestParam("groupNum") int groupNum) {
        return this.courseService.getProjectInfo(termNum, groupNum);
    }
    @RequestMapping(value = "/BITsupporters_2018", method = RequestMethod.GET)
    public String BITsupporters_2018() {
        return "course/BITsupporters_2018";
    }
    //////////////////////전문가 과정관련/////////////////////
    @RequestMapping(value = "/employ/Summary1_BizTechPartners", method = RequestMethod.GET)
    public String Summary1_BizTechPartners() {
        return "/course/employ/Summary1_BizTechPartners";
    }
    @RequestMapping(value = "/employ/Summary2_BizTechPartners", method = RequestMethod.GET)
    public String Summary2_BizTechPartners() {
        return "/course/employ/Summary2_BizTechPartners";
    }
    @RequestMapping(value = "/employ/Summary1_BitComputer", method = RequestMethod.GET)
    public String Summary1_BitComputer() {
        return "/course/employ/Summary1_BitComputer";
    }
    @RequestMapping(value = "/employ/Summary2_BitComputer", method = RequestMethod.GET)
    public String Summary2_BitComputer() {
        return "/course/employ/Summary2_BitComputer";
    }
    @RequestMapping(value = "/employ/Summary1_ITtelecom", method = RequestMethod.GET)
    public String Summary1_ITtelecom() {
        return "/course/employ/Summary1_ITtelecom";
    }
    @RequestMapping(value = "/employ/Summary2_ITtelecom", method = RequestMethod.GET)
    public String Summary2_ITtelecom() {
        return "/course/employ/Summary2_ITtelecom";
    }
    @RequestMapping(value = "/employ/Summary1_BAinfra", method = RequestMethod.GET)
    public String Summary1_BAinfra() {
        return "/course/employ/Summary1_BAinfra";
    }
    @RequestMapping(value = "/employ/Summary2_BAinfra", method = RequestMethod.GET)
    public String Summary2_BAinfra() {
        return "/course/employ/Summary2_BAinfra";
    }
    @RequestMapping(value = "/employ/Summary1_IVIS", method = RequestMethod.GET)
    public String Summary1_IVIS() {
        return "/course/employ/Summary1_IVIS";
    }
    @RequestMapping(value = "/employ/Summary2_IVIS", method = RequestMethod.GET)
    public String Summary2_IVIS() {
        return "/course/employ/Summary2_IVIS";
    }
    @RequestMapping(value = "/employ/Summary1_AurosTech", method = RequestMethod.GET)
    public String Summary1_AurosTech() {
        return "/course/employ/Summary1_AurosTech";
    }
    @RequestMapping(value = "/employ/Summary2_AurosTech", method = RequestMethod.GET)
    public String Summary2_AurosTech() {
        return "/course/employ/Summary2_AurosTech";
    }
    @RequestMapping(value = "/employ/Summary1_TaehaMechatronics", method = RequestMethod.GET)
    public String Summary1_TaehaMechatronics() {
        return "/course/employ/Summary1_TaehaMechatronics";
    }
    @RequestMapping(value = "/employ/Summary2_TaehaMechatronics", method = RequestMethod.GET)
    public String Summary2_TaehaMechatronics() {
        return "/course/employ/Summary2_TaehaMechatronics";
    }
    @RequestMapping(value = "/employ/Summary1_PSK", method = RequestMethod.GET)
    public String Summary1_PSK() {
        return "/course/employ/Summary1_PSK";
    }
    @RequestMapping(value = "/employ/Summary2_PSK", method = RequestMethod.GET)
    public String Summary2_PSK() {
        return "/course/employ/Summary2_PSK";
    }
    
}
