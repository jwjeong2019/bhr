package com.erp.dao;

import java.util.List;

import com.erp.vo.SampleVO;

public interface SampleDao {
	
	public List<SampleVO> selectSample() throws Exception;

}
