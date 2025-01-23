package com.erp.service;

import com.erp.dto.CriDepDelDto;
import com.erp.dto.CriDepDto;
import com.erp.dto.CriDepRegDto;
import com.erp.dto.CriDepUpdDto;

public interface CriterionDepService {
	
	CriDepDto criterionDepartment(CriDepDto dto) throws Exception;
	CriDepRegDto criterionDepartmentRegister(CriDepRegDto dto) throws Exception;
	CriDepUpdDto criterionDepartmentUpdate(CriDepUpdDto dto) throws Exception;
	CriDepDelDto criterionDepartmentDelete(CriDepDelDto dto) throws Exception;

}
