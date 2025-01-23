package com.erp.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.erp.dto.CriPayDelDto;
import com.erp.dto.CriPayDto;
import com.erp.dto.CriPayRegDto;
import com.erp.dto.CriPayUpdDto;
import com.erp.dto.CriterionDto;
import com.erp.service.CriterionDepService;
import com.erp.service.CriterionPayService;

@Controller
public class CriterionPayController {
	
private static final Logger logger = LogManager.getLogger(CriterionDepController.class);
	
	@Inject
	private CriterionPayService service;
	
	@RequestMapping("/criterionPayroll.do")
	public String criterionPayroll(Model model) throws Exception {
		CriPayDto dtoReq = new CriPayDto();
		CriPayDto dtoRes = service.criterionPayroll(dtoReq);
		
		model.addAttribute("list", dtoRes.getResList());
		return "criterion_payroll";
	}
	
	@PostMapping("/criterionPayrollRegister.do")
	public String criterionPayrollRegister(HttpServletRequest request) throws Exception {
		CriPayRegDto dtoReq = new CriPayRegDto();
		dtoReq.setReqCode(request.getParameter("code"));
		dtoReq.setReqType(request.getParameter("type"));
		dtoReq.setReqStatus(request.getParameter("status").charAt(0));
		dtoReq.setReqName(request.getParameter("name"));
		
		CriPayRegDto dtoRes = service.criterionPayrollRegister(dtoReq);
		
		return dtoRes.getResRedirectUrl();
	}
	
	@PostMapping("/criterionPayrollUpdate.do")
	public String criterionPayrollUpdate(HttpServletRequest request) throws Exception {
		CriPayUpdDto dtoReq = new CriPayUpdDto();
		dtoReq.setReqCode(request.getParameter("code"));
		dtoReq.setReqType(request.getParameter("type"));
		dtoReq.setReqStatus(request.getParameter("status").charAt(0));
		dtoReq.setReqName(request.getParameter("name"));
		CriPayUpdDto dtoRes = service.criterionPayrollUpdate(dtoReq);
		
		return dtoRes.getResRedirectUrl();
	}
	
	@PostMapping("/criterionPayrollDelete.do")
	public String criterionPayrollDelete(HttpServletRequest request) throws Exception {
		CriPayDelDto dtoReq = new CriPayDelDto();
		dtoReq.setReqCode(request.getParameter("code"));
		CriPayDelDto dtoRes = service.criterionPayrollDelete(dtoReq);
		
		return dtoRes.getResRedirectUrl();
	}
	
}
