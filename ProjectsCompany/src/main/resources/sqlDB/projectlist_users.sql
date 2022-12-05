-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: projectlist
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active_code` varchar(255) DEFAULT NULL,
  `active` bit(1) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `project_manager` varchar(255) DEFAULT NULL,
  `image_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`),
  KEY `FK17herqt2to4hyl5q5r5ogbxk9` (`image_id`),
  CONSTRAINT `FK17herqt2to4hyl5q5r5ogbxk9` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'c2aec8c3-78db-4b09-9ccc-1f5be2de1d13',_binary '','fakh-nail@yandex.ru','{bcrypt}$2a$10$jvIQLouYcuLaJxoY6yIGJOhQuAA6jrnNBvkQ01/6lgxNkSYMIUKQ.','89510907033','Фахртдинов Наиль Тальгатович',NULL),(2,'8062f4e5-a0b5-48a4-b190-c369a55af92d',_binary '','powepex220@dmonies.com','{bcrypt}$2a$10$F2eWk25u2IWMNW9Wy8xJpOBC8vwJl/S2bWb4GkdrDHk8eJVgJ9jwO','89851234567','Ахунова Лилия Фарвазовна',NULL),(3,'519c64d1-1f0f-4389-9c0a-b402187e74c9',_binary '','tawel42347@edinel.com','{bcrypt}$2a$10$s6JnLjzHG0yFW15FfiUTBOpxHQVWqsLyLX4puw4PBvbAZAsldpeu.','89511234567','Анисимова Ирина Юрьевна',NULL),(4,'b965e6fd-240b-4cef-8d48-2b692f9ee6b3',_binary '','cicid57545@diratu.com','{bcrypt}$2a$10$WhzNL0O.ubzFYq4TPgAbHOHKznb2Y6AAVvxa6Cug/OhfazA/e4g.S','89521234567','Дербина Татьяна Валерьевна',NULL),(5,'98e4719c-692b-4da6-801b-3db8fa354395',_binary '','dejaho4470@edinel.com','{bcrypt}$2a$10$mpDNIgncQZNPqjGKR9.fmOdwSEUkYTXsPNKZHQOTFTE4T0bi9AVg6','89061234567','Полежаева Диана Фаритовна',NULL),(6,'63af41e8-812b-4682-ab41-18983f4600a7',_binary '','geloh54867@eilnews.com','{bcrypt}$2a$10$OCShT3oHZTme5LFEbZawSuG/JLyrnogqVjHOZRLfftbiZ3WXHLiGq','89371234567','Пухова Наталья Борисовна',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-05 14:24:23
