package com.erp.service;

import java.util.List;
import java.util.stream.Collectors;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.erp.dao.EmployeeDao;
import com.erp.dao.WorkHistoryDao;
import com.erp.dto.EmployeeDto;
import com.erp.dto.HREmpDelDto;
import com.erp.dto.HREmpDto;
import com.erp.dto.HREmpRegDto;
import com.erp.dto.HREmpUpdDto;
import com.erp.dto.WorkHistoryDelDto;
import com.erp.dto.WorkHistoryDto;
import com.erp.dto.WorkHistoryInsDto;
import com.erp.vo.EmployeeVO;

@Service
public class HREmpServiceImpl implements HREmpService {
	
	@Inject
	private EmployeeDao employeeDao;
	
	@Inject
	private WorkHistoryDao workHistoryDao;

	@Override
	public HREmpDto hrEmployee(HREmpDto dtoReq) throws Exception {
		// TODO Auto-generated method stub
		HREmpDto dtoRes = new HREmpDto();
		
		List<EmployeeDto> dtoList = employeeDao.selectList(null)
				.stream()
				.map(EmployeeVO::toDto)
				.collect(Collectors.toList());
		
		dtoRes.setResList(dtoList);
		return dtoRes;
	}

	@Override
	public HREmpRegDto hrEmployeeRegister(HREmpRegDto dtoReq) throws Exception {
		// TODO Auto-generated method stub
		HREmpRegDto dtoRes = new HREmpRegDto();
		
		EmployeeDto dtoIns = new EmployeeDto();
		dtoIns.setCode(dtoReq.getReqCode());
		dtoIns.setEmail(dtoReq.getReqEmail());
		dtoIns.setPassword(dtoReq.getReqPassword());
		dtoIns.setNickname(dtoReq.getReqNickname());
		dtoIns.setName(dtoReq.getReqName());
		dtoIns.setPhone(dtoReq.getReqPhone());
		dtoIns.setBirthday(dtoReq.getReqBirthday());
		dtoIns.setJoinDate(dtoReq.getReqJoinDate());
		dtoIns.setRole(dtoReq.getReqRole());
		int countEmpIns = employeeDao.insert(dtoIns);
		
		WorkHistoryInsDto dtoWorkHisIns = new WorkHistoryInsDto();
		dtoWorkHisIns.setEmpId(dtoIns.getId());
		dtoWorkHisIns.setList(dtoReq.getReqWorkHistory());
		int countWorkHisIns = workHistoryDao.insert(dtoWorkHisIns);
		
		if (countEmpIns > 0 && countWorkHisIns > 0) dtoRes.setSuccess(true);
		dtoRes.setResRedirectUrl("redirect:/hrEmployee.do");
		return dtoRes;
	}
	
	@Override
	public HREmpUpdDto hrEmployeeUpdate(HREmpUpdDto dtoReq) throws Exception {
		// TODO Auto-generated method stub
		HREmpUpdDto dtoRes = new HREmpUpdDto();
		
		EmployeeDto dtoEmpUpd = new EmployeeDto();
		dtoEmpUpd.setId(dtoReq.getReqId());
		dtoEmpUpd.setCode(dtoReq.getReqCode());
		dtoEmpUpd.setEmail(dtoReq.getReqEmail());
		dtoEmpUpd.setPassword(dtoReq.getReqPassword());
		dtoEmpUpd.setNickname(dtoReq.getReqNickname());
		dtoEmpUpd.setName(dtoReq.getReqName());
		dtoEmpUpd.setPhone(dtoReq.getReqPhone());
		dtoEmpUpd.setBirthday(dtoReq.getReqBirthday());
		dtoEmpUpd.setJoinDate(dtoReq.getReqJoinDate());
		dtoEmpUpd.setRole(dtoReq.getReqRole());
		int countEmpUpd = employeeDao.update(dtoEmpUpd);
		
		dtoReq.getReqWorkHistory().stream().forEach(dto -> {
			 try {
				workHistoryDao.update(dto);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		});
		
		WorkHistoryInsDto dtoWorkHisIns = new WorkHistoryInsDto();
		dtoWorkHisIns.setEmpId(dtoReq.getReqId());
		dtoWorkHisIns.setList(dtoReq.getReqWorkHistoryReg());
		int countWorkHisIns = workHistoryDao.insert(dtoWorkHisIns);
		
		if (countEmpUpd > 0 && countWorkHisIns > 0) dtoRes.setSuccess(true);
		dtoRes.setResRedirectUrl("redirect:/hrEmployee.do");
		return dtoRes;
	}

	@Override
	public HREmpDelDto hrEmployeeDelete(HREmpDelDto dtoReq) throws Exception {
		// TODO Auto-generated method stub
		HREmpDelDto dtoRes = new HREmpDelDto();
		
		WorkHistoryDelDto dtoWorkHisDel = new WorkHistoryDelDto();
		dtoWorkHisDel.setEmpId(dtoReq.getReqEmpId());
		int countWorkHisDel = workHistoryDao.delete(dtoWorkHisDel);
		
		EmployeeDto dtoEmpDel = new EmployeeDto();
		dtoEmpDel.setId(dtoReq.getReqEmpId());
		int countEmpDel = employeeDao.delete(dtoEmpDel);
		
		if (countEmpDel > 0 && countWorkHisDel > 0) dtoRes.setSuccess(true);
		dtoRes.setResRedirectUrl("redirect:/hrEmployee.do");
		return dtoRes;
	}

}
