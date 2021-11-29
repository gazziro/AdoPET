package adopet_controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import adopet_DAO.adopet_dao;
import adopet_model.adopet_model;

@WebServlet("/register")
public class adopet_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private adopet_dao adopet_dao = new adopet_dao();
	
    public adopet_servlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/Version-1-AdoPET-CadastroUser.jsp");
		dispatcher.forward(request, response);	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cpf = request.getParameter("cpf");
		String nome = request.getParameter("nome");
		String senha = request.getParameter("senha");
		String email = request.getParameter("email");
		String operacao = request.getParameter("Cadastrar");
		
		adopet_model adopet = new adopet_model();
		adopet.setCpf(cpf);
		adopet.setNome(nome);
		adopet.setSenha(senha);
		adopet.setEmail(email);
		adopet.setOperacao(operacao);
		
		try {
			adopet_dao.registrarUsuario(adopet);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	
		RequestDispatcher dispatcher = request.getRequestDispatcher("/Version-1-AdoPET-Home.jsp");
		dispatcher.forward(request, response);	
		}										

}
