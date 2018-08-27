
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
    @RequestMapping(value = "/shortcourse/refundInfo_01", method = RequestMethod.GET)
    public String refundInfo_01() {
        return "course/shortcourse/Course_shortCourse_refundInfo_01";
    }
    @RequestMapping(value = "/shortcourse/refundInfo_03", method = RequestMethod.GET)
    public String refundInfo_03() {
        return "course/shortcourse/Course_shortCourse_refundInfo_03";
    }
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
    @RequestMapping(value ="/localCampus/localCampus_Daejeon_introduction", method = RequestMethod.GET)
    public String localCampus_Daejeon_introduction() {
        return "course/localCampus/localCampus_Daejeon_introduction";
    }
    @RequestMapping(value = "/localCampus/DetailPage/Daejeon_windowNet", method = RequestMethod.GET)
    public String Daejeon_windowNet() {
        return "/course/localCampus/DetailPage/Daejeon_windowNet";
    }
    @RequestMapping(value = "/localCampus/Daejeon_c", method = RequestMethod.GET)
    public String Daejeon_c() {
        return "/course/localCampus/DetailPage/Daejeon_c";
    }
    @RequestMapping(value = "/localCampus/Daejeon_cPlus", method = RequestMethod.GET)
    public String Daejeon_cPlus() {
        return "/course/localCampus/DetailPage/Daejeon_cPlus";
    }
    @RequestMapping(value = "/localCampus/Daejeon_java", method = RequestMethod.GET)
    public String Daejeon_java() {
        return "/course/localCampus/DetailPage/Daejeon_java";
    }
    @RequestMapping(value = "/localCampus/localCampus_Busan_introduction", method = RequestMethod.GET)
    public String localCampus_Busan_introduction() {
        return "/course/localCampus/localCampus_Busan_introduction";
    }
    @RequestMapping(value ="/localCampus/Busan_javaHigh", method = RequestMethod.GET)
    public String Busan_javaHigh() {
        return "/course/localCampus/DetailPage/Busan_javaHigh";
    }
    @RequestMapping(value ="/localCampus/Busan_c", method = RequestMethod.GET)
    public String Busan_c() {
        return "/course/localCampus/DetailPage/Busan_c";
    }
    @RequestMapping(value = "/localCampus/Busan_java", method = RequestMethod.GET)
    public String Busan_java() {
        return "/course/localCampus/DetailPage/Busan_java";
    }
    @RequestMapping(value = "/localCampus/Busan_c2", method = RequestMethod.GET)
    public String Busan_c2() {
        return "/course/localCampus/DetailPage/Busan_c2";
    }
    @RequestMapping(value = "/localCampus/localCampus_Gunpo_introduction", method = RequestMethod.GET)
    public String localCampus_Gunpo_introduction() {
        return "/course/localCampus/localCampus_Gunpo_introduction";
    }
    @RequestMapping(value = "/localCampus/Gunpo_c", method = RequestMethod.GET)
    public String Gunpo_c() {
        return "/course/localCampus/DetailPage/Gunpo_c";
    }
    @RequestMapping(value = "/localCampus/Gunpo_cPlus", method = RequestMethod.GET)
    public String Gunpo_cPlus() {
        return "/course/localCampus/DetailPage/Gunpo_cPlus";
    }
    @RequestMapping(value = "/localCampus/Gunpo_c2", method = RequestMethod.GET)
    public String Gunpo_c2() {
        return "/course/localCampus/DetailPage/Gunpo_c2";
    }
    @RequestMapping(value = "/localCampus/Gunpo_windowNet", method = RequestMethod.GET)
    public String Gunpo_windowNet() {
        return "/course/localCampus/DetailPage/Gunpo_windowNet";
    }
    @RequestMapping(value = "/localCampus/localCampus_Gimhae_introduction", method = RequestMethod.GET)
    public String localCampus_Gimhae_introduction() {
        return "/course/localCampus/localCampus_Gimhae_introduction";
    }
    @RequestMapping(value = "/localCampus/Gimhae_c", method = RequestMethod.GET)
    public String Gimhae_c() {
        return "/course/localCampus/DetailPage/Gimhae_c";
    }
    @RequestMapping(value = "/localCampus/Gimhae_java", method = RequestMethod.GET)
    public String Gimhae_java() {
        return "/course/localCampus/DetailPage/Gimhae_java";
    }
    @RequestMapping(value = "/localCampus/Gimhae_c2", method = RequestMethod.GET)
    public String Gimhae_c2() {
        return "/course/localCampus/DetailPage/Gimhae_c2";
    }
    @RequestMapping(value = "/shortCourse/detailPage/Course_C_Weekend", method = RequestMethod.GET)
    public String Course_C_Weekend() {
        return "course/shortcourse/detailPage/Course_C_Weekend";
    }
    @RequestMapping(value = "/shortCourse/detailPage/Course_Java_Weekend", method = RequestMethod.GET)
    public String Course_Java_Weekend() {
        return "/course/shortcourse/detailPage/Course_Java_Weekend";
    }
    @RequestMapping(value = "/shortCourse/detailPage/Course_cPlus_Weekend", method = RequestMethod.GET)
    public String Course_cPlus_Weekend() {
        return "/course/shortcourse/detailPage/Course_cPlus_Weekend";
    }
    @RequestMapping(value = "/shortCourse/detailPage/Course_Python_Weekend", method = RequestMethod.GET)
    public String Course_Python_Weekend() {
        return "/course/shortcourse/detailPage/Course_Python_Weekend";
    }
    @RequestMapping(value = "/shortCourse/detailPage/Course_cSharp", method = RequestMethod.GET)
    public String Course_cSharp() {
        return "/course/shortcourse/detailPage/Course_cSharp";
    }
    @RequestMapping(value = "/shortCourse/detailPage/Course_Go", method = RequestMethod.GET)
    public String Course_Go() {
        return "/course/shortcourse/detailPage/Course_Go";
    }
    @RequestMapping(value = "/shortCourse/detailPage/Course_SelfLearning", method = RequestMethod.GET)
    public String Course_SelfLearning() {
        return "/course/shortcourse/detailPage/Course_SelfLearning";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_DSCIENCE_AnalysisMachineLearning2", method = RequestMethod.GET)
    public String Course_DSCIENCE_AnalysisMachineLearning2() {
        return "/course/shortcourse/detailPage/Course_DSCIENCE_AnalysisMachineLearning2";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_DSCIENCE_ExcelMachineLearning", method = RequestMethod.GET)
    public String Course_DSCIENCE_ExcelMachineLearning() {
        return "/course/shortcourse/detailPage/Course_DSCIENCE_ExcelMachineLearning";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_AWSCloudWeb2", method = RequestMethod.GET)
    public String Course_AWSCloudWeb2() {
        return "/course/shortcourse/detailPage/Course_AWSCloudWeb2";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_Blockchain_HyperConnected", method = RequestMethod.GET)
    public String Course_Blockchain_HyperConnected2() {
        return "/course/shortcourse/detailPage/Course_Blockchain_HyperConnected";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_servletJsp", method = RequestMethod.GET)
    public String Course_servletJsp() {
        return "/course/shortcourse/detailPage/Course_servletJsp";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_Java", method = RequestMethod.GET)
    public String Course_Java() {
        return "/course/shortcourse/detailPage/Course_Java";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_spring", method = RequestMethod.GET)
    public String Course_spring() {
        return "course/shortcourse/detailPage/Course_spring";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_aiojava", method = RequestMethod.GET)
    public String Course_aiojava() {
        return "/course/shortcourse/detailPage/Course_aiojava";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_HTML5", method = RequestMethod.GET)
    public String Course_HTML5() {
        return "/course/shortcourse/detailPage/Course_HTML5";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_JavaScript", method = RequestMethod.GET)
    public String Course_JavaScript() {
        return "/course/shortcourse/detailPage/Course_JavaScript";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_WebPublishing", method = RequestMethod.GET)
    public String Course_WebPublishing() {
        return "/course/shortcourse/detailPage/Course_WebPublishing";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_Nodejs", method = RequestMethod.GET)
    public String Course_Nodejs() {
        return "/course/shortcourse/detailPage/Course_Nodejs";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_SearchEngine", method = RequestMethod.GET)
    public String Course_SearchEngine() {
        return "/course/shortcourse/detailPage/Course_SearchEngine";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_dataBaseModeling", method = RequestMethod.GET)
    public String Course_dataBaseModeling() {
        return "/course/shortcourse/detailPage/Course_dataBaseModeling";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_dataBase", method = RequestMethod.GET)
    public String Course_dataBase() {
        return "/course/shortcourse/detailPage/Course_dataBase";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_springData", method = RequestMethod.GET)
    public String Course_springData() {
        return "/course/shortcourse/detailPage/Course_springData";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_sqlJdbc", method = RequestMethod.GET)
    public String Course_sqlJdbc() {
        return "/course/shortcourse/detailPage/Course_sqlJdbc";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_Agile4Developer", method = RequestMethod.GET)
    public String Course_Agile4Developer() {
        return "/course/shortcourse/detailPage/Course_Agile4Developer";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_ArchitectureBasic", method = RequestMethod.GET)
    public String Course_ArchitectureBasic() {
        return "/course/shortcourse/detailPage/Course_ArchitectureBasic";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_ITIL", method = RequestMethod.GET)
    public String Course_ITIL() {
        return "/course/shortcourse/detailPage/Course_ITIL";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_Android", method = RequestMethod.GET)
    public String Course_Android() {
        return "/course/shortcourse/detailPage/Course_Android";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_javaPlan", method = RequestMethod.GET)
    public String Course_javaPlan() {
        return "/course/shortcourse/detailPage/Course_javaPlan";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_realUml", method = RequestMethod.GET)
    public String Course_realUml() {
        return "/course/shortcourse/detailPage/Course_realUml";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_uml", method = RequestMethod.GET)
    public String Course_uml() {
        return "/course/shortcourse/detailPage/Course_uml";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_designPattern", method = RequestMethod.GET)
    public String Course_designPattern() {
        return "/course/shortcourse/detailPage/Course_designPattern";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_codingTuning", method = RequestMethod.GET)
    public String Course_codingTuning() {
        return "/course/shortcourse/detailPage/Course_codingTuning";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_OptimizationAlgorithms", method = RequestMethod.GET)
    public String Course_OptimizationAlgorithms() {
        return "/course/shortcourse/detailPage/Course_OptimizationAlgorithms";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_RaspberryPi", method = RequestMethod.GET)
    public String Course_RaspberryPi() {
        return "/course/shortcourse/detailPage/Course_RaspberryPi";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_StorageSystem_FMBased", method = RequestMethod.GET)
    public String Course_StorageSystem_FMBased() {
        return "/course/shortcourse/detailPage/Course_StorageSystem_FMBased";
    }
    @RequestMapping(value = "/shortcourse/detailPage/Course_c", method = RequestMethod.GET)
    public String Course_c() {
        return "/course/shortcourse/detailPage/Course_c";
    }
    @RequestMapping(value = "/shortcourse/Course_ShortCourse", method = RequestMethod.GET)
    public String Course_ShortCourse() {
        return "/course/shortcourse/Course_ShortCourse";
    }
    @RequestMapping({"/employ/Course_Employ"})
    public String Course_Employ() {
        return "course/employ/Course_Employ";
    }
    @RequestMapping(value = "employ/Course_Employ_AurosTech", method = RequestMethod.GET)
    public String Course_Employ_AurosTech() {
        return "course/employ/Course_Employ_AurosTech";
    }
    @RequestMapping(value = "employ/Course_Employ_BAinfra", method = RequestMethod.GET)
    public String Course_Employ_BAinfra() {
        return "course/employ/Course_Employ_BAinfra";
    }
    @RequestMapping(value = "employ/Course_Employ_BitComputer", method = RequestMethod.GET)
    public String Course_Employ_BitComputer() {
        return "course/employ/Course_Employ_BitComputer";
    }
    @RequestMapping(value = "employ/Course_Employ_BizTechPartners", method = RequestMethod.GET)
    public String Course_Employ_BizTechPartners() {
        return "course/employ/Course_Employ_BizTechPartners";
    }
    @RequestMapping(value = "employ/Course_Employ_ITtelecom", method = RequestMethod.GET)
    public String Course_Employ_ITtelecom() {
        return "course/employ/Course_Employ_ITtelecom";
    }
    @RequestMapping(value = "employ/Course_Employ_ivis", method = RequestMethod.GET)
    public String Course_Employ_ivis() {
        return "course/employ/Course_Employ_ivis";
    }
    @RequestMapping(value = "employ/Course_Employ_PSK", method = RequestMethod.GET)
    public String Course_Employ_PSK() {
        return "course/employ/Course_Employ_PSK";
    }
    @RequestMapping(value = "employ/Course_Employ_TaehaMechatronics", method = RequestMethod.GET)
    public String Course_Employ_TaehaMechatronics() {
        return "course/employ/Course_Employ_TaehaMechatronics";
    }
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
    @RequestMapping(value = "/BITsupporters_2018", method = RequestMethod.GET)
    public String BITsupporters_2018() {
        return "course/BITsupporters_2018";
    }
    @RequestMapping(value = "/shortcourse/detailpage/Course_Python", method = RequestMethod.GET)
    public String Course_Python() {
        return "course/shortcourse/detailpage/Course_Python";
    }
}
