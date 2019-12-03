<?php
include 'BDconnect.php';

$nome = $_POST["nome"];
$genero = $_POST["genero"];
$cpf = $_POST["cpf"];
$telefone = $_POST["telefone"];
$email = $_POST["email"];
$pwd = $_POST["pwd"];
$rua = $_POST["rua"];
$numero = $_POST["numero"];
$bairro = $_POST["bairro"];
$cep = $_POST["cep"];
$complemento = $_POST["complemento"];
$apelido = $_POST["apelido"];

$sql1 = "INSERT INTO endereco (rua, bairro, complemento, cep)
        VALUES ('$rua', '$bairro', '$complemento', '$cep')";

pg_query($bdconnect, $sql1) or
die("FALHA AO SALVA ENDEREÇO NO BANCO DE DADOS!");

$sql2 = "INSERT INTO usuario_login(nome,genero,cpf,telefone,email,username,senha,fk_endereco_cep,num_endereco)
VALUES('$nome','$genero','$cpf','$telefone','$email','$apelido','$pwd','$cep','$numero')";

pg_query($bdconnect, $sql2) or
die("FALHA AO SALVA USUÁRIO NO BANCO DE DADOS!");

echo "DADOS SALVOS COM SUCESSO!";

header('Location: principalConta.php?nome='.$nome);
?>