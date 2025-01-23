package com.erp.dao;

import java.util.List;

import com.erp.dto.EmployeeDto;
import com.erp.vo.EmployeeVO;

public interface EmployeeDao {
	
	public EmployeeVO selectOne(EmployeeDto dto) throws Exception;
	public List<EmployeeVO> selectList(EmployeeDto dto) throws Exception;

}
