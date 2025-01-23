package com.erp.dao;

import java.util.List;

import com.erp.dto.CriterionDto;
import com.erp.vo.CriterionVO;

public interface CriterionDao {
	
	public CriterionVO selectOne(CriterionDto dto) throws Exception;
	public List<CriterionVO> selectList(CriterionDto dto) throws Exception;
	public int insert(CriterionDto dto) throws Exception;
	public int update(CriterionDto dto) throws Exception;
	public int delete(CriterionDto dto) throws Exception;

}
