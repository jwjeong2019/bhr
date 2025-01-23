package com.erp.service;

import com.erp.dto.CriAttDelDto;
import com.erp.dto.CriAttDto;
import com.erp.dto.CriAttRegDto;
import com.erp.dto.CriAttUpdDto;

public interface CriterionAttService {
	
	CriAttDto criterionAttendance(CriAttDto dto) throws Exception;
	CriAttRegDto criterionAttendanceRegister(CriAttRegDto dto) throws Exception;
	CriAttUpdDto criterionAttendanceUpdate(CriAttUpdDto dto) throws Exception;
	CriAttDelDto criterionAttendanceDelete(CriAttDelDto dto) throws Exception;

}
