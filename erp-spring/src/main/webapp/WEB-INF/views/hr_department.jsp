<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.erp.dto.CriterionDto" %>
<%@ page import="com.erp.dto.DepartmentDto" %>
<%
	String path = request.getContextPath();
	String name = (String) session.getAttribute("name");
	List<CriterionDto> listCri = (ArrayList) request.getAttribute("listCri");
	List<DepartmentDto> listDep = (ArrayList) request.getAttribute("listDep");
	String msg = (String) request.getAttribute("msg");
%>
<%!
	public String convertToJson(CriterionDto dto) {
		return String.format("{'id': '%s', 'code': '%s', 'type': '%s', 'status': '%s', 'name': '%s'}", 
				dto.getId(), dto.getCode(), dto.getType(), dto.getStatus(), dto.getName());
	}
	public String convertToJson(DepartmentDto dto) {
		CriterionDto c = dto.getCriterion();
		return String.format("{'id': '%s', 'criterion': {'code': '%s', 'type': '%s', 'status': '%s', 'name': '%s'}}",
				dto.getId(), c.getCode(), c.getType(), c.getStatus(), c.getName());
	}
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HR 부서 관리</title>
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
    <jsp:include page="/resources/jsp/header.jsp" flush="false" />
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
                            <% for (int i = 0; i < listCri.size(); i++) { %>
	                            <li class="container space" onclick="onClickInsertItem(<%=convertToJson(listCri.get(i)) %>)">
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
	                            <li class="container space" onclick="onClickDeleteItem(<%=convertToJson(listDep.get(i)) %>)">
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
    <form id="form-insert-delete">
    	<input id="cri-id" hidden name="criId">
    	<input id="dep-id" hidden name="depId">
    	<input id="arrangement" hidden name="arrangement">
	    <dialog id="dialog-insert" class="alert-insert">
	        <span class="f-30">부서를 추가하시겠습니까?</span>
	        <div class="container mg-v-25 space w-70p">
	            <button class="btn btn-success" onclick="onClickInsertYes()">예</button>
	            <button class="btn btn-primary" onclick="onClickInsertNo()">아니오</button>
	        </div>
	    </dialog>
	    <dialog id="dialog-delete" class="alert-delete">
	        <span class="f-30">부서를 제거하시겠습니까?</span>
	        <div class="container mg-v-25 space w-70p">
	            <button class="btn btn-success" onclick="onClickDeleteYes()">예</button>
	            <button class="btn btn-primary" onclick="onClickDeleteNo()">아니오</button>
	        </div>
	    </dialog>
    </form>
</body>
<script>
	if ('${msg}' == 'already existing Department.') {
		alert('${msg}');
	}
	const formInsDel = document.getElementById('form-insert-delete');	
	const dialogIns = document.getElementById('dialog-insert');
	const dialogDel = document.getElementById('dialog-delete');
	function onClickInsertItem(item) {
		console.log(item);
		dialogIns.showModal();
		document.getElementById('cri-id').value = item.id;
	}
	function onClickInsertYes() {
		formInsDel.action = 'hrDepartmentInsert.do';
		formInsDel.method = 'post';
		formInsDel.submit();
	}
	function onClickInsertNo() {
		dialogIns.close();
	}
	function onClickDeleteItem(item) {
		console.log(item);
		dialogDel.showModal();
		document.getElementById('dep-id').value = item.id;
	}
	function onClickDeleteYes() {
		formInsDel.action = 'hrDepartmentDelete.do';
		formInsDel.method = 'post';
		formInsDel.submit();
	}
	function onClickDeleteNo() {
		dialogDel.close();
	}
</script>
</html>