package controller;
//CRIADO COM O BOTÃO ESQ. no proj, listener. Não como classe, pra dps implementar listener. Já veio tudo implementado.
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import model.Aluno;
import model.Coordenador;

/**
 * Application Lifecycle Listener implementation class AppContextListener
 *
 */

import model.ParticipadoProjeto;
import model.Usuario;


/*NECESSÁRIO PRA JA SE INICAR UMA LISTA QUANDO A APLICAÇÃO INICIAR.
 *E SEMPRE TERMOS DE ONDE PEGAR ESSA LISTA DESDE O COMEÇO, EM QUALQUER SERVLET*/

/*O ServletContextListener escuta os eventos de inicialização e destruição da aplicação web inteira, ou seja, ele é notificado quando
 * a aplicação é iniciada ou finalizada, não apenas quando um servlet específico é executado. Isso permite que você faça configurações e
 * inicializações que se aplicam a toda a aplicação, como criar objetos compartilhados que serão usados por diferentes servlets.
 * */
 
 /*Isso resolveria o problema de ter um aluno*/
public class AppContextListener implements ServletContextListener {
	

    /**
     * Default constructor. 
     */
    public AppContextListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    	
    	 {
    		 		       
    	           	        
	    		//Pega o contexto
	 	        ServletContext context = sce.getServletContext();
    	        //O mesmo para a LISTA de Usuarios e para a LISTA DE PARTICIPACOES
    	        
    	        List<Usuario> usuarios;
    	        usuarios = new ArrayList<Usuario>();
    	        System.out.println("Rodei essa parte");
    	        usuarios.add(new Aluno (0,"a", "123") );
    	        
    	        usuarios.add(new Aluno (1,"João", "1234") );
    	        usuarios.add(new Aluno (2,"Maria", "5678") );
    	        
    	        usuarios.add(new Coordenador (4,"prof", "123", null, "prof", null, "professor") );
    	        
    	        context.setAttribute("usuarios", usuarios);  
    	        //^ Torna disponível pra toda app web
    	        
    	      

    	        // Cria a lista de participações de projeto
    	        List<ParticipadoProjeto> participacoes;
    	        participacoes = new ArrayList<ParticipadoProjeto>();
    	        System.out.println("parte da lista de projetos ok");
    	        participacoes.add(new ParticipadoProjeto(0, "VEIO DO LIST-INITI", 0, 0, false, true));
    	   
    	        

    	        // Adiciona a lista no contexto da aplicação
    	        context.setAttribute("participacoes", participacoes);
    		           	          	        
    	            	     	        
    	        System.out.println("AppContextListener executado com sucesso!");
    	    }
    }
	
}
