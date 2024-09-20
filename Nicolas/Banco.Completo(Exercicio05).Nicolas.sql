-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/07/2024 às 20:56
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `exposição_de_arte`
--
CREATE DATABASE IF NOT EXISTS `exposição_de_arte` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `exposição_de_arte`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `artista`
--

CREATE TABLE `artista` (
  `CPF` varchar(20) NOT NULL,
  `Idade` int(11) NOT NULL,
  `Nome` varchar(20) NOT NULL,
  `Salario` float NOT NULL,
  `Nacionalidade` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `artista`
--

INSERT INTO `artista` (`CPF`, `Idade`, `Nome`, `Salario`, `Nacionalidade`) VALUES
('012.345.678-90', 30, 'Fernanda Lima', 2000, 'Brasil'),
('098.765.432-19', 28, 'Matheus Oliveira', 1800, 'Brasil'),
('123.456.789-01', 30, 'Maria Oliveira', 2000, 'Brasil'),
('210.987.654-29', 27, 'Juliana Silva', 1700, 'Brasil'),
('234.567.890-12', 28, 'João Silva', 1800, 'Brasil'),
('321.098.765-39', 26, 'Lucas Souza', 1600, 'Brasil'),
('342.851.379-51', 29, 'Cristiano Costa', 1900, 'Brasil'),
('345.678.901-23', 27, 'Pedro Santos', 1700, 'Brasil'),
('432.109.876-49', 25, 'Amanda Costa', 1500, 'Brasil'),
('456.789.012-34', 26, 'Ana Souza', 1600, 'Brasil'),
('543.210.987-59', 24, 'Gustavo Santos', 1400, 'Brasil'),
('567.890.123-45', 25, 'Lucas Lima', 1500, 'Brasil'),
('654.321.098-69', 23, 'Carolina Lima', 1300, 'Brasil'),
('678.901.234-56', 24, 'Mariana Oliveira', 1400, 'Brasil'),
('765.432.109-79', 22, 'Marcelo Oliveira', 1200, 'Brasil'),
('789.012.345-67', 23, 'Gabriel Silva', 1300, 'Brasil'),
('876.543.210-89', 21, 'Patrícia Silva', 1100, 'Brasil'),
('890.123.456-78', 22, 'Carla Santos', 1200, 'Brasil'),
('901.234.567-89', 21, 'Rafael Costa', 1100, 'Brasil'),
('987.654.321-99', 29, 'Renato Costa', 1900, 'Brasil');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidade`
--

CREATE TABLE `cidade` (
  `Id_Cidade` int(11) NOT NULL,
  `Nome` varchar(20) NOT NULL,
  `População` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cidade`
--

INSERT INTO `cidade` (`Id_Cidade`, `Nome`, `População`) VALUES
(1, 'Nova Lima', 96342),
(2, 'Belo Horizonte', 25238),
(3, 'Rio de Janeiro', 6747815),
(4, 'São Paulo', 12252023),
(5, 'Salvador', 2886698),
(6, 'Brasília', 3055149),
(7, 'Fortaleza', 2669342),
(8, 'Manaus', 2182763),
(9, 'Curitiba', 1948626),
(10, 'Recife', 1645727),
(11, 'Porto Alegre', 1484948),
(12, 'Belém', 1492745),
(13, 'Goiânia', 1536097),
(14, 'Guarulhos', 1382761),
(15, 'Campinas', 1219578),
(16, 'São Luís', 1103898),
(17, 'São Gonçalo', 1084833),
(18, 'Maceió', 1025360),
(19, 'Duque de Caxias', 920075),
(20, 'Natal', 884122),
(21, 'Teresina', 868075);

-- --------------------------------------------------------

--
-- Estrutura para tabela `encontro`
--

CREATE TABLE `encontro` (
  `Artista_CPF` varchar(20) NOT NULL,
  `Exposição_Id_Exposição` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `encontro`
--

INSERT INTO `encontro` (`Artista_CPF`, `Exposição_Id_Exposição`) VALUES
('012.345.678-90', 1),
('012.345.678-90', 21),
('098.765.432-19', 2),
('098.765.432-19', 22),
('123.456.789-01', 3),
('123.456.789-01', 23),
('210.987.654-29', 4),
('210.987.654-29', 24),
('234.567.890-12', 5),
('234.567.890-12', 25),
('321.098.765-39', 6),
('321.098.765-39', 26),
('342.851.379-51', 7),
('342.851.379-51', 27),
('345.678.901-23', 8),
('345.678.901-23', 28),
('432.109.876-49', 9),
('432.109.876-49', 29),
('456.789.012-34', 10),
('456.789.012-34', 30),
('543.210.987-59', 11),
('567.890.123-45', 12),
('654.321.098-69', 13),
('678.901.234-56', 14),
('765.432.109-79', 15),
('789.012.345-67', 16),
('876.543.210-89', 17),
('890.123.456-78', 18),
('901.234.567-89', 19),
('987.654.321-99', 20);

-- --------------------------------------------------------

--
-- Estrutura para tabela `exposição`
--

CREATE TABLE `exposição` (
  `Id_Exposição` int(11) NOT NULL,
  `Data` date NOT NULL,
  `Endereço` varchar(60) NOT NULL,
  `Cidade_Id_Cidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `exposição`
--

INSERT INTO `exposição` (`Id_Exposição`, `Data`, `Endereço`, `Cidade_Id_Cidade`) VALUES
(1, '2024-01-01', 'Rua Augusta', 1),
(2, '2024-02-01', 'Rua Oscar Freire', 2),
(3, '2024-03-01', 'Av. Brigadeiro Faria Lima', 3),
(4, '2024-04-01', 'Rua Bela Cintra', 4),
(5, '2024-05-01', 'Av. Rebouças', 5),
(6, '2024-06-01', 'Rua Haddock Lobo', 6),
(7, '2024-07-01', 'Av. Pacaembu', 7),
(8, '2024-08-01', 'Rua da Consolação', 8),
(9, '2024-09-01', 'Av. Sumaré', 9),
(10, '2024-10-01', 'Rua da Paz', 10),
(11, '2024-11-01', 'Av. Paulista', 11),
(12, '2024-12-01', 'Rua dos Pinheiros', 12),
(13, '2024-01-02', 'Alameda Santos', 13),
(14, '2024-02-02', 'Rua Padre João Manuel', 14),
(15, '2024-03-02', 'Av. Europa', 15),
(16, '2024-04-02', 'Rua Estados Unidos', 16),
(17, '2024-05-02', 'Rua Oscar', 17),
(18, '2024-06-02', 'Rua Augusta', 18),
(19, '2024-07-02', 'Alameda Lorena', 19),
(20, '2024-08-02', 'Rua Harmonia', 20),
(21, '2024-09-02', 'Av. São Gabriel', 11),
(22, '2024-10-02', 'Rua João Cachoeira', 20),
(23, '2024-11-02', 'Av. Brasil', 3),
(24, '2024-12-02', 'Rua Oscar Freire', 14),
(25, '2024-01-03', 'Av. Nove de Julho', 7),
(26, '2024-02-03', 'Rua Bela Cintra', 6),
(27, '2024-03-03', 'Av. Faria Lima', 17),
(28, '2024-04-03', 'Rua Joaquim Floriano', 2),
(29, '2024-05-03', 'Alameda Santos', 9),
(30, '2024-06-03', 'Av. Rebouças', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `obra`
--

CREATE TABLE `obra` (
  `Id_Obra` int(11) NOT NULL,
  `Tipo` varchar(20) NOT NULL,
  `Valor` float NOT NULL,
  `Tela` varchar(20) DEFAULT NULL,
  `Tintas` varchar(20) NOT NULL,
  `Materiais` varchar(20) DEFAULT NULL,
  `Tamanho` float DEFAULT NULL,
  `Peso` float DEFAULT NULL,
  `Artista_CPF` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `obra`
--

INSERT INTO `obra` (`Id_Obra`, `Tipo`, `Valor`, `Tela`, `Tintas`, `Materiais`, `Tamanho`, `Peso`, `Artista_CPF`) VALUES
(1, 'Pintura', 3000, 'Lona', 'Aquarela', NULL, NULL, NULL, '234.567.890-12'),
(2, 'Escultura', 2700, NULL, 'Óleo', 'Madeira', 2.01, 64.21, '234.567.890-12'),
(3, 'Escultura', 3200, NULL, 'Acrílica', 'Gesso', 1.75, 47.8, '321.098.765-39'),
(4, 'Pintura', 2800, 'Tecido', 'Aquarela', NULL, NULL, NULL, '321.098.765-39'),
(5, 'Escultura', 3900, NULL, 'Óleo', 'Bronze', 1.95, 72.89, '342.851.379-51'),
(6, 'Pintura', 3700, 'Papel', 'Aquarela', NULL, NULL, NULL, '342.851.379-51'),
(7, 'Pintura', 1500, 'Madeira', 'Acrílica', NULL, NULL, NULL, '345.678.901-23'),
(8, 'Escultura', 1700, NULL, 'Óleo', 'Madeira', 1.8, 61.4, '345.678.901-23'),
(9, 'Pintura', 2200, 'Lona', 'Acrílica', NULL, NULL, NULL, '432.109.876-49'),
(10, 'Pintura', 2600, 'Papel', 'Aquarela', NULL, NULL, NULL, '432.109.876-49'),
(11, 'Pintura', 2900, 'Madeira', 'Óleo', NULL, NULL, NULL, '456.789.012-34'),
(12, 'Pintura', 3100, 'Tecido', 'Acrílica', NULL, NULL, NULL, '456.789.012-34'),
(13, 'Escultura', 2000, NULL, 'Aquarela', 'Metal', 2.1, 85.6, '543.210.987-59'),
(14, 'Pintura', 2400, 'Papel', 'Óleo', NULL, NULL, NULL, '543.210.987-59'),
(15, 'Escultura', 1800, NULL, 'Acrílica', 'Cerâmica', 1.9, 55.2, '567.890.123-45'),
(16, 'Escultura', 2100, NULL, 'Aquarela', 'Mármore', 1.95, 68.9, '567.890.123-45'),
(17, 'Escultura', 2300, NULL, 'Óleo', 'Madeira', 1.8, 61.4, '654.321.098-69'),
(18, 'Pintura', 2700, 'Papel', 'Acrílica', NULL, NULL, NULL, '654.321.098-69'),
(19, 'Escultura', 1900, NULL, 'Aquarela', 'Cerâmica', 1.9, 55.2, '678.901.234-56'),
(20, 'Pintura', 2200, 'Tecido', 'Óleo', NULL, NULL, NULL, '678.901.234-56'),
(21, 'Pintura', 1500, 'Lona', 'Acrílica', NULL, NULL, NULL, '765.432.109-79'),
(22, 'Escultura', 1700, NULL, 'Aquarela', 'Argila', 1.7, 45.32, '765.432.109-79'),
(23, 'Escultura', 1300, NULL, 'Óleo', 'Bronze', 1.95, 72.89, '789.012.345-67'),
(24, 'Escultura', 1600, NULL, 'Acrílica', 'Argila', 1.7, 45.32, '789.012.345-67'),
(25, 'Pintura', 1100, 'Lona', 'Aquarela', NULL, NULL, NULL, '876.543.210-89'),
(26, 'Escultura', 1400, NULL, 'Óleo', 'Metal', 2.1, 85.6, '876.543.210-89'),
(27, 'Pintura', 1200, 'Madeira', 'Acrílica', NULL, NULL, NULL, '890.123.456-78'),
(28, 'Escultura', 1500, NULL, 'Aquarela', 'Madeira', 1.8, 61.4, '890.123.456-78'),
(29, 'Escultura', 1000, NULL, 'Óleo', 'Cerâmica', 1.9, 55.2, '901.234.567-89'),
(30, 'Pintura', 1900, 'Papel', 'Acrílica', NULL, NULL, NULL, '987.654.321-99');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`CPF`),
  ADD UNIQUE KEY `CPF_UNIQUE` (`CPF`);

--
-- Índices de tabela `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`Id_Cidade`),
  ADD UNIQUE KEY `idCidade_UNIQUE` (`Id_Cidade`);

--
-- Índices de tabela `encontro`
--
ALTER TABLE `encontro`
  ADD PRIMARY KEY (`Artista_CPF`,`Exposição_Id_Exposição`),
  ADD KEY `fk_Artista_has_Exposição_Exposição1_idx` (`Exposição_Id_Exposição`),
  ADD KEY `fk_Artista_has_Exposição_Artista1_idx` (`Artista_CPF`);

--
-- Índices de tabela `exposição`
--
ALTER TABLE `exposição`
  ADD PRIMARY KEY (`Id_Exposição`),
  ADD UNIQUE KEY `idExposição_UNIQUE` (`Id_Exposição`),
  ADD KEY `fk_Exposição_Cidade_idx` (`Cidade_Id_Cidade`);

--
-- Índices de tabela `obra`
--
ALTER TABLE `obra`
  ADD PRIMARY KEY (`Id_Obra`),
  ADD UNIQUE KEY `idObra_UNIQUE` (`Id_Obra`),
  ADD KEY `fk_Obra_Artista1_idx` (`Artista_CPF`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cidade`
--
ALTER TABLE `cidade`
  MODIFY `Id_Cidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `exposição`
--
ALTER TABLE `exposição`
  MODIFY `Id_Exposição` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `obra`
--
ALTER TABLE `obra`
  MODIFY `Id_Obra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `encontro`
--
ALTER TABLE `encontro`
  ADD CONSTRAINT `fk_Artista_has_Exposição_Artista1` FOREIGN KEY (`Artista_CPF`) REFERENCES `artista` (`CPF`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Artista_has_Exposição_Exposição1` FOREIGN KEY (`Exposição_Id_Exposição`) REFERENCES `exposição` (`Id_Exposição`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `exposição`
--
ALTER TABLE `exposição`
  ADD CONSTRAINT `fk_Exposição_Cidade` FOREIGN KEY (`Cidade_Id_Cidade`) REFERENCES `cidade` (`Id_Cidade`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `obra`
--
ALTER TABLE `obra`
  ADD CONSTRAINT `fk_Obra_Artista1` FOREIGN KEY (`Artista_CPF`) REFERENCES `artista` (`CPF`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
