CREATE DATABASE  IF NOT EXISTS `e-commerce` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `e-commerce`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: e-commerce
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `historico_cliente`
--

DROP TABLE IF EXISTS `historico_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `historico_cliente` (
  `id_log_cliente` int(11) NOT NULL,
  `data_alteracao` datetime NOT NULL,
  `estoque_id_estoque` int(11) NOT NULL,
  `log_cliente_keywords` varchar(30) NOT NULL,
  `hist_id_cliente` int(11) NOT NULL,
  PRIMARY KEY (`id_log_cliente`,`log_cliente_keywords`,`estoque_id_estoque`,`hist_id_cliente`),
  UNIQUE KEY `id_log_cliente_UNIQUE` (`id_log_cliente`) /*!80000 INVISIBLE */,
  KEY `fk_log_cliente_estoque1_idx` (`estoque_id_estoque`),
  KEY `fk_log_cliente_cliente_idx` (`hist_id_cliente`),
  CONSTRAINT `fk_log_cliente_cliente` FOREIGN KEY (`hist_id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `fk_log_cliente_estoque1` FOREIGN KEY (`estoque_id_estoque`) REFERENCES `estoque` (`id_estoque`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_cliente`
--

LOCK TABLES `historico_cliente` WRITE;
/*!40000 ALTER TABLE `historico_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `historico_cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-28  0:12:55
