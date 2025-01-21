package com.erp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CriterionPayController {
	
	@RequestMapping("/criterionPayroll.do")
	public String criterionPayroll() {
		return "criterion_payroll";
	}
	
}
