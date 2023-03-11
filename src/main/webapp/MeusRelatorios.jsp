<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="model.*" %>

<%@ page import="java.util.List" %>
<%@ page import= "java.util.ArrayList"%>
<%@ page import= "java.util.Iterator" %>

<%@ page import= "javax.servlet.ServletContext" %>

 <%
 //MÓ SACANGEM, NEM AVISA QUE TEM QUE IMPORTAR arraylist haha.
ServletContext servContext = ((ServletRequest) request).getServletContext();

 
List<ParticipadoProjeto> participacoes = (List<ParticipadoProjeto>) servContext.getAttribute("participacoes");
List<ParticipadoProjeto> participacoes_desse_usuario = new ArrayList<>();

Usuario usuario_atual = (Usuario) session.getAttribute("usuario");

for (ParticipadoProjeto i : participacoes) { 
 if (i.getAluno() == usuario_atual.getId()) { 
	 participacoes_desse_usuario.add(i);
	 
	}
}



Usuario usuario = (Usuario) session.getAttribute("usuario");

 //Pra testes (roda):
  //List<ParticipadoProjeto> participacoes = new ArrayList<>();
  //participacoes.add(new ParticipadoProjeto(0, "NULA", 0, 1, false, true));
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Verificar relatórios</title>
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
            <div class="item2_menu"><a href="MeusRelatorios.jsp">Meus Projetos e Participações</a></div>  
            <div class="item3_menu"><a href="enviarcertificado.php"> Participações pendentes de aceitação </a></div>
            <div class="item4_menu"><a href="enviarcertificado.php"> Enviar documentação de comprovação </a></div>
            <div class="item5_menu"><a href="enviarcertificado.php"> Status da comprovação </a></div>
            <div class="item6_menu"><a href="enviarcertificado.php"> Contato com a coordenação </a></div>
        </div>

        <!--Tela direita - Formularios...-->
        <div class="Formulario">

            <h1 class="title1">Atividades Extensionistas</h1>
            <h1 class="title2">Meus relatório</h1>
            <?php
                if(isset($_SESSION['msg'])){
                    echo $_SESSION['msg'];
                    unset($_SESSION['msg']);

                }

            ?>
 
                <table>
				  <thead>
				    <tr>
				      <th>Nome</th>
				      <th>ID</th>
				      <th>Número do Projeto</th>
				      <th>Aluno</th>
				      <th>Homologado</th>
				      <th>Ativo</th>
				    </tr>
				  </thead>
				  <tbody>
				  
					 <% if (participacoes != null) { 
					 

				     for (ParticipadoProjeto participacao : participacoes_desse_usuario) { %>
				      <tr>
				        <td><%= participacao.getNome() %></td>
				        
				      </tr>
				    <% }
				      %>
				     
				     <% } else { %>
 					<p>Ainda não há participações registradas.</p>
					<% } %>
				  </tbody>
				</table>
             
           
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
