-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

CREATE DATABASE Banco_feira
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

USE Banco_feira;
CREATE TABLE foto (
id_foto int PRIMARY KEY,
png longblob,
id_postagem int
);

CREATE TABLE aluno (
id_aluno varchar(20) PRIMARY KEY,
nome_aluno varchar(255),
rm int,
id_turma int,
email_institucional varchar(255),
disponivel tinyint(1),
senha varchar(255)
);

CREATE TABLE postagem (
legenda text,
data datetime,
id_aluno varchar(20),
id_professor int,
id_postagem int PRIMARY KEY,
id_foto int,
FOREIGN KEY(id_foto) REFERENCES foto (id_foto)
);

CREATE TABLE turma (
id_turma int PRIMARY KEY,
id_aluno varchar(20),
FOREIGN KEY(id_aluno) REFERENCES aluno (id_aluno)
);

CREATE TABLE nota (
id_nota int auto_increment PRIMARY KEY,
criatividade decimal(2,1),
capricho decimal(2,1),
abordagem decimal(2,1),
dominio decimal(2,1),
postura decimal(2,1),
oralidade decimal(2,1),
comentario varchar(255),
organizacao varchar(255)
);

CREATE TABLE professor (
id_professor int PRIMARY KEY,
email varchar(255),
matricula varchar(20),
id_nota int,
FOREIGN KEY(id_nota) REFERENCES nota (id_nota)
);

CREATE TABLE projeto (
id_projeto varchar(20) PRIMARY KEY,
titulo_projeto varchar(100),
descricao varchar(255),
bloco varchar(10),
sala varchar(10),
posicao int,
orientador varchar(255),
turma varchar(10),
id_aluno varchar(20),
id_nota int,
FOREIGN KEY(id_aluno) REFERENCES aluno (id_aluno),
FOREIGN KEY(id_nota) REFERENCES nota (id_nota)
);

CREATE TABLE pertence (
id_postagem int,
id_professor int,
FOREIGN KEY(id_postagem) REFERENCES postagem (id_postagem),
FOREIGN KEY(id_professor) REFERENCES professor (id_professor)
);

CREATE TABLE pertence2 (
id_postagem int,
id_aluno varchar(20),
FOREIGN KEY(id_postagem) REFERENCES postagem (id_postagem),
FOREIGN KEY(id_aluno) REFERENCES aluno (id_aluno)
);
