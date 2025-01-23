package com.erp.dao;

import java.util.List;

import com.erp.vo.EmployeeVO;

public interface EmployeeDao {
	
	public List<EmployeeVO> selectEmployee() throws Exception;

}
