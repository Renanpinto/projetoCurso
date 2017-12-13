<%--
    Document   : usuario
    Created on : 08/11/2017, 19:48:35
    Author     : a
--%>

<%@page import="br.com.curso.web.Quiz"%>
<%@page import="br.com.curso.web.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
            if (session.getAttribute("me.id") == null) {
                response.sendRedirect("telalogin.jsp");
            }
        
    String loginErrorMessage = null;
    //String login="";
    int id = (int)session.getAttribute("me.id");    
    try{
    
   // Usuario u = Usuario.getUsuarioAtual(id);
    } catch(Exception e){
        loginErrorMessage = e.getMessage();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>!  Cursos SPY !  </title>

        <!--INCLUDE CSS -->
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <!-- INCLUDE CSS END-->
    </head>
    <body>
        <%@include file="WEB-INF/jspf/titulo.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div class="container">
        <%try{%>
        <table class="table table-bordered table-hover" style="margin: 100px 10px;">
        <tr>
            <th>Nome:</th>
            <th>Email</th>
            <th>RG</th>
            <th>Telefone</th>
            <th>Login</th>
        </tr>
        <%for (Usuario p : Usuario.getListaUsuario(id)) {%>
        <tr>
            <td><%= p.getNome()%></td>
            <td><%= p.getRgUsuario()%></td>
            <td><%= p.getTelefone()%></td>
            <td><%= p.getLogin()%></td>
            <td><%= p.getEmail()%></td>
        </tr>
        </table>
        <table class="table table-bordered table-hover" style="margin: 100px 10px;">
            <legend class="text-center">JAVA</legend>
            <tr>
                <th>Nota 1: <%=Quiz.notaJava1%></th>
                <th>Nota 2: <%=Quiz.notaJava2%></th>
            </tr>
        </table>
        <table class="table table-bordered table-hover" style="margin: 100px 10px;">
            <legend class="text-center">Python</legend>

            <tr>
                <th>Nota 1: <%=Quiz.notaPython1%></th>
                <th>Nota 2: <%=Quiz.notaPython2%></th>
            </tr>
        </table>
    <%}%>
    <%}
                catch(Exception e                
                    ){%>
    <div style="color: red;"><%=e.getMessage()%></div>
    <%}%>
        </div>
    <%@include file="WEB-INF/jspf/footer.jspf" %>
</body>
</html>
