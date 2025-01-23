package com.erp.dto;

import java.util.Map;

public class LoginDto {
	
	private Map<String, ?> reqFlashMap;
	
	private String resMsg;

	public Map<String, ?> getReqFlashMap() {
		return reqFlashMap;
	}

	public void setReqFlashMap(Map<String, ?> reqFlashMap) {
		this.reqFlashMap = reqFlashMap;
	}

	public String getResMsg() {
		return resMsg;
	}

	public void setResMsg(String resMsg) {
		this.resMsg = resMsg;
	}

	

}
