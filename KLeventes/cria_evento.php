<!DOCTYPE html>
<html lang="en">
<head>
  <title>Criar Eventos</title>
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
      <a class="nav-link" href="principalConta.php">Principal</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Criar Eventos</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="index.php">Sair</a>
    </li>
    </ul>
</nav>

<div class="aba">
    <h2>Cadastrar Evento</h2>
    <form action="cadastra_evento.php" method="post">
        <div class="form-group">
            <label for="nome">Nome:</label>
            <input type="text" name="nome" class="form-control" placeholder="Nome" id="nome">
        </div>
        <div class="form-group">
            <label for="descricao">Descrição:</label>
            <input type="text" name="descricao" class="form-control" placeholder="Descrição" id="descricao">
        </div>
        <button type="submit" class="btn btn-primary">Criar</button>
    </form>
</div>

</body>
</html>