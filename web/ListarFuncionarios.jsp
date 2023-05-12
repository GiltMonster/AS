<%-- 
    Document   : ListarFuncionarios
    Created on : 12 de mai. de 2023, 10:21:15
    Author     : lucas.scampos4
--%>

<%@page import="model.Funcionario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
       <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <% List<Funcionario> listarFuncionarios = (List<Funcionario>) request.getAttribute("listarFuncionarios");  %>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Nome:</th>
                    <th scope="col">E-mail:</th>
                    <th scope="col">Cargo:</th>
                    <th scope="col">Salário:</th>
                    <th scope="col">Id departamento:</th>
                    <th scope="col">Nome departamento:</th>
                    <th scope="col">Telefone departamento:</th>
                    <th scope="col">Excluir:</th>
                    <th scope="col">Editar:</th>
                    
                </tr>
            </thead>
            
            <%for(Funcionario func: listarFuncionarios){%>
            <tr>
                <td><%= func.getNomeFuncionario() %></td>
                <td><%= func.getEmailFuncionario() %></td>
                <td><%= func.getCargoFuncionario() %></td>
                <td>R$<%= func.getSalarioFuncionario() %></td>
                <td><%= func.getIdDepartamento().getIdDepartamento() %></td>
                <td><%= func.getIdDepartamento().getNomeDepartamento()%></td>
                <td><%= func.getIdDepartamento().getFoneDepartamento() %></td>
                
                
                <td>
                    <a href="ControleFuncionario?flag=excluirFuncionario&emailFun=<%= func.getEmailFuncionario() %>" class="btn btn-danger">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                            <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5Zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5Zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6Z"/>
                            <path d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1ZM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118ZM2.5 3h11V2h-11v1Z"/>
                        </svg>
                    </a>
                </td>
                <td>
                    <a href="AlterarFuncionario.jsp?emailFun=<%= func.getEmailFuncionario() %>&nomeFun=<%= func.getNomeFuncionario() %>&cargoFun=<%= func.getCargoFuncionario() %>&salarioFun=<%= func.getSalarioFuncionario() %>&idDep=<%= func.getIdDepartamento().getIdDepartamento() %>&nomeDep=<%= func.getIdDepartamento().getNomeDepartamento() %>" class="btn btn-primary" >
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-fill" viewBox="0 0 16 16">
                            <path d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z"/>
                        </svg>
                    </a>
                </td>              
            </tr>
            
            
            
            <% } %>
        </table>
    </body>
</html>
