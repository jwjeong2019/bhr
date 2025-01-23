package com.erp.service;

import java.util.List;
import java.util.stream.Collectors;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.erp.dao.CriterionDao;
import com.erp.dto.CriAttDelDto;
import com.erp.dto.CriAttDto;
import com.erp.dto.CriAttRegDto;
import com.erp.dto.CriAttUpdDto;
import com.erp.dto.CriterionDto;

@Service
public class CriterionAttServiceImpl implements CriterionAttService {
	
	@Inject
	private CriterionDao criterionDao;

	@Override
	public CriAttDto criterionAttendance(CriAttDto dtoReq) throws Exception {
		// TODO Auto-generated method stub
		CriAttDto dtoRes = new CriAttDto();
		
		CriterionDto dtoSel = new CriterionDto();
		dtoSel.setType("ATT");
		List<CriterionDto> voList = criterionDao.selectList(dtoSel)
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
	public CriAttRegDto criterionAttendanceRegister(CriAttRegDto dtoReq) throws Exception {
		// TODO Auto-generated method stub
		CriAttRegDto dtoRes = new CriAttRegDto();
		
		CriterionDto dtoIns = new CriterionDto();
		dtoIns.setCode(dtoReq.getReqCode());
		dtoIns.setType(dtoReq.getReqType());
		dtoIns.setStatus1(dtoReq.getReqStatus());
		dtoIns.setName(dtoReq.getReqName());
		int count = criterionDao.insert(dtoIns);
		
		if (count > 0) dtoRes.setSuccess(true);
		dtoRes.setResRedirectUrl("redirect:/criterionAttendance.do");
		return dtoRes;
	}

	@Override
	public CriAttUpdDto criterionAttendanceUpdate(CriAttUpdDto dtoReq) throws Exception {
		// TODO Auto-generated method stub
		CriAttUpdDto dtoRes = new CriAttUpdDto();
		
		CriterionDto dtoUpd = new CriterionDto();
		dtoUpd.setCode(dtoReq.getReqCode());
		dtoUpd.setType(dtoReq.getReqType());
		dtoUpd.setStatus1(dtoReq.getReqStatus());
		dtoUpd.setName(dtoReq.getReqName());
		int count = criterionDao.update(dtoUpd);
		
		if (count > 0) dtoRes.setSuccess(true);
		dtoRes.setResRedirectUrl("redirect:/criterionAttendance.do");
		return dtoRes;
	}

	@Override
	public CriAttDelDto criterionAttendanceDelete(CriAttDelDto dtoReq) throws Exception {
		// TODO Auto-generated method stub
		CriAttDelDto dtoRes = new CriAttDelDto();
		
		CriterionDto dtoDel = new CriterionDto();
		dtoDel.setCode(dtoReq.getReqCode());
		int count = criterionDao.delete(dtoDel);
		
		if (count > 0) dtoRes.setSuccess(true);
		dtoRes.setResRedirectUrl("redirect:/criterionAttendance.do");
		return dtoRes;
	}

}
