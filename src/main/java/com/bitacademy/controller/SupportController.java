package com.bitacademy.controller;

import com.bitacademy.service.SupportService;
import com.bitacademy.vo.QAVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@RequestMapping(value = "/support")
public class SupportController {
    @Autowired
    private SupportService supportService;

    @RequestMapping(value = "/Support_etcRent")
    public String Support_etcRent(){
        return "support/Support_etcRent";
    }

    @RequestMapping(value = "/Support_certification")
    public String Support_certification(){
        return "support/Support_certification";
    }

    @RequestMapping(value = "/Support_instructor")
    public String Support_instructor(){
        return "support/Support_instructor";
    }

    @RequestMapping(value = "/Support_online_list")
    public String Support_online_list(@RequestParam(value = "page", defaultValue = "1", required = false) int page,
                                      @RequestParam(value = "field",  required = false) String field,
                                      @RequestParam(value = "field_value", required = false) String field_value,
                                      Model model){
        model.addAttribute("qaMap",supportService.getQAList(page));
        model.addAttribute("page",page);
        model.addAttribute("field", field);
        model.addAttribute("field_value",field_value);
        return "support/Support_online_list";
    }

    @RequestMapping(value = "/Support_online_content")
    public String Support_online_content(@RequestParam(value = "idx",required = false) int idx,
                                         @RequestParam(value = "page", defaultValue = "1", required = false) int page,
                                         @RequestParam(value = "field",  required = false) String field,
                                         @RequestParam(value = "field_value", required = false) String field_value,
                                         Model model){
        model.addAttribute("content",supportService.Support_online_content(idx));
        model.addAttribute("field", field);
        model.addAttribute("field_value",field_value);
        model.addAttribute("page",page);
        return "support/Support_online_content";
    }

    @RequestMapping(value = "/Support_online_write")
    public String Support_online_write(@RequestParam(value = "idx", defaultValue = "0", required = false) int idx,
                                       @RequestParam(value = "page", defaultValue = "1", required = false) int page,
                                       @RequestParam(value = "field",  required = false) String field,
                                       @RequestParam(value = "field_value", required = false) String field_value,
                                       @RequestParam(value = "re", defaultValue = "NO", required = false) String re,
                                       Model model){
        if (idx != 0){
        model.addAttribute("content",supportService.Support_online_write(idx));
        }
        model.addAttribute("field", field);
        model.addAttribute("field_value",field_value);
        model.addAttribute("page",page);
        model.addAttribute("re", re);

        return "support/Support_online_write";
    }

    @RequestMapping(value = "/Support_online_write_ok")
    public String Support_online_write_ok(@ModelAttribute QAVo qaVo,
                                          @RequestParam(value = "field", defaultValue = "", required = false) String field,
                                          @RequestParam(value = "field_value", defaultValue = "", required = false) String field_value,
                                          @RequestParam(value = "re", defaultValue = "NO", required = false) String re,
                                          Model model){
        model.addAttribute("content",supportService.Support_online_write_ok(qaVo, re));
        model.addAttribute("field", field);
        model.addAttribute("field_value",field_value);

        return "redirect:/support/Support_online_list";
    }
    @ResponseBody
    @RequestMapping(value = "/refChk", method = RequestMethod.POST)
    public int refChk(@RequestParam("idx") int idx) {
        return supportService.refChk(idx);

    }

    @RequestMapping(value = "/Support_fund")
    public String Support_fund(){
        return "support/Support_fund";
    }
}
