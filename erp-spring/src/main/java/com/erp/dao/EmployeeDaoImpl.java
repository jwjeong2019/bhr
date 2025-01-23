package com.erp.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.erp.vo.EmployeeVO;

@Repository
public class EmployeeDaoImpl implements EmployeeDao {
	
	private static final String NAMESPACE = "com.erp.mapper.EmployeeMapper";
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public List<EmployeeVO> selectEmployee() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + ".selectEmployee");
	}

}
