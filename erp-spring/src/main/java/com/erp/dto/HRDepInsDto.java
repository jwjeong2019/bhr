package com.erp.dto;

public class HRDepInsDto {
	
	private int reqCriId;
	
	private boolean isSuccess;
	private String resRedirectUrl;
	
	public int getReqCriId() {
		return reqCriId;
	}
	public void setReqCriId(int reqCriId) {
		this.reqCriId = reqCriId;
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
