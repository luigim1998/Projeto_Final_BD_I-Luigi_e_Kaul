<?php
include 'BDconnect.php';

$email = $_POST["email"];
$senha = $_POST["senha"];

$sql = "SELECT * FROM usuario_login WHERE email = '$email' and senha = '$senha'";
$result = pg_query($bdconnect,$sql);

if (pg_num_rows($result)) {
    $row = pg_fetch_assoc($result);
    $nome = $row['nome'];
    header('Location: principalConta.php?nome='.$nome);
    echo 1;
} else {
    header('Location: login.php?');
    echo 0;    
}

?>