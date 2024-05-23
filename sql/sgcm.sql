--
-- Current Database: `sgcm`
--

DROP DATABASE IF EXISTS `sgcm`;
CREATE DATABASE `sgcm`;

USE `sgcm`;

SET SESSION FOREIGN_KEY_CHECKS=0;

--
-- Table structure for table `atendimento`
--

DROP TABLE IF EXISTS `atendimento`;
CREATE TABLE `atendimento` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `status` varchar(255) NOT NULL,
  `convenio_id` bigint DEFAULT NULL,
  `paciente_id` bigint NOT NULL,
  `profissional_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_convenio` (`convenio_id`),
  KEY `FK_paciente` (`paciente_id`),
  KEY `FK_profissional` (`profissional_id`),
  CONSTRAINT `FK_paciente` FOREIGN KEY (`paciente_id`) REFERENCES `paciente` (`id`),
  CONSTRAINT `FK_convenio` FOREIGN KEY (`convenio_id`) REFERENCES `convenio` (`id`),
  CONSTRAINT `FK_profissional` FOREIGN KEY (`profissional_id`) REFERENCES `profissional` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `convenio`
--

DROP TABLE IF EXISTS `convenio`;
CREATE TABLE `convenio` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ativo` bit(1) NOT NULL,
  `cnpj` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `razao_social` varchar(255) NOT NULL,
  `representante` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `especialidade`
--

DROP TABLE IF EXISTS `especialidade`;
CREATE TABLE `especialidade` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_nome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
CREATE TABLE `paciente` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cep` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `data_nascimento` date NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `grupo_sanguineo` varchar(255) DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `sexo` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `profissional`
--

DROP TABLE IF EXISTS `profissional`;
CREATE TABLE `profissional` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `registro_conselho` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `especialidade_id` bigint NOT NULL,
  `unidade_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_especialidade` (`especialidade_id`),
  KEY `FK_unidade` (`unidade_id`),
  CONSTRAINT `FK_especialidade` FOREIGN KEY (`especialidade_id`) REFERENCES `especialidade` (`id`),
  CONSTRAINT `FK_unidade` FOREIGN KEY (`unidade_id`) REFERENCES `unidade` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `unidade`
--

DROP TABLE IF EXISTS `unidade`;
CREATE TABLE `unidade` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `endereco` varchar(255) DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_nome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ativo` bit(1) NOT NULL,
  `nome_completo` varchar(255) DEFAULT NULL,
  `nome_usuario` varchar(255) NOT NULL,
  `papel` varchar(255) NOT NULL,
  `senha` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_nome_usuario` (`nome_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
