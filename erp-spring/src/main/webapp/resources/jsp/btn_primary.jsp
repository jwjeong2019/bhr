<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String title = request.getParameter("title");
	String onClick = request.getParameter("onClick");
%>
<button
	<%if (id != null) { out.println("id=" + id); } %>
	class="btn btn-primary"
	onclick="<%=onClick %>"
>
	<%=title %>
</button>