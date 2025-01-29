package com.erp.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.erp.dto.LoginActionDto;
import com.erp.dto.LoginDto;
import com.erp.service.LoginService;

@Controller
public class LoginController {
	
	@Inject
	private LoginService service;

	@RequestMapping("/login.do")
	public String login(HttpServletRequest request, Model model) {
		LoginDto dtoReq = new LoginDto();
		dtoReq.setReqFlashMap(RequestContextUtils.getInputFlashMap(request));
		LoginDto dtoRes = service.login(dtoReq);
		
		model.addAttribute("msg", dtoRes.getResMsg());
		return "login";
	}
}
