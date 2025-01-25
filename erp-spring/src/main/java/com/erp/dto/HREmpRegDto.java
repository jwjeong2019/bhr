package com.erp.dto;

import java.time.LocalDate;
import java.util.List;

public class HREmpRegDto {
	
//	private int id;
	private String reqCode;
	private String reqEmail;
	private String reqPassword;
	private String reqNickname;
	private String reqName;
	private LocalDate reqBirthday;
	private String reqPhone;
//	private String position;
	private String reqRole;
	private LocalDate reqJoinDate;
//	private Integer depId;
	private List<WorkHistoryDto> reqWorkHistory;
	
	private boolean isSuccess;
	private String resRedirectUrl;
	
	public String getReqCode() {
		return reqCode;
	}
	public void setReqCode(String reqCode) {
		this.reqCode = reqCode;
	}
	public String getReqEmail() {
		return reqEmail;
	}
	public void setReqEmail(String reqEmail) {
		this.reqEmail = reqEmail;
	}
	public String getReqPassword() {
		return reqPassword;
	}
	public void setReqPassword(String reqPassword) {
		this.reqPassword = reqPassword;
	}
	public String getReqNickname() {
		return reqNickname;
	}
	public void setReqNickname(String reqNickname) {
		this.reqNickname = reqNickname;
	}
	public String getReqName() {
		return reqName;
	}
	public void setReqName(String reqName) {
		this.reqName = reqName;
	}
	public LocalDate getReqBirthday() {
		return reqBirthday;
	}
	public void setReqBirthday(LocalDate reqBirthday) {
		this.reqBirthday = reqBirthday;
	}
	public String getReqPhone() {
		return reqPhone;
	}
	public void setReqPhone(String reqPhone) {
		this.reqPhone = reqPhone;
	}
	public String getReqRole() {
		return reqRole;
	}
	public void setReqRole(String reqRole) {
		this.reqRole = reqRole;
	}
	public LocalDate getReqJoinDate() {
		return reqJoinDate;
	}
	public void setReqJoinDate(LocalDate reqJoinDate) {
		this.reqJoinDate = reqJoinDate;
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
	public List<WorkHistoryDto> getReqWorkHistory() {
		return reqWorkHistory;
	}
	public void setReqWorkHistory(List<WorkHistoryDto> reqWorkHistory) {
		this.reqWorkHistory = reqWorkHistory;
	}
	@Override
	public String toString() {
		return "HREmpRegDto [reqCode=" + reqCode + ", reqEmail=" + reqEmail + ", reqPassword=" + reqPassword
				+ ", reqNickname=" + reqNickname + ", reqName=" + reqName + ", reqBirthday=" + reqBirthday
				+ ", reqPhone=" + reqPhone + ", reqRole=" + reqRole + ", reqJoinDate=" + reqJoinDate
				+ ", reqWorkHistory=" + reqWorkHistory + ", isSuccess=" + isSuccess + ", resRedirectUrl="
				+ resRedirectUrl + "]";
	}
	
}
