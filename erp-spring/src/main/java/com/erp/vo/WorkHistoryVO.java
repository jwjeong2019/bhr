package com.erp.vo;

import com.erp.dto.WorkHistoryDto;

public class WorkHistoryVO {
	
	private int id;
	private String term;
	private String project;
	private String company;
	private String work;
	
	public WorkHistoryDto toDto() {
		WorkHistoryDto dto = new WorkHistoryDto();
		dto.setId(id);
		dto.setTerm(term);
		dto.setProject(project);
		dto.setCompany(company);
		dto.setWork(work);
		return dto;
	}
	
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

}
