<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        
        <div class="card border-secondary mb-3" style="max-width: 43rem;margin: 0 auto;margin-top: 100px;">
            <div class="card-body">
                <h1 class="display-4 text-center">Cadastro</h1>
                <form action="Cadastrar" method="post">
               <!-- <form action="telalogin.jsp" method="post">-->
                  <div class="form-group">
                    <label for="loginUsuario">Usuário</label>
                    <input type="text" name="usuario" class="form-control" id="loginUsuario" placeholder="Digite seu nome de usuário">
                  </div>
                  <div class="form-group">
                    <label for="loginSenha">Senha</label>
                    <input type="password" name="senha" class="form-control" id="loginSenha" placeholder="Digite sua senha">
                    <input type="password" name="senha2" class="form-control" placeholder="Digite novamente sua senha">
                  </div>
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
                    <input type="text" name="sobrenome" class="form-control" id="telefoneUsuario" placeholder="Digite seu sobrenome">
                  </div>
                     <div class="form-group">
                    <label for="rgUsuario">RG</label>
                    <input type="text" name="rgUsuario" class="form-control" id="rgUsuario" placeholder="Digite seu RG">
                  </div>
                     <div class="form-group">
                    <label for="cpfUsuario">Telefone</label>
                    <input type="text" name="cpfUsuario" class="form-control" id="cpfUsuario" placeholder="Digite seu CPF">
                  </div>
                    <div class="form-group">
                        <div class="row">
                        <div class="col-md-6">
                    <label for="cpfUsuario">Cartão de Credito</label>
                    <input type="text" name="cpfUsuario" class="form-control" id="cpfUsuario" placeholder="Numero do cartão de crédito">
                  </div>
                            <div class="col" style="margin-right: 0px ">
                    <!--<div class="form-group">-->
                    <label for="codigoCartaoUsuario">Código segurança</label>
                    <input type="text" name="codigoCartaoUsuario" class="form-control" id="codigoCartaoUsuario" placeholder="XXX">
                  </div>
                    <!--<div class="form-group">-->
                    <div class="col-md-3" style="margin-left: 0px ">
                    <label for="validadeCartaoUsuario">Validade</label>
                    <input style="margin-left: 0px " type="text" name="validadeCartaoUsuario" class="form-control" id="validadeCartaoUsuario" placeholder="XX/XX">
                  </div>
                        </div></div>
                    
                  <button type="submit" value="cadastrar" class="btn btn-primary btn-lg" style="width: 100%">Cadastrar</button>
                </form>
            </div>
        </div>
        
        
        <!-- INCLUDE FOOTER -->
        <%@include file="WEB-INF/jspf/footer.jspf" %>
        <!-- INCLUDE FOOTER END -->
    </body>
</html>
