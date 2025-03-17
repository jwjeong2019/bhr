<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String customClassName = request.getParameter("customClassName");
	String hidden = request.getParameter("hidden");
	String type = request.getParameter("type");
	String onClick = request.getParameter("onClick");
	String title = request.getParameter("title");
%>
<%!
	public String makeClassName(String type, String className) {
		StringBuilder sb = new StringBuilder();
		sb.append("btn ");
		
		switch (type) {
			case "primary": {
				sb.append("btn-primary ");
				break;
			}
			case "danger": {
				sb.append("btn-danger ");
				break;
			}
			case "success": {
				sb.append("btn-success ");
				break;
			}
		}
		
		if (className != null) sb.append(className);
		return sb.toString();
	}

	public String makeStyle(String hidden) {
		StringBuilder sb = new StringBuilder();
		
		if (hidden != null && hidden.equals("true")) {
			sb.append("display: none;");
		}
		
		return sb.toString();
	}
%>
<button
	id="<%=id %>"
	class="<%=makeClassName(type, customClassName) %>"
	style="<%=makeStyle(hidden) %>"
	onclick="<%=onClick %>"
>
	<%=title %>
</button>