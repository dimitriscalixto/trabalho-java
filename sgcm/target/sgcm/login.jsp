<%@ page pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>


<jsp:useBean id="controller" class="br.ufac.sgcm.controller.EspecialidadeController" scope="page"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="./js/login.js" defer> </script>
    <title>Document</title>
</head>
<body>
   
    <% if (request.getParameter("errorMessage") != null) { %>
        <script>alert("Usuario ou senha inválido")</script>
    <% } %>

    <form method="post" action="http://localhost:8080/sgcm/usuarioservlet">
        <label>Usuário</label>
        <input id= usuario type="text" name="usuario">
        <label>Senha</label>
        <input id= senha type="password" name="senha">
        <input type="submit" >
    </form>
</body>
</html>