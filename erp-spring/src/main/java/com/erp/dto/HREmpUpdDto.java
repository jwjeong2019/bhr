package com.erp.dto;

import java.time.LocalDate;
import java.util.List;

public class HREmpUpdDto {
	
	private int reqId;
	private String reqCode;
	private String reqEmail;
	private String reqPassword;
	private String reqNickname;
	private String reqName;
	private LocalDate reqBirthday;
	private String reqPhone;
	private String reqPosition;
	private String reqRole;
	private LocalDate reqJoinDate;
//	private Integer depId;
	private List<WorkHistoryDto> reqWorkHistory;
	private List<WorkHistoryDto> reqWorkHistoryReg;
	
	private boolean isSuccess;
	private String resRedirectUrl;
	
	public int getReqId() {
		return reqId;
	}
	public void setReqId(int reqId) {
		this.reqId = reqId;
	}
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
	public String getReqPosition() {
		return reqPosition;
	}
	public void setReqPosition(String reqPosition) {
		this.reqPosition = reqPosition;
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
	public List<WorkHistoryDto> getReqWorkHistory() {
		return reqWorkHistory;
	}
	public void setReqWorkHistory(List<WorkHistoryDto> reqWorkHistory) {
		this.reqWorkHistory = reqWorkHistory;
	}
	public List<WorkHistoryDto> getReqWorkHistoryReg() {
		return reqWorkHistoryReg;
	}
	public void setReqWorkHistoryReg(List<WorkHistoryDto> reqWorkHistoryReg) {
		this.reqWorkHistoryReg = reqWorkHistoryReg;
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
	@Override
	public String toString() {
		return "HREmpUpdDto [reqId=" + reqId + ", reqCode=" + reqCode + ", reqEmail=" + reqEmail + ", reqPassword="
				+ reqPassword + ", reqNickname=" + reqNickname + ", reqName=" + reqName + ", reqBirthday=" + reqBirthday
				+ ", reqPhone=" + reqPhone + ", reqPosition=" + reqPosition + ", reqRole=" + reqRole + ", reqJoinDate="
				+ reqJoinDate + ", reqWorkHistory=" + reqWorkHistory + ", reqWorkHistoryReg=" + reqWorkHistoryReg
				+ ", isSuccess=" + isSuccess + ", resRedirectUrl=" + resRedirectUrl + "]";
	}
	
	
}
