package com.erp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AttendanceDetController {
	
	@RequestMapping("/attendanceDetail.do")
	public String attendanceDetail() {
		return "attendance_detail";
	}
	
}
