package com.erp.service;

import com.erp.dto.CriPayDelDto;
import com.erp.dto.CriPayDto;
import com.erp.dto.CriPayRegDto;
import com.erp.dto.CriPayUpdDto;

public interface CriterionPayService {
	
	CriPayDto criterionPayroll(CriPayDto dto);
	CriPayRegDto criterionPayrollRegister(CriPayRegDto dto);
	CriPayUpdDto criterionPayrollUpdate(CriPayRegDto dto);
	CriPayDelDto criterionPayrollDelete(CriPayDelDto dto);

}
