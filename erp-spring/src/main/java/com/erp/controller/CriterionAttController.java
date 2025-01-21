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
public class CriterionAttController {
	
	public List<CriterionDto> list = new ArrayList<>();
	
	public CriterionAttController() {
		list.add(new CriterionDto("B0001", "INNER", "Y", "출근"));
		list.add(new CriterionDto("B0002", "INNER", "Y", "지각"));
		list.add(new CriterionDto("B0003", "INNER", "N", "결근"));
		list.add(new CriterionDto("B0004", "OUTER", "N", "외근"));
		list.add(new CriterionDto("B0005", "OUTER", "N", "출장"));
		list.add(new CriterionDto("B0006", "INNER", "N", "연장"));
		list.add(new CriterionDto("B0007", "INNER", "N", "휴가"));
	}
	
	@RequestMapping("/criterionAttendance.do")
	public String criterionAttendance(Model model) {
		model.addAttribute("list", list);
		return "criterion_attendance";
	}
	
	@PostMapping("/criterionAttendanceRegister.do")
	public String criterionAttendanceRegister(HttpServletRequest request) {
		String code = request.getParameter("code");
		String type = request.getParameter("type");
		String status = request.getParameter("status");
		String name = request.getParameter("name");
		
		CriterionDto criterionDto = new CriterionDto(code, type, status, name);
		list.add(criterionDto);
		
		return "redirect:/criterionAttendance.do";
	}
	
	@PostMapping("/criterionAttendanceUpdate.do")
	public String criterionAttendanceUpdate(HttpServletRequest request) {
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
		
		return "redirect:/criterionAttendance.do";
	}
	
	@PostMapping("/criterionAttendanceDelete.do")
	public String criterionAttendanceDelete(HttpServletRequest request) {
		String code = request.getParameter("code");
		
		list = list.stream().filter(dto -> !dto.getCode().equals(code))
				.collect(Collectors.toList());
		
		return "redirect:/criterionAttendance.do";
	}

}
