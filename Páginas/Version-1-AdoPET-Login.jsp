<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" %>   
<%@ page import="java.sql.DriverManager" %>   
<%@ page import="java.sql.PreparedStatement" %>   
<%@ page import="java.sql.ResultSet" %>   
<%@ page import="java.sql.SQLException" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="css/AdoPET-Login.css">
</head>
<body>
	<div class='center'>
		<h1>AdoPET</h1>
		<form method="post" action="<%=request.getContextPath()%>/adopet_servlet_select">
			
			<div class='txt_field'>
				<input type="text" name="nome" required>	
				<span>
				</span>
				<label>Nome</label>
			</div>
			
			<div class='txt_field'>
				<input type="text" name="email" required>	
				<span>
				</span>
				<label>Email</label>
			</div>
			<div class='txt_field'>
				<input type="password" name="senha" required>
				<span>
				</span>
				<label>Senha</label>
			</div>
			<div class='signup_link'>	
				Ainda não tem uma conta?
				<a href="Version-1-AdoPET-CadastroUser.jsp">Criar Conta</a>
 			</div>
			
				<input type='submit' class='pass login' value="Login">
		</form>	
	
	</div>
</body>
</html>