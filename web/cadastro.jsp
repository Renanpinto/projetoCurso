<%@page import="br.com.curso.web.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String login = "";
    String senha = "";
    String senha2 = "";

    String addUsuarioErrorMessage = null;
    if (request.getParameter("cadastrar") != null) {
        login = request.getParameter("usuario");
        senha = request.getParameter("senha");
        senha2 = request.getParameter("senha2");
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        String rgUsuario = request.getParameter("rgUsuario");

        if (senha.equals(senha2)) {

            try {
                Usuario.addUsuario(login, senha, nome, email, telefone, rgUsuario);

                out.println("<script>alert('Cadastro Finalizado!')</script>");
                response.sendRedirect("telalogin.jsp");

            } catch (Exception e) {
                addUsuarioErrorMessage = e.getMessage();
                senha2 = "qqq";
            }

        } else {
            response.sendRedirect("cadastro.jsp");;
            out.println("<script>alert('Senhas não correspondem!')</script>");
        }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar</title>

        <!--INCLUDE CSS -->
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <!-- INCLUDE CSS END-->
    </head>
    <body>

        <!-- INCLUDE MENU -->
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <!-- INCLUDE MENU END -->
        <%--<%if (addUsuarioErrorMessage != null) {%>--%>
        <div style="color: red;">aaaaa<%=addUsuarioErrorMessage%>aaa</div>
        <%--<%}%>--%>
        <div class="card border-secondary mb-3" style="max-width: 43rem;margin: 0 auto;margin-top: 100px;">
            <div class="card-body">
                <h1 class="display-4 text-center">Cadastro</h1>
                <form  method="post">
                    <!-- <form action="telalogin.jsp" method="post">-->

                    <div class="form-group">
                        <label for="nomeUsuario">Nome Completo</label>  
                        <input type="text" name="nome" class="form-control" id="nomeUsuario" placeholder="Digite seu nome">
                    </div>
                    <div class="form-group">
                        <label for="emailUsuario">Email</label>
                        <input type="text" name="email" class="form-control" id="emailUsuario" placeholder="Digite seu email">
                    </div>
                    <div class="form-group">
                        <label for="telefoneUsuario">Telefone</label>
                        <input type="text" name="telefone" class="form-control" id="telefoneUsuario" placeholder="Digite seu sobrenome">
                    </div>
                    <div class="form-group">
                        <label for="rgUsuario">RG</label>
                        <input type="text" name="rgUsuario" class="form-control" id="rgUsuario" placeholder="Digite seu RG">
                    </div>
                    <div class="form-group">
                        <label for="loginUsuario">Usuário</label>
                        <input type="text" name="usuario" class="form-control" id="loginUsuario" placeholder="Digite seu nome de usuário">
                    </div>
                    <div class="form-group">
                        <label for="loginSenha">Senha</label>
                        <input type="password" name="senha" class="form-control" id="loginSenha" placeholder="Digite sua senha">
                        <input type="password" name="senha2" class="form-control" placeholder="Digite novamente sua senha">
                    </div>


                    <input type="submit" name="cadastrar" value="cadastrar" class="btn btn-primary btn-lg" style="width: 100%"/>
                </form>
            </div>
        </div>
        <div>
            <%=login%>
            <%=senha%>
            <%=senha2%>
        </div>
        <%--<table border="1">
            <tr>
                <th>Modelo</th>
                <th>Cor</th>
                <th>Placa</th>
                <th>Entrada</th>
                <th>Controle</th>
            </tr>
            <%try {%>
            <%for (Usuario vs : Usuario.getListaUsuario()) {%>
            <tr>
                <td><%= vs.getNome()%></td>
                <td><%= vs.getEmail()%></td>
                <td><%= vs.getTelefone()%></td>
                <td><%= vs.getRgUsuario()%></td>
             
            </tr>
            <%}%>
            <%} catch (Exception e) {%>
            <div style="color: red;"><%=e.getMessage()%></div>
            <%}%>
        </table>--%>
        <!-- INCLUDE FOOTER -->
        <%@include file="WEB-INF/jspf/footer.jspf" %>
        <!-- INCLUDE FOOTER END -->
    </body>
</html>
