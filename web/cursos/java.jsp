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
        <div class="container-fluid">
            <div class="row">
                <nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">
                    <aside class="task-menu">

                        <section class="task-menu-section">
                            <div class="task-menu-section-title">
                                <span class="task-menu-section-title-number ">Aula  <strong>01</strong>
                                    <span>de 10</span></span>
                                <h3 class="task-menu-section-title-text">
                                    Introdução
                                </h3>
                            </div>
                        </section>
                        <nav class="task-menu-nav">

                            <ul class="nav nav-pills flex-column">
                                <li class="nav-item">
                                    <a class="nav-link active" href="java/1.jsp">
                                        <span class="task-menu-nav-item-number">01</span>
                                        <span class="task-menu-nav-item-text" >
                                            <span class="task-menu-nav-item-title" title="Vídeo 1">
                                                História do JAVA
                                            </span>
                                        </span>
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="java/2.jsp">
                                        <span class="task-menu-nav-item-number">02</span>
                                        <span class="task-menu-nav-item-text" >
                                            <span class="task-menu-nav-item-title" title="Vídeo 2">
                                                Como funciona
                                            </span>
                                        </span>
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="java/3.jsp">
                                        <span class="task-menu-nav-item-number">03</span>
                                        <span class="task-menu-nav-item-text" >
                                            <span class="task-menu-nav-item-title" title="Vídeo 3">
                                                Instalando JDK
                                            </span>
                                        </span>
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="java/4.jsp">
                                        <span class="task-menu-nav-item-number">04</span>
                                        <span class="task-menu-nav-item-text" >
                                            <span class="task-menu-nav-item-title" title="Partials com locals">
                                                Exercício 1
                                            </span>
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="java/5.jsp">
                                        <span class="task-menu-nav-item-number">05</span>
                                        <span class="task-menu-nav-item-text" >
                                            <span class="task-menu-nav-item-title" title="Criando uma partial para o formulário">
                                                Exercício 2
                                            </span>
                                    </a>
                                </li>                  

                            </ul>
                        </nav>
                        <section class="task-menu-sections">
                            <h2 class="task-menu-sections-title">
                                Aulas
                            </h2>
                            <select class="task-menu-sections-select" onchange="location.href = '/course/ruby-on-rails-4-do-zero/section/' + this.value;">

                                <option value="1" >Introdução </option>

                                <option value="2" >New Bundle Install</option>

                                <option value="3" >Rotas e Controller</option>

                                <option value="4" >Migrations </option>

                                <option value="5" >Controller Order Limit </option>


                            </select>
                        </section>
                        <section class="task-menu-others">
                            <a href="../cursos.jsp" class="task-menu-others-link task-menu-others-link-curso" title="Ir para a página principal">Trocar Curso</a>
                        </section>


                    </aside>


                </nav>
                <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">

                    <h1 class="task-body-header-title">
                        <small>01</small>
                        <span class="task-body-header-title-text"> História do JAVA</span>
                    </h1>
                    <div class="card" >
                        <div class="embed-responsive embed-responsive-21by9">
                            <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/sTX0UEplF54" frameborder="0" gesture="media" allowfullscreen></iframe>
                        </div>
                    </div>




                    <section class='task' data-task-type="video" data-task-id="10220" data-author-id="44993" data-course-code="ruby-on-rails-4-do-zero" data-section-number="14" data-domain="cursos.alura.com.br" data-hasFeedbackAnswer="false" data-url-prefix="/">
                        <div class="task-body-header-actions">
                            <a href="/course/ruby-on-rails-4-do-zero/task/10220/next" aria-hidden="true" class="task-actions-button task-actions-button-next task-submit">Próxima Atividade</a>
                        </div>
                    </section>
                </main>
            </div>
        </div>
</html>

</body>
</html>
