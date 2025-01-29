<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.erp.dto.CriterionDto" %>
<%
	String path = request.getContextPath();
	String name = (String) session.getAttribute("name");
	List<CriterionDto> list = (ArrayList) request.getAttribute("list");
%>
<%!
	public String convertToJson(CriterionDto dto) {
		return String.format("{'id': '%s', 'code': '%s', 'type': '%s', 'status': '%c', 'name': '%s'}", dto.getId(), dto.getCode(), dto.getType(), dto.getStatus(), dto.getName());
	}
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ERP 급여 기준 관리</title>
    <link rel="stylesheet" href="<%=path%>/resources/css/common/layout.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/font.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/component.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/origin.css">
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Cute+Font&family=Gowun+Dodum&family=Hi+Melody&display=swap');
    </style>
    <script type="module" src="<%=path%>/resources/js/scroll_box.js"></script>
    <script type="module" src="<%=path%>/resources/js/component/side_menu.js"></script>
    <script type="module" src="/resources/js/criterion_payroll.js"></script>
</head>
<body>
    <jsp:include page="/resources/jsp/header.jsp" flush="false" />
    <section class="container space pd-100-30">
        <aside id="side-menu">
            <!-- load side_menu.js -->
        </aside>
        <main class="mg-l-30 w-80p">
            <header>
                <h1>급여 기준 관리</h1>
            </header>
            <section class="container space">
                <article class="card" style="width: 40%;">
                    <span class="d-block f-30">급여 기준 등록</span>
                    <form action="criterionPayrollRegister.do" method="post">
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
                    <span class="f-30">급여 기준 등록 현황</span>
                    <div class="mg-v-25">
                        <div class="container space f-20">
                            <span class="w-30p">코드</span>
                            <span class="w-30p">유형</span>
                            <span class="w-30p">상태</span>
                            <span class="w-30p">명칭</span>
                        </div>
                        <ul class="scroll-box">
                            <% for (int i = 0; i < list.size(); i++) { %>
	                            <li class="container space" onclick="onClickItem(<%=convertToJson(list.get(i)) %>)">
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
    <dialog>
        <div class="container end">
            <button id="info-btn-close" class="btn btn-none" onclick="onClickClose()">닫기</button>
        </div>
        <span class="f-30">급여 정보</span>
        <form id="info-form">
        	<input id="info-input-id" type="text" name="id" hidden>
	        <div class="input mg-v-25">
	            <span class="d-block f-20">코드</span>
	            <input id="info-input-code" type="text" name="code">
	        </div>
	        <div class="input mg-v-25">
	            <span class="d-block f-20">유형</span>
	            <input id="info-input-type" type="text" name="type">
	        </div>
	        <div class="input mg-v-25">
	            <span class="d-block f-20">상태</span>
	            <input id="info-input-status" type="text" name="status">
	        </div>
	        <div class="input mg-v-25">
	            <span class="d-block f-20">명칭</span>
	            <input id="info-input-name" type="text" name="name">
	        </div>
	        <div class="container space mg-v-25 w-90p">
	            <button id="info-btn-update" class="btn btn-success" onclick="onClickUpdate()">수정</button>
	            <button id="info-btn-delete" class="btn btn-danger" onclick="onClickDelete()">삭제</button>
	        </div>
        </form>
    </dialog>
</body>
</html>