package com.erp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HRMyinfoController {
	
	@RequestMapping("/hrMyinfo.do")
	public String hrMyinfo() {
		return "hr_myinfo";
	}
	
}
