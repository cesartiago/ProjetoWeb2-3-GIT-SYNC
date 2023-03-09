package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Application Lifecycle Listener implementation class AppContextListener
 *
 */

import model.ParticipadoProjeto;


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

    	        // Cria a lista de participações de projeto
    	        List<ParticipadoProjeto> participacoes = new ArrayList<>();

    	        // Adiciona a lista no contexto da aplicação
    	        context.setAttribute("participacoes", participacoes);
    	        
    	        System.out.println("AppContextListener executado com sucesso!");
    	    }
    }
	
}
