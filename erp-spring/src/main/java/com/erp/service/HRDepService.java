package com.erp.service;

import com.erp.dto.HRDepDelDto;
import com.erp.dto.HRDepDto;
import com.erp.dto.HRDepInsDto;

public interface HRDepService {
	
	HRDepDto hrDepartment(HRDepDto dto) throws Exception;
	HRDepInsDto hrDepartmentInsert(HRDepInsDto dto) throws Exception;
	HRDepDelDto hrDepartmentDelete(HRDepDelDto dto) throws Exception;

}
