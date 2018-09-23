<%-- 
    Document   : index
    Created on : 29/11/2016, 23:20:48
    Author     : giova
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<%
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String url = "jdbc:derby://localhost:1527/Java2ProjetoFinal";
    Connection con = DriverManager.getConnection(url, "java2", "java2");

    try {
        java.sql.Statement statement = con.createStatement();
        ResultSet resultados = statement.executeQuery("select * from produto");

%>

<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=WINDOWS-1252">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/estilo.css" rel="stylesheet">
    </head>
    <body>
        <c:import url="cabecalho.jsp"/>
        <div class="container">
            <%while (resultados.next()) {%>
            <div class="col-lg-3 col-md-6 produto">
                <a href="#" data-toggle="modal" data-target="#ModalImagem<%=resultados.getString("id_produto")%>">
                    <img src="imagens/<%=resultados.getString("imagem_produto")%>" class="img-produto img-responsive">
                </a>
                <div class="detalhes">
                    <h4 class="nome-produto"><strong><%=String.format("%.25s", resultados.getString("nome_produto"))%>...</strong></h4>
                    <div>
                        <a href="#" class="btn btn-default" data-toggle="modal" data-target="#Modal<%=resultados.getString("id_produto")%>">+Detalhes</a>
                        <a href="adicionaCarrinho.jsp?id_produto=<%=resultados.getString("id_produto")%>" class="btn btn-default"><span class="glyphicon glyphicon-shopping-cart"></span>Adicionar</a>
                    </div>
                </div>
            </div>
            <!--MODAL PRODUTO INICIO-->
            <div class="modal fade" id="Modal<%=resultados.getString("id_produto")%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="myModalLabel"><%=resultados.getString("nome_produto")%></h4>
                        </div>
                        <div class="modal-body">
                            <div class="produto-modal">
                                <img src="imagens/<%=resultados.getString("imagem_produto")%>" class="img-produto img-responsive">
                                <h5 style="text-align: center;"><%=resultados.getString("detalhes_produto")%></h5>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                            <a href="adicionaCarrinho.jsp?id_produto=<%=resultados.getString("id_produto")%>" class="btn btn-default"><span class="glyphicon glyphicon-shopping-cart"></span>Adicionar</a>
                        </div>
                    </div>
                </div>
            </div>
            <!--MODAL PRODUTO FIM-->

            <!--MODAL IMAGEM INICIO-->
            <div class="modal fade" id="ModalImagem<%=resultados.getString("id_produto")%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="produto-modal">
                                <img src="imagens/<%=resultados.getString("imagem_produto")%>" class="img-produto img-responsive" style="width: 540px; height: 360px;">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--MODAL IMAGEM FIM-->                    

            <%}%>

        </div>
        <c:import url="rodape.jsp"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>

    <% } finally {
        }
    %>
</html>
