package com.erp.dao;

import java.util.List;

import com.erp.dto.AdminDto;
import com.erp.vo.AdminVO;

public interface AdminDao {
	
	public AdminVO selectOne(AdminDto dto) throws Exception;
	public List<AdminVO> selectList(AdminDto dto) throws Exception;

}
