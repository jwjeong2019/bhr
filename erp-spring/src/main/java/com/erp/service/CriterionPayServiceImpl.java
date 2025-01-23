package com.erp.service;

import java.util.List;
import java.util.stream.Collectors;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.erp.dao.CriterionDao;
import com.erp.dto.CriPayDelDto;
import com.erp.dto.CriPayDto;
import com.erp.dto.CriPayRegDto;
import com.erp.dto.CriPayUpdDto;
import com.erp.dto.CriterionDto;

@Service
public class CriterionPayServiceImpl implements CriterionPayService {

	@Inject
	private CriterionDao criterionDao;
	
	@Override
	public CriPayDto criterionPayroll(CriPayDto dtoReq) throws Exception {
		// TODO Auto-generated method stub
		CriPayDto dtoRes = new CriPayDto();
		
		CriterionDto dtoSel = new CriterionDto();
		dtoSel.setType("PAY");
		List<CriterionDto> voList = criterionDao.selectList(dtoSel)
				.stream()
				.map(vo -> {
					CriterionDto dto = new CriterionDto();
					dto.setCode(vo.getCode());
					dto.setType(vo.getType());
					dto.setStatus(vo.getStatus());
					dto.setName(vo.getName());
					return dto;
				})
				.collect(Collectors.toList());
		
		dtoRes.setResList(voList);
		return dtoRes;
	}

	@Override
	public CriPayRegDto criterionPayrollRegister(CriPayRegDto dtoReq) throws Exception {
		// TODO Auto-generated method stub
		CriPayRegDto dtoRes = new CriPayRegDto();
		
		CriterionDto dtoIns = new CriterionDto();
		dtoIns.setCode(dtoReq.getReqCode());
		dtoIns.setType(dtoReq.getReqType());
		dtoIns.setStatus(dtoReq.getReqStatus());
		dtoIns.setName(dtoReq.getReqName());
		int count = criterionDao.insert(dtoIns);
		
		if (count > 0) dtoRes.setSuccess(true);
		dtoRes.setResRedirectUrl("redirect:/criterionPayroll.do");
		return dtoRes;
	}

	@Override
	public CriPayUpdDto criterionPayrollUpdate(CriPayUpdDto dtoReq) throws Exception {
		// TODO Auto-generated method stub
		CriPayUpdDto dtoRes = new CriPayUpdDto();
		
		CriterionDto dtoUpd = new CriterionDto();
		dtoUpd.setCode(dtoReq.getReqCode());
		dtoUpd.setType(dtoReq.getReqType());
		dtoUpd.setStatus(dtoReq.getReqStatus());
		dtoUpd.setName(dtoReq.getReqName());
		int count = criterionDao.update(dtoUpd);
		
		if (count > 0) dtoRes.setSuccess(true);
		dtoRes.setResRedirectUrl("redirect:/criterionPayroll.do");
		return dtoRes;
	}

	@Override
	public CriPayDelDto criterionPayrollDelete(CriPayDelDto dtoReq) throws Exception {
		// TODO Auto-generated method stub
		CriPayDelDto dtoRes = new CriPayDelDto();
		
		CriterionDto dtoDel = new CriterionDto();
		dtoDel.setCode(dtoReq.getReqCode());
		int count = criterionDao.delete(dtoDel);
		
		if (count > 0) dtoRes.setSuccess(true);
		dtoRes.setResRedirectUrl("redirect:/criterionPayroll.do");
		return dtoRes;
	}

}
