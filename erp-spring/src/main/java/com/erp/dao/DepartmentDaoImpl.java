package com.erp.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.erp.vo.DepartmentVO;

@Repository
public class DepartmentDaoImpl implements DepartmentDao {
	
	private static final String NAMESPACE = "com.erp.mapper.DepartmentMapper";
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public List<DepartmentVO> selectDepartment() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + ".selectDepartment");
	}

}
