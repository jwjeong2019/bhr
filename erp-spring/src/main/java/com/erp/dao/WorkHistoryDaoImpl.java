package com.erp.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.erp.dto.WorkHistoryDelDto;
import com.erp.dto.WorkHistoryDto;
import com.erp.dto.WorkHistoryInsDto;

@Repository
public class WorkHistoryDaoImpl implements WorkHistoryDao {
	
	private static final String NAMESPACE = "com.erp.mapper.WorkHistoryMapper";
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public int insert(WorkHistoryInsDto dto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(NAMESPACE + ".insertWorkHistory", dto);
	}

	@Override
	public int update(WorkHistoryDto dto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(NAMESPACE + ".updateWorkHistory", dto);
	}

	@Override
	public int delete(WorkHistoryDelDto dto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.delete(NAMESPACE + ".deleteWorkHistory", dto);
	}

}
