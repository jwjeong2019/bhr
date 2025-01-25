package com.erp.vo;

import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

import com.erp.dto.EmployeeDto;

public class EmployeeVO {

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
	private DepartmentVO department;
	private List<WorkHistoryVO> workHistory;
	
	
	
	public EmployeeVO() {
		super();
	}

	public EmployeeVO(int id, String code, String email, String password, String nickname, String name,
			LocalDate birthday, String phone, String position, String role, LocalDate joinDate,
			DepartmentVO department) {
		super();
		this.id = id;
		this.code = code;
		this.email = email;
		this.password = password;
		this.nickname = nickname;
		this.name = name;
		this.birthday = birthday;
		this.phone = phone;
		this.position = position;
		this.role = role;
		this.joinDate = joinDate;
		this.department = department;
	}
	
	public EmployeeDto toDto() {
		EmployeeDto dto = new EmployeeDto();
		dto.setId(id);
		dto.setCode(code);
		dto.setEmail(email);
		dto.setPassword(password);
		dto.setNickname(nickname);
		dto.setName(name);
		dto.setBirthday(birthday);
		dto.setPhone(phone);
		dto.setPosition(position);
		dto.setRole(role);
		dto.setJoinDate(joinDate);
		dto.setDepartment(department.toDto());
		dto.setWorkHistory(workHistory.stream()
				.map(WorkHistoryVO::toDto)
				.collect(Collectors.toList()));
		return dto;
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

	public DepartmentVO getDepartment() {
		return department;
	}

	public void setDepartment(DepartmentVO department) {
		this.department = department;
	}

	public List<WorkHistoryVO> getWorkHistory() {
		return workHistory;
	}

	public void setWorkHistory(List<WorkHistoryVO> workHistory) {
		this.workHistory = workHistory;
	}

	@Override
	public String toString() {
		return "EmployeeVO [id=" + id + ", code=" + code + ", email=" + email + ", password=" + password + ", nickname="
				+ nickname + ", name=" + name + ", birthday=" + birthday + ", phone=" + phone + ", position=" + position
				+ ", role=" + role + ", joinDate=" + joinDate + ", department=" + department + ", workHistory="
				+ workHistory + "]";
	}
	
}
