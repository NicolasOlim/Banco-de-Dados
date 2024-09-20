-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18/06/2024 às 22:10
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
-- Banco de dados: `mandato`
--
CREATE DATABASE IF NOT EXISTS `mandato` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mandato`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `governador_do_estado`
--

CREATE TABLE `governador_do_estado` (
  `cod_estado` int(11) NOT NULL,
  `cpf_governador` varchar(17) NOT NULL,
  `id_governador` int(11) NOT NULL,
  `regiao` varchar(20) NOT NULL,
  `num_habitantes` int(11) NOT NULL,
  `ext_territorial` int(11) NOT NULL,
  `partido` varchar(20) NOT NULL,
  `nome` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `governador_do_estado`
--
ALTER TABLE `governador_do_estado`
  ADD PRIMARY KEY (`id_governador`),
  ADD UNIQUE KEY `cod_estado` (`cod_estado`),
  ADD UNIQUE KEY `cpf_governador` (`cpf_governador`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `governador_do_estado`
--
ALTER TABLE `governador_do_estado`
  MODIFY `id_governador` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
