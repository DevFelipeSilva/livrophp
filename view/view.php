<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<title>UltraBooks Livraria</title>
		
		<link rel="stylesheet" type="text/css" href="../css/estilos.css" />
		<link href="https://fonts.googleapis.com/css?family=Dosis|Source+Sans+Pro&display=swap" rel="stylesheet">
	</head>
	<body>
		<header id="header">
			<div class="logotipo">
				<img src="../imagens/logotipo.png" />
				<div>
					<h1>UltraBooks</h1>
					<span>Livraria</span>
				</div>
			</div>
			<nav class="menu">
				<a href="../controller/livros.php"><span>Livros</span></a>
				<a href="../controller/autores.php"><span>Autores</span></a>
				<a href="../controller/editoras.php"><span>Editoras</span></a>
			</nav>
		</header>
		
		<div id="wrapper">
			<?php include($conteudo);?>
		</div>

		<footer>
			<img src="../imagens/aluno.jpeg" />
			<ul id="lista">
				<li><b>Aluno: </b>Daniel Rodrigues Vasconcelos</li>
				<li><b>RA: </b>1741368-5</li>
				<li><b>Polo: </b>Asa Sul - DF</li>
                <li><b>Curso: </b>Sistemas para Internet</li>
			</ul>
		</footer>
	</body>
</html>