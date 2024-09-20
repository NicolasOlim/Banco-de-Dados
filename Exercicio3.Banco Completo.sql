-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/06/2024 às 19:53
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
-- Banco de dados: `ensino`
--
CREATE DATABASE IF NOT EXISTS `ensino` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ensino`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `escola`
--

CREATE TABLE `escola` (
  `id_Escola` int(11) NOT NULL,
  `Nome` varchar(40) NOT NULL,
  `Endereço` varchar(40) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Telefone` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `escola`
--

INSERT INTO `escola` (`id_Escola`, `Nome`, `Endereço`, `Email`, `Telefone`) VALUES
(1, 'EE BARÃO DE MACAÚBAS', 'RUA DAVI CAMPISTA, 42 - FLORESTA', 'escola.1864@educacao.mg.gov.br', '(31)3222-3534'),
(2, 'EE PROFESSORA AMÉLIA DE CASTRO MONTEIRO', 'RUA SANTO AGOSTINHO, 1381 - SAGRADA FAMÍ', 'escola.1660@educacao.mg.gov.br', '(31)3461-3718'),
(3, 'INSTITUTO DE EDUCAÇÃO DE MINAS GERAIS', 'RUA PERNAMBUCO, 47 - FUNCIONÁRIOS', 'escola.1996@educacao.mg.gov.br', '(31)3013-0150'),
(4, 'EE PROFESSOR ALISSON PEREIRA GUIMARÃES', 'RUA DOS ECONOMISTAS, 612 - ALÍPIO DE MEL', 'escola.582@educacao.mg.gov.br', '(31)3084-0330'),
(5, 'EE PRESIDENTE TANCREDO NEVES', 'RUA FURQUIM WERNECK, 313 - TUPI', 'escola.418@educacao.mg.gov.br', '(31)3184-0050'),
(6, 'EE PROFESSOR CLÓVIS SALGADO', 'AVENIDA DAS CASTANHOLAS, 80 - CONJUNTO C', 'escola.949@educacao.mg.gov.br', '(31)3085-0760'),
(7, 'EE TÉCNICO INDUSTRIAL PROFESSOR FONTES', 'RUA SETE (1), S/N - HORTO', 'escola.281@educacao.mg.gov.br', '(31)3486-2074'),
(8, 'EE PROFESSOR NEIDSON RODRIGUES', 'RUA LARANJA DA TERRA, 0 - PAULO VI', 'escola.342432@educacao.mg.gov.br', '(31)3445-9079'),
(9, 'EE PRESIDENTE DUTRA', 'RUA SETE (2), S/N - HORTO', 'escola.302@educacao.mg.gov.br', '(31)3486-1515'),
(10, 'EE ÁLVARO LAUREANO PIMENTEL', 'RUA JOSÉ OVÍDIO GUERRA, 445 - CARDOSO', 'escola.591@educacao.mg.gov.br', '(31)3383-6831');

-- --------------------------------------------------------

--
-- Estrutura para tabela `professor`
--

CREATE TABLE `professor` (
  `Masp` int(11) NOT NULL,
  `CPF` varchar(20) NOT NULL,
  `Nome` varchar(40) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Telefone` varchar(20) NOT NULL,
  `Disciplina` varchar(30) NOT NULL,
  `id_Escola_Prof` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `professor`
--

INSERT INTO `professor` (`Masp`, `CPF`, `Nome`, `Email`, `Telefone`, `Disciplina`, `id_Escola_Prof`) VALUES
(9127532, '946.578.760-40', 'Filipe Caio Ruan Baptista', 'filipecaca@gmail.com', '(31)9801-7460', 'Química', 6),
(9412587, '179.469.990-20', 'Manuela Gabrielly Fátima Aparício', 'manugaby@outlook.com', '(31)9805-1161', 'Filosofia', 7),
(9451230, '746.800.820-54', 'Heloise Rita Sophia Souza', 'helorita77@gmail.com', '(31)9785-8755', 'Matemática', 6),
(9562104, '416.741.920-37', 'Davi Rodrigo Marcos da Rocha', 'davi88rocha@gmail.com', '(31)9745-0047', 'Português', 8),
(10231047, '004.866.960-14', 'Rebeca Tatiane Cláudia da Rosa', 'rebecatati40@gmail.com', '(31)9775-1054', 'Física', 5),
(10234567, '513.313.510-65', 'Aurora Eloá Gabriela Aparício', 'aurora1987@yahoo.com.br', '(31)9985-7449', 'Química', 4),
(10237854, '607.127.680-25', 'Vera Marina Márcia Ferreira', 'veramarina44@terra.com', '(31)9707-0758', 'Português', 4),
(10457824, '822.584.990-62', 'Cauã Kauê Bernardo Galvão', 'caua@gmail.com', '(31)9885-8745', 'Matemática', 3),
(10547895, '896.408.310-50', 'Benedito Anthony da Rocha', 'beneditorocha2@oi.com.br', '(31)9885-0756', 'Física', 9),
(10742368, '786.817.000-06', 'Débora Melissa Daniela Teixeira', 'debymelissa@gmail.com', '(31)9985-8751', 'Português', 8),
(11004568, '705.732.660-26', 'Fábio Caio Gabriel dos Santos', 'fabio1970@gmail.com', '(31)9889-8762', 'Português', 5),
(11257894, '494.759.630-90', 'Otávio Hugo André Moreira', 'otavio77@gmail.com', '(31)9705-2753', 'Biologia', 4),
(11456852, '514.591.600-02', 'Sophie Luzia da Mota', 'soluiza@outlook.com', '(31)7985-2746', 'Física', 8),
(11458952, '568.020.630-77', 'Breno Diogo Murilo Baptista', 'brenodio13@gmail.com', '(31)9880-1250', 'Matemática', 10),
(11691237, '295.632.700-37', 'Bárbara Milena Sara da Cruz', 'barbarasaracruz@gmail.com', '(31)9999-9759', 'Matemática', 10),
(12794265, '330.822.510-72', 'Márcio Diogo Cavalcanti', 'marciocavalcanti@gmail.com', '(31)9745-2417', 'Biologia', 1),
(12854123, '563.767.530-94', 'Geraldo Carlos Eduardo Tomás Duarte', 'geraldocarlos77@gmail.com', '(31)9800-8748', 'Filosofia', 2),
(12995637, '925.773.460-93', 'Victor Thales Hugo Novaes', 'victorhugo66@outlook.com', '(31)9775-1752', 'Química', 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `escola`
--
ALTER TABLE `escola`
  ADD PRIMARY KEY (`id_Escola`),
  ADD UNIQUE KEY `idEscola_UNIQUE` (`id_Escola`);

--
-- Índices de tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`Masp`,`CPF`),
  ADD UNIQUE KEY `idProfessor_UNIQUE` (`Masp`),
  ADD UNIQUE KEY `CPF_UNIQUE` (`CPF`),
  ADD KEY `fk_Professor_Escola_idx` (`id_Escola_Prof`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `escola`
--
ALTER TABLE `escola`
  MODIFY `id_Escola` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `professor`
--
ALTER TABLE `professor`
  ADD CONSTRAINT `fk_Professor_Escola` FOREIGN KEY (`id_Escola_Prof`) REFERENCES `escola` (`id_Escola`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
