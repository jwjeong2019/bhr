package com.erp.dto;

public class DepartmentDto {
	
	private int id;
	private CriterionDto criterion;
	
	public DepartmentDto(int id, CriterionDto criterion) {
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

	public CriterionDto getCriterion() {
		return criterion;
	}

	public void setCriterion(CriterionDto criterion) {
		this.criterion = criterion;
	}

}
