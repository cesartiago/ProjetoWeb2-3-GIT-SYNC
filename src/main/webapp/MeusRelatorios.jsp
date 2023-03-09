<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Verificar relat�rios</title>
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
            <div class="item1_menu"><a href="PrincipalAluno.jsp">Enviar Participa��o em Projeto</a></div>
            <div class="item2_menu"><a href="MeusRelatorios.jsp">Meus Relat�rios</a></div>  
            <div class="item3_menu"><a href="enviarcertificado.php">Enviar Certificado</a></div>
            <div class="item4_menu"></div>
            <div class="item5_menu"></div>
            <div class="item6_menu"></div> 
        </div>

        <!--Tela direita - Formularios...-->
        <div class="Formulario">

            <h1 class="title1">Projeto 1</h1>
            <h1 class="title2">Enviar relat�rio</h1>
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
				      <th>N�mero do Projeto</th>
				      <th>Aluno</th>
				      <th>Homologado</th>
				      <th>Ativo</th>
				    </tr>
				  </thead>
				  <tbody>
				    <c:forEach items="${participacoes}" var="participacao">
				      <tr>
				        <td>${participacao.nome}</td>
				        <td>${participacao.id}</td>
				        <td>${participacao.numProjeto}</td>
				        <td>${participacao.aluno}</td>
				        <td>${participacao.homologado}</td>
				        <td>${participacao.ativo}</td>
				      </tr>
				    </c:forEach>
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
                <p id="titulo">Portal <br> Projeto de <br>Extens�o</p>
            </div>
        </div>
        
    </div>

</body>

</html>
