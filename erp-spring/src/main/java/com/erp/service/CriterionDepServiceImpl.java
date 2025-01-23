package com.erp.service;

import java.util.List;
import java.util.stream.Collectors;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.erp.dao.CriterionDao;
import com.erp.dto.CriDepDelDto;
import com.erp.dto.CriDepDto;
import com.erp.dto.CriDepRegDto;
import com.erp.dto.CriDepUpdDto;
import com.erp.dto.CriterionDto;

@Service
public class CriterionDepServiceImpl implements CriterionDepService {
	
	@Inject
	private CriterionDao criterionDao;

	@Override
	public CriDepDto criterionDepartment(CriDepDto dtoReq) throws Exception {
		// TODO Auto-generated method stub
		CriDepDto dtoRes = new CriDepDto();
		
		List<CriterionDto> voList = criterionDao.selectList(new CriterionDto())
				.stream()
				.map(vo -> {
					CriterionDto dto = new CriterionDto();
					dto.setCode(vo.getCode());
					dto.setType(vo.getType());
					dto.setStatus1(vo.getStatus());
					dto.setName(vo.getName());
					return dto;
				})
				.collect(Collectors.toList());
		
		dtoRes.setResList(voList);
		return dtoRes;
	}

	@Override
	public CriDepRegDto criterionDepartmentRegister(CriDepRegDto dtoReq) throws Exception {
		// TODO Auto-generated method stub
		CriDepRegDto dtoRes = new CriDepRegDto();
		
		CriterionDto dtoIns = new CriterionDto();
		dtoIns.setCode(dtoReq.getReqCode());
		dtoIns.setType(dtoReq.getReqType());
		dtoIns.setStatus1(dtoReq.getReqStatus());
		dtoIns.setName(dtoReq.getReqName());
		int count = criterionDao.insert(dtoIns);
		
		if (count > 0) dtoRes.setSuccess(true);
		dtoRes.setResRedirectUrl("redirect:/criterionDepartment.do");
		return dtoRes;
	}

	@Override
	public CriDepUpdDto criterionDepartmentUpdate(CriDepUpdDto dtoReq) throws Exception {
		// TODO Auto-generated method stub
		CriDepUpdDto dtoRes = new CriDepUpdDto();
		
		CriterionDto dtoUpd = new CriterionDto();
		dtoUpd.setCode(dtoReq.getReqCode());
		dtoUpd.setType(dtoReq.getReqType());
		dtoUpd.setStatus1(dtoReq.getReqStatus());
		dtoUpd.setName(dtoReq.getReqName());
		int count = criterionDao.update(dtoUpd);
		
		if (count > 0) dtoRes.setSuccess(true);
		dtoRes.setResRedirectUrl("redirect:/criterionDepartment.do");
		return dtoRes;
	}

	@Override
	public CriDepDelDto criterionDepartmentDelete(CriDepDelDto dtoReq) throws Exception {
		// TODO Auto-generated method stub
		CriDepDelDto dtoRes = new CriDepDelDto();
		
		CriterionDto dtoDel = new CriterionDto();
		dtoDel.setCode(dtoReq.getReqCode());
		int count = criterionDao.delete(dtoDel);
		
		if (count > 0) dtoRes.setSuccess(true);
		dtoRes.setResRedirectUrl("redirect:/criterionDepartment.do");
		return dtoRes;
	}

}
