package com.erp.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.erp.dto.DepartmentDto;
import com.erp.vo.DepartmentVO;

@Repository
public class DepartmentDaoImpl implements DepartmentDao {
	
	private static final String NAMESPACE = "com.erp.mapper.DepartmentMapper";
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public List<DepartmentVO> selectList(DepartmentDto dto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + ".selectDepartment", dto);
	}

	@Override
	public int insert(DepartmentDto dto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(NAMESPACE + ".insertDepartment", dto);
	}

	@Override
	public int delete(DepartmentDto dto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.delete(NAMESPACE + ".deleteDepartment", dto);
	}

}
