package com.erp.service;

import com.erp.dto.CriAttDelDto;
import com.erp.dto.CriAttDto;
import com.erp.dto.CriAttRegDto;
import com.erp.dto.CriAttUpdDto;

public interface CriterionAttService {
	
	CriAttDto criterionAttendance(CriAttDto dto);
	CriAttRegDto criterionAttendanceRegister(CriAttRegDto dto);
	CriAttUpdDto criterionAttendanceUpdate(CriAttUpdDto dto);
	CriAttDelDto criterionAttendanceDelete(CriAttDelDto dto);

}
