package com.bitacademy.controller;

import com.bitacademy.service.MemberService;
import com.bitacademy.vo.MemberVo;
import com.bitacademy.vo.UserModReqVo;
import com.bitacademy.vo.UserModVo;
import com.bitacademy.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value = "/member")
public class MemberController {
    @Autowired
    private MemberService memberService;

    @RequestMapping(value = "/Join_Step1")
    public String Join_Step1(){
        return "member/Join_Step1";
    }

    @RequestMapping(value = "/Join_Step2")
    public String Join_step2(){
        return "member/Join_Step3";
    }

    @RequestMapping(value = "/checkid")
    public String checkid(@RequestParam("memid") String memid, Model model){
        int flag = memberService.chkID(memid);
        model.addAttribute("memid", memid);
        model.addAttribute("flag", flag);
        System.out.println(memid);
        System.out.println(flag);
        return "member/checkid";
    }

    @RequestMapping(value = "/login")
    public String login(@RequestParam(value = "return_url", defaultValue = "/index", required = false) String return_url, @RequestParam(value = "result", required = false) String result, Model model){
        model.addAttribute("return_url", return_url);
        model.addAttribute("result",result);
        return "member/login";
    }
    @RequestMapping(value = "/id_pass_search_01")
    public String id_pass_search_01(){
        return "member/id_pass_search_01";
    }

    @RequestMapping(value = "/policy")
    public String policy(){
        return "member/policy";
    }

    @RequestMapping(value = "/login_ok")
    public String login_ok(@ModelAttribute UserVo userVo, HttpSession session){
        UserVo authUser = memberService.login_ok(userVo);
        if (authUser != null) {
            session.setAttribute("authUser", authUser);
            return authUser.getReturn_url();
        }
        return "redirect:/member/login?result=fail";
    }

    @RequestMapping(value = "/logout")
    public String logout(@RequestParam(value = "return_url", defaultValue = "/index", required = false) String return_url, HttpSession session){
        session.removeAttribute("authUser");
        session.invalidate();
        return return_url;
    }

    @RequestMapping(value = "/member_ipin_result_ok_old")
    public String member_ipin_result_ok_old(@ModelAttribute MemberVo memberVo){
        memberService.member_ipin_result_ok_old(memberVo);
        return "/index";
    }

    @RequestMapping(value = "/ActivateSleepingAccount") //휴면계정 활성화
    public String ActivateSleepingAccount(HttpSession session){
        UserVo authUser = (UserVo)session.getAttribute("authUser");
        authUser = memberService.ActivateSleepingAccount(authUser);
        return authUser.getReturn_url();

    }

    @RequestMapping(value = "/ReAgree", method = RequestMethod.POST) //휴면계정 활성화
    public String ReAgree(HttpSession session){
        UserVo authUser = (UserVo)session.getAttribute("authUser");
        memberService.ReAgree(authUser);
        return "/index";
    }

    @RequestMapping(value = "/Member_modify")
    public String Member_modify(HttpSession session, Model model){
        if (session.getAttribute("authUser")==null) {
            return "/index"; //로그인필요합니다. 리턴페이지는 나중에 수정...
        }else {
            UserVo authUser = (UserVo) session.getAttribute("authUser");
            UserModVo userModVo = memberService.Member_modify(authUser.getUser_no());
            List<UserModVo> list = memberService.Member_modify_school(authUser.getUser_no());
            model.addAttribute("modVo", userModVo);
            model.addAttribute("schoolList", list);
            return "/member/Member_modify";
        }
    }

    @RequestMapping(value = "/member_modify_ok", method = RequestMethod.POST)
    public String member_modify_ok (@ModelAttribute UserModReqVo userModReqVo){
        memberService.member_modify_ok(userModReqVo);
        return "redirect:/member/Member_modify";
    }
}

