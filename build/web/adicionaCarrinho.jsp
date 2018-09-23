<%-- 
    Document   : adicionaCarrinho
    Created on : 10/12/2016, 14:53:47
    Author     : giova
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="br.com.autoparts.Carrinho"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String url = "jdbc:derby://localhost:1527/Java2ProjetoFinal";
    Connection con = DriverManager.getConnection(url, "java2", "java2");

    try {
        int id = Integer.parseInt(request.getParameter("id_produto"));
        Boolean existe = false;

        ArrayList<Carrinho> car = (ArrayList) session.getAttribute("carrinho");
        if (car != null) {
            for (Carrinho c : car) {
                if (c.getId_produto() == id) {
                    c.setQuantidade(c.getQuantidade() + 1);
                    existe = true;
                    break;
                }
            }
        }
        if (existe == false) {
            java.sql.Statement statement = con.createStatement();
            ResultSet resultados = statement.executeQuery("select * from produto where id_produto =" + id);

            while (resultados.next()) {
                String nome = resultados.getString("nome_produto");
                String detalhes = resultados.getString("detalhes_produto");
                String imagem = resultados.getString("imagem_produto");
                double valor = Double.parseDouble(resultados.getString("valor_produto"));
                int quantidade = 1;

                Carrinho c = new Carrinho();

                c.setId_produto(id);
                c.setNome_produto(nome);
                c.setDetalhes_produto(detalhes);
                c.setImagem_produto(imagem);
                c.setQuantidade(quantidade);
                c.setValor_produto(valor);

                c.carrinho.add(c);

                session.setAttribute("carrinho", c.carrinho);
            }
        }
        response.sendRedirect("listaCarrinho.jsp");
    } finally {
    }
%>
