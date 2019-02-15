-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: vizinf_db
-- ------------------------------------------------------
-- Server version	8.0.14

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
-- Table structure for table `image_server_product`
--

DROP TABLE IF EXISTS `image_server_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `image_server_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_image` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `admin` varchar(30) NOT NULL,
  `problem` tinyint(1) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_server_product`
--

LOCK TABLES `image_server_product` WRITE;
/*!40000 ALTER TABLE `image_server_product` DISABLE KEYS */;
INSERT INTO `image_server_product` VALUES (1,'key_images/1.png','hp_computer_1','김철수',0,''),(2,'key_images/2.png','hp_computer_2','홍길동',0,''),(3,'key_images/56.png','hp_computer_3','이지민',0,''),(10,'key_images/88.png','hp_computer_4','윤제형',1,''),(11,'key_images/109.png','hp_computer_5','김철민',0,''),(12,'key_images/213.png','hp_printer_1','김철수',0,''),(13,'key_images/222.png','hp_printer_2','홍길동',0,''),(14,'key_images/223.png','hp_printer_3','이지민',1,''),(15,'key_images/861.png','hp_printer_4','윤제형',0,''),(19,'key_images/914.png','map_H201','이정민',0,'2.jpg'),(20,'key_images/999.png','map_H202','이정민',0,'3.jpg'),(22,'key_images/900.png','map_floor_1','이정민',0,'1.jpg');
/*!40000 ALTER TABLE `image_server_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-15 15:47:10
