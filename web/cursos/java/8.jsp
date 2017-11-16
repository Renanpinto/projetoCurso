<%-- 
    Document   : java
    Created on : 15/11/2017, 11:51:14
    Author     : Renan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Curso - JAVA</title>

        <!--INCLUDE CSS -->
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <!-- INCLUDE CSS END-->
    </head>
    <body>
        <!-- INCLUDE MENU -->
        <%@include file="/WEB-INF/jspf/menu.jspf" %>
        <!-- INCLUDE MENU END -->


        <%--<%
            if (session.getAttribute("user") == null) {
                response.sendRedirect("../telalogin.jsp");
            }
        %>--%>
        <%
            String url = "https://www.youtube.com/embed/JEAQeT7YGs4?list=PLHz_AreHm4dkI2ZdjTwZA4mPMxWTfNSpR";
        %>
        <div class="container-fluid">
            <div class="row">
                <nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">
                    <aside class="task-menu">

                        <section class="task-menu-section">
                            <div class="task-menu-section-title">
                                <span class="task-menu-section-title-number ">Aula  <strong>08</strong>
                                    <span>de 10</span></span>
                                <h3 class="task-menu-section-title-text">
                                    Primeiros programas
                                </h3>
                            </div>
                        </section>
                        <nav class="task-menu-nav">

                            <ul class="nav nav-pills flex-column">
                                <li class="nav-item">
                                    <a class="nav-link" href="6.jsp">
                                        <span class="task-menu-nav-item-number">06</span>
                                        <span class="task-menu-nav-item-title" title="Vídeo 1">
                                            Primeiro programa
                                        </span>
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="7.jsp">
                                        <span class="task-menu-nav-item-number">07</span>
                                        <span class="task-menu-nav-item-title" title="Vídeo 2">
                                            Introdução ao Swing e JavaFX
                                        </span>
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link active" href="8.jsp">
                                        <span class="task-menu-nav-item-number">08</span>
                                        <span class="task-menu-nav-item-title" title="Vídeo 3">
                                            Tipos primitivos
                                        </span>
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="9.jsp">
                                        <span class="task-menu-nav-item-number">09</span>
                                        <span class="task-menu-nav-item-title" title="Partials com locals">
                                            Exercício 1
                                        </span>
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="10.jsp">
                                        <span class="task-menu-nav-item-number">10</span>
                                        <span class="task-menu-nav-item-title" title="Criando uma partial para o formulário">
                                            Exercício 2
                                        </span>
                                    </a>
                                </li>                  

                            </ul>
                        </nav>

                        <!-- INCLUDE MODULOS -->
                        <%@include file="/WEB-INF/jspf/moduloJava.jspf" %>
                        <!-- INCLUDE TROCAR CURSO -->
                        <%@include file="/WEB-INF/jspf/trocarCurso.jspf" %>

                    </aside>


                </nav>
                <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">

                    <h1 class="task-body-header-title">
                        <small>08</small>
                        <span class="task-body-header-title-text"> Tipos primitivo</span>
                    </h1>
                    <!-- INCLUDE VIDEO AULA -->
                    <%@include file="/WEB-INF/jspf/videoAula.jspf" %>




                    <section class="" >
                        <div >
                            <a href="9.jsp" aria-hidden="true">Próxima Atividade</a>
                        </div>
                    </section>
                </main>
            </div>
        </div>
        <!-- INCLUDE FOOTER -->
        <%@include file="/WEB-INF/jspf/footer.jspf" %>

</body>
</html>
