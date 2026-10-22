<%-- 
    Document   : alta_categoria
    Created on : 21 sept 2026, 19:25:37
    Author     : arnau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta Categoria</title>
    </head>
    <body>
        <h1>Afegir Categoria</h1>
        <form action="AltaCategoria" name="nom" method="POST">
            <p>NOM: <input type="text" maxlength="80" required></p>
            <input type="submit" value="Afegir Categoria">
        </form> 
        <%
            String missatge = (String) request.getAttribute("missatge");
            if (missatge != null){      //<% --> para escribir java
                                        //<%= --> solo para escribir una variable
            %>
            <p><%= missatge %></p>   
            <%
                }
            %>
    </body>
</html>
