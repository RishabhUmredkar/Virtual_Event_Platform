-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: virtual_event_platform
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `venueeventticketbook`
--

DROP TABLE IF EXISTS `venueeventticketbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venueeventticketbook` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `pin_code` int DEFAULT NULL,
  `event_image` varchar(255) DEFAULT NULL,
  `event_name` varchar(45) DEFAULT NULL,
  `event_category` varchar(45) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `event_time` time DEFAULT NULL,
  `event_duration` int DEFAULT NULL,
  `event_description` varchar(1255) DEFAULT NULL,
  `event_address1` varchar(255) DEFAULT NULL,
  `event_address2` varchar(255) DEFAULT NULL,
  `event_city` varchar(255) DEFAULT NULL,
  `event_state` varchar(255) DEFAULT NULL,
  `event_country` varchar(255) DEFAULT NULL,
  `event_pin_code` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `event_card_number` varchar(16) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `cvv` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venueeventticketbook`
--

LOCK TABLES `venueeventticketbook` WRITE;
/*!40000 ALTER TABLE `venueeventticketbook` DISABLE KEYS */;
INSERT INTO `venueeventticketbook` VALUES (1,'Rishabh','Umredkar','rishabhumredkar0@gmail.com','Timki Panchpaoli Nagpur','India','Maharashtra','Nagpur',440018,'Spring Showcase_abdc7faa-fb25-4a24-b6fd-1bbfb1bad1e7.jpg','Spring Showcase','Film and Entertainment','2024-03-08','23:00:00',120,'The Spring Showcase is a vibrant event celebrating creativity, innovation, and community engagement. It features an art exhibition, performing arts extravaganza, innovative spring-themed workshops, a community initiative corner, and a spring fashion show. Attendees include art enthusiasts, performers, families, and anyone looking to embrace the season\'s beauty. The event is suitable for art enthusiasts, performers, and community members.','Kp ground gate 1','gate2','Nagpur','Nagpur','Maharashtra','India',6,2400,400,'101023456','2025-11-01',120);
/*!40000 ALTER TABLE `venueeventticketbook` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-23 23:55:22
