package com.bitacademy.controller;

import com.bitacademy.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
    public String login(@RequestParam(value = "return_url", defaultValue = "/index", required = false) String return_url, Model model){
        model.addAttribute("return_url", return_url);
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

 /*   @ResponseBody
    @RequestMapping(value = "/chkID", method = RequestMethod.POST)
    public int chkID(@RequestParam("memid") String memid) {
        return memberService.chkID(memid);
    }*/
}
