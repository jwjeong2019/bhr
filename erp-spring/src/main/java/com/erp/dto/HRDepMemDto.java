package com.erp.dto;

import java.util.List;

public class HRDepMemDto {
	
	private List<DepartmentDto> resDepList;
	private List<EmployeeDto> resEmpList;
	private List<EmployeeDto> resMemList;
	
	public List<DepartmentDto> getResDepList() {
		return resDepList;
	}
	public void setResDepList(List<DepartmentDto> resDepList) {
		this.resDepList = resDepList;
	}
	public List<EmployeeDto> getResEmpList() {
		return resEmpList;
	}
	public void setResEmpList(List<EmployeeDto> resEmpList) {
		this.resEmpList = resEmpList;
	}
	public List<EmployeeDto> getResMemList() {
		return resMemList;
	}
	public void setResMemList(List<EmployeeDto> resMemList) {
		this.resMemList = resMemList;
	}
	

}
