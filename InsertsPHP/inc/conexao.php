<?php
$servidor = "localhost";
$banco = "ETEC";
$usuario = "root";
$senha = "";

$conexao = new mysqli($servidor, $usuario, $senha, $banco);

if($conexao->connect_error){
    die("Erro de conexão: " . $conexao->connect_error);
}
?>