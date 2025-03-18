<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.fasterxml.jackson.databind.ObjectMapper" %>
<%@ page import="com.fasterxml.jackson.datatype.jsr310.JavaTimeModule" %>
<%@ page import="com.erp.dto.CriterionDto" %>
<%
	String path = request.getContextPath();
	String name = (String) session.getAttribute("name");
	List<CriterionDto> list = (ArrayList) request.getAttribute("list");
%>
<%!
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
    <title>HR 부서 기준 관리</title>
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
                <h1>부서 기준 관리</h1>
            </header>
            <section class="container space">
                <article class="card" style="width: 40%;">
                    <span class="d-block f-30">부서 기준 등록</span>
                    <form action="criterionDepartmentRegister.do" method="post">
                    	<input name="${_csrf.parameterName }" value="${_csrf.token }" hidden />
	                    <div class="input mg-v-25">
	                        <span class="d-block f-20">코드</span>
	                        <input id="register-input-code" type="text" name="code">
	                    </div>
	                    <div class="input mg-v-25">
	                        <span class="d-block f-20">유형</span>
	                        <input id="register-input-type" type="text" name="type">
	                    </div>
	                    <div class="input mg-v-25">
	                        <span class="d-block f-20">상태</span>
	                        <input id="register-input-status" type="text" name="status">
	                    </div>
	                    <div class="input mg-v-25">
	                        <span class="d-block f-20">명칭</span>
	                        <input id="register-input-name" type="text" name="name">
	                    </div>
	                    <div class="mg-v-25">
	                        <button id="btn-register" class="btn btn-primary" type="submit">기준 등록</button>
	                    </div>
                    </form>
                </article>
                <article class="card" style="width: 40%;">
                    <span class="f-30">부서 기준 등록 현황</span>
                    <div class="mg-v-25">
                        <div class="container space f-20">
                            <span class="w-30p">코드</span>
                            <span class="w-30p">유형</span>
                            <span class="w-30p">상태</span>
                            <span class="w-30p">명칭</span>
                        </div>
                        <ul class="scroll-box">
                            <% for (int i = 0; i < list.size(); i++) { %>
	                            <li class="container space" onclick='onClickItem(<%=convertToJson(list.get(i)) %>)'>
					                <span class="f-20 w-30p"><%=list.get(i).getCode() %></span>
					                <span class="f-20 w-30p"><%=list.get(i).getType() %></span>
					                <span class="f-20 w-30p"><%=list.get(i).getStatus() %></span>
					                <span class="f-20 w-30p"><%=list.get(i).getName() %></span>
					            </li>                            	
                            <% } %>
                        </ul>
                    </div>
                </article>
            </section>
        </main>
    </section>
    <jsp:include page="/resources/jsp/criterion_dep_dialog.jsp">
    	<jsp:param value="onClickClose()" name="onClose"/>
    	<jsp:param value="onClickUpdate()" name="onModify"/>
    	<jsp:param value="onClickDelete()" name="onRemove"/>
    </jsp:include>
</body>
<script type="text/javascript" src="/resources/js/criterion_department.js"></script>
</html>