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
public class HRDepController {
	
	public List<CriterionDto> list = new ArrayList<>();
	
	public HRDepController() {
		list.add(new CriterionDto("A0005", "DEVELOP", "Y", "개발2팀", "N"));
		list.add(new CriterionDto("A0006", "BUSINESS", "Y", "영업1팀", "N"));
		list.add(new CriterionDto("A0001", "MANAGE", "Y", "경영팀", "Y"));
		list.add(new CriterionDto("A0002", "HR", "Y", "인사팀", "Y"));
		list.add(new CriterionDto("A0003", "DEVELOP", "Y", "개발1팀", "Y"));
		list.add(new CriterionDto("A0004", "BUSINESS", "Y", "영업2팀", "Y"));
	}
	
	@RequestMapping("/hrDepartment.do")
	public String hrDepartment(Model model) {
		List<CriterionDto> listArrN = list.stream()
				.filter(dto -> dto.getArrangement().equals("N"))
				.collect(Collectors.toList());
		List<CriterionDto> listArrY = list.stream()
				.filter(dto -> dto.getArrangement().equals("Y"))
				.collect(Collectors.toList());
		
		model.addAttribute("listArrN", listArrN);
		model.addAttribute("listArrY", listArrY);
		return "hr_department";
	}
	
	@PostMapping("/hrDepartmentUpdate.do")
	public String hrDepartmentUpdate(HttpServletRequest request) {
		String code = request.getParameter("code");
		String arrangement = request.getParameter("arrangement");
		
		list = list.stream().map(dto -> {
			if (dto.getCode().equals(code)) {
				dto.setArrangement(arrangement);
				return dto;
			}
			return dto;
		}).collect(Collectors.toList());
		
		return "redirect:/hrDepartment.do";
	}
	
}
