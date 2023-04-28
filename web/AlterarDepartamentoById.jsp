<%-- 
    Document   : AlterarDepartamentoById
    Created on : 28 de abr. de 2023, 09:03:11
    Author     : lucas.scampos4
--%>

<%@page import="model.Departamento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    </head>
    <body>
        <%
            Departamento dep = (Departamento) request.getAttribute("dep");
        %>
        
         <form method="POST" action="Controle">
                <input type="hidden" name="flag" value="AlterarDepartamento">
                <p>
                    <label class="form-label" for="idDep">Código:</label>
                    <input class="form-control" id="idDep" type="text" name="idDep" readonly value="<%= dep.getIdDepartamento() %>">
                </p>
                <p>
                    <label class="form-label" for="nomeDep">Nome:</label>
                    <input class="form-control" id="nomeDep" type="text" name="nomeDep" value="<%= dep.getNomeDepartamento() %>">
                </p><p>
                    <label class="form-label" for="foneDep">Telefone:</label>
                    <input class="form-control" id="foneDep" type="text" name="foneDep" value="<%= dep.getFoneDepartamento() %>">
                </p>
                
                <input class="btn btn-primary mt-3" type="submit" value="Salvar Alteração">
                
            </form>
    </body>
</html>
