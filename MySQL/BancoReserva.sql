-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16/07/2024 às 18:33
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
-- Banco de dados: `loja_eletronicos`
--
CREATE DATABASE IF NOT EXISTS `loja_eletronicos` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `loja_eletronicos`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `itens_de_venda`
--

CREATE TABLE `itens_de_venda` (
  `Cod_Produto` int(11) NOT NULL,
  `Cod_Venda` int(11) NOT NULL,
  `Qtd_Item` int(11) NOT NULL,
  `Valor_Item` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `itens_de_venda`
--

INSERT INTO `itens_de_venda` (`Cod_Produto`, `Cod_Venda`, `Qtd_Item`, `Valor_Item`) VALUES
(10, 1001, 5, 210),
(10, 1002, 1, 210),
(10, 1003, 2, 210),
(10, 1004, 1, 210),
(10, 1007, 1, 210),
(11, 1001, 1, 990.5),
(11, 1008, 2, 990.5),
(12, 1002, 1, 525.99),
(12, 1009, 1, 525.99),
(13, 1004, 1, 735.9),
(13, 1010, 3, 735.9);

--
-- Acionadores `itens_de_venda`
--
DELIMITER $$
CREATE TRIGGER `add_venda` AFTER INSERT ON `itens_de_venda` FOR EACH ROW BEGIN
update produto set Qtd = Qtd - NEW.Qtd_Item where Cod_produto = NEW.Cod_produto;

update venda set Valor_Venda = NEW.Qtd_Item * NEW.Valor_Item + Valor_Venda where Cod_Venda = NEW.Cod_Venda;


END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `att_vendas` AFTER UPDATE ON `itens_de_venda` FOR EACH ROW BEGIN
update venda set Valor_Venda = Qtd_Item * Valor_Item where Cod_Venda = NEW.Cod_Venda;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `itens_de_venda_AFTER_DELETE` AFTER DELETE ON `itens_de_venda` FOR EACH ROW BEGIN
update produto set Qtd = Qtd + OLD.Qtd_Item where Cod_produto = OLD.Cod_produto;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `Cod_Produto` int(11) NOT NULL,
  `Nome_Produto` varchar(30) NOT NULL,
  `Qtd` int(11) NOT NULL,
  `Valor` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`Cod_Produto`, `Nome_Produto`, `Qtd`, `Valor`) VALUES
(10, 'Mouse Gamer Corsair Harpoon PR', 5, 210),
(11, 'Microsoft Office Pro 2022', 18, 1279),
(12, 'HD Externo Seagate Expansion 2', 17, 525.99),
(13, 'Teclado Mecânico Gamer HyperX', 19, 735.9),
(14, 'Mouse sem fio Logitech MX Mast', 27, 439.9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `venda`
--

CREATE TABLE `venda` (
  `Cod_Venda` int(11) NOT NULL,
  `Data_Venda` date NOT NULL,
  `Valor_Venda` double NOT NULL,
  `Id_Vendedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `venda`
--

INSERT INTO `venda` (`Cod_Venda`, `Data_Venda`, `Valor_Venda`, `Id_Vendedor`) VALUES
(1001, '2022-06-22', 2040.5, 101),
(1002, '2022-06-30', 735.99, 102),
(1003, '2022-07-02', 420, 103),
(1004, '2022-06-28', 945.9, 101),
(1007, '2022-07-11', 210, 106),
(1008, '2022-11-02', 1981, 107),
(1009, '2022-01-13', 525.99, 104),
(1010, '2022-04-20', 2207.7, 105);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendedor`
--

CREATE TABLE `vendedor` (
  `Id_Vendedor` int(11) NOT NULL,
  `Nome` varchar(30) NOT NULL,
  `Sexo` char(1) NOT NULL,
  `loja` varchar(50) NOT NULL,
  `Email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `vendedor`
--

INSERT INTO `vendedor` (`Id_Vendedor`, `Nome`, `Sexo`, `loja`, `Email`) VALUES
(101, 'Aldebaran Silva', 'M', 'Loja Centro', 'aldebaran@praticabd.com.br'),
(102, 'Carina Dias', 'F', 'Loja Santo Antônio', 'carina@praticabd.com.br'),
(103, 'Nicolle Cherry', 'F', 'Loja Floresta', 'nicolle@praticabd.com.br'),
(104, 'Gustavo Souza', 'M', 'Loja Primavera', ''),
(105, 'Fernanda Santos', 'F', 'Loja Céu Azul', ''),
(106, 'Ricardo Oliveira', 'M', 'Loja Aurora', ''),
(107, 'Juliana Costa', 'F', 'Loja Lua Cheia', ''),
(108, 'Pedro Lima', 'M', 'Loja Maré Alta', ''),
(109, 'Vanessa Almeida', 'F', 'Loja Harmonia', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `itens_de_venda`
--
ALTER TABLE `itens_de_venda`
  ADD PRIMARY KEY (`Cod_Produto`,`Cod_Venda`),
  ADD KEY `fk_Produto_has_Venda_Venda1_idx` (`Cod_Venda`),
  ADD KEY `fk_Produto_has_Venda_Produto_idx` (`Cod_Produto`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`Cod_Produto`),
  ADD UNIQUE KEY `idProduto_UNIQUE` (`Cod_Produto`);

--
-- Índices de tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`Cod_Venda`),
  ADD UNIQUE KEY `idVenda_UNIQUE` (`Cod_Venda`),
  ADD KEY `fk_Venda_Vendedor1_idx` (`Id_Vendedor`);

--
-- Índices de tabela `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`Id_Vendedor`),
  ADD UNIQUE KEY `idVendedor_UNIQUE` (`Id_Vendedor`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `Cod_Venda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1011;

--
-- AUTO_INCREMENT de tabela `vendedor`
--
ALTER TABLE `vendedor`
  MODIFY `Id_Vendedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `itens_de_venda`
--
ALTER TABLE `itens_de_venda`
  ADD CONSTRAINT `fk_Produto_has_Venda_Produto` FOREIGN KEY (`Cod_Produto`) REFERENCES `produto` (`Cod_Produto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Produto_has_Venda_Venda1` FOREIGN KEY (`Cod_Venda`) REFERENCES `venda` (`Cod_Venda`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `venda`
--
ALTER TABLE `venda`
  ADD CONSTRAINT `fk_Venda_Vendedor1` FOREIGN KEY (`Id_Vendedor`) REFERENCES `vendedor` (`Id_Vendedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
