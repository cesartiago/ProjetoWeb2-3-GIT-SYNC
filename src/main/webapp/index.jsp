<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page import="model.Usuario" %>
 <% 

Usuario usuario = (Usuario) session.getAttribute("usuario");

 /*
if (session.isNew()) {
	 response.sendRedirect("a.jsp");
}
 */

if (usuario != null) {
	/*System.out em jsp n�o, em jsp, o mecanismo � o "out" solo mesmo. MAS O "OUT" N�O T� IMPRIMINDO, PELO MENOS, EU N�O VEJO 
	pode ser q seja em outro lugar sem se o Eclipse e o navegador.
	ENT�O USE = getServletContext().log("mensagem");
	*/
     	//out.println(" -  NO LOGINservlet tem =" + usuario.getNome()+ " senha= " + usuario.getSenha());
       	 getServletContext().log(" NO LOGINservlet tem =" + usuario.getNome()+ " senha= " + usuario.getSenha());//Estranho funcionar sem passar pra uma var�avel/objeto
    response.sendRedirect("PrincipalAluno.jsp");
    
} else {
%>
    <!-- aqui vai o conte�do da p�gina index.jsp caso o usu�rio n�o esteja logado -->

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="assets/formulario.css"> <!-- a pasta css � visivel a todos -->
        <title> Portal Projeto de Extens�o </title>
    </head>

    <body>
        <div class="container">
            <div class = "logo">
                <div class="dentro_logo">
                    <img style="height:150px; width:150px;" src="assets/logo.png">
                    
                    
                    
                    <p id="titulo"> Portal <br> Projeto de <br> Extens�o</p>
                    
                </div>
            </div>
           
            <form action="LoginServlet" method="POST">
                <div class="fora_login">
                    <div class="loginform">  
                    
                    <!-- mensagem vinda de LoginServlet, falando login inv�lido. O valor/texto da msg t� escrito l� no servlet -->
                    <% String mensagem = (String) request.getAttribute("mensagem"); %>
					<% if (mensagem != null && !mensagem.isEmpty()) { %>
					  <div class="alert alert-danger">
					    <%= mensagem %>
					  </div>
					<% } %>
                     
                        <h2>Login<h2>
                        <p>Nome:</p>
                        <input type="text" id="login" name="nome" placeholder="Nome">
                        <p>Senha:</p>
                        <input type="password" id="pass" name="senha" placeholder="Senha">
                        <br></br>
                        <button>Entrar</button>
                        <br></br>
                        <button><a href="cadastro.jsp" style="text-decoration:none; color:black">Criar nova conta</a></button>
                    </div>  
                </div>
            </form>
        </div>
    </body>
</html>

<%
}
%>
