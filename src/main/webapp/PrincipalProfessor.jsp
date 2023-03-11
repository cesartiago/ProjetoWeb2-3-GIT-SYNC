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
            <div class="item1_menu"><a href="PrincipalAluno.jsp">Listar Participação em Projeto</a></div>
            <div class="item2_menu"><a href="MeusRelatorios.jsp">Ver</a></div>  
            <div class="item3_menu"><a href="enviarcertificado.php">Ver Certificado</a></div>
            <div class="item4_menu"></div>
            <div class="item5_menu"></div>
            <div class="item6_menu"></div> 
        </div>

        <!--Tela direita - Formularios...-->
        <div class="Formulario">

            <h1 class="title1">Projeto 1</h1>
            <h1 class="title2">Enviar relatório</h1>
            <?php
                if(isset($_SESSION['msg'])){
                    echo $_SESSION['msg'];
                    unset($_SESSION['msg']);

                }

            ?>
 
                <ol>
				<li>Aluno 1</li>
				<li>Aluno 2</li>
				<li>Aluno 3</li>
				<li>Aluno 4</li>
				<li>Aluno 5</li>
				</ol>
				             
           
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
