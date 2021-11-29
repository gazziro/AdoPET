package adopet_controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import adopet_DAO.adopet_dao_select;
import adopet_model.adopet_model;


@WebServlet("/adopet_servlet_select")
public class adopet_servlet_select extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private adopet_dao_select adopet_dao_select;

	private HttpSession session;
	
	public void init() {
		adopet_dao_select = new adopet_dao_select();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		
		adopet_model adopet = new adopet_model();
		
		adopet.setNome(nome);
		adopet.setEmail(email);
		adopet.setSenha(senha);

		try {
			if(adopet_dao_select.loginUsuarios(adopet)) {
				response.sendRedirect("Version-1-AdoPET-Home.jsp");
			
			}else {
				session = request.getSession();
				response.sendRedirect("Version-1-AdoPET-LoginErro.jsp");

			}		
		
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

}
