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
-- Table structure for table `viagem_cidades`
--

DROP TABLE IF EXISTS `viagem_cidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viagem_cidades` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `estado` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viagem_cidades`
--

LOCK TABLES `viagem_cidades` WRITE;
/*!40000 ALTER TABLE `viagem_cidades` DISABLE KEYS */;
INSERT INTO `viagem_cidades` VALUES (1,'Água Boa','MT'),(2,'Alto Garças','MT'),(3,'Arenápolis','MT'),(4,'Barra do Bugres','MT'),(5,'Barra do Garça','MT'),(6,'Brasnorte','MT'),(7,'Cáceres','MT'),(8,'Campo Grande','MS'),(9,'Campo Novo do Parecis','MT'),(10,'Campo Verde','MT'),(11,'Canarana','MT'),(12,'Chapada dos Guimarães','MT'),(13,'Coxim','MS'),(14,'Cuiabá','MT'),(15,'Denise','MT'),(16,'Diamantino','MT'),(17,'Jaciara','MT'),(18,'Jangada','MT'),(19,'Juara','MT'),(20,'Junína','MT'),(21,'Lucas do Rio Verde','MT'),(22,'Nenhuma','SM'),(23,'Nobres','MT'),(24,'Nortelândia','MT'),(25,'Nova Brasilândia','MT'),(26,'Nova Maringá','MT'),(27,'Nova Mutum','MT'),(28,'Nova Olímpia','MT'),(29,'Nova Xavantina','MT'),(30,'Ouro Branco','MT'),(31,'Paranatinga','MT'),(32,'Planalto da Serra','MT'),(33,'Poconé','MT'),(34,'Poxoréu','MT'),(35,'Primavera do Leste','MT'),(36,'Rondonópolis','MT'),(37,'Rosário do Oeste','MT'),(38,'Santiago do Norte','MT'),(39,'São José do Rio Claro','MT'),(40,'Sinop','MT'),(41,'Sorriso','MT'),(42,'Tabaporã','MT'),(43,'Tangará da Serra','MT'),(44,'Varzea Grande','MT');
/*!40000 ALTER TABLE `viagem_cidades` ENABLE KEYS */;
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
