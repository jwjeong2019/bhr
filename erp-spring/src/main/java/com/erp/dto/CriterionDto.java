package com.erp.dto;

public class CriterionDto {
	
	private String code;
	private String type;
	private String status;
	private String name;

	public CriterionDto(String code, String type, String status, String name) {
		this.code = code;
		this.type = type;
		this.status = status;
		this.name = name;
	}
	
	public String getCode() {
		return code;
	}
	
	public String getType() {
		return type;
	}
	
	public String getStatus() {
		return status;
	}
	
	public String getName() {
		return name;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
	
}
