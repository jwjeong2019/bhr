package com.erp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AttendanceAnnController {
	
	@RequestMapping("/attendanceAnnualleaveSituation.do")
	public String attendanceAnnualleaveSituation() {
		return "attendance_annualleave_situation";
	}
	
}
