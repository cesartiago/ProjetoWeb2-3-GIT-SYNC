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
 * Servlet implementation class CadastrarUsuarioServelet
 */
public class CadastrarUsuarioServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Usuario> usuarios;
	
	 @Override
	    public void init() throws ServletException {
	        super.init();
	        // Inicializa a lista de usuários no escopo de aplicação
	        /* cria um objeto ArrayList vazio e o atribui à variável usuarios. Isso significa que a variável usuarios não 
	        contém nenhum objeto antes da segunda linha ser executada, mas depois da segunda linha, ela contém uma nova
	        instância de ArrayList
	        */
	        usuarios = new ArrayList<Usuario>();
	        if ( (List<Usuario>) getServletContext().getAttribute("usuarios") != null ) {
	            
	            
	            usuarios = (List<Usuario>) getServletContext().getAttribute("usuarios");
	            /*O método getServletContext().getAttribute("usuarios") retorna um objeto genérico do tipo Object, então é necessário fazer um cast
	             * explícito para o tipo List<Usuario> para que você possa acessar e iterar sobre os objetos Usuario armazenados na lista.
	             * Sem o cast, o compilador pode gerar um erro de compilação porque ele não sabe qual tipo de objeto está sendo
	             * retornado pelo método getAttribute().*/
	            
	            
	            
	    		System.out.println("Lista de usuarios pega do contexto");
	            }
	       	        
	       	        
	     // Inicializa a lista de usuários no escopo de aplicação
	        //usuarios.add(new Aluno ("João", "1234") );
	        //usuarios.add(new Aluno ("Maria", "5678") );
	        //getServletContext().setAttribute("usuarios", usuarios);
	        //^ Torna disponível pra toda app web
	        
	        System.out.println("Rodei essa parte");
	        
	        for (Usuario usuario : usuarios) {
                // ^ Faça "alguma coisa" com cada objeto Usuario da lista
                System.out.println(usuario.getNome() + " senha= " + usuario.getSenha());
                
            //ISSO É SÓ NA INICIALIZAÇÃO DO SERVICE    
            }
	        
	        
	        
	    }
	 /*
	  *  O método init() é um método de inicialização que é chamado quando a instância da classe é criada. Nesse método, a lista usuarios 
	  *  é inicializada com uma nova instância de ArrayList<Usuario>
	  */
	 
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastrarUsuarioServelet() {
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
		
		String nome = request.getParameter("nome");
        String senha = request.getParameter("senha");

      //
        HttpSession session = request.getSession();
        session.setAttribute("usuarios", usuarios);

        
     // Verifica se o nome de usuário já está registrado
        
        if (usuarios.stream().anyMatch(u -> u.getNome().equals(nome))) {
            request.setAttribute("mensagem", "Nome de usuário já registrado. Tente outro nome.");
            request.getRequestDispatcher("cadastro.jsp").forward(request, response);
        } else {
            // Cria um novo objeto Aluno e adiciona à lista de usuários
            Aluno aluno = new Aluno(nome, senha);
            usuarios.add(aluno);
            System.out.println("usuario adicionou nome:" + nome + "senha:" + senha);
            
            if (!usuarios.isEmpty()) {
                System.out.println("usuarios está vazio");
                }
            
            
           
            for (Usuario usuario : usuarios) {
                // Faz alguma coisa com cada objeto Usuario da lista
                System.out.println("Todos 1p1 nome =" + usuario.getNome()+ " senha= " + usuario.getSenha());
            }
            
            response.sendRedirect("index.jsp");
        }
            
                
	}

}
