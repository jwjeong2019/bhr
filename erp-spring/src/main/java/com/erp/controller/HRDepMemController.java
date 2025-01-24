package com.erp.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.erp.dto.HRDepMemDto;
import com.erp.dto.HRDepMemUpdDto;
import com.erp.service.HRDepMemService;

@Controller
public class HRDepMemController {
	
	@Inject
	private HRDepMemService service;

	@RequestMapping("/hrDepartmentMember.do")
	public String hrDepartmentMember(Model model) throws Exception {
		HRDepMemDto dtoRes = service.hrDepartmentMember(null);
		
		model.addAttribute("listDep", dtoRes.getResDepList());
		model.addAttribute("listEmp", dtoRes.getResEmpList());
		model.addAttribute("listMem", dtoRes.getResMemList());
		return "hr_department_member";
	}
	
	@PostMapping("/hrDepartmentMemberUpdate.do")
	public String hrDepartmentMemberUpdate(HttpServletRequest request) throws Exception {
		HRDepMemUpdDto dtoReq = new HRDepMemUpdDto();
		dtoReq.setReqEmpId(getIntParamter(request.getParameter("empId")));
		dtoReq.setReqDepId(getIntParamter(request.getParameter("depId")));
		HRDepMemUpdDto dtoRes = service.hrDepartmentMemberUpdate(dtoReq);
		
		return dtoRes.getResRedirectUrl();
	}
	
	private Integer getIntParamter(String param) {
		Integer result = null;
		if (param != null && !param.isEmpty()) {
			return Integer.parseInt(param);
		}
		return result;
	}
	
}
