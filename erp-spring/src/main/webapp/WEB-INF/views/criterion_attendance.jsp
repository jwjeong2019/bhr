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
		return String.format("{'code': '%s', 'type': '%s', 'status': '%s', 'name': '%s'}", dto.getCode(), dto.getType(), dto.getStatus(), dto.getName());
	}
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ERP 근태 기준 관리</title>
    <link rel="stylesheet" href="<%=path%>/resources/css/common/component.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/layout.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/origin.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/font.css">
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Cute+Font&family=Gowun+Dodum&family=Hi+Melody&display=swap');
    </style>
    <script type="module" src="<%=path%>/resources/js/scroll_box.js"></script>
    <script type="module" src="<%=path%>/resources/js/component/side_menu.js"></script>
    <script type="module" src="<%=path%>/resources/js/criterion_attendance.js"></script>
</head>
<body>
    <header class="nav pos-fixed top-0 left-0 w-100vw bg-white zi-1">
        <nav class="container space">
            <form action="main.do" method="get">
            	<button class="b-none bg-none pd-0">
		            <img id="logo" url="/html/main.html" src="https://img.freepik.com/premium-vector/erp-vector-icon-web_116137-3113.jpg?w=740">
            	</button>
            </form>
            <div class="container w-25vw space center mg-r-70">
                <div class="f-20" id="greet">${name}님 반갑습니다.</div>
                <form action="logoutAction.do" method="post">
	                <button id="logout" class="btn btn-primary" type="submit">로그아웃</button>
                </form>
            </div>
        </nav>
    </header>
    <section class="container space pd-100-30">
        <aside id="side-menu">
            <!-- load side_menu.js -->
        </aside>
        <main class="mg-l-30 w-80p">
            <header>
                <h1>근태 기준 관리</h1>
            </header>
            <section class="container space">
                <article class="card" style="width: 40%;">
                    <span class="d-block f-30">근태 기준 등록</span>
                    <form action="criterionAttendanceRegister.do" method="post">
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
                    <span class="f-30">근태 기준 등록 현황</span>
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
        <span class="f-30">근태 정보</span>
        <form id="info-form">
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
<script>
	const infoForm = document.getElementById('info-form');
	const dialog = document.querySelector('dialog');
	function onClickItem(item) {
		console.log(item);
		dialog.showModal();
		document.getElementById('info-input-code').value = item.code;
		document.getElementById('info-input-type').value = item.type;
		document.getElementById('info-input-status').value = item.status;
		document.getElementById('info-input-name').value = item.name;
	}
	function onClickClose() {
		dialog.close();
	}
	function onClickUpdate() {
		infoForm.action = 'criterionAttendanceUpdate.do';
		infoForm.method = 'post';
		infoForm.submit();
	}
	function onClickDelete() {
		infoForm.action = 'criterionAttendanceDelete.do';
		infoForm.method = 'post';
		infoForm.submit();
	}
</script>
</html>