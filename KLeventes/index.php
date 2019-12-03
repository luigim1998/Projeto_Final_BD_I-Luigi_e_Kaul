<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap 4 Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <ul class="navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="#">Principal</a>
        </li>
    </ul>
</nav>

    <div class="login_part">
        <h3>NOVO CADASTRO</h3>
        <form action="criar_conta.php" method="post">
            <div class="form-group">
                <label for="nome">Nome:</label>
                <input type="text" name="nome" class="form-control" placeholder="Nome Completo" id="nome">
            </div>
            <div class="form-group">
                <label for="apelido">Apelido:</label>
                <input type="text" name="apelido" class="form-control" placeholder="Apelido" id="apelido">
            </div>
            <label for="genero">Genero:</label>
            <select class="form-control" name="genero" id="genero">
                <option value="M">Masculino</option>
                <option Value="F">Feminino</option>
                <option Value="O">Outro</option>
            </select>
            <div class="row">
                <div class="col">
                    <label for="cpf">CPF:</label>
                    <input type="nome" name="cpf" class="form-control" placeholder="xxx.xxx.xxx-xx" id="cpf"></div>
                <div class="col">
                    <label for="telefone">Telefone:</label>
                    <input type="nome" name="telefone" class="form-control" placeholder="(DDD)xxxxx-xxxx" id="telefone">
                </div>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" name="email" class="form-control" placeholder="Seu email" id="email">
            </div>
            <div class="form-group">
                <label for="pwd">Password:</label>
                <input type="password" name="pwd" class="form-control" placeholder="Enter password" id="pwd">
            </div>
            <div class="row">
                <div class="col">
                    <label for="rua">Rua:</label>
                    <input type="nome" name="rua" class="form-control" placeholder="Rua" id="rua"></div>
                <div class="col">
                    <label for="bairro">Bairro:</label>
                    <input type="nome" name="bairro" class="form-control" placeholder="Bairro" id="bairro">
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label for="numero">Numero:</label>
                    <input type="nome" name="numero" class="form-control" placeholder="Numero da residência" id="numero"></div>
                <div class="col">
                    <label for="cep">CEP:</label>
                    <input type="nome" name="cep" class="form-control" placeholder="Seu CEP" id="cep">
                </div>
            </div>
            <div class="form-group">
                <label for="complemento">Complemento:</label>
                <input type="name" name="complemento" class="form-control" placeholder="Complemento" id="complemento">
            </div>
            <div class="form-group form-check">
            </div>
            <button type="submit" class="btn btn-primary">Cadastrar</button>
            <a href="login.php" class="btn btn-link" a=>Já tenho uma conta</a>
        </form>
    </div>

</body>
</html>