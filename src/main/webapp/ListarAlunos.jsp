<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page import="model.*" %>
 <%@ page import="model.Usuario" %>
 


<%@ page import="java.util.List" %>
<%@ page import= "java.util.ArrayList"%>
<%@ page import= "java.util.Iterator" %>

<%@ page import= "javax.servlet.ServletContext" %>

 <%
 
//MÓ SACANGEM, NEM AVISA QUE TEM QUE IMPORTAR arraylist haha.
ServletContext servContext = ((ServletRequest) request).getServletContext();

 
List<Usuario> usuarios = (List<Usuario>) servContext.getAttribute("usuarios");
for (Usuario i : usuarios) { 
	
	/*pra printar nao usa System, em JSP usa "console" -: nao pegou!*/
		// out.println("1");
	/*ou: getServletContext().log(" NO LOGINservlet tem =" + usuario.getNome()+)*/
	
	getServletContext().log("1"); //PRINTA COMO INFORMAÇÃO EM VERMLEHO NO CONSOLE!!!
	}






 //Pra testes (roda):
  //List<ParticipadoProjeto> participacoes = new ArrayList<>();
  //participacoes.add(new ParticipadoProjeto(0, "NULA", 0, 1, false, true));


Usuario usuario = (Usuario) session.getAttribute("usuario");



if (usuario == null) {
    response.sendRedirect("index.jsp");
} else {
%>
    <!-- aqui vai o conteúdo da pagina index.jsp caso o usuario nao esteja logado -->
    
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
            <h1 class="tituloheader">PERFIL <br> DO <br> Professor </h1>
        </header>

        <div class="icone"><img style="height: 80px; width: 80px; padding-top: 20px;" src="assets/iconprof.png"></div> <!--AVATAR-->

        <!--MENU-->
        <div class="MENU">                      
            <div class="item1_menu"><a href="PrincipalProfessor.jsp">Listar Participações em Projeto</a></div>
            <div class="item2_menu"><a href="#"> Ver Alunos </a></div>  
            <div class="item3_menu"><a href="#">Ver Participações Pendentes</a></div>
            <div class="item4_menu"><a href="#">Ver Comprovações Pendentes</a></div>
            <div class="item5_menu"><a href="#">Ver Certificados Pendentes</a></div>
            <div class="item6_menu"> <a href="#">Outros</a></div>
        </div>

        <!--Tela direita - Formularios...-->
        <div class="Formulario">

            <h1 class="title1">Gerenciamento</h1>
            <h1 class="title2">Coodernação</h1>
                           
				<table>
				  <thead>
				    <tr>
				      <th>Nome</th>
				      <th>Matrícula</th>
				      <th>E-mail</th>
				  	</tr>
				  </thead>
				  <tbody>
				  
					 <% if (usuarios != null) { 
					 

				     for (Usuario i : usuarios) { %>
				      <tr>
				       
				        <td><%= i.getNome() %></td>
				        <td><%= i.getMatricula() %></td>
				        <td><%= i.getEmail() %></td>
				        
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
    	<!-- BOTAO NOVO DE LOGOUT -->
	</form>
        
    </div>

</body>

</html>

<%
}
%>
