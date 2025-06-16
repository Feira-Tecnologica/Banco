-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Jun-2025 às 17:37
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
USE Banco_feira;

-- Tabela de Notas
CREATE TABLE nota (
    id_nota INT AUTO_INCREMENT PRIMARY KEY,
    criatividade DECIMAL(3,1),
    capricho DECIMAL(3,1),
    abordagem DECIMAL(3,1),
    dominio DECIMAL(3,1),
    postura DECIMAL(3,1),
    oralidade DECIMAL(3,1),
    comentario VARCHAR(255),
    organizacao VARCHAR(255)
);

-- Tabela de Turmas
CREATE TABLE turma (
    id_turma INT PRIMARY KEY,
    nome_turma VARCHAR(50)
);

-- Tabela de Alunos
CREATE TABLE aluno (
    id_aluno VARCHAR(20) PRIMARY KEY,
    nome_aluno VARCHAR(255) NOT NULL,
    rm INT,
    email_institucional VARCHAR(255),
    disponivel TINYINT(1),
    senha VARCHAR(255)
);

-- Tabela associativa aluno_turma (muitos-para-muitos)
CREATE TABLE aluno_turma (
    id_aluno VARCHAR(20),
    id_turma INT,
    PRIMARY KEY (id_aluno, id_turma),
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
);

-- Tabela de Professores
CREATE TABLE professor (
    id_professor INT PRIMARY KEY,
    email VARCHAR(255),
    matricula VARCHAR(20),
    id_nota INT,
    FOREIGN KEY (id_nota) REFERENCES nota(id_nota)
);

-- Tabela de Projetos
CREATE TABLE projeto (
    id_projeto VARCHAR(20) PRIMARY KEY,
    titulo_projeto VARCHAR(100),
    descricao VARCHAR(255),
    bloco VARCHAR(10),
    sala VARCHAR(10),
    posicao INT,
    orientador VARCHAR(255),
    turma VARCHAR(10),
    id_nota INT,
    FOREIGN KEY (id_nota) REFERENCES nota(id_nota)
);

-- Tabela associativa projeto_aluno (um projeto pode ter vários alunos)
CREATE TABLE projeto_aluno (
    id_projeto VARCHAR(20),
    id_aluno VARCHAR(20),
    PRIMARY KEY (id_projeto, id_aluno),
    FOREIGN KEY (id_projeto) REFERENCES projeto(id_projeto),
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno)
);

-- Tabela de ODS (Objetivos de Desenvolvimento Sustentável)
CREATE TABLE ods (
    id_ods INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT
);

-- Tabela associativa entre projeto, aluno e ODS
CREATE TABLE projeto_aluno_ods (
    id_projeto VARCHAR(20),
    id_aluno VARCHAR(20),
    id_ods INT,
    PRIMARY KEY (id_projeto, id_aluno, id_ods),
    FOREIGN KEY (id_projeto) REFERENCES projeto(id_projeto),
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    FOREIGN KEY (id_ods) REFERENCES ods(id_ods)
);

-- Tabela de Fotos
CREATE TABLE foto (
    id_foto INT PRIMARY KEY,
    png LONGBLOB
);

-- Tabela de Postagens
CREATE TABLE postagem (
    id_postagem INT PRIMARY KEY,
    legenda TEXT,
    data DATETIME,
    id_aluno VARCHAR(20),
    id_professor INT,
    id_projeto VARCHAR(20),
    id_foto INT,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    FOREIGN KEY (id_professor) REFERENCES professor(id_professor),
    FOREIGN KEY (id_projeto) REFERENCES projeto(id_projeto),
    FOREIGN KEY (id_foto) REFERENCES foto(id_foto)
);

-- Tabela associativa postagem_professor (quem avalia)
CREATE TABLE pertence (
    id_postagem INT,
    id_professor INT,
    PRIMARY KEY (id_postagem, id_professor),
    FOREIGN KEY (id_postagem) REFERENCES postagem(id_postagem),
    FOREIGN KEY (id_professor) REFERENCES professor(id_professor)
);

-- Tabela associativa postagem_aluno (quem fez parte)
CREATE TABLE pertence2 (
    id_postagem INT,
    id_aluno VARCHAR(20),
    PRIMARY KEY (id_postagem, id_aluno),
    FOREIGN KEY (id_postagem) REFERENCES postagem(id_postagem),
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno)
);
