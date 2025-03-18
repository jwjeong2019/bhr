<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String onClose = request.getParameter("onClose");
	String onModify = request.getParameter("onModify");
	String onRemove = request.getParameter("onRemove");
%>
<dialog>
    <div class="container end">
        <button id="info-btn-close" class="btn btn-none" onclick="<%=onClose%>">닫기</button>
    </div>
    <span class="f-30">부서 정보</span>
    <form id="info-form">
		<input name="${_csrf.parameterName }" value="${_csrf.token }" hidden />
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
		    <button id="info-btn-update" class="btn btn-success" onclick="<%=onModify%>">수정</button>
		    <button id="info-btn-delete" class="btn btn-danger" onclick="<%=onRemove%>">삭제</button>
		</div>
    </form>
</dialog>