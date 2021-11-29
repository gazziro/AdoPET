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
<title>Ficha de Adoção</title>
<link rel="stylesheet" href="css/AdoPET2.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style type="text/css">
.inputado{
background-color: #e3ebfc;
border: solid #b3c1db 3px;
border-radius: 10px;
margin: 6px;
}
#titulo{
margin-left: 43%
}
footer{
margin-top: 30px;
}
</style>
</head>
<body id="corpo">
	<br><br>
	<h3 id="titulo">Ficha de Adoção</h3>
	
	
	
	<%
		out.println("<p class='text-center font-weight-bold'>");
		out.println("<span class='border'>");
		String especie, cor, Nome, raca, deficiencia, data, Id;
			Nome = request.getParameter("nomeAnimal");
			especie = request.getParameter("especie");
			cor = request.getParameter("cor");
			raca = request.getParameter("raca");
			deficiencia = request.getParameter("deficiencia");
			data = request.getParameter("data");
			Id = request.getParameter("idAnimal");
			%>
			<form method='post' action=<%=request.getContextPath()%>/adopet_servlet_ficha>	
			<%	
			out.println("<p class='text-center font-weight-bold'>");
			out.println("<span class='border'>");
			out.println("Nome: <input class='inputado' type='text' readonly name='Nome' value="+Nome+"><br>");
			out.println("Id: <input class='inputado' type='text' readonly name='Id' value="+Id+"><br>");
			out.println("Especie: <input class='inputado' type='text' readonly name='especie' value="+especie+"><br>");
			out.println("Cor: <input class='inputado' type='text' readonly name='cor' value="+cor+"><br>");
			out.println("Raça: <input class='inputado' type='text' readonly name='raca' value="+raca+"><br>");
			out.println("Deficiencia: <input class='inputado' type='text' readonly name='deficiencia' value="+deficiencia+"><br>");
			out.println("Data: <input class='inputado' type='text' readonly name='data' value="+data+"><br>");
	

				out.println("Renda Mensal: <input class='inputado' type='number' name='renda' required><br>");
				out.println("Data atual (aaaa-MM-dd): <input class='inputado' type='string' name='data_pedido_adocao' required><br><br>");
				out.println("<a href='Version-1-AdoPET-Animais1.jsp'>Voltar</a><br><br>");
				out.println("<button class='btn btn-primary' type='submit' name='Adotar'>Adotar</button>");
			out.println("</div>");
			out.println("<fieldset>");	
			
			%>
		
			</form>
	
	
	<br>
	
	</fieldset>
	
		<footer>
	<p>
		Projeto desenvolvido por
		<br><br>
	
	 	Gabriel Gazziro <a href="https://www.linkedin.com/in/gabriel-gazziro-425843204/"><img class='linkedin'src="https://cdn-icons-png.flaticon.com/512/174/174857.png"></a> 
		<br>
		 Jheison Kauê <a href="https://www.linkedin.com/in/jheison-gosmano-3b3476212/"><img class='linkedin'src="https://cdn-icons-png.flaticon.com/512/174/174857.png"></a> 
		<br>
		 Gustavo Henrique <a href="https://www.linkedin.com/in/gustavo-henrique-225b38204/"><img class='linkedin'src="https://cdn-icons-png.flaticon.com/512/174/174857.png"></a>
		<br>
		<br>
	
	</p>

</footer>
	
</body>
</html>