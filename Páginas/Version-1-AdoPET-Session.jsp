<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String nome, email;
	nome = request.getParameter("nome");
	email = request.getParameter("email");
	
	session.setAttribute("Nome", nome);
	session.setAttribute("Email", email);

	session.setMaxInactiveInterval(10);
	
	
%>
</body>
</html>