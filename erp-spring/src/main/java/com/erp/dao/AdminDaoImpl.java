package com.erp.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.erp.vo.AdminVO;

@Repository
public class AdminDaoImpl implements AdminDao {
	
	private static final String NAMESPACE = "com.erp.mapper.AdminMapper";
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public List<AdminVO> selectAdmin() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + ".selectAdmin");
	}

}
