-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29/04/2026 às 00:51
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
-- Banco de dados: `oficina`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `agendamento`
--

CREATE TABLE `agendamento` (
  `id` int(11) NOT NULL,
  `data_hora` date NOT NULL,
  `motivo` text DEFAULT NULL,
  `id_servicos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `carros`
--

CREATE TABLE `carros` (
  `id` int(11) NOT NULL,
  `Marca` text DEFAULT NULL,
  `Placa` text DEFAULT NULL,
  `Modelo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `carros`
--

INSERT INTO `carros` (`id`, `Marca`, `Placa`, `Modelo`) VALUES
(2, 'Chevrolet', 'OAV2Q94', 'Onix'),
(3, 'Chevrolet', 'SKC8F91', 'Cruze'),
(4, 'Chevrolet', 'EUV9C25', 'Tracker'),
(5, 'Volkswagen', 'CNB8E80', 'Gol'),
(6, 'Volkswagen', 'WHQ4A54', 'Polo'),
(7, 'Volkswagen', 'ZJC8V88', 'T-Cross'),
(8, 'Fiat', 'RGG9K28', 'Argo'),
(9, 'Fiat', 'BCO7G81', 'Pulse'),
(10, 'Fiat', 'DEV1F82', 'Cronos'),
(11, 'Hyundai', 'LEY6W86', 'HB20'),
(12, 'Hyundai', 'JOT5T54', 'Creta'),
(13, 'Hyundai', 'CDE7M75', 'Tucson'),
(14, 'Toyota', 'DZH5O67', 'Corolla'),
(15, 'Toyota', 'AGI7P92', 'Hilux'),
(16, 'Toyota', 'LDV5W82', 'RAV4'),
(17, 'Honda', 'QVT9H95', 'Civic'),
(18, 'Honda', 'ZOL5I21', 'HR-V'),
(19, 'Honda', 'XFZ9B82', 'Fit'),
(20, 'Renault', 'QWP2G38', 'Kwid'),
(21, 'Renault', 'KMQ6P63', 'Sandero'),
(22, 'Renault', 'FHW6V51', 'Duster'),
(23, 'Jeep', 'TSQ1U35', 'Renegade'),
(24, 'Jeep', 'GNS7J59', 'Compass'),
(25, 'Jeep', 'XVE8H88', 'Commander'),
(26, 'Ford', 'BEC7F45', 'Ka'),
(27, 'Ford', 'LJC4Q73', 'EcoSport'),
(28, 'Ford', 'QRP7R41', 'Ranger'),
(29, 'Nissan', 'IEI4Y90', 'Kicks'),
(30, 'Nissan', 'BCU2B31', 'Versa'),
(31, 'Nissan', 'DVD3H81', 'Frontier'),
(32, 'Peugeot', 'NZD4G74', '208'),
(33, 'Peugeot', 'VWN2F53', '2008'),
(34, 'Mitsubishi', 'PVL3I69', 'Eclipse Cross'),
(35, 'Kia', 'JKX8J62', 'Sportage'),
(36, 'Kia', 'AAB5Y75', 'Stinger'),
(37, 'BMW', 'MRK0C65', '320i'),
(38, 'Mercedes-Benz', 'EHU8R01', 'C200'),
(39, 'Audi', 'MNS9X35', 'A3'),
(40, 'Volkswagen', 'LJY2D86', 'Virtus'),
(41, 'Chevrolet', 'VIN9L83', 'S10'),
(42, 'Fiat', 'OII2U64', 'Strada'),
(43, 'Toyota', 'BEY6T57', 'Yaris'),
(44, 'Honda', 'HJD0V55', 'City'),
(45, 'Hyundai', 'VTA8P22', 'i30'),
(46, 'Volkswagen', 'FMT4V89', 'Nivus'),
(47, 'Fiat', 'VSL2T81', 'Toro'),
(48, 'Jeep', 'PIF1D46', 'Grand Cherokee'),
(49, 'Chevrolet', 'ZUB3N04', 'Spin'),
(50, 'Ford', 'PVI2M98', 'Territory'),
(51, 'Renault', 'CBQ3K18', 'Captur');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pagamento`
--

CREATE TABLE `pagamento` (
  `id` int(11) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `data_pagamento` date NOT NULL,
  `forma_pagamento` varchar(30) NOT NULL,
  `cliente_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `id` int(11) NOT NULL,
  `Nome` text DEFAULT NULL,
  `Cpf` text DEFAULT NULL,
  `Idade` text DEFAULT NULL,
  `Genero` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `pessoas`
--

INSERT INTO `pessoas` (`id`, `Nome`, `Cpf`, `Idade`, `Genero`) VALUES
(2, 'Ana Silva', '813.720.634-55', '66', 'Feminino'),
(3, 'Bruno Souza', '702.745.893-46', '46', 'Masculino'),
(4, 'Carlos Oliveira', '849.817.634-41', '46', 'Masculino'),
(5, 'Daniela Santos', '423.299.088-73', '33', 'Feminino'),
(6, 'Eduardo Lima', '398.969.287-97', '42', 'Masculino'),
(7, 'Fernanda Costa', '577.021.607-72', '44', 'Feminino'),
(8, 'Gabriel Pereira', '838.989.947-75', '36', 'Masculino'),
(9, 'Helena Martins', '133.487.387-92', '44', 'Feminino'),
(10, 'Igor Alves', '288.846.525-61', '21', 'Masculino'),
(11, 'Juliana Rocha', '287.059.102-00', '18', 'Feminino'),
(12, 'Kevin Fernandes', '172.811.344-01', '30', 'Masculino'),
(13, 'Larissa Gomes', '435.129.577-57', '69', 'Feminino'),
(14, 'Marcos Ribeiro', '017.847.573-49', '33', 'Masculino'),
(15, 'Natalia Carvalho', '575.946.441-82', '27', 'Feminino'),
(16, 'Otávio Mendes', '824.527.442-98', '28', 'Masculino'),
(17, 'Patricia Araujo', '079.920.925-20', '18', 'Feminino'),
(18, 'Rafael Teixeira', '913.433.701-67', '63', 'Masculino'),
(19, 'Sabrina Lopes', '841.514.275-70', '61', 'Feminino'),
(20, 'Thiago Barros', '998.709.593-34', '64', 'Masculino'),
(21, 'Vanessa Pinto', '584.547.947-94', '57', 'Feminino'),
(22, 'André Nascimento', '372.410.424-33', '56', 'Masculino'),
(23, 'Beatriz Cardoso', '463.558.839-40', '46', 'Feminino'),
(24, 'César Moreira', '528.914.971-63', '37', 'Masculino'),
(25, 'Diana Freitas', '694.369.012-40', '55', 'Feminino'),
(26, 'Emilio Castro', '775.997.375-61', '32', 'Masculino'),
(27, 'Fabiana Melo', '765.334.620-08', '40', 'Feminino'),
(28, 'Gustavo Nunes', '079.924.548-80', '33', 'Masculino'),
(29, 'Helena Vieira', '302.959.493-92', '35', 'Feminino'),
(30, 'Ivan Correia', '547.745.619-16', '55', 'Masculino'),
(31, 'Jéssica Monteiro', '356.469.929-58', '33', 'Feminino'),
(32, 'Leonardo Farias', '445.507.684-01', '46', 'Masculino'),
(33, 'Mariana Borges', '035.376.953-30', '56', 'Feminino'),
(34, 'Nathalia Ramos', '720.763.100-61', '62', 'Feminino'),
(35, 'Otávio Cunha', '745.382.271-88', '50', 'Masculino'),
(36, 'Paula Dias', '051.741.024-90', '57', 'Feminino'),
(37, 'Renato Machado', '344.968.801-48', '56', 'Masculino'),
(38, 'Simone Azevedo', '834.328.106-36', '38', 'Feminino'),
(39, 'Tiago Cavalcanti', '385.141.781-05', '43', 'Masculino'),
(40, 'Ursula Ferreira', '991.631.222-27', '31', 'Feminino'),
(41, 'Vitor Campos', '048.197.318-40', '20', 'Masculino'),
(42, 'Amanda Braga', '039.169.565-74', '18', 'Feminino'),
(43, 'Breno Marques', '492.699.432-16', '36', 'Masculino'),
(44, 'Camila Paiva', '173.023.845-92', '37', 'Feminino'),
(45, 'Diego Bastos', '800.792.284-96', '47', 'Masculino'),
(46, 'Elaine Godoy', '758.595.278-37', '31', 'Feminino'),
(47, 'Felipe Andrade', '243.972.956-62', '52', 'Masculino'),
(48, 'Giovana Vasconcelos', '855.873.226-45', '69', 'Feminino'),
(49, 'Henrique Soares', '634.837.339-81', '39', 'Masculino'),
(50, 'Isadora Leite', '812.138.657-86', '50', 'Feminino'),
(51, 'João Batista', '473.703.874-10', '48', 'Masculino');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicoexecutado`
--

CREATE TABLE `servicoexecutado` (
  `id` int(11) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `valor_mao_de_obra` decimal(10,2) DEFAULT NULL,
  `ordem_servico_id` int(11) NOT NULL,
  `responsavel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int(11) NOT NULL,
  `data_abertura` date NOT NULL,
  `data_conclusao` date DEFAULT NULL,
  `status` varchar(20) DEFAULT 'aberto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `agendamento`
--
ALTER TABLE `agendamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_servicos` (`id_servicos`);

--
-- Índices de tabela `carros`
--
ALTER TABLE `carros`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`);

--
-- Índices de tabela `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `servicoexecutado`
--
ALTER TABLE `servicoexecutado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `responsavel_id` (`responsavel_id`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agendamento`
--
ALTER TABLE `agendamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `carros`
--
ALTER TABLE `carros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de tabela `pagamento`
--
ALTER TABLE `pagamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de tabela `servicoexecutado`
--
ALTER TABLE `servicoexecutado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `agendamento`
--
ALTER TABLE `agendamento`
  ADD CONSTRAINT `agendamento_ibfk_1` FOREIGN KEY (`id_servicos`) REFERENCES `servicos` (`id`);

--
-- Restrições para tabelas `pagamento`
--
ALTER TABLE `pagamento`
  ADD CONSTRAINT `pagamento_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `servicoexecutado` (`id`);

--
-- Restrições para tabelas `servicoexecutado`
--
ALTER TABLE `servicoexecutado`
  ADD CONSTRAINT `servicoexecutado_ibfk_1` FOREIGN KEY (`responsavel_id`) REFERENCES `agendamento` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
