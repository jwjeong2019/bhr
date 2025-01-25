<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>
<%@ page import="com.fasterxml.jackson.databind.ObjectMapper" %>
<%@ page import="com.fasterxml.jackson.datatype.jsr310.JavaTimeModule" %>
<%@ page import="com.erp.dto.CriterionDto" %>
<%@ page import="com.erp.dto.DepartmentDto" %>
<%@ page import="com.erp.dto.EmployeeDto" %>
<%
	String path = request.getContextPath();
	String name = (String) session.getAttribute("name");
	List<EmployeeDto> list = (ArrayList) request.getAttribute("list");
	String msg = (String) request.getAttribute("msg");
%>
<%!
	public String convertToJson(CriterionDto c) throws Exception {
		ObjectMapper mapper = new ObjectMapper();
		mapper.registerModule(new JavaTimeModule());
		return mapper.writeValueAsString(c);
	}
	public String convertToJson(DepartmentDto d) throws Exception {
		ObjectMapper mapper = new ObjectMapper();
		mapper.registerModule(new JavaTimeModule());
		return mapper.writeValueAsString(d);
	}
	public String convertToJson(EmployeeDto e) throws Exception {
		ObjectMapper mapper = new ObjectMapper();
		mapper.registerModule(new JavaTimeModule());
		return mapper.writeValueAsString(e);
	}
%>