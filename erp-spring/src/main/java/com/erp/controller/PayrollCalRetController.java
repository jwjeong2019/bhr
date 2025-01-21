package com.erp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PayrollCalRetController {
	
	@RequestMapping("/payrollCalculatedRetrieval.do")
	public String payrollCalculatedRetrieval() {
		return "payroll_calculated_retrieval";
	}
	
}
