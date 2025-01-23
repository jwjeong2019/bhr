package com.erp.service;

import java.util.List;
import java.util.stream.Collectors;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.erp.dao.CriterionDao;
import com.erp.dao.DepartmentDao;
import com.erp.dto.CriterionDto;
import com.erp.dto.DepartmentDto;
import com.erp.dto.HRDepDelDto;
import com.erp.dto.HRDepDto;
import com.erp.dto.HRDepInsDto;
import com.erp.vo.CriterionVO;
import com.erp.vo.DepartmentVO;

@Service
public class HRDepServiceImpl implements HRDepService {
	
	@Inject
	private DepartmentDao departmentDao;
	@Inject
	private CriterionDao criterionDao;

	@Override
	public HRDepDto hrDepartment(HRDepDto dtoReq) throws Exception {
		// TODO Auto-generated method stub
		HRDepDto dtoRes = new HRDepDto();
		
		CriterionDto dtoSel = new CriterionDto();
		dtoSel.setType("DEP");
		List<CriterionDto> dtoCriList = criterionDao.selectList(dtoSel)
				.stream()
				.map(CriterionVO::toDto)
//				.peek(t -> System.out.println("cri_id: " + t.getId()))
				.collect(Collectors.toList());
		
		List<DepartmentDto> dtoDepList = departmentDao.selectList(new DepartmentDto())
				.stream()
				.map(DepartmentVO::toDto)
//				.peek(t -> System.out.println("dep_id: " + t.getId()))
				.collect(Collectors.toList());
		
		dtoRes.setResCriList(dtoCriList);
		dtoRes.setResDepList(dtoDepList);
		return dtoRes;
	}

	@Override
	public HRDepInsDto hrDepartmentInsert(HRDepInsDto dtoReq) throws Exception {
		// TODO Auto-generated method stub
		HRDepInsDto dtoRes = new HRDepInsDto();
		
		DepartmentDto dtoIns = new DepartmentDto();
		dtoIns.setCriterion(new CriterionDto());
		dtoIns.getCriterion().setId(dtoReq.getReqCriId());
		int count = departmentDao.insert(dtoIns);
		
		if (count > 0) dtoRes.setSuccess(true);
		dtoRes.setResRedirectUrl("redirect:/hrDepartment.do");
		return dtoRes;
	}

	@Override
	public HRDepDelDto hrDepartmentDelete(HRDepDelDto dtoReq) throws Exception {
		// TODO Auto-generated method stub
		HRDepDelDto dtoRes = new HRDepDelDto();
		
		DepartmentDto dtoDel = new DepartmentDto();
		dtoDel.setId(dtoReq.getReqId());
		int count = departmentDao.delete(dtoDel);
		
		if (count > 0) dtoRes.setSuccess(true);
		dtoRes.setResRedirectUrl("redirect:/hrDepartment.do");
		return dtoRes;
	}

}
