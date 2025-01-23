package com.erp.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.erp.dto.CriAttDelDto;
import com.erp.dto.CriAttDto;
import com.erp.dto.CriAttRegDto;
import com.erp.dto.CriAttUpdDto;
import com.erp.service.CriterionAttService;

@Controller
public class CriterionAttController {
	
private static final Logger logger = LogManager.getLogger(CriterionDepController.class);
	
	@Inject
	private CriterionAttService service;
	
	@RequestMapping("/criterionAttendance.do")
	public String criterionAttendance(Model model) throws Exception {
		CriAttDto dtoReq = new CriAttDto();
		CriAttDto dtoRes = service.criterionAttendance(dtoReq);
		
		model.addAttribute("list", dtoRes.getResList());
		return "criterion_attendance";
	}
	
	@PostMapping("/criterionAttendanceRegister.do")
	public String criterionAttendanceRegister(HttpServletRequest request) throws Exception {
		CriAttRegDto dtoReq = new CriAttRegDto();
		dtoReq.setReqCode(request.getParameter("code"));
		dtoReq.setReqType(request.getParameter("type"));
		dtoReq.setReqStatus(request.getParameter("status").charAt(0));
		dtoReq.setReqName(request.getParameter("name"));
		
		CriAttRegDto dtoRes = service.criterionAttendanceRegister(dtoReq);
		
		return dtoRes.getResRedirectUrl();
	}
	
	@PostMapping("/criterionAttendanceUpdate.do")
	public String criterionAttendanceUpdate(HttpServletRequest request) throws Exception {
		CriAttUpdDto dtoReq = new CriAttUpdDto();
		dtoReq.setReqCode(request.getParameter("code"));
		dtoReq.setReqType(request.getParameter("type"));
		dtoReq.setReqStatus(request.getParameter("status").charAt(0));
		dtoReq.setReqName(request.getParameter("name"));
		CriAttUpdDto dtoRes = service.criterionAttendanceUpdate(dtoReq);
		
		return dtoRes.getResRedirectUrl();
	}
	
	@PostMapping("/criterionAttendanceDelete.do")
	public String criterionAttendanceDelete(HttpServletRequest request) throws Exception {
		CriAttDelDto dtoReq = new CriAttDelDto();
		dtoReq.setReqCode(request.getParameter("code"));
		CriAttDelDto dtoRes = service.criterionAttendanceDelete(dtoReq);
		
		return dtoRes.getResRedirectUrl();
	}

}
