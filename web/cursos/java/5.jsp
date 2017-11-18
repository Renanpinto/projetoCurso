<%-- 
    Document   : java
    Created on : 15/11/2017, 11:51:14
    Author     : Renan
--%>

<%@page import="br.com.curso.web.Quiz"%>
<%@page import="br.com.curso.web.Questao"%>
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
            String url = "https://www.youtube.com/embed/v_ZCtgwbS3o";
            String page1 = "";
            String page2 = "";
            String page3 = "";
            String page4 = "";
            String page5 = "active";
        %>
        <div class="container-fluid">
            <div class="row">
                <nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">
                    <aside class="task-menu">

                        <section class="task-menu-section">
                            <div class="task-menu-section-title">
                                <span class="task-menu-section-title-number ">Aula  <strong>05</strong>
                                    <span>de 10</span></span>
                                <h3 class="task-menu-section-title-text">
                                    Introdução
                                </h3>
                            </div>
                        </section>
                        <!-- INCLUDE MENU LATERAL -->
                        <%@include file="/WEB-INF/jspf/menuJava1.jspf" %>
                        <!-- INCLUDE MODULOS -->
                        <%@include file="/WEB-INF/jspf/moduloJava.jspf" %>
                        <!-- INCLUDE TROCAR CURSO -->
                        <%@include file="/WEB-INF/jspf/trocarCurso.jspf" %>


                    </aside>


                </nav>
                <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">

                    <h1 class="task-body-header-title">
                        <small>05</small>
                        <span class="task-body-header-title-text"> Exercício 2</span>
                    </h1>
                    <div class="card" >

                        <%int i = 0;
                            if (request.getParameter("finalizar") != null) {
                                int acertos = 0;
                                for (Questao q : Quiz.getQuestoes()) {
                                    String resposta = request.getParameter(q.getPergunta());
                                    if (resposta != null) {
                                        if (resposta.equals(q.getResposta())) {
                                            acertos++;
                                        }
                                    }
                                }
                                Quiz.quantidade++;
                                Quiz.soma += (100.0 * ((double) acertos / 10.0));
                                //BancoUsuarios.setNovaPontuacaoUsuario(String.valueOf(session.getAttribute("user")), acertos);

                                response.sendRedirect(request.getContextPath() + "/home.jsp");
                }%>

                        <div class="container">
                            <br/>
                            <form>
                                <%i = 0;%>
                                <%for (Questao questao : Quiz.getQuestoes()) {
                            i++;%>

                                <div id="<%=i%>" >
                                    <h4><%=questao.getPergunta()%></h4>
                                    <input type="radio" name="<%=questao.getPergunta()%>" value="<%=questao.getAlternativas()[0]%>">
                                    <%=questao.getAlternativas()[0]%><br>
                                    <input type="radio" name="<%=questao.getPergunta()%>" value="<%=questao.getAlternativas()[1]%>">
                                    <%=questao.getAlternativas()[1]%><br>
                                    <input type="radio" name="<%=questao.getPergunta()%>" value="<%=questao.getAlternativas()[2]%>">
                                    <%=questao.getAlternativas()[2]%>

                                </div>

                                <%}%>

                        </div>

                        <br><br>
                        <input type="hidden" name="usuarioTestado" value="<%=String.valueOf(session.getAttribute("user"))%>"/>
                        <input type="submit" name="finalizar" value="Finalizar"> 
                        </form>
                    </div>


                    <section class="" >
                        <div class="text-right">
                            <a href="6.jsp" aria-hidden="true">Próxima Atividade</a>
                        </div>
                    </section>
                </main>
            </div>
        </div>
</html>

</body>
</html>
