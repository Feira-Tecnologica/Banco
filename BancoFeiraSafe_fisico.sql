-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE foto (
id_foto varchar(255) PRIMARY KEY,
png longblob,
id_postagem varchar(255)
)

CREATE TABLE aluno (
id_aluno varchar(255) PRIMARY KEY,
nome_aluno varchar(255),
rm varchar(5),
id_turma varchar(255),
email_institucional varchar(255),
disponivel tinyint(1),
senha varchar(255)
)

CREATE TABLE postagem (
legenda text,
data datetime,
id_aluno varchar(255),
id_professor varchar(255),
id_postagem varchar(255) PRIMARY KEY,
id_foto varchar(255),
FOREIGN KEY(id_foto) REFERENCES foto (id_foto)
)

CREATE TABLE turma (
id_turma varchar(255) PRIMARY KEY,
id_aluno varchar(255),
FOREIGN KEY(id_aluno) REFERENCES aluno (id_aluno)
)

CREATE TABLE nota (
criatividade decimal,
capricho decimal,
abordagem decimal,
dominio decimal,
postura decimal,
id_nota varchar(255) PRIMARY KEY,
oralidade decima,
comentario Texto(1),
organizacao Texto(1)
)

CREATE TABLE professor (
email varchar(255),
matricula varchar(20),
id_professor varchar(255) PRIMARY KEY,
id_nota varchar(255),
FOREIGN KEY(id_nota) REFERENCES nota (id_nota)
)

CREATE TABLE projeto (
id_projeto varchar(255) PRIMARY KEY,
titulo_projeto varchar,
descricao varchar,
bloco Texto(1),
sala varchar(255),
posicao varchar,
orientador varchar,
turma varchar,
id_aluno varchar(255),
id_nota varchar(255),
FOREIGN KEY(id_aluno) REFERENCES aluno (id_aluno),
FOREIGN KEY(id_nota) REFERENCES nota (id_nota)
)

CREATE TABLE pertence (
id_postagem varchar(255),
id_professor varchar(255),
FOREIGN KEY(id_postagem) REFERENCES postagem (id_postagem),
FOREIGN KEY(id_professor) REFERENCES professor (id_professor)
)

CREATE TABLE pertence2 (
id_postagem varchar(255),
id_aluno varchar(255),
FOREIGN KEY(id_postagem) REFERENCES postagem (id_postagem),
FOREIGN KEY(id_aluno) REFERENCES aluno (id_aluno)
)

