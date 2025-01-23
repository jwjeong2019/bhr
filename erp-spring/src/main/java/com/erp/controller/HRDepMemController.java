package com.erp.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.erp.dto.CriterionDto;
import com.erp.dto.DepartmentDto;
import com.erp.dto.EmployeeDto;

@Controller
public class HRDepMemController {
	
	private List<DepartmentDto> listDep = new ArrayList<>();
	private List<EmployeeDto> listEmp = new ArrayList<>();
	private List<EmployeeDto> listMem = new ArrayList<>();

	@RequestMapping("/hrDepartmentMember.do")
	public String hrDepartmentMember(Model model) {
		model.addAttribute("listDep", listDep);
		model.addAttribute("listEmp", listEmp);
		model.addAttribute("listMem", listMem);
		return "hr_department_member";
	}
	
	@PostMapping("/hrDepartmentMemberUpdate.do")
	public String hrDepartmentMemberUpdate(HttpServletRequest request) {
		int depId = Integer.parseInt(request.getParameter("depId"));
		int empId = Integer.parseInt(request.getParameter("empId"));
		
		// 부서
		DepartmentDto dep = listDep.stream()
				.filter(dto -> dto.getId() == depId)
				.findFirst()
				.get();
		// 사원
		EmployeeDto emp = listEmp.stream()
				.filter(dto -> dto.getId() == empId)
				.findFirst()
				.get();
		// 부서원 추가
		emp.setPosition("사원");
		emp.setDepartment(dep);
		listMem.add(emp);
		// 사원 리스트 제거
		listEmp = listEmp.stream()
				.filter(dto -> dto.getId() != empId)
				.collect(Collectors.toList());
		
		return "redirect:/hrDepartmentMember.do";
	}
	
	@PostMapping("/hrDepartmentMemberDelete.do")
	public String hrDepartmentMemberDelete(HttpServletRequest request) {
		int empId = Integer.parseInt(request.getParameter("empId"));
		
		// 사원
		EmployeeDto emp = listMem.stream()
				.filter(dto -> dto.getId() == empId)
				.findFirst()
				.get();
		// 사원 리스트 추가
		emp.setPosition(null);
		emp.setDepartment(null);
		listEmp.add(emp);
		// 부서원 제거
		listMem = listMem.stream()
				.filter(dto -> dto.getId() != empId)
				.collect(Collectors.toList());
		
		return "redirect:/hrDepartmentMember.do";
	}
	
}
