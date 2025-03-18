package com.erp.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.erp.dto.EmployeeDto;
import com.erp.vo.EmployeeVO;

@Repository
public class EmployeeDaoImpl implements EmployeeDao {
	
	private static final String NAMESPACE = "com.erp.mapper.EmployeeMapper";
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public EmployeeVO selectOne(EmployeeDto dto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE + ".selectEmployee", dto);
	}
	
	@Override
	public List<EmployeeVO> selectList(EmployeeDto dto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + ".selectEmployee", dto);
	}

	@Override
	public int insert(EmployeeDto dto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(NAMESPACE + ".insertEmployee", dto);
	}
	
	@Override
	public int update(EmployeeDto dto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(NAMESPACE + ".updateEmployee", dto);
	}
	
	@Override
	public int updateSetDepIdNull(EmployeeDto dto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(NAMESPACE + ".updateEmployeeSetDepIdNull", dto);
	}

	@Override
	public int delete(EmployeeDto dto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.delete(NAMESPACE + ".deleteEmployee", dto);
	}

}
