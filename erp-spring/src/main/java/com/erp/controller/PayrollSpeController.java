package com.erp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PayrollSpeController {
	
	@RequestMapping("/payrollSpecification.do")
	public String payrollSpecification() {
		return "payroll_specification";
	}
	
}
