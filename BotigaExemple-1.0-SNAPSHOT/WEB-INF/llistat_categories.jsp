<%-- 
    Document   : llistat_categories
    Created on : 24 sept 2026, 17:17:47
    Author     : arnau
--%>
<%@page import="com.mycompany.botigaexemple.model.Categoria"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Categories</title>
    </head>
    <body>
        <h1>Llistat de Categories</h1>
        <%
            List<Categoria> categories = (List<Categoria>) request.getAttribute("categories");
            if (categories.isEmpty()) {
        %>
        <p>No hi ha categories registrades.</p>
        <%
        } else {
        %>
        <table>
            <tr><th>Id</th><th>Nom</th></tr>
                    <%
                        for (Categoria cat : categories) {
                    %>
            <tr><td> <%=cat.getId()%> </td> <td> <%=cat.getNom() %> </td></tr>

            <%
                }
            %>
        </table>
        <%
            }
        %>
    </body>
</html>
