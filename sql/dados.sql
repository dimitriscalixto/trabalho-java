-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: sgcm
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

USE `sgcm`;

--
-- Dumping data for table `atendimento`
--

LOCK TABLES `atendimento` WRITE;
/*!40000 ALTER TABLE `atendimento` DISABLE KEYS */;
INSERT INTO `atendimento` VALUES
    (1,'2023-04-20','14:00:00','AGENDADO',1,1,1),
    (2,'2023-04-20','14:00:00','AGENDADO',1,2,3),
    (3,'2023-04-20','14:30:00','AGENDADO',2,3,4),
    (4,'2023-04-20','15:00:00','AGENDADO',3,4,1),
    (5,'2023-04-20','15:00:00','AGENDADO',1,5,5);
/*!40000 ALTER TABLE `atendimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `convenio`
--

LOCK TABLES `convenio` WRITE;
/*!40000 ALTER TABLE `convenio` DISABLE KEYS */;
INSERT INTO `convenio` VALUES
    (1,b'1','46.560.030/0001-53','contato@unimedriobranco.com.br','Unimed','Unimed Rio Branco Cooperativa de Trabalho Médico Ltda.','Thayline Figueredo Vaz','(68) 3668-1546'),
    (2,b'1','29.309.127/0001-79','contato@amil.com.br','Amil','AMIL ASSISTENCIA MEDICA INTERNACIONAL S.A.','Davi Faria da Conceição','(11) 3279-3035'),
    (3,b'1','92.693.118/0001-60','contato@bradescosaude.com.br','Bradesco','BRADESCO SAUDE S.A.','Leandra Paes dos Anjos','(21) 2503-0787');
/*!40000 ALTER TABLE `convenio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `especialidade`
--

LOCK TABLES `especialidade` WRITE;
/*!40000 ALTER TABLE `especialidade` DISABLE KEYS */;
INSERT INTO `especialidade` VALUES
    (1,'Cardiologia'),
    (2,'Dermatologia'),
    (3,'Geriatria'),
    (4,'Infectologia'),
    (5,'Pediatria'),
    (6,'Psiquiatria'),
    (7,'Urologia');
/*!40000 ALTER TABLE `especialidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES
    (1,'69903-134','Rio Branco','1945-09-28','giulia.bencatel@gmail.com','Rua Cedro, 100 - Parque dos Sabiás','AC','AB_POSITIVO','Giulia Farias Bencatel','F','(68) 98105-2583'),
    (2,'69901-884','Rio Branco','1941-04-22','wallace.soriano@yahoo.com','Travessa Mossoró, 90 - Vitória','AC','B_POSITIVO','Wallace Macedo Inácio Soriano','M','(68) 97431-7722'),
    (3,'69909-060','Rio Branco','1997-06-05','helen.vilar@gmail.com','Rua Adelaide, 50 - Rosa Linda','AC','AB_NEGATIVO','Helen Dutra Vilar','F','(68) 99752-4954'),
    (4,'69911-262','Rio Branco','2009-03-10','mario.branco@uol.com.br','Rua Luiz Galvez, 200 - Conjunto Castelo Branco','AC','O_POSITIVO','Jean Schuenck Amorin','M','(68) 97120-8079'),
    (5,'69980-970','Cruzeiro do Sul','1974-11-14','lucilene.lucas@gmail.com','Rua Rego Barros, 427 - Centro','AC','A_POSITIVO','Lucilene Santos Lucas','F','(68) 99384-3354');
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `profissional`
--

LOCK TABLES `profissional` WRITE;
/*!40000 ALTER TABLE `profissional` DISABLE KEYS */;
INSERT INTO `profissional` VALUES
    (1,'monique.nespoli@uol.com.br','Maria Adelia Serravalle Bezerra','CRM/AC 377','(68) 98205-4704',1,1),
    (2,'elielson.andrade@gmail.com','Elielson Silveira Andrade','CRM/AC 455','(68) 98085-4910',1,1),
    (3,'davi.mendes@yahoo.com','Davi Jesus Mendes','CRM/AC 123','(68) 98408-5352',4,3),
    (4,'carla.valle@gmail.com','Carla da Paixão Valle','CRM/AC 234','(68) 98395-5604',3,1),
    (5,'neuza.nobrega@uol.com.br','Neuza Biango Nobrega','CRM/AC 232','(68) 98561-6622',2,2);
/*!40000 ALTER TABLE `profissional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `unidade`
--

LOCK TABLES `unidade` WRITE;
/*!40000 ALTER TABLE `unidade` DISABLE KEYS */;
INSERT INTO `unidade` VALUES
    (1,'Rua Independência, 56 - Conjunto Bela Vista','Bela Vista'),
    (2,'Rua Paulo VI, 100 - Bosque','Bosque'),
    (3,'Rua Rui Barbosa, 252 - Centro','Cruzeiro do Sul');
/*!40000 ALTER TABLE `unidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES
    (1,b'1','Administrador','daniel','ADMIN',NULL),
    (2,b'1','Daniel','admin','ADMIN',NULL),
    (3,b'1','Paulo','paulo','ATENDENTE',NULL),
    (4,b'1','Limeira','limeira','ADMIN',NULL);

/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
