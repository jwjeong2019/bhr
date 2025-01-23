package com.erp.dto;

public class LoginActionDto {
	
	private String reqId;
	private String reqPwd;
	
	private boolean isSuccess;
	private int resId;
	private String resEmail;
	private String resName;
	private String resRole;
	private String resRedirectUrl;
	
	public String getReqId() {
		return reqId;
	}
	public void setReqId(String reqId) {
		this.reqId = reqId;
	}
	public String getReqPwd() {
		return reqPwd;
	}
	public void setReqPwd(String reqPwd) {
		this.reqPwd = reqPwd;
	}
	public boolean isSuccess() {
		return isSuccess;
	}
	public void setSuccess(boolean isSuccess) {
		this.isSuccess = isSuccess;
	}
	public int getResId() {
		return resId;
	}
	public void setResId(int resId) {
		this.resId = resId;
	}
	public String getResEmail() {
		return resEmail;
	}
	public void setResEmail(String resEmail) {
		this.resEmail = resEmail;
	}
	public String getResName() {
		return resName;
	}
	public void setResName(String resName) {
		this.resName = resName;
	}
	public String getResRole() {
		return resRole;
	}
	public void setResRole(String resRole) {
		this.resRole = resRole;
	}
	public String getResRedirectUrl() {
		return resRedirectUrl;
	}
	public void setResRedirectUrl(String resRedirectUrl) {
		this.resRedirectUrl = resRedirectUrl;
	}
	
	

}
