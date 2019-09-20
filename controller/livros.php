<?php
if(!isset($_GET["acao"])){
	$pagina = "livros/lista.php";
} else {
	if($_GET["acao"] == "inserir_livro"){
		$redirecionar = "controller/livros.php";
		$pagina = "mensagem.php";
	} else {
		$pagina = "livros/".$_GET["acao"].".php";
	}
}

$conteudo = "../view/".$pagina;
include("../view/view.php");