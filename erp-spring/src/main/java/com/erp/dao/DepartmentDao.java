package com.erp.dao;

import java.util.List;

import com.erp.dto.DepartmentDto;
import com.erp.vo.DepartmentVO;

public interface DepartmentDao {
	
	public List<DepartmentVO> selectList(DepartmentDto dto) throws Exception;
	public int insert(DepartmentDto dto) throws Exception;
	public int delete(DepartmentDto dto) throws Exception;

}
