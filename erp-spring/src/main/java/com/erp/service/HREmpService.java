package com.erp.service;

import com.erp.dto.HREmpDelDto;
import com.erp.dto.HREmpDto;
import com.erp.dto.HREmpRegDto;
import com.erp.dto.HREmpUpdDto;

public interface HREmpService {
	
	HREmpDto hrEmployee(HREmpDto dto) throws Exception;
	HREmpRegDto hrEmployeeRegister(HREmpRegDto dto) throws Exception;
	HREmpUpdDto hrEmployeeUpdate(HREmpUpdDto dto) throws Exception;
	HREmpDelDto hrEmployeeDelete(HREmpDelDto dto) throws Exception;

}
