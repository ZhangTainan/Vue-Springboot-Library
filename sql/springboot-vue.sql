-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: springboot-vue
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `isbn` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `status` varchar(1) NOT NULL,
  `borrownum` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'0001','人生海海',49.80,'麦家','人民文学出版社','2019-12-16','0',8),(2,'0002','在细雨中呼喊',39.90,'余华','人民文学出版社','2005-06-08','1',3),(3,'0003','活着',36.80,'余华','北京大学出版社','2001-06-21','1',5);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookwithuser`
--

DROP TABLE IF EXISTS `bookwithuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookwithuser` (
  `id` bigint NOT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `book_name` varchar(255) NOT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `lendtime` datetime DEFAULT NULL,
  `deadtime` datetime DEFAULT NULL,
  `prolong` int DEFAULT NULL,
  PRIMARY KEY (`book_name`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookwithuser`
--

LOCK TABLES `bookwithuser` WRITE;
/*!40000 ALTER TABLE `bookwithuser` DISABLE KEYS */;
INSERT INTO `bookwithuser` VALUES (2,'12341541321','十万个为什么','user1','2025-05-27 12:43:43','2025-06-26 12:43:43',1);
/*!40000 ALTER TABLE `bookwithuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lend_record`
--

DROP TABLE IF EXISTS `lend_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lend_record` (
  `reader_id` bigint NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `bookname` varchar(255) DEFAULT NULL,
  `lend_time` datetime DEFAULT NULL,
  `return_time` datetime DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `borrownum` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lend_record`
--

LOCK TABLES `lend_record` WRITE;
/*!40000 ALTER TABLE `lend_record` DISABLE KEYS */;
INSERT INTO `lend_record` VALUES (2,'12341541321','十万个为什么','2025-05-27 12:43:43',NULL,'0',8);
/*!40000 ALTER TABLE `lend_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','123456','管理员','13800138000','男','管理员地址',1),(2,'user1','123456','张三','13800138001','男','用户地址1',2),(3,'user2','123456','李四','13800138002','女','用户地址2',2),(4,'user3','123456','王五','13800138003','男','用户地址3',2),(5,'user4','123456','赵六','13800138004','女','用户地址4',2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'springboot-vue'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-01 18:04:34
