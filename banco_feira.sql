-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Jul-2025 às 17:19
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
  `nome_aluno` varchar(255) NOT NULL,
  `rm` int(11) DEFAULT NULL,
  `email_institucional` varchar(255) DEFAULT NULL,
  `disponivel` tinyint(1) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`id_aluno`, `nome_aluno`, `rm`, `email_institucional`, `disponivel`, `senha`) VALUES
('1A_01', 'ALYNE MENDES SILVA', 25423, 'alyne.silva16@etec.sp.gov.br', 1, NULL),
('1A_02', 'AMANDA DEL GIUDICI SILVA', 25694, 'amanda.silva2106@etec.sp.gov.br', 1, NULL),
('1A_03', 'ANA CAROLINA SILVA MENDES', 25697, 'ana.mendes170@etec.sp.gov.br', 1, NULL),
('1A_04', 'ANA JULIA CREPALDI AVILA', 25452, 'ana.avila15@etec.sp.gov.br', 1, NULL),
('1A_05', 'ANNA JULIA SILVA OLIVEIRA', 25631, 'anna.oliveira146@etec.sp.gov.br', 1, NULL),
('1A_06', 'ARTHUR COSTA RIBEIRO', 25048, 'arthur.ribeiro40@etec.sp.gov.br', 1, NULL),
('1A_07', 'ARTHUR DE JESUS MACHADO', 25716, 'arthur.machado17@etec.sp.gov.br', 1, NULL),
('1A_08', 'CLARISSE FRANÇA NERY', 25413, 'clarisse.nery@etec.sp.gov.br', 1, NULL),
('1A_09', 'DAVI ABREU GARCIA', 25703, 'davi.garcia16@etec.sp.gov.br', 1, NULL),
('1A_10', 'DAVI ALVES MORAES', 25447, 'davi.moraes8@etec.sp.gov.br', 1, NULL),
('1A_11', 'DAVI GUILHERME BREYER MOTA', 25055, 'davi.mota11@etec.sp.gov.br', 1, NULL),
('1A_12', 'EDUARDA FRANCINI DE OLIVEIRA', 25410, 'eduarda.oliveira131@etec.sp.gov.br', 1, NULL),
('1A_13', 'ELOÁ BARROS PRADO', 25408, 'eloa.prado01@etec.sp.gov.br', 1, NULL),
('1A_14', 'ERIC SOUZA TORRES', 25615, 'eric.torres@etec.sp.gov.br', 1, NULL),
('1A_15', 'GABRIELA VITÓRIA TAGLIARI DA CRUZ OLIVEIRA', 25648, 'gabriela.oliveira734@etec.sp.gov.br', 1, NULL),
('1A_16', 'GIOVANNA KAORU TAGA DA CRUZ', 25409, 'giovanna.cruz35@etec.sp.gov.br', 1, NULL),
('1A_17', 'GRAZIELA MENDES DE ARAÚJO', 25674, 'graziela.araujo4@etec.sp.gov.br', 1, NULL),
('1A_18', 'GUSTAVO OLIVEIRA', 25248, 'gustavo.oliveira1034@etec.sp.gov.br', 1, NULL),
('1A_19', 'HELLOISA SOARES TOMAZ', 25043, 'helloisa.tomaz@etec.sp.gov.br', 1, NULL),
('1A_20', 'ISABELLI PACHECO SANTOS OLIVEIRA', 25201, 'isabelli.oliveira14@etec.sp.gov.br', 1, NULL),
('1A_21', 'ISADORA NEGRAES DO NASCIMENTO VIEIRA', 25046, 'isadora.vieira13@etec.sp.gov.br', 1, NULL),
('1A_22', 'IVAN FERNANDO MANTOVAN', 25224, 'ivan.mantovan@etec.sp.gov.br', 1, NULL),
('1A_23', 'JOAO PEDRO DIAS DE CAMARGO', 25005, 'joao.camargo115@etec.sp.gov.br', 1, NULL),
('1A_24', 'JULIA DA COSTA BORBA', 25223, 'julia.borba3@etec.sp.gov.br', 1, NULL),
('1A_25', 'KAUÃ LINS NUNES LAURENTINO', 25602, 'kaua.laurentino@etec.sp.gov.br', 1, NULL),
('1A_26', 'LAIS ALVES FERNANDES', 25039, 'lais.fernandes9@etec.sp.gov.br', 1, NULL),
('1A_27', 'LAURA RODRIGUES DIAS', 25029, 'laura.dias29@etec.sp.gov.br', 1, NULL),
('1A_28', 'LUIS ANTONIO DOS SANTOS SILVA', 25420, 'luis.antonio13@etec.sp.gov.br', 1, NULL),
('1A_29', 'MARCELO FONTANA COPOLA SAMPAIO', 25628, 'marcelo.sampaio2@etec.sp.gov.br', 1, NULL),
('1A_30', 'MARIA ANY ROCHA PEREIRA', 25007, 'maria.pereira821@etec.sp.gov.br', 1, NULL),
('1A_31', 'MARIA EDUARDA LOPES CARDOSO', 25437, 'maria.cardoso183@etec.sp.gov.br', 1, NULL),
('1A_32', 'MIGUEL ARAUJO DOS SANTOS', 25205, 'miguel.santos200@etec.sp.gov.br', 1, NULL),
('1A_33', 'PEDRO HENRIQUE DE SA', 25208, 'pedro.sa9@etec.sp.gov.br', 1, NULL),
('1A_34', 'PRISCILA PANZARIN DOS SANTOS', 25621, 'priscila.santos511@etec.sp.gov.br', 1, NULL),
('1A_35', 'RAFAEL PACHECO KELLES', 25630, 'rafael.kelles@etec.sp.gov.br', 1, NULL),
('1A_36', 'RENAN RODRIGUES OLIVEIRA', 25239, 'renan.oliveira369@etec.sp.gov.br', 1, NULL),
('1A_37', 'RYAN DOS ANJOS SANTOS', 25006, 'ryan.santos149@etec.sp.gov.br', 1, NULL),
('1A_38', 'VINICIUS AUGUSTO PROFETA DA SILVA', 25636, 'vinicius.silva2206@etec.sp.gov.br', 1, NULL),
('1A_39', 'VINICIUS RODRIGUES SOARES', 25407, 'vinicius.soares109@etec.sp.gov.br', 1, NULL),
('1A_40', 'YASMIN RAMOS SOUZA FAGUNDES', 25203, 'yasmin.fagundes@etec.sp.gov.br', 1, NULL),
('1B_01', 'ALICIA APARECIDA VIEIRA DA SILVA', 25017, 'alicia.silva46@etec.sp.gov.br', 1, NULL),
('1B_02', 'ANA CLARA BEATRIZ DOS ANJOS', 25435, 'ana.anjos63@etec.sp.gov.br', 1, NULL),
('1B_03', 'ANA LUIZA DOS SANTOS COSTA', 25687, 'ana.costa663@etec.sp.gov.br', 1, NULL),
('1B_04', 'ANNA BEATRIZ CAMARGOS DE SOUSA', 25455, 'anna.sousa29@etec.sp.gov.br', 1, NULL),
('1B_05', 'ELISA SILVA AMARAL', 25424, 'elisa.amaral@etec.sp.gov.br', 1, NULL),
('1B_06', 'FELIPE HONORIO SOVENHI', 25458, 'felipe.sovenhi@etec.sp.gov.br', 1, NULL),
('1B_07', 'FLAVIA DUTRA NUNES SANCHEZ', 25434, 'flavia.sanchez@etec.sp.gov.br', 1, NULL),
('1B_08', 'FRED HENRIQUE SATURNINO KLIMECK FILHO', 25679, 'fred.klimeck@etec.sp.gov.br', 1, NULL),
('1B_09', 'GABRIELA CARVALHO REIS', 25406, 'gabriela.reis65@etec.sp.gov.br', 1, NULL),
('1B_10', 'GUSTAVO CUNHA SILVA', 25463, 'gustavo.silva2430@etec.sp.gov.br', 1, NULL),
('1B_11', 'HELOÁ FREITAS SANTOS', 25609, 'heloa.santos13@etec.sp.gov.br', 1, NULL),
('1B_12', 'HELOISA MARIANO DA SILVA', 25472, 'heloisa.silva301@etec.sp.gov.br', 1, NULL),
('1B_13', 'JOAO GABRIEL DO VALE', 25404, 'joao.vale3@etec.sp.gov.br', 1, NULL),
('1B_14', 'JOÃO PEDRO LIMA VEGA', 25698, 'joao.vega@etec.sp.gov.br', 1, NULL),
('1B_15', 'JUAN MESQUITA SILVA', 25702, 'juan.silva155@etec.sp.gov.br', 1, NULL),
('1B_16', 'JULIA DE ALCANTARA CAMARA', 25607, 'julia.camara@etec.sp.gov.br', 1, NULL),
('1B_17', 'JULIA DE LIMA PEGUIN', 25047, 'julia.peguin@etec.sp.gov.br', 1, NULL),
('1B_18', 'JULIA GABRIELLE SOUZA DA FONSECA', 25425, 'julia.fonseca19@etec.sp.gov.br', 1, NULL),
('1B_19', 'LAVINIA ESTER DA SILVA VELOSO', 25002, 'lavinia.veloso01@etec.sp.gov.br', 1, NULL),
('1B_20', 'LAYS ALVES DE SOUZA FERREIRA', 25431, 'lays.ferreira3@etec.sp.gov.br', 1, NULL),
('1B_21', 'LEONARDO CORREA LIMA', 25003, 'leonardo.lima285@etec.sp.gov.br', 1, NULL),
('1B_22', 'LETÍCIA QUEIROZ DE SOUSA', 25402, 'leticia.sousa129@etec.sp.gov.br', 1, NULL),
('1B_23', 'LORENA VICENTE PEREIRA', 25684, 'lorena.pereira46@etec.sp.gov.br', 1, NULL),
('1B_24', 'LORRANIE BRAITE ZANLUCHI AMARANTE', 25695, 'lorranie.amarante@etec.sp.gov.br', 1, NULL),
('1B_25', 'MARIA ALANA MORAES DE OLIVEIRA', 25468, 'maria.oliveira2188@etec.sp.gov.br', 1, NULL),
('1B_26', 'MARIA FERNANDA RODRIGUEZ SILVA', 25635, 'maria.silva5772@etec.sp.gov.br', 1, NULL),
('1B_27', 'MARIANA SILVA LEMOS', 25024, 'mariana.lemos5@etec.sp.gov.br', 1, NULL),
('1B_28', 'MARJORIE NASCIMENTO DE OLIVEIRA', 25052, 'marjorie.oliveira6@etec.sp.gov.br', 1, NULL),
('1B_29', 'MIGUEL RAMOS DA CRUZ', 25713, 'miguel.cruz20@etec.sp.gov.br', 1, NULL),
('1B_30', 'NICOLE BRITO DOS SANTOS', 25232, 'nicole.santos201@etec.sp.gov.br', 1, NULL),
('1B_31', 'PABLO RIQUELME PEREIRA ALMEIDA', 25707, 'pablo.almeida33@etec.sp.gov.br', 1, NULL),
('1B_32', 'PEDRO HENRIQUE QUEIROZ DOS SANTOS', 25470, 'pedro.santos1260@etec.sp.gov.br', 1, NULL),
('1B_33', 'RAFAELLA SILVA DE PINHO ARAUJO', 25211, 'rafaella.araujo14@etec.sp.gov.br', 1, NULL),
('1B_34', 'RAYANE SANTOS DA SILVA', 25215, 'rayane.silva153@etec.sp.gov.br', 1, NULL),
('1B_35', 'REBECA VIEIRA RUAS BARBOSA', 25709, 'rebeca.barbosa19@etec.sp.gov.br', 1, NULL),
('1B_36', 'SARAH BEATRIZ DE ALMEIDA FONSECA', 25450, 'sarah.fonseca5@etec.sp.gov.br', 1, NULL),
('1B_37', 'STEPHANY CALAZANS SANTANA', 25231, 'stephany.santana10@etec.sp.gov.br', 1, NULL),
('1B_38', 'THALIA ARIADNE ALVES DA SILVA', 25616, 'thalia.silva90@etec.sp.gov.br', 1, NULL),
('1B_39', 'VITÓRIA BEATRIZ DE SOUZA', 25056, 'vitoria.souza336@etec.sp.gov.br', 1, NULL),
('1C_01', 'APOLO MORENO DE SOUZA', 25638, 'apolo.souza@etec.sp.gov.br', 1, NULL),
('1C_02', 'ARTHUR FRANCO DOS SANTOS', 25683, 'arthur.santos339@etec.sp.gov.br', 1, NULL),
('1C_03', 'ARTHUR HAMILTON MOREIRA GOMES', 25222, 'arthur.gomes31@etec.sp.gov.br', 1, NULL),
('1C_04', 'ARTHUR PEREIRA DE ALMEIDA CAMPOS', 25209, 'arthur.campos9@etec.sp.gov.br', 1, NULL),
('1C_05', 'ARTUR MIGUEL PRA LAURENTINO', 25036, 'artur.laurentino@etec.sp.gov.br', 1, NULL),
('1C_06', 'BEATRIZ DE PAULA VACA', 25206, 'beatriz.vaca@etec.sp.gov.br', 1, NULL),
('1C_07', 'BERNARDO ANTUNES DE QUEIROZ', 25623, 'bernardo.queiroz@etec.sp.gov.br', 1, NULL),
('1C_08', 'BRAYAN MENDES BARROS', 25226, 'brayan.barros@etec.sp.gov.br', 1, NULL),
('1C_09', 'BRUNO FERREIRA DOS SANTOS', 25426, 'bruno.santos1454@etec.sp.gov.br', 1, NULL),
('1C_10', 'GIOVANNI HENRIQUE EVANGELISTA ESTEVAM', 25604, 'giovanni.estevam01@etec.sp.gov.br', 1, NULL),
('1C_11', 'GUSTAVO FONTES MAZZA SILVA', 25244, 'gustavo.silva2432@etec.sp.gov.br', 1, NULL),
('1C_12', 'HENRIQUE ARAUJO BATISTA', 25625, 'henrique.batista34@etec.sp.gov.br', 1, NULL),
('1C_13', 'IAGO GARCIA DA SILVA', 25718, 'iago.silva124@etec.sp.gov.br', 1, NULL),
('1C_14', 'ISABELLA TEIXEIRA DA SILVA', 25023, 'isabella.silva613@etec.sp.gov.br', 1, NULL),
('1C_15', 'ISABELLY BALDUINO SILVA', 25405, 'isabelly.silva234@etec.sp.gov.br', 1, NULL),
('1C_16', 'JOÃO PEDRO MIRANDA SANTOS', 25603, 'joao.santos2320@etec.sp.gov.br', 1, NULL),
('1C_17', 'JOSE MATEUS RAMALHO DE SOUSA', 25624, 'jose.sousa194@etec.sp.gov.br', 1, NULL),
('1C_18', 'KAUA FERNANDES CARVALHO', 25477, 'kaua.carvalho13@etec.sp.gov.br', 1, NULL),
('1C_19', 'LAURA OLIVEIRA REIS', 25438, 'laura.reis18@etec.sp.gov.br', 1, NULL),
('1C_20', 'LIVIA MARIA DE ARAUJO ALVES', 25680, 'livia.alves38@etec.sp.gov.br', 1, NULL),
('1C_21', 'LUCAS HONORATO PEREIRA', 25018, 'lucas.pereira651@etec.sp.gov.br', 1, NULL),
('1C_22', 'LUIZA GOMES DOS SANTOS CANDIDO', 25701, 'luiza.candido@etec.sp.gov.br', 1, NULL),
('1C_23', 'MARIA EDUARDA DOS SANTOS DE SOUZA', 25462, 'maria.souza1511@etec.sp.gov.br', 1, NULL),
('1C_24', 'MARIANA DE COUTO ANTUNES SILVA', 25009, 'mariana.silva1498@etec.sp.gov.br', 1, NULL),
('1C_25', 'MATHEUS HENRIQUE SILVA FABRI', 25030, 'matheus.fabri5@etec.sp.gov.br', 1, NULL),
('1C_26', 'MATHEUS TORRES BETEGA', 25614, 'matheus.betega@etec.sp.gov.br', 1, NULL),
('1C_27', 'OTÁVIO SANCHES CARVALHO', 25464, 'otavio.carvalho25@etec.sp.gov.br', 1, NULL),
('1C_28', 'PABLO DE SOUZA GOMES', 25010, 'pablo.gomes25@etec.sp.gov.br', 1, NULL),
('1C_29', 'PEDRO HENRIQUE DUARTE SIQUEIRA', 25415, 'pedro.siqueira48@etec.sp.gov.br', 1, NULL),
('1C_30', 'PIETRO ANDRADE DOS SANTOS', 25719, 'pietro.santos37@etec.sp.gov.br', 1, NULL),
('1C_31', 'PIETRO RODRIGUES CUNHA', 25040, 'pietro.cunha01@etec.sp.gov.br', 1, NULL),
('1C_32', 'RAFAEL COSTA DE LIMA', 25454, 'rafael.lima380@etec.sp.gov.br', 1, NULL),
('1C_33', 'RAFAEL RAMOS ARAUJO', 24137, 'rafael.araujo198@etec.sp.gov.br', 1, NULL),
('1C_34', 'ROBSON CARDOSO CORRÊA DE SOUZA', 25459, 'robson.souza100@etec.sp.gov.br', 1, NULL),
('1C_35', 'SAMIR SIMON ABDALLAH ABDUL NOUR', 25605, 'samir.nour@etec.sp.gov.br', 1, NULL),
('1C_36', 'VINICIUS SAKAE VICENTINI', 25243, 'vinicius.vicentini@etec.sp.gov.br', 1, NULL),
('1C_37', 'VITORIA MOREIRA PIRES', 25669, 'vitoria.pires@etec.sp.gov.br', 1, NULL),
('1C_38', 'YASMIN CARVALHO BRAGA', 25449, 'yasmin.braga4@etec.sp.gov.br', 1, NULL),
('1D_01', 'ALLAN GIULIO GOBO PEREIRA MARTIMIANO', 25228, 'allan.martimiano@etec.sp.gov.br', 1, NULL),
('1D_02', 'ANTONELLA MELISSA DA SILVA FERREIRA', 25475, 'antonella.ferreira@etec.sp.gov.br', 1, NULL),
('1D_03', 'BRENDA EDUARDA VENTURA', 24330, 'brenda.ventura@etec.sp.gov.br', 1, NULL),
('1D_04', 'BRUNA FRANCIELLY DOS SANTOS', 25650, 'bruna.santos1327@etec.sp.gov.br', 1, NULL),
('1D_05', 'DANIEL CARVALHO LOPES', 25622, 'daniel.lopes55@etec.sp.gov.br', 1, NULL),
('1D_06', 'ELISEU ARAUJO SOUZA', 25436, 'eliseu.souza3@etec.sp.gov.br', 1, NULL),
('1D_07', 'EMERSON DA SILVA JUNIOR', 25617, 'emerson.silva514@etec.sp.gov.br', 1, NULL),
('1D_08', 'FELIPE DE SOUSA SANTOS', 25658, 'felipe.santos1590@etec.sp.gov.br', 1, NULL),
('1D_09', 'FELIPE ROCHA PAROLINE', 25691, 'felipe.paroline@etec.sp.gov.br', 1, NULL),
('1D_10', 'FERNANDA ROSELI DA SILVA DIAS', 25660, 'fernanda.dias85@etec.sp.gov.br', 1, NULL),
('1D_11', 'GABRIEL COSTA RIBEIRO', 25657, 'gabriel.ribeiro338@etec.sp.gov.br', 1, NULL),
('1D_12', 'GABRIEL FERNANDO RODRIGUES DE SOUZA', 25637, 'gabriel.souza1092@etec.sp.gov.br', 1, NULL),
('1D_13', 'GLEICE DE PAULA SANTOS ALVES', 25448, 'gleice.alves2@etec.sp.gov.br', 1, NULL),
('1D_14', 'GUSTAVO ALEXANDRE MARCELINO MODESTO SEBASTIÃO', 25216, 'gustavo.sebastiao2@etec.sp.gov.br', 1, NULL),
('1D_15', 'GUSTAVO EDUARDO ZIMERMAN DA SILVA', 25060, 'gustavo.silva2441@etec.sp.gov.br', 1, NULL),
('1D_16', 'HEITOR SOUZA ANDRADE', 24400, 'heitor.andrade6@etec.sp.gov.br', 1, NULL),
('1D_17', 'ISABELE CARVALHO VALDEVINO', 25643, 'isabele.valdevino@etec.sp.gov.br', 1, NULL),
('1D_18', 'ISADORA GARCIA CASTILHO', 25429, 'isadora.castilho@etec.sp.gov.br', 1, NULL),
('1D_19', 'ÍTALO MATHEUS NUNES MELLO', 25451, 'italo.mello@etec.sp.gov.br', 1, NULL),
('1D_20', 'JADY BUENO DE OLIVEIRA', 24111, 'jady.oliveira2@etec.sp.gov.br', 1, NULL),
('1D_21', 'JUAN DIAS DA ROCHA SANTOS', 24068, 'juan.santos108@etec.sp.gov.br', 1, NULL),
('1D_22', 'JULIA DA SILVA BESERRA', 25220, 'julia.beserra3@etec.sp.gov.br', 1, NULL),
('1D_23', 'JÚLIA MENDES LINS', 25035, 'julia.lins7@etec.sp.gov.br', 1, NULL),
('1D_24', 'JÚLIA PIETRA DA SILVA MOTA', 25608, 'julia.mota10@etec.sp.gov.br', 1, NULL),
('1D_25', 'JÚLIA SANTOS DE SOUZA', 25212, 'julia.souza480@etec.sp.gov.br', 1, NULL),
('1D_26', 'LARISSA DA SILVA BENYHE', 25653, 'larissa.benyhe@etec.sp.gov.br', 1, NULL),
('1D_27', 'LAURA ALVES DE LIMA', 22059, 'laura.lima70@etec.sp.gov.br', 1, NULL),
('1D_28', 'LETÍCIA CAMILLY RIBEIRO', 25692, 'leticia.ribeiro167@etec.sp.gov.br', 1, NULL),
('1D_29', 'LINCOLN MANTOVANI ADRIANO', 25641, 'lincoln.adriano@etec.sp.gov.br', 1, NULL),
('1D_30', 'MARIA FERNANDA BARRETO CARTURA', 25633, 'maria.cartura@etec.sp.gov.br', 1, NULL),
('1D_31', 'MARIANY SULLIVAN DA SILVA', 24218, 'mariany.silva8@etec.sp.gov.br', 1, NULL),
('1D_32', 'NATHÁLIA RODRIGUES GUILHERMINO', 25610, 'nathalia.guilhermino@etec.sp.gov.br', 1, NULL),
('1D_33', 'NICOLAS CIRILO DE PAULA', 25031, 'nicolas.cirilo@etec.sp.gov.br', 1, NULL),
('1D_34', 'PEDRO HENRIQUE DE SIQUEIRA GALVÃO', 25689, 'pedro.galvao11@etec.sp.gov.br', 1, NULL),
('1D_35', 'PEDRO HENRIQUE MALDONADO DE OLIVEIRA SILVA', 25054, 'pedro.silva2117@etec.sp.gov.br', 1, NULL),
('1D_36', 'RAISSA ESTER DA SILVA OLIVEIRA', 25233, 'raissa.oliveira102@etec.sp.gov.br', 1, NULL),
('1D_37', 'WESLLEY ALBUQUERQUE DE FREITAS', 25661, 'weslley.freitas3@etec.sp.gov.br', 1, NULL),
('1F_01', 'ALANA FIORELINI', 25443, 'alana.fiorelini@etec.sp.gov.br', 1, NULL),
('1F_02', 'ALEXSANDRO CORREA MIRANDA', 25430, 'alexsandro.miranda@etec.sp.gov.br', 1, NULL),
('1F_03', 'ARTUR DAVID CHAGAS AGUIAR', 25478, 'artur.aguiar01@etec.sp.gov.br', 1, NULL),
('1F_04', 'BEATRIZ VITORIA DE OLIVEIRA ALENCAR', 25474, 'beatriz.alencar2@etec.sp.gov.br', 1, NULL),
('1F_05', 'BRUNO MIGUEL AFFONSO SILVA', 25419, 'bruno.silva2448@etec.sp.gov.br', 1, NULL),
('1F_06', 'CAUÊ ISHIKI DE JESUS BERNARDO', 25696, 'caue.bernardo@etec.sp.gov.br', 1, NULL),
('1F_07', 'CINDY CASTRO DE PAULA', 25699, 'cindy.paula2@etec.sp.gov.br', 1, NULL),
('1F_08', 'DANILO SANTOS MARTINS', 25403, 'danilo.martins57@etec.sp.gov.br', 1, NULL),
('1F_09', 'DAVI LUÍS FERNANDES DOS SANTOS', 25016, 'davi.santos308@etec.sp.gov.br', 1, NULL),
('1F_10', 'DAVY DE ARAÚJO SILVA', 25469, 'davy.silva3@etec.sp.gov.br', 1, NULL),
('1F_11', 'EDUARDO LEMES DE SOUZA LUCIANO', 25012, 'eduardo.luciano2@etec.sp.gov.br', 1, NULL),
('1F_12', 'ELOÍSA MENDES NUNES', 25427, 'eloisa.nunes5@etec.sp.gov.br', 1, NULL),
('1F_13', 'EMANUEL DA SILVA PROSPERO', 25246, 'emanuel.prospero@etec.sp.gov.br', 1, NULL),
('1F_14', 'EMILLY JAQUELINI CAMPOS DE OLIVEIRA', 25412, 'emilly.oliveira101@etec.sp.gov.br', 1, NULL),
('1F_15', 'FLAVIO GUSTAVO NOIM DE SANTANA', 25613, 'flavio.santana01@etec.sp.gov.br', 1, NULL),
('1F_16', 'GUILHERME DE MORAES SILVA', 25041, 'guilherme.silva2847@etec.sp.gov.br', 1, NULL),
('1F_17', 'GUSTAVO NUNES FERREIRA', 25213, 'gustavo.ferreira306@etec.sp.gov.br', 1, NULL),
('1F_18', 'GUSTAVO VIEIRA LIMA', 25204, 'gustavo.lima362@etec.sp.gov.br', 1, NULL),
('1F_19', 'HENRIQUE ZARATINE PEREIRA', 25682, 'henrique.pereira116@etec.sp.gov.br', 1, NULL),
('1F_20', 'JEFFERSON ANGHINONI ROSA', 25704, 'jefferson.rosa@etec.sp.gov.br', 1, NULL),
('1F_21', 'JHEAN SANTANA DE MIRANDA', 25417, 'jhean.miranda@etec.sp.gov.br', 1, NULL),
('1F_22', 'JOÃO PEDRO RONCHI GABINI', 25013, 'joao.gabini@etec.sp.gov.br', 1, NULL),
('1F_23', 'JULIA APARECIDA BANDEIRA RUDEL', 25460, 'julia.rudel@etec.sp.gov.br', 1, NULL),
('1F_24', 'JULIANA CORREIA BARBOSA', 25428, 'juliana.barbosa92@etec.sp.gov.br', 1, NULL),
('1F_25', 'KAIQUE CARMO SILVA', 25715, 'kaique.silva364@etec.sp.gov.br', 1, NULL),
('1F_26', 'KAUÃ FREIRE DO NASCIMENTO', 25240, 'kaua.nascimento23@etec.sp.gov.br', 1, NULL),
('1F_27', 'LEONARDO AJALA CORREIA', 25411, 'leonardo.correia24@etec.sp.gov.br', 1, NULL),
('1F_28', 'LUCAS BELLATO DE FREITAS', 25476, 'lucas.freitas226@etec.sp.gov.br', 1, NULL),
('1F_29', 'LUCAS MARTINS PIRES', 25640, 'lucas.pires58@etec.sp.gov.br', 1, NULL),
('1F_30', 'MARIA EDUARDA ANTONIO COUTO SILVA', 25461, 'maria.silva5881@etec.sp.gov.br', 1, NULL),
('1F_31', 'MARIANA AYA HANGAI', 25418, 'mariana.hangai@etec.sp.gov.br', 1, NULL),
('1F_32', 'MATHEUS GOMES RODRIGUES', 25014, 'matheus.rodrigues335@etec.sp.gov.br', 1, NULL),
('1F_33', 'MATHEUS HENRIQUE MOLON', 25241, 'matheus.molon@etec.sp.gov.br', 1, NULL),
('1F_34', 'MIGUEL SOUZA ALMEIDA', 25439, 'miguel.almeida20@etec.sp.gov.br', 1, NULL),
('1F_35', 'PEDRO SACHETTO DE MORAES', 25242, 'pedro.moraes81@etec.sp.gov.br', 1, NULL),
('1F_36', 'PIETRO CARVALHO BUENO', 25465, 'pietro.bueno@etec.sp.gov.br', 1, NULL),
('1F_37', 'RAFAEL TEIXEIRA DE MOURA JÚNIOR', 25612, 'rafael.moura54@etec.sp.gov.br', 1, NULL),
('1F_38', 'RAPHAEL FERREIRA DOS SANTOS', 25210, 'raphael.santos201@etec.sp.gov.br', 1, NULL),
('1F_39', 'REBECA SANTOS SILVA', 25229, 'rebeca.silva318@etec.sp.gov.br', 1, NULL),
('1F_40', 'VICTORIA AMERICO NUNES', 25025, 'victoria.nunes15@etec.sp.gov.br', 1, NULL),
('1H_01', 'ALEXSANDRA LOPES BARREIRO DA SILVA', 25656, 'alexsandra.silva37@etec.sp.gov.br', 1, NULL),
('1H_02', 'AMANDA TORRES OLIVEIRA', 24196, 'amanda.oliveira764@etec.sp.gov.br', 1, NULL),
('1H_03', 'ANTONIO ROBERTO RIBEIRO DOS SANTOS JUNIOR', 25457, 'antonio.santos452@etec.sp.gov.br', 1, NULL),
('1H_04', 'CAIO CARVALHO DE SOUZA', 25059, 'caio.souza313@etec.sp.gov.br', 1, NULL),
('1H_05', 'CAMILLE HENRIQUE TOMAZ', 25688, 'camille.tomaz@etec.sp.gov.br', 1, NULL),
('1H_06', 'DEUZIVAN PEDRO DA SILVA', 25651, 'deuzivan.silva@etec.sp.gov.br', 1, NULL),
('1H_07', 'EDUARDO BORGES COSTA', 25618, 'eduardo.costa134@etec.sp.gov.br', 1, NULL),
('1H_08', 'EMANOELY LORENA MARTINS XAVIER', 25219, 'emanoely.xavier@etec.sp.gov.br', 1, NULL),
('1H_09', 'GABRIEL BRAGA DA SILVA', 25235, 'gabriel.silva3211@etec.sp.gov.br', 1, NULL),
('1H_10', 'GABRIEL MOLINARIO DOS SANTOS', 25655, 'gabriel.santos2511@etec.sp.gov.br', 1, NULL),
('1H_11', 'GABRIEL OLIVEIRA MARCAL DE SOUZA', 25606, 'gabriel.souza897@etec.sp.gov.br', 1, NULL),
('1H_12', 'GIOVANA SOUZA SILVA', 23344, 'giovana.silva466@etec.sp.gov.br', 1, NULL),
('1H_13', 'GUSTAVO ARAUJO ZULATO DE OLIVEIRA', 25444, 'gustavo.oliveira1014@etec.sp.gov.br', 1, NULL),
('1H_14', 'HIGOR MATOS DA SILVA', 25037, 'higor.silva220@etec.sp.gov.br', 1, NULL),
('1H_15', 'IGOR DE SOUZA CABRAL', 25611, 'igor.cabral01@etec.sp.gov.br', 1, NULL),
('1H_16', 'ISAAC JUNIOR MARQUES DE LIMA', 25693, 'isaac.lima13@etec.sp.gov.br', 1, NULL),
('1H_17', 'ISABELA MORAIS ALVES', 25441, 'isabela.alves72@etec.sp.gov.br', 1, NULL),
('1H_18', 'ISABELLE OIKAWA PELEGRINO CARLOS', 25432, 'isabelle.carlos@etec.sp.gov.br', 1, NULL),
('1H_19', 'ISIS VALENTINA DE OLIVEIRA', 25218, 'isis.oliveira42@etec.sp.gov.br', 1, NULL),
('1H_20', 'JACSON RIBEIRO BARROS', 25446, 'jacson.souza@etec.sp.gov.br', 1, NULL),
('1H_21', 'JOÃO GABRIEL TENÓRIO SILVA', 24199, 'joao.silva3828@etec.sp.gov.br', 1, NULL),
('1H_22', 'JOAQUIM LUIZ SALES CONDÉ', 25686, 'joaquim.conde@etec.sp.gov.br', 1, NULL),
('1H_23', 'LAURA RODRIGUES AIRES', 25626, 'laura.aires@etec.sp.gov.br', 1, NULL),
('1H_24', 'LAURA TRINDADE DA ROCHA', 25632, 'laura.rocha25@etec.sp.gov.br', 1, NULL),
('1H_25', 'MARIO GUILHERME MARTINELLI', 25453, 'mario.martinelli@etec.sp.gov.br', 1, NULL),
('1H_26', 'MATEUS DOS SANTOS ALMEIDA', 24181, 'mateus.almeida89@etec.sp.gov.br', 1, NULL),
('1H_27', 'PEDRO HENRIQUE RIGO SANTOS', 25433, 'pedro.santos1234@etec.sp.gov.br', 1, NULL),
('1H_28', 'RENAN EZEQUIEL GARCIA SANTOS', 25058, 'renan.santos514@etec.sp.gov.br', 1, NULL),
('1H_29', 'RODRIGO DOMINGUES DIAS', 25672, 'rodrigo.dias74@etec.sp.gov.br', 1, NULL),
('1H_30', 'SAMUEL HONORIO DA SILVA', 25202, 'samuel.silva813@etec.sp.gov.br', 1, NULL),
('1H_31', 'SÁRA STEFANIE FERREIRA CONCEIÇÃO CÂNDIDO', 25620, 'sara.candido2@etec.sp.gov.br', 1, NULL),
('1H_32', 'THIAGO PEREIRA DE JESUS', 25647, 'thiago.jesus60@etec.sp.gov.br', 1, NULL),
('1H_33', 'VICTOR RAFAEL FERREIRA COSTA', 25639, 'victor.costa153@etec.sp.gov.br', 1, NULL),
('1H_34', 'VINICIUS DE LUCA DA SILVA', 25654, 'vinicius.silva2254@etec.sp.gov.br', 1, NULL),
('1H_35', 'VITOR VINICIUS DA SILVA', 25238, 'vitor.silva1274@etec.sp.gov.br', 1, NULL),
('1H_36', 'VITÓRIA OLIVEIRA DA SILVA', 25247, 'vitoria.silva1328@etec.sp.gov.br', 1, NULL),
('1H_37', 'WALLACY VITOR DA SILVA COLHADO', 25644, 'wallacy.colhado@etec.sp.gov.br', 1, NULL),
('1I_01', 'ALLICIA DA SILVA OLIVEIRA', 25700, 'allicia.oliveira@etec.sp.gov.br', 1, NULL),
('1I_02', 'ANA LUIZA SANTOS DE PAULA', 25711, 'ana.paula181@etec.sp.gov.br', 1, NULL),
('1I_03', 'ANNA CAROLINA DE SOUZA VIEIRA', 25445, 'anna.vieira21@etec.sp.gov.br', 1, NULL),
('1I_04', 'ARTHURO MARTINS PEREIRA', 25022, 'arthuro.pereira@etec.sp.gov.br', 1, NULL),
('1I_05', 'AWDREY GUIMARAES FURST CAMARGO', 25685, 'awdrey.camargo@etec.sp.gov.br', 1, NULL),
('1I_06', 'BRENO GARCIA DO NASCIMENTO', 25705, 'breno.nascimento29@etec.sp.gov.br', 1, NULL),
('1I_07', 'ELOISA BARBOSA DE SOUZA', 25473, 'eloisa.souza12@etec.sp.gov.br', 1, NULL),
('1I_08', 'ELOISE SILVA LUZ', 25619, 'eloise.luz01@etec.sp.gov.br', 1, NULL),
('1I_09', 'EMANUELLE CAMPOS FELIX', 25020, 'emanuelle.felix@etec.sp.gov.br', 1, NULL),
('1I_10', 'GIOVANNA VITÓRIA DE SOUZA', 25467, 'giovanna.souza283@etec.sp.gov.br', 1, NULL),
('1I_11', 'GUSTAVO MACEDO TAVARES', 25245, 'gustavo.tavares27@etec.sp.gov.br', 1, NULL),
('1I_12', 'HELOISA IZIDORO DE BRITO', 25227, 'heloisa.brito4@etec.sp.gov.br', 1, NULL),
('1I_13', 'HELOÍSA TOLEDO DA SILVA', 25706, 'heloisa.silva313@etec.sp.gov.br', 1, NULL),
('1I_14', 'IASMIN DOS SANTOS SOUZA', 25033, 'iasmin.souza7@etec.sp.gov.br', 1, NULL),
('1I_15', 'ISABELA DE ALMEIDA', 25038, 'isabela.almeida90@etec.sp.gov.br', 1, NULL),
('1I_16', 'ISABELLY FERREIRA LINS', 25214, 'isabelly.lins01@etec.sp.gov.br', 1, NULL),
('1I_17', 'JULIA IESKI CONCEIÇÃO', 25717, 'julia.conceicao16@etec.sp.gov.br', 1, NULL),
('1I_18', 'JÚLIA MARCOS SENA', 25008, 'julia.sena9@etec.sp.gov.br', 1, NULL),
('1I_19', 'JULIA NEGREIROS', 25230, 'julia.negreiros01@etec.sp.gov.br', 1, NULL),
('1I_20', 'KALLYANE BEATRIZ MOTA DA SILVA', 25028, 'kallyane.silva@etec.sp.gov.br', 1, NULL),
('1I_21', 'KARINE DE OLIVEIRA TOMOCHIGUE', 25001, 'karine.tomochigue@etec.sp.gov.br', 1, NULL),
('1I_22', 'LARYSSA CAROLINE GUSTAVO COSTA', 25681, 'laryssa.costa4@etec.sp.gov.br', 1, NULL),
('1I_23', 'LAURA BEATRIZ FILOMENO SOUZA', 25710, 'laura.souza170@etec.sp.gov.br', 1, NULL),
('1I_24', 'LÍVIA LUIZ FERNANDES', 25004, 'livia.fernandes32@etec.sp.gov.br', 1, NULL),
('1I_25', 'LORENZO OLIVEIRA NEGRINI', 25440, 'lorenzo.negrini@etec.sp.gov.br', 1, NULL),
('1I_26', 'LUCAS NASCIMENTO LINO', 25032, 'lucas.lino01@etec.sp.gov.br', 1, NULL),
('1I_27', 'LUIZA SOARES RIDEL', 25051, 'luiza.ridel@etec.sp.gov.br', 1, NULL),
('1I_28', 'MANUELA FLORES SOBRAL VARGAS VIEIRA', 25027, 'manuela.vieira01@etec.sp.gov.br', 1, NULL),
('1I_29', 'MARIA EDUARDA SATURNINO DE MOURA', 25225, 'maria.moura179@etec.sp.gov.br', 1, NULL),
('1I_30', 'MARIA EDUARDA VIANA DA SILVA', 25714, 'maria.silva6045@etec.sp.gov.br', 1, NULL),
('1I_31', 'MATHEUS TONDATTO BATISTA', 25466, 'matheus.batista105@etec.sp.gov.br', 1, NULL),
('1I_32', 'MAYSA DA SILVA ALMEIDA', 25708, 'maysa.almeida4@etec.sp.gov.br', 1, NULL),
('1I_33', 'MIRELLA MACEDO DA SILVA', 25712, 'mirella.silva98@etec.sp.gov.br', 1, NULL),
('1I_34', 'PIETRO DE BARROS PAVARINI MELO', 25011, 'pietro.melo3@etec.sp.gov.br', 1, NULL),
('1I_35', 'RAQUEL OLIMPIO CACHEADO', 25026, 'raquel.cacheado@etec.sp.gov.br', 1, NULL),
('1I_36', 'RENATO GARCIA DOS SANTOS', 25050, 'renato.santos354@etec.sp.gov.br', 1, NULL),
('1I_37', 'STEFANY LANDIM FRANCISCO BATISTA', 25471, 'stefany.batista2@etec.sp.gov.br', 1, NULL),
('1I_38', 'VICTOR HENRIQUE PEREIRA DE PAULA', 25627, 'victor.paula39@etec.sp.gov.br', 1, NULL),
('1I_39', 'VICTORYA VIEIRA ESTEVES DUCLOS', 25053, 'victorya.duclos@etec.sp.gov.br', 1, NULL),
('1K_01', 'AMANDA GOMES TOLEDO', 25034, 'amanda.toledo13@etec.sp.gov.br', 1, NULL),
('1K_02', 'ANA CLARA GOMES DO NASCIMENTO', 25601, 'ana.nascimento533@etec.sp.gov.br', 1, NULL),
('1K_03', 'BRUNA YADHIRA SILVA RAMOS', 25642, 'bruna.ramos72@etec.sp.gov.br', 1, NULL),
('1K_04', 'DANIEL DE LIMA E SANTOS', 25044, 'daniel.santos861@etec.sp.gov.br', 1, NULL),
('1K_05', 'DANIEL SILVA COPPOLA', 25662, 'daniel.coppola@etec.sp.gov.br', 1, NULL),
('1K_06', 'DANILO DE MESQUITA BINDENELLI', 25659, 'danilo.bindenelli@etec.sp.gov.br', 1, NULL),
('1K_07', 'ELIZIANE MARIA MARTINS', 25671, 'eliziane.martins@etec.sp.gov.br', 1, NULL),
('1K_08', 'EMANUELLE FIGUEIREDO DOS SANTOS', 25666, 'emanuelle.santos65@etec.sp.gov.br', 1, NULL),
('1K_09', 'EVELYN BRITO CARVALHO', 22115, 'evelyn.carvalho10@etec.sp.gov.br', 1, NULL),
('1K_10', 'EVERSON MENDONCA DE OLIVEIRA', 25021, 'everson.oliveira24@etec.sp.gov.br', 1, NULL),
('1K_11', 'FABRICIO DOS SANTOS ORMENEZI', 25221, 'fabricio.ormenezi@etec.sp.gov.br', 1, NULL),
('1K_12', 'FELIPE ESTEVAN GILVES', 24309, 'felipe.gilves@etec.sp.gov.br', 1, NULL),
('1K_13', 'GIOVANNI FANTINATTI BARRETO', 25057, 'giovanni.barreto@etec.sp.gov.br', 1, NULL),
('1K_14', 'GUSTAVO DOS REIS MONDONI', 25664, 'gustavo.mondoni@etec.sp.gov.br', 1, NULL),
('1K_15', 'HADASSA MILLENA SILVA DOS SANTOS', 25652, 'hadassa.santos8@etec.sp.gov.br', 1, NULL),
('1K_16', 'JOHN MICHAEL GOMES DE SOUZA', 25675, 'john.souza9@etec.sp.gov.br', 1, NULL),
('1K_17', 'JONATHAN RIBEIRO DA CONCEICAO', 25634, 'jonathan.conceicao3@etec.sp.gov.br', 1, NULL),
('1K_18', 'JUAN BRYAN LIMA MARQUES', 25676, 'juan.marques3@etec.sp.gov.br', 1, NULL),
('1K_19', 'JULIANO CÉSAR BUGÉS', 25045, 'juliano.buges@etec.sp.gov.br', 1, NULL),
('1K_20', 'JÚNIOR DOS SANTOS LÁU', 25677, 'dos.lau@etec.sp.gov.br', 1, NULL),
('1K_21', 'KAYQUE MATHEUS SOUSA DOMICIANO', 25217, 'kayque.domiciano@etec.sp.gov.br', 1, NULL),
('1K_22', 'LEONARDO EGIDIO DA SILVA SOUZA', 25422, 'leonardo.souza530@etec.sp.gov.br', 1, NULL),
('1K_23', 'LORENA ZAMPOL SANDRIN', 25234, 'lorena.sandrin@etec.sp.gov.br', 1, NULL),
('1K_24', 'MARIA EDUARDA ARAUJO LANDIM', 25442, 'maria.landim01@etec.sp.gov.br', 1, NULL),
('1K_25', 'MARIA EDUARDA DOS SANTOS DE MELO FREITAS', 25421, 'maria.freitas241@etec.sp.gov.br', 1, NULL),
('1K_26', 'MATHEUS ALVES MIRANDA', 25237, 'matheus.miranda71@etec.sp.gov.br', 1, NULL),
('1K_27', 'MAURICIO ALVES DA SILVA', 25668, 'mauricio.silva314@etec.sp.gov.br', 1, NULL),
('1K_28', 'PEDRO HENRIQUE SOUZA DA CRUZ', 24234, 'pedro.cruz86@etec.sp.gov.br', 1, NULL),
('1K_29', 'VINÍCIUS MONTEIRO PELEGRINO CARLOS', 25207, 'vinicius.carlos@etec.sp.gov.br', 1, NULL),
('2A_01', 'ALINA AIKO OKUBO', 24281, 'alina.okubo@etec.sp.gov.br', 1, NULL),
('2A_02', 'AMANDA MENEZES HONORIO DA SILVA', 24129, 'amanda.silva2019@etec.sp.gov.br', 1, NULL),
('2A_03', 'AMANDA TORRES OLIVEIRA', 24196, 'amanda.oliveira764@etec.sp.gov.br', 1, NULL),
('2A_04', 'ANA PAULA MARTINELI', 24206, 'ana.martineli@etec.sp.gov.br', 1, NULL),
('2A_05', 'BEATRIZ DE MORAES BERTOLDO', 24468, 'beatriz.bertoldo@etec.sp.gov.br', 1, NULL),
('2A_06', 'CAUA DA SILVA SOARES', 24050, 'caua.soares3@etec.sp.gov.br', 1, NULL),
('2A_07', 'DANIELLY CRISTINA BARBOSA DOS ANJOS DIAS', 24231, 'danielly.dias4@etec.sp.gov.br', 1, NULL),
('2A_08', 'ELISA ASTOLPHO PINHEIRO RODRIGUES', 24069, 'elisa.rodrigues3@etec.sp.gov.br', 1, NULL),
('2A_09', 'EMANUELLE OLIVEIRA DA SILVA DE VITO', 24285, 'emanuelle.vito@etec.sp.gov.br', 1, NULL),
('2A_10', 'EMILIO GIAROLA LOPEZ', 24221, 'emilio.lopez@etec.sp.gov.br', 1, NULL),
('2A_11', 'GABRIEL KIHARA TOSSATO', 24201, 'gabriel.tossato@etec.sp.gov.br', 1, NULL),
('2A_12', 'GABRIELLY SOARES DE ANGELO', 24002, 'gabrielly.angelo@etec.sp.gov.br', 1, NULL),
('2A_13', 'GIOVANNA DE SOUZA ANTERO LOPES', 24419, 'giovanna.lopes43@etec.sp.gov.br', 1, NULL),
('2A_14', 'GREGORY ANTONY HAROUTIOUNIAN', 24104, 'gregory.haroutiounian@etec.sp.gov.br', 1, NULL),
('2A_15', 'HELOISA OLIVEIRA PEZZA', 24001, 'heloisa.pezza@etec.sp.gov.br', 1, NULL),
('2A_16', 'HENRIQUE TOMAZ DO CARMO', 24038, 'henrique.carmo01@etec.sp.gov.br', 1, NULL),
('2A_17', 'HEYTHOR DIAS NARCISO', 24115, 'heythor.narciso@etec.sp.gov.br', 1, NULL),
('2A_18', 'IZABELLI RIBEIRO PEREZ', 24242, 'izabelli.perez@etec.sp.gov.br', 1, NULL),
('2A_19', 'JOÃO GABRIEL TENÓRIO SILVA', 24199, 'joao.silva3828@etec.sp.gov.br', 1, NULL),
('2A_20', 'JULIA PACHECO DA SILVA', 24282, 'julia.silva1608@etec.sp.gov.br', 1, NULL),
('2A_21', 'JULIA RODRIGUES DE OLIVEIRA', 24213, 'julia.oliveira617@etec.sp.gov.br', 1, NULL),
('2A_22', 'JULIANA NAOMI ROGATTI', 24219, 'juliana.rogatti@etec.sp.gov.br', 1, NULL),
('2A_23', 'KAUAN SOUZA SANTOS', 24128, 'kauan.santos120@etec.sp.gov.br', 1, NULL),
('2A_24', 'KEVIN DA COSTA ASCENCO', 24265, 'kevin.ascenco@etec.sp.gov.br', 1, NULL),
('2A_25', 'LEONARDO CAVALHIER SOARES', 24059, 'leonardo.soares74@etec.sp.gov.br', 1, NULL),
('2A_26', 'LINCOLN RYAN MACHADO KLEN DA SILVA', 24122, 'lincoln.silva40@etec.sp.gov.br', 1, NULL),
('2A_27', 'MAISA DE OLIVEIRA SOUZA', 24052, 'maisa.souza36@etec.sp.gov.br', 1, NULL),
('2A_28', 'MARIA EDUARDA LOPES DA SILVA', 24462, 'maria.silva5419@etec.sp.gov.br', 1, NULL),
('2A_29', 'MATHEUS DOS SANTOS OLIVEIRA', 24260, 'matheus.oliveira1159@etec.sp.gov.br', 1, NULL),
('2A_30', 'MATHEUS ROCHA SOUZA', 24217, 'matheus.souza770@etec.sp.gov.br', 1, NULL),
('2A_31', 'MELISSA NATIELY DE OLIVEIRA', 24205, 'melissa.oliveira86@etec.sp.gov.br', 1, NULL),
('2A_32', 'MURILO VIEIRA ALVES', 24065, 'murilo.alves44@etec.sp.gov.br', 1, NULL),
('2A_33', 'NICOLAS RODRIGUES DRUMMOND MACHADO', 24456, 'nicolas.machado17@etec.sp.gov.br', 1, NULL),
('2A_34', 'RAFAELA GADELHA DE SOUSA', 24120, 'rafaela.sousa58@etec.sp.gov.br', 1, NULL),
('2A_35', 'RAKELY SIMIONI ALFREDO', 24019, 'rakely.alfredo@etec.sp.gov.br', 1, NULL),
('2A_36', 'SOFIA GONCALVES BARROS', 24136, 'sofia.barros4@etec.sp.gov.br', 1, NULL),
('2A_37', 'VITOR DE ARAUJO LOBO', 24255, 'vitor.lobo3@etec.sp.gov.br', 1, NULL),
('2A_38', 'WALDER THOTH DUMONT LEAL DE PINHO', 24250, 'walder.pinho@etec.sp.gov.br', 1, NULL),
('2B_01', 'ALLANA MARTINS BENTO', 24034, 'allana.bento@etec.sp.gov.br', 1, NULL),
('2B_02', 'ANA CAROLINA ALVES DA SILVA', 24402, 'ana.silva5882@etec.sp.gov.br', 1, NULL),
('2B_03', 'ANA CLARA ANDRADE FERRARETI', 24121, 'ana.ferrareti@etec.sp.gov.br', 1, NULL),
('2B_04', 'BEATRIZ BOTTARO SOUZA', 24132, 'beatriz.souza563@etec.sp.gov.br', 1, NULL),
('2B_05', 'CLARA FERREIRA SANTOS', 24067, 'clara.santos64@etec.sp.gov.br', 1, NULL),
('2B_06', 'DANIELA DE ALMEIDA RODRIGUES', 24461, 'daniela.rodrigues67@etec.sp.gov.br', 1, NULL),
('2B_07', 'FABRICIO AUGUSTO ALVES DE ALMEIDA', 24064, 'fabricio.almeida27@etec.sp.gov.br', 1, NULL),
('2B_08', 'FERNANDA LARA BOARO DE SOUSA', 24014, 'fernanda.sousa100@etec.sp.gov.br', 1, NULL),
('2B_09', 'FERNANDO VISCONDE MARTINS', 24240, 'fernando.martins61@etec.sp.gov.br', 1, NULL),
('2B_10', 'GABRIEL SALES DURSO', 24459, 'gabriel.durso@etec.sp.gov.br', 1, NULL),
('2B_11', 'GIOVANNA CRISTINA MORAES ANDRADE', 24410, 'giovanna.andrade52@etec.sp.gov.br', 1, NULL),
('2B_12', 'GIUSEPPE FELIX TEODORO', 24417, 'giuseppe.teodoro@etec.sp.gov.br', 1, NULL),
('2B_13', 'ISABELLA SOUZA LEMOS', 24420, 'isabella.lemos6@etec.sp.gov.br', 1, NULL),
('2B_14', 'ISABELY DE JESUS PEREIRA', 24270, 'isabely.pereira3@etec.sp.gov.br', 1, NULL),
('2B_15', 'JOAO VICTOR OLIVEIRA SOARES', 24040, 'joao.soares190@etec.sp.gov.br', 1, NULL),
('2B_16', 'KAIO HENRIQUE MACHADO SANTOS', 24107, 'kaio.santos114@etec.sp.gov.br', 1, NULL),
('2B_17', 'LAIS MARIE DE SOUSA LEIROS', 24154, 'lais.leiros@etec.sp.gov.br', 1, NULL),
('2B_18', 'LIS MORAES VASSALO', 24229, 'lis.vassalo@etec.sp.gov.br', 1, NULL),
('2B_19', 'LUCAS SILVA PEIXOTO SANTOS', 24162, 'lucas.santos2642@etec.sp.gov.br', 1, NULL),
('2B_20', 'LUIZA VEIGA CAVALCANTE', 24047, 'luiza.cavalcante4@etec.sp.gov.br', 1, NULL),
('2B_21', 'MANUELA SOUZA DE ASSIS', 24414, 'manuela.assis@etec.sp.gov.br', 1, NULL),
('2B_22', 'MARIA EDUARDA BISPO DA SILVA', 24078, 'maria.silva5269@etec.sp.gov.br', 1, NULL),
('2B_23', 'MARIA EDUARDA CERQUEIRA DINARTE', 24024, 'maria.dinarte@etec.sp.gov.br', 1, NULL),
('2B_24', 'MARIA EDUARDA LIMA BOMFIM', 24318, 'maria.bomfim9@etec.sp.gov.br', 1, NULL),
('2B_25', 'MARIA EDUARDA MOREIRA DE ARAUJO', 24253, 'maria.araujo441@etec.sp.gov.br', 1, NULL),
('2B_26', 'MARINA DA SILVA GIMENES', 24008, 'marina.gimenes@etec.sp.gov.br', 1, NULL),
('2B_27', 'MATHEUS CHAVES LIMA', 24126, 'matheus.lima476@etec.sp.gov.br', 1, NULL),
('2B_28', 'MURILO DIAS TALHARI', 24039, 'murilo.talhari@etec.sp.gov.br', 1, NULL),
('2B_29', 'NICOLLY VERA DA SILVA', 24141, 'nicolly.silva104@etec.sp.gov.br', 1, NULL),
('2B_30', 'RAISSA RIBEIRO FERRAZ', 24046, 'raissa.ferraz4@etec.sp.gov.br', 1, NULL),
('2B_31', 'RHUAN BERSSAN LISBOA', 24278, 'rhuan.lisboa@etec.sp.gov.br', 1, NULL),
('2B_32', 'RILENA MARIA PIANI DE OLIVEIRA', 24075, 'rilena.oliveira@etec.sp.gov.br', 1, NULL),
('2B_33', 'SARAH CRISTINA FERNANDES GOMES', 24469, 'sarah.gomes9@etec.sp.gov.br', 1, NULL),
('2B_34', 'SOFIA DE ALMEIDA CORREA', 24168, 'sofia.correa3@etec.sp.gov.br', 1, NULL),
('2B_35', 'SOFIA THAUANE RIBEIRO FERNANDES', 24165, 'sofia.fernandes5@etec.sp.gov.br', 1, NULL),
('2B_36', 'SUELLEM CANDIDO DA SILVA', 24017, 'suellen.silva196@etec.sp.gov.br', 1, NULL),
('2B_37', 'TAISSA ZUZA DOS SANTOS', 24087, 'taissa.santos5@etec.sp.gov.br', 1, NULL),
('2B_38', 'YASMIM DA SILVA MADALENA', 24082, 'yasmim.madalena@etec.sp.gov.br', 1, NULL),
('2C_01', 'ADRIANO BENDAZZOLI ZORZENON BARBOSA', 24020, 'adriano.barbosa25@etec.sp.gov.br', 1, NULL),
('2C_02', 'ALLYSON ROCHA DOS SANTOS', 24166, 'allyson.santos8@etec.sp.gov.br', 1, NULL),
('2C_03', 'ANA BEATRIZ RIBEIRO SOARES', 24023, 'ana.soares261@etec.sp.gov.br', 1, NULL),
('2C_04', 'ANA CLARA BRONZERI RIVAS', 24409, 'ana.rivas@etec.sp.gov.br', 1, NULL),
('2C_05', 'ARTHUR RIBEIRO LUZ', 24131, 'arthur.luz01@etec.sp.gov.br', 1, NULL),
('2C_06', 'BEATRIZ KRISAN FALCÃO', 24211, 'beatriz.falcao@etec.sp.gov.br', 1, NULL),
('2C_07', 'BYANCA LOURENÇO SOUZA', 24258, 'byanca.souza2@etec.sp.gov.br', 1, NULL),
('2C_08', 'CAIO OLIVEIRA BARRETO', 24029, 'caio.barreto9@etec.sp.gov.br', 1, NULL),
('2C_09', 'DANIEL DIOGO DE SOUZA', 24223, 'daniel.souza376@etec.sp.gov.br', 1, NULL),
('2C_10', 'EDUARDO LUIZ FRANCELIANO', 24147, 'eduardo.franceliano@etec.sp.gov.br', 1, NULL),
('2C_11', 'ESTEVÃO OLIVEIRA LOCKS', 24237, 'estevao.locks@etec.sp.gov.br', 1, NULL),
('2C_12', 'FELIPE JOSÉ BORGES DE MELLO', 24262, 'felipe.mello32@etec.sp.gov.br', 1, NULL),
('2C_13', 'GABRIEL PALOZI GONÇALVES', 24458, 'gabriel.goncalves218@etec.sp.gov.br', 1, NULL),
('2C_14', 'GABRIELY SANTOS PEREIRA', 24071, 'gabriely.pereira13@etec.sp.gov.br', 1, NULL),
('2C_15', 'GEOVANA DE BRITO SOUZA', 24238, 'geovana.souza82@etec.sp.gov.br', 1, NULL),
('2C_16', 'GUILHERME DA SILVA GIMENES', 24009, 'guilherme.gimenes2@etec.sp.gov.br', 1, NULL),
('2C_17', 'GUILHERME MORETTI RIBEIRO', 24072, 'guilherme.ribeiro234@etec.sp.gov.br', 1, NULL),
('2C_18', 'ÍZAN RIOS', 24207, 'izan.rios@etec.sp.gov.br', 1, NULL),
('2C_19', 'JOÃO ARTHUR RIPOLI PEREIRA NUNES', 24106, 'joao.nunes97@etec.sp.gov.br', 1, NULL),
('2C_20', 'JOÃO GABRIEL TAVARES DE LIRA', 24254, 'joao.lira25@etec.sp.gov.br', 1, NULL),
('2C_21', 'JOÃO PEDRO DE ANDRADE FERREIRA', 24411, 'joao.ferreira483@etec.sp.gov.br', 1, NULL),
('2C_22', 'JOÃO VINÍCIUS COSTA', 24028, 'joao.costa408@etec.sp.gov.br', 1, NULL),
('2C_23', 'KAIO DE LIMA MERONHO', 24222, 'kaio.meronho@etec.sp.gov.br', 1, NULL),
('2C_24', 'KATARINA VITÓRIA DA SILVA', 24026, 'katarina.silva01@etec.sp.gov.br', 1, NULL),
('2C_25', 'LETÍCIA VASCONCELOS DA SILVA', 24230, 'leticia.silva2315@etec.sp.gov.br', 1, NULL),
('2C_26', 'LORENA DA SILVA RODRIGUES', 24032, 'lorena.rodrigues15@etec.sp.gov.br', 1, NULL),
('2C_27', 'LORENZO MÜLLER CARDOSO', 24025, 'lorenzo.cardoso@etec.sp.gov.br', 1, NULL),
('2C_28', 'MAYARA DE OLIVEIRA SANT\'ANNA', 24073, 'mayara.anna@etec.sp.gov.br', 1, NULL),
('2C_29', 'NICOLE MODESTO MOURA', 24035, 'nicole.moura3@etec.sp.gov.br', 1, NULL),
('2C_30', 'NYCOLAS FREITAS SANTOS LEAL', 24472, 'nycolas.leal@etec.sp.gov.br', 1, NULL),
('2C_31', 'PAOLA ONÓRIO ZARATINI', 24149, 'paola.zaratini@etec.sp.gov.br', 1, NULL),
('2C_32', 'PEDRO HENRIQUE RILLO DE CARVALHO', 24216, 'pedro.carvalho132@etec.sp.gov.br', 1, NULL),
('2C_33', 'SOPHIA GONÇALVES MORAIS', 24266, 'sophia.morais@etec.sp.gov.br', 1, NULL),
('2C_34', 'TAMIRES ANASTACIO DE FREITAS', 24152, 'tamires.freitas3@etec.sp.gov.br', 1, NULL),
('2C_35', 'THAÍS QUINELATO ABE', 24031, 'thais.abe@etec.sp.gov.br', 1, NULL),
('2C_36', 'THIAGO DA SILVA SANTOS', 24227, 'thiago.santos875@etec.sp.gov.br', 1, NULL),
('2C_37', 'VINÍCIUS LUZ DOS SANTOS', 24475, 'vinicius.santos1352@etec.sp.gov.br', 1, NULL),
('2C_38', 'VITOR DA SILVA LOPES', 24130, 'vitor.lopes62@etec.sp.gov.br', 1, NULL),
('2C_39', 'VITOR GONÇALVES BARROS', 24135, 'vitor.barros32@etec.sp.gov.br', 1, NULL),
('2D_01', 'ANA BEATRIZ LOURENÇO DE ALMEIDA SILVA', 24328, 'ana.silva6297@etec.sp.gov.br', 1, NULL),
('2D_02', 'ANDREW DA COSTA ASCENÇO', 24490, 'andrew.ascenco@etec.sp.gov.br', 1, NULL),
('2D_03', 'BRUNO HENRIQUE DE OLIVEIRA PINHEIRO', 24337, 'bruno.pinheiro35@etec.sp.gov.br', 1, NULL),
('2D_04', 'CAROLINA CRISTINA CAÇADOR SILVA', 24329, 'carolina.silva645@etec.sp.gov.br', 1, NULL),
('2D_05', 'DANIELA CRISTINA PORFIRIO DE AGUIAR', 24342, 'daniela.aguiar4@etec.sp.gov.br', 1, NULL),
('2D_06', 'DIOGO CONCEIÇÃO DOS SANTOS', 24198, 'diogo.santos232@etec.sp.gov.br', 1, NULL),
('2D_07', 'GABRIELLE APARECIDA GOMES DE SÁ', 23042, 'gabrielle.sa2@etec.sp.gov.br', 1, NULL),
('2D_08', 'ISABELE DO NASCIMENTO CARDOSO', 24363, 'isabele.cardoso@etec.sp.gov.br', 1, NULL),
('2D_09', 'JOICE DE FREITAS MACAUBAS', 20362, 'joice.macaubas@etec.sp.gov.br', 1, NULL),
('2D_10', 'JULIANA FREITAS MACAUBAS', 24345, 'juliana.macaubas@etec.sp.gov.br', 1, NULL),
('2D_11', 'MARIA VICTÓRIA RODRIGUES DA SILVA', 24344, 'maria.silva5682@etec.sp.gov.br', 1, NULL),
('2D_12', 'MATEUS PINHEIRO DOS SANTOS', 24301, 'mateus.santos526@etec.sp.gov.br', 1, NULL),
('2D_13', 'MAYARA FERNANDES RIBEIRO', 24354, 'mayara.ribeiro46@etec.sp.gov.br', 1, NULL),
('2D_14', 'MICHELLY DA SILVA HOSCHETT', 24341, 'michelly.hoschett@etec.sp.gov.br', 1, NULL),
('2D_15', 'NATALIA SOARES DE SOUZA', 24293, 'natalia.souza285@etec.sp.gov.br', 1, NULL),
('2D_16', 'NICOLE SILVA DOS SANTOS', 24311, 'nicole.santos189@etec.sp.gov.br', 1, NULL),
('2D_17', 'PIETRO RIBEIRO DE CAROLIS', 24096, 'pietro.carolis@etec.sp.gov.br', 1, NULL),
('2D_18', 'ROBERT HENRIQUE OLIVEIRA DE SOUZA', 24498, 'robert.souza19@etec.sp.gov.br', 1, NULL),
('2D_19', 'ROBERTO JUNIOR DA SILVA SANTOS', 24320, 'roberto.santos183@etec.sp.gov.br', 1, NULL),
('2D_20', 'ROSIMEIRE LUZ PEREIRA ANDRADE', 24298, 'rosimeire.andrade@etec.sp.gov.br', 1, NULL),
('2D_21', 'TAINÁ ALONSO PINHEIRO', 24355, 'taina.pinheiro01@etec.sp.gov.br', 1, NULL),
('2D_22', 'THAUANY OLIVEIRA SILVA', 24350, 'thauany.silva32@etec.sp.gov.br', 1, NULL),
('2D_23', 'THAYANE SILVA DE FIGUEIREDO', 24353, 'thayane.figueiredo@etec.sp.gov.br', 1, NULL),
('2D_24', 'VINICIUS DIAS SANTOS', 24182, 'vinicius.santos1392@etec.sp.gov.br', 1, NULL),
('2F_01', 'ANA BEATRIZ GILARDE PORTELA', 24319, 'ana.portela@etec.sp.gov.br', 1, NULL),
('2F_02', 'ANA CAROLINY FORTES', 24267, 'ana.fortes8@etec.sp.gov.br', 1, NULL),
('2F_03', 'ÂNGELO IVON DOMINGUES TENÓRIO DE ALMEIDA', 24463, 'angelo.almeida2@etec.sp.gov.br', 1, NULL),
('2F_04', 'ANNA BEATRIZ SURITA MANUEL', 24007, 'anna.manuel@etec.sp.gov.br', 1, NULL),
('2F_05', 'ARTHUR ANDRÉ PRADO DA SILVA', 24407, 'arthur.silva450@etec.sp.gov.br', 1, NULL),
('2F_06', 'ARTHUR GAEL ARAUJO PINHO DE ALMEIDA', 24202, 'arthur.almeida54@etec.sp.gov.br', 1, NULL),
('2F_07', 'BRAYAN CHARLES MOURA DA MOTA', 24280, 'brayan.mota@etec.sp.gov.br', 1, NULL),
('2F_08', 'BRYAN SOARES DE CARVALHO', 24212, 'bryan.carvalho2@etec.sp.gov.br', 1, NULL),
('2F_09', 'EVELLYN DOS SANTOS FURTADO', 24466, 'evellyn.furtado@etec.sp.gov.br', 1, NULL),
('2F_10', 'GABRIELA ROMANO', 24209, 'gabriela.romano@etec.sp.gov.br', 1, NULL),
('2F_11', 'HELOÍSA LIMA RODRIGUES', 24134, 'heloisa.rodrigues19@etec.sp.gov.br', 1, NULL),
('2F_12', 'IAGO DE ALMEIDA COELHO', 24415, 'iago.coelho@etec.sp.gov.br', 1, NULL),
('2F_13', 'ISABELE EDUARDA OLIVEIRA BORGES', 24403, 'isabele.borges2@etec.sp.gov.br', 1, NULL),
('2F_14', 'ISADORA RIBEIRO JANS', 24464, 'isadora.jans@etec.sp.gov.br', 1, NULL),
('2F_15', 'JOÃO HENRIQUE DE ANDRADE GIMENES', 24259, 'joao.gimenes6@etec.sp.gov.br', 1, NULL),
('2F_16', 'JOAO HENRIQUE DOS SANTOS RABELO', 24247, 'joao.rabelo2@etec.sp.gov.br', 1, NULL),
('2F_17', 'JOÃO PAULO SOUZA AZEVEDO', 24055, 'joao.azevedo54@etec.sp.gov.br', 1, NULL),
('2F_18', 'JONATHA DE PAULA ARAÚJO', 24114, 'jonatha.araujo@etec.sp.gov.br', 1, NULL),
('2F_19', 'JULIO CESAR PEREIRA DA SILVA JUNIOR', 24125, 'julio.silva554@etec.sp.gov.br', 1, NULL),
('2F_20', 'KEVIN GABRIEL DE SOUZA', 24225, 'kevin.souza43@etec.sp.gov.br', 1, NULL),
('2F_21', 'LAURA ROMANO', 24208, 'laura.romano@etec.sp.gov.br', 1, NULL),
('2F_22', 'LEONARDO TEIXEIRA DA SILVA', 24401, 'leonardo.silva1892@etec.sp.gov.br', 1, NULL),
('2F_23', 'LEONARDO ZAIA SILVA', 24243, 'leonardo.silva1896@etec.sp.gov.br', 1, NULL),
('2F_24', 'MARCOS GABRIEL DA SILVA BASSO', 24036, 'marcos.basso01@etec.sp.gov.br', 1, NULL),
('2F_25', 'MARCOS PAULO HENRIQUE BALBINO', 24084, 'marcos.balbino@etec.sp.gov.br', 1, NULL),
('2F_26', 'MATHEUS DE PAULI BATISTA', 24176, 'matheus.batista103@etec.sp.gov.br', 1, NULL),
('2F_27', 'MATHEUS LIMA COLANTUONO', 24418, 'matheus.colantuono@etec.sp.gov.br', 1, NULL),
('2F_28', 'MIGUEL BIZERRA SILVA', 24146, 'miguel.silva233@etec.sp.gov.br', 1, NULL),
('2F_29', 'MURILO GONÇALVES DA SILVA', 24013, 'murilo.silva420@etec.sp.gov.br', 1, NULL),
('2F_30', 'NYCOLLE ALVES DOS SANTOS', 24109, 'nycolle.santos2@etec.sp.gov.br', 1, NULL),
('2F_31', 'PEDRO HENRIQUE DE ANDRADE GIMENES', 24018, 'pedro.gimenes@etec.sp.gov.br', 1, NULL),
('2F_32', 'PEDRO SILVA MIRANDA', 24113, 'pedro.miranda29@etec.sp.gov.br', 1, NULL),
('2F_33', 'PIETRO JACON LUCHESI VERSOLLATO', 24140, 'pietro.versollato@etec.sp.gov.br', 1, NULL),
('2F_34', 'RAFAEL VASCONCELOS MONTEIRO', 24112, 'rafael.monteiro72@etec.sp.gov.br', 1, NULL),
('2F_35', 'RAMON ALVES SILVA', 24144, 'ramon.silva132@etec.sp.gov.br', 1, NULL),
('2F_36', 'RYAN DE OLIVEIRA OSZTER', 24249, 'ryan.oszter@etec.sp.gov.br', 1, NULL),
('2F_37', 'VICTOR DE OLIVEIRA PACHECO', 24470, 'victor.pacheco16@etec.sp.gov.br', 1, NULL),
('2F_38', 'VICTOR GABRIEL BESSEMER SANTOS', 24210, 'victor.santos893@etec.sp.gov.br', 1, NULL),
('2F_39', 'VINICIUS DOS SANTOS ANDRADE', 24143, 'vinicius.andrade88@etec.sp.gov.br', 1, NULL),
('2F_40', 'VITOR EDUARDO MATOS VIRGINIO', 24261, 'vitor.virginio@etec.sp.gov.br', 1, NULL),
('2H_01', 'ALLANA MOREIRA DA SILVA', 24333, 'allana.silva41@etec.sp.gov.br', 1, NULL),
('2H_02', 'ANDREIA CRISTINA MARQUES DE ALMEIDA', 15220, 'andreia.almeida38@etec.sp.gov.br', 1, NULL),
('2H_03', 'BRYAN ALMEIDA LIMA', 24346, 'bryan.lima10@etec.sp.gov.br', 1, NULL),
('2H_04', 'DANIEL MARQUES DA SILVA LOPES PIMENTA', 24338, 'daniel.pimenta2@etec.sp.gov.br', 1, NULL),
('2H_05', 'DAPHNE CAROLINE BARROSO SIQUEIRA', 24305, 'daphne.siqueira@etec.sp.gov.br', 1, NULL),
('2H_06', 'DEOCLECIO QUEIROZ BATISTA', 24364, 'deoclecio.batista@etec.sp.gov.br', 1, NULL),
('2H_07', 'DIOGO ALMEIDA FERRAZ', 24486, 'diogo.ferraz@etec.sp.gov.br', 1, NULL),
('2H_08', 'FERNANDA MARTINS DE CASTRO', 24331, 'fernanda.castro20@etec.sp.gov.br', 1, NULL),
('2H_09', 'GUILHERME BORGES DOS REIS', 18526, 'guilherme.reis89@etec.sp.gov.br', 1, NULL),
('2H_10', 'GUSTAVO FERREIRA DE SOUZA', 24304, 'gustavo.souza469@etec.sp.gov.br', 1, NULL),
('2H_11', 'GUSTAVO FRANCISCO FREITAS SANTOS', 19086, 'gustavo.santos1463@etec.sp.gov.br', 1, NULL),
('2H_12', 'ISMAEL MARCELINO DA SILVA', 24332, 'ismael.silva88@etec.sp.gov.br', 1, NULL),
('2H_13', 'JAREDE DA SILVA VERAS', 24296, 'jarede.veras@etec.sp.gov.br', 1, NULL),
('2H_14', 'JONIS PEREIRA RAMOS', 24183, 'jonis.ramos@etec.sp.gov.br', 1, NULL),
('2H_15', 'LAURA MARIA DOS SANTOS SOUZA', 24321, 'laura.souza152@etec.sp.gov.br', 1, NULL),
('2H_16', 'LIDIA CARNEIRO DO CARMO', 24359, 'lidia.carmo01@etec.sp.gov.br', 1, NULL),
('2H_17', 'LORRAINE COSTA BARRETO', 24187, 'lorraine.barreto@etec.sp.gov.br', 1, NULL),
('2H_18', 'LUCINEIDE COSTA DA SILVA', 23370, 'lucineide.silva@etec.sp.gov.br', 1, NULL),
('2H_19', 'MARIA MANUELA SOBREIRA FRANÇA', 24343, 'maria.franca89@etec.sp.gov.br', 1, NULL),
('2H_20', 'MARIANA FERNANDES RODRIGUES', 24494, 'mariana.rodrigues155@etec.sp.gov.br', 1, NULL),
('2H_21', 'MATHEUS SOUSA OLIVEIRA NASCIMENTO', 24292, 'matheus.nascimento246@etec.sp.gov.br', 1, NULL),
('2H_22', 'MAYCON GARCIA SILVA DOS SANTOS', 24294, 'maycon.santos87@etec.sp.gov.br', 1, NULL),
('2H_23', 'MAYCON SOARES ROCHA OLIVEIRA', 24291, 'maycon.oliveira64@etec.sp.gov.br', 1, NULL),
('2H_24', 'NICOLE PEREIRA SANTOS', 24324, 'nicole.santos194@etec.sp.gov.br', 1, NULL),
('2H_25', 'NICOLY SOUZA SILVA', 24323, 'nicoly.silva140@etec.sp.gov.br', 1, NULL),
('2H_26', 'PAOLA FRANCISCA PAIVA SANTOS', 24322, 'paola.santos90@etec.sp.gov.br', 1, NULL),
('2H_27', 'PIETRO FERREZ CUNHA', 24307, 'pietro.cunha@etec.sp.gov.br', 1, NULL),
('2H_28', 'RENAN CARLOS DA SILVA', 24022, 'renan.silva943@etec.sp.gov.br', 1, NULL),
('2H_29', 'ROSYANE SENA DOS SANTOS MACHADO', 24483, 'rosyane.machado@etec.sp.gov.br', 1, NULL),
('2H_30', 'RYAN ANDERSON ARAUJO DA SILVA', 24336, 'ryan.silva264@etec.sp.gov.br', 1, NULL),
('2H_31', 'RYAN DA SILVA SANTOS', 24288, 'ryan.santos143@etec.sp.gov.br', 1, NULL),
('2H_32', 'VICTOR HENRIQUE GOMES TEIXEIRA', 24357, 'victor.teixeira61@etec.sp.gov.br', 1, NULL),
('2H_33', 'VITOR HUGO MARTIN DE SOUZA', 24185, 'vitor.souza268@etec.sp.gov.br', 1, NULL),
('2H_34', 'YARA SANTANA DA SILVA', 24325, 'yara.silva93@etec.sp.gov.br', 1, NULL),
('2I_01', 'ALANIS JARDIM BELARMINO', 24167, 'alanis.belarmino@etec.sp.gov.br', 1, NULL),
('2I_02', 'ANA LAURA GONÇALVES DE OLIVEIRA SILVA', 24272, 'ana.silva6081@etec.sp.gov.br', 1, NULL),
('2I_03', 'ARIANE GUERRA GARCIA', 24041, 'ariane.garcia@etec.sp.gov.br', 1, NULL),
('2I_04', 'BEATRIZ FERREIRA DE JESUS SILVA', 24139, 'beatriz.silva1994@etec.sp.gov.br', 1, NULL),
('2I_05', 'CAIO CREMER DA SILVA', 24021, 'caio.silva901@etec.sp.gov.br', 1, NULL),
('2I_06', 'CRISTIAN SEBASTIAN SANTOS MARCONDES', 24119, 'cristian.marcondes@etec.sp.gov.br', 1, NULL),
('2I_07', 'DALILA RODRIGUES NEPOMUCENO DOS SANTOS', 24235, 'dalila.santos15@etec.sp.gov.br', 1, NULL),
('2I_08', 'DAVI MERCURIO DE SOUZA', 24269, 'davi.souza114@etec.sp.gov.br', 1, NULL),
('2I_09', 'EDUARDO COUTINHO ABBADE', 24103, 'eduardo.abbade@etec.sp.gov.br', 1, NULL),
('2I_10', 'EVANDRO RÍPOLI PEREIRA', 24011, 'evandro.pereira3@etec.sp.gov.br', 1, NULL),
('2I_11', 'FERNANDO LETIERI SANTOS', 24101, 'fernando.santos620@etec.sp.gov.br', 1, NULL),
('2I_12', 'GABRIEL DA PURIFICAÇÃO GOMES', 24094, 'gabriel.gomes281@etec.sp.gov.br', 1, NULL),
('2I_13', 'GABRIEL DOS SANTOS PURCINO', 24172, 'gabriel.purcino@etec.sp.gov.br', 1, NULL),
('2I_14', 'GIOVANNA LITIERI', 24117, 'giovanna.litieri@etec.sp.gov.br', 1, NULL),
('2I_15', 'GIOVANNA MAZIERO BISPO', 24284, 'giovanna.bispo5@etec.sp.gov.br', 1, NULL),
('2I_16', 'GUEURI FERNANDES RODRIGUES', 24467, 'gueuri.rodrigues@etec.sp.gov.br', 1, NULL),
('2I_17', 'HELOISA RODRIGUES ALVES', 24465, 'heloisa.alves32@etec.sp.gov.br', 1, NULL),
('2I_18', 'IGOR RODRIGUES REQUI', 24088, 'igor.requi@etec.sp.gov.br', 1, NULL),
('2I_19', 'ISABELA DOS SANTOS SILVA', 24010, 'isabela.silva798@etec.sp.gov.br', 1, NULL),
('2I_20', 'JADY BUENO DE OLIVEIRA', 24111, 'jady.oliveira2@etec.sp.gov.br', 1, NULL),
('2I_21', 'JOÃO PEDRO LEME RODRIGUES', 24044, 'joao.rodrigues429@etec.sp.gov.br', 1, NULL),
('2I_22', 'JOÃO PEDRO MELO COSTA', 24076, 'joao.costa415@etec.sp.gov.br', 1, NULL),
('2I_23', 'JUAN DIAS DA ROCHA SANTOS', 24068, 'juan.santos108@etec.sp.gov.br', 1, NULL),
('2I_24', 'JÚLIA ANTUNES MARTINS', 24279, 'julia.martins107@etec.sp.gov.br', 1, NULL),
('2I_25', 'LAÍS DE LIMA SILVA', 24158, 'lais.silva548@etec.sp.gov.br', 1, NULL),
('2I_26', 'LUCAS SATURNINO LEITE', 24257, 'lucas.leite154@etec.sp.gov.br', 1, NULL),
('2I_27', 'MARIA EDUARDA SANTANA SOARES', 24116, 'maria.soares239@etec.sp.gov.br', 1, NULL),
('2I_28', 'MARIA IZABELA MARTINS AHMED', 24273, 'maria.ahmed@etec.sp.gov.br', 1, NULL),
('2I_29', 'MARIANY SULLIVAN DA SILVA', 24218, 'mariany.silva8@etec.sp.gov.br', 1, NULL),
('2I_30', 'MATHEUS ALEXANDRE RAMOS DA SILVA', 24150, 'matheus.silva2881@etec.sp.gov.br', 1, NULL),
('2I_31', 'MATHEUS DE ALMEIDA SANTOS', 24204, 'matheus.santos1819@etec.sp.gov.br', 1, NULL),
('2I_32', 'MATHEUS LEITE DE MENEZES', 24256, 'matheus.menezes40@etec.sp.gov.br', 1, NULL),
('2I_33', 'MILENA DOS SANTOS SÁ', 24012, 'milena.sa01@etec.sp.gov.br', 1, NULL),
('2I_34', 'PABLYNE LOHANE REIS DE SOUZA', 24246, 'pablyne.souza@etec.sp.gov.br', 1, NULL),
('2I_35', 'PEDRO HENRIQUE SOUZA DA CRUZ', 24234, 'pedro.cruz86@etec.sp.gov.br', 1, NULL),
('2I_36', 'SOPHIA ROCHA FURLAN', 24006, 'sophia.furlan@etec.sp.gov.br', 1, NULL),
('2I_37', 'STELLA SERTÃO CORDEIRO', 24203, 'stella.cordeiro@etec.sp.gov.br', 1, NULL),
('2I_38', 'YASMIN INACIO PRADO', 24170, 'yasmin.prado11@etec.sp.gov.br', 1, NULL),
('2K_01', 'ANA BEATRIZ PESSOA DA SILVA', 24098, 'ana.silva6246@etec.sp.gov.br', 1, NULL),
('2K_02', 'ANNA LUISA SANTOS DE FREITAS', 24348, 'anna.freitas12@etec.sp.gov.br', 1, NULL),
('2K_03', 'BRUNO JOSÉ OLGUES CANDIDO FERREIRA', 24188, 'bruno.ferreira296@etec.sp.gov.br', 1, NULL),
('2K_04', 'DANIEL GISOLFI ALVES', 24051, 'daniel.alves112@etec.sp.gov.br', 1, NULL),
('2K_05', 'DIEGO LEONARDO TOSTA DA SILVA', 24184, 'diego.silva1282@etec.sp.gov.br', 1, NULL),
('2K_06', 'EDISON FRANCISCO ARIEDE', 24482, 'edison.ariede@etec.sp.gov.br', 1, NULL),
('2K_07', 'EMILLY VITORIA DA SILVA OLIVEIRA', 24186, 'emilly.oliveira98@etec.sp.gov.br', 1, NULL),
('2K_08', 'FELIPE DOS SANTOS', 24095, 'felipe.santos1552@etec.sp.gov.br', 1, NULL),
('2K_09', 'FELIPE MIGUEL AVELINO MARINHO', 21312, 'felipe.marinho@etec.sp.gov.br', 1, NULL),
('2K_10', 'FELIPE RODRIGUES DE SOUZA', 24347, 'felipe.souza634@etec.sp.gov.br', 1, NULL),
('2K_11', 'FRANCIELLE DOS SANTOS MARQUES', 21389, 'francielle.marques01@etec.sp.gov.br', 1, NULL),
('2K_12', 'GABRIEL DE SOUZA ROMANO', 24492, 'gabriel.romano5@etec.sp.gov.br', 1, NULL),
('2K_13', 'GIOVANA SOARES TREVISAN', 21447, 'giovana.trevisan3@etec.sp.gov.br', 1, NULL),
('2K_14', 'HELOÍSA FERREIRA GOMES', 24295, 'heloisa.gomes21@etec.sp.gov.br', 1, NULL),
('2K_15', 'ISABELLE SOUSA SILVA', 24193, 'isabelle.silva256@etec.sp.gov.br', 1, NULL),
('2K_16', 'LUCAS RAFAEL AVELINO MARINHO', 21316, 'lucas.marinho28@etec.sp.gov.br', 1, NULL);
INSERT INTO `aluno` (`id_aluno`, `nome_aluno`, `rm`, `email_institucional`, `disponivel`, `senha`) VALUES
('2K_17', 'MARIA ANANDA BEZERRA RODRIGUES', 24100, 'maria.rodrigues621@etec.sp.gov.br', 1, NULL),
('2K_18', 'NICOLAS SCARPINI NEGRÃO', 24488, 'nicolas.negrao@etec.sp.gov.br', 1, NULL),
('2K_19', 'RODRIGO DOS SANTOS JANUARIO', 21568, 'rodrigo.januario@etec.sp.gov.br', 1, NULL),
('2K_20', 'SARA PINHEIRO DOS SANTOS', 24314, 'sara.santos323@etec.sp.gov.br', 1, NULL),
('3A_01', 'ALLANIS CAETANO FERREIRA', 23291, 'allanis.ferreira@etec.sp.gov.br', 1, NULL),
('3A_02', 'ANA CAROLINA DA SILVA RAFAEL', 23008, 'ana.rafael3@etec.sp.gov.br', 1, NULL),
('3A_03', 'BEATRIZ CALDEIRA MASUCHETTE', 23304, 'beatriz.masuchette@etec.sp.gov.br', 1, NULL),
('3A_04', 'BEATRIZ SANTIAGO MAZIERO', 23287, 'beatriz.maziero@etec.sp.gov.br', 1, NULL),
('3A_05', 'BRUNO MIGUEL MICHEIAS', 23274, 'bruno.micheias@etec.sp.gov.br', 1, NULL),
('3A_06', 'CAIO SANTOS BOTOSSO', 23009, 'caio.botosso@etec.sp.gov.br', 1, NULL),
('3A_07', 'CECILIA PALADINI DIAS', 23044, 'cecilia.dias01@etec.sp.gov.br', 1, NULL),
('3A_08', 'DIOGO VITOR CHAGAS BILHESKI', 23210, 'diogo.bilheski@etec.sp.gov.br', 1, NULL),
('3A_09', 'EMILY FONTANA DOS SANTOS', 23355, 'emily.santos197@etec.sp.gov.br', 1, NULL),
('3A_10', 'FELIPE KENJI MIYAZAKI', 23279, 'felipe.miyazaki@etec.sp.gov.br', 1, NULL),
('3A_11', 'GABRIELLY SILVA SANTOS', 23046, 'gabrielly.santos139@etec.sp.gov.br', 1, NULL),
('3A_12', 'GIOVANNA GOMES DOS REIS', 23073, 'giovanna.reis22@etec.sp.gov.br', 1, NULL),
('3A_13', 'GUSTAVO HENRIQUE DE LIMA SILVA', 23014, 'gustavo.silva2056@etec.sp.gov.br', 1, NULL),
('3A_14', 'GUSTAVO SANTOS', 23222, 'gustavo.santos1253@etec.sp.gov.br', 1, NULL),
('3A_15', 'ISABELA DE MORAES CARLOS', 23024, 'isabela.carlos@etec.sp.gov.br', 1, NULL),
('3A_16', 'ISABELA PINHEIRO BELARMINO', 23233, 'isabela.belarmino@etec.sp.gov.br', 1, NULL),
('3A_17', 'JHUAN CLAUDIO SANTANA', 23061, 'jhuan.santana@etec.sp.gov.br', 1, NULL),
('3A_18', 'JULIA MARIA RODRIGUES DA MOTA SILVA', 23079, 'julia.silva1383@etec.sp.gov.br', 1, NULL),
('3A_19', 'JÚLIA VOMPEAN TAVARES DA SILVA', 23225, 'julia.silva1373@etec.sp.gov.br', 1, NULL),
('3A_20', 'KAMILY DOS SANTOS BARBOSA', 23119, 'kamily.barbosa01@etec.sp.gov.br', 1, NULL),
('3A_21', 'LIVIA ELLEN DOS SANTOS DIAS', 23037, 'livia.dias22@etec.sp.gov.br', 1, NULL),
('3A_22', 'LORENNA SOUZA SANTOS', 23011, 'lorenna.santos01@etec.sp.gov.br', 1, NULL),
('3A_23', 'LUIZA LAURA DOS SANTOS FERREIRA', 23203, 'luiza.ferreira22@etec.sp.gov.br', 1, NULL),
('3A_24', 'MARIA CLARA SALUSTIANO DE FREITAS', 23354, 'maria.freitas211@etec.sp.gov.br', 1, NULL),
('3A_25', 'MELISSA CAROLINA CORREIA FERNANDES', 23038, 'melissa.fernandes7@etec.sp.gov.br', 1, NULL),
('3A_26', 'MIGUEL ADALBERTO MORENO DE SOUZA', 23093, 'miguel.souza51@etec.sp.gov.br', 1, NULL),
('3A_27', 'MIKE WILLIANS OLIVEIRA', 23025, 'mike.oliveira2@etec.sp.gov.br', 1, NULL),
('3A_28', 'NATHALIA ARAUJO DE OLIVEIRA', 23259, 'nathalia.oliveira278@etec.sp.gov.br', 1, NULL),
('3A_29', 'POLLIANA JESUS DA SILVA DIAS', 23069, 'polliana.dias@etec.sp.gov.br', 1, NULL),
('3A_30', 'QUEREN FERREIRA DELLA NOCE', 23056, 'queren.noce@etec.sp.gov.br', 1, NULL),
('3A_31', 'RAFAELA PAVANI ESTEWAN', 24317, 'rafaela.estewan@etec.sp.gov.br', 1, NULL),
('3A_32', 'REBÉCA MARTINS DA SILVA', 23341, 'rebeca.silva267@etec.sp.gov.br', 1, NULL),
('3A_33', 'SAMUEL HENRIQUE GERMANO OLIVEIRA', 23032, 'samuel.oliveira228@etec.sp.gov.br', 1, NULL),
('3A_34', 'SOPHIA DE MOURA MARTINS', 23018, 'sophia.martins6@etec.sp.gov.br', 1, NULL),
('3A_35', 'SOPHYA ALMEIDA SANTANNA', 23375, 'sophya.santanna@etec.sp.gov.br', 1, NULL),
('3A_36', 'VINICIUS LANDIM VIERA', 23308, 'vinicius.vieira77@etec.sp.gov.br', 1, NULL),
('3A_37', 'VITORIA NOVAES PIMENTA NOLLI', 23081, 'vitoria.nolli@etec.sp.gov.br', 1, NULL),
('3B_01', 'ALESSANDRA LIMA VEGA', 23350, 'alessandra.vega@etec.sp.gov.br', 1, NULL),
('3B_02', 'AMANDA EMANUELY MORAES VOLPATO', 23039, 'amanda.volpato@etec.sp.gov.br', 1, NULL),
('3B_03', 'ANA BEATRIZ DE SOUZA DOMINGUES', 24448, 'ana.domingues64@etec.sp.gov.br', 1, NULL),
('3B_04', 'ANA CAROLINE DA SILVA SANTOS', 23201, 'ana.santos3263@etec.sp.gov.br', 1, NULL),
('3B_05', 'ANA CLARA SANTOS DA SILVA', 23058, 'ana.silva5495@etec.sp.gov.br', 1, NULL),
('3B_06', 'ANA CLARA SIQUEIRA SANTANA', 23361, 'ana.santana181@etec.sp.gov.br', 1, NULL),
('3B_07', 'ANA LUISA FONTES FRIEDERICI', 23050, 'ana.friederici@etec.sp.gov.br', 1, NULL),
('3B_08', 'CAROLINA VITÓRIA MENESES', 23062, 'carolina.meneses@etec.sp.gov.br', 1, NULL),
('3B_09', 'EMANUELLI VITORIA JARDIM MARQUES', 23087, 'emanuelli.marques@etec.sp.gov.br', 1, NULL),
('3B_10', 'ERIK FABRICIO DE SOUZA', 23273, 'erik.souza42@etec.sp.gov.br', 1, NULL),
('3B_11', 'GABRIELLA BARROS FERNANDES DA COSTA', 23286, 'gabriella.costa15@etec.sp.gov.br', 1, NULL),
('3B_12', 'GIOVANNA QUEIROZ CARVALHO', 23230, 'giovanna.carvalho54@etec.sp.gov.br', 1, NULL),
('3B_13', 'HELOISA EMANUELE GONCALVES GODINHO', 23054, 'heloisa.godinho@etec.sp.gov.br', 1, NULL),
('3B_14', 'HELOYSA BEATRIZ SANTOS', 23098, 'heloysa.santos3@etec.sp.gov.br', 1, NULL),
('3B_15', 'ISADORA FERREIRA AMANTE', 23290, 'isadora.amante@etec.sp.gov.br', 1, NULL),
('3B_16', 'JOYCE TEIXEIRA XAVIER', 23340, 'joyce.xavier@etec.sp.gov.br', 1, NULL),
('3B_17', 'JULIA DOMINGOS MIRANDA', 23262, 'julia.miranda28@etec.sp.gov.br', 1, NULL),
('3B_18', 'LAURA MORAES VASSALO', 23265, 'laura.vassalo@etec.sp.gov.br', 1, NULL),
('3B_19', 'LAVIGNE PEREIRA DE ALMEIDA', 23269, 'lavigne.almeida@etec.sp.gov.br', 1, NULL),
('3B_20', 'LEONARDO OLIVEIRA MOREIRA', 23060, 'leonardo.moreira76@etec.sp.gov.br', 1, NULL),
('3B_21', 'LIVIA ALVES RAMOS', 23006, 'livia.ramos11@etec.sp.gov.br', 1, NULL),
('3B_22', 'LUANE PEREZ SILVA', 23250, 'luane.silva01@etec.sp.gov.br', 1, NULL),
('3B_23', 'LUCIA HELENA ROCHA LIRA', 23212, 'lucia.lira@etec.sp.gov.br', 1, NULL),
('3B_24', 'MANUELA DE OLIVEIRA BORGES', 23082, 'manuela.borges@etec.sp.gov.br', 1, NULL),
('3B_25', 'MARCELLA SOARES DOS SANTOS', 23248, 'marcella.santos25@etec.sp.gov.br', 1, NULL),
('3B_26', 'MARIA CLARA CARVALHO BIANCHI', 23055, 'maria.bianchi11@etec.sp.gov.br', 1, NULL),
('3B_27', 'MARIA EDUARDA CARDOSO DE FREITAS', 23280, 'maria.freitas203@etec.sp.gov.br', 1, NULL),
('3B_28', 'MARIA FERNANDA OLIVEIRA SOUZA', 23339, 'maria.souza1255@etec.sp.gov.br', 1, NULL),
('3B_29', 'MARIA LUIZA RIBEIRO RODRIGUES', 23080, 'maria.rodrigues539@etec.sp.gov.br', 1, NULL),
('3B_30', 'MARIANA FLORÊNCIO DE FREITAS MIRANDA', 23243, 'mariana.miranda3@etec.sp.gov.br', 1, NULL),
('3B_31', 'MELISSA PEREIRA DE OLIVEIRA', 23347, 'melissa.oliveira82@etec.sp.gov.br', 1, NULL),
('3B_32', 'OCTAVIO ANDRADE ALBANO LOPES', 23256, 'octavio.lopes2@etec.sp.gov.br', 1, NULL),
('3B_33', 'PRISCILA FEIJÓ BIAJANTE', 23272, 'priscila.biajante@etec.sp.gov.br', 1, NULL),
('3B_34', 'RAYSSA OLIVIA DE OLIVEIRA', 23016, 'rayssa.oliveira67@etec.sp.gov.br', 1, NULL),
('3B_35', 'SARA HELIZA BRASILEIRO', 23004, 'sara.brasileiro@etec.sp.gov.br', 1, NULL),
('3B_36', 'SUSANA SANTOS TRISTÃO', 23090, 'susana.tristao@etec.sp.gov.br', 1, NULL),
('3B_37', 'VICTOR LEANNI VIEIRA', 23100, 'victor.vieira64@etec.sp.gov.br', 1, NULL),
('3B_38', 'VINÍCIUS SANTOS FERREIRA', 23285, 'vinicius.ferreira253@etec.sp.gov.br', 1, NULL),
('3C_01', 'ALINE DANTAS DE LIMA', 23253, 'aline.lima287@etec.sp.gov.br', 1, NULL),
('3C_02', 'BRUNO SORRILHA DE PAULA', 23227, 'bruno.paula66@etec.sp.gov.br', 1, NULL),
('3C_03', 'BRYAN ALMEIDA DE MORAES', 23002, 'bryan.moraes2@etec.sp.gov.br', 1, NULL),
('3C_04', 'CAMILA FERNANDES TRENTINO', 23251, 'camila.trentino@etec.sp.gov.br', 1, NULL),
('3C_05', 'CAROLINA MARZINOTI LIBARINO', 23066, 'carolina.libarino@etec.sp.gov.br', 1, NULL),
('3C_06', 'DANIEL LOPES BENATTI', 23104, 'daniel.benatti@etec.sp.gov.br', 1, NULL),
('3C_07', 'DAVI ANTONIO RAMOS ARAUJO', 23255, 'davi.araujo28@etec.sp.gov.br', 1, NULL),
('3C_08', 'ENZO CAETANO PERACIO RODRIGUES', 23221, 'enzo.rodrigues4@etec.sp.gov.br', 1, NULL),
('3C_09', 'ENZO KREBS SILVA', 23229, 'enzo.silva70@etec.sp.gov.br', 1, NULL),
('3C_10', 'EVELLYN DE SANTANA FELICIANO', 23045, 'evellyn.feliciano@etec.sp.gov.br', 1, NULL),
('3C_11', 'GABRIEL CASPIRRO DEMARCHI', 23223, 'gabriel.demarchi@etec.sp.gov.br', 1, NULL),
('3C_12', 'GIULIA PONTELLI FILIPPINI', 23220, 'giulia.filippini@etec.sp.gov.br', 1, NULL),
('3C_13', 'GUILHERME AUGUSTO PIRES DA SILVA', 23358, 'guilherme.silva2558@etec.sp.gov.br', 1, NULL),
('3C_14', 'GUILHERME NAKAMURA CARVALHO', 23049, 'guilherme.carvalho221@etec.sp.gov.br', 1, NULL),
('3C_15', 'IAGO SANTOS MENEZES DE OLIVEIRA', 23261, 'iago.oliveira52@etec.sp.gov.br', 1, NULL),
('3C_16', 'ISABELY D\'JOLIZ SANTOS RODRIGUES', 23065, 'isabely.rodrigues@etec.sp.gov.br', 1, NULL),
('3C_17', 'JOAO PEDRO MORANGONI', 23021, 'joao.morangoni@etec.sp.gov.br', 1, NULL),
('3C_18', 'KAUAN VENANCIO RODRIGUES', 23103, 'kauan.rodrigues20@etec.sp.gov.br', 1, NULL),
('3C_19', 'KEYVYN MARQUES SANTANA', 23030, 'kevyn.santana@etec.sp.gov.br', 1, NULL),
('3C_20', 'LETÍCIA NASCIMENTO DE ALMEIDA', 23077, 'leticia.almeida173@etec.sp.gov.br', 1, NULL),
('3C_21', 'LUANA GARCIA MATHIAS', 23027, 'luana.mathias01@etec.sp.gov.br', 1, NULL),
('3C_22', 'LUCAS FRANÇA BARDELLA', 23105, 'lucas.bardella@etec.sp.gov.br', 1, NULL),
('3C_23', 'LUCAS MARTINS PEREIRA', 23238, 'lucas.pereira607@etec.sp.gov.br', 1, NULL),
('3C_24', 'LUIGGY PEZINI GARCIA', 23206, 'luiggy.garcia@etec.sp.gov.br', 1, NULL),
('3C_25', 'MURILO BEZERRA DA SILVA', 23064, 'murilo.silva388@etec.sp.gov.br', 1, NULL),
('3C_26', 'MURILO SILVA GAMA', 23214, 'murilo.gama01@etec.sp.gov.br', 1, NULL),
('3C_27', 'NICOLAS AUGUSTO DA SILVA', 23356, 'nicolas.silva339@etec.sp.gov.br', 1, NULL),
('3C_28', 'NICOLAS LIMA ALBUQUERQUE', 23117, 'nicolas.albuquerque@etec.sp.gov.br', 1, NULL),
('3C_29', 'PAULO AUGUSTO COSTA', 23226, 'paulo.costa181@etec.sp.gov.br', 1, NULL),
('3C_30', 'PAULO HENRIQUE LIMA SILVA', 23068, 'paulo.silva1597@etec.sp.gov.br', 1, NULL),
('3C_31', 'PEDRO CARNEIRO SANTOS', 23282, 'pedro.santos1012@etec.sp.gov.br', 1, NULL),
('3C_32', 'PEDRO DE SENE GOUVEIA', 23231, 'pedro.gouveia7@etec.sp.gov.br', 1, NULL),
('3C_33', 'PEDRO HENRIQUE ASSUNCAO MEDEIROS', 23023, 'pedro.medeiros23@etec.sp.gov.br', 1, NULL),
('3C_34', 'RAPHAELA RODRIGUES LUVIZOTTO', 23010, 'raphaela.luvizotto@etec.sp.gov.br', 1, NULL),
('3C_35', 'RAQUEL ARAUJO PEREIRA', 23076, 'raquel.pereira57@etec.sp.gov.br', 1, NULL),
('3C_36', 'RYLLARY VICTORIA BARROSO', 23071, 'ryllary.barroso@etec.sp.gov.br', 1, NULL),
('3C_37', 'TIAGO DE CARVALHO ESTRADA', 23357, 'tiago.estrada@etec.sp.gov.br', 1, NULL),
('3C_38', 'VINÍCIUS ARAUJO RAMOS', 23052, 'vinicius.ramos71@etec.sp.gov.br', 1, NULL),
('3C_39', 'WESLEY MENDES DE SOUSA', 23299, 'wesley.sousa41@etec.sp.gov.br', 1, NULL),
('3F_01', 'AMANDA KAORI SHINOHARA', 23267, 'amanda.shinohara@etec.sp.gov.br', 1, NULL),
('3F_02', 'AMANDA RODRIGUEZ SILVA', 23252, 'amanda.silva1955@etec.sp.gov.br', 1, NULL),
('3F_03', 'ÂNGELO GABRIEL ARAÚJO DE SOUZA', 23289, 'angelo.souza23@etec.sp.gov.br', 1, NULL),
('3F_04', 'BRYAN DE OLIVEIRA', 23224, 'bryan.oliveira17@etec.sp.gov.br', 1, NULL),
('3F_05', 'CAMILA VITORIA MODESTO DA SILVA', 23015, 'camila.silva1579@etec.sp.gov.br', 1, NULL),
('3F_06', 'CAUÃ ARTHUR RAMOS DA SILVA', 23026, 'caua.silva83@etec.sp.gov.br', 1, NULL),
('3F_07', 'CECILIA SANTIAGO FARIA', 23254, 'cecilia.faria@etec.sp.gov.br', 1, NULL),
('3F_08', 'DENNER PEREIRA DOS SANTOS', 23297, 'denner.santos01@etec.sp.gov.br', 1, NULL),
('3F_09', 'EDUARDO DE ATAIDE MELO', 23263, 'eduardo.melo38@etec.sp.gov.br', 1, NULL),
('3F_10', 'ENZO MOBILE DE OLIVEIRA', 23022, 'enzo.oliveira25@etec.sp.gov.br', 1, NULL),
('3F_11', 'GIOVANA PRACANICO', 23294, 'giovana.pracanico@etec.sp.gov.br', 1, NULL),
('3F_12', 'GIULIA DE OLIVEIRA BENEDETTI', 23202, 'giulia.benedetti@etec.sp.gov.br', 1, NULL),
('3F_13', 'GUILHERME BENATTE DE SOUSA', 23235, 'guilherme.sousa161@etec.sp.gov.br', 1, NULL),
('3F_14', 'GUILHERME SOLON DE MENEZES', 23078, 'guilherme.menezes40@etec.sp.gov.br', 1, NULL),
('3F_15', 'GUSTAVO DA ROCHA PINHEIRO', 23353, 'gustavo.pinheiro39@etec.sp.gov.br', 1, NULL),
('3F_16', 'GUSTAVO RANGEL ANTUNES', 23028, 'gustavo.antunes14@etec.sp.gov.br', 1, NULL),
('3F_17', 'HEITOR ALBUQUERQUE DE FREITAS', 23236, 'heitor.freitas5@etec.sp.gov.br', 1, NULL),
('3F_18', 'IURI CARATI DOS SANTOS POLITA', 23012, 'iuri.polita@etec.sp.gov.br', 1, NULL),
('3F_19', 'JEAN MARCOS DA SILVA ARAUJO', 23218, 'jean.araujo11@etec.sp.gov.br', 1, NULL),
('3F_20', 'JOÃO VITOR XAVIER DE CARVALHO', 23160, 'joao.carvalho300@etec.sp.gov.br', 1, NULL),
('3F_21', 'JOSHUA RODRIGUES CAMARGO', 23242, 'joshua.camargo@etec.sp.gov.br', 1, NULL),
('3F_22', 'JULIA MEDEIROS TEIXEIRA', 23085, 'julia.teixeira42@etec.sp.gov.br', 1, NULL),
('3F_23', 'KATHARINA IAUSSOGHI FLORIANO DA SILVEIRA', 23067, 'katharina.silveira@etec.sp.gov.br', 1, NULL),
('3F_24', 'KEVIN RAFAEL DE ALMEIDA', 23040, 'kevin.almeida6@etec.sp.gov.br', 1, NULL),
('3F_25', 'LIVÍA AMARAL SALES ANTONIO', 23029, 'livia.antonio01@etec.sp.gov.br', 1, NULL),
('3F_26', 'LUARA GOUVEIA MARTINS', 23110, 'luara.martins@etec.sp.gov.br', 1, NULL),
('3F_27', 'MARIANA DA CUNHA CAMPELLO', 23260, 'mariana.campello@etec.sp.gov.br', 1, NULL),
('3F_28', 'MATHEUS PEREIRA SANTOS', 23283, 'matheus.santos1721@etec.sp.gov.br', 1, NULL),
('3F_29', 'MIGUEL LUIZ SOMMERFELD', 23127, 'miguel.sommerfeld@etec.sp.gov.br', 1, NULL),
('3F_30', 'MIGUEL TEODORO DE SOUZA', 23092, 'miguel.souza50@etec.sp.gov.br', 1, NULL),
('3F_31', 'NICOLE PEREIRA GREGORUTTI DE SOUZA', 23070, 'nicole.souza71@etec.sp.gov.br', 1, NULL),
('3F_32', 'OLAVO ALVES SCHIAVI SOUZA', 23208, 'olavo.souza01@etec.sp.gov.br', 1, NULL),
('3F_33', 'RAFAELA MAYUMI WADA FUKUDA', 23342, 'rafaela.fukuda@etec.sp.gov.br', 1, NULL),
('3F_34', 'SABRINA NICOLE BELA', 23003, 'sabrina.bela@etec.sp.gov.br', 1, NULL),
('3F_35', 'SABRINA VITORIA MOURA SANTOS', 23209, 'sabrina.santos394@etec.sp.gov.br', 1, NULL),
('3F_36', 'STEFANNY SAYURI GRANDEZ RIBEIRO', 23345, 'stefanny.ribeiro@etec.sp.gov.br', 1, NULL),
('3F_37', 'STEPHANY DOS SANTOS SILVA', 23232, 'stephany.silva135@etec.sp.gov.br', 1, NULL),
('3F_38', 'THOMAS CORADI', 23035, 'thomas.coradi@etec.sp.gov.br', 1, NULL),
('3F_39', 'WELINGTON FERNANDO DA SILVA QUEIROZ', 23247, 'welington.queiroz@etec.sp.gov.br', 1, NULL),
('3I_01', 'ANA BEATRIZ DOS ANJOS FERREIRA SILVA', 23364, 'ana.silva5666@etec.sp.gov.br', 1, NULL),
('3I_02', 'ANA CAROLINA OLIVEIRA DA COSTA CORDEIRO', 23277, 'ana.cordeiro54@etec.sp.gov.br', 1, NULL),
('3I_03', 'ANNA MAYUMI CHIDA ARUGA', 23271, 'anna.aruga@etec.sp.gov.br', 1, NULL),
('3I_04', 'BRENDA TOMAZ DA SILVA', 23211, 'brenda.silva401@etec.sp.gov.br', 1, NULL),
('3I_05', 'CAIO LUIZ OLIVEIRA DE PAULA', 23041, 'caio.paula39@etec.sp.gov.br', 1, NULL),
('3I_06', 'DANIELLE CARRASCHI SILVA', 23207, 'danielle.silva281@etec.sp.gov.br', 1, NULL),
('3I_07', 'EMILLY DOS SANTOS GRACIANO', 23083, 'emilly.graciano@etec.sp.gov.br', 1, NULL),
('3I_08', 'ENZO ASSAY PEREZ FREITAS', 23072, 'enzo.freitas6@etec.sp.gov.br', 1, NULL),
('3I_09', 'GABRIEL BICHO DOS SANTOS', 23275, 'gabriel.santos2087@etec.sp.gov.br', 1, NULL),
('3I_10', 'GABRIELLE DE LUCAS OLIVEIRA SANTOS', 23348, 'gabrielle.santos241@etec.sp.gov.br', 1, NULL),
('3I_11', 'GABRIELY PIRES CARDOSO', 23217, 'gabriely.cardoso@etec.sp.gov.br', 1, NULL),
('3I_12', 'GIOVANNA PEREIRA DANTAS', 23281, 'giovanna.dantas4@etec.sp.gov.br', 1, NULL),
('3I_13', 'GIOVANNA SPACA GIACOMINI', 23017, 'giovanna.giacomini@etec.sp.gov.br', 1, NULL),
('3I_14', 'GIOVANNA VIEIRA SANTANA DA SILVA', 23266, 'giovanna.silva753@etec.sp.gov.br', 1, NULL),
('3I_15', 'GIULIA LITIERI', 23365, 'giulia.litieri@etec.sp.gov.br', 1, NULL),
('3I_16', 'GIULIA SALES DA SILVA', 23114, 'giulia.silva134@etec.sp.gov.br', 1, NULL),
('3I_17', 'GUILHERME CASSIANO', 23007, 'guilherme.cassiano3@etec.sp.gov.br', 1, NULL),
('3I_18', 'GUILHERME ENRIQUE DE OLIVEIRA SILVA', 23306, 'guilherme.silva2513@etec.sp.gov.br', 1, NULL),
('3I_19', 'GUILHERME FERNANDES DOS SANTOS', 23237, 'guilherme.santos1434@etec.sp.gov.br', 1, NULL),
('3I_20', 'GUILHERME GUIZZARDI MADEIRA', 23109, 'guilherme.madeira01@etec.sp.gov.br', 1, NULL),
('3I_21', 'ISABELLA BOULLE DIONISI', 23043, 'isabella.dionisi@etec.sp.gov.br', 1, NULL),
('3I_22', 'JOAO PEDRO DAMIAO DE OLIVEIRA GARCIA', 23246, 'joao.garcia109@etec.sp.gov.br', 1, NULL),
('3I_23', 'JOÃO PEDRO RODRIGUES SOVENHI', 23215, 'joao.sovenhi@etec.sp.gov.br', 1, NULL),
('3I_24', 'LAURA LYSS AMARAL DE SOUZA', 23057, 'laura.souza122@etec.sp.gov.br', 1, NULL),
('3I_25', 'LAURA MIDEA BORGES', 23234, 'laura.borges01@etec.sp.gov.br', 1, NULL),
('3I_26', 'LÍVIA CRISTINA SILVA BONFIM', 23338, 'livia.bonfim@etec.sp.gov.br', 1, NULL),
('3I_27', 'LUARA TOMINAGA DOS SANTOS', 23360, 'luara.santos24@etec.sp.gov.br', 1, NULL),
('3I_28', 'LUCAS DE CASTRO SCHMIDT SILVA', 23204, 'lucas.silva4177@etec.sp.gov.br', 1, NULL),
('3I_29', 'LUCAS REZENDE DA SILVA', 23047, 'lucas.silva4189@etec.sp.gov.br', 1, NULL),
('3I_30', 'MARIANA BARBOSA DE ALMEIDA', 23001, 'mariana.almeida98@etec.sp.gov.br', 1, NULL),
('3I_31', 'MATHEUS DE SÁ DOMINGUES', 23351, 'matheus.domingues15@etec.sp.gov.br', 1, NULL),
('3I_32', 'MAYARA SOUZA ALMEIDA', 23270, 'mayara.almeida54@etec.sp.gov.br', 1, NULL),
('3I_33', 'NATÁLIA GUSTAVO DA SILVA', 23074, 'natalia.silva1082@etec.sp.gov.br', 1, NULL),
('3I_34', 'NICOLAS VIGIANI DE OLIVEIRA CÓ', 23000, 'nicolas.co@etec.sp.gov.br', 1, NULL),
('3I_35', 'PEDRO HENRIQUE OLIVEIRA ROCHA', 23101, 'pedro.rocha117@etec.sp.gov.br', 1, NULL),
('3I_36', 'RAFAELA AIRES DE ANDRADE', 23312, 'rafaela.andrade30@etec.sp.gov.br', 1, NULL),
('3I_37', 'SOFIA RODRIGUES SABINO', 23362, 'sofia.sabino@etec.sp.gov.br', 1, NULL),
('3I_38', 'VITTOR DE MELO ALVES', 23036, 'vittor.alves@etec.sp.gov.br', 1, NULL),
('3I_39', 'YASMIN BAZILIO MARTINS', 23019, 'yasmin.martins28@etec.sp.gov.br', 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno_turma`
--

CREATE TABLE `aluno_turma` (
  `id_aluno` varchar(20) NOT NULL,
  `id_turma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `foto`
--

CREATE TABLE `foto` (
  `id_foto` int(11) NOT NULL,
  `png` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `criatividade` decimal(3,1) DEFAULT NULL,
  `capricho` decimal(3,1) DEFAULT NULL,
  `abordagem` decimal(3,1) DEFAULT NULL,
  `dominio` decimal(3,1) DEFAULT NULL,
  `postura` decimal(3,1) DEFAULT NULL,
  `oralidade` decimal(3,1) DEFAULT NULL,
  `comentario` varchar(255) DEFAULT NULL,
  `organizacao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ods`
--

CREATE TABLE `ods` (
  `id_ods` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pertence`
--

CREATE TABLE `pertence` (
  `id_postagem` int(11) NOT NULL,
  `id_professor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pertence2`
--

CREATE TABLE `pertence2` (
  `id_postagem` int(11) NOT NULL,
  `id_aluno` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `postagem`
--

CREATE TABLE `postagem` (
  `id_postagem` int(11) NOT NULL,
  `legenda` text DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `id_aluno` varchar(20) DEFAULT NULL,
  `id_professor` int(11) DEFAULT NULL,
  `id_projeto` varchar(20) DEFAULT NULL,
  `id_foto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `id_professor` varchar(11) NOT NULL,
  `nome_professor` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `matricula` varchar(20) DEFAULT NULL,
  `id_nota` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`id_professor`, `nome_professor`, `email`, `matricula`, `id_nota`) VALUES
('PRO_01', 'AMANDA APARECIDA CHAGAS', 'amanda.chagas3@etec.sp.gov.br', '30488', NULL),
('PRO_02', 'ANA LUCIA SARTORELLI', 'analuciasartorelli@gmail.com', '18124', NULL),
('PRO_03', 'ANDERSON SILVA VANIN', 'anderson.vanin@etec.sp.gov.br', '18394', NULL),
('PRO_04', 'ANTONIO MARCOS DE OLIVEIRA', 'antonio.oliveira70@etec.sp.gov.br', '27912', NULL),
('PRO_05', 'ARGUS CECIL NERY MONTEIRO', 'argus.monteiro@etec.sp.gov.br', '79181', NULL),
('PRO_06', 'BRUNO ZOLOTAREFF DOS SANTOS', 'bruno.santos312@etec.sp.gov.br', '37110', NULL),
('PRO_07', 'CÉSAR ROCHA LIMA', 'cesar.lima37@etec.sp.gov.br', '82268', NULL),
('PRO_08', 'CIBELE VANESSA DA CUNHA PINTO', 'cibele.pinto2@etec.sp.gov.br', '85033', NULL),
('PRO_09', 'CINTIA MARIA DE ARAUJO PINHO', 'cintia.pinho3@etec.sp.gov.br', '36140', NULL),
('PRO_10', 'CRISTIANE FONTES', 'cristiane.fontes2@etec.sp.gov.br', '39963', NULL),
('PRO_11', 'DIOGO DOS SANTOS SILVA', 'diogo.silva328@etec.sp.gov.br', '70572', NULL),
('PRO_12', 'DOUGLAS LEONARDO DE LIMA', 'douglas.lima91@etec.sp.gov.br', '55761', NULL),
('PRO_13', 'EDILMA BINDÁ HUNGRIA MELO', 'edilma.hungria@etec.sp.gov.br', '72321', NULL),
('PRO_14', 'EMMANUELE SILVA SALVADOR', 'emmanuele.salvador@etec.sp.gov.br', '82006', NULL),
('PRO_15', 'FELLIPE DE OLIVEIRA BARBOSA', 'fellipe.barbosa@etec.sp.gov.br', '39956', NULL),
('PRO_16', 'INGRID DE MAGALHÃES DA SILVA', 'ingrid.silva595@etec.sp.gov.br', '84832', NULL),
('PRO_17', 'HEIDI ALVES DORES', 'heidi.dores01@etec.sp.gov.br', '30489', NULL),
('PRO_18', 'HOENDER LUVIZOTTO', 'hoender.luvizotto01@etec.sp.gov.br', '21164', NULL),
('PRO_19', 'IVAN CARLOS BONADIO', 'ivan.bonadio@etec.sp.gov.br', '37198', NULL),
('PRO_20', 'JULIANA SOUZA DA CRUZ', 'juliana.cruz85@etec.sp.gov.br', '79442', NULL),
('PRO_21', 'KATIA REGINA MARTINS CALCHI', 'katia.martins9@etec.sp.gov.br', '21168', NULL),
('PRO_22', 'KELI CRISTINA SILVA CEOLA', 'keli.ceola@etec.sp.gov.br', '24260', NULL),
('PRO_23', 'LUANA LOURENCO', 'luana.lourenco5@etec.sp.gov.br', '71312', NULL),
('PRO_24', 'LUCIOLA DE ALMEIDA PEREIRA', 'luciola.pereira@etec.sp.gov.br', '80488', NULL),
('PRO_25', 'MARCELO NERY PETRI', 'marcelo.petri@etec.sp.gov.br', '81384', NULL),
('PRO_26', 'MARCIO ALBERTO DE BARROS', 'marcio.barros2@etec.sp.gov.br', '83551', NULL),
('PRO_27', 'MARCOS PEDRO', 'marcos.pedro@etec.sp.gov.br', '19762', NULL),
('PRO_28', 'MARIA DA CONCEICAO MEDEIROS', 'maria.medeiros4@etec.sp.gov.br', '37115', NULL),
('PRO_29', 'MARTA APARECIDA SANT ANNA', 'marta.anna@etec.sp.gov.br', '51735', NULL),
('PRO_30', 'MELISE PEREIRA LOPES DA SILVA', 'melise.silva01@etec.sp.gov.br', '84881', NULL),
('PRO_31', 'NICOLAU KARDASH SALVADOR', 'nicolau.salvador01@etec.sp.gov.br', '21169', NULL),
('PRO_32', 'PÂMELA DE OLIVEIRA SOARES', 'pamela.soares19@etec.sp.gov.br', '51424', NULL),
('PRO_33', 'PAULO CESAR DE SOUZA CANDIDO', 'paulo.candido01@etec.sp.gov.br', '46138', NULL),
('PRO_34', 'RAFAEL ALJONA ORTEGA', 'rafael.ortega@etec.sp.gov.br', '61814', NULL),
('PRO_35', 'RAILON MENDES DE MOURA', 'railon.moura@etec.sp.gov.br', '79281', NULL),
('PRO_36', 'RICARDO ANTONIO DE SOUZA', 'ricardo.souza159@etec.sp.gov.br', '77228', NULL),
('PRO_37', 'RICARDO DIAS DE CAMARGO', 'ricardo.camargo8@etec.sp.gov.br', '21159', NULL),
('PRO_38', 'RICARDO LIOCHI FERREIRA SILVA PELLARO', 'ricardo.silva165@etec.sp.gov.br', '20371', NULL),
('PRO_39', 'RICARDO MOREIRA', 'ricardo.moreira36@etec.sp.gov.br', '78110', NULL),
('PRO_40', 'ROBERTO ALJONA ORTEGA', 'roberto.ortega01@etec.sp.gov.br', '21166', NULL),
('PRO_41', 'ROSALINA JULIO', 'rosalina.julio@etec.sp.gov.br', '19273', NULL),
('PRO_42', 'SIMONE APARECIDA TORRES DE SOUZA CUNEGUNDES', 'simone.cunegundes@etec.sp.gov.br', '68664', NULL),
('PRO_43', 'SINESIO DELPOIO', 'sinesio.delpoio@etec.sp.gov.br', '21157', NULL),
('PRO_44', 'SIRLEI RODRIGUES DO NASCIMENTO', 'sirlei.nascimento@etec.sp.gov.br', '39962', NULL),
('PRO_45', 'SUELY DOS SANTOS SOUSA', 'suely.sousa2@etec.sp.gov.br', '46136', NULL),
('PRO_46', 'THOMAS LITZLER PEDRO', 'thomas.pedro@etec.sp.gov.br', '81590', NULL),
('PRO_47', 'VALDEMIR PEZZO', 'valdemir.pezzo@etec.sp.gov.br', '46137', NULL),
('PRO_48', 'VALQUIRIA BENEDITO BASSALOBRE', 'valquiria.bassalobre01@etec.sp.gov.br', '19272', NULL),
('PRO_49', 'VINICIUS MOREIRA DAS NEVES', 'vinicius.neves32@etec.sp.gov.br', '82059', NULL);

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
  `id_nota` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `projeto_aluno`
--

CREATE TABLE `projeto_aluno` (
  `id_projeto` varchar(20) NOT NULL,
  `id_aluno` varchar(20) NOT NULL
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
  `nome_turma` varchar(50) DEFAULT NULL
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
-- Índices para tabela `aluno_turma`
--
ALTER TABLE `aluno_turma`
  ADD PRIMARY KEY (`id_aluno`,`id_turma`),
  ADD KEY `id_turma` (`id_turma`);

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
  ADD PRIMARY KEY (`id_postagem`,`id_professor`),
  ADD KEY `id_professor` (`id_professor`);

--
-- Índices para tabela `pertence2`
--
ALTER TABLE `pertence2`
  ADD PRIMARY KEY (`id_postagem`,`id_aluno`),
  ADD KEY `id_aluno` (`id_aluno`);

--
-- Índices para tabela `postagem`
--
ALTER TABLE `postagem`
  ADD PRIMARY KEY (`id_postagem`),
  ADD KEY `id_aluno` (`id_aluno`),
  ADD KEY `id_professor` (`id_professor`),
  ADD KEY `id_projeto` (`id_projeto`),
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
  ADD KEY `id_nota` (`id_nota`);

--
-- Índices para tabela `projeto_aluno`
--
ALTER TABLE `projeto_aluno`
  ADD PRIMARY KEY (`id_projeto`,`id_aluno`),
  ADD KEY `id_aluno` (`id_aluno`);

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
  ADD PRIMARY KEY (`id_turma`);

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
-- Limitadores para a tabela `aluno_turma`
--
ALTER TABLE `aluno_turma`
  ADD CONSTRAINT `aluno_turma_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`),
  ADD CONSTRAINT `aluno_turma_ibfk_2` FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id_turma`);

--
-- Limitadores para a tabela `pertence2`
--
ALTER TABLE `pertence2`
  ADD CONSTRAINT `pertence2_ibfk_1` FOREIGN KEY (`id_postagem`) REFERENCES `postagem` (`id_postagem`),
  ADD CONSTRAINT `pertence2_ibfk_2` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`);

--
-- Limitadores para a tabela `professor`
--
ALTER TABLE `professor`
  ADD CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`id_nota`) REFERENCES `nota` (`id_nota`);

--
-- Limitadores para a tabela `projeto`
--
ALTER TABLE `projeto`
  ADD CONSTRAINT `projeto_ibfk_1` FOREIGN KEY (`id_nota`) REFERENCES `nota` (`id_nota`);

--
-- Limitadores para a tabela `projeto_aluno`
--
ALTER TABLE `projeto_aluno`
  ADD CONSTRAINT `projeto_aluno_ibfk_1` FOREIGN KEY (`id_projeto`) REFERENCES `projeto` (`id_projeto`),
  ADD CONSTRAINT `projeto_aluno_ibfk_2` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`);

--
-- Limitadores para a tabela `projeto_aluno_ods`
--
ALTER TABLE `projeto_aluno_ods`
  ADD CONSTRAINT `projeto_aluno_ods_ibfk_1` FOREIGN KEY (`id_projeto`) REFERENCES `projeto` (`id_projeto`),
  ADD CONSTRAINT `projeto_aluno_ods_ibfk_2` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`),
  ADD CONSTRAINT `projeto_aluno_ods_ibfk_3` FOREIGN KEY (`id_ods`) REFERENCES `ods` (`id_ods`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
