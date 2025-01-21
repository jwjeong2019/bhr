package com.erp.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.erp.dto.CriterionDto;

@Controller
public class CriterionPayController {
	
	public List<CriterionDto> list = new ArrayList<>();
	
	public CriterionPayController() {
		list.add(new CriterionDto("C0001", "PAY", "Y", "기본급"));
		list.add(new CriterionDto("C0002", "PAY", "Y", "초과수당"));
		list.add(new CriterionDto("C0003", "PAY", "N", "식비"));
		list.add(new CriterionDto("C0004", "PAY", "N", "연장수당"));
		list.add(new CriterionDto("C0005", "DEDUCT", "Y", "소득세"));
		list.add(new CriterionDto("C0006", "DEDUCT", "Y", "지방소득세"));
		list.add(new CriterionDto("C0007", "DEDUCT", "Y", "국민연금"));
	}
	
	@RequestMapping("/criterionPayroll.do")
	public String criterionPayroll(Model model) {
		model.addAttribute("list", list);
		return "criterion_payroll";
	}
	
	@PostMapping("/criterionPayrollRegister.do")
	public String criterionPayrollRegister(HttpServletRequest request) {
		String code = request.getParameter("code");
		String type = request.getParameter("type");
		String status = request.getParameter("status");
		String name = request.getParameter("name");
		
		CriterionDto criterionDto = new CriterionDto(code, type, status, name);
		list.add(criterionDto);
		
		return "redirect:/criterionPayroll.do";
	}
	
	@PostMapping("/criterionPayrollUpdate.do")
	public String criterionPayrollUpdate(HttpServletRequest request) {
		String code = request.getParameter("code");
		String type = request.getParameter("type");
		String status = request.getParameter("status");
		String name = request.getParameter("name");
		
		list = list.stream().map(dto -> {
			if (dto.getCode().equals(code)) {
				dto.setType(type);
				dto.setStatus(status);
				dto.setName(name);
				return dto;
			}
			return dto;
		}).collect(Collectors.toList());
		
		return "redirect:/criterionPayroll.do";
	}
	
	@PostMapping("/criterionPayrollDelete.do")
	public String criterionPayrollDelete(HttpServletRequest request) {
		String code = request.getParameter("code");
		
		list = list.stream().filter(dto -> !dto.getCode().equals(code))
				.collect(Collectors.toList());
		
		return "redirect:/criterionPayroll.do";
	}
	
}
