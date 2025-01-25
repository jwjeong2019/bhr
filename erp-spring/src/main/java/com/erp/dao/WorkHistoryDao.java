package com.erp.dao;

import com.erp.dto.WorkHistoryDelDto;
import com.erp.dto.WorkHistoryDto;
import com.erp.dto.WorkHistoryInsDto;

public interface WorkHistoryDao {
	
	int insert(WorkHistoryInsDto dto) throws Exception;
	int update(WorkHistoryDto dto) throws Exception;
	int delete(WorkHistoryDelDto dto) throws Exception;

}
