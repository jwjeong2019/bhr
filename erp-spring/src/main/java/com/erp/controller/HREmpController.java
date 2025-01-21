package com.erp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HREmpController {
	
	@RequestMapping("/hrEmployee.do")
	public String hrEmployee() {
		return "hr_employee";
	}
	
}
