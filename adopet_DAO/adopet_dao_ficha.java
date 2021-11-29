package adopet_DAO;
import java.sql.*;
import adopet_model.adopet_model_ficha;
import adopet_model.adopet_model_animal;

public class adopet_dao_ficha {
	
	public int registrarFicha(adopet_model_ficha model) throws ClassNotFoundException{
		Connection o_ConexaoBD;
		PreparedStatement cmdSQL;
				
		int rsAdopet = 0;	
		String INSERT_FICHA_SQL = "INSERT INTO ficha_adocao" +"(renda, resultado_adocao, data_pedido_adocao, identificador_animal"
		+ ",especie, nome_animal, cor, raca, deficiencia, data_nascimento) "
		+ "VALUES "+"(?,?,?,?,?,?,?,?,?,?);";	
		String DELETE_ANIMAL_SQL = "DELETE FROM animal WHERE id = ?";
		String usuario, senha_banco, banco;
		
		banco="jdbc:mysql://localhost/adopet_banco";
		usuario="root";
		senha_banco="admin";
		Class.forName("com.mysql.jdbc.Driver");
		
		try{		
			o_ConexaoBD = DriverManager.getConnection(banco, usuario,senha_banco);
			PreparedStatement PreparedStatement = o_ConexaoBD.prepareStatement(INSERT_FICHA_SQL);			
			PreparedStatement PreparedStatement2 = o_ConexaoBD.prepareStatement(DELETE_ANIMAL_SQL);
			
			PreparedStatement.setInt(1, model.getRenda());
			PreparedStatement.setString(2, model.getResultado_adocao());
			PreparedStatement.setString(3, model.getData_pedido_adocao());
			PreparedStatement.setString(4, model.getId());
			PreparedStatement.setString(5, model.getEspecie());
			PreparedStatement.setString(6, model.getNome());
			PreparedStatement.setString(7, model.getCor());
			PreparedStatement.setString(8, model.getRaca());
			PreparedStatement.setString(9, model.getDeficiencia());
			PreparedStatement.setString(10, model.getData());

			System.out.println("caiu no registrar ficha");
			rsAdopet = PreparedStatement.executeUpdate();
		
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return rsAdopet;
	}

	public int apagarAnimal(adopet_model_ficha adopet) throws ClassNotFoundException{
		Connection o_ConexaoBD;
		PreparedStatement cmdSQL;
				
		int rsAdopet = 0;	
		String DELETE_ANIMAL_SQL = "DELETE FROM animal WHERE id = (?)";
		String usuario, senha_banco, banco;
		
		banco="jdbc:mysql://localhost/adopet_banco";
		usuario="root";
		senha_banco="admin";
		Class.forName("com.mysql.jdbc.Driver");
		
		try{		
			o_ConexaoBD = DriverManager.getConnection(banco, usuario,senha_banco);
			PreparedStatement PreparedStatement = o_ConexaoBD.prepareStatement(DELETE_ANIMAL_SQL);
			PreparedStatement.setString(1, adopet.getId());
			System.out.println(adopet.getId());

			rsAdopet = PreparedStatement.executeUpdate();
		
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return rsAdopet;
	}


}
