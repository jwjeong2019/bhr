<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.erp.vo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Sample List</h1>
<% List<SampleVO> list = (ArrayList) request.getAttribute("sampleList"); %>
<% for (SampleVO vo : list) { %>
	<%="<br />" %>
	<%=vo.getId() %>
	<%=vo.getName() %>
	<%=vo.getType() %>
<% } %>
</body>
</html>