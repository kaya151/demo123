package cn.ti.demo123.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Reception")
public class ReceptionController {
    @RequestMapping("/index")
    public String index(){
        return "reception/index";
    }
}
