package com.erp.dto;

import java.time.LocalDate;
import java.util.List;

public class EmployeeDto {
	
	private int id;
	private String code;
	private String email;
	private String password;
	private String nickname;
	private String name;
	private LocalDate birthday;
	private String phone;
	private String position;
	private String role;
	private LocalDate joinDate;
	private Integer depId;
	
	private DepartmentDto department;
	private List<WorkHistoryDto> workHistory;
	private String sqlNullDep;
	
	
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

	public LocalDate getBirthday() {
		return birthday;
	}

	public void setBirthday(LocalDate birthday) {
		this.birthday = birthday;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
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

	public Integer getDepId() {
		return depId;
	}

	public void setDepId(Integer depId) {
		this.depId = depId;
	}

	public DepartmentDto getDepartment() {
		return department;
	}

	public void setDepartment(DepartmentDto department) {
		this.department = department;
	}

	public String getSqlNullDep() {
		return sqlNullDep;
	}

	public void setSqlNullDep(String sqlNullDep) {
		this.sqlNullDep = sqlNullDep;
	}

	public List<WorkHistoryDto> getWorkHistory() {
		return workHistory;
	}

	public void setWorkHistory(List<WorkHistoryDto> workHistory) {
		this.workHistory = workHistory;
	}

	@Override
	public String toString() {
		return "EmployeeDto [id=" + id + ", code=" + code + ", email=" + email + ", password=" + password
				+ ", nickname=" + nickname + ", name=" + name + ", birthday=" + birthday + ", phone=" + phone
				+ ", position=" + position + ", role=" + role + ", joinDate=" + joinDate + ", depId=" + depId
				+ ", department=" + department + ", workHistory=" + workHistory + ", sqlNullDep=" + sqlNullDep + "]";
	}
	
}
