package com.erp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ErrorController {
	
	@GetMapping("/accessError.do")
	public void accessError(Model model) {
		model.addAttribute("msg", "access denied.");
	}

}
