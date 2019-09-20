<section id="conteudo">
	<header class="column">
		<h1>Cadastrar Livro</h1>
	</header>

	<form method="post" action="livros.php?acao=inserir_livro">
		<div class="campos">
			<div style="width:50%;">
				<label>Título do Livro</label>
				<input name="titulo" type="text" />
			</div>
		</div>
		
		<div class="campos">
			<div style="width:10%;">
				<label>Ano</label>
				<input name="ano" type="text" />
			</div>
			
			<div style="width:15%;">
				<label>Total de páginas</label>
				<input name="total_paginas" type="text" />
			</div>
			
			<div style="width:15%;">
				<label>Edição</label>
				<input name="edicao" type="text" />
			</div>
		</div>
		
		<div class="campos">
			<div style="width:30%;">
				<label>ISBN</label>
				<input name="isbn" type="text" />
			</div>
		</div>
		
		<div class="campos">
			<div style="width:50%;">
				<label>Imagem da Capa (Ex: capa1.jpg)</label>
				<input name="capa" type="text" />
			</div>
		</div>
		
		<div class="campos">
			<div style="width:50%;">
				<label>Editora</label>
				<select name="editora">
					<option value="0">Escolha...</option>
					<option value="1">Editora 1</option>
					<option value="2">Editora 2</option>
					<option value="3">Editora 3</option>
				</select>
			</div>
		</div>
		
		<div class="campos">
			<div style="width:60%;">
				<label>Autor(es)</label>

				<ul>
					<li>
						<input name="autores[]" type="checkbox" value="1"/>
						<label>Autor 1</label>
					</li>
					
					<li>
						<input name="autores[]" type="checkbox" value="2"/>
						<label>Autor 2</label>
					</li>
					
					<li>
						<input name="autores[]" type="checkbox" value="3"/>
						<label>Autor 3</label>
					</li>
				</ul>
			</div>
		</div>
		
		<div class="ferramentas borda cima">
			<input class="botao" type="submit" value="Salvar!" />
			<a href="livros.php" class="botao cinza">Voltar</a>
		</div>
	</form>
	
	
</section>