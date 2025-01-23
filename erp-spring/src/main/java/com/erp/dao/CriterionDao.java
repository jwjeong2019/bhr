package com.erp.dao;

import java.util.List;

import com.erp.vo.CriterionVO;

public interface CriterionDao {
	
	public List<CriterionVO> selectCriterion() throws Exception;

}
