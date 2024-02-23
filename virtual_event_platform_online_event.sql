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
-- Table structure for table `online_event`
--

DROP TABLE IF EXISTS `online_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `online_event` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `event_name` varchar(45) DEFAULT NULL,
  `event_category` varchar(45) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `event_time` time DEFAULT NULL,
  `event_duration` int DEFAULT NULL,
  `event_image` varchar(255) DEFAULT NULL,
  `event_description` varchar(1500) DEFAULT NULL,
  `event_hosting` varchar(255) DEFAULT NULL,
  `event_price` int DEFAULT NULL,
  `event_total_tickets` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online_event`
--

LOCK TABLES `online_event` WRITE;
/*!40000 ALTER TABLE `online_event` DISABLE KEYS */;
INSERT INTO `online_event` VALUES (1,'A New Way Of Life','Community and Culture','2024-02-19','13:30:00',60,'A New Way Of Life_f78bda15-9ccd-437f-80d1-13f3a8dcf736.jpg',NULL,'standard webinar',100,85),(2,'Earrings Workshop with Bronwyn David','Business','2024-02-20','10:00:00',75,'Earrings Workshop with Bronwyn David_5f0d06c4-7b37-4104-9a0b-d906e9778442.jpg','The Earrings Workshop with Bronwyn David offers a hands-on experience for jewelry enthusiasts to create unique earrings. Suitable for all skill levels, participants learn techniques, materials, and personal style. The workshop connects participants with like-minded individuals, fostering a sense of accomplishment.','training workshop',100,100),(3,'Trainee Program on Leadership','Coaching and Consulting','2024-02-29','13:00:00',120,'Trainee Program on Leadership_13bd5356-a8d8-42c2-92c8-79e194630c3a.jpg','The Trainee Program on Leadership is a comprehensive initiative for aspiring leaders, focusing on essential leadership principles, communication strategies, decision-making processes, and cultivating a positive organizational culture. It includes expert-led sessions, practical skill development, case studies, networking opportunities, and personalized coaching. Enroll today to unlock your full potential in leadership.','training workshop',150,121),(4,'Entrepreneurship Bootcamp','Entrepreneurship','2024-03-02','10:00:00',210,'Entrepreneurship Bootcamp_6d9b5bf2-e575-41ae-907f-0b29fe24eff0.jpg','An Entrepreneurship Bootcamp is an intensive program designed to inspire and guide aspiring entrepreneurs. It covers key topics such as business ideation, planning, strategy, financial literacy, marketing, branding, legal considerations, pitching, and networking. Participants can work on their ideas, receive feedback, and connect with seasoned entrepreneurs and mentors. The program is ideal for early-stage startups and individuals looking to enhance their entrepreneurial skills.','online classes',130,498),(5,'EduNet','Coaching and Consulting','2024-03-01','13:00:00',180,'EduNet_66ef343e-851a-4ec2-b424-2a75f319b09d.jpg','This is Internship classes.','online classes',100,90);
/*!40000 ALTER TABLE `online_event` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-23 23:55:23
