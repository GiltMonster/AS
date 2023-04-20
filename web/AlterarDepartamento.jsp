<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
   
    </head>
    <body>
        <div class="container">
            
            <form method="POST" action="Controle">
                <input type="hidden" name="flag" value="AlterarDepartamento">
                <p>
                    <label class="form-label" for="idDep">Código:</label>
                    <input class="form-control" id="idDep" type="text" name="idDep" readonly value="<%= request.getParameter("idDep") %>">
                </p>
                <p>
                    <label class="form-label" for="nomeDep">Nome:</label>
                    <input class="form-control" id="nomeDep" type="text" name="nomeDep" value="<%= request.getParameter("nomeDep")%>">
                </p><p>
                    <label class="form-label" for="foneDep">Telefone:</label>
                    <input class="form-control" id="foneDep" type="text" name="foneDep" value="<%= request.getParameter("foneDep")%>">
                </p>
                
                <input class="btn btn-primary mt-3" type="submit" value="Salvar Alteração">
                
            </form>
            
           </div>
    </body>
</html>
