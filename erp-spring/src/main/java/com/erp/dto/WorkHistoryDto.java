package com.erp.dto;

public class WorkHistoryDto {
	private int id;
	private String term;
	private String project;
	private String company;
	private String work;
	private int empId;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
	}
	public String getProject() {
		return project;
	}
	public void setProject(String project) {
		this.project = project;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getWork() {
		return work;
	}
	public void setWork(String work) {
		this.work = work;
	}
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	@Override
	public String toString() {
		return "WorkHistoryDto [id=" + id + ", term=" + term + ", project=" + project + ", company=" + company
				+ ", work=" + work + ", empId=" + empId + "]";
	}
}
