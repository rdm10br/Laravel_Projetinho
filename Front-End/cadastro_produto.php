<?php
    include_once("conexao.php");
    $nome = mysqli_real_escape_string($conn, $_POST('nome'));
    $descricao = mysqli_real_escape_string($conn, $_POST('descricao'));
    $imagem = mysqli_real_escape_string($conn, $_POST('imagem'));
?>