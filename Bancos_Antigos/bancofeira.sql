CREATE DATABASE FeiraTecnologica
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_general_ci;

USE FeiraTecnologica;

-- Tabela: turmas
CREATE TABLE turmas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_turma VARCHAR(100) NOT NULL
) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- Tabela: alunos
CREATE TABLE alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    RM VARCHAR(20) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    email_institucional VARCHAR(100) UNIQUE NOT NULL,
    disponibilidade BOOLEAN NOT NULL,
    id_turma INT NOT NULL,
    FOREIGN KEY (id_turma) REFERENCES turmas(id) ON DELETE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- Tabela: fotos
CREATE TABLE fotos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    foto LONGBLOB NOT NULL,
    remetente INT NOT NULL,
    publico BOOLEAN NOT NULL,
    FOREIGN KEY (remetente) REFERENCES alunos(id) ON DELETE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- Tabela: professores
CREATE TABLE professores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    matricula VARCHAR(20) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- Tabela: projetos
CREATE TABLE projetos (
    cod VARCHAR(20) UNIQUE NOT NULL,
    id_grupo INT AUTO_INCREMENT PRIMARY KEY,
    integrantes TEXT NOT NULL,
    cadastro_concluido BOOLEAN DEFAULT FALSE,
    numero_projeto INT NOT NULL UNIQUE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- Tabela: notas
CREATE TABLE notas (
    id_notas INT AUTO_INCREMENT PRIMARY KEY,
    oralidade DECIMAL(5,1) NOT NULL,
    postura DECIMAL(5,1) NOT NULL,
    organizacao DECIMAL(5,1) NOT NULL,
    criatividade DECIMAL(5,1) NOT NULL,
    capricho DECIMAL(5,1) NOT NULL,
    dominio DECIMAL(5,1) NOT NULL,
    abordagem DECIMAL(5,1) NOT NULL,
    avaliador ENUM('1', '2') NOT NULL
) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;


INSERT INTO notas (oralidade, postura, organizacao, criatividade, capricho, dominio, abordagem, avaliador) VALUES (8.5, 9.0, 7.5, 8.0, 9.2, 8.7, 9.0, '1');
INSERT INTO notas (oralidade, postura, organizacao, criatividade, capricho, dominio, abordagem, avaliador) VALUES (7.0, 6.5, 7.8, 6.9, 7.2, 6.8, 7.0, '2');
INSERT INTO notas (oralidade, postura, organizacao, criatividade, capricho, dominio, abordagem, avaliador) VALUES (9.1, 8.9, 9.5, 9.0, 9.3, 9.2, 9.4, '1');
INSERT INTO notas (oralidade, postura, organizacao, criatividade, capricho, dominio, abordagem, avaliador) VALUES (6.2, 5.9, 6.0, 5.8, 6.3, 6.1, 6.0, '2');
INSERT INTO notas (oralidade, postura, organizacao, criatividade, capricho, dominio, abordagem, avaliador) VALUES (8.0, 8.3, 7.9, 8.5, 8.1, 8.4, 8.2, '1');
INSERT INTO notas (oralidade, postura, organizacao, criatividade, capricho, dominio, abordagem, avaliador) VALUES (7.5, 7.7, 7.8, 7.6, 7.9, 7.4, 7.8, '2');
INSERT INTO notas (oralidade, postura, organizacao, criatividade, capricho, dominio, abordagem, avaliador) VALUES (9.0, 9.1, 8.7, 9.2, 9.0, 9.3, 9.1, '1');
INSERT INTO notas (oralidade, postura, organizacao, criatividade, capricho, dominio, abordagem, avaliador) VALUES (5.5, 5.0, 5.2, 5.3, 5.6, 5.4, 5.1, '2');
INSERT INTO notas (oralidade, postura, organizacao, criatividade, capricho, dominio, abordagem, avaliador) VALUES (6.7, 6.5, 6.9, 6.8, 7.0, 6.6, 6.9, '1');
INSERT INTO notas (oralidade, postura, organizacao, criatividade, capricho, dominio, abordagem, avaliador) VALUES (8.8, 8.9, 9.0, 9.1, 8.7, 9.0, 8.9, '2');
INSERT INTO notas (oralidade, postura, organizacao, criatividade, capricho, dominio, abordagem, avaliador) VALUES (7.9, 7.8, 7.5, 8.0, 7.6, 7.7, 7.9, '1');
INSERT INTO notas (oralidade, postura, organizacao, criatividade, capricho, dominio, abordagem, avaliador) VALUES (6.0, 6.2, 6.4, 6.3, 6.1, 6.0, 6.2, '2');
INSERT INTO notas (oralidade, postura, organizacao, criatividade, capricho, dominio, abordagem, avaliador) VALUES (9.3, 9.2, 9.4, 9.5, 9.1, 9.2, 9.3, '1');
INSERT INTO notas (oralidade, postura, organizacao, criatividade, capricho, dominio, abordagem, avaliador) VALUES (4.5, 4.8, 4.7, 4.9, 5.0, 4.6, 4.8, '2');
INSERT INTO notas (oralidade, postura, organizacao, criatividade, capricho, dominio, abordagem, avaliador) VALUES (7.0, 7.1, 7.3, 7.4, 7.2, 7.5, 7.1, '1');
INSERT INTO notas (oralidade, postura, organizacao, criatividade, capricho, dominio, abordagem, avaliador) VALUES (8.2, 8.1, 8.3, 8.0, 8.4, 8.2, 8.1, '2');
INSERT INTO notas (oralidade, postura, organizacao, criatividade, capricho, dominio, abordagem, avaliador) VALUES (6.8, 6.7, 6.9, 7.0, 6.6, 6.8, 6.7, '1');
INSERT INTO notas (oralidade, postura, organizacao, criatividade, capricho, dominio, abordagem, avaliador) VALUES (5.9, 5.8, 5.7, 5.6, 5.5, 5.9, 5.8, '2');
INSERT INTO notas (oralidade, postura, organizacao, criatividade, capricho, dominio, abordagem, avaliador) VALUES (9.4, 9.3, 9.2, 9.5, 9.6, 9.4, 9.5, '1');
INSERT INTO notas (oralidade, postura, organizacao, criatividade, capricho, dominio, abordagem, avaliador) VALUES (6.3, 6.4, 6.2, 6.5, 6.1, 6.3, 6.4, '2');


SELECT id_notas, oralidade, postura, organizacao, criatividade, capricho, dominio, abordagem,
       ROUND((oralidade + postura + organizacao + criatividade + capricho + dominio + abordagem)/7, 1) AS media,
       avaliador
FROM notas;