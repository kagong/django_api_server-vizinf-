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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-02-08 07:31:54.562652'),(2,'auth','0001_initial','2019-02-08 07:31:55.261934'),(3,'admin','0001_initial','2019-02-08 07:31:55.409540'),(4,'admin','0002_logentry_remove_auto_add','2019-02-08 07:31:55.423533'),(5,'admin','0003_logentry_add_action_flag_choices','2019-02-08 07:31:55.431481'),(6,'contenttypes','0002_remove_content_type_name','2019-02-08 07:31:55.534206'),(7,'auth','0002_alter_permission_name_max_length','2019-02-08 07:31:55.662863'),(8,'auth','0003_alter_user_email_max_length','2019-02-08 07:31:55.684804'),(9,'auth','0004_alter_user_username_opts','2019-02-08 07:31:55.691785'),(10,'auth','0005_alter_user_last_login_null','2019-02-08 07:31:55.757609'),(11,'auth','0006_require_contenttypes_0002','2019-02-08 07:31:55.761599'),(12,'auth','0007_alter_validators_add_error_messages','2019-02-08 07:31:55.769578'),(13,'auth','0008_alter_user_username_max_length','2019-02-08 07:31:55.831413'),(14,'auth','0009_alter_user_last_name_max_length','2019-02-08 07:31:55.894244'),(15,'image_server','0001_initial','2019-02-08 07:31:55.919178'),(16,'image_server','0002_auto_20190208_1631','2019-02-08 07:31:56.011930'),(17,'sessions','0001_initial','2019-02-08 07:31:56.049829');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
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
