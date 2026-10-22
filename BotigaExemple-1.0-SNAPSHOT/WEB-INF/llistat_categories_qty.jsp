<%-- 
    Document   : llistat_categories_qty
    Created on : 8 oct 2026, 17:17:36
    Author     : arnau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.botigaexemple.model.CategoriesQuantityTO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productes per Categoria</title>
    </head>
    <body>
        <h1>Quantitat de productes per Categoria</h1>
        <%
            List<CategoriesQuantityTO> resultat = (List<CategoriesQuantityTO) request.getAttribute("resultat");
            if (resultat!= null){
                if(resultat.isEmpty()){
        %>
        <p>No hi ha categories amb productes</p>
        <%
                }else{
                %>
                <table>
                    <%
                        for(CategoriesQuantityTO c : resultat){
                        %>
                        <tr>
                            <td><%= c.getId() %></td>
                            <td><%= c.getNom() %></td>
                            <td><%= c.getQty() %></td>
                        </tr>
                        <%
                        }
                        %>
                </table>
                <%
                }
            }
        %>
    </body>
</html>
