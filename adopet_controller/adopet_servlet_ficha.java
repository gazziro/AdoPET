package adopet_controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

import adopet_DAO.adopet_dao_animal;
import adopet_DAO.adopet_dao_ficha;
import adopet_model.adopet_model_ficha;

@WebServlet("/adopet_servlet_ficha")
public class adopet_servlet_ficha extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private adopet_dao_ficha adopet_dao_ficha = new adopet_dao_ficha();

    public adopet_servlet_ficha() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher dispatcher = request.getRequestDispatcher("/Version-1-AdoPET-Ficha.jsp");
		dispatcher.forward(request, response);
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String renda = request.getParameter("renda");
		int renda_convertida = Integer.parseInt(renda);
		String nome = request.getParameter("Nome");
		String id = request.getParameter("Id");
		String especie = request.getParameter("especie");
		String cor = request.getParameter("cor");
		String raca = request.getParameter("raca");
		String deficiencia = request.getParameter("deficiencia");
		String data = request.getParameter("data");
		String dataFicha = request.getParameter("data_pedido_adocao"); 
		String resultado = "Reprovado";
		
		
		if(renda_convertida >= 1500) {
			resultado = "Aprovado";
			adopet_model_ficha adopet = new adopet_model_ficha();
			
			adopet.setDataFicha(dataFicha);
			adopet.setRenda(renda_convertida);
			adopet.setResultado_adocao(resultado);
			adopet.setNome(nome);
			adopet.setId(id);
			adopet.setEspecie(especie);
			adopet.setCor(cor);
			adopet.setRaca(raca);
			adopet.setData(data);
			adopet.setDeficiencia(deficiencia);

			try {
				adopet_dao_ficha.registrarFicha(adopet);
				adopet_dao_ficha.apagarAnimal(adopet);
				response.sendRedirect("Version-1-AdoPET-Home.jsp");
				System.out.println("caiu aqui");

				
			}catch(ClassNotFoundException e) {
				e.printStackTrace();
				response.sendRedirect("Version-1-AdoPET-Animais1.jsp");
			}
			
		}else {
			resultado = "Reprovado";
			response.sendRedirect("Version-1-AdoPET-Sobre.jsp");
			
		}
		

		
	}

}
