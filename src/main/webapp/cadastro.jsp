<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="assets/cadastro.css"> <!-- ../assets pra voltar uma unidade -->
        <script language="javascript" type="text/javascript" src="Tratamentoform.js"></script>
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

            <div class="fora_login">
                <form class="form" action="CadastrarUsuarioServelet" method="post">
                    <div class="loginform">   
                        <h2 id="cads">Novo Cadastro</h2>
                        <div class="campos">
                        
                     
                             
                            <label>Nome:</label>
					        <input type="text" id="login" name="nome" required>
					        <br>
					        
					        <label for="senha">Senha:</label>
					        <input type="password" id="senha" name="senha" required>
					        <br>
					        
					        <label for="matricula">Matricula:</label>
					        <input type="text" id="matricula" name="matricula" required>
					        <br>
					        
					        <label for="nome">Nome:</label>
					        <input type="text" id="nome" name="nome" required>
					        <br>
					        
					        <label for="email">E-mail:</label>
					        <input type="email" id="email" name="email" required>
					        <br>
					                      

                            <div id="botton_center"> 
                            <!-- COM JAVASCRIPT -->
                        <!--
                                <a ><button style=" width: 60px; height: 25px;" href = "../index.php" name="novoCadastro" type="submit" onclick="verificanull()">Enviar</button></a>
                        -->
                              
                            <!-- SEM JAVASCRIPT -->
                            <a ><button style=" width: 80px; height: 40px;" href = "index.jsp" name="novoCadastro" type="submit">Enviar</button></a>
                                                     
                            
                            </div>
                        </div>
                    </div>
                </form>
            </div>  
        </div>
    </body>
</html>