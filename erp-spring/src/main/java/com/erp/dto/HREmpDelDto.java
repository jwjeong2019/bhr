package com.erp.dto;

import java.util.List;

public class HREmpDelDto {
	
	private int reqEmpId;
	private List<WorkHistoryDto> reqWorkHistory;
	
	private boolean isSuccess;
	private String resRedirectUrl;
	
	public int getReqEmpId() {
		return reqEmpId;
	}
	public void setReqEmpId(int reqEmpId) {
		this.reqEmpId = reqEmpId;
	}
	public List<WorkHistoryDto> getReqWorkHistory() {
		return reqWorkHistory;
	}
	public void setReqWorkHistory(List<WorkHistoryDto> reqWorkHistory) {
		this.reqWorkHistory = reqWorkHistory;
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
