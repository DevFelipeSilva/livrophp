<?php

class editoras{
    private function listarEditoras (){
        include("../model/conexao.php");
        
        $dados = array();
        
        $query = $conectar->query("SELECT * FROM editora");
        while($registro = $query->fetch_assoc()) {
        $dados[] = $registro;
        }
        
        return $dados;
    }
    
    private function getDetalhes() {
        include("../model/conexao.php");
        
        $id = $_GET["id"];
        
        $query = $conectar->query("SELECT * FROM editora WHERE id = $id");
        
        $dados = $query->fetch_assoc();
        
        return $dados;
        
    }
    
    private function inserirEditora(){
        include("../model/conexao.php");
        
        $nome = $_POST["nome"];
        $endereco = $_POST["endereco"];
        $cidade = $_POST["cidade"];
        $email = $_POST["email"];
        $telefone = $_POST["telefone"];
       
        
        $query = $conectar->query("INSERT INTO editora (nome, endereco, cidade, email, telefone) VALUES('$nome', '$endereco', '$cidade', '$email','$telefone')");
        
        
        
    }
    public function exibirView(){
    
        if(isset($_GET["acao"])){
            
            switch($_GET["acao"]) {
                case "cadastro":
                    $conteudo = "../view/editoras/cadastro.php";
                    break;
                    
                case "detalhes":
                    $editora = $this->getDetalhes();
                    $conteudo = "../view/editoras/detalhes.php";
                    break;
                    
                case "inserir_editora":
                    $this->inserirEditora();
                    $redirecionar = "editoras.php";
                    $conteudo = "../view/mensagem.php";
                    
            } 
                   
        }   else {
            $editoras = $this->listarEditoras();
            $conteudo = "../view/editoras/lista.php";
        }
        include("../view/view.php");
    }
}

$editoras = new editoras;
$editoras->exibirView();


?>
