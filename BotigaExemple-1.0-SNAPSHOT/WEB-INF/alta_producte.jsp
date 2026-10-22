<%-- 
    Document   : alta_producte
    Created on : 28 sept 2026, 19:11:54
    Author     : arnau
--%>

<%@page import="com.mycompany.botigaexemple.model.Categoria"%>
<%@page import="com.mycompany.botigaexemple.model.RespuestaTO"%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta Producte</title>
    </head>
    <body>
        <h1>Afegir un Producte</h1>
        <%
            List<Categoria> categories = (List<Categoria>) request.getAttribute("categories");
            if(categories != null){
                if (categories.isEmpty()) {
        %>
        <p>No hi ha categories registrades. No es poden donar d'alta productes</p>
        <%
            } else{ // hay categories
        %>
        <form action="AfegirProducte" method="POST">
            <p>Nom: <input type="text" name="nom" minlength="1" maxlength="80" required></p>
            <p>Descripcio: <input type="text" name="descripcio" minlength="1" maxlength="250" required></p>
            <p>Preu: <input type="number" name="preu" min="0.1" max="999999.99" required></p>
            <p>Estoc: <input type="number" name="estoc" min="0" maxlength="999" required></p>
            <p>Destacat: <input type="checkbox" name="destacat"></p> 
            <p><select name="categoria" required>
            <%
                for (Categoria categoria : categories) {
                %>
                <option value="<%= categoria.getId()%>"><%= categoria.getNom()%></option>
                <%
                }
                %>
              </select>
            </p>
            <input type="submit" value="Afegir Producte">
            </form>
        <%
                }
            }else { //categories es null
                RespuestaTO respuesta = (RespuestaTO) request.getAttribute("resposta");
                if(respuesta != null){
                    if(respuesta.getStatus().equalsIgnoreCase("OK")){
            %>
            <p><%= respuesta.getMessage() %></p>
            <%
            }else{
            %>
            <p style="color:red"> <%= respuesta.getMessage() %> </p>
            <%
                    }
                }
            }
        %>
    </body>
</html>
