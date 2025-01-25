package com.erp.vo;

import com.erp.dto.DepartmentDto;

public class DepartmentVO {
	
	private int id;
	private CriterionVO criterion;
	
	
	public DepartmentVO() {
		super();
	}

	public DepartmentVO(int id, CriterionVO criterion) {
		super();
		this.id = id;
		this.criterion = criterion;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public CriterionVO getCriterion() {
		return criterion;
	}
	public void setCriterion(CriterionVO criterion) {
		this.criterion = criterion;
	}
	
	public DepartmentDto toDto() {
		DepartmentDto dto = new DepartmentDto();
		dto.setId(id);
		dto.setCriterion(criterion.toDto());
		return dto;
	}

	@Override
	public String toString() {
		return "DepartmentVO [id=" + id + ", criterion=" + criterion + "]";
	}

}
