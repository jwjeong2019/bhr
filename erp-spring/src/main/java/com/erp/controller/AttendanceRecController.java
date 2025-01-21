package com.erp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AttendanceRecController {
	
	@RequestMapping("/attendanceReceive.do")
	public String attendanceReceive() {
		return "attendance_receive";
	}
	
}
