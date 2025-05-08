-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08/05/2025 às 13:32
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `feiratecnologica`
--
CREATE DATABASE IF NOT EXISTS `feiratecnologica` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `feiratecnologica`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `RM` varchar(20) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `email_institucional` varchar(100) NOT NULL,
  `disponibilidade` tinyint(1) NOT NULL,
  `id_turma` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `fotos`
--

CREATE TABLE `fotos` (
  `id` int(11) NOT NULL,
  `foto` longblob NOT NULL,
  `id_postagem_aluno` int(11) DEFAULT NULL,
  `id_postagem_professor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `notas`
--

CREATE TABLE `notas` (
  `id` int(11) NOT NULL,
  `nota` decimal(5,2) NOT NULL,
  `id_grupo` int(11) NOT NULL,
  `id_professor` int(11) NOT NULL,
  `avaliador` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `postagens_alunos`
--

CREATE TABLE `postagens_alunos` (
  `id` int(11) NOT NULL,
  `legenda` text DEFAULT NULL,
  `data_postagem` datetime DEFAULT current_timestamp(),
  `id_aluno` int(11) NOT NULL,
  `id_turma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `postagens_professores`
--

CREATE TABLE `postagens_professores` (
  `id` int(11) NOT NULL,
  `legenda` text DEFAULT NULL,
  `data_postagem` datetime DEFAULT current_timestamp(),
  `id_professor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `professores`
--

CREATE TABLE `professores` (
  `id` int(11) NOT NULL,
  `matricula` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `projetos`
--

CREATE TABLE `projetos` (
  `cod` varchar(20) NOT NULL,
  `id_grupo` int(11) NOT NULL,
  `integrantes` text NOT NULL,
  `cadastro_concluido` tinyint(1) DEFAULT 0,
  `numero_projeto` int(11) NOT NULL,
  `id_aluno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `turmas`
--

CREATE TABLE `turmas` (
  `id_turma` int(11) NOT NULL,
  `nome_turma` varchar(100) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `aluno_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `RM` (`RM`),
  ADD UNIQUE KEY `email_institucional` (`email_institucional`),
  ADD KEY `id_turma` (`id_turma`);

--
-- Índices de tabela `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_postagem_aluno` (`id_postagem_aluno`),
  ADD KEY `id_postagem_professor` (`id_postagem_professor`);

--
-- Índices de tabela `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_grupo` (`id_grupo`),
  ADD KEY `id_professor` (`id_professor`);

--
-- Índices de tabela `postagens_alunos`
--
ALTER TABLE `postagens_alunos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_aluno` (`id_aluno`),
  ADD KEY `id_turma` (`id_turma`);

--
-- Índices de tabela `postagens_professores`
--
ALTER TABLE `postagens_professores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_professor` (`id_professor`);

--
-- Índices de tabela `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matricula` (`matricula`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices de tabela `projetos`
--
ALTER TABLE `projetos`
  ADD PRIMARY KEY (`id_grupo`),
  ADD UNIQUE KEY `cod` (`cod`),
  ADD UNIQUE KEY `numero_projeto` (`numero_projeto`),
  ADD KEY `fk_aluno` (`id_aluno`);

--
-- Índices de tabela `turmas`
--
ALTER TABLE `turmas`
  ADD PRIMARY KEY (`id_turma`),
  ADD KEY `fk_turma_aluno` (`aluno_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `postagens_alunos`
--
ALTER TABLE `postagens_alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `postagens_professores`
--
ALTER TABLE `postagens_professores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `professores`
--
ALTER TABLE `professores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `projetos`
--
ALTER TABLE `projetos`
  MODIFY `id_grupo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `turmas`
--
ALTER TABLE `turmas`
  MODIFY `id_turma` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `alunos`
--
ALTER TABLE `alunos`
  ADD CONSTRAINT `alunos_ibfk_1` FOREIGN KEY (`id_turma`) REFERENCES `turmas` (`id_turma`) ON DELETE CASCADE;

--
-- Restrições para tabelas `fotos`
--
ALTER TABLE `fotos`
  ADD CONSTRAINT `fotos_ibfk_1` FOREIGN KEY (`id_postagem_aluno`) REFERENCES `postagens_alunos` (`id`),
  ADD CONSTRAINT `fotos_ibfk_2` FOREIGN KEY (`id_postagem_professor`) REFERENCES `postagens_professores` (`id`);

--
-- Restrições para tabelas `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`id_grupo`) REFERENCES `projetos` (`id_grupo`) ON DELETE CASCADE,
  ADD CONSTRAINT `notas_ibfk_2` FOREIGN KEY (`id_professor`) REFERENCES `professores` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `postagens_alunos`
--
ALTER TABLE `postagens_alunos`
  ADD CONSTRAINT `postagens_alunos_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `alunos` (`id`),
  ADD CONSTRAINT `postagens_alunos_ibfk_2` FOREIGN KEY (`id_turma`) REFERENCES `turmas` (`id_turma`);

--
-- Restrições para tabelas `postagens_professores`
--
ALTER TABLE `postagens_professores`
  ADD CONSTRAINT `postagens_professores_ibfk_1` FOREIGN KEY (`id_professor`) REFERENCES `professores` (`id`);

--
-- Restrições para tabelas `projetos`
--
ALTER TABLE `projetos`
  ADD CONSTRAINT `fk_aluno` FOREIGN KEY (`id_aluno`) REFERENCES `alunos` (`id`);

--
-- Restrições para tabelas `turmas`
--
ALTER TABLE `turmas`
  ADD CONSTRAINT `fk_turma_aluno` FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
