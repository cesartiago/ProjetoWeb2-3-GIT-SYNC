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

if (usuario == null) {
    response.sendRedirect("index.jsp");
} else {
%>
    <!-- aqui vai o conteúdo da página index.jsp caso o usuário não esteja logado -->
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar Participação</title>
    <link rel="stylesheet" href="assets/style_relatorios.css">
    <script language="javascript" type="text/javascript" src="validaaluno.js"></script>
</head>

<body>
    <div class="container">   <!--Caixa inteira...-->
  
        <header class="header1">            
            <h1 class="tituloheader">PERFIL <br> DO <br> ALUNO</h1>
        </header>

        <div class="icone"><img style="height: 80px; width: 80px; padding-top: 20px;" src="assets/iconaluno.png"></div> <!--AVATAR-->

        <!--MENU-->
        <div class="MENU">
            <div class="item1_menu"><a href="PrincipalAluno.jsp">Registrar Participação</a></div>
            <div class="item2_menu"><a href="MinhasParticipacoes.jsp">Meus Projetos e Participações</a></div>  
            <div class="item3_menu"><a href="enviarcertificado.php"> Participações pendentes de aceitação </a></div>
            <div class="item4_menu"><a href="enviarcertificado.php"> Enviar documentação de comprovação </a></div>
            <div class="item5_menu"><a href="enviarcertificado.php"> Status da comprovação </a></div>
            <div class="item6_menu"><a href="enviarcertificado.php"> Contato com a coordenação </a></div>
        </div>

        <!--Tela direita - Formularios...-->
        <div class="Formulario">

            <h1 class="title1">Atividades Extensionistas</h1>
            <h1 class="title2">Registrar Atividade</h1>
            
 
                <form action="ProcessaRelatorioServlet" method="post" class="form2">
                <div>
			        <label for="nome">Nome do projeto:</label>
			        <input type="text" id="nome" name="nome" required/>
			   	</div>
			   	
			   	<div>
			        <label for="numProcesso">Nº de processo:</label>
			        <input type="text" id="nome" name="nome" required/>
			   	</div>
			   	
			   	<div>
			        <label for="dataInic">Data de ínicio:</label>
			        <input type="date" id="nome" name="nome" required/>
			   	</div>
			   	
			   	<div>
			        <label for="numProcesso">Horas semestrais:</label>
			        <input type="text" id="nome" name="nome" required/>
			   	</div>
			   	
			   	<div>
			        <label for="numProcesso">Atribuições:</label>
			        <input type="textarea" id="nome" name="nome" required/>
			   	</div>
			   	
			   	
			   	<!--  ABAIXO  -->
			    <div>
			        <label for="id">id:</label>
			        <input type="number" id="id" name="id" required />
			    </div>
			    <div>
			        <label for="numeroDoProjeto"> Nº do projeto:</label>
			        <input type="number" id="numeroDoProjeto" name="numeroDoProjeto" required />
			    </div>
			    <div>	
			    	<label for = "homologado"> Homologado? </label>		    	
				    <input type = "checkbox" id = "homologado" name = "homologado" value = "homologado">
				    	        
			        
			    </div>                    
                    <div><input class="butao" type="submit" value="Enviar" name="botao_relatorio"></div>
				   <!-- mensagem vinda de LoginServlet, falando login inválido. O valor/texto da msg tá escrito lá no servlet -->
                   <% String mensagem = (String) request.getAttribute("mensagem"); %>
				<% if (mensagem != null && !mensagem.isEmpty()) { %>
				  <div class="alert alert-danger">
				    <%= mensagem %>
				  </div>
				<% } %>
                </form>
             
           
            <!--Logo-->
           

        </div>
        
    <!--Logo-->
    <!--INFERIOR DA TELA ESQUERDA--> 

        <!--Logo-->
        <div class="logoprincipal">  
            <div class = "dentro_logo">
                <img style="height: 100px; width: 100px;"  src="assets/logo.png">  
                <p id="titulo">Portal <br> Projeto de <br>Extensão</p>
            </div>
        </div>
        <form action="LogoutServlet" method="post">
    	<button style=" width: 80px; height: 40px;" href = "index.jsp" name="novoCadastro" type="submit">Logout</button>
    	<!-- BOTÃO NOVO DE LOGOUT -->
	</form>
        
    </div>

</body>

</html>

<%
}
%>
