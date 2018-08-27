
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
@RequestMapping({"/course"})
public class CourseController {
    @Autowired
    private CourseService courseService;

    public CourseController() {
    }

    @RequestMapping({"/shortcourse/refundInfo_01"})
    public String refundInfo_01() {
        return "course/shortcourse/Course_shortCourse_refundInfo_01";
    }

    @RequestMapping({"/shortcourse/refundInfo_03"})
    public String refundInfo_03() {
        return "course/shortcourse/Course_shortCourse_refundInfo_03";
    }

    @RequestMapping({"/license/Course_License_Expert"})
    public String Course_License_Expert() {
        return "course/license/Course_License_Expert";
    }

    @RequestMapping({"/license/Course_Licenses"})
    public String Course_Licenses() {
        return "course/license/Course_Licenses";
    }

    @RequestMapping({"/license/CProgrammingMaster_Acceptance"})
    public String CProgrammingMaster_Acceptance() {
        return "course/license/CProgrammingMaster_Acceptance";
    }

    @RequestMapping({"/license/JavaProgrammingMaster_Acceptance"})
    public String JavaProgrammingMaster_Acceptance() {
        return "course/license/JavaProgrammingMaster_Acceptance";
    }

    @RequestMapping({"/license/CProgrammingMaster_Details"})
    public String CProgrammingMaster_Details() {
        return "course/license/CProgrammingMaster_Details";
    }

    @RequestMapping({"/license/JavaProgrammingMaster_Details"})
    public String JavaProgrammingMaster_Details() {
        return "course/license/JavaProgrammingMaster_Details";
    }

    @RequestMapping({"/expert/PopupIncludeMain"})
    public String PopupIncludeMain(@RequestParam("BPnum") int BPnum) {
        return "course/expert/PopupIncludeMain";
    }

    @RequestMapping({"/expert/Course_Expert_JavaExpert"})
    public String Course_Expert_JavaExpert() {
        return "course/expert/Course_Expert_JavaExpert";
    }

    @RequestMapping({"/expert/Course_Expert_Embedded"})
    public String Course_Expert_Embedded() {
        return "course/expert/Course_Expert_Embedded";
    }

    @RequestMapping({"/localCampus/localCampus_Daejeon_introduction"})
    public String localCampus_Daejeon_introduction() {
        return "course/localCampus/localCampus_Daejeon_introduction";
    }

    @RequestMapping({"/localCampus/DetailPage/Daejeon_windowNet"})
    public String Daejeon_windowNet() {
        return "/course/localCampus/DetailPage/Daejeon_windowNet";
    }

    @RequestMapping({"/localCampus/Daejeon_c"})
    public String Daejeon_c() {
        return "/course/localCampus/DetailPage/Daejeon_c";
    }

    @RequestMapping({"/localCampus/Daejeon_cPlus"})
    public String Daejeon_cPlus() {
        return "/course/localCampus/DetailPage/Daejeon_cPlus";
    }

    @RequestMapping({"/localCampus/Daejeon_java"})
    public String Daejeon_java() {
        return "/course/localCampus/DetailPage/Daejeon_java";
    }

    @RequestMapping({"/localCampus/localCampus_Busan_introduction"})
    public String localCampus_Busan_introduction() {
        return "/course/localCampus/localCampus_Busan_introduction";
    }

    @RequestMapping({"/localCampus/Busan_javaHigh"})
    public String Busan_javaHigh() {
        return "/course/localCampus/DetailPage/Busan_javaHigh";
    }

    @RequestMapping({"/localCampus/Busan_c"})
    public String Busan_c() {
        return "/course/localCampus/DetailPage/Busan_c";
    }

    @RequestMapping({"/localCampus/Busan_java"})
    public String Busan_java() {
        return "/course/localCampus/DetailPage/Busan_java";
    }

    @RequestMapping({"/localCampus/Busan_c2"})
    public String Busan_c2() {
        return "/course/localCampus/DetailPage/Busan_c2";
    }

    @RequestMapping({"/localCampus/localCampus_Gunpo_introduction"})
    public String localCampus_Gunpo_introduction() {
        return "/course/localCampus/localCampus_Gunpo_introduction";
    }

    @RequestMapping({"/localCampus/Gunpo_c"})
    public String Gunpo_c() {
        return "/course/localCampus/DetailPage/Gunpo_c";
    }

    @RequestMapping({"/localCampus/Gunpo_cPlus"})
    public String Gunpo_cPlus() {
        return "/course/localCampus/DetailPage/Gunpo_cPlus";
    }

    @RequestMapping({"/localCampus/Gunpo_c2"})
    public String Gunpo_c2() {
        return "/course/localCampus/DetailPage/Gunpo_c2";
    }

    @RequestMapping({"/localCampus/Gunpo_windowNet"})
    public String Gunpo_windowNet() {
        return "/course/localCampus/DetailPage/Gunpo_windowNet";
    }

    @RequestMapping({"/localCampus/localCampus_Gimhae_introduction"})
    public String localCampus_Gimhae_introduction() {
        return "/course/localCampus/localCampus_Gimhae_introduction";
    }

    @RequestMapping({"/localCampus/Gimhae_c"})
    public String Gimhae_c() {
        return "/course/localCampus/DetailPage/Gimhae_c";
    }

    @RequestMapping({"/localCampus/Gimhae_java"})
    public String Gimhae_java() {
        return "/course/localCampus/DetailPage/Gimhae_java";
    }

    @RequestMapping({"/localCampus/Gimhae_c2"})
    public String Gimhae_c2() {
        return "/course/localCampus/DetailPage/Gimhae_c2";
    }

    @RequestMapping({"/shortCourse/detailPage/Course_C_Weekend"})
    public String Course_C_Weekend() {
        return "course/shortcourse/detailPage/Course_C_Weekend";
    }

    @RequestMapping({"/shortCourse/detailPage/Course_Java_Weekend"})
    public String Course_Java_Weekend() {
        return "/course/shortcourse/detailPage/Course_Java_Weekend";
    }

    @RequestMapping({"/shortCourse/detailPage/Course_cPlus_Weekend"})
    public String Course_cPlus_Weekend() {
        return "/course/shortcourse/detailPage/Course_cPlus_Weekend";
    }

    @RequestMapping({"/shortCourse/detailPage/Course_Python_Weekend"})
    public String Course_Python_Weekend() {
        return "/course/shortcourse/detailPage/Course_Python_Weekend";
    }

    @RequestMapping({"/shortCourse/detailPage/Course_cSharp"})
    public String Course_cSharp() {
        return "/course/shortcourse/detailPage/Course_cSharp";
    }

    @RequestMapping({"/shortCourse/detailPage/Course_Go"})
    public String Course_Go() {
        return "/course/shortcourse/detailPage/Course_Go";
    }

    @RequestMapping({"/shortCourse/detailPage/Course_SelfLearning"})
    public String Course_SelfLearning() {
        return "/course/shortcourse/detailPage/Course_SelfLearning";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_DSCIENCE_AnalysisMachineLearning2"})
    public String Course_DSCIENCE_AnalysisMachineLearning2() {
        return "/course/shortcourse/detailPage/Course_DSCIENCE_AnalysisMachineLearning2";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_DSCIENCE_ExcelMachineLearning"})
    public String Course_DSCIENCE_ExcelMachineLearning() {
        return "/course/shortcourse/detailPage/Course_DSCIENCE_ExcelMachineLearning";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_AWSCloudWeb2"})
    public String Course_AWSCloudWeb2() {
        return "/course/shortcourse/detailPage/Course_AWSCloudWeb2";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_Blockchain_HyperConnected"})
    public String Course_Blockchain_HyperConnected2() {
        return "/course/shortcourse/detailPage/Course_Blockchain_HyperConnected";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_servletJsp"})
    public String Course_servletJsp() {
        return "/course/shortcourse/detailPage/Course_servletJsp";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_Java"})
    public String Course_Java() {
        return "/course/shortcourse/detailPage/Course_Java";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_spring"})
    public String Course_spring() {
        return "course/shortcourse/detailPage/Course_spring";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_aiojava"})
    public String Course_aiojava() {
        return "/course/shortcourse/detailPage/Course_aiojava";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_HTML5"})
    public String Course_HTML5() {
        return "/course/shortcourse/detailPage/Course_HTML5";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_JavaScript"})
    public String Course_JavaScript() {
        return "/course/shortcourse/detailPage/Course_JavaScript";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_WebPublishing"})
    public String Course_WebPublishing() {
        return "/course/shortcourse/detailPage/Course_WebPublishing";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_Nodejs"})
    public String Course_Nodejs() {
        return "/course/shortcourse/detailPage/Course_Nodejs";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_SearchEngine"})
    public String Course_SearchEngine() {
        return "/course/shortcourse/detailPage/Course_SearchEngine";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_dataBaseModeling"})
    public String Course_dataBaseModeling() {
        return "/course/shortcourse/detailPage/Course_dataBaseModeling";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_dataBase"})
    public String Course_dataBase() {
        return "/course/shortcourse/detailPage/Course_dataBase";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_springData"})
    public String Course_springData() {
        return "/course/shortcourse/detailPage/Course_springData";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_sqlJdbc"})
    public String Course_sqlJdbc() {
        return "/course/shortcourse/detailPage/Course_sqlJdbc";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_Agile4Developer"})
    public String Course_Agile4Developer() {
        return "/course/shortcourse/detailPage/Course_Agile4Developer";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_ArchitectureBasic"})
    public String Course_ArchitectureBasic() {
        return "/course/shortcourse/detailPage/Course_ArchitectureBasic";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_ITIL"})
    public String Course_ITIL() {
        return "/course/shortcourse/detailPage/Course_ITIL";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_Android"})
    public String Course_Android() {
        return "/course/shortcourse/detailPage/Course_Android";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_javaPlan"})
    public String Course_javaPlan() {
        return "/course/shortcourse/detailPage/Course_javaPlan";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_realUml"})
    public String Course_realUml() {
        return "/course/shortcourse/detailPage/Course_realUml";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_uml"})
    public String Course_uml() {
        return "/course/shortcourse/detailPage/Course_uml";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_designPattern"})
    public String Course_designPattern() {
        return "/course/shortcourse/detailPage/Course_designPattern";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_codingTuning"})
    public String Course_codingTuning() {
        return "/course/shortcourse/detailPage/Course_codingTuning";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_OptimizationAlgorithms"})
    public String Course_OptimizationAlgorithms() {
        return "/course/shortcourse/detailPage/Course_OptimizationAlgorithms";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_RaspberryPi"})
    public String Course_RaspberryPi() {
        return "/course/shortcourse/detailPage/Course_RaspberryPi";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_StorageSystem_FMBased"})
    public String Course_StorageSystem_FMBased() {
        return "/course/shortcourse/detailPage/Course_StorageSystem_FMBased";
    }

    @RequestMapping({"/shortcourse/detailPage/Course_c"})
    public String Course_c() {
        return "/course/shortcourse/detailPage/Course_c";
    }

    @RequestMapping({"/shortcourse/Course_ShortCourse"})
    public String Course_ShortCourse() {
        return "/course/shortcourse/Course_ShortCourse";
    }
    @RequestMapping({"/employ/Course_Employ"})
    public String Course_Employ() {
        return "course/employ/Course_Employ";
    }

    @RequestMapping({"employ/Course_Employ_AurosTech"})
    public String Course_Employ_AurosTech() {
        return "course/employ/Course_Employ_AurosTech";
    }

    @RequestMapping({"employ/Course_Employ_BAinfra"})
    public String Course_Employ_BAinfra() {
        return "course/employ/Course_Employ_BAinfra";
    }

    @RequestMapping({"employ/Course_Employ_BitComputer"})
    public String Course_Employ_BitComputer() {
        return "course/employ/Course_Employ_BitComputer";
    }

    @RequestMapping({"employ/Course_Employ_BizTechPartners"})
    public String Course_Employ_BizTechPartners() {
        return "course/employ/Course_Employ_BizTechPartners";
    }

    @RequestMapping({"employ/Course_Employ_ITtelecom"})
    public String Course_Employ_ITtelecom() {
        return "course/employ/Course_Employ_ITtelecom";
    }

    @RequestMapping({"employ/Course_Employ_ivis"})
    public String Course_Employ_ivis() {
        return "course/employ/Course_Employ_ivis";
    }

    @RequestMapping({"employ/Course_Employ_PSK"})
    public String Course_Employ_PSK() {
        return "course/employ/Course_Employ_PSK";
    }

    @RequestMapping({"employ/Course_Employ_TaehaMechatronics"})
    public String Course_Employ_TaehaMechatronics() {
        return "course/employ/Course_Employ_TaehaMechatronics";
    }

    @RequestMapping({"kukka/Course_Kukka_Introduction"})
    public String Course_Kukka_Introduction() {
        return "course/kukka/Course_Kukka_Introduction";
    }

    @RequestMapping({"kukka/Course_Kukka_JavaBigData_2018"})
    public String Course_Kukka_JavaBigData_2018() {
        return "course/kukka/Course_Kukka_JavaBigData_2018";
    }

    @RequestMapping({"kukka/Course_Kukka_RaspberryPiIoTService_2018"})
    public String Course_Kukka_RaspberryPiIoTService_2018() {
        return "course/kukka/Course_Kukka_RaspberryPiIoTService_2018";
    }

    @ResponseBody
    @RequestMapping(
            value = {"/ajax/getLocationInfo"},
            method = {RequestMethod.POST}
    )
    public List<BP2Vo> getLocationInfo(@RequestParam("BPNum") int BPNum) {
        return this.courseService.getLocationInfo(BPNum);
    }

    @ResponseBody
    @RequestMapping(
            value = {"/ajax/getProjectInfo"},
            method = {RequestMethod.POST}
    )
    public PamphletVo getProjectInfo(@RequestParam("termNum") int termNum, @RequestParam("groupNum") int groupNum) {
        return this.courseService.getProjectInfo(termNum, groupNum);
    }

    @RequestMapping({"/BITsupporters_2018"})
    public String BITsupporters_2018() {
        return "course/BITsupporters_2018";
    }

    @RequestMapping({"/shortcourse/detailpage/Course_Python"})
    public String Course_Python() {
        return "course/shortcourse/detailpage/Course_Python";
    }
}
