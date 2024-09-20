-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18/07/2024 às 20:19
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
  `Valor_Item` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `itens_de_venda`
--

INSERT INTO `itens_de_venda` (`Cod_Produto`, `Cod_Venda`, `Qtd_Item`, `Valor_Item`) VALUES
(10, 1001, 5, 210.00),
(10, 1002, 1, 210.00),
(10, 1003, 2, 210.00),
(10, 1004, 1, 210.00),
(10, 1007, 1, 210.00),
(11, 1001, 1, 990.50),
(11, 1008, 2, 1279.00),
(12, 1002, 1, 525.99),
(12, 1009, 1, 525.99),
(13, 1004, 1, 735.90),
(13, 1010, 3, 735.90),
(15, 1011, 3, 49.99),
(16, 1012, 2, 79.99),
(17, 1013, 1, 599.00),
(18, 1014, 5, 149.90);

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
-- Estrutura stand-in para view `lucro_venda`
-- (Veja abaixo para a visão atual)
--
CREATE TABLE `lucro_venda` (
`Lucro Total` decimal(32,2)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `most_nome_id_vend`
-- (Veja abaixo para a visão atual)
--
CREATE TABLE `most_nome_id_vend` (
`nome` varchar(30)
,`Id_Vendedor` int(11)
,`loja` varchar(50)
);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `Cod_Produto` int(11) NOT NULL,
  `Nome_Produto` varchar(30) NOT NULL,
  `Qtd` int(11) NOT NULL,
  `Valor` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`Cod_Produto`, `Nome_Produto`, `Qtd`, `Valor`) VALUES
(10, 'Mouse Gamer Corsair Harpoon PR', 3, 231.00),
(11, 'Microsoft Office Pro 2022', 16, 1406.90),
(12, 'HD Externo Seagate Expansion 2', 16, 578.59),
(13, 'Teclado Mecânico Gamer HyperX', 15, 809.49),
(15, 'Mouse DELL', 17, 54.99),
(16, 'Teclado Logitech', 13, 87.99),
(17, 'Monitor Samsung 24\"', 7, 1600.00),
(18, 'HD Externo 1TB', 7, 164.89),
(19, 'Notebook Lenovo', 5, 4702.49),
(20, 'Smartphone Samsung Galaxy S20', 10, 1098.90),
(21, 'Impressora HP Deskjet', 6, 142.99),
(22, 'Fone de Ouvido Bluetooth', 25, 31.71),
(23, 'Câmera Canon EOS', 3, 1428.90),
(24, 'Tablet Apple iPad', 7, 768.90);

-- --------------------------------------------------------

--
-- Estrutura para tabela `venda`
--

CREATE TABLE `venda` (
  `Cod_Venda` int(11) NOT NULL,
  `Data_Venda` date NOT NULL,
  `Valor_Venda` decimal(10,2) NOT NULL,
  `Id_Vendedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `venda`
--

INSERT INTO `venda` (`Cod_Venda`, `Data_Venda`, `Valor_Venda`, `Id_Vendedor`) VALUES
(1001, '2022-06-22', 2040.50, 101),
(1002, '2022-06-30', 735.99, 102),
(1003, '2022-07-02', 420.00, 103),
(1004, '2022-06-28', 945.90, 101),
(1007, '2022-07-11', 210.00, 106),
(1008, '2022-11-02', 2558.00, 107),
(1009, '2022-01-13', 525.99, 104),
(1010, '2022-04-20', 2207.70, 105),
(1011, '2022-04-23', 149.97, 109),
(1012, '2022-05-15', 159.98, 110),
(1013, '2022-06-02', 599.00, 111),
(1014, '2022-06-20', 749.50, 109);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendedor`
--

CREATE TABLE `vendedor` (
  `Id_Vendedor` int(11) NOT NULL,
  `Nome` varchar(30) NOT NULL,
  `Sexo` char(1) NOT NULL,
  `loja` varchar(50) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Data_De_Nascimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `vendedor`
--

INSERT INTO `vendedor` (`Id_Vendedor`, `Nome`, `Sexo`, `loja`, `Email`, `Data_De_Nascimento`) VALUES
(101, 'Aldebaran Silva', 'M', 'Loja Centro', 'aldebaran@gghardware.com.br', '2001-03-15'),
(102, 'Carina Dias', 'F', 'Loja Santo Antônio', 'carina@gghardware.com.br', '2002-05-25'),
(103, 'Nicolle Cherry', 'F', 'Loja Floresta', 'nicolle@gghardware.com.br', '2003-07-10'),
(104, 'Gustavo Souza', 'M', 'Loja Santo Antônio', 'gustavo@gghardware.com.br', '2004-09-20'),
(105, 'Fernanda Santos', 'F', 'Loja Floresta', 'fernanda@gghardware.com.br', '1995-11-30'),
(106, 'Ricardo Oliveira', 'M', 'Loja Floresta', 'ricardo@gghardware.com.br', '1996-01-08'),
(107, 'Juliana Costa', 'F', 'Loja Centro', 'juliana@gghardware.com.br', '1997-02-17'),
(109, 'Vanessa Almeida', 'F', 'Loja Centro', 'vanessa@gghardware.com.br', '1999-06-15'),
(110, 'Nicolas de Oliveira', 'M', 'loja Centro', 'nicolas@gghardware.com.br', '2007-01-27'),
(111, 'Moe Szyslak', 'M', 'Loja Santo Antônio', 'moebar_duff@gghardware.com.br', '2000-10-05');

-- --------------------------------------------------------

--
-- Estrutura para view `lucro_venda`
--
DROP TABLE IF EXISTS `lucro_venda`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lucro_venda`  AS SELECT sum(`venda`.`Valor_Venda`) AS `Lucro Total` FROM `venda` ;

-- --------------------------------------------------------

--
-- Estrutura para view `most_nome_id_vend`
--
DROP TABLE IF EXISTS `most_nome_id_vend`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `most_nome_id_vend`  AS SELECT `vendedor`.`Nome` AS `nome`, `vendedor`.`Id_Vendedor` AS `Id_Vendedor`, `vendedor`.`loja` AS `loja` FROM `vendedor` WHERE `vendedor`.`loja` like '%Centro' ORDER BY rand() ASC ;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `itens_de_venda`
--
ALTER TABLE `itens_de_venda`
  ADD UNIQUE KEY `Cod_Produto_2` (`Cod_Produto`,`Cod_Venda`),
  ADD KEY `Cod_Produto` (`Cod_Produto`),
  ADD KEY `Cod_Venda` (`Cod_Venda`);

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
  MODIFY `Cod_Venda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1016;

--
-- AUTO_INCREMENT de tabela `vendedor`
--
ALTER TABLE `vendedor`
  MODIFY `Id_Vendedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `itens_de_venda`
--
ALTER TABLE `itens_de_venda`
  ADD CONSTRAINT `itens_de_venda_ibfk_1` FOREIGN KEY (`Cod_Venda`) REFERENCES `venda` (`Cod_Venda`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `itens_de_venda_ibfk_2` FOREIGN KEY (`Cod_Produto`) REFERENCES `produto` (`Cod_Produto`);

--
-- Restrições para tabelas `venda`
--
ALTER TABLE `venda`
  ADD CONSTRAINT `fk_Venda_Vendedor1` FOREIGN KEY (`Id_Vendedor`) REFERENCES `vendedor` (`Id_Vendedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
