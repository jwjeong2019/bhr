package com.erp.service;

import com.erp.dto.HRDepMemDto;
import com.erp.dto.HRDepMemUpdDto;

public interface HRDepMemService {
	
	HRDepMemDto hrDepartmentMember(HRDepMemDto dto) throws Exception;
	HRDepMemUpdDto hrDepartmentMemberUpdate(HRDepMemUpdDto dto) throws Exception;

}
