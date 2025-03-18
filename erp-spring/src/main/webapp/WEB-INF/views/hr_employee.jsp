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
    <title>HR 사원 관리</title>
    <jsp:include page="/resources/jsp/linkes.jsp" />
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Cute+Font&family=Gowun+Dodum&family=Hi+Melody&display=swap');
    </style>
    <script type="module" src="/resources/js/hr_employee.js"></script>
</head>
<body>
    <jsp:include page="/resources/jsp/header.jsp" flush="false" />
    <section class="container space pd-100-30">
        <jsp:include page="/resources/jsp/side_menu.jsp" flush="false" />
        <main class="mg-l-30 w-80p">
            <header>
                <h1>사원 관리</h1>
            </header>
            <section class="container space">
                <article class="card w-40p h-420">
                    <span class="f-30">사원 현황</span>
                    <div class="mg-v-25">
                        <div class="container space f-20">
                            <span class="w-30p">코드</span>
                            <span class="w-30p">부서</span>
                            <span class="w-30p">직위</span>
                            <span class="w-30p">이름</span>
                            <span class="w-30p">입사일</span>
                        </div>
                        <ul class="scroll-box">
                        	<% for (int i = 0; i < list.size(); i++) { %>
	                            <li class="container space" onclick='onClickEmpItem(<%=convertToJson(list.get(i))%>)'>
					                <span class="f-20 w-30p"><%=list.get(i).getCode() %></span>
					                <span class="f-20 w-30p"><%=getDepartmentName(list.get(i)) %></span>
					                <span class="f-20 w-30p"><%=getPosition(list.get(i)) %></span>
					                <span class="f-20 w-30p"><%=list.get(i).getName() %></span>
					                <span class="f-20 w-30p"><%=list.get(i).getJoinDate() %></span>
					            </li>                            	
                            <% } %>
                        </ul>
                    </div>
                    <div class="container center-row">
                    	<jsp:include page="/resources/jsp/btn_primary.jsp" flush="false">
                    		<jsp:param value="사원 추가하기" name="title" />
                    		<jsp:param value="onClickRegister()" name="onClick"/>
                    	</jsp:include>
                    </div>
                </article>
                <article class="card w-40p">
                    <span class="f-30">사원 정보</span>
                    <div id="info-view-blank" class="container f-col mg-v-25" style="height: 70%; justify-content: center; align-items: center;">
                        <span style="font-size: 70px;">ℹ️</span>
                        <p style="font-size: 30px;">사원을 선택하세요.</p>
                    </div>
                    <div id="info-view-show" class="mg-v-25" style="display: none;">
                        <jsp:include page="/resources/jsp/info_emp.jsp" flush="false" />
                        <div id="hr-emp-spec" class="mg-v-25">
                            <span class="f-20">경력사항</span>
                            <div class="container space mg-v-25">
                                <span class="w-30p">기간</span>
                                <span class="w-30p">프로젝트</span>
                                <span class="w-30p">회사</span>
                                <span class="w-30p">업무</span>
                            </div>
                            <ul id="scroll-box-mini">
                                <!-- <li id="hr-emp-spec-list" class="container space">
                                    <span class="w-30p">2022-10 ~ 2022-11</span>
                                    <span class="w-30p">우리행복</span>
                                    <span class="w-30p">해피무브</span>
                                    <span class="w-30p">사무/보조</span>
                                </li> -->
                            </ul>
                        </div>
                        <div id="hr-emp-info-modify" class="right">
                        	<jsp:include page="/resources/jsp/btn_primary.jsp">
                        		<jsp:param value="hr-emp-info-btn-modify" name="id"/>
                        		<jsp:param value="수정" name="title"/>
                        		<jsp:param value="onClickModify()" name="onClick"/>
                        	</jsp:include>
                        	<div class="d-inline-block mg-l-30">
                        		<jsp:include page="/resources/jsp/btn_danger.jsp">
	                        		<jsp:param value="hr-emp-info-btn-delete" name="id"/>
	                        		<jsp:param value="삭제" name="title"/>
	                        		<jsp:param value="onClickDelete()" name="onClick"/>
	                        	</jsp:include>
                        	</div>
                        </div>
                    </div>
                </article>
            </section>
        </main>
    </section>
    <!-- 사원 추가하기 Dialog -->
    <jsp:include page="/resources/jsp/hr_emp_dialog.jsp" flush="false">
    	<jsp:param value="register" name="typeF"/>
    	<jsp:param value="Reg" name="typeS"/>
    	<jsp:param value="사원 정보 입력" name="title"/>
    </jsp:include>
    <!-- 사원 수정하기 Dialog -->
    <jsp:include page="/resources/jsp/hr_emp_dialog.jsp" flush="false">
    	<jsp:param value="modify" name="typeF"/>
    	<jsp:param value="Mod" name="typeS"/>
    	<jsp:param value="사원 정보 수정" name="title"/>
    </jsp:include>
    
    <dialog id="hr-emp-dialog-delete">
        <span class="f-30">사원을 삭제하시겠습니까?</span>
        <div class="container mg-v-25 space w-70p">
            <button id="dialog-delete-btn-yes" class="btn btn-success">예</button>
            <button id="dialog-delete-btn-no" class="btn btn-primary">아니오</button>
        </div>
    </dialog>
    <form id="form-reg">
    	<input name="${_csrf.parameterName }" value="${_csrf.token }" hidden />
    	<input id="reg-data" name="data" hidden>
    </form>
    <form id="form-mod">
    	<input name="${_csrf.parameterName }" value="${_csrf.token }" hidden />
    	<input id="mod-data" name="data" hidden>
    </form>
    <form id="form-del">
    	<input name="${_csrf.parameterName }" value="${_csrf.token }" hidden />
    	<input id="del-emp-id" name="empId" hidden>
    </form>
</body>
</html>