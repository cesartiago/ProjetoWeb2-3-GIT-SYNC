package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.Aluno;
import model.ParticipadoProjeto;
import model.Usuario;

/**
 * Servlet implementation class ProcessaRelatorioServlet
 */
public class ProcessaRelatorioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProcessaRelatorioServlet() {
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
		//doGet(request, response);
		
		//Para passar aluno, criei um. Ñ consegui por session ainda
		Usuario aluno = new Aluno("nome","senha");
		

		
		
		 // Recebe os dados do formulário
        String nome = request.getParameter("nome");
        int id = Integer.parseInt(request.getParameter("id"));
        int numeroDoProjeto = Integer.parseInt(request.getParameter("numeroDoProjeto"));
        boolean homologado = request.getParameter("homologado") != null;

        // Cria uma instância de ParticipadoProjeto
        ParticipadoProjeto participacao = new ParticipadoProjeto();
        participacao.setNome(nome);
        participacao.setId(id);
        participacao.setNumProjeto(numeroDoProjeto);
        participacao.setAluno(aluno); // Aqui EU defino o aluno correspondente à participação
        participacao.setHomologado(homologado);
        participacao.setAtivo(true); // Por padrão, consideramos a participação ativa
        
        System.out.println(participacao.getNome());

        // Obtém a lista de participações do contexto da aplicação      ServletContext context = getServletContext();
      List<ParticipadoProjeto> participacoes = (List<ParticipadoProjeto>) context.getAttribute("participacoes");

        // Adiciona a nova participação na lista
      participacoes.add(participacao);

        // Atualiza a lista no contexto da aplicação
      context.setAttribute("participacoes", participacoes);
      
      request.setAttribute("mensagem", "Cadastrado com sucesso!");
      request.getRequestDispatcher("PrincipalAluno.jsp").forward(request, response);
      /*^ com getRequestDispatcher.forward, vc ja vai para a outra página, ou a msm so q atualizada
       * NAO PRECISANDO de um response.sedRedirect
       */
        

        // Redireciona para uma página de confirmação
        //response.sendRedirect("confirmacao.html");
	}

}


