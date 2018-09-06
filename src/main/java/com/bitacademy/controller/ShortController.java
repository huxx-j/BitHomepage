package com.bitacademy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/course/shortcourse")
public class ShortController {
	
    @RequestMapping(value = "/refundInfo_01", method = RequestMethod.GET)
    public String refundInfo_01() {
        return "course/shortcourse/Course_shortCourse_refundInfo_01";
    }

    @RequestMapping(value = "/refundInfo_03", method = RequestMethod.GET)
    public String refundInfo_03() {
        return "course/shortcourse/Course_shortCourse_refundInfo_03";
    }


    @RequestMapping(value = "/Course_ShortCourse", method = RequestMethod.GET)
    public String Course_ShortCourse() {
        return "/course/shortcourse/Course_ShortCourse";
    }

    ///////////////////////////////////////여기부터 디테일 페이지(/detailPage)//////////////////////////////////////

    @RequestMapping(value = "/detailPage/Course_C_Weekend", method = RequestMethod.GET)
    public String Course_C_Weekend() { return "course/shortcourse/detailPage/Course_C_Weekend"; }

    @RequestMapping(value = "/detailPage/Course_Python", method = RequestMethod.GET)
    public String Course_Python() { return "course/shortcourse/detailPage/Course_Python"; }

    @RequestMapping(value = "/detailPage/Course_cPlus", method = RequestMethod.GET)
    public String Course_cPlus() { 
    	return "course/shortcourse/detailPage/Course_cPlus"; 
    	}
    
    @RequestMapping(value = "/detailPage/Course_java", method = RequestMethod.GET)
    public String Course_java() { 
    	return "course/shortcourse/detailPage/Course_Java"; 
    	}

    @RequestMapping(value = "/detailPage/Course_C", method = RequestMethod.GET)
    public String Course_C() { 
    	System.out.println("서울캠퍼스 c");
    	return "course/shortcourse/detailPage/Course_C"; 
    }

    @RequestMapping(value = "/detailPage/Course_Java_Weekend", method = RequestMethod.GET)
    public String Course_Java_Weekend() {
        return "/course/shortcourse/detailPage/Course_Java_Weekend";
    }

    @RequestMapping(value = "/detailPage/Course_cPlus_Weekend", method = RequestMethod.GET)
    public String Course_cPlus_Weekend() {
        return "/course/shortcourse/detailPage/Course_cPlus_Weekend";
    }

    @RequestMapping(value = "/detailPage/Course_Python_Weekend", method = RequestMethod.GET)
    public String Course_Python_Weekend() {
        return "/course/shortcourse/detailPage/Course_Python_Weekend";
    }

    @RequestMapping(value = "/detailPage/Course_cSharp", method = RequestMethod.GET)
    public String Course_cSharp() {
        return "/course/shortcourse/detailPage/Course_cSharp";
    }
    @RequestMapping(value = "/detailPage/Course_Go", method = RequestMethod.GET)
    public String Course_Go() {
        return "/course/shortcourse/detailPage/Course_Go";
    }

    @RequestMapping(value = "/detailPage/Course_SelfLearning", method = RequestMethod.GET)
    public String Course_SelfLearning() {
        return "/course/shortcourse/detailPage/Course_SelfLearning";
    }

    @RequestMapping(value = "/detailPage/Course_DSCIENCE_AnalysisMachineLearning2", method = RequestMethod.GET)
    public String Course_DSCIENCE_AnalysisMachineLearning2() {
        return "/course/shortcourse/detailPage/Course_DSCIENCE_AnalysisMachineLearning2";
    }
    @RequestMapping(value = "/detailPage/Course_DSCIENCE_AnalysisMachineLearning", method = RequestMethod.GET)
    public String Course_DSCIENCE_AnalysisMachineLearning() {
        return "/course/shortcourse/detailPage/Course_DSCIENCE_AnalysisMachineLearning";
    }
    @RequestMapping(value = "/detailPage/Course_DSCIENCE_ExcelMachineLearning", method = RequestMethod.GET)
    public String Course_DSCIENCE_ExcelMachineLearning() {
        return "/course/shortcourse/detailPage/Course_DSCIENCE_ExcelMachineLearning";
    }
    @RequestMapping(value = "/detailPage/Course_AWSCloudWeb2", method = RequestMethod.GET)
    public String Course_AWSCloudWeb2() {
        return "/course/shortcourse/detailPage/Course_AWSCloudWeb2";
    }
    @RequestMapping(value = "/detailPage/Course_DSCIENCE_PracticalMachineLearningPython", method = RequestMethod.GET)
    public String Course_DSCIENCE_PracticalMachineLearningPython() {
        return "/course/shortcourse/detailPage/Course_DSCIENCE_PracticalMachineLearningPython";
    }
    

    @RequestMapping(value = "/detailPage/Course_Blockchain_HyperConnected", method = RequestMethod.GET)
    public String Course_Blockchain_HyperConnected2() {
        return "/course/shortcourse/detailPage/Course_Blockchain_HyperConnected";
    }
    @RequestMapping(value = "/detailPage/Course_servletJsp", method = RequestMethod.GET)
    public String Course_servletJsp() {
        return "/course/shortcourse/detailPage/Course_servletJsp";
    }

    @RequestMapping(value = "/detailPage/Course_Java", method = RequestMethod.GET)
    public String Course_Java() {
        return "/course/shortcourse/detailPage/Course_Java";
    }

    @RequestMapping(value = "/detailPage/Course_spring", method = RequestMethod.GET)
    public String Course_spring() {
        return "course/shortcourse/detailPage/Course_spring";
    }

    @RequestMapping(value = "/detailPage/Course_aiojava", method = RequestMethod.GET)
    public String Course_aiojava() {
        return "/course/shortcourse/detailPage/Course_aiojava";
    }

    @RequestMapping(value = "/detailPage/Course_HTML5", method = RequestMethod.GET)
    public String Course_HTML5() {
        return "/course/shortcourse/detailPage/Course_HTML5";
    }

    @RequestMapping(value = "/detailPage/Course_JavaScript", method = RequestMethod.GET)
    public String Course_JavaScript() {
        return "/course/shortcourse/detailPage/Course_JavaScript";
    }

    @RequestMapping(value = "/detailPage/Course_WebPublishing", method = RequestMethod.GET)
    public String Course_WebPublishing() {
        return "/course/shortcourse/detailPage/Course_WebPublishing";
    }

    @RequestMapping(value = "/detailPage/Course_Nodejs", method = RequestMethod.GET)
    public String Course_Nodejs() {
        return "/course/shortcourse/detailPage/Course_Nodejs";
    }

    @RequestMapping(value = "/detailPage/Course_SearchEngine", method = RequestMethod.GET)
    public String Course_SearchEngine() {
        return "/course/shortcourse/detailPage/Course_SearchEngine";
    }

    @RequestMapping(value = "/detailPage/Course_dataBaseModeling", method = RequestMethod.GET)
    public String Course_dataBaseModeling() {
        return "/course/shortcourse/detailPage/Course_dataBaseModeling";
    }

    @RequestMapping(value = "/detailPage/Course_dataBase", method = RequestMethod.GET)
    public String Course_dataBase() {
        return "/course/shortcourse/detailPage/Course_dataBase";
    }

    @RequestMapping(value = "/detailPage/Course_springData", method = RequestMethod.GET)
    public String Course_springData() {
        return "/course/shortcourse/detailPage/Course_springData";
    }

    @RequestMapping(value = "/detailPage/Course_sqlJdbc", method = RequestMethod.GET)
    public String Course_sqlJdbc() {
        return "/course/shortcourse/detailPage/Course_sqlJdbc";
    }

    @RequestMapping(value = "/detailPage/Course_Agile4Developer", method = RequestMethod.GET)
    public String Course_Agile4Developer() {
        return "/course/shortcourse/detailPage/Course_Agile4Developer";
    }

    @RequestMapping(value = "/detailPage/Course_ArchitectureBasic", method = RequestMethod.GET)
    public String Course_ArchitectureBasic() {
        return "/course/shortcourse/detailPage/Course_ArchitectureBasic";
    }

    @RequestMapping(value = "/detailPage/Course_ITIL", method = RequestMethod.GET)
    public String Course_ITIL() {
        return "/course/shortcourse/detailPage/Course_ITIL";
    }

    @RequestMapping(value = "/detailPage/Course_Android", method = RequestMethod.GET)
    public String Course_Android() {
        return "/course/shortcourse/detailPage/Course_Android";
    }

    @RequestMapping(value = "/detailPage/Course_javaPlan", method = RequestMethod.GET)
    public String Course_javaPlan() {
        return "/course/shortcourse/detailPage/Course_javaPlan";
    }

    @RequestMapping(value = "/detailPage/Course_realUml", method = RequestMethod.GET)
    public String Course_realUml() {
        return "/course/shortcourse/detailPage/Course_realUml";
    }

    @RequestMapping(value = "/detailPage/Course_uml", method = RequestMethod.GET)
    public String Course_uml() {
        return "/course/shortcourse/detailPage/Course_uml";
    }

    @RequestMapping(value = "/detailPage/Course_designPattern", method = RequestMethod.GET)
    public String Course_designPattern() {
        return "/course/shortcourse/detailPage/Course_designPattern";
    }

    @RequestMapping(value = "/detailPage/Course_codingTuning", method = RequestMethod.GET)
    public String Course_codingTuning() {
        return "/course/shortcourse/detailPage/Course_codingTuning";
    }

    @RequestMapping(value = "/detailPage/Course_OptimizationAlgorithms", method = RequestMethod.GET)
    public String Course_OptimizationAlgorithms() { return "/course/shortcourse/detailPage/Course_OptimizationAlgorithms"; }

    @RequestMapping(value = "/detailPage/Course_RaspberryPi", method = RequestMethod.GET)
    public String Course_RaspberryPi() {
        return "/course/shortcourse/detailPage/Course_RaspberryPi";
    }

    @RequestMapping(value = "/detailPage/Course_StorageSystem_FMBased", method = RequestMethod.GET)
    public String Course_StorageSystem_FMBased() { 
    	return "/course/shortcourse/detailPage/Course_StorageSystem_FMBased"; 
    }

    @RequestMapping(value = "/detailPage/Course_c2", method = RequestMethod.GET)
    public String Course_c2() {
        return "course/shortcourse/detailPage/Course_c2";
    }
}
