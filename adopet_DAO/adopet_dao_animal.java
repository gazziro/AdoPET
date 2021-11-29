package adopet_DAO;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.*;
import adopet_model.adopet_model_animal;
import adopet_model.adopet_model_ficha;

import javax.servlet.http.Part;


public class adopet_dao_animal {

	public int registrarAnimal(adopet_model_animal model) throws ClassNotFoundException{
		Connection o_ConexaoBD;
		PreparedStatement cmdSQL;
				
		int rsAdopet = 0;	
		String INSERT_ANIMALS_SQL = "INSERT INTO animal" +"(especie,cor, nome, raca, deficiencia, data) "
				+ "VALUES "+"(?,?,?,?,?,?);";	
		String usuario, senha_banco, banco;
		
		banco="jdbc:mysql://localhost/adopet_banco";
		usuario="root";
		senha_banco="admin";
		Class.forName("com.mysql.jdbc.Driver");			

		try{		
			o_ConexaoBD = DriverManager.getConnection(banco, usuario,senha_banco);
			PreparedStatement preparedStatement = o_ConexaoBD.prepareStatement(INSERT_ANIMALS_SQL);			

			preparedStatement.setString(1, model.getEspecie());
			preparedStatement.setString(2, model.getCor());
			preparedStatement.setString(3, model.getNome());
			preparedStatement.setString(4, model.getRaca());
			preparedStatement.setString(5, model.getDeficiencia());
			preparedStatement.setString(6, model.getData());
			
			
			rsAdopet = preparedStatement.executeUpdate();
		
		}catch(Exception e){
			e.printStackTrace();
		}
		return rsAdopet;		
	}

	
}

