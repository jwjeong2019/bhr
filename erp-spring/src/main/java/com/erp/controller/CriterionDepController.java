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
public class CriterionDepController {
	
	public List<CriterionDto> list = new ArrayList<>();
	
	public CriterionDepController() {
		list.add(new CriterionDto("A0001", "MANAGE", "Y", "경영팀", "Y"));
		list.add(new CriterionDto("A0002", "HR", "Y", "인사팀", "Y"));
		list.add(new CriterionDto("A0003", "R&D", "N", "연구팀", "Y"));
	}
	
	@RequestMapping("/criterionDepartment.do")
	public String criterionDepartment(HttpServletRequest request, Model model) {
		model.addAttribute("list", list);
		return "criterion_department";
	}
	
	@PostMapping("/criterionDepartmentRegister.do")
	public String criterionDepartmentRegister(HttpServletRequest request) {
		String code = request.getParameter("code");
		String type = request.getParameter("type");
		String status = request.getParameter("status");
		String name = request.getParameter("name");
		
		CriterionDto criterionDto = new CriterionDto(code, type, status, name, "Y");
		list.add(criterionDto);
		
		return "redirect:/criterionDepartment.do";
	}
	
	@PostMapping("/criterionDepartmentUpdate.do")
	public String criterionDepartmentUpdate(HttpServletRequest request) {
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
		
		return "redirect:/criterionDepartment.do";
	}
	
	@PostMapping("/criterionDepartmentDelete.do")
	public String criterionDepartmentDelete(HttpServletRequest request) {
		String code = request.getParameter("code");
		
		list = list.stream().filter(dto -> !dto.getCode().equals(code))
				.collect(Collectors.toList());
		
		return "redirect:/criterionDepartment.do";
	}
	
}
