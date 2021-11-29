package adopet_DAO;

import java.sql.*;
import adopet_model.adopet_model;

public class adopet_dao {

	public int registrarUsuario(adopet_model model) throws ClassNotFoundException{
		Connection o_ConexaoBD;
		PreparedStatement cmdSQL;
		
		int rsAdopet = 0;	
		
		String INSERT_USERS_SQL = "INSERT INTO usuario" +"(cpf, nome, email, senha) VALUES "+"(?,?,?,?);";	
		String usuario, senha_banco, banco;
		
		banco="jdbc:mysql://localhost/adopet_banco";
		usuario="root";
		senha_banco="admin";
		Class.forName("com.mysql.jdbc.Driver");			
		
		try{		
			o_ConexaoBD = DriverManager.getConnection(banco, usuario,senha_banco);
			
			PreparedStatement preparedStatement = o_ConexaoBD.prepareStatement(INSERT_USERS_SQL);			
			preparedStatement.setString(1, model.getCpf());
			preparedStatement.setString(2, model.getNome());
			preparedStatement.setString(3, model.getEmail());
			preparedStatement.setString(4, model.getSenha());
			
			System.out.println(preparedStatement);
			rsAdopet = preparedStatement.executeUpdate();
		
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return rsAdopet;		
	}

}
