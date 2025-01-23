package com.erp.service;

import com.erp.dto.LoginActionDto;
import com.erp.dto.LoginDto;
import com.erp.dto.LogoutActionDto;

public interface LoginService {
	
	LoginDto login(LoginDto dto);
	LoginActionDto loginAction(LoginActionDto dto) throws Exception;
	LogoutActionDto logoutAction(LogoutActionDto dto);

}
