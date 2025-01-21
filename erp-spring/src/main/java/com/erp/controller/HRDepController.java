package com.erp.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.erp.dto.CriterionDto;
import com.erp.dto.DepartmentDto;

@Controller
public class HRDepController {
	
	public List<CriterionDto> listCri = new ArrayList<>();
	public List<DepartmentDto> listDep = new ArrayList<>();
	
	public HRDepController() {
		listCri.add(new CriterionDto("A0005", "DEVELOP", "Y", "개발2팀", "N"));
		listCri.add(new CriterionDto("A0006", "BUSINESS", "Y", "영업1팀", "N"));
		listCri.add(new CriterionDto("A0001", "MANAGE", "Y", "경영팀", "Y"));
		listCri.add(new CriterionDto("A0002", "HR", "Y", "인사팀", "Y"));
		listCri.add(new CriterionDto("A0003", "DEVELOP", "Y", "개발1팀", "Y"));
		listCri.add(new CriterionDto("A0004", "BUSINESS", "Y", "영업2팀", "Y"));
	}
	
	@RequestMapping("/hrDepartment.do")
	public String hrDepartment(HttpServletRequest request, Model model) {
		Map<String, ?> reqFlashMap = RequestContextUtils.getInputFlashMap(request);
		if (reqFlashMap != null) {
			model.addAttribute("msg", (String) reqFlashMap.get("msg"));
		}
		
		model.addAttribute("listCri", listCri);
		model.addAttribute("listDep", listDep);
		return "hr_department";
	}
	
	@PostMapping("/hrDepartmentInsert.do")
	public String hrDepartmentInsert(HttpServletRequest request, RedirectAttributes ra) {
		String code = request.getParameter("code");
		
		// 중복 확인
		long count = listDep.stream()
				.filter(dto -> dto.getCriterion().getCode().equals(code))
				.count();
		if (count > 0) {
			ra.addFlashAttribute("msg", "already existing Department.");
			return "redirect:/hrDepartment.do";
		}
		
		// 부서 추가
		List<CriterionDto> selectedCri = listCri.stream()
				.filter(dto -> dto.getCode().equals(code))
				.collect(Collectors.toList());
		
		listDep.add(new DepartmentDto(listDep.size() + 1, selectedCri.get(0)));
		
		return "redirect:/hrDepartment.do";
	}
	
	@PostMapping("/hrDepartmentDelete.do")
	public String hrDepartmentDelete(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		
		listDep = listDep.stream()
				.filter(dto -> dto.getId() != id)
				.collect(Collectors.toList());
		
		return "redirect:/hrDepartment.do";
	}
	
}
