package com.erp.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.erp.dto.HREmpDelDto;
import com.erp.dto.HREmpDto;
import com.erp.dto.HREmpRegDto;
import com.erp.dto.HREmpUpdDto;
import com.erp.service.HREmpService;
import com.erp.util.ErpUtils;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;

@Controller
public class HREmpController {
	
	private static final Logger logger = LogManager.getLogger(HREmpController.class);
	
	@Inject
	private HREmpService service;
	
	@RequestMapping("/hrEmployee.do")
	public String hrEmployee(Model model) throws Exception {
		HREmpDto dtoRes = service.hrEmployee(null);
		
		model.addAttribute("list", dtoRes.getResList());
		return "hr_employee";
	}
	
	@PostMapping("/hrEmployeeRegister.do")
	public String hrEmployeeRegister(HttpServletRequest request) throws Exception {
		ObjectMapper mapper = new ObjectMapper();
		mapper.registerModule(new JavaTimeModule());
		
		HREmpRegDto dtoReq = mapper.readValue(request.getParameter("data"), HREmpRegDto.class);
		HREmpRegDto dtoRes = service.hrEmployeeRegister(dtoReq);
		
		return dtoRes.getResRedirectUrl();
	}
	
	@PostMapping("/hrEmployeeUpdate.do")
	public String hrEmployeeUpdate(HttpServletRequest request) throws Exception {
		ObjectMapper mapper = new ObjectMapper();
		mapper.registerModule(new JavaTimeModule());
		
		HREmpUpdDto dtoReq = mapper.readValue(request.getParameter("data"), HREmpUpdDto.class);
		logger.info(dtoReq);
		HREmpUpdDto dtoRes = service.hrEmployeeUpdate(dtoReq);
		
		return dtoRes.getResRedirectUrl();
	}
	
	@PostMapping("/hrEmployeeDelete.do")
	public String hrEmployeeDelete(HttpServletRequest request) throws Exception {
		HREmpDelDto dtoReq = new HREmpDelDto();
		dtoReq.setReqEmpId(ErpUtils.convertStringToInteger(request.getParameter("empId")));
		HREmpDelDto dtoRes = service.hrEmployeeDelete(dtoReq);
		return dtoRes.getResRedirectUrl();
	}
	
}
