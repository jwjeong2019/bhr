<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.erp.dto.CriterionDto" %>
<%
	String path = request.getContextPath();
	String name = (String) session.getAttribute("name");
	List<CriterionDto> listArrN = (ArrayList) request.getAttribute("listArrN");
	List<CriterionDto> listArrY = (ArrayList) request.getAttribute("listArrY");
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
    <title>ERP 부서 관리</title>
    <link rel="stylesheet" href="<%=path%>/resources/css/common/layout.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/font.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/component.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/origin.css">
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Cute+Font&family=Gowun+Dodum&family=Hi+Melody&display=swap');
    </style>
    <script type="module" src="<%=path%>/resources/js/scroll_box_couple.js"></script>
    <script type="module" src="<%=path%>/resources/js/component/side_menu.js"></script>
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
                            <% for (int i = 0; i < listArrN.size(); i++) { %>
	                            <li class="container space" onclick="onClickAddItem(<%=convertToJson(listArrN.get(i)) %>)">
					                <span class="f-20 w-30p"><%=listArrN.get(i).getCode() %></span>
					                <span class="f-20 w-30p"><%=listArrN.get(i).getType() %></span>
					                <span class="f-20 w-30p"><%=listArrN.get(i).getName() %></span>
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
                            <% for (int i = 0; i < listArrY.size(); i++) { %>
	                            <li class="container space" onclick="onClickRemoveItem(<%=convertToJson(listArrY.get(i)) %>)">
					                <span class="f-20 w-30p"><%=listArrY.get(i).getCode() %></span>
					                <span class="f-20 w-30p"><%=listArrY.get(i).getType() %></span>
					                <span class="f-20 w-30p"><%=listArrY.get(i).getName() %></span>
					            </li>                            	
                            <% } %>
                        </ul>
                    </div>
                </article>
            </section>
        </main>
    </section>
    <form id="form-update">
    	<input id="code" hidden name="code">
    	<input id="arrangement" hidden name="arrangement">
	    <dialog id="dialog-add" class="alert-insert">
	        <span class="f-30">부서를 추가하시겠습니까?</span>
	        <div class="container mg-v-25 space w-70p">
	            <button class="btn btn-success" onclick="onClickAddYes()">예</button>
	            <button class="btn btn-primary" onclick="onClickAddNo()">아니오</button>
	        </div>
	    </dialog>
	    <dialog id="dialog-remove" class="alert-delete">
	        <span class="f-30">부서를 제거하시겠습니까?</span>
	        <div class="container mg-v-25 space w-70p">
	            <button class="btn btn-success" onclick="onClickRemoveYes()">예</button>
	            <button class="btn btn-primary" onclick="onClickRemoveNo()">아니오</button>
	        </div>
	    </dialog>
    </form>
</body>
<script>
	const formUpdate = document.getElementById('form-update');	
	const dialogAdd = document.getElementById('dialog-add');
	const dialogRem = document.getElementById('dialog-remove');
	function onClickAddItem(item) {
		console.log(item);
		dialogAdd.showModal();
		document.getElementById('code').value = item.code;
		document.getElementById('arrangement').value = 'Y';
	}
	function onClickAddYes() {
		formUpdate.action = 'hrDepartmentUpdate.do';
		formUpdate.method = 'post';
		formUpdate.submit();
	}
	function onClickAddNo() {
		dialogAdd.close();
	}
	function onClickRemoveItem(item) {
		console.log(item);
		dialogRem.showModal();
		document.getElementById('code').value = item.code;
		document.getElementById('arrangement').value = 'N';
	}
	function onClickRemoveYes() {
		formUpdate.action = 'hrDepartmentUpdate.do';
		formUpdate.method = 'post';
		formUpdate.submit();
	}
	function onClickRemoveNo() {
		dialogRem.close();
	}
</script>
</html>