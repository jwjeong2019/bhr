package com.erp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AttendanceAppController {
	
	@RequestMapping("/attendanceApply.do")
	public String attendanceApply() {
		return "attendance_apply";
	}
	
}
