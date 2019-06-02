<?php

$btnLogin = filter_input(INPUT_POST, 'btnLogin' , FILTER_SANITIZE_STRING);

if($btnLogin){
    echo('teste');
}else{
    $_SESSION['msg'] = "pagina nao encontrada";
    header("Location: index.html");
}

?>