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
	List<CriterionDto> listCri = (ArrayList) request.getAttribute("listCri");
	List<DepartmentDto> listDep = (ArrayList) request.getAttribute("listDep");
	String msg = (String) request.getAttribute("msg");
%>
<%!
	public String convertToJson(DepartmentDto d) throws Exception {
		ObjectMapper mapper = new ObjectMapper();
		mapper.registerModule(new JavaTimeModule());
		return mapper.writeValueAsString(d);
	}
	public String convertToJson(CriterionDto c) throws Exception {
		ObjectMapper mapper = new ObjectMapper();
		mapper.registerModule(new JavaTimeModule());
		return mapper.writeValueAsString(c);
	}
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HR 부서 관리</title>
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
                <h1>부서 관리</h1>
            </header>
            <section class="container space">
                <article class="card" style="width: 40%;">
                    <span class="f-30">부서 기준 현황</span>
                    <div class="mg-v-25">
                        <div class="container space f-20">
                            <span class="w-30p">코드</span>
                            <span class="w-30p">유형</span>
                            <span class="w-30p">명칭</span>
                        </div>
                        <ul class="scroll-box-left">
                            <% for (int i = 0; i < listCri.size(); i++) { %>
	                            <li class="container space" onclick='onClickInsertItem(<%=convertToJson(listCri.get(i)) %>)'>
					                <span class="f-20 w-30p"><%=listCri.get(i).getCode() %></span>
					                <span class="f-20 w-30p"><%=listCri.get(i).getType() %></span>
					                <span class="f-20 w-30p"><%=listCri.get(i).getName() %></span>
					            </li>                            	
                            <% } %>
                        </ul>
                    </div>
                </article>
                <article class="card" style="width: 40%;">
                    <span class="f-30">부서 등록 현황</span>
                    <div class="mg-v-25">
                        <div class="container space f-20">
                            <span class="w-30p">코드</span>
                            <span class="w-30p">유형</span>
                            <span class="w-30p">명칭</span>
                        </div>
                        <ul class="scroll-box-right">
                            <% for (int i = 0; i < listDep.size(); i++) { %>
	                            <li class="container space" onclick='onClickDeleteItem(<%=convertToJson(listDep.get(i)) %>)'>
					                <span class="f-20 w-30p"><%=listDep.get(i).getCriterion().getCode() %></span>
					                <span class="f-20 w-30p"><%=listDep.get(i).getCriterion().getType() %></span>
					                <span class="f-20 w-30p"><%=listDep.get(i).getCriterion().getName() %></span>
					            </li>                            	
                            <% } %>
                        </ul>
                    </div>
                </article>
            </section>
        </main>
    </section>
    <jsp:include page="/resources/jsp/hr_dep_dialog.jsp">
    	<jsp:param value="insert" name="type"/>
    	<jsp:param value="부서를 추가하시겠습니까?" name="message"/>
    	<jsp:param value="onClickInsertYes()" name="onConfirm"/>
    	<jsp:param value="onClickInsertNo()" name="onCancel"/>
    </jsp:include>
    <jsp:include page="/resources/jsp/hr_dep_dialog.jsp">
    	<jsp:param value="delete" name="type"/>
    	<jsp:param value="부서를 제거하시겠습니까?" name="message"/>
    	<jsp:param value="onClickDeleteYes()" name="onConfirm"/>
    	<jsp:param value="onClickDeleteNo()" name="onCancel"/>
    </jsp:include>
    <form id="form-insert-delete">
    	<input name="${_csrf.parameterName }" value="${_csrf.token }" hidden />
    	<input id="cri-id" hidden name="criId">
    	<input id="dep-id" hidden name="depId">
    	<input id="arrangement" hidden name="arrangement">
    </form>
</body>
<script type="text/javascript" src="/resources/js/hr_department.js"></script>
</html>