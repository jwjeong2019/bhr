package com.erp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CriterionAttController {
	
	@RequestMapping("/criterionAttendance.do")
	public String criterionAttendance() {
		return "criterion_attendance";
	}

}
