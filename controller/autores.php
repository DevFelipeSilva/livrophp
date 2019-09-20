<?php

class autores{
    
    private function listarAutores(){
        include("../model/conexao.php");
        
        $dados = array();
        
        $query = $conectar->query("SELECT * FROM autor");
        while($registro = $query->fetch_assoc()){
            $dados[] = $registro;
        }
        
        return $dados;
    }
    
    private function getDetalhes(){
        include("../model/conexao.php");
        
        $id = $_GET["id"];
        
        $query = $conectar->query("SELECT * FROM autor WHERE id = $id");
        
        $dados = $query->fetch_assoc();
        
        return $dados;
    }

    private function inserirAutor(){
        include("../model/conexao.php");
        
        $nome = $_POST["nome"];
        $email = $_POST["email"];
        $formacao = $_POST["formacao"];
        $foto = $_POST["foto"];
        
        $query = $conectar->query("INSERT INTO autor (nome, email, formacao, foto) VALUES ('$nome', '$email', '$formacao', '$foto')");
        
        
    }
    
    public function exibirView(){
    
        if(isset($_GET["acao"])){
            
            switch($_GET["acao"]) {
                case "cadastro":
                    $conteudo = "../view/autores/cadastro.php";
                    break;
                    
                case "detalhes":
                    $autor = $this->getDetalhes();
                    $conteudo = "../view/autores/detalhes.php";
                    break;
                    
                case "inserir_autor":
                    $this->inserirAutor();
                    $redirecionar = "autores.php";
                    $conteudo = "../view/mensagem.php";
                    
            } 
                   
        }   else {
            $autores = $this->listarAutores();
            $conteudo = "../view/autores/lista.php";
        }
        include("../view/view.php");
    }
}

$autores = new autores;
$autores->exibirView();


?>