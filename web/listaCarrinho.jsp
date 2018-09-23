<%-- 
    Document   : listaCarrinho
    Created on : 10/12/2016, 00:35:47
    Author     : giova
--%>

<%@page import="br.com.autoparts.Carrinho"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
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
        <%
            ArrayList<Carrinho> car = (ArrayList) session.getAttribute("carrinho");

            if (car != null) {
                for (Carrinho c : car) {

        %>
        <div class="container" style="margin-bottom: 10px;">
            <input type="hidden" name="id" value="<%=c.getId_produto()%>"/>
            <div class="col-md-2">
                <img style="width: 130px; height: 100px; border-radius: 3px;" src="imagens/<%=c.getImagem_produto()%>"/>
            </div>
            <div class="col-md-7">
                <strong><p style="font-size: 20px;"><%=c.getNome_produto()%></p></strong>
                <p><%=c.getDetalhes_produto()%></p>
            </div>
             <div class="col-md-3">
               <strong><p style="font-size: 20px;">Quantidade:</p></strong>
               <strong><p style="font-size: 20px;">Total:</p></strong>
            </div>
        </div>
        <% }
            }
        %>
        <c:import url="rodape.jsp"/>
    </body>
</html>
