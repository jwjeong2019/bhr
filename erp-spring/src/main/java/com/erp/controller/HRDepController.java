package com.erp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HRDepController {
	
	@RequestMapping("/hrDepartment.do")
	public String hrDepartment() {
		return "hr_department";
	}
	
}
