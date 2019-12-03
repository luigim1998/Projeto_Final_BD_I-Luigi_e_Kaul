<?php
include 'BDconnect.php';

$nome = $_POST["nome"];
$desc = $_POST["descricao"];

$sql1 = "INSERT INTO evento(id,nome, descricao)
        VALUES (4, '$nome', '$desc')";

pg_query($bdconnect, $sql1) or
die("FALHA AO SALVA ENDEREÇO NO BANCO DE DADOS!");

echo "DADOS SALVOS COM SUCESSO!";

header('Location: principalConta.php?nome=');
?>