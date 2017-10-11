-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: exerciciobolao
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.25-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aposta`
--

DROP TABLE IF EXISTS `aposta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aposta` (
  `Idtipojogo` int(1) DEFAULT NULL,
  `Idcartao` int(1) DEFAULT NULL,
  KEY `Idtipojogo` (`Idtipojogo`),
  CONSTRAINT `aposta_ibfk_1` FOREIGN KEY (`Idtipojogo`) REFERENCES `tipojogo` (`Idtipojogo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aposta`
--

LOCK TABLES `aposta` WRITE;
/*!40000 ALTER TABLE `aposta` DISABLE KEYS */;
/*!40000 ALTER TABLE `aposta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolao`
--

DROP TABLE IF EXISTS `bolao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolao` (
  `ValorCota` int(11) DEFAULT NULL,
  `Idbolao` int(11) NOT NULL,
  `NumCota` int(11) DEFAULT NULL,
  PRIMARY KEY (`Idbolao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolao`
--

LOCK TABLES `bolao` WRITE;
/*!40000 ALTER TABLE `bolao` DISABLE KEYS */;
/*!40000 ALTER TABLE `bolao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartao`
--

DROP TABLE IF EXISTS `cartao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cartao` (
  `Idcartao` int(11) NOT NULL,
  `IdJogo` int(11) DEFAULT NULL,
  `DataJogo` date DEFAULT NULL,
  `DataSorteio` date DEFAULT NULL,
  `Numero` int(11) DEFAULT NULL,
  PRIMARY KEY (`Idcartao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartao`
--

LOCK TABLES `cartao` WRITE;
/*!40000 ALTER TABLE `cartao` DISABLE KEYS */;
/*!40000 ALTER TABLE `cartao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cota`
--

DROP TABLE IF EXISTS `cota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cota` (
  `Sim` varchar(3) DEFAULT NULL,
  `IdRG` int(11) DEFAULT NULL,
  `IdBolao` int(11) DEFAULT NULL,
  `Nao` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cota`
--

LOCK TABLES `cota` WRITE;
/*!40000 ALTER TABLE `cota` DISABLE KEYS */;
/*!40000 ALTER TABLE `cota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `numeros`
--

DROP TABLE IF EXISTS `numeros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `numeros` (
  `Idbolao` int(1) DEFAULT NULL,
  `Idcartao` int(1) DEFAULT NULL,
  KEY `Idbolao` (`Idbolao`),
  KEY `Idcartao` (`Idcartao`),
  CONSTRAINT `numeros_ibfk_1` FOREIGN KEY (`Idbolao`) REFERENCES `bolao` (`Idbolao`),
  CONSTRAINT `numeros_ibfk_2` FOREIGN KEY (`Idcartao`) REFERENCES `cartao` (`Idcartao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `numeros`
--

LOCK TABLES `numeros` WRITE;
/*!40000 ALTER TABLE `numeros` DISABLE KEYS */;
/*!40000 ALTER TABLE `numeros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pago` (
  `RG` varchar(50) NOT NULL,
  `Idbolao` int(1) NOT NULL,
  PRIMARY KEY (`RG`,`Idbolao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participantes`
--

DROP TABLE IF EXISTS `participantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participantes` (
  `Email` varchar(40) DEFAULT NULL,
  `nome` varchar(10) DEFAULT NULL,
  `RG` int(11) NOT NULL,
  `Telefone` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`RG`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantes`
--

LOCK TABLES `participantes` WRITE;
/*!40000 ALTER TABLE `participantes` DISABLE KEYS */;
/*!40000 ALTER TABLE `participantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipojogo`
--

DROP TABLE IF EXISTS `tipojogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipojogo` (
  `NumInicial` int(11) DEFAULT NULL,
  `NumFinal` int(11) DEFAULT NULL,
  `Data` date DEFAULT NULL,
  `NumConcurso` int(1) DEFAULT NULL,
  `Nome` varchar(19) DEFAULT NULL,
  `Idtipojogo` int(1) NOT NULL,
  PRIMARY KEY (`Idtipojogo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipojogo`
--

LOCK TABLES `tipojogo` WRITE;
/*!40000 ALTER TABLE `tipojogo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipojogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'exerciciobolao'
--

--
-- Dumping routines for database 'exerciciobolao'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-11 13:34:19
