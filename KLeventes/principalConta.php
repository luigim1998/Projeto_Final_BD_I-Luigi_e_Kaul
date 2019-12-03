<!DOCTYPE html>
<html lang="en">
<head>
  <title>Principal</title>
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
    <li class="nav-item">
      <a class="nav-link" href="cria_evento.php">Criar Eventos</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="index.php">Sair</a>
    </li>
    </ul>
</nav>

<h2>BEM VINDO, <?php echo $_GET['nome']; ?></h2>

<div class="bnb">
  <h2>LISTA DE EVENTOS</h2>
  <div class=sep>
    <?php
    include 'BDconnect.php';
    $sql1 = "SELECT * FROM evento";
    $result = pg_query($bdconnect, $sql1);
    if (pg_num_rows($result)) {
      while($row = pg_fetch_assoc($result)){
        echo "EVENTO: ".$row['nome']."<br>";
        echo "DESCRIÇÃO: ".$row['descricao']."<br>";
        echo "<br>";
      }
    } else {
      echo "<h3> NENHUM EVENTO ACONTECENDO NO MOMENTO!</h3>";    
    }
    ?>
  </div>
</div>

</body>
</html>