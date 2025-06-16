-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Jun-2025 às 17:22
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `banco_feira`
--
CREATE DATABASE IF NOT EXISTS `banco_feira` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `banco_feira`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `id_aluno` varchar(20) NOT NULL,
  `nome_aluno` varchar(255) DEFAULT NULL,
  `rm` int(11) DEFAULT NULL,
  `id_turma` int(11) DEFAULT NULL,
  `email_institucional` varchar(255) DEFAULT NULL,
  `disponivel` tinyint(1) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `foto`
--

CREATE TABLE `foto` (
  `id_foto` int(11) NOT NULL,
  `png` longblob DEFAULT NULL,
  `id_postagem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `criatividade` decimal(2,1) DEFAULT NULL,
  `capricho` decimal(2,1) DEFAULT NULL,
  `abordagem` decimal(2,1) DEFAULT NULL,
  `dominio` decimal(2,1) DEFAULT NULL,
  `postura` decimal(2,1) DEFAULT NULL,
  `oralidade` decimal(2,1) DEFAULT NULL,
  `comentario` varchar(255) DEFAULT NULL,
  `organizacao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ods`
--

CREATE TABLE `ods` (
  `id_ods` int(11) NOT NULL,
  `nome_ods` varchar(100) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pertence`
--

CREATE TABLE `pertence` (
  `id_postagem` int(11) DEFAULT NULL,
  `id_professor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pertence2`
--

CREATE TABLE `pertence2` (
  `id_postagem` int(11) DEFAULT NULL,
  `id_aluno` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `postagem`
--

CREATE TABLE `postagem` (
  `legenda` text DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `id_aluno` varchar(20) DEFAULT NULL,
  `id_professor` int(11) DEFAULT NULL,
  `id_postagem` int(11) NOT NULL,
  `id_foto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `id_professor` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `matricula` varchar(20) DEFAULT NULL,
  `id_nota` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `projeto`
--

CREATE TABLE `projeto` (
  `id_projeto` varchar(20) NOT NULL,
  `titulo_projeto` varchar(100) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `bloco` varchar(10) DEFAULT NULL,
  `sala` varchar(10) DEFAULT NULL,
  `posicao` int(11) DEFAULT NULL,
  `orientador` varchar(255) DEFAULT NULL,
  `turma` varchar(10) DEFAULT NULL,
  `id_aluno` varchar(20) DEFAULT NULL,
  `id_nota` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `projeto_aluno_ods`
--

CREATE TABLE `projeto_aluno_ods` (
  `id_projeto` varchar(20) NOT NULL,
  `id_aluno` varchar(20) NOT NULL,
  `id_ods` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `id_turma` int(11) NOT NULL,
  `id_aluno` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id_aluno`);

--
-- Índices para tabela `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id_foto`);

--
-- Índices para tabela `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Índices para tabela `ods`
--
ALTER TABLE `ods`
  ADD PRIMARY KEY (`id_ods`);

--
-- Índices para tabela `pertence`
--
ALTER TABLE `pertence`
  ADD KEY `id_postagem` (`id_postagem`),
  ADD KEY `id_professor` (`id_professor`);

--
-- Índices para tabela `pertence2`
--
ALTER TABLE `pertence2`
  ADD KEY `id_postagem` (`id_postagem`),
  ADD KEY `id_aluno` (`id_aluno`);

--
-- Índices para tabela `postagem`
--
ALTER TABLE `postagem`
  ADD PRIMARY KEY (`id_postagem`),
  ADD KEY `id_foto` (`id_foto`);

--
-- Índices para tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`id_professor`),
  ADD KEY `id_nota` (`id_nota`);

--
-- Índices para tabela `projeto`
--
ALTER TABLE `projeto`
  ADD PRIMARY KEY (`id_projeto`),
  ADD KEY `id_aluno` (`id_aluno`),
  ADD KEY `id_nota` (`id_nota`);

--
-- Índices para tabela `projeto_aluno_ods`
--
ALTER TABLE `projeto_aluno_ods`
  ADD PRIMARY KEY (`id_projeto`,`id_aluno`,`id_ods`),
  ADD KEY `id_aluno` (`id_aluno`),
  ADD KEY `id_ods` (`id_ods`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`id_turma`),
  ADD KEY `id_aluno` (`id_aluno`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `pertence`
--
ALTER TABLE `pertence`
  ADD CONSTRAINT `pertence_ibfk_1` FOREIGN KEY (`id_postagem`) REFERENCES `postagem` (`id_postagem`),
  ADD CONSTRAINT `pertence_ibfk_2` FOREIGN KEY (`id_professor`) REFERENCES `professor` (`id_professor`);

--
-- Limitadores para a tabela `pertence2`
--
ALTER TABLE `pertence2`
  ADD CONSTRAINT `pertence2_ibfk_1` FOREIGN KEY (`id_postagem`) REFERENCES `postagem` (`id_postagem`),
  ADD CONSTRAINT `pertence2_ibfk_2` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`);

--
-- Limitadores para a tabela `postagem`
--
ALTER TABLE `postagem`
  ADD CONSTRAINT `postagem_ibfk_1` FOREIGN KEY (`id_foto`) REFERENCES `foto` (`id_foto`);

--
-- Limitadores para a tabela `professor`
--
ALTER TABLE `professor`
  ADD CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`id_nota`) REFERENCES `nota` (`id_nota`);

--
-- Limitadores para a tabela `projeto`
--
ALTER TABLE `projeto`
  ADD CONSTRAINT `projeto_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`),
  ADD CONSTRAINT `projeto_ibfk_2` FOREIGN KEY (`id_nota`) REFERENCES `nota` (`id_nota`);

--
-- Limitadores para a tabela `projeto_aluno_ods`
--
ALTER TABLE `projeto_aluno_ods`
  ADD CONSTRAINT `projeto_aluno_ods_ibfk_1` FOREIGN KEY (`id_projeto`) REFERENCES `projeto` (`id_projeto`),
  ADD CONSTRAINT `projeto_aluno_ods_ibfk_2` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`),
  ADD CONSTRAINT `projeto_aluno_ods_ibfk_3` FOREIGN KEY (`id_ods`) REFERENCES `ods` (`id_ods`);

--
-- Limitadores para a tabela `turma`
--
ALTER TABLE `turma`
  ADD CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
