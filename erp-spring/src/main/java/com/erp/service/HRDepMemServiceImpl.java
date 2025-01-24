package com.erp.service;

import java.util.List;
import java.util.stream.Collectors;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.erp.dao.DepartmentDao;
import com.erp.dao.EmployeeDao;
import com.erp.dto.DepartmentDto;
import com.erp.dto.EmployeeDto;
import com.erp.dto.HRDepMemDelDto;
import com.erp.dto.HRDepMemDto;
import com.erp.dto.HRDepMemUpdDto;
import com.erp.vo.DepartmentVO;
import com.erp.vo.EmployeeVO;

@Service
public class HRDepMemServiceImpl implements HRDepMemService {
	
	@Inject
	private DepartmentDao departmentDao;
	@Inject
	private EmployeeDao employeeDao;

	@Override
	public HRDepMemDto hrDepartmentMember(HRDepMemDto dtoReq) throws Exception {
		// TODO Auto-generated method stub
		HRDepMemDto dtoRes = new HRDepMemDto();
		
		List<DepartmentDto> dtoDepList = departmentDao.selectList(new DepartmentDto())
				.stream()
				.map(DepartmentVO::toDto)
				.collect(Collectors.toList());
		
		EmployeeDto dtoSel = new EmployeeDto();
		dtoSel.setSqlNullDep("null");
		List<EmployeeDto> dtoEmpList = employeeDao.selectList(dtoSel)
				.stream()
				.map(EmployeeVO::toDto)
				.collect(Collectors.toList());
		
		dtoSel.setSqlNullDep("not null");
		List<EmployeeDto> dtoMemList = employeeDao.selectList(dtoSel)
				.stream()
				.map(EmployeeVO::toDto)
				.collect(Collectors.toList());
		
		dtoRes.setResDepList(dtoDepList);
		dtoRes.setResEmpList(dtoEmpList);
		dtoRes.setResMemList(dtoMemList);
		return dtoRes;
	}

	@Override
	public HRDepMemUpdDto hrDepartmentMemberUpdate(HRDepMemUpdDto dtoReq) throws Exception {
		// TODO Auto-generated method stub
		HRDepMemUpdDto dtoRes = new HRDepMemUpdDto();
		
		EmployeeDto dtoUpd = new EmployeeDto();
		dtoUpd.setId(dtoReq.getReqEmpId());
		dtoUpd.setDepId(dtoReq.getReqDepId());
		int count = employeeDao.update(dtoUpd);
		
		if (count > 0) dtoRes.setSuccess(true);
		dtoRes.setResRedirectUrl("redirect:/hrDepartmentMember.do");
		return dtoRes;
	}

}
