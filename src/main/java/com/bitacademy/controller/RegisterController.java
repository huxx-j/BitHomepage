package com.bitacademy.controller;

import com.bitacademy.service.RegisterService;
import com.bitacademy.vo.ApplyVo;
import com.bitacademy.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value ="/register")
public class RegisterController {
    @Autowired
    private RegisterService registerService;
	
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
}
