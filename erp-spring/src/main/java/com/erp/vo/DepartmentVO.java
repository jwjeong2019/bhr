package com.erp.vo;

public class DepartmentVO {
	
	private int id;
	private CriterionVO criterion;
	
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

}
