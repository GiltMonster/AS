
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Aula de AS</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--        <link rel="stylesheet" href="css/style.css">-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    </head>
    <body class="container">

        <header class=" d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
            <button class="btn" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
                </svg>

            </button>
            <a href="/WebSite" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
                <h1 class="col-2">Senac</h1>

            </a>

            <ul class="nav nav-pills">
                <li class="nav-item"><a href="index.html" class="nav-link active" aria-current="page">Home</a></li>
                <!--        <li class="nav-item"><a href="#" class="nav-link">Features</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Pricing</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">FAQs</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">About</a></li>-->
            </ul>
        </header>
        <nav>
            <p>
                <span class="fs-4">Olá gerente ${m}</span>
            <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="offcanvasExampleLabel">Menu</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <div class="">
                        Some text as placeholder. In real life you can have the elements you have chosen. Like, text, images, lists, etc.
                    </div>
                    <div class="dropdown mt-3">
                        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown">
                            Departamento
                        </button>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="components/departamento/CadastroDepartamento.html" target="conteudo">Incluir</a></li>
                            <li><a class="dropdown-item" href="components/departamento/AlterarDepartamento.html" target="conteudo">Alterar</a></li>
                            <li><a class="dropdown-item" href="components/departamento/ExcluirDepartamento.html" target="conteudo">Excluir</a></li>
                            <li><a class="dropdown-item" href="components/departamento/ConsultarDepartamento.html" target="conteudo">Consultar</a></li>
                            <li><a class="dropdown-item" href="components/departamento/ListarDepartamento.html" target="conteudo">Listar</a></li>
                        </ul>
                    </div>
                    
                     <div class="dropdown mt-3">
                        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown">
                            Funcionarios
                        </button>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="components/funcionario/CadastroFuncionario.html" target="conteudo">Incluir</a></li>
                            <li><a class="dropdown-item" href="components/funcionario/AlterarFuncionario.html" target="conteudo">Alterar</a></li>
                            <li><a class="dropdown-item" href="components/funcionario/ExcluirFuncionario.html" target="conteudo">Excluir</a></li>
                            <li><a class="dropdown-item" href="components/funcionario/ConsultarFuncionario.html" target="conteudo">Consultar</a></li>
                            <li><a class="dropdown-item" href="components/funcionario/ListarFuncionario.html" target="conteudo">Listar</a></li>
                        </ul>
                    </div>
                    
                     <div class="dropdown mt-3">
                        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown">
                            Acesso
                        </button>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="components/acesso/CadastroAcesso.html" target="conteudo">Incluir</a></li>
                            <li><a class="dropdown-item" href="components/acesso/AlterarAcesso.html" target="conteudo">Alterar</a></li>
                            <li><a class="dropdown-item" href="components/acesso/ExcluirAcesso.html" target="conteudo">Excluir</a></li>
                            <li><a class="dropdown-item" href="components/acesso/ConsultarAcesso.html" target="conteudo">Consultar</a></li>
                            <li><a class="dropdown-item" href="components/acesso/ListarAcesso.html" target="conteudo">Listar</a></li>
                        </ul>
                    </div>
                </div>
            </div>

        </p>
    </nav>
    <main class="row">

        <iframe src="abertura.html" name="conteudo" class="col-md"></iframe>

    </main>

</body>
</html>
