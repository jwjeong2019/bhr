package com.erp.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.erp.dto.CriDepDelDto;
import com.erp.dto.CriDepDto;
import com.erp.dto.CriDepRegDto;
import com.erp.dto.CriDepUpdDto;
import com.erp.service.CriterionDepService;
import com.erp.util.ErpUtils;

@Controller
public class CriterionDepController {
	
	private static final Logger logger = LogManager.getLogger(CriterionDepController.class);
	
	@Inject
	private CriterionDepService service;
	
	@RequestMapping("/criterionDepartment.do")
	public String criterionDepartment(HttpServletRequest request, Model model) throws Exception {
		CriDepDto dtoReq = new CriDepDto();
		CriDepDto dtoRes = service.criterionDepartment(dtoReq);
		
		model.addAttribute("list", dtoRes.getResList());
		return "criterion_department";
	}
	
	@PostMapping("/criterionDepartmentRegister.do")
	public String criterionDepartmentRegister(HttpServletRequest request) throws Exception {
		CriDepRegDto dtoReq = new CriDepRegDto();
		dtoReq.setReqCode(request.getParameter("code"));
		dtoReq.setReqType(request.getParameter("type"));
		dtoReq.setReqStatus(request.getParameter("status").charAt(0));
		dtoReq.setReqName(request.getParameter("name"));
		
		CriDepRegDto dtoRes = service.criterionDepartmentRegister(dtoReq);
		
		return dtoRes.getResRedirectUrl();
	}
	
	@PostMapping("/criterionDepartmentUpdate.do")
	public String criterionDepartmentUpdate(HttpServletRequest request) throws Exception {
		CriDepUpdDto dtoReq = new CriDepUpdDto();
		dtoReq.setReqId(ErpUtils.convertStringToInteger(request.getParameter("id")));
		dtoReq.setReqStatus(request.getParameter("status").charAt(0));
		dtoReq.setReqName(request.getParameter("name"));
		CriDepUpdDto dtoRes = service.criterionDepartmentUpdate(dtoReq);
		
		return dtoRes.getResRedirectUrl();
	}
	
	@PostMapping("/criterionDepartmentDelete.do")
	public String criterionDepartmentDelete(HttpServletRequest request) throws Exception {
		CriDepDelDto dtoReq = new CriDepDelDto();
		dtoReq.setReqId(ErpUtils.convertStringToInteger(request.getParameter("id")));
		CriDepDelDto dtoRes = service.criterionDepartmentDelete(dtoReq);
		
		return dtoRes.getResRedirectUrl();
	}
	
}
