package com.erp.service;

import com.erp.dto.HRDepMemDelDto;
import com.erp.dto.HRDepMemDto;
import com.erp.dto.HRDepMemUpdDto;

public interface HRDepMemService {
	
	HRDepMemDto hrDepartmentMember(HRDepMemDto dto);
	HRDepMemUpdDto hrDepartmentMemberUpdate(HRDepMemUpdDto dto);
	HRDepMemDelDto hrDepartmentMemberDelete(HRDepMemDelDto dto);

}
