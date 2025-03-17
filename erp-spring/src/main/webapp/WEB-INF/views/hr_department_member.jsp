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
	List<DepartmentDto> listDep = (ArrayList) request.getAttribute("listDep");
	List<EmployeeDto> listEmp = (ArrayList) request.getAttribute("listEmp");
	List<EmployeeDto> listMem = (ArrayList) request.getAttribute("listMem");
	String msg = (String) request.getAttribute("msg");
%>
<%!
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
	public String getDepartmentName(EmployeeDto e) {
		DepartmentDto d = e.getDepartment();
		if (d == null) {
			return "-";
		}
		return d.getCriterion().getName();
	}
	public String getPosition(EmployeeDto e) {
		String pos = e.getPosition();
		if (pos == null) {
			return "-";
		}
		return pos;
	}
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HR 부서원 관리</title>
    <jsp:include page="/resources/jsp/linkes.jsp" />
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Cute+Font&family=Gowun+Dodum&family=Hi+Melody&display=swap');
    </style>
</head>
<body>
    <jsp:include page="/resources/jsp/header.jsp" flush="false" />
    <section class="container space pd-100-30">
        <jsp:include page="/resources/jsp/side_menu.jsp" flush="false" />
        <main class="mg-l-30 w-80p">
            <header>
                <h1>부서원 관리</h1>
            </header>
            <section class="container space">
                <article class="card w-25p h-420">
                    <span class="f-30">부서 선택</span>
                    <div class="mg-v-25">
                        <div class="container space f-20">
                            <span class="w-30p">부서명</span>
                        </div>
                        <ul class="scroll-box">
                            <% for (int i = 0; i < listDep.size(); i++) { %>
	                            <li class="container space" onclick='onClickDepItem(<%=convertToJson(listDep.get(i)) %>)'>
					                <span class="f-20 w-30p"><%=listDep.get(i).getCriterion().getName() %></span>
					            </li>                            	
                            <% } %>
                        </ul>
                    </div>
                    <div>
                        <span id="select-department" style="display: none;" class="f-30">👉 개발1팀</span>
                    </div>
                </article>
                <article class="card w-25p h-420">
                    <span class="f-30">사원 선택</span>
                    <div class="mg-v-25">
                        <div class="container space f-20">
                            <span class="w-25p">코드</span>
                            <span class="w-30p">입사일</span>
                            <span class="w-25p">이름</span>
                        </div>
                        <ul class="scroll-box">
                            <% for (int i = 0; i < listEmp.size(); i++) { %>
	                            <li class="container space" onclick='onClickEmpItem(<%=convertToJson(listEmp.get(i)) %>)'>
					                <span class="f-20 w-30p"><%=listEmp.get(i).getCode() %></span>
					                <span class="f-20 w-30p"><%=listEmp.get(i).getJoinDate() %></span>
					                <span class="f-20 w-30p"><%=listEmp.get(i).getName() %></span>
					            </li>                            	
                            <% } %>
                        </ul>
                    </div>
                    <div>
                        <span id="select-employee" style="display: none;" class="f-30">👉 조아영(H0002)</span>
                    </div>
                </article>
                <article class="card w-25p">
                    <span class="f-30">부서 현황</span>
                    <div class="mg-v-25">
                        <div class="container space f-20">
                            <span class="w-30p">부서</span>
                            <span class="w-30p">사원코드</span>
                            <span class="w-30p">사원이름</span>
                        </div>
                        <ul class="scroll-box">
                            <% for (int i = 0; i < listMem.size(); i++) { %>
	                            <li class="container space" onclick='onClickMemItem(<%=convertToJson(listMem.get(i)) %>)'>
					                <span class="f-20 w-30p"><%=listMem.get(i).getDepartment().getCriterion().getName() %></span>
					                <span class="f-20 w-30p"><%=listMem.get(i).getCode() %></span>
					                <span class="f-20 w-30p"><%=listMem.get(i).getName() %></span>
					            </li>                            	
                            <% } %>
                        </ul>
                    </div>
                    <div class="container f-col">
                        <jsp:include page="/resources/jsp/button.jsp" flush="false">
                        	<jsp:param value="btn-remove" name="id"/>
                        	<jsp:param value="mg-b-20" name="customClassName"/>
                        	<jsp:param value="⬇️ 제거하기" name="title"/>
                        	<jsp:param value="danger" name="type"/>
                        	<jsp:param value="true" name="hidden"/>
                        	<jsp:param value="onClickRemove()" name="onClick"/>
                        </jsp:include>
                        <jsp:include page="/resources/jsp/button.jsp" flush="false">
                        	<jsp:param value="btn-add" name="id"/>
                        	<jsp:param value="⬆️ 추가하기" name="title"/>
                        	<jsp:param value="success" name="type"/>
                        	<jsp:param value="true" name="hidden"/>
                        	<jsp:param value="onClickAdd()" name="onClick"/>
                        </jsp:include>
                    </div>
                </article>
            </section>
        </main>
    </section>
    <form id="form-update">
    	<input name="${_csrf.parameterName }" value="${_csrf.token }" hidden />
    	<input id="upd-dep-id" name="depId" hidden>
    	<input id="upd-emp-id" name="empId" hidden>
    </form>
</body>
<script type="text/javascript" src="/resources/js/hr_department_member.js"></script>
</html>