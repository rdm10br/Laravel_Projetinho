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
-- Table structure for table `carrinho_has_pedidos`
--

DROP TABLE IF EXISTS `carrinho_has_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `carrinho_has_pedidos` (
  `carrinho_id_carrinho` int(11) NOT NULL,
  `carrinho_estoque_id_estoque` int(11) NOT NULL,
  `pedidos_id_ped` int(11) NOT NULL,
  `pedidos_estoque_id_estoque` int(11) NOT NULL,
  PRIMARY KEY (`carrinho_id_carrinho`,`carrinho_estoque_id_estoque`,`pedidos_id_ped`,`pedidos_estoque_id_estoque`),
  KEY `fk_carrinho_has_pedidos_pedidos1_idx` (`pedidos_id_ped`,`pedidos_estoque_id_estoque`),
  KEY `fk_carrinho_has_pedidos_carrinho1_idx` (`carrinho_id_carrinho`,`carrinho_estoque_id_estoque`),
  CONSTRAINT `fk_carrinho_has_pedidos_carrinho1` FOREIGN KEY (`carrinho_id_carrinho`, `carrinho_estoque_id_estoque`) REFERENCES `carrinho` (`id_carrinho`, `estoque_id_estoque`),
  CONSTRAINT `fk_carrinho_has_pedidos_pedidos1` FOREIGN KEY (`pedidos_id_ped`, `pedidos_estoque_id_estoque`) REFERENCES `pedidos` (`id_ped`, `estoque_id_estoque`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrinho_has_pedidos`
--

LOCK TABLES `carrinho_has_pedidos` WRITE;
/*!40000 ALTER TABLE `carrinho_has_pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrinho_has_pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-01  0:20:19
