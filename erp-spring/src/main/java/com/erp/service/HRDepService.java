package com.erp.service;

import com.erp.dto.HRDepDelDto;
import com.erp.dto.HRDepDto;
import com.erp.dto.HRDepInsDto;

public interface HRDepService {
	
	HRDepDto hrDepartment(HRDepDto dto);
	HRDepInsDto hrDepartmentInsert(HRDepInsDto dto);
	HRDepDelDto hrDepartmentDelete(HRDepDelDto dto);

}
