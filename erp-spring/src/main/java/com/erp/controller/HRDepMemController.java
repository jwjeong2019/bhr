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
	
	public HRDepMemController() {
		listDep.add(new DepartmentDto(1, new CriterionDto("A0001", "MANAGE", "Y", "경영팀", "Y")));
		listDep.add(new DepartmentDto(2, new CriterionDto("A0002", "HR", "Y", "인사팀", "Y")));
		listDep.add(new DepartmentDto(3, new CriterionDto("A0003", "DEVELOP", "Y", "개발1팀", "Y")));
		listDep.add(new DepartmentDto(4, new CriterionDto("A0004", "BUSINESS", "Y", "영업1팀", "Y")));
		
		listEmp.add(new EmployeeDto(1, "E0001", "emp1@epr.kr", "1234", "준", "이형준", null, "USER", LocalDate.now(), null));
		listEmp.add(new EmployeeDto(2, "E0002", "emp2@epr.kr", "1234", "크리스탈", "김미주", null, "USER", LocalDate.now(), null));
		listEmp.add(new EmployeeDto(3, "E0003", "emp3@epr.kr", "1234", "베티", "최희영", null, "USER", LocalDate.now(), null));
		listEmp.add(new EmployeeDto(4, "E0004", "emp4@epr.kr", "1234", "마이크", "정우영", null, "USER", LocalDate.now(), null));
		
		listMem.add(new EmployeeDto(5, "E0005", "emp5@epr.kr", "1234", "토니", "박우식", "대리", "USER", LocalDate.now(), listDep.get(2)));
		listMem.add(new EmployeeDto(6, "E0006", "emp6@epr.kr", "1234", "에일리", "홍연화", "사원", "USER", LocalDate.now(), listDep.get(0)));
	}

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
