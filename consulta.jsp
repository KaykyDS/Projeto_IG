<%@page language="java" import="java.sql.*" %>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <title>Consulta JSP</title>
        <style>
            tr:nth-child(even){
                background-color: lightgray ;
            }
            tr:hover{
                background-color: #F5F5DC ;
            }
        </style>
    </head>
    <body>
        <%
            //variaveis para acessar o banco de dados
            String banco    = "web";
            String endereco = "jdbc:mysql://localhost:3306/" + banco ;
            String usuario  = "root" ;
            String senha    = "";

            //variavel para o Driver
            String driver = "com.mysql.jdbc.Driver" ;

            //Carregar o driver na memória
            Class.forName( driver ) ;

            //Cria a variavel para conectar com o banco de dados
            Connection conexao ;

            //Abrir a conexao com o banco de dados
            conexao = DriverManager.getConnection( endereco, usuario, senha ) ;

            String sql = "SELECT * FROM usuarios order by nome" ;

            //Cria o statement para executar o comando do banco
            PreparedStatement stm = conexao.prepareStatement(sql) ;

            ResultSet dados = stm.executeQuery() ;

            out.print("<table border=1>") ;
            out.print("<tr>") ;
            out.print("<th>Codigo</th>") ;
            out.print("<th>Nome</th>") ;
            out.print("<th>Idade</th>") ;
            out.print("<th>E-mail</th>") ;
            out.print("</tr>") ;
            
            while( dados.next() ) 
            {
                out.print("<tr>");
                    out.print("<td>") ;
                    out.print( dados.getString("codigo") ) ;
                    out.print("</td>") ;

                    out.print("<td>") ;
                    out.print( dados.getString("nome") ) ;
                    out.print("</td>") ;

                    out.print("<td>") ;
                    out.print( dados.getString("idade") ) ;
                    out.print("</td>") ;

                    out.print("<td>") ;
                    out.print( dados.getString("email") ) ;
                    out.print("</td>") ;
                out.print( "</tr>") ;
            }

        %>
    </body>
</html>