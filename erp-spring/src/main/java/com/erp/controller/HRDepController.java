package com.erp.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.erp.dto.HRDepDelDto;
import com.erp.dto.HRDepDto;
import com.erp.dto.HRDepInsDto;
import com.erp.service.HRDepService;

@Controller
public class HRDepController {
	
	@Inject
	private HRDepService service;
	
	@RequestMapping("/hrDepartment.do")
	public String hrDepartment(HttpServletRequest request, Model model) throws Exception {
		HRDepDto dtoRes = service.hrDepartment(new HRDepDto());
		
		model.addAttribute("listCri", dtoRes.getResCriList());
		model.addAttribute("listDep", dtoRes.getResDepList());
		
		return "hr_department";
	}
	
	@PostMapping("/hrDepartmentInsert.do")
	public String hrDepartmentInsert(HttpServletRequest request, RedirectAttributes ra) throws Exception {
		HRDepInsDto dtoReq = new HRDepInsDto();
		dtoReq.setReqCriId(Integer.parseInt(request.getParameter("criId")));
		HRDepInsDto dtoRes = service.hrDepartmentInsert(dtoReq);
		
		return dtoRes.getResRedirectUrl();
	}
	
	@PostMapping("/hrDepartmentDelete.do")
	public String hrDepartmentDelete(HttpServletRequest request) throws Exception {
		HRDepDelDto dtoReq = new HRDepDelDto();
		dtoReq.setReqId(Integer.parseInt(request.getParameter("depId")));
		HRDepDelDto dtoRes = service.hrDepartmentDelete(dtoReq);
		
		return dtoRes.getResRedirectUrl();
	}
	
}
