package com.bitacademy.controller;

import com.bitacademy.service.MemberService;
import com.bitacademy.service.RegisterService;
import com.bitacademy.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value ="/register")
public class RegisterController {
    @Autowired
    private RegisterService registerService;
	@Autowired
    private MemberService memberService;

	@RequestMapping(value = "/request/register_shortCourse_insertMMS", method = RequestMethod.GET)
    public String register_shortCourse_insertMMS() {
        
		return "register/request/register_shortCourse_insertMMS";
    }
	@RequestMapping(value = "/request/register_shortCourse", method = RequestMethod.GET)
    public String register_shortCourse() {
		return "register/request/register_shortCourse";
    }

    @RequestMapping(value = "/register_requestResult", method = RequestMethod.GET)
    public String register_requestResult(HttpSession session, Model model) {
	    UserVo authUser = (UserVo)session.getAttribute("authUser");
	    List<ApplyVo> list = registerService.register_requestResult(authUser);
	    model.addAttribute("list", list);
        return "register/register_requestResult";
    }

    @RequestMapping(value = "/register_paymentStep", method = RequestMethod.GET)
    public String register_paymentStep() {
        return "/register/register_paymentStep";
    }

    @RequestMapping(value = "/register_depositCheck", method = RequestMethod.GET)
    public String register_depositCheck(HttpSession session, Model model) {
	    UserVo userVo = (UserVo) session.getAttribute("authUser");
	    model.addAttribute("list",registerService.register_depositCheck(userVo));
        return "/register/register_depositCheck";
    }


    @RequestMapping(value = "/request/register_form")
    public String register_form(Model model, HttpSession session, @RequestParam(value = "idx", defaultValue = "0", required = false) int idx, @RequestParam(value = "cID") String cID){
	    if (session.getAttribute("authUser")==null){
	        return "/index";
        } else {
	        model.addAttribute("cID",cID);
            UserVo authUser = (UserVo) session.getAttribute("authUser");
            Map<String, Object> map = new HashMap<>();
            UserVo userVo = registerService.register_form_info(authUser); //유저 기본정보 가져오는 코드
            model.addAttribute("userInfo", userVo);
            List<UserModVo> list = memberService.Member_modify_school(authUser.getUser_no()); //학력정보 가져오는 코드
            model.addAttribute("schoolList", list);
            List<TrainingVo> list2 = registerService.register_form_training(authUser.getUser_no()); //학원교육 가져오는 코드
            model.addAttribute("trainingList", list2);
            List<CareerVo> list3 = registerService.register_form_career(authUser.getUser_no()); //직장근무경력 가져오는코드
            model.addAttribute("careerList", list3);
            UserVo userVo2 = registerService.register_form_Lang_Mil(authUser.getUser_no()); //어학, 병역 정보 가져오는 코드
            model.addAttribute("langMil",userVo2);
            List<UserVo> list4 = registerService.register_form_Licence(authUser.getUser_no()); //자격/면허 가져오는 코드
            model.addAttribute("licence", list4);
            ApplyVo applyVo = new ApplyVo();
	        if (idx != 0) {
                applyVo = registerService.register_form(authUser, idx);
                applyVo.setIsAppYN("Y");
                model.addAttribute("applyInfo", applyVo);
                return "/register/request/register_form";
            } else {
	            applyVo.setIsAppYN("N");
	            model.addAttribute("applyInfo", applyVo);
                return "/register/request/register_form";
            }

        }
    }

    @RequestMapping(value = "/request/register_form2")
    public String register_form2(HttpSession session, @RequestParam(value = "idx", defaultValue = "0", required = false) int idx, Model model, @RequestParam("cID") String cID){
        if (session.getAttribute("authUser")==null){
            return "/index";
        } else {
            //1. 취업후 희망 불러오는 코드
            UserVo authUser = (UserVo) session.getAttribute("authUser");
            ApplyVo hope = new ApplyVo();
            if (idx != 0) { // 수정하기 눌렀을때 코드
                hope = registerService.register_form_hope(authUser.getUser_no(), idx);
            } else { // 신규작성 코드
                hope.setHope("00000");
            }
            model.addAttribute("hope", hope);
            //1. end

            return "register/request/register_form2?cID="+cID;
        }
    }
}
