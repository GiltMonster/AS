
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
        <link rel="stylesheet" hrer="css/style.css">
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
                <li class="nav-item"><a href="index.html" class="nav-link active" aria-current="page">Home</a>
                <!--        <li class="nav-item"><a href="#" class="nav-link">Features</a>
                        <li class="nav-item"><a href="#" class="nav-link">Pricing</a>
                        <li class="nav-item"><a href="#" class="nav-link">FAQs</a>
                        <li class="nav-item"><a href="#" class="nav-link">About</a>-->
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
                        Aqui vai um texto pra motivar o usuário: " "                                 ops. desculpe mais o usuário que va amerda :)
                    </div>
                    <div class="dropdown mt-3">
                        <div class="accordion accordion-flush" id="accordionFlushExample">
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="flush-headingOne">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                                       Departamento
                                    </button>
                                 </h2>
                            <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <a class="btn btn-outline-success p-1" href="CadastroDepartamento.html" target="conteudo">Incluir</a>
                                    <a class="btn btn-outline-secondary p-1" href="components/departamento/AlterarDepartamento.html" target="conteudo">Alterar</a>
                                    <a class="btn btn-outline-danger p-1" href="components/departamento/ExcluirDepartamento.html" target="conteudo">Excluir</a>
                                    <a class="btn btn-outline-warning p-1" href="components/departamento/ConsultarDepartamento.html" target="conteudo">Consultar</a>
                                    <a class="btn btn-outline-warning p-1" href="Controle?flag=listarDepartamento" target="conteudo">Listar</a>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                                <h2 class="accordion-header" id="flush-headingTwo">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                                       Funcionario
                                    </button>
                                 </h2>
                            <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <a class="btn btn-outline-success p-1" href="components/funcionario/CadastroFuncionario.html.html" target="conteudo">Incluir</a>
                                    <a class="btn btn-outline-secondary p-1" href="components/funcionario/AlterarDepartamento.html" target="conteudo">Alterar</a>
                                    <a class="btn btn-outline-danger p-1" href="components/funcionario/ExcluirDepartamento.html" target="conteudo">Excluir</a>
                                    <a class="btn btn-outline-warning p-1" href="components/funcionario/ConsultarDepartamento.html" target="conteudo">Consultar</a>
                                    <a class="btn btn-outline-warning p-1" href="components/funcionario/ListarDepartamento.html" target="conteudo">Listar</a>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                                <h2 class="accordion-header" id="flush-headingThree">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                                       Acesso
                                    </button>
                                 </h2>
                            <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <a class="btn btn-outline-success p-1" href="components/acesso/CadastroAcesso.html" target="conteudo">Incluir</a>
                                    <a class="btn btn-outline-secondary p-1" href="components/acesso/AlterarAcesso.html" target="conteudo">Alterar</a>
                                    <a class="btn btn-outline-danger p-1" href="components/acesso/ExcluirAcesso.html" target="conteudo">Excluir</a>
                                    <a class="btn btn-outline-warning p-1" href="components/acesso/ConsultarAcesso.html" target="conteudo">Consultar</a>
                                    <a class="btn btn-outline-warning p-1" href="components/acesso/ListarAcesso.html" target="conteudo">Listar</a>
                                </div>
                            </div>
                        </div>
                            
                    </div>
                    
                    
                </div>
            </div>

        </p>
    </nav>
    <main>

        <iframe src="abertura.html" name="conteudo" class="container"></iframe>

    </main>

</body>
</html>
