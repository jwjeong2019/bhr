package com.erp.security;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.erp.dao.AdminDao;
import com.erp.dao.EmployeeDao;
import com.erp.dto.AdminDto;
import com.erp.dto.EmployeeDto;
import com.erp.vo.AdminVO;
import com.erp.vo.EmployeeVO;

public class CustomAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

	private static final Logger logger = LogManager.getLogger(CustomAuthenticationSuccessHandler.class);
	
	@Inject
	private AdminDao adminDao;
	
	@Inject
	private EmployeeDao employeeDao;

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		// TODO Auto-generated method stub
		logger.warn("Success Login.");
		
		List<String> roles = authentication.getAuthorities()
				.stream()
				.map(GrantedAuthority::toString)
				.peek(roleName -> logger.warn("roleName: {}", roleName))
				.collect(Collectors.toList());
		
		UserDetails details = (UserDetails) authentication.getPrincipal();
		
		HttpSession session = request.getSession();
		
		try {
			AdminDto dtoAdm = new AdminDto();
			dtoAdm.setEmail(details.getUsername());
			AdminVO voAdm = adminDao.selectOne(dtoAdm);
			if (voAdm != null) {
				session.setAttribute("name", voAdm.getName());
				response.sendRedirect("/main.do");
				return;
			}
			
			EmployeeDto dtoEmp = new EmployeeDto();
			dtoEmp.setEmail(details.getUsername());
			EmployeeVO voEmp = employeeDao.selectOne(dtoEmp);
			if (voEmp != null) {
				session.setAttribute("name", voEmp.getName());
				response.sendRedirect("/main.do");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
