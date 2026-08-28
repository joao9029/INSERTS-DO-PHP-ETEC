<?php
include_once('conexao.php');

$query = mysqli_query($conexao, "SELECT * FROM ALUNOS");

if (!$query) {
    die("Query inválida: " . mysqli_error($conexao));
}



 while ($dados = mysqli_fetch_array($query)) {
   echo $dados['nm_aluno'];
 }
      
    

