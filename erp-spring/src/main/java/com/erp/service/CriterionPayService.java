package com.erp.service;

import com.erp.dto.CriPayDelDto;
import com.erp.dto.CriPayDto;
import com.erp.dto.CriPayRegDto;
import com.erp.dto.CriPayUpdDto;

public interface CriterionPayService {
	
	CriPayDto criterionPayroll(CriPayDto dto) throws Exception;
	CriPayRegDto criterionPayrollRegister(CriPayRegDto dto) throws Exception;
	CriPayUpdDto criterionPayrollUpdate(CriPayUpdDto dto) throws Exception;
	CriPayDelDto criterionPayrollDelete(CriPayDelDto dto) throws Exception;

}
