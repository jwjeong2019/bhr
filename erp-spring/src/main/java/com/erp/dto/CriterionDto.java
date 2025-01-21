package com.erp.dto;

public class CriterionDto {
	
	private String code;
	private String type;
	private String status;
	private String name;
	private String arrangement; // 제거 예정
	
	public CriterionDto(String code, String type, String status, String name, String arrangement) {
		super();
		this.code = code;
		this.type = type;
		this.status = status;
		this.name = name;
		this.arrangement = arrangement;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getArrangement() {
		return arrangement;
	}

	public void setArrangement(String arrangement) {
		this.arrangement = arrangement;
	}
	
}
