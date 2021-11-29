package adopet_DAO;

import java.sql.*;
import javax.print.PrintException;
import adopet_model.adopet_model;

public class adopet_dao_select {
	public boolean loginUsuarios(adopet_model model) throws ClassNotFoundException{
		Connection o_ConexaoBD;		
		boolean status = false;
		
		String SELECT_USERS_SQL = "SELECT * FROM usuario WHERE nome = ? and email = ? and senha = ?;";	
		String usuario, senha_banco, banco; 
		
		banco="jdbc:mysql://localhost/adopet_banco";
		usuario="root";
		senha_banco="admin";
		Class.forName("com.mysql.jdbc.Driver");		
		try {
			o_ConexaoBD = DriverManager.getConnection(banco, usuario, senha_banco);
			PreparedStatement preparedStatement = o_ConexaoBD.prepareStatement(SELECT_USERS_SQL);			
			
			preparedStatement.setString(1, model.getNome());
			preparedStatement.setString(2, model.getEmail());
			preparedStatement.setString(3, model.getSenha());

			System.out.println(preparedStatement);
			
			ResultSet rs = preparedStatement.executeQuery();
			
			status = rs.next();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return status;
	}
	
}
