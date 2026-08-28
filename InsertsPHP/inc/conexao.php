<?php
$servidor = "localhost";
$banco = "etec";
$usuario = "root";
$senha = "usbw";

$conexao = new mysqli($servidor, $usuario, $senha, $banco);

if($conexao->connect_error){
    die("Erro de conexao: " . $conexao->connect_error);
}

mysqli_set_charset($conexao, "utf8");
?>
