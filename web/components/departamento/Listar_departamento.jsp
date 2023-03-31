<%-- 
    Document   : listar_departamento
    Created on : 31 de mar. de 2023, 09:43:21
    Author     : lucas.scampos4
--%>

<%@page import="model.Departamento"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    </head>
    <body>
        <% List<Departamento> listaDepartamentos = (List<Departamento>) request.getAttribute("listaDepartamentos");  %>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Código:</th>
                    <th scope="col">Nome:</th>
                    <th scope="col">Telefone:</th>
                </tr>
            </thead>
            
            <%for(Departamento dep: listaDepartamentos){%>
            <tr>
                <td><%= dep.getIdDepartamento()%></td>
                <td><%= dep.getNomeDepartamento()%></td>
                <td><%= dep.getFoneDepartamento()%></td>
            </tr>
            <% } %>
        </table>
    </body>
</html>
