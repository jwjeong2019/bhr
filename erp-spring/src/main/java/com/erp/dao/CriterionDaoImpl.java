package com.erp.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.erp.vo.CriterionVO;

@Repository
public class CriterionDaoImpl implements CriterionDao {
	
	private static final String NAMESPACE = "com.erp.mapper.CriterionMapper";
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public List<CriterionVO> selectCriterion() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + ".selectCriterion");
	}

}
