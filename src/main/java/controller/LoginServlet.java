package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Aluno;
import model.Usuario;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Usuario> usuarios;
	
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		String nome = request.getParameter("nome");
        String senha = request.getParameter("senha");
        
        System.out.println("\n Vc digitou " + nome + " e senha = " + senha);
        
        
        //session
        HttpSession session = request.getSession();
        //List<Usuario> usuarios = (List<Usuario>) session.getAttribute("usuarios");
        
        
        if ( (List<Usuario>) getServletContext().getAttribute("usuarios") != null ) {
            
        
        usuarios = (List<Usuario>) getServletContext().getAttribute("usuarios");
        /*O método getServletContext().getAttribute("usuarios") retorna um objeto genérico do tipo Object, então é necessário fazer um cast
         * explícito para o tipo List<Usuario> para que você possa acessar e iterar sobre os objetos Usuario armazenados na lista.
         * Sem o cast, o compilador pode gerar um erro de compilação porque ele não sabe qual tipo de objeto está sendo
         * retornado pelo método getAttribute().*/
        
        
        
		usuarios.add(new Aluno ("TESTE DE ADD dentro do post", "linha 90+-") );
        System.out.println("adicionado ");
        }
        
       boolean loginValido = false;

        if (usuarios != null) {       	      
        	
            for (Usuario usuario : usuarios) {
            	System.out.println(" -  NO LOGINservlet tem =" + usuario.getNome()+ " senha= " + usuario.getSenha());
                if (usuario.getNome().equals(nome) && usuario.getSenha().equals(senha)) {
                    loginValido = true;
                    session.setAttribute("usuario", usuario);
                    break;
                }
            }
        }

        if (loginValido) {
            response.sendRedirect("PrincipalAluno.jsp");
        } else {
            request.setAttribute("mensagem", "Usuário ou senha inválido");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
	}

}
