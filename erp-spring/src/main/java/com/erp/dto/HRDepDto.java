package com.erp.dto;

import java.util.List;

public class HRDepDto {
	
	private List<CriterionDto> resCriList;
	private List<DepartmentDto> resDepList;
	
	public List<CriterionDto> getResCriList() {
		return resCriList;
	}
	public void setResCriList(List<CriterionDto> resCriList) {
		this.resCriList = resCriList;
	}
	public List<DepartmentDto> getResDepList() {
		return resDepList;
	}
	public void setResDepList(List<DepartmentDto> resDepList) {
		this.resDepList = resDepList;
	}

	
}
