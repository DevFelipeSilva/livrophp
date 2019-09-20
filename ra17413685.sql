-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20-Set-2019 às 16:11
-- Versão do servidor: 10.1.35-MariaDB
-- versão do PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ra17413685`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `formacao` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`id`, `nome`, `email`, `formacao`, `foto`) VALUES
(1, 'HP Lovercraft', 'lovercraft@hotmail.com', 'Escritor', 'fotoovercraft.jpg'),
(2, 'J.R.R Tolkien', 'valarmorgul@gmail.com', 'Linguista', 'hobbit.jpg'),
(3, 'Augusto Cury', 'curyescritor@gmail.com', 'Psicólogo', 'fotocury.jpg'),
(4, 'Ana Lúcia Machado de Almeida', 'aamachadoalmeida@gmail.com', 'Jornalista', 'fotoanalucia.jpg'),
(5, 'Daniel Rodrigues Vasconcelos', 'drvasconcelos@gmail.com', 'Agronomo', 'fotinha.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `editora`
--

CREATE TABLE `editora` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `editora`
--

INSERT INTO `editora` (`id`, `nome`, `endereco`, `cidade`, `email`, `telefone`) VALUES
(1, 'Editora Martins Fontes', 'Rua da Mata 345', 'São Paulo', 'martinsfonteseditora@gmail.com', '(11)2103-4300'),
(2, 'Editora Academia', 'Travessa da Faculdade 123', 'São Paulo', 'academiaeditora@hotmail.com', '(31) 3104-1234'),
(3, 'Editora Pandorga', 'Rua dos Pandeiros 1178', 'Rio de Janeiro', 'pandorga@hotmail.com', '(21) 2200-4567'),
(4, 'Editora Vaga-Lume', 'Rua dos Pirilampos 2345', 'Belo Horizonte', 'vagalumeeditora@gmail.com', '(31) 3444-0546'),
(5, 'Editora Tres Marias', 'Laemcasa', 'Brasilia', 'tresmarias@gmail.com', '(61)3568-4475'),
(6, 'Editora Sextante', 'Rua Amir Klink 995', 'Brasilia', 'sextante@gmail.com', '61 3208-5478');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `totalPaginas` int(11) NOT NULL,
  `edicao` varchar(255) NOT NULL,
  `ISBN` varchar(255) NOT NULL,
  `ano` year(4) NOT NULL,
  `fotoCapa` varchar(255) NOT NULL,
  `idEditora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`id`, `titulo`, `totalPaginas`, `edicao`, `ISBN`, `ano`, `fotoCapa`, `idEditora`) VALUES
(2, 'O Escaravelho do Diabo', 138, '2', '34567890', 1987, 'escaravelho.jpg', 4),
(3, 'Xisto no Espaço', 188, '6', '11234567', 1984, 'xisto1.jpg', 4),
(4, 'Xisto e o Pássaro Cósmico', 165, '8', '33467845', 1985, 'xistopassaro.jpg', 4),
(5, 'Aventuras de Xisto', 199, '4', '12365178', 1982, 'aventurasxisto.jpg', 4),
(6, 'O Hobbit', 333, '4', '89765067', 1976, 'thehobbit.jpg', 1),
(7, 'O Senhor dos Anéis: A sociedade do anel', 324, '7', '56783910', 1974, 'socanel.jpg', 1),
(8, 'O Senhor dos Anéis: As Duas Torres', 299, '9', '32570916', 1975, 'duastorres.jpg', 1),
(9, 'O Senhor dos Anéis: O Retorno do Rei', 318, '9', '10694928', 1977, 'aneisretornorei.jpg', 1),
(10, 'O Silmarillion', 355, '3', '10795837', 1965, 'silmarillion.jpg', 1),
(11, 'A Chave de Prata', 145, '2', '56789304', 2019, 'loverchave.jpg', 3),
(12, 'O Caso de Charles Dexter Ward', 167, '2', '10567932', 2019, 'lovercharles.jpg', 3),
(13, 'O Navio Branco', 198, '2', '00984387', 2019, 'lovernavio.jpg', 3),
(14, 'Call of Cthullu', 101, '44', '34879032', 1904, 'cthullu.jpg', 3),
(15, '20 Regras de ouro para educar filhos e alunos', 208, '1', '8542209907', 2017, 'cury20.jpg', 2),
(16, 'Armadilhas da Mente', 277, '2', '86940368', 2018, 'curyarmadilha.jpg', 2),
(17, 'O Homem mais Inteligente da História', 272, '1', '8543104351', 2016, 'curyhomem.jpg', 2),
(18, 'Prisioneiros da Mente', 320, '1', '9788595084292', 2018, 'curyprisioneiros.jpg', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro_autor`
--

CREATE TABLE `livro_autor` (
  `id` int(11) NOT NULL,
  `idLivro` int(11) NOT NULL,
  `idAutor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `livro_autor`
--

INSERT INTO `livro_autor` (`id`, `idLivro`, `idAutor`) VALUES
(1, 15, 3),
(2, 11, 1),
(3, 16, 3),
(4, 5, 4),
(5, 14, 1),
(6, 12, 1),
(7, 2, 4),
(8, 6, 2),
(9, 17, 3),
(10, 13, 1),
(11, 8, 2),
(12, 7, 2),
(13, 9, 2),
(14, 10, 2),
(15, 18, 3),
(16, 3, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idEditora` (`idEditora`);

--
-- Indexes for table `livro_autor`
--
ALTER TABLE `livro_autor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `livro_autor_ibfk_1` (`idLivro`),
  ADD KEY `idAutor` (`idAutor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autor`
--
ALTER TABLE `autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `editora`
--
ALTER TABLE `editora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `livro`
--
ALTER TABLE `livro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `livro_autor`
--
ALTER TABLE `livro_autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `livro`
--
ALTER TABLE `livro`
  ADD CONSTRAINT `livro_ibfk_1` FOREIGN KEY (`idEditora`) REFERENCES `editora` (`id`);

--
-- Limitadores para a tabela `livro_autor`
--
ALTER TABLE `livro_autor`
  ADD CONSTRAINT `livro_autor_ibfk_1` FOREIGN KEY (`idLivro`) REFERENCES `livro` (`id`),
  ADD CONSTRAINT `livro_autor_ibfk_2` FOREIGN KEY (`idAutor`) REFERENCES `autor` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
