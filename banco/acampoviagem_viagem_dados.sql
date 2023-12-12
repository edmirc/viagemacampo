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
-- Table structure for table `viagem_dados`
--

DROP TABLE IF EXISTS `viagem_dados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viagem_dados` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `qnt` decimal(10,2) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `kminical` int NOT NULL,
  `kmfinal` int NOT NULL,
  `kmrodado` int NOT NULL,
  `consumo` decimal(10,2) NOT NULL,
  `idTipo_id` bigint NOT NULL,
  `idcarro_id` bigint NOT NULL,
  `idcidade_id` bigint NOT NULL,
  `idpagamento_id` bigint NOT NULL,
  `idviagem_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `viagem_dados_idTipo_id_1a274fc4_fk_viagem_tipos_id` (`idTipo_id`),
  KEY `viagem_dados_idcarro_id_1be93c00_fk_viagem_carros_id` (`idcarro_id`),
  KEY `viagem_dados_idcidade_id_30aeb955_fk_viagem_cidades_id` (`idcidade_id`),
  KEY `viagem_dados_idpagamento_id_a4335768_fk_viagem_pagamentos_id` (`idpagamento_id`),
  KEY `viagem_dados_idviagem_id_ee29e154_fk_viagem_nomevaigem_id` (`idviagem_id`),
  CONSTRAINT `viagem_dados_idcarro_id_1be93c00_fk_viagem_carros_id` FOREIGN KEY (`idcarro_id`) REFERENCES `viagem_carros` (`id`),
  CONSTRAINT `viagem_dados_idcidade_id_30aeb955_fk_viagem_cidades_id` FOREIGN KEY (`idcidade_id`) REFERENCES `viagem_cidades` (`id`),
  CONSTRAINT `viagem_dados_idpagamento_id_a4335768_fk_viagem_pagamentos_id` FOREIGN KEY (`idpagamento_id`) REFERENCES `viagem_pagamentos` (`id`),
  CONSTRAINT `viagem_dados_idTipo_id_1a274fc4_fk_viagem_tipos_id` FOREIGN KEY (`idTipo_id`) REFERENCES `viagem_tipos` (`id`),
  CONSTRAINT `viagem_dados_idviagem_id_ee29e154_fk_viagem_nomevaigem_id` FOREIGN KEY (`idviagem_id`) REFERENCES `viagem_nomevaigem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viagem_dados`
--

LOCK TABLES `viagem_dados` WRITE;
/*!40000 ALTER TABLE `viagem_dados` DISABLE KEYS */;
INSERT INTO `viagem_dados` VALUES (1,'2023-12-05',1.00,41.00,0,0,0,0.00,1,2,22,1,9),(2,'2023-11-27',0.00,21.00,0,0,0,0.00,4,2,22,1,9),(3,'2023-11-27',1.00,56.75,0,0,0,0.00,1,2,22,1,9),(4,'2023-11-28',0.00,21.00,0,0,0,0.00,4,2,22,1,9),(5,'2023-11-28',1.00,220.50,0,0,0,0.00,2,2,22,1,9),(6,'2023-11-28',1.00,53.78,0,0,0,0.00,1,2,22,1,9),(7,'2023-11-28',45.27,257.59,34269,34679,410,9.06,5,2,14,1,9),(8,'2023-11-27',0.00,1800.00,0,0,0,0.00,7,2,22,3,9),(9,'2023-11-29',2.00,94.25,0,0,0,0.00,1,2,22,1,9);
/*!40000 ALTER TABLE `viagem_dados` ENABLE KEYS */;
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
