package com.erp.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.erp.vo.SampleVO;

@Repository
public class SampleDaoImpl implements SampleDao {
	
	private static final String NAMESPACE = "sampleMapper";
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public List<SampleVO> selectSample() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + ".selectSample");
	}

}
