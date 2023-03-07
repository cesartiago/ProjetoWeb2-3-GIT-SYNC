<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<?php
    include_once("conexao.php");
    //Para conectar essa p�gina ao banco de dados. Entrar nele
    session_start();
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enviar Certificado</title>
    <link rel="stylesheet" href="assets/style.css">
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
            <div class="item1_menu"><a href="relatorios.php">Enviar Relat�rio</a></div>
            <div class="item2_menu"><a href="verificarhoras.php">Verificar Horas</a></div>  
            <div class="item3_menu"><a href="enviarcertificado.php">Enviar Certificado</a></div>
            <div class="item4_menu"></div>
            <div class="item5_menu"></div>
            <div class="item6_menu"></div> 
        </div>

        <!--Tela direita - Formularios...-->
        <div class="Formulario">

            <h1 class="title1">Enviar Certificado</h1>
            

            <form action="Processa_relatorio.php" method="post" class="form2">
                    <div>
                    <label for="buscaproj">Selecione o projeto: </label> 
                    
                    <select id="mes" name ="buscaproj">
                        <!-- <option> Selecione  </option> -- Ruim que a� j� pega a op��o valor de select = 1 -->

                       
                        -->
                    </select>
          
                    </div>                              
                    
                  
                    <div>      
                    <label for class="anexardoc">Anexar documento </label>
                    
                    <div class="anexardoc">  <!--Nessa linha n�s escolhemos o label da div, da divis�o, qual o espa�o dela etc. Sua descril�ao est� no arquivo css (.anexardoc {}) -->
                        <input type="file"   name="arquivo" class= "anexar" id="arquivo"> <!--Nessa linha est� acontecendo esse link da label, mas pela classe descrita ( .anexar{} )-->
                    </div>
                   
                    </div>
                    
                    
                           
                    <div><input class="butao" type="submit" value="Enviar" name="certificado" onclick="validarrela()"></div>
                </form>         

        
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




























