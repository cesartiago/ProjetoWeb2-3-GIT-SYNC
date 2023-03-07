<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="assets/formulario.css"> <!-- a pasta css é visivel a todos -->
        <title> Portal Projeto de Extensão </title>
    </head>

    <body>
        <div class="container">
            <div class = "logo">
                <div class="dentro_logo">
                    <img style="height:150px; width:150px;" src="assets/logo.png">
                    
                    
                    
                    <p id="titulo"> Portal <br> Projeto de <br> Extensão</p>
                    
                </div>
            </div>
           
            <form action="LoginServlet" method="POST">
                <div class="fora_login">
                    <div class="loginform">  
                    
                    <!-- mensagem vinda de LoginServlet, falando login inválido. O valor/texto da msg tá escrito lá no servlet -->
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