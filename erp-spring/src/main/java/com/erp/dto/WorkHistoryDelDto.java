package com.erp.dto;

import java.util.List;

public class WorkHistoryDelDto {
	
	private int empId;
	private List<WorkHistoryDto> list;
	
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public List<WorkHistoryDto> getList() {
		return list;
	}
	public void setList(List<WorkHistoryDto> list) {
		this.list = list;
	}
	
	

}
