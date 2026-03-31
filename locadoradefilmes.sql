-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/04/2026 às 01:23
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
-- Banco de dados: `locadoradefilmes`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `cadastro` int(11) NOT NULL,
  `cpf` bigint(11) DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL,
  `historico_aluguel` date DEFAULT NULL,
  `endereco` text DEFAULT NULL,
  `nascimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`cadastro`, `cpf`, `data_cadastro`, `historico_aluguel`, `endereco`, `nascimento`) VALUES
(102220, 12345678901, '2023-01-10', '2023-10-10', 'Rua A, 123 - São Paulo', '1990-05-12'),
(123000, 34567890123, '2023-03-20', '2023-03-21', 'Rua C, 789 - Belo Horizonte', '1992-11-05'),
(125542, 90123456789, '2023-09-22', '2023-09-23', 'Rua I, 606 - Brasília', '1989-06-17'),
(125547, 89012345678, '2023-08-18', '2023-08-19', 'Av. H, 505 - Fortaleza', '1993-03-22'),
(233522, 45678901234, '2023-04-25', '2023-04-26', 'Av D 101', '1998-02-14'),
(235566, 56789012345, '2023-05-30', '2023-06-02', 'Rua E, 202 - Porto Alegre', '1987-07-19'),
(1022203, 23456789012, '2023-02-15', '2023-03-12', 'Av. B, 456 - Rio de Janeiro', '1985-08-23'),
(1235522, 67890123456, '2023-06-10', '2023-06-11', 'Av. F, 303 - Salvador', '1995-09-30'),
(1255483, 1234567890, '2023-10-05', '2023-10-06', 'Av. J, 707 - Manaus', '1996-10-09'),
(23155523, 78901234567, '2023-07-12', '2023-07-13', 'Rua G, 404 - Recife', '1991-12-01');

-- --------------------------------------------------------

--
-- Estrutura para tabela `filme`
--

CREATE TABLE `filme` (
  `codigo` int(11) NOT NULL,
  `data_lancamento` date DEFAULT NULL,
  `genero` varchar(45) DEFAULT NULL,
  `reserva` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `filme`
--

INSERT INTO `filme` (`codigo`, `data_lancamento`, `genero`, `reserva`) VALUES
(100, '2020-01-15', 'Ação', '2023-11-01'),
(1012, '2019-08-27', 'Documentário', '2023-11-19'),
(2231, '2019-06-22', 'Comédia', '2023-11-03'),
(5122, '2022-07-19', 'Ficção Científica', '2023-11-09'),
(6212, '2020-09-30', 'Romance', '2023-11-11'),
(9212, '2021-11-08', 'Suspense', '2023-11-17'),
(32516, '2021-03-10', 'Drama', '2023-11-05'),
(46514, '2018-12-01', 'Terror', '2023-11-07'),
(71212, '2017-05-14', 'Aventura', '2023-11-13'),
(82112, '2023-02-25', 'Animação', '2023-11-15'),
(123456789, '2010-10-20', 'Aventura', '2010-12-30');

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `cnpj` int(11) NOT NULL,
  `contato` int(11) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `prazo_entrega` time DEFAULT NULL,
  `endereco` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `fornecedor`
--

INSERT INTO `fornecedor` (`cnpj`, `contato`, `preco`, `prazo_entrega`, `endereco`) VALUES
(203000, 1187654321, 1500.5, '02:00:00', 'Rua Alpha, 100 - São Paulo'),
(300001, 2147483647, 980, '01:45:00', 'Rua Gama, 300 - Belo Horizonte'),
(311000, 2147483647, 4500.99, '04:15:00', 'Av. Delta, 400 - Curitiba'),
(1545522, 2147483647, 890.9, '01:30:00', 'Av. Theta, 800 - Fortaleza'),
(3011100, 2147483647, 2300.75, '03:30:00', 'Av. Beta, 200 - Rio de Janeiro'),
(3136460, 1987654321, 1200.1, '02:20:00', 'Rua Épsilon, 500 - Porto Alegre'),
(23456789, 989138953, 23.2, '15:10:20', 'Rua 01'),
(42456404, 2147483647, 3100, '05:00:00', 'Av. Zeta, 600 - Salvador'),
(45454154, 2147483647, 2750.35, '03:10:00', 'Rua Eta, 700 - Recife'),
(45475777, 1087654321, 4100, '04:40:00', 'Av. Kappa, 1000 - Manaus'),
(123456789, 2147483647, 23.2, '00:20:10', 'rua 01'),
(223456789, 2147483647, 23.2, '15:10:20', 'Rua 01'),
(475478577, 2147483647, 1999.99, '02:50:00', 'Rua Iota, 900 - Brasília');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `matiricula` int(11) NOT NULL,
  `funcao` varchar(45) DEFAULT NULL,
  `data_inicial` date DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `carga_horaria` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionario`
--

INSERT INTO `funcionario` (`matiricula`, `funcao`, `data_inicial`, `login`, `carga_horaria`) VALUES
(123456789, 'servicos_gerais', '2023-10-15', 'jhosancides123', '15:10:20');

-- --------------------------------------------------------

--
-- Estrutura para tabela `locacao`
--

CREATE TABLE `locacao` (
  `contrato_locacao` int(11) NOT NULL,
  `data_locacao` date DEFAULT NULL,
  `matiricula` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `locacao`
--

INSERT INTO `locacao` (`contrato_locacao`, `data_locacao`, `matiricula`) VALUES
(12345678, '2016-10-20', 123456789);

-- --------------------------------------------------------

--
-- Estrutura para tabela `setor`
--

CREATE TABLE `setor` (
  `numero` int(11) NOT NULL,
  `genero` varchar(45) DEFAULT NULL,
  `vezes_alugado` int(11) DEFAULT NULL,
  `blueray` bit(1) DEFAULT NULL,
  `exemplares` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `setor`
--

INSERT INTO `setor` (`numero`, `genero`, `vezes_alugado`, `blueray`, `exemplares`) VALUES
(123456789, 'Terror', 10, b'0', 20);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sistema`
--

CREATE TABLE `sistema` (
  `id_sistema` int(11) NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `data_acesso` date DEFAULT NULL,
  `locacao_inicio` date DEFAULT NULL,
  `locacao_fim` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sistema`
--

INSERT INTO `sistema` (`id_sistema`, `login`, `data_acesso`, `locacao_inicio`, `locacao_fim`) VALUES
(12356, 'admin', '2026-10-20', '2020-10-30', '2020-10-31');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cadastro`);

--
-- Índices de tabela `filme`
--
ALTER TABLE `filme`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`cnpj`);

--
-- Índices de tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`matiricula`);

--
-- Índices de tabela `locacao`
--
ALTER TABLE `locacao`
  ADD PRIMARY KEY (`contrato_locacao`),
  ADD KEY `fkmatricula_funcionario` (`matiricula`);

--
-- Índices de tabela `setor`
--
ALTER TABLE `setor`
  ADD PRIMARY KEY (`numero`);

--
-- Índices de tabela `sistema`
--
ALTER TABLE `sistema`
  ADD PRIMARY KEY (`id_sistema`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `locacao`
--
ALTER TABLE `locacao`
  ADD CONSTRAINT `fkmatricula_funcionario` FOREIGN KEY (`matiricula`) REFERENCES `funcionario` (`matiricula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
