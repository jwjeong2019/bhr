package com.erp.security;

import java.util.Arrays;
import java.util.Collection;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.inject.Inject;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.erp.dao.AdminDao;
import com.erp.dao.EmployeeDao;
import com.erp.dto.AdminDto;
import com.erp.dto.EmployeeDto;
import com.erp.vo.AdminVO;
import com.erp.vo.EmployeeVO;

public class CustomUserDetailsService implements UserDetailsService {
	
	@Inject
	private AdminDao adminDao;
	
	@Inject
	private EmployeeDao employeeDao;
	
	@Inject
	private PasswordEncoder encoder;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		
		try {
			AdminDto dtoAdm = new AdminDto();
			dtoAdm.setEmail(username);
			AdminVO voAdm = adminDao.selectOne(dtoAdm);
			if (voAdm != null) {
				return new User(voAdm.getEmail(), encoder.encode(voAdm.getPassword()), Arrays.asList("ROLE_" + voAdm.getRole())
				.stream()
				.map(role -> new SimpleGrantedAuthority(role))
				.collect(Collectors.toList()));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			EmployeeDto dtoEmp = new EmployeeDto();
			dtoEmp.setEmail(username);
			EmployeeVO voEmp = employeeDao.selectOne(dtoEmp);
			if (voEmp != null) {
				return new User(voEmp.getEmail(), encoder.encode(voEmp.getPassword()), Arrays.asList("ROLE_" + voEmp.getRole())
				.stream()
				.map(role -> new SimpleGrantedAuthority(role))
				.collect(Collectors.toList()));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}

}
