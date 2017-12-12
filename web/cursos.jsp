<%--
    Document   : cursos
    Created on : 08/11/2017, 19:48:42
    Author     : Renan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>!  Cursos SPY ! </title>

        <!--INCLUDE CSS -->
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <!-- INCLUDE CSS END-->
    </head>
    <body>
        <%@include file="WEB-INF/jspf/titulo.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div class="container">
             <div class="row">
                <div class="col-md-6 align-self-center">
                    <div class="card" style="width: 20rem;">
                        <img class="card-img-top" src="img/java.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h4 class="card-title">JAVA</h4>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="cursos/java/1.jsp" class="btn btn-primary">Iniciar Curso</a>
                        </div>
                    </div>
                </div>
           
                               
                <div class="col-md-6 align-self-center">
                    <div class="card" style="width: 20rem;">
                        <img class="card-img-top" src="img/python.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h4 class="card-title">Python</h4>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="cursos/python/1.jsp" class="btn btn-primary">Iniciar Curso</a>
                        </div>
                    </div>
                </div>
             </div>
            <div class="row">
                <div class="col-md-6 ">
                    <div class="card" style="width: 20rem;">
                        <img class="card-img-top" src="img/ruby.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h4 class="card-title">Ruby</h4>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary">Iniciar Curso</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card" style="width: 20rem;">
                        <img class="card-img-top" src="img/rails.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h4 class="card-title">Ruby on Rails</h4>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary">Iniciar Curso</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
