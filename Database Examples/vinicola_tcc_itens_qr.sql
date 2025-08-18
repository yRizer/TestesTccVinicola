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
-- Table structure for table `itens_qr`
--

DROP TABLE IF EXISTS `itens_qr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itens_qr` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_item` varchar(100) NOT NULL,
  `localizacao` varchar(100) NOT NULL,
  `descricao` text NOT NULL,
  `qr_code` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itens_qr`
--

LOCK TABLES `itens_qr` WRITE;
/*!40000 ALTER TABLE `itens_qr` DISABLE KEYS */;
INSERT INTO `itens_qr` VALUES (1,'Parreira Cabernet Sauvignon','Vinhedo Setor A','Essas parreiras foram plantadas em 2005 e produzem uvas Cabernet Sauvignon, conhecidas por seu sabor encorpado e aroma de frutas escuras.','QR001'),(2,'Parreira Syrah','Vinhedo Setor B','As uvas Syrah cultivadas aqui geram vinhos intensos, com notas de especiarias e taninos marcantes.','QR002'),(3,'Barril de Carvalho Francês','Adega 1','Este barril de carvalho francês é usado para envelhecer vinhos tintos, agregando aromas de baunilha e notas amadeiradas.','QR003'),(4,'Tanque de Inox','Área de Produção','Tanques de aço inoxidável mantêm o controle de temperatura, garantindo frescor e pureza no processo de fermentação.','QR004'),(5,'Sala Histórica','Centro de Visitação','Espaço dedicado à história da vinícola, fundada em 1980, preservando documentos e fotografias originais.','QR005'),(6,'Premiação 2018','Hall de Troféus','Em 2018, esta vinícola recebeu medalha de ouro em um concurso internacional pelo Cabernet Sauvignon Reserva.','QR006'),(7,'Jardim Sensorial','Área Externa','Neste jardim, visitantes podem tocar, cheirar e experimentar ervas e frutas usadas para harmonização de vinhos.','QR007'),(8,'Sala de Degustação','Bloco Principal','Ambiente projetado para experiências guiadas de degustação, com temperatura e iluminação controladas.','QR008'),(9,'Garrafa Reserva Cabernet 2019','Loja da Vinícola','Vinho encorpado, com notas de frutas vermelhas maduras e final persistente. Ideal para carnes e queijos fortes.','QR009'),(10,'Espumante Brut Rosé','Loja da Vinícola','Espumante leve e refrescante, com notas de morango e cereja. Produzido pelo método Charmat.','QR010');
/*!40000 ALTER TABLE `itens_qr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-18 16:03:38
