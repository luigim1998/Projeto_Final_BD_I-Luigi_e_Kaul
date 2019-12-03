<?php

$con_string = "host=localhost port=5432 dbname=KLeventos user=postgres password=root";
$bdconnect = pg_connect($con_string) or
die("Não foi possível conectar no BD :(");

//echo "Conexão realizada com sucesso!"
?>