<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" %>   
<%@ page import="java.sql.DriverManager" %>   
<%@ page import="java.sql.PreparedStatement" %>   
<%@ page import="java.sql.ResultSet" %>   
<%@ page import="java.sql.SQLException" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Animais</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="css/AdoPET2.css">
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
}
</style>
</head>
<body>
	<br><br>
	<fieldset>
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
					<button class="btn btn-primary">Home</button>
					</a>&thinsp;</td>
					
					<td><a href="Version-1-AdoPET-Sobre.jsp">
					<button class="btn btn-primary">Sobre</button>
					</a>&thinsp;</td>					
					
					<td><a href="Version-1-AdoPET-Animais1.jsp">
					<button class="btn btn-success">Animais</button>
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
		    
		    <div class="img-banner" >
				<img width="500" height="225" src="https://agrograssi.com.br/wp-content/uploads/2019/08/banner-pets-dog-cat-boarding-1000x451.png"></img>
			</div>
					<br><br><br><br><br>
	
			<table>				
					<%
						Connection o_ConexaoBD;
						PreparedStatement cmdSQL;
						ResultSet rsAdopet;
						
						
						String banco, usuario, senha;
						String especie, cor, nomeAnimal, raca, deficiencia, data, idAnimal;
			
						try{
							banco ="jdbc:mysql://localhost/adopet_banco";
							usuario = "root";
							senha = "admin";
							Class.forName("com.mysql.jdbc.Driver");
							
							o_ConexaoBD = DriverManager.getConnection(banco, usuario, senha);
							
							
						}catch(Exception e){
							throw new Exception(e.getMessage());
						}
						try{		
								out.println("<table>");

								cmdSQL = o_ConexaoBD.prepareStatement("Select * From animal");						
								rsAdopet = cmdSQL.executeQuery();
		
								if(rsAdopet.next()){
									do{
										out.println("<form action='Version-1-AdoPET-Ficha.jsp'>");

										
									
											
													idAnimal = rsAdopet.getString("id");
													nomeAnimal = rsAdopet.getString("nome");
													especie = rsAdopet.getString("especie");
													cor = rsAdopet.getString("cor");
													raca = rsAdopet.getString("raca");
													deficiencia = rsAdopet.getString("deficiencia");
													data = rsAdopet.getString("data");
													
												out.println("<table>");
													out.println("<td>Especie:<input class='inputado' type='text' readonly name='especie' value="+especie+"><br></td><br>");
												out.println("</table>");
	
												out.println("<table>");
													out.println("<td> Id:<input class='inputado' type='number' readonly name='idAnimal' value="+idAnimal+"><br></td>");
												out.println("</table>");
												
												out.println("<table>");
													out.println("<td> Nome:<input class='inputado' type='text' readonly name='nomeAnimal' value="+nomeAnimal+"><br></td>");
												out.println("</table>");
											
												out.println("<table>");
													out.println("<td>Cor:<input class='inputado' type='text' readonly name='cor' value="+cor+"> <br><td>");
												out.println("</table>");
												
												out.println("<table>");
													out.println("<td>Raca:<input class='inputado' type='text' readonly name='raca' value="+raca+"><br><td>");
												out.println("</table>");
												
												out.println("<table>");
													out.println("<td>Deficiencia:<input class='inputado' type='text' readonly name='deficiencia' value="+deficiencia+"><br></td>");
												out.println("</table>");
									
												out.println("<table>");
													out.println("<td>Data:<input class='inputado' type='text' readonly name='data' value="+data+"><br></td>");
												out.println("</table>");
												
												out.println("<table>");
													out.println("<td><button class='btn btn-primary' type='submit' name='Adotar'>ADOTAR</button></td>");
												out.println("</table>");
											out.println("</div>");										
					
										out.println("</form>");
												
									}while(rsAdopet.next());
									
								}else{
									out.println("<footer><h4>Sem dados cadastrados</h4></footer>");
								}				
							
						}catch(Exception e){
							throw new Exception(e.getMessage());
						}
						
					%>	
									
					
			</table>
						
	</fieldset>
					<br><br><br>
	
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