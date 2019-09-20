<section id="conteudo">
	<header class="column">
		<h1>Livros</h1>
		<div class="ferramentas">
			<a href="livros.php?acao=cadastro" class="botao">Cadastrar novo livro</a>

			<form method="get" action="livros.php">
				<label>Filtrar por:</label>
				<select name="filtro_autor">
					<option value="0">Todos os autores</option>
					<option value="1">Autor 1</option>
					<option value="2">Autor 2</option>
					<option value="2">Autor 3</option>
				</select>
				<select name="filtro_editora">
					<option value="0">Todos as editoras</option>
					<option value="1">Editora 1</option>
					<option value="2">Editora 2</option>
					<option value="2">Editora 3</option>
				</select>
				<input class="botao" type="submit" value="Ok!" />
			</form>
		</div>
	</header>

	<ul class="lista">
		<a href="livros.php?acao=detalhes&id=1">
			<li>
				<img src="../imagens/livros/livro1.jpg" />
				<div>
					<h1>Livro 1</h1>
					<time>2019</time>
				</div>
			</li>
		</a>

		<a href="#">
			<li>
				<img src="../imagens/livros/livro2.jpg" />
				<div>
					<h1>Livro 2</h1>
					<time>2019</time>
				</div>
			</li>
		</a>

		<a href="#">
			<li>
				<img src="../imagens/livros/livro3.jpg" />
				<div>
					<h1>Livro 3</h1>
					<time>2019</time>
				</div>
			</li>
		</a>
	</ul>
</section>