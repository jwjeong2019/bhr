package com.erp.dto;

public class CriDepDelDto {
	
	private int reqId;
	
	private boolean isSuccess;
	private String resRedirectUrl;
	
	public int getReqId() {
		return reqId;
	}
	public void setReqId(int reqId) {
		this.reqId = reqId;
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
