-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18/06/2024 às 22:12
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
-- Banco de dados: `obra`
--
CREATE DATABASE IF NOT EXISTS `obra` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `obra`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `engenheiro`
--

CREATE TABLE `engenheiro` (
  `crea` int(11) NOT NULL,
  `cpf` varchar(17) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `projeto`
--

CREATE TABLE `projeto` (
  `cod_projeto` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `prazo` date DEFAULT NULL,
  `valor` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `realizacao_do_projeto`
--

CREATE TABLE `realizacao_do_projeto` (
  `crea` int(11) NOT NULL,
  `cod_projeto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `engenheiro`
--
ALTER TABLE `engenheiro`
  ADD PRIMARY KEY (`crea`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices de tabela `projeto`
--
ALTER TABLE `projeto`
  ADD PRIMARY KEY (`cod_projeto`);

--
-- Índices de tabela `realizacao_do_projeto`
--
ALTER TABLE `realizacao_do_projeto`
  ADD KEY `crea` (`crea`),
  ADD KEY `cod_projeto` (`cod_projeto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `engenheiro`
--
ALTER TABLE `engenheiro`
  MODIFY `crea` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `projeto`
--
ALTER TABLE `projeto`
  MODIFY `cod_projeto` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `realizacao_do_projeto`
--
ALTER TABLE `realizacao_do_projeto`
  ADD CONSTRAINT `realizacao_do_projeto_ibfk_1` FOREIGN KEY (`crea`) REFERENCES `engenheiro` (`crea`),
  ADD CONSTRAINT `realizacao_do_projeto_ibfk_2` FOREIGN KEY (`cod_projeto`) REFERENCES `projeto` (`cod_projeto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
