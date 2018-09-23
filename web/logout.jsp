<%-- 
    Document   : logout
    Created on : 10/12/2016, 00:32:47
    Author     : giova
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
<%
    session.invalidate();
    response.sendRedirect("index.jsp");
%>