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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `login` varchar(30) NOT NULL,
  `password` binary(32) NOT NULL,
  `delivery_address_id` int(11) NOT NULL,
  `phone_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_delivry_address_id_idx` (`delivery_address_id`),
  KEY `fk_phone_id_c_idx` (`phone_id`),
  CONSTRAINT `fk_delivery_address_id_c` FOREIGN KEY (`delivery_address_id`) REFERENCES `address` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_phone_id_c` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=cp1250;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Tom','Tom','tom@mail.fr','Tomtom',_binary 'AÙ.\◊¢pñ\”#]dÇ\\Ø4∏4h\r@\◊®Vı≥\»z',1,1),(2,'Claire','Long','claire@mail.fr','Clong',_binary '˛`a3õ\Â{¯\Ô£˛+øüÚz$#oèx\Ôêu0+ù&\Ô\r',3,2),(3,'Alain','Ferr','ferr@mail.fr','Leferr',_binary '\„(\∆\Ì|\Zå®OÜî\ﬂ”èQê™\ÂO¯Xì\‹\Â2êπó',2,3),(4,'Charles','Millet','millet@mail.fr','lamil',_binary '¶G)≈øö\"\ÂZ\–¿¸¯+\”,L\ÃDÖ\“u\…\rI)nÆ É',6,4),(5,'Pauline','Ast','ast@mail.fr','Past',_binary '4ã\'ò©≈å\Âk«àouî#Fzyg*\”7..~2Ø@\–',5,5);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
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
