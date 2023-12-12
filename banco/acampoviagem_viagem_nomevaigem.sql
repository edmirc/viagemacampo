-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: acampoviagem
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `viagem_nomevaigem`
--

DROP TABLE IF EXISTS `viagem_nomevaigem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viagem_nomevaigem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) DEFAULT NULL,
  `dataInicial` date DEFAULT NULL,
  `DataFinal` date DEFAULT NULL,
  `atividade` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viagem_nomevaigem`
--

LOCK TABLES `viagem_nomevaigem` WRITE;
/*!40000 ALTER TABLE `viagem_nomevaigem` DISABLE KEYS */;
INSERT INTO `viagem_nomevaigem` VALUES (2,'Mês De Maio','2023-04-25','2023-05-23',0),(3,'Mês De Junho','2023-05-24','2023-06-23',0),(4,'Mês De Julho','2023-06-26','2023-07-21',0),(5,'Agosto 2023','2023-07-24','2023-08-23',0),(6,'Setembro 23','2023-08-24','2023-09-22',0),(7,'Outubro 2023','2023-09-25','2023-10-23',0),(8,'Novembro 2023','2023-10-24','2023-11-23',0),(9,'Dezembro 23','2023-11-24','2023-12-24',1);
/*!40000 ALTER TABLE `viagem_nomevaigem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-11 16:20:03
