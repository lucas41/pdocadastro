
<?php

require 'init.php';

?>

<!doctype html>

<html id="corpo">

    <head>

        <meta charset="utf-8">

        <title>Cadastro de Usuário</title>
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/css.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
<div class="container">
             <section id="about">
            <h1 class="jumbotron text-center">Sistema de Cadastro</h1>
            <h2 class="text-center">Cadastro de Usuário</h2>
            <form action="add.php" method="post">
                <div class="form-group row">
                    <div class="col-lg-3">
                        <label for="name">Nome: </label>
                        <input class="form-control input-sm" type="text" name="name" id="name">
                    </div>
                    <div class="col-lg-3">
                        <label for="email">Email: </label>
                        <input class="form-control input-sm" type="text" name="email" id="email">
                    </div>
                    <div class="col-lg-3">
                        Gênero:
                        <br><input  type="radio" name="gender" id="gener_m" value="M">
                        <label for="gener_m">Masculino </label>
                        <input  type="radio" name="gender" id="gener_f" value="F">
                        <label for="gener_f">Feminino </label>
                    </div>
                    <div class="col-lg-3">
                        <label for="birthdate">Data de Nascimento: </label>
                        <input class="form-control input-sm" type="text" name="birthdate" id="birthdate" placeholder="dd/mm/YYYY">
                    </div>
                    <div class="col-md-12">
                        <br> <input class="btn btn-default" type="submit" value="Cadastrar">
                    </div>
                </div>
            </form>
        </div>
        <script src="vendor/jquery/jquery.min.js"></script>
    </body>
</html>