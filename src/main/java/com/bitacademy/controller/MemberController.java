package com.bitacademy.controller;

import com.bitacademy.service.MemberService;
import com.bitacademy.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

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
            return userVo.getReturn_url();
        }
        System.out.println(userVo.toString());
        return "redirect:/member/login?result=fail";
    }

    @RequestMapping(value = "/logout")
    public String logout(@RequestParam(value = "return_url", defaultValue = "/index", required = false) String return_url, HttpSession session){
        session.removeAttribute("authUser");
        session.invalidate();
        return return_url;
    }

 /*   @ResponseBody
    @RequestMapping(value = "/chkID", method = RequestMethod.POST)
    public int chkID(@RequestParam("memid") String memid) {
        return memberService.chkID(memid);
    }*/
}
