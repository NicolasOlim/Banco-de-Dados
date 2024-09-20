-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/06/2024 às 19:08
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
-- Banco de dados: `ensino_tecnico`
--
CREATE DATABASE IF NOT EXISTS `ensino_tecnico` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ensino_tecnico`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluno`
--

CREATE TABLE `aluno` (
  `cod_aluno` int(11) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `idade` int(11) NOT NULL,
  `sexo` char(1) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `aluno`
--

INSERT INTO `aluno` (`cod_aluno`, `cpf`, `nome`, `idade`, `sexo`, `email`) VALUES
(100, '974.796.416-30', 'Doracy Dantas Holtz', 23, 'F', 'doradora@hotmail.com'),
(101, '926.489.686-44', 'José Maria Florencio', 21, 'M', 'jose_98@gmail.com'),
(102, '044.638.246-99', 'Nivaldo De Oliveira', 16, 'M', 'nivaldo_oliveira16@outlook.com'),
(103, '359.089.126-20', 'Jacqueline Morelo', 19, 'F', 'jacq_morelo@gmail.com'),
(104, '908.802.376-00', 'Ellen Cristina Andrade', 20, 'F', 'ellencris@gmail.com'),
(105, '091.382.016-40', 'Paulo Antonio Siqueira', 23, 'M', 'pasiqueira@yahoo.com.br'),
(106, '676.677.996-95', 'Denise Ferrari', 17, 'F', 'denisefe17@gmail.com'),
(107, '227.534.276-15', 'Elenito Duarte', 17, 'M', 'elenito2000@gmail.com'),
(108, '800.156.516-57', 'Oseas Ferraz', 22, 'M', 'oseas_ferraz@outlook.com'),
(109, '097.624.216-80', 'Daysi Martins', 18, 'F', 'lindinha2005@hotmail.com'),
(110, '179.467.476-40', 'Nilza Alves de Oliveira', 20, 'F', 'nilza_alvez55@gmail.com'),
(111, '619.080.016-58', 'Lilian Freitas Martins', 21, 'F', 'lili_martins@outlook.com'),
(112, '300.092.206-74', 'Renato Ribeiro Ruela', 16, 'M', 'rena_ruela@gmail.com'),
(113, '375.797.176-03', 'Francisco Candido', 19, 'M', 'francisco_fran@gmail.com'),
(114, '665.678.816-58', 'José M Guedes Junior', 25, 'M', 'jose_junior@yahoo.com'),
(115, '457.197.896-00', 'Adilson M Baltazar', 24, 'M', 'adilson_metal@gmail.com'),
(116, '990.736.496-76', 'Dirceu Cordeiro Araujo', 17, 'M', 'dirceu_cordeiro@gmail.com'),
(117, '601.264.596-14', 'Richard Correa', 33, 'M', 'richard_777@outlook.com'),
(118, '969.153.626-90', 'Edlaine de T Stheling', 17, 'F', 'edlaine_sthe@gmail.com'),
(119, '539.892.876-72', 'Wanda Helena Baltazar', 21, 'F', 'wandavision@gmail.com'),
(120, '348.526.336-22', 'Adriana Moraes Guedes', 38, 'F', 'drika_moraes@gmail.com'),
(121, '366.585.606-09', 'Wania Freitas', 30, 'F', 'wania_fefe2@outlook.com'),
(122, '689.155.556-60', 'Maria Freitas Rodrigues', 19, 'F', 'maria_roro@gmail.com'),
(123, '299.622.916-90', 'Carla Gonzaga Casal', 16, 'F', 'carla_casal@hotmail.com'),
(124, '267.357.366-64', 'Natanael Salles de Souza', 18, 'M', 'natanal_salles@gmail.com'),
(125, '684.985.656-18', 'Sueli Machado Pereira', 18, 'F', 'sueli_pereira@outlook.com'),
(126, '572.290.516-06', 'Maria B Da Silva', 16, 'F', 'mariadb_silva@gmail.com'),
(127, '886.013.056-52', 'Marcia Nunes Ketle', 18, 'F', 'marcia_nunesk@gmail.com'),
(128, '111.471.216-72', 'Oswaldo F Dos Santos', 19, 'M', 'oswaldin19@gmail.com'),
(129, '264.380.336-18', 'Emanuel Carlos da Luz', 21, 'M', 'emanuel_luz@gmail.com'),
(130, '123.456.789-00', 'João Silva', 20, 'M', 'joao.silva@gmail.com'),
(131, '234.567.890-12', 'Maria Oliveira', 19, 'F', 'maria.oliveira@hotmail.com'),
(132, '345.678.901-23', 'Carlos Souza', 22, 'M', 'carlos.souza@yahoo.com'),
(133, '456.789.012-34', 'Luciana Costa', 21, 'F', 'luciana.costa@outlook.com'),
(134, '567.890.123-45', 'Marcos Paulo', 24, 'M', 'marcos.paulo@gmail.com'),
(135, '678.901.234-56', 'Patricia Lima', 18, 'F', 'patricia.lima@hotmail.com'),
(136, '789.012.345-67', 'Fernando Santos', 23, 'M', 'fernando.santos@yahoo.com'),
(137, '890.123.456-78', 'Ana Paula', 20, 'F', 'ana.paula@outlook.com'),
(138, '901.234.567-89', 'Roberto Ribeiro', 21, 'M', 'roberto.ribeiro@gmail.com'),
(139, '012.345.678-90', 'Juliana Mendes', 19, 'F', 'juliana.mendes@hotmail.com'),
(140, '112.233.445-56', 'Ricardo Almeida', 22, 'M', 'ricardo.almeida@yahoo.com'),
(141, '223.344.556-67', 'Aline Ferreira', 20, 'F', 'aline.ferreira@outlook.com'),
(142, '334.455.667-78', 'Pedro Henrique', 23, 'M', 'pedro.henrique@gmail.com'),
(143, '445.566.778-89', 'Carla Nunes', 21, 'F', 'carla.nunes@hotmail.com'),
(144, '556.677.889-90', 'Diego Rocha', 19, 'M', 'diego.rocha@yahoo.com'),
(145, '667.788.990-01', 'Sandra Regina', 24, 'F', 'sandra.regina@outlook.com'),
(146, '778.899.101-12', 'Gustavo Azevedo', 20, 'M', 'gustavo.azevedo@gmail.com'),
(147, '889.910.112-23', 'Bruna Martins', 18, 'F', 'bruna.martins@hotmail.com'),
(148, '990.101.223-34', 'Thiago Lima', 22, 'M', 'thiago.lima@yahoo.com'),
(149, '101.112.334-45', 'Isabela Souza', 21, 'F', 'isabela.souza@outlook.com'),
(150, '112.223.445-56', 'Fabio Pereira', 19, 'M', 'fabio.pereira@gmail.com'),
(151, '123.334.556-67', 'Renata Carvalho', 20, 'F', 'renata.carvalho@hotmail.com'),
(152, '134.445.667-78', 'Vinicius Costa', 23, 'M', 'vinicius.costa@yahoo.com'),
(153, '145.556.778-89', 'Simone Oliveira', 21, 'F', 'simone.oliveira@outlook.com'),
(154, '156.667.889-90', 'Felipe Santos', 19, 'M', 'felipe.santos@gmail.com'),
(155, '167.778.990-01', 'Andreia Almeida', 24, 'F', 'andreia.almeida@hotmail.com'),
(156, '178.889.101-12', 'Rafael Castro', 20, 'M', 'rafael.castro@yahoo.com'),
(157, '189.910.112-23', 'Juliana Barros', 18, 'F', 'juliana.barros@outlook.com'),
(158, '199.101.223-34', 'Leonardo Lima', 22, 'M', 'leonardo.lima@gmail.com'),
(159, '209.112.334-45', 'Mariana Silva', 21, 'F', 'mariana.silva@hotmail.com'),
(160, '219.223.445-56', 'Eduardo Souza', 19, 'M', 'eduardo.souza@yahoo.com'),
(161, '229.334.556-67', 'Laura Martins', 20, 'F', 'laura.martins@outlook.com'),
(162, '239.445.667-78', 'Lucas Oliveira', 23, 'M', 'lucas.oliveira@gmail.com'),
(163, '249.556.778-89', 'Ana Clara', 21, 'F', 'ana.clara@hotmail.com'),
(164, '259.667.889-90', 'Bruno Fernandes', 19, 'M', 'bruno.fernandes@yahoo.com'),
(165, '269.778.990-01', 'Fernanda Lima', 24, 'F', 'fernanda.lima@outlook.com'),
(166, '279.889.101-12', 'Gabriel Silva', 20, 'M', 'gabriel.silva@gmail.com'),
(167, '289.910.112-23', 'Sofia Costa', 18, 'F', 'sofia.costa@hotmail.com'),
(168, '299.101.223-34', 'Daniel Almeida', 22, 'M', 'daniel.almeida@yahoo.com'),
(169, '309.112.334-45', 'Roberta Souza', 21, 'F', 'roberta.souza@outlook.com'),
(170, '319.223.445-56', 'Adriano Pereira', 19, 'M', 'adriano.pereira@gmail.com'),
(171, '329.334.556-67', 'Jessica Nunes', 20, 'F', 'jessica.nunes@hotmail.com'),
(172, '339.445.667-78', 'Samuel Lima', 23, 'M', 'samuel.lima@yahoo.com'),
(173, '349.556.778-89', 'Ligia Oliveira', 21, 'F', 'ligia.oliveira@outlook.com'),
(174, '359.667.889-90', 'Antonio Santos', 19, 'M', 'antonio.santos@gmail.com'),
(175, '369.778.990-01', 'Gisele Souza', 24, 'F', 'gisele.souza@hotmail.com'),
(176, '379.889.101-12', 'Henrique Lima', 20, 'M', 'henrique.lima@yahoo.com'),
(177, '389.910.112-23', 'Monica Costa', 18, 'F', 'monica.costa@outlook.com'),
(178, '17839910122334', 'Fernando Almeida', 22, 'M', 'fernando.almeida@gmail.com'),
(179, '409.112.334-45', 'Luana Silva', 21, 'F', 'luana.silva@hotmail.com'),
(180, '419.223.445-56', 'Vitor Souza', 19, 'M', 'vitor.souza@yahoo.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `curso`
--

CREATE TABLE `curso` (
  `cod_curso` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `carga_horaria` int(11) NOT NULL,
  `valor` float NOT NULL,
  `eixo` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `curso`
--

INSERT INTO `curso` (`cod_curso`, `nome`, `carga_horaria`, `valor`, `eixo`) VALUES
(1, 'Técnico em Desenvolvimento de ', 1155, 4399.9, 'Informação e Comunicação'),
(2, 'Técnico em Eletrotécnica', 1440, 3599.5, 'Controle e Processos Industriais'),
(3, 'Técnico em Redes de Computador', 1200, 4200.9, 'Informática e Tecnologias'),
(4, 'Técnico em Segurança do Trabal', 1260, 3100, 'Ambiente, Saúde e Segurança'),
(5, 'Técnico em Mecânica Industrial', 1300, 4150.5, 'Controle e Processos Industriais'),
(6, 'Técnico em Agricultura', 1200, 3290, 'Tecnológico de Recursos Naturais'),
(7, 'Técnico em Panificação', 1000, 2099, 'Tecnológico de Produção Alimentícia'),
(8, 'Técnico em Logística', 900, 1799.9, 'Gestão e Negócios');

-- --------------------------------------------------------

--
-- Estrutura para tabela `matricula`
--

CREATE TABLE `matricula` (
  `id_matricula` int(11) NOT NULL,
  `matricula_cod_aluno` int(11) NOT NULL,
  `matricula_cod_curso` int(11) NOT NULL,
  `data_matricula` date NOT NULL,
  `turno` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `matricula`
--

INSERT INTO `matricula` (`id_matricula`, `matricula_cod_aluno`, `matricula_cod_curso`, `data_matricula`, `turno`) VALUES
(1, 100, 3, '2024-03-12', 'Noite'),
(2, 100, 2, '2024-06-27', 'Manhã'),
(3, 101, 1, '2024-05-21', 'Noite'),
(4, 101, 8, '2024-05-28', 'Manhã'),
(5, 102, 2, '2024-05-30', 'Noite'),
(6, 102, 7, '2024-06-04', 'Tarde'),
(7, 103, 4, '2024-06-09', 'Manhã'),
(8, 103, 8, '2024-06-13', 'Tarde'),
(9, 104, 1, '2024-06-14', 'Noite'),
(10, 104, 5, '2024-06-18', 'Manhã'),
(11, 104, 6, '2024-06-19', 'Tarde'),
(12, 105, 7, '2024-06-28', 'Tarde'),
(13, 106, 2, '2024-07-01', 'Tarde'),
(14, 107, 6, '2024-07-13', 'Tarde'),
(15, 107, 8, '2024-07-15', 'Manhã'),
(16, 108, 3, '2024-07-18', 'Manhã'),
(17, 108, 5, '2024-07-20', 'Noite'),
(18, 108, 7, '2024-07-22', 'Tarde'),
(19, 109, 8, '2024-07-31', 'Tarde'),
(20, 110, 1, '2024-08-01', 'Noite'),
(21, 111, 3, '2024-08-11', 'Manhã'),
(22, 111, 5, '2024-08-13', 'Noite'),
(23, 112, 4, '2024-08-20', 'Manhã'),
(24, 113, 3, '2024-08-27', 'Tarde'),
(25, 113, 8, '2024-09-01', 'Manhã'),
(26, 114, 1, '2024-09-02', 'Tarde'),
(27, 114, 2, '2024-09-03', 'Noite'),
(28, 115, 3, '2024-05-16', 'Noite'),
(29, 115, 7, '2024-05-20', 'Manhã'),
(30, 116, 5, '2024-05-26', 'Manhã'),
(31, 117, 3, '2024-06-01', 'Manhã'),
(32, 117, 7, '2024-06-05', 'Tarde'),
(33, 118, 2, '2024-06-08', 'Tarde'),
(34, 119, 1, '2024-06-15', 'Noite'),
(35, 119, 5, '2024-06-19', 'Manhã'),
(36, 119, 6, '2024-06-20', 'Tarde'),
(37, 120, 8, '2024-06-30', 'Noite'),
(38, 121, 5, '2024-07-05', 'Tarde'),
(39, 121, 6, '2024-07-06', 'Noite'),
(40, 121, 7, '2024-07-07', 'Manhã'),
(41, 122, 2, '2024-07-10', 'Manhã'),
(42, 123, 1, '2024-07-17', 'Tarde'),
(43, 123, 8, '2024-07-24', 'Noite'),
(44, 124, 1, '2024-07-25', 'Manhã'),
(45, 124, 6, '2024-07-30', 'Noite'),
(46, 125, 3, '2024-08-04', 'Tarde'),
(47, 125, 7, '2024-08-08', 'Noite'),
(48, 126, 5, '2024-08-14', 'Noite'),
(49, 127, 3, '2024-08-20', 'Noite'),
(50, 127, 4, '2024-08-21', 'Manhã'),
(51, 127, 8, '2024-08-25', 'Tarde'),
(52, 128, 4, '2024-08-29', 'Noite'),
(53, 129, 5, '2024-09-07', 'Noite'),
(54, 129, 6, '2024-09-08', 'Manhã'),
(55, 129, 7, '2024-09-09', 'Tarde'),
(56, 130, 8, '2024-09-18', 'Tarde'),
(57, 131, 4, '2024-09-22', 'Noite'),
(58, 131, 8, '2024-09-26', 'Manhã'),
(59, 132, 7, '2024-10-03', 'Tarde'),
(60, 133, 3, '2024-10-07', 'Noite'),
(61, 133, 7, '2024-10-11', 'Manhã'),
(62, 134, 2, '2024-10-14', 'Manhã'),
(63, 134, 6, '2024-10-18', 'Tarde'),
(64, 134, 7, '2024-10-19', 'Noite'),
(65, 135, 1, '2024-10-21', 'Tarde'),
(66, 135, 5, '2024-10-25', 'Noite'),
(67, 136, 2, '2024-10-30', 'Tarde'),
(68, 136, 7, '2024-11-04', 'Manhã'),
(69, 137, 1, '2024-11-06', 'Noite'),
(70, 137, 2, '2024-11-07', 'Manhã'),
(71, 137, 3, '2024-11-08', 'Tarde'),
(72, 138, 3, '2024-11-16', 'Manhã'),
(73, 139, 6, '2024-11-27', 'Noite'),
(74, 140, 6, '2024-12-05', 'Tarde'),
(75, 140, 7, '2024-12-06', 'Noite'),
(76, 140, 8, '2024-12-07', 'Manhã'),
(77, 141, 1, '2024-12-08', 'Tarde'),
(78, 142, 2, '2024-12-17', 'Tarde'),
(79, 143, 3, '2024-12-26', 'Tarde'),
(80, 144, 4, '2025-01-04', 'Tarde'),
(81, 145, 5, '2025-01-13', 'Tarde'),
(82, 146, 6, '2025-01-22', 'Tarde'),
(83, 147, 7, '2025-01-31', 'Tarde'),
(84, 148, 8, '2025-02-09', 'Tarde'),
(85, 149, 1, '2025-02-10', 'Noite'),
(86, 149, 8, '2025-02-17', 'Manhã'),
(87, 150, 5, '2025-02-22', 'Noite'),
(88, 150, 6, '2025-02-23', 'Manhã'),
(89, 151, 5, '2025-03-02', 'Tarde'),
(90, 152, 1, '2025-03-06', 'Noite'),
(91, 152, 6, '2025-03-11', 'Tarde'),
(92, 153, 2, '2025-03-15', 'Noite'),
(93, 153, 3, '2025-03-16', 'Manhã'),
(94, 153, 4, '2025-03-17', 'Tarde'),
(95, 154, 2, '2025-03-23', 'Tarde'),
(96, 154, 7, '2025-03-28', 'Manhã'),
(97, 155, 1, '2025-03-30', 'Noite'),
(98, 155, 3, '2025-04-01', 'Tarde'),
(99, 155, 8, '2025-04-06', 'Manhã'),
(100, 156, 5, '2025-04-11', 'Noite'),
(101, 157, 4, '2025-04-18', 'Manhã'),
(102, 158, 1, '2025-04-23', 'Noite'),
(103, 158, 3, '2025-04-25', 'Tarde'),
(104, 159, 6, '2025-05-06', 'Manhã'),
(105, 159, 7, '2025-05-07', 'Tarde'),
(106, 159, 8, '2025-05-08', 'Noite'),
(107, 160, 1, '2025-05-09', 'Manhã'),
(108, 160, 2, '2025-05-10', 'Tarde'),
(109, 160, 3, '2025-05-11', 'Noite'),
(110, 161, 7, '2025-05-23', 'Noite'),
(111, 161, 8, '2025-05-24', 'Manhã'),
(112, 162, 1, '2025-05-25', 'Tarde'),
(113, 162, 5, '2025-05-29', 'Noite'),
(114, 162, 7, '2025-05-31', 'Tarde'),
(115, 163, 3, '2025-06-04', 'Noite'),
(116, 163, 7, '2025-06-08', 'Manhã'),
(117, 164, 4, '2025-06-13', 'Noite'),
(118, 165, 7, '2025-06-24', 'Tarde'),
(119, 165, 8, '2025-06-25', 'Noite'),
(120, 166, 4, '2025-06-29', 'Manhã'),
(121, 166, 5, '2025-06-30', 'Tarde'),
(122, 166, 6, '2025-07-01', 'Noite'),
(123, 167, 1, '2025-07-04', 'Noite'),
(124, 167, 5, '2025-07-08', 'Manhã'),
(125, 168, 2, '2025-07-13', 'Noite'),
(126, 168, 3, '2025-07-14', 'Manhã'),
(127, 169, 4, '2025-07-23', 'Manhã'),
(128, 170, 2, '2025-07-29', 'Manhã'),
(129, 171, 8, '2025-08-12', 'Noite'),
(130, 172, 1, '2025-08-13', 'Manhã'),
(131, 173, 7, '2025-08-27', 'Noite'),
(132, 174, 2, '2025-08-30', 'Noite'),
(133, 175, 6, '2025-09-11', 'Noite'),
(134, 176, 3, '2025-09-16', 'Tarde'),
(135, 177, 5, '2025-09-26', 'Noite'),
(136, 178, 3, '2024-07-31', 'Tarde'),
(137, 179, 2, '2025-10-09', 'Manhã'),
(138, 179, 7, '2025-10-14', 'Noite'),
(139, 180, 6, '2025-10-21', 'Manhã'),
(140, 180, 7, '2025-10-22', 'Tarde'),
(141, 180, 8, '2025-10-23', 'Noite');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`cod_aluno`,`cpf`),
  ADD UNIQUE KEY `idaluno_UNIQUE` (`cod_aluno`),
  ADD UNIQUE KEY `CPF_UNIQUE` (`cpf`);

--
-- Índices de tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`cod_curso`),
  ADD UNIQUE KEY `idcurso_UNIQUE` (`cod_curso`);

--
-- Índices de tabela `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`id_matricula`),
  ADD UNIQUE KEY `id_matricula_UNIQUE` (`id_matricula`),
  ADD KEY `fk_aluno_has_curso_curso1_idx` (`matricula_cod_curso`),
  ADD KEY `fk_aluno_has_curso_aluno_idx` (`matricula_cod_aluno`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `cod_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT de tabela `curso`
--
ALTER TABLE `curso`
  MODIFY `cod_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `matricula`
--
ALTER TABLE `matricula`
  MODIFY `id_matricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `fk_aluno_has_curso_aluno` FOREIGN KEY (`matricula_cod_aluno`) REFERENCES `aluno` (`cod_aluno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_aluno_has_curso_curso1` FOREIGN KEY (`matricula_cod_curso`) REFERENCES `curso` (`cod_curso`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
