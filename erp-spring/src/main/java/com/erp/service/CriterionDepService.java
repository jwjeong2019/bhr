package com.erp.service;

import com.erp.dto.CriDepDelDto;
import com.erp.dto.CriDepDto;
import com.erp.dto.CriDepRegDto;
import com.erp.dto.CriDepUpdDto;

public interface CriterionDepService {
	
	CriDepDto criterionDepartment(CriDepDto dto);
	CriDepRegDto criterionDepartmentRegister(CriDepRegDto dto);
	CriDepUpdDto criterionDepartmentUpdate(CriDepUpdDto dto);
	CriDepDelDto criterionDepartmentDelete(CriDepDelDto dto);

}
