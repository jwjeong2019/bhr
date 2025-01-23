package com.erp.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.erp.dto.CriterionDto;
import com.erp.vo.CriterionVO;

@Repository
public class CriterionDaoImpl implements CriterionDao {
	
	private static final String NAMESPACE = "com.erp.mapper.CriterionMapper";
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public CriterionVO selectOne(CriterionDto dto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE + ".selectCriterion", dto);
	}

	@Override
	public List<CriterionVO> selectList(CriterionDto dto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + ".selectCriterion", dto);
	}

	@Override
	public int insert(CriterionDto dto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(NAMESPACE + ".insertCriterion", dto);
	}

	@Override
	public int update(CriterionDto dto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(NAMESPACE + ".updateCriterion", dto);
	}

	@Override
	public int delete(CriterionDto dto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.delete(NAMESPACE + ".deleteCriterion", dto);
	}

}
