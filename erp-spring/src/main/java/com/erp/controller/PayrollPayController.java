package com.erp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PayrollPayController {
	
	@RequestMapping("/payrollPayment.do")
	public String payrollPayment() {
		return "payroll_payment";
	}
	
}
