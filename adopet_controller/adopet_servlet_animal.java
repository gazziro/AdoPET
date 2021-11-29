package adopet_controller;
import java.io.Console;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.mysql.cj.jdbc.Blob;

import javax.servlet.RequestDispatcher;
import adopet_model.adopet_model_animal;
import adopet_DAO.adopet_dao_animal;

@WebServlet("/adopet_servlet_animal")
public class adopet_servlet_animal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private adopet_dao_animal adopet_dao_animal = new adopet_dao_animal();

    public adopet_servlet_animal() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/Version-1-AdoPET-CadastroAnimal.jsp");
		dispatcher.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		String nome = request.getParameter("nome");
		String especie = request.getParameter("especie");
		String cor = request.getParameter("cor");
		String raca = request.getParameter("raca");
		String deficiencia = request.getParameter("deficiencia");
		String data = request.getParameter("data");
		
		
		adopet_model_animal adopet_animal = new adopet_model_animal();
		
		adopet_animal.setEspecie(especie);
		adopet_animal.setCor(cor);
		adopet_animal.setNome(nome);
		adopet_animal.setRaca(raca);
		adopet_animal.setDeficiencia(deficiencia);
		adopet_animal.setData(data);
		
		try {
			adopet_dao_animal.registrarAnimal(adopet_animal);
			response.sendRedirect("Version-1-AdoPET-Home.jsp");
			
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
			response.sendRedirect("Version-1-AdoPET-CadastroAnimal.jsp");
			
		}
		
	}
}
