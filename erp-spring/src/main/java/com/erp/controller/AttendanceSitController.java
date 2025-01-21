package com.erp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AttendanceSitController {
	
	@RequestMapping("/attendanceSituation.do")
	public String attendanceSituation() {
		return "attendance_situation";
	}
	
}
