package com.erp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.erp.dao.SampleDao;
import com.erp.vo.SampleVO;

@Service
public class SampleServiceImpl implements SampleService {
	
	@Inject
	private SampleDao dao;

	@Override
	public List<SampleVO> getSampleList() throws Exception {
		// TODO Auto-generated method stub
		return dao.selectSample();
	}

}
