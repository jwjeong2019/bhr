package com.erp.dto;

import java.time.LocalDate;

public class EmployeeDto {
	
	private int id;
	private String code;
	private String email;
	private String password;
	private String nickname;
	private String name;
	private String position;
	private String role;
	private LocalDate joinDate;
	private int depId;
	private DepartmentDto department; // 제거 예정
	
	
	public EmployeeDto() {
		super();
	}

	public EmployeeDto(int id, String code, String email, String password, String nickname, String name,
			String position, String role, LocalDate joinDate, DepartmentDto department) {
		super();
		this.id = id;
		this.code = code;
		this.email = email;
		this.password = password;
		this.nickname = nickname;
		this.name = name;
		this.position = position;
		this.role = role;
		this.joinDate = joinDate;
		this.department = department;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public LocalDate getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(LocalDate joinDate) {
		this.joinDate = joinDate;
	}

	public int getDepId() {
		return depId;
	}

	public void setDepId(int depId) {
		this.depId = depId;
	}

	public DepartmentDto getDepartment() {
		return department;
	}

	public void setDepartment(DepartmentDto department) {
		this.department = department;
	}

}
