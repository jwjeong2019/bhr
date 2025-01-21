package com.erp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HRDepMemController {
	
	@RequestMapping("/hrDepartmentMember.do")
	public String hrDepartmentMember() {
		return "hr_department_member";
	}
	
}
