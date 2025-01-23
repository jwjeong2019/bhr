package com.erp.service;

import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.erp.dao.AdminDao;
import com.erp.dao.EmployeeDao;
import com.erp.dto.AdminDto;
import com.erp.dto.EmployeeDto;
import com.erp.dto.LoginActionDto;
import com.erp.dto.LoginDto;
import com.erp.dto.LogoutActionDto;
import com.erp.vo.AdminVO;
import com.erp.vo.EmployeeVO;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Inject
	private AdminDao adminDao;
	@Inject
	private EmployeeDao employeeDao;

	@Override
	public LoginDto login(LoginDto dtoReq) {
		// TODO Auto-generated method stub
		LoginDto dtoRes = new LoginDto();
		
		Map<String, ?> map = dtoReq.getReqFlashMap();
		if (map != null) {
			dtoRes.setResMsg((String) map.get("msg"));
		}
		
		return dtoRes;
	}

	@Override
	public LoginActionDto loginAction(LoginActionDto dtoReq) throws Exception {
		// TODO Auto-generated method stub
		LoginActionDto dtoRes = new LoginActionDto();
		
		AdminDto dtoAdm = new AdminDto();
		dtoAdm.setEmail(dtoReq.getReqId());
		dtoAdm.setPassword(dtoReq.getReqPwd());
		AdminVO adminVO = adminDao.selectOne(dtoAdm);
		
		if (adminVO != null) {
			dtoRes.setSuccess(true);
			dtoRes.setResId(adminVO.getId());
			dtoRes.setResEmail(adminVO.getEmail());
			dtoRes.setResName(adminVO.getName());
			dtoRes.setResRole(adminVO.getRole());
			dtoRes.setResRedirectUrl("redirect:/main.do");
			return dtoRes;
		}
		
		EmployeeDto dtoEmp = new EmployeeDto();
		dtoEmp.setEmail(dtoReq.getReqId());
		dtoEmp.setPassword(dtoReq.getReqPwd());
		EmployeeVO employeeVO = employeeDao.selectOne(dtoEmp);
		
		
		if (employeeVO != null) {
			dtoRes.setSuccess(true);
			dtoRes.setResId(employeeVO.getId());
			dtoRes.setResEmail(employeeVO.getEmail());
			dtoRes.setResName(employeeVO.getName());
			dtoRes.setResRole(employeeVO.getRole());
			dtoRes.setResRedirectUrl("redirect:/main.do");
			return dtoRes;
		}
		
		dtoRes.setSuccess(false);
		dtoRes.setResRedirectUrl("redirect:/login.do");
		return dtoRes;
	}

	@Override
	public LogoutActionDto logoutAction(LogoutActionDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

}
