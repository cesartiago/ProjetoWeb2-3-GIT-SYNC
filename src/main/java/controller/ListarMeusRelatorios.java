package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ParticipadoProjeto;

/**
 * Servlet implementation class ListarMeusRelatorios
 */
public class ListarMeusRelatorios extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListarMeusRelatorios() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		// Obtém a lista de participações do contexto da aplicação
		//Pego contexto
		ServletContext context = getServletContext();
		//Pego o atributo, faço seu CAST para List<tipo>, e guardo numa lista do mesmo <tipo>
		List<ParticipadoProjeto> participacoes = (List<ParticipadoProjeto>) context.getAttribute("participacoes");
		
		/*
		 *  P/ exibir a lista de participações em uma JSP, posso adicionar a lista como um atributo no
		 *  objeto de requisição usando o método setAttribute(), para que a JSP possa acessá-lo e exibi-lo.
		 *  */
		request.setAttribute("participacoes", participacoes);
		
		//Encaminha a solicitação para a página JSP:
		RequestDispatcher dispatcher = request.getRequestDispatcher("/MeusRelatorios.jsp");
		dispatcher.forward(request, response);
	}

}
