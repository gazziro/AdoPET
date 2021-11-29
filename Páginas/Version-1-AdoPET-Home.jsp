<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" %>   
<%@ page import="java.sql.DriverManager" %>   
<%@ page import="java.sql.PreparedStatement" %>   
<%@ page import="java.sql.ResultSet" %>   
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.net.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="css/AdoPET2.css">
</head>
<body>
	<fieldset>
		<br><br>
		<h3> AdoPET</h3>
		<span style="margin-left: 170px"><a href="Version-1-AdoPET-Login.jsp">
			<button class='btn btn-warning'>Fazer Login</button>
			</a>&thinsp;</span>
					
		<span><a href="Version-1-AdoPET-CadastroAnimal.jsp">
			<button class='btn btn-secondary '>Cadastro de Animal</button>
			</a>&thinsp;</span>
					
		<table style="margin-top: 30px">							
				<th>
					<td><a href="Version-1-AdoPET-Home.jsp">
					<button class="btn btn-success">Home</button>
					</a>&thinsp;</td>
					
					<td><a href="Version-1-AdoPET-Sobre.jsp">
					<button class="btn btn-primary">Sobre</button>
					</a>&thinsp;</td>					
					
					<td><a href="Version-1-AdoPET-Animais1.jsp">
					<button class="btn btn-primary">Animais</button>
					</a>&thinsp;</td>
					
					<td><a href="Version-1-AdoPET-Doacoes.jsp">
					<button class="btn btn-primary">Doações</button>
					</a>&thinsp;</td>
					
					<td><a href="Version-1-AdoPET-Contato.jsp">
					<button class="btn btn-primary">Contato</button>
					</a>&thinsp;</td>
				
				</th>	
		
	    </table>		
		<br><br>	
		
	</fieldset>
		
		<div class="img-banner" >
			<img width="500" height="225" src="https://agrograssi.com.br/wp-content/uploads/2019/08/banner-pets-dog-cat-boarding-1000x451.png"></img>
		</div>
		
	<h1><p class='text-center'>Home</p></h1>
	<p class='text-center font-weight-bold'>
	<span class="border">
	
		As ações das ONGs de animais
	 	são diversas, mas todas em prol
	 	da proteção animal.<br>
	 	As de maior número são as ONG de resgate
	 	e tratamento de animais de rua,<br>
	 	onde voluntários trabalham diretamente com animais abandonados,<br> os tratando para serem
	 	entregues à adoção de famílias aprovadas pela própria ONG.
	</span> 		
		<br> <br>
 	
 		
		<iframe width="420" height="345" src="https://www.youtube.com/embed/CPt2iS2uLIM">
		</iframe>
 	
	</p>
		<br>
		<br>
		<br>
	
<footer>
	<p>
	Projeto desenvolvido por
	<br><br><br>
	
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