<?php
include_once('conexao.php');

$query = mysqli_query($conexao, "SELECT * FROM tabela");

if (!$query) {
    die("Query inválida: " . mysqli_error($conexao));
}
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Lista de Produtos</title>
</head>
<body>

<table border="1">
    <tr>
        <th>Id</th>
        <th>Código</th>
        <th>Produto</th>
        <th>Descrição</th>
        <th>Valor</th>
    </tr>

    <?php while ($dados = mysqli_fetch_array($query)) { ?>
        <tr>
            <td><?php echo $dados['id']; ?></td>
            <td><?php echo $dados['codigo']; ?></td>
            <td><?php echo $dados['produto']; ?></td>
            <td><?php echo $dados['descricao']; ?></td>
            <td>R$ <?php echo $dados['valor']; ?></td>
        </tr>
    <?php } ?>

</table>

<?php
mysqli_close($conexao);
?>

</body>
</html>
