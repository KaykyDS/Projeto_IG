<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Conteudo</title>
</head>
<body>
    <%
        if( session.getAttribute("usuario") == null ) 
        {
            out.print("<h2>Bloqueado</h2>") ;
            out.print("<br><br>") ;
            out.print("Faca o login para acessar") ;
            out.print("<br><br>") ;
            out.print("<a href='login.html'>Fazer Login</a>") ;
        }else {
      
    %>
        Bem vindo(a) <% out.print(session.getAttribute("usuario")); %> 
        -
        <a href='logout.jsp'>Sair</a>
        <h1>Titulo</h1>
        <p>
            Lorem ipsum dolor, sit amet consectetur adipisicing elit. Blanditiis, labore aperiam officiis culpa veritatis, nostrum nisi aut qui eligendi, veniam quam doloribus animi expedita. Quis quae iusto ad porro quos.
        </p>

    <%
       } //fechamento do else
     %>
</body>
</html>