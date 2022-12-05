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
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_of_created` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `project_type` varchar(255) DEFAULT NULL,
  `status_project` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1olf86tl58sibkbmsjvn8xm9p` (`image_id`),
  KEY `FKhswfwa3ga88vxv1pmboss6jhm` (`user_id`),
  CONSTRAINT `FK1olf86tl58sibkbmsjvn8xm9p` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FKhswfwa3ga88vxv1pmboss6jhm` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'2022-12-05 11:55:36','Сокращение ячеек хранения выбранных категорий с целью получения экономии, сокращения потерь на магазинах\r\n','Финансовый','Активный','PBL',1,2),(2,'2022-12-05 11:57:45','Увеличить точность прогноза промо, которая позволит поднять объем продаж магазина, снизить потери в магазине','Финансовый','Активный','Промокалькулятор',2,2),(3,'2022-12-05 12:02:15','Автоматизация процесса подбора на базе ИС «Skillaz»','Качественный','Архивный','Skillaz',3,3),(4,'2022-12-05 12:06:36','Управление ассортиментом [Производство] (Мультиформатное управление)','Финансовый','Приостановленный','Мультиформат 2.0',4,4),(5,'2022-12-05 12:10:48','Автоматизация расчета розничных цен','Финансовый','Активный','Калькулятор ЦО',5,5),(6,'2022-12-05 12:14:27','Экономия ресурсов ДМ при учёте внешнего персонала ТС «Гулливер». Возможность контроля ДМ/УГМ выработки ЧЧ план/факт на определённую дату и за любой период','Качественный','Активный','Доработки программы Таймбук',6,6);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
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
