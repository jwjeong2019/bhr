package com.erp.dto;

public class HRDepMemUpdDto {
	
	private Integer reqEmpId;
	private Integer reqDepId;
	
	private boolean isSuccess;
	private String resRedirectUrl;
	
	public int getReqEmpId() {
		return reqEmpId;
	}
	public void setReqEmpId(Integer reqEmpId) {
		this.reqEmpId = reqEmpId;
	}
	public Integer getReqDepId() {
		return reqDepId;
	}
	public void setReqDepId(Integer reqDepId) {
		this.reqDepId = reqDepId;
	}
	public boolean isSuccess() {
		return isSuccess;
	}
	public void setSuccess(boolean isSuccess) {
		this.isSuccess = isSuccess;
	}
	public String getResRedirectUrl() {
		return resRedirectUrl;
	}
	public void setResRedirectUrl(String resRedirectUrl) {
		this.resRedirectUrl = resRedirectUrl;
	}

}
