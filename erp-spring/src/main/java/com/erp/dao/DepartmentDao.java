package com.erp.dao;

import java.util.List;

import com.erp.vo.DepartmentVO;

public interface DepartmentDao {
	
	public List<DepartmentVO> selectDepartment() throws Exception;

}
