package com.erp.vo;

import com.erp.dto.CriterionDto;

public class CriterionVO {
	
	private int id;
	private String code;
	private String type;
	private char status;
	private String name;
	
	public CriterionVO(int id, String code, String type, char status, String name) {
		super();
		this.id = id;
		this.code = code;
		this.type = type;
		this.status = status;
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public char getStatus() {
		return status;
	}

	public void setStatus(char status) {
		this.status = status;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public CriterionDto toDto() {
		CriterionDto dto = new CriterionDto();
		dto.setId(id);
		dto.setCode(code);
		dto.setType(type);
		dto.setStatus(status);
		dto.setName(name);
		return dto;
	}

}
