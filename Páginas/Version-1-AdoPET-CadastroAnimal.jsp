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
<title>Cadastro de Usuário</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="css/AdoPET-Login.css">
</head>
<body>
	<div class='center'>
		<h1>AdoPET</h1>
		<form method="post" action="<%=request.getContextPath()%>/adopet_servlet_animal">
			
			<div class='txt_field'>
				<input name="nome" type="text" required>	
				<span>
				</span>
				<label>Nome do Animal*</label>
			</div>
			<div class='txt_field'>
				<input name="especie" type="text" required>
				<span>
				</span>
				<label>Espécie (Gato, Cachorro, etc.)*</label>
			</div>
				 
			<div class='txt_field'>
				<input name="cor" type="text" required>
				<span>
				</span>
				<label>Cor*</label>
			</div>
			 
			<div class='txt_field'>
				<input name="raca" type="text" required>
				<span>
				</span>
				<label>Raça*</label>
			</div>
	  
			<div class='txt_field'>
				<input name="deficiencia" type="text" required>
				<span>
				</span>
				<label>Deficiência (Sim ou Nao)</label>
			</div>
			<div class='txt_field'>
				<input name="data" type="text" required>
				<span>
				</span>
				<label>Data de nascimento (aaaa-MM-dd)</label>
			</div>
			
				
				<button type='submit' class='pass cadastro' value="Cadastrar">Cadastrar</button>

		</form>
	
	
	</div>	
</body>
</html>