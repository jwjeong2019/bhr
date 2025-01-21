package com.erp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CriterionDepController {
	
	@RequestMapping("/criterionDepartment.do")
	public String criterionDepartment() {
		return "criterion_department";
	}
	
}
