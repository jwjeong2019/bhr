<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String type = request.getParameter("type");
	String message = request.getParameter("message");
	String onConfirm = request.getParameter("onConfirm");
	String onCancel = request.getParameter("onCancel");
%>
<%!
	public String makeId(String type) {
		StringBuilder sb = new StringBuilder();
		return sb.append("dialog-").append(type).toString();
	}
	public String makeClassName(String type) {
		StringBuilder sb = new StringBuilder();
		return sb.append("alert-").append(type).toString();
	}
%>
<dialog id="<%=makeId(type) %>" class="<%=makeClassName(type) %>">
    <span class="f-30"><%=message %></span>
    <div class="container mg-v-25 space w-70p">
        <button class="btn btn-success" onclick="<%=onConfirm%>">예</button>
        <button class="btn btn-primary" onclick="<%=onCancel%>">아니오</button>
    </div>
</dialog>