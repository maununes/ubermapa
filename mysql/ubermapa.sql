-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 08-Fev-2018 às 03:17
-- Versão do servidor: 5.6.36-log
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ubermapa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `requisicao`
--

DROP TABLE IF EXISTS `requisicao`;
CREATE TABLE IF NOT EXISTS `requisicao` (
  `requisicaoid` int(11) NOT NULL,
  `latlng` varchar(80) DEFAULT NULL,
  `raio` int(11) DEFAULT NULL,
  `useragent` varchar(255) DEFAULT NULL,
  `universidadeid` int(11) DEFAULT NULL,
  `data_acesso` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `universidade`
--

DROP TABLE IF EXISTS `universidade`;
CREATE TABLE IF NOT EXISTS `universidade` (
  `universidadeid` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `lat` varchar(40) DEFAULT NULL,
  `lng` varchar(40) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `universidade`
--

INSERT INTO `universidade` (`universidadeid`, `nome`, `descricao`, `lat`, `lng`) VALUES
(1, 'Universidade Potiguar', 'Unidade Salgado Filho', '-5.8142979', '-35.2059481'),
(2, 'Universidade Potiguar', 'Unidade Roberto Freire', '-5.8616348', '-35.192669'),
(3, 'Universidade Potiguar', 'Unidade Nascimento de Castro', '-5.8143186', '-35.2161118');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `requisicao`
--
ALTER TABLE `requisicao`
  ADD PRIMARY KEY (`requisicaoid`);

--
-- Indexes for table `universidade`
--
ALTER TABLE `universidade`
  ADD PRIMARY KEY (`universidadeid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `requisicao`
--
ALTER TABLE `requisicao`
  MODIFY `requisicaoid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `universidade`
--
ALTER TABLE `universidade`
  MODIFY `universidadeid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
