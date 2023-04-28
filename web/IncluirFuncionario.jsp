<%-- 
    Document   : IncluirFuncionario
    Created on : 28 de abr. de 2023, 10:32:34
    Author     : lucas.scampos4
--%>

<%@page import="java.util.List"%>
<%@page import="model.Departamento"%>
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
             List<Departamento> Departamentos = (List<Departamento>) request.getAttribute("departamentos");  
        %>
        <div class="container">
            <form method="POST" action="Controle">
                <div class="m-1 row">
                    <input type="hidden" name="flag" value="CadastroDepartamento">
                   
                    <label for="nome" class="form-label">Nome:</label>
                    <input id="nome" class="form-control" type="text" size="50" maxlength="50" required>

                    <label for="email" class="form-label">E-mail:</label>
                    <input id="email" class="form-control" type="email" size="70" maxlength="70" required>
                    
                    <label for="cargo" class="form-label">Cargo:</label>
                    <input id="cargo" class="form-control" type="text" size="70" maxlength="70" >
                    
                    <label for="salario" class="form-label">Salario:</label>
                    <input id="salario" class="form-control" type="number" >
                    
                    <label for="idDep" class="form-label">Nome do departamento:</label>
                    <select class="form-select my-1" aria-label="Departamentos" id="idDep" name="idDep">
                        <%
                        
                            for(Departamento dep: Departamentos){
                        
                        %>
                        <option value="<%= dep.getIdDepartamento() %>"><%= dep.getNomeDepartamento() %></option>
                        <%
                            }
                        %>
                    </select>
                    
                    <div>
                        <input class="btn btn-success mt-3" type="submit" value="Salvar">
                    </div>
                </div>
            </form> 
        
        
            

            
        
        
    </body>
</html>
