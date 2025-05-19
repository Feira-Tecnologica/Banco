-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Maio-2025 às 17:09
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
-- Banco de dados: `bd_definitive`
--
CREATE DATABASE IF NOT EXISTS `bd_definitive` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd_definitive`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `id_aluno` varchar(255) NOT NULL,
  `nome_aluno` varchar(255) DEFAULT NULL,
  `rm` varchar(5) DEFAULT NULL,
  `id_turma` varchar(255) DEFAULT NULL,
  `email_institucional` varchar(255) DEFAULT NULL,
  `disponivel` tinyint(1) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `foto`
--

CREATE TABLE `foto` (
  `id_foto` varchar(255) NOT NULL,
  `png` longblob DEFAULT NULL,
  `id_postagem` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `postagem`
--

CREATE TABLE `postagem` (
  `id_postagem` varchar(255) NOT NULL,
  `legenda` text DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `id_aluno` varchar(255) DEFAULT NULL,
  `id_professor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `id_professor` varchar(255) NOT NULL,
  `matricula` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `projeto_nota`
--

CREATE TABLE `projeto_nota` (
  `id_projeto` varchar(255) NOT NULL,
  `curso` varchar(255) DEFAULT NULL,
  `sala` varchar(255) DEFAULT NULL,
  `orientador` varchar(255) DEFAULT NULL,
  `integrantes` varchar(255) DEFAULT NULL,
  `nome_projeto` varchar(255) DEFAULT NULL,
  `resumo` varchar(255) DEFAULT NULL,
  `ods` varchar(255) DEFAULT NULL,
  `id_aluno` varchar(255) DEFAULT NULL,
  `id_nota` varchar(255) NOT NULL,
  `oralidade` decimal(5,2) DEFAULT NULL,
  `postura` decimal(5,2) DEFAULT NULL,
  `organizacao` decimal(5,2) DEFAULT NULL,
  `criatividade` decimal(5,2) DEFAULT NULL,
  `capricho` decimal(5,2) DEFAULT NULL,
  `dominio` decimal(5,2) DEFAULT NULL,
  `abordagem` decimal(5,2) DEFAULT NULL,
  `media_avaliador` decimal(5,2) DEFAULT NULL,
  `media_final` decimal(5,2) DEFAULT NULL,
  `mencao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `id_turma` varchar(255) NOT NULL,
  `id_aluno` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  ADD PRIMARY KEY (`id_foto`),
  ADD KEY `id_postagem` (`id_postagem`);

--
-- Índices para tabela `postagem`
--
ALTER TABLE `postagem`
  ADD PRIMARY KEY (`id_postagem`),
  ADD KEY `id_aluno` (`id_aluno`),
  ADD KEY `id_professor` (`id_professor`);

--
-- Índices para tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`id_professor`);

--
-- Índices para tabela `projeto_nota`
--
ALTER TABLE `projeto_nota`
  ADD PRIMARY KEY (`id_projeto`,`id_nota`),
  ADD KEY `id_aluno` (`id_aluno`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`id_turma`),
  ADD KEY `id_aluno` (`id_aluno`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`id_postagem`) REFERENCES `postagem` (`id_postagem`);

--
-- Limitadores para a tabela `postagem`
--
ALTER TABLE `postagem`
  ADD CONSTRAINT `postagem_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`),
  ADD CONSTRAINT `postagem_ibfk_2` FOREIGN KEY (`id_professor`) REFERENCES `professor` (`id_professor`);

--
-- Limitadores para a tabela `projeto_nota`
--
ALTER TABLE `projeto_nota`
  ADD CONSTRAINT `projeto_nota_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`);

--
-- Limitadores para a tabela `turma`
--
ALTER TABLE `turma`
  ADD CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
