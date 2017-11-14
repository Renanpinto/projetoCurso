<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Meu Perfil</title>
        <!--INCLUDE CSS -->
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <!-- INCLUDE CSS END-->
    </head>
    <body>
        <!-- INCLUDE MENU -->
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <!-- INCLUDE MENU END -->


        <%
            if (session.getAttribute("user") == null) {
                response.sendRedirect("telalogin.jsp");
            }
        %>

      Meus Dados

        <!-- INCLUDE FOOTER -->
        <%@include file="WEB-INF/jspf/footer.jspf" %>
        <!-- INCLUDE FOOTER END -->
    </body>
</html>
