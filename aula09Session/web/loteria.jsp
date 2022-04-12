<%-- 
    Document   : index
    Created on : 11 de abr. de 2022, 15:27:44
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page 2 - SessionApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <%if(session.getAttribute("username") != null) {%>
            <h2>Página 2</h2>
            <div>
                <table border="1">
                    <% for(int i=0; i<=6; i++) {
                        int num = ((int)(Math.random()*100));
                    %>
                    <td name="<%= i%>"><%= num%></td>
                    <%
                        session.getAttribute(Integer.toString(i));
                    }%>
                </table>
            </div>
        <%} else {%>
            <p id="warning">Precisa estar logado pra acessar essa página!</p>
        <%}%>
    </body>
</html>
