CREATE DATABASE  IF NOT EXISTS `Ocpizza` /*!40100 DEFAULT CHARACTER SET cp1250 */;
USE `Ocpizza`;
-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: Ocpizza
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `(assoc) stock`
--

DROP TABLE IF EXISTS `(assoc) stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `(assoc) stock` (
  `quantity` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  PRIMARY KEY (`ingredient_id`,`restaurant_id`),
  KEY `fk_ingredient_id_idx` (`ingredient_id`),
  KEY `fk_restaurant_id_idx` (`restaurant_id`),
  CONSTRAINT `fk_ingredient_id_s` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredient` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_restaurant_id_s` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=cp1250;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `(assoc) stock`
--

LOCK TABLES `(assoc) stock` WRITE;
/*!40000 ALTER TABLE `(assoc) stock` DISABLE KEYS */;
INSERT INTO `(assoc) stock` VALUES (3200,1,1),(3200,1,2),(3200,1,3),(2200,2,1),(0,2,2),(2200,2,3),(3100,3,1),(3100,3,2),(3100,3,3),(2800,4,1),(2800,4,2),(2800,4,3),(2900,5,1),(2900,5,2),(2900,5,3),(24,6,1),(16,6,2),(52,6,3),(3000,7,1),(3000,7,2),(3000,7,3),(2800,8,1),(2800,8,2),(2800,8,3),(2600,9,1),(2600,9,2),(2600,9,3),(3300,10,1),(3300,10,2),(3300,10,3),(3400,11,1),(3400,11,2),(3400,11,3),(2900,12,1),(2900,12,2),(2900,12,3),(3100,13,1),(3100,13,2),(3100,13,3);
/*!40000 ALTER TABLE `(assoc) stock` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-01 16:11:17
