<%-- 
    Document   : cabecalho
    Created on : 09/12/2016, 19:15:42
    Author     : giova
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=WINDOWS-1252">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/estilo.css" rel="stylesheet">
        <title>AUTOPARTS.COM</title>
    </head>
    <body>

        <header>
            <%
                if (request.getSession().getAttribute("usuario") == null) {%>
            <div class="container" style="margin-bottom: -10px;">
                <ul class="list-inline">
                    <li>
                        <a href="index.jsp">Início |</a>
                    </li>
                    <li>
                        Bem Vindo Usuário |
                    </li>

                    <li>
                        <a href="#" data-toggle="modal" data-target="#ModalLogin">
                            Login |
                        </a>
                    </li>

                    <li>
                        Meu Carrinho |
                    </li>
                    <li>
                        <span class="glyphicon glyphicon-search"></span>
                    </li>
                </ul>
            </div>

            <!--MODAL LOGIN INICIO -->
            <div class="modal fade" id="ModalLogin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <form class="form-horizontal" action="login.jsp" method="post">
                            <div class="modal-header">
                                <span class="glyphicon glyphicon-user" style="font-size: 30px;"></span>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label  class="col-sm-2 control-label"> Usuário:</label>
                                    <div class="col-sm-8">
                                        <input class="form-control" type="text" name="usuario"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label  class="col-sm-2 control-label"> Senha:</label>
                                    <div class="col-sm-8">
                                        <input class="form-control" type="password" name="senha"/><br>
                                    </div>
                                </div> 
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Sair</button>
                                <input type="submit" class="btn btn-primary" value="Entrar"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!--MODAL LOGIN FIM -->   

            <% } else {%>
            <div class="container" style="margin-bottom: -10px;">
                <ul class="list-inline">
                     <li>
                        <a href="index.jsp">Início |</a>
                    </li>
                    <li>
                        Bem Vindo <%=session.getAttribute("usuario")%> |
                    </li>

                    <li>
                        <a href="logout.jsp">
                           Sair |
                        </a>
                    </li>
                    <li>
                        <a href="listaCarrinho.jsp">
                            Meu Carrinho |
                        </a>
                    </li>
                    <li>
                        <input type="text" class="form-control" placeholder="Pesquisar...">
                    </li>
                </ul>
            </div>

            <%}%>
            <hr>
            <div class="container cabecalho">
                <div class="row">
                    <div class="col-md-2 col-md-offset-2">
                        <img src="imagens/logo.png"/>
                    </div>
                    <div class="col-md-3"> 
                        <h1>AUTOPARTS</h1>
                    </div>
                </div>
            </div>
            <hr>
        </header>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
