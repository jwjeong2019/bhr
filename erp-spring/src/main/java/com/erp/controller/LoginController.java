package com.erp.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;

@Controller
public class LoginController {
	
	private static final String LOGIN_ADM_ID = "admin@erp.kr";
	private static final String LOGIN_ADM_PWD = "1234";
	private static final String LOGIN_USER_ID = "minji@erp.kr";
	private static final String LOGIN_USER_PWD = "1234";

	@RequestMapping("/login.do")
	public String login(HttpServletRequest request, Model model) {
		// flash 속성 파라미터 수집
		Map<String, ?> reqFlashMap = RequestContextUtils.getInputFlashMap(request);
		if (reqFlashMap != null) {
			// msg 파라미터를 받고 login.jsp로 전달
			String paramMsg = (String) reqFlashMap.get("msg");
			model.addAttribute("msg", paramMsg);
		}
		return "login";
	}
	
	@RequestMapping(path = "/loginAction.do", method = RequestMethod.POST)
	public String loginAction(HttpServletRequest request, RedirectAttributes ra) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		HttpSession session = request.getSession();
		
		if (id.equals(LOGIN_ADM_ID) && pwd.equals(LOGIN_ADM_PWD)) {
			session.setAttribute("id", 1);
			session.setAttribute("email", LOGIN_ADM_ID);
			session.setAttribute("name", "최고관리자");
			session.setAttribute("role", "MASTER");
			return "redirect:/main.do";
		}
		
		if (id.equals(LOGIN_USER_ID) && pwd.equals(LOGIN_USER_PWD)) {
			session.setAttribute("id", 1);
			session.setAttribute("email", LOGIN_USER_ID);
			session.setAttribute("name", "김민지");
			session.setAttribute("role", "USER");
			return "redirect:/main.do";
		}
		
		// flash 속성 파라미터 방출
		// URL 파라미터 은닉
		ra.addFlashAttribute("msg", "fail");
		return "redirect:/login.do";
	}
}
