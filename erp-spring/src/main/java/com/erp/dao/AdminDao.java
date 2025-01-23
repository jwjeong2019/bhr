package com.erp.dao;

import java.util.List;

import com.erp.vo.AdminVO;

public interface AdminDao {
	
	public List<AdminVO> selectAdmin() throws Exception;

}
