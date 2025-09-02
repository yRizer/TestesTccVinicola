CREATE DATABASE  IF NOT EXISTS `vinicola_tcc` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vinicola_tcc`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: vinicola_tcc
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `imagens_itens`
--

DROP TABLE IF EXISTS `imagens_itens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagens_itens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_id` int NOT NULL,
  `imagem_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `imagens_itens_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `itens_qr` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagens_itens`
--

LOCK TABLES `imagens_itens` WRITE;
/*!40000 ALTER TABLE `imagens_itens` DISABLE KEYS */;
INSERT INTO `imagens_itens` VALUES (1,1,'https://placehold.co/800x533/FFDDDD/333.jpg?text=Parreira+Cabernet+1&font=roboto'),(2,1,'https://placehold.co/800x800/DDFFDD/222.jpg?text=Parreira+Cabernet+2&font=roboto'),(3,2,'https://placehold.co/800x533/DDDDFF/111.jpg?text=Parreira+Syrah+1&font=roboto'),(4,2,'https://placehold.co/800x1200/FFEEDD/222.jpg?text=Parreira+Syrah+2&font=roboto'),(5,3,'https://placehold.co/800x533/F5F5DC/333.jpg?text=Barril+Carvalho+Frances+1&font=roboto'),(6,3,'https://placehold.co/800x800/DDEEFF/222.jpg?text=Barril+Carvalho+Frances+2&font=roboto'),(7,3,'https://placehold.co/800x1200/E0FFE0/111.jpg?text=Barril+Carvalho+Frances+3&font=roboto'),(8,4,'https://placehold.co/800x533/C0C0C0/000.jpg?text=Tanque+Inox+1&font=roboto'),(9,4,'https://placehold.co/800x800/EEEEEE/333.jpg?text=Tanque+Inox+2&font=roboto'),(10,5,'https://placehold.co/800x533/FFF8DC/111.jpg?text=Sala+Historica+1&font=roboto'),(11,5,'https://placehold.co/800x800/F5DEB3/000.jpg?text=Sala+Historica+2&font=roboto'),(12,6,'https://placehold.co/800x533/E6E6FA/222.jpg?text=Premiacao+2018+1&font=roboto'),(13,6,'https://placehold.co/800x800/FFDAB9/111.jpg?text=Premiacao+2018+2&font=roboto'),(14,7,'https://placehold.co/800x533/98FB98/222.jpg?text=Jardim+Sensorial+1&font=roboto'),(15,7,'https://placehold.co/800x1200/87CEEB/111.jpg?text=Jardim+Sensorial+2&font=roboto'),(16,7,'https://placehold.co/800x800/FFB6C1/000.jpg?text=Jardim+Sensorial+3&font=roboto'),(17,8,'https://placehold.co/800x533/F0FFF0/222.jpg?text=Sala+Degustacao+1&font=roboto'),(18,8,'https://placehold.co/800x800/FFE4E1/111.jpg?text=Sala+Degustacao+2&font=roboto'),(19,9,'https://placehold.co/800x533/FAFAD2/222.jpg?text=Reserva+Cabernet+2019+1&font=roboto'),(20,9,'https://placehold.co/800x800/FFEFD5/111.jpg?text=Reserva+Cabernet+2019+2&font=roboto'),(21,9,'https://placehold.co/800x1200/F5FFFA/000.jpg?text=Reserva+Cabernet+2019+3&font=roboto'),(22,10,'https://placehold.co/800x533/FFF0F5/111.jpg?text=Espumante+Brut+Rose+1&font=roboto'),(23,10,'https://placehold.co/800x800/FFCCE5/000.jpg?text=Espumante+Brut+Rose+2&font=roboto');
/*!40000 ALTER TABLE `imagens_itens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-29 15:13:43
