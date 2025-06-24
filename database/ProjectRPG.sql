-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: projectrpg
-- ------------------------------------------------------
-- Server version	9.3.0

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
-- Table structure for table `armor`
--

DROP TABLE IF EXISTS `armor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `armor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `name_translation` varchar(255) NOT NULL,
  `armor_category_id` bigint NOT NULL,
  `encumbrance` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `availability_id` bigint NOT NULL,
  `is_base_armor` bit(1) NOT NULL,
  `armor_points` int NOT NULL,
  `armor_type_id` bigint NOT NULL,
  `layer` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_piy227jvtb6tk5xv2p57mudtr` (`name`),
  UNIQUE KEY `UK_ox489vahmjb30xu37sq87an09` (`name_translation`),
  KEY `FKqkp6fd8qa836fixioj16a2k7i` (`armor_category_id`),
  KEY `FKb4hxxgvd03u8qqri0306tbhkp` (`availability_id`),
  KEY `FKnapgka4hhrn8w73892wv1m1wr` (`armor_type_id`),
  CONSTRAINT `FKb4hxxgvd03u8qqri0306tbhkp` FOREIGN KEY (`availability_id`) REFERENCES `availability` (`id`),
  CONSTRAINT `FKnapgka4hhrn8w73892wv1m1wr` FOREIGN KEY (`armor_type_id`) REFERENCES `armor_type` (`id`),
  CONSTRAINT `FKqkp6fd8qa836fixioj16a2k7i` FOREIGN KEY (`armor_category_id`) REFERENCES `armor_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armor`
--

LOCK TABLES `armor` WRITE;
/*!40000 ALTER TABLE `armor` DISABLE KEYS */;
INSERT INTO `armor` VALUES (1,'LEATHER_JACK','Skórzana kurta',1,'1','12S',1,_binary '',1,1,1),(2,'LEATHER_JERKIN','Skórzany kaftan',1,'1','10S',1,_binary '',1,1,1),(3,'LEATHER_LEGGINGS','Skórzane nogawice',1,'1','14S',1,_binary '',1,1,1),(4,'LEATHER_SKULLCAP','Skórzany hełm',1,'0','8S',1,_binary '',1,1,1),(5,'COLLAR','Kolet',2,'2','18S',5,_binary '',2,1,1),(6,'MAIL_CHAUSSES','Nogawice kolcze',3,'3','2G',5,_binary '',2,2,2),(7,'MAIL_COAT','Kolczuga',3,'3','3G',1,_binary '',2,2,2),(8,'MAIL_COIF','Czepiec kolczy',3,'2','1G',5,_binary '',2,2,2),(9,'MAIL_SHIRT','Kaftan kolczy',3,'2','2G',5,_binary '',2,2,2),(10,'BREASTPLATE','Napierśnik',4,'3','10G',5,_binary '',2,2,3),(11,'OPEN_HELM','Hełm otwarty',4,'1','2G',1,_binary '',2,2,3),(12,'BRACERS','Naramienniki',4,'3','8G',4,_binary '',2,2,3),(13,'PLATE_LEGGINGS','Nagolenniki płytowe',4,'3','10G',4,_binary '',2,2,3),(14,'HELM','Hełm',4,'2','3G',4,_binary '',2,2,3),(15,'ARMOR_1','Pancerz (1)',5,'-','-',1,_binary '\0',1,1,1),(16,'ARMOR_2','Pancerz (2)',5,'-','-',1,_binary '\0',2,1,1),(17,'ARMOR_3','Pancerz (3)',5,'-','-',1,_binary '\0',3,1,1),(18,'MAGICAL_ARMOR','Pancerz Magiczny',5,'-','-',1,_binary '\0',1,3,1);
/*!40000 ALTER TABLE `armor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `armor_armor_penalty`
--

DROP TABLE IF EXISTS `armor_armor_penalty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `armor_armor_penalty` (
  `armor_id` bigint NOT NULL,
  `penalty_id` bigint NOT NULL,
  KEY `FKmoa7xrktm62iqcf4yc3c5js8j` (`penalty_id`),
  KEY `FK58tj6qeo2a8y6rbtrp6hae88` (`armor_id`),
  CONSTRAINT `FK58tj6qeo2a8y6rbtrp6hae88` FOREIGN KEY (`armor_id`) REFERENCES `armor` (`id`),
  CONSTRAINT `FKmoa7xrktm62iqcf4yc3c5js8j` FOREIGN KEY (`penalty_id`) REFERENCES `armor_penalty` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armor_armor_penalty`
--

LOCK TABLES `armor_armor_penalty` WRITE;
/*!40000 ALTER TABLE `armor_armor_penalty` DISABLE KEYS */;
INSERT INTO `armor_armor_penalty` VALUES (6,2),(7,2),(8,2),(8,1),(9,2),(10,2),(11,2),(11,1),(12,2),(13,2),(14,2),(14,3);
/*!40000 ALTER TABLE `armor_armor_penalty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `armor_armor_quality`
--

DROP TABLE IF EXISTS `armor_armor_quality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `armor_armor_quality` (
  `armor_id` bigint NOT NULL,
  `quality_id` bigint NOT NULL,
  KEY `FKmoco5u3g7amh7hv31trdkldda` (`quality_id`),
  KEY `FKb7xb5j9diql6ojqry0yxrljcd` (`armor_id`),
  CONSTRAINT `FKb7xb5j9diql6ojqry0yxrljcd` FOREIGN KEY (`armor_id`) REFERENCES `armor` (`id`),
  CONSTRAINT `FKmoco5u3g7amh7hv31trdkldda` FOREIGN KEY (`quality_id`) REFERENCES `armor_quality` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armor_armor_quality`
--

LOCK TABLES `armor_armor_quality` WRITE;
/*!40000 ALTER TABLE `armor_armor_quality` DISABLE KEYS */;
INSERT INTO `armor_armor_quality` VALUES (4,3),(5,4),(6,1),(7,1),(8,1),(8,3),(9,1),(10,2),(10,4),(11,3),(12,2),(12,4),(13,2),(13,4),(14,2),(14,4);
/*!40000 ALTER TABLE `armor_armor_quality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `armor_body_localization`
--

DROP TABLE IF EXISTS `armor_body_localization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `armor_body_localization` (
  `armor_id` bigint NOT NULL,
  `body_localization_id` bigint NOT NULL,
  KEY `FK97wnwsegsxw8g7i932o0qvpox` (`armor_id`),
  KEY `FKk9rypu2nmx6l2flq0er133cf9` (`body_localization_id`),
  CONSTRAINT `FK97wnwsegsxw8g7i932o0qvpox` FOREIGN KEY (`armor_id`) REFERENCES `armor` (`id`),
  CONSTRAINT `FKk9rypu2nmx6l2flq0er133cf9` FOREIGN KEY (`body_localization_id`) REFERENCES `body_localization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armor_body_localization`
--

LOCK TABLES `armor_body_localization` WRITE;
/*!40000 ALTER TABLE `armor_body_localization` DISABLE KEYS */;
INSERT INTO `armor_body_localization` VALUES (1,2),(1,3),(1,4),(2,4),(3,5),(3,6),(4,1),(5,4),(6,5),(6,6),(7,2),(7,3),(7,4),(8,1),(9,4),(10,4),(11,1),(12,2),(12,3),(13,5),(13,6),(14,1),(15,1),(15,2),(15,3),(15,4),(15,5),(15,6),(16,1),(16,2),(16,3),(16,4),(16,5),(16,6),(17,1),(17,2),(17,3),(17,4),(17,5),(17,6),(18,1),(18,2),(18,3),(18,4),(18,5),(18,6);
/*!40000 ALTER TABLE `armor_body_localization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `armor_category`
--

DROP TABLE IF EXISTS `armor_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `armor_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armor_category`
--

LOCK TABLES `armor_category` WRITE;
/*!40000 ALTER TABLE `armor_category` DISABLE KEYS */;
INSERT INTO `armor_category` VALUES (1,'SOFT_LEATHER'),(2,'BOILED_LEATHER'),(3,'MAIL'),(4,'PLATE'),(5,'OTHER');
/*!40000 ALTER TABLE `armor_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `armor_penalty`
--

DROP TABLE IF EXISTS `armor_penalty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `armor_penalty` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armor_penalty`
--

LOCK TABLES `armor_penalty` WRITE;
/*!40000 ALTER TABLE `armor_penalty` DISABLE KEYS */;
INSERT INTO `armor_penalty` VALUES (1,'MINUS_TEN_PERCEPTION'),(2,'MINUS_TEN_STEALTH'),(3,'MINUS_TWENTY_PERCEPTION');
/*!40000 ALTER TABLE `armor_penalty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `armor_quality`
--

DROP TABLE IF EXISTS `armor_quality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `armor_quality` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armor_quality`
--

LOCK TABLES `armor_quality` WRITE;
/*!40000 ALTER TABLE `armor_quality` DISABLE KEYS */;
INSERT INTO `armor_quality` VALUES (1,'FLEXIBLE'),(2,'IMPENETRABLE'),(3,'PARTIAL'),(4,'WEAKPOINTS'),(5,'DURABLE'),(6,'FINE'),(7,'LIGHTWEIGHT'),(8,'PRACTICAL'),(9,'UGLY'),(10,'SHODDY'),(11,'UNRELIABLE'),(12,'BULKY');
/*!40000 ALTER TABLE `armor_quality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `armor_type`
--

DROP TABLE IF EXISTS `armor_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `armor_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armor_type`
--

LOCK TABLES `armor_type` WRITE;
/*!40000 ALTER TABLE `armor_type` DISABLE KEYS */;
INSERT INTO `armor_type` VALUES (1,'NON_METAL'),(2,'METAL'),(3,'MAGICAL');
/*!40000 ALTER TABLE `armor_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `availability`
--

DROP TABLE IF EXISTS `availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `availability` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availability`
--

LOCK TABLES `availability` WRITE;
/*!40000 ALTER TABLE `availability` DISABLE KEYS */;
INSERT INTO `availability` VALUES (1,'COMMON'),(2,'EXOTIC'),(3,'NA'),(4,'RARE'),(5,'SCARCE');
/*!40000 ALTER TABLE `availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `body_localization`
--

DROP TABLE IF EXISTS `body_localization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `body_localization` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `body_localization`
--

LOCK TABLES `body_localization` WRITE;
/*!40000 ALTER TABLE `body_localization` DISABLE KEYS */;
INSERT INTO `body_localization` VALUES (1,'HEAD'),(2,'LEFT_ARM'),(3,'RIGHT_ARM'),(4,'BODY'),(5,'LEFT_LEG'),(6,'RIGHT_LEG');
/*!40000 ALTER TABLE `body_localization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_armor`
--

DROP TABLE IF EXISTS `character_armor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_armor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `armor_points` int DEFAULT NULL,
  `armor_id` bigint NOT NULL,
  `character_id` bigint NOT NULL,
  `duration` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1ny7jluu147hk2glittg9qi60` (`armor_id`),
  KEY `FKl3mduvvv9n0ynjkli13eg14el` (`character_id`),
  CONSTRAINT `FK1ny7jluu147hk2glittg9qi60` FOREIGN KEY (`armor_id`) REFERENCES `armor` (`id`),
  CONSTRAINT `FKl3mduvvv9n0ynjkli13eg14el` FOREIGN KEY (`character_id`) REFERENCES `character_entity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_armor`
--

LOCK TABLES `character_armor` WRITE;
/*!40000 ALTER TABLE `character_armor` DISABLE KEYS */;
INSERT INTO `character_armor` VALUES (99,NULL,1,42,0),(152,NULL,3,1075,0),(153,NULL,1,1075,0),(154,NULL,9,1075,0),(176,NULL,7,1353,0),(177,NULL,8,1353,0),(178,NULL,6,1353,0),(184,NULL,7,29,0),(185,NULL,6,29,0),(186,NULL,7,27,0),(187,NULL,6,27,0),(188,NULL,3,27,0),(189,NULL,14,27,0),(190,NULL,1,27,0),(194,NULL,7,1072,0),(195,NULL,6,1072,0),(196,NULL,2,1073,0),(197,NULL,9,1073,0),(198,NULL,14,1073,0),(199,NULL,13,1073,0),(200,NULL,10,1073,0),(201,NULL,12,1073,0),(202,NULL,4,29,0),(203,NULL,3,29,0),(204,NULL,1,29,0),(205,NULL,8,29,0),(206,NULL,14,1353,0),(231,NULL,17,1530,0),(232,NULL,16,461,0);
/*!40000 ALTER TABLE `character_armor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_armor_body_localization`
--

DROP TABLE IF EXISTS `character_armor_body_localization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_armor_body_localization` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `armor_points` int DEFAULT NULL,
  `body_localization_id` bigint NOT NULL,
  `character_armor_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKk9rypu2nmx6l2flq0er133cf9` (`body_localization_id`),
  KEY `FKcis343e26wfqsyagixc0nod9i` (`character_armor_id`),
  CONSTRAINT `FK9lxfr30cpb8rdmr4t8g0yqffy` FOREIGN KEY (`body_localization_id`) REFERENCES `body_localization` (`id`),
  CONSTRAINT `FKcis343e26wfqsyagixc0nod9i` FOREIGN KEY (`character_armor_id`) REFERENCES `character_armor` (`id`),
  CONSTRAINT `FKk9rypu2nmx6l2flq0er133` FOREIGN KEY (`body_localization_id`) REFERENCES `body_localization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=716 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_armor_body_localization`
--

LOCK TABLES `character_armor_body_localization` WRITE;
/*!40000 ALTER TABLE `character_armor_body_localization` DISABLE KEYS */;
INSERT INTO `character_armor_body_localization` VALUES (344,0,2,99),(345,0,3,99),(346,1,4,99),(514,1,5,152),(515,1,6,152),(516,1,5,152),(517,1,6,152),(518,1,2,153),(519,1,2,153),(520,1,3,153),(521,1,3,153),(522,1,4,153),(523,1,4,153),(524,2,4,154),(525,2,4,154),(573,2,2,176),(574,2,3,176),(575,2,4,176),(576,2,1,177),(577,2,5,178),(578,2,6,178),(588,2,2,184),(589,2,3,184),(590,2,4,184),(591,2,5,185),(592,2,6,185),(593,2,2,186),(594,2,3,186),(595,2,4,186),(596,2,5,187),(597,2,6,187),(598,1,5,188),(599,1,6,188),(600,2,1,189),(601,1,2,190),(602,1,3,190),(603,1,4,190),(610,2,2,194),(611,2,3,194),(612,2,4,194),(613,2,5,195),(614,2,6,195),(615,1,4,196),(616,2,4,197),(617,2,1,198),(618,2,5,199),(619,2,6,199),(620,2,4,200),(621,2,2,201),(622,2,3,201),(623,1,1,202),(624,1,5,203),(625,1,6,203),(626,1,2,204),(627,1,3,204),(628,1,4,204),(629,2,1,205),(630,2,1,206),(704,3,1,231),(705,3,2,231),(706,3,3,231),(707,3,4,231),(708,3,5,231),(709,3,6,231),(710,2,1,232),(711,2,2,232),(712,2,3,232),(713,2,4,232),(714,2,5,232),(715,2,6,232);
/*!40000 ALTER TABLE `character_armor_body_localization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_body_localization`
--

DROP TABLE IF EXISTS `character_body_localization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_body_localization` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `armor_points` int DEFAULT NULL,
  `body_localization_id` bigint NOT NULL,
  `character_id` bigint NOT NULL,
  `additional_armor_points` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK551pb3grkxhj5my6y9pwqh5c7` (`body_localization_id`),
  KEY `FKn6t0d50tjqhss2xmefiyvdxdr` (`character_id`),
  CONSTRAINT `FK551pb3grkxhj5my6y9pwqh5c7` FOREIGN KEY (`body_localization_id`) REFERENCES `body_localization` (`id`),
  CONSTRAINT `FKn6t0d50tjqhss2xmefiyvdxdr` FOREIGN KEY (`character_id`) REFERENCES `character_entity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11881 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_body_localization`
--

LOCK TABLES `character_body_localization` WRITE;
/*!40000 ALTER TABLE `character_body_localization` DISABLE KEYS */;
INSERT INTO `character_body_localization` VALUES (2023,0,1,65,0),(2024,0,2,65,0),(2025,0,3,65,0),(2026,0,4,65,0),(2027,0,5,65,0),(2028,0,6,65,0),(2377,0,1,54,0),(2378,0,2,54,0),(2379,0,3,54,0),(2380,0,4,54,0),(2381,0,5,54,0),(2382,0,6,54,0),(3325,1,1,33,0),(3326,1,2,33,0),(3327,1,3,33,0),(3328,1,4,33,0),(3329,1,5,33,0),(3330,1,6,33,0),(3427,0,1,159,0),(3428,0,2,159,0),(3429,0,3,159,0),(3430,0,4,159,0),(3431,0,5,159,0),(3432,0,6,159,0),(3433,0,1,158,0),(3434,0,2,158,0),(3435,0,3,158,0),(3436,0,4,158,0),(3437,0,5,158,0),(3438,0,6,158,0),(3463,0,1,161,0),(3464,0,2,161,0),(3465,0,3,161,0),(3466,0,4,161,0),(3467,0,5,161,0),(3468,0,6,161,0),(3469,0,1,160,0),(3470,0,2,160,0),(3471,0,3,160,0),(3472,0,4,160,0),(3473,0,5,160,0),(3474,0,6,160,0),(3475,3,1,162,0),(3476,3,2,162,0),(3477,3,3,162,0),(3478,3,4,162,0),(3479,3,5,162,0),(3480,3,6,162,0),(3481,1,1,163,0),(3482,3,2,163,0),(3483,3,3,163,0),(3484,3,4,163,0),(3485,1,5,163,0),(3486,1,6,163,0),(3751,1,1,188,0),(3752,1,2,188,0),(3753,1,3,188,0),(3754,1,4,188,0),(3755,1,5,188,0),(3756,1,6,188,0),(3757,1,1,189,0),(3758,1,2,189,0),(3759,1,3,189,0),(3760,1,4,189,0),(3761,1,5,189,0),(3762,1,6,189,0),(3913,1,1,219,0),(3914,1,3,219,0),(3915,1,2,219,0),(3916,1,4,219,0),(3917,1,6,219,0),(3918,1,5,219,0),(3919,1,1,220,0),(3920,1,3,220,0),(3921,1,2,220,0),(3922,1,4,220,0),(3923,1,6,220,0),(3924,1,5,220,0),(5245,0,1,441,0),(5246,0,3,441,0),(5247,0,2,441,0),(5248,0,4,441,0),(5249,0,6,441,0),(5250,0,5,441,0),(5377,0,1,52,0),(5378,0,2,52,0),(5379,0,3,52,0),(5380,0,4,52,0),(5381,0,5,52,0),(5382,0,6,52,0),(5383,0,1,399,0),(5384,0,2,399,0),(5385,0,3,399,0),(5386,0,4,399,0),(5387,0,5,399,0),(5388,0,6,399,0),(5461,0,1,468,0),(5462,0,2,468,0),(5463,0,3,468,0),(5464,1,4,468,0),(5465,1,5,468,0),(5466,1,6,468,0),(5473,0,1,467,0),(5474,0,2,467,0),(5475,0,3,467,0),(5476,1,4,467,0),(5477,1,5,467,0),(5478,1,6,467,0),(5617,1,1,493,0),(5618,1,2,493,0),(5619,1,3,493,0),(5620,1,4,493,0),(5621,1,5,493,0),(5622,1,6,493,0),(5623,2,1,494,0),(5624,2,2,494,0),(5625,2,3,494,0),(5626,2,4,494,0),(5627,2,5,494,0),(5628,2,6,494,0),(5647,3,1,495,0),(5648,3,2,495,0),(5649,3,3,495,0),(5650,3,4,495,0),(5651,3,5,495,0),(5652,3,6,495,0),(5659,1,1,497,0),(5660,3,2,497,0),(5661,3,3,497,0),(5662,3,4,497,0),(5663,1,5,497,0),(5664,1,6,497,0),(5665,1,1,498,0),(5666,3,2,498,0),(5667,3,3,498,0),(5668,3,4,498,0),(5669,1,5,498,0),(5670,1,6,498,0),(5671,1,1,499,0),(5672,3,2,499,0),(5673,3,3,499,0),(5674,3,4,499,0),(5675,1,5,499,0),(5676,1,6,499,0),(5683,3,1,500,0),(5684,3,2,500,0),(5685,3,3,500,0),(5686,5,4,500,0),(5687,3,5,500,0),(5688,3,6,500,0),(5695,0,1,501,0),(5696,0,2,501,0),(5697,0,3,501,0),(5698,0,4,501,0),(5699,0,5,501,0),(5700,0,6,501,0),(6463,0,1,465,0),(6464,0,2,465,0),(6465,0,3,465,0),(6466,0,4,465,0),(6467,0,5,465,0),(6468,0,6,465,0),(6475,0,1,463,0),(6476,0,2,463,0),(6477,0,3,463,0),(6478,0,4,463,0),(6479,0,5,463,0),(6480,0,6,463,0),(7393,1,1,466,0),(7394,1,2,466,0),(7395,1,3,466,0),(7396,1,4,466,0),(7397,1,5,466,0),(7398,1,6,466,0),(9085,1,1,496,0),(9086,1,2,496,0),(9087,1,3,496,0),(9088,3,4,496,0),(9089,1,5,496,0),(9090,1,6,496,0),(9661,0,1,1074,0),(9662,2,2,1074,0),(9663,2,3,1074,0),(9664,2,4,1074,0),(9665,2,5,1074,0),(9666,2,6,1074,0),(9667,0,1,1075,0),(9668,2,2,1075,0),(9669,2,3,1075,0),(9670,6,4,1075,0),(9671,2,5,1075,0),(9672,2,6,1075,0),(10285,0,1,1274,0),(10286,0,2,1274,0),(10287,0,3,1274,0),(10288,0,4,1274,0),(10289,0,5,1274,0),(10290,0,6,1274,0),(10405,0,1,1284,0),(10406,0,2,1284,0),(10407,0,3,1284,0),(10408,0,4,1284,0),(10409,0,5,1284,0),(10410,0,6,1284,0),(10951,0,1,464,0),(10952,0,2,464,0),(10953,0,3,464,0),(10954,0,4,464,0),(10955,0,5,464,0),(10956,0,6,464,0),(10957,0,1,28,0),(10958,0,2,28,0),(10959,0,3,28,0),(10960,0,4,28,0),(10961,0,5,28,0),(10962,0,6,28,0),(10963,0,1,42,0),(10964,0,2,42,0),(10965,0,3,42,0),(10966,1,4,42,0),(10967,0,5,42,0),(10968,0,6,42,0),(11041,0,1,30,0),(11042,0,2,30,0),(11043,0,3,30,0),(11044,0,4,30,0),(11045,0,5,30,0),(11046,0,6,30,0),(11071,0,1,26,0),(11072,0,2,26,0),(11073,0,3,26,0),(11074,0,4,26,0),(11075,0,5,26,0),(11076,0,6,26,0),(11665,2,1,27,0),(11666,3,2,27,0),(11667,3,3,27,0),(11668,3,4,27,0),(11669,3,5,27,0),(11670,3,6,27,0),(11707,2,1,1073,0),(11708,2,2,1073,0),(11709,2,3,1073,0),(11710,5,4,1073,0),(11711,2,5,1073,0),(11712,2,6,1073,0),(11713,3,1,29,0),(11714,3,2,29,0),(11715,3,3,29,0),(11716,3,4,29,0),(11717,3,5,29,0),(11718,3,6,29,0),(11719,4,1,1353,0),(11720,2,2,1353,0),(11721,2,3,1353,0),(11722,2,4,1353,0),(11723,2,5,1353,0),(11724,2,6,1353,0),(11725,0,1,191,0),(11726,0,2,191,0),(11727,0,3,191,0),(11728,0,4,191,0),(11729,0,5,191,0),(11730,0,6,191,0),(11833,0,1,1318,0),(11834,0,2,1318,0),(11835,0,3,1318,0),(11836,0,4,1318,0),(11837,0,5,1318,0),(11838,0,6,1318,0),(11845,0,1,1529,0),(11846,0,2,1529,0),(11847,0,3,1529,0),(11848,0,4,1529,0),(11849,0,5,1529,0),(11850,0,6,1529,0),(11851,3,1,1530,0),(11852,3,2,1530,0),(11853,3,3,1530,0),(11854,3,4,1530,0),(11855,3,5,1530,0),(11856,3,6,1530,0),(11869,2,1,461,0),(11870,2,2,461,0),(11871,2,3,461,0),(11872,2,4,461,0),(11873,2,5,461,0),(11874,2,6,461,0),(11875,0,1,1072,0),(11876,2,2,1072,0),(11877,2,3,1072,0),(11878,2,4,1072,0),(11879,2,5,1072,0),(11880,2,6,1072,0);
/*!40000 ALTER TABLE `character_body_localization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_body_localization_injury`
--

DROP TABLE IF EXISTS `character_body_localization_injury`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_body_localization_injury` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `value` int DEFAULT NULL,
  `character_body_localization_id` bigint NOT NULL,
  `injury_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd2tsdu9div40x5qqjf4dycwx6` (`character_body_localization_id`),
  KEY `FK3t3u24822avxi3mlvv1i61dj7` (`injury_id`),
  CONSTRAINT `FK3t3u24822avxi3mlvv1i61dj7` FOREIGN KEY (`injury_id`) REFERENCES `injury` (`id`),
  CONSTRAINT `FKd2tsdu9div40x5qqjf4dycwx6` FOREIGN KEY (`character_body_localization_id`) REFERENCES `character_body_localization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_body_localization_injury`
--

LOCK TABLES `character_body_localization_injury` WRITE;
/*!40000 ALTER TABLE `character_body_localization_injury` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_body_localization_injury` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_characteristic`
--

DROP TABLE IF EXISTS `character_characteristic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_characteristic` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `value` int DEFAULT NULL,
  `character_id` bigint NOT NULL,
  `characteristic_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5vh9hej9skk5btevxcahcptf9` (`characteristic_id`),
  KEY `FKk5imfelvajkc9upis60pqeel2` (`character_id`),
  CONSTRAINT `FK5vh9hej9skk5btevxcahcptf9` FOREIGN KEY (`characteristic_id`) REFERENCES `characteristic` (`id`),
  CONSTRAINT `FKk5imfelvajkc9upis60pqeel2` FOREIGN KEY (`character_id`) REFERENCES `character_entity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23917 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_characteristic`
--

LOCK TABLES `character_characteristic` WRITE;
/*!40000 ALTER TABLE `character_characteristic` DISABLE KEYS */;
INSERT INTO `character_characteristic` VALUES (4045,6,65,12),(4046,30,65,1),(4047,15,65,2),(4048,55,65,3),(4049,45,65,4),(4050,10,65,5),(4051,15,65,6),(4052,15,65,7),(4053,10,65,8),(4054,20,65,9),(4055,5,65,10),(4056,30,65,11),(4753,4,54,12),(4754,57,54,1),(4755,28,54,2),(4756,54,54,3),(4757,52,54,4),(4758,41,54,5),(4759,33,54,6),(4760,29,54,7),(4761,23,54,8),(4762,30,54,9),(4763,27,54,10),(4764,18,54,11),(6649,4,33,12),(6650,52,33,1),(6651,30,33,2),(6652,55,33,3),(6653,43,33,4),(6654,30,33,5),(6655,40,33,6),(6656,30,33,7),(6657,30,33,8),(6658,30,33,9),(6659,30,33,10),(6660,14,33,11),(6853,4,159,12),(6854,40,159,1),(6855,43,159,2),(6856,40,159,3),(6857,40,159,4),(6858,42,159,5),(6859,34,159,6),(6860,29,159,7),(6861,41,159,8),(6862,33,159,9),(6863,35,159,10),(6864,15,159,11),(6865,4,158,12),(6866,40,158,1),(6867,43,158,2),(6868,40,158,3),(6869,50,158,4),(6870,42,158,5),(6871,34,158,6),(6872,29,158,7),(6873,41,158,8),(6874,33,158,9),(6875,35,158,10),(6876,16,158,11),(6925,4,161,12),(6926,45,161,1),(6927,0,161,2),(6928,40,161,3),(6929,40,161,4),(6930,5,161,5),(6931,10,161,6),(6932,15,161,7),(6933,0,161,8),(6934,0,161,9),(6935,0,161,10),(6936,16,161,11),(6937,4,160,12),(6938,60,160,1),(6939,0,160,2),(6940,45,160,3),(6941,40,160,4),(6942,40,160,5),(6943,35,160,6),(6944,25,160,7),(6945,20,160,8),(6946,40,160,9),(6947,5,160,10),(6948,16,160,11),(6949,4,162,12),(6950,45,162,1),(6951,43,162,2),(6952,51,162,3),(6953,30,162,4),(6954,40,162,5),(6955,28,162,6),(6956,27,162,7),(6957,30,162,8),(6958,31,162,9),(6959,43,162,10),(6960,14,162,11),(6961,4,163,12),(6962,35,163,1),(6963,30,163,2),(6964,40,163,3),(6965,30,163,4),(6966,30,163,5),(6967,30,163,6),(6968,35,163,7),(6969,30,163,8),(6970,30,163,9),(6971,25,163,10),(6972,13,163,11),(7657,4,188,12),(7658,45,188,1),(7659,30,188,2),(7660,35,188,3),(7661,45,188,4),(7662,30,188,5),(7663,35,188,6),(7664,25,188,7),(7665,25,188,8),(7666,30,188,9),(7667,25,188,10),(7668,14,188,11),(7669,4,189,12),(7670,35,189,1),(7671,30,189,2),(7672,30,189,3),(7673,35,189,4),(7674,30,189,5),(7675,35,189,6),(7676,25,189,7),(7677,25,189,8),(7678,35,189,9),(7679,25,189,10),(7680,12,189,11),(7981,4,219,12),(7982,25,219,1),(7983,40,219,2),(7984,35,219,3),(7985,35,219,4),(7986,20,219,5),(7987,35,219,6),(7988,40,219,7),(7989,30,219,8),(7990,20,219,9),(7991,20,219,10),(7992,14,219,11),(7993,4,220,12),(7994,55,220,1),(7995,0,220,2),(7996,35,220,3),(7997,40,220,4),(7998,30,220,5),(7999,55,220,6),(8000,0,220,7),(8001,15,220,8),(8002,15,220,9),(8003,0,220,10),(8004,12,220,11),(10645,4,441,12),(10646,25,441,1),(10647,0,441,2),(10648,30,441,3),(10649,25,441,4),(10650,25,441,5),(10651,35,441,6),(10652,0,441,7),(10653,15,441,8),(10654,15,441,9),(10655,0,441,10),(10656,5,441,11),(10909,4,52,12),(10910,45,52,1),(10911,0,52,2),(10912,40,52,3),(10913,40,52,4),(10914,0,52,5),(10915,20,52,6),(10916,10,52,7),(10917,0,52,8),(10918,0,52,9),(10919,0,52,10),(10920,20,52,11),(10921,4,399,12),(10922,30,399,1),(10923,30,399,2),(10924,30,399,3),(10925,30,399,4),(10926,30,399,5),(10927,30,399,6),(10928,30,399,7),(10929,30,399,8),(10930,30,399,9),(10931,30,399,10),(10932,12,399,11),(11077,4,468,12),(11078,40,468,1),(11079,40,468,2),(11080,40,468,3),(11081,40,468,4),(11082,40,468,5),(11083,40,468,6),(11084,40,468,7),(11085,40,468,8),(11086,40,468,9),(11087,40,468,10),(11088,12,468,11),(11101,4,467,12),(11102,50,467,1),(11103,40,467,2),(11104,40,467,3),(11105,50,467,4),(11106,40,467,5),(11107,40,467,6),(11108,40,467,7),(11109,40,467,8),(11110,40,467,9),(11111,40,467,10),(11112,15,467,11),(11389,5,493,12),(11390,40,493,1),(11391,50,493,2),(11392,30,493,3),(11393,35,493,4),(11394,50,493,5),(11395,50,493,6),(11396,40,493,7),(11397,35,493,8),(11398,30,493,9),(11399,20,493,10),(11400,12,493,11),(11401,5,494,12),(11402,50,494,1),(11403,0,494,2),(11404,40,494,3),(11405,50,494,4),(11406,40,494,5),(11407,30,494,6),(11408,30,494,7),(11409,30,494,8),(11410,50,494,9),(11411,0,494,10),(11412,14,494,11),(11449,4,495,12),(11450,50,495,1),(11451,0,495,2),(11452,60,495,3),(11453,50,495,4),(11454,30,495,5),(11455,20,495,6),(11456,20,495,7),(11457,20,495,8),(11458,20,495,9),(11459,0,495,10),(11460,40,495,11),(11473,4,497,12),(11474,40,497,1),(11475,40,497,2),(11476,40,497,3),(11477,40,497,4),(11478,40,497,5),(11479,35,497,6),(11480,35,497,7),(11481,35,497,8),(11482,35,497,9),(11483,30,497,10),(11484,12,497,11),(11485,4,498,12),(11486,40,498,1),(11487,40,498,2),(11488,40,498,3),(11489,40,498,4),(11490,40,498,5),(11491,35,498,6),(11492,35,498,7),(11493,35,498,8),(11494,35,498,9),(11495,30,498,10),(11496,12,498,11),(11497,4,499,12),(11498,40,499,1),(11499,40,499,2),(11500,40,499,3),(11501,40,499,4),(11502,40,499,5),(11503,35,499,6),(11504,35,499,7),(11505,35,499,8),(11506,35,499,9),(11507,30,499,10),(11508,12,499,11),(11521,4,500,12),(11522,50,500,1),(11523,50,500,2),(11524,40,500,3),(11525,40,500,4),(11526,50,500,5),(11527,35,500,6),(11528,35,500,7),(11529,45,500,8),(11530,45,500,9),(11531,50,500,10),(11532,12,500,11),(11545,4,501,12),(11546,25,501,1),(11547,0,501,2),(11548,20,501,3),(11549,20,501,4),(11550,35,501,5),(11551,30,501,6),(11552,0,501,7),(11553,15,501,8),(11554,10,501,9),(11555,15,501,10),(11556,5,501,11),(13081,4,465,12),(13082,40,465,1),(13083,53,465,2),(13084,42,465,3),(13085,43,465,4),(13086,45,465,5),(13087,41,465,6),(13088,52,465,7),(13089,41,465,8),(13090,46,465,9),(13091,32,465,10),(13092,20,465,11),(13105,4,463,12),(13106,30,463,1),(13107,29,463,2),(13108,31,463,3),(13109,31,463,4),(13110,31,463,5),(13111,27,463,6),(13112,29,463,7),(13113,37,463,8),(13114,41,463,9),(13115,27,463,10),(13116,13,463,11),(14941,4,466,12),(14942,36,466,1),(14943,40,466,2),(14944,30,466,3),(14945,33,466,4),(14946,30,466,5),(14947,30,466,6),(14948,24,466,7),(14949,28,466,8),(14950,40,466,9),(14951,40,466,10),(14952,15,466,11),(18325,4,496,12),(18326,40,496,1),(18327,40,496,2),(18328,40,496,3),(18329,40,496,4),(18330,40,496,5),(18331,35,496,6),(18332,35,496,7),(18333,35,496,8),(18334,35,496,9),(18335,30,496,10),(18336,12,496,11),(19477,4,1074,12),(19478,35,1074,1),(19479,35,1074,2),(19480,35,1074,3),(19481,35,1074,4),(19482,35,1074,5),(19483,35,1074,6),(19484,30,1074,7),(19485,28,1074,8),(19486,28,1074,9),(19487,30,1074,10),(19488,11,1074,11),(19489,4,1075,12),(19490,35,1075,1),(19491,35,1075,2),(19492,35,1075,3),(19493,35,1075,4),(19494,35,1075,5),(19495,35,1075,6),(19496,30,1075,7),(19497,28,1075,8),(19498,28,1075,9),(19499,30,1075,10),(19500,11,1075,11),(20725,4,1274,12),(20726,43,1274,1),(20727,44,1274,2),(20728,36,1274,3),(20729,39,1274,4),(20730,33,1274,5),(20731,35,1274,6),(20732,29,1274,7),(20733,39,1274,8),(20734,37,1274,9),(20735,26,1274,10),(20736,12,1274,11),(20965,4,1284,12),(20966,33,1284,1),(20967,34,1284,2),(20968,36,1284,3),(20969,41,1284,4),(20970,55,1284,5),(20971,44,1284,6),(20972,35,1284,7),(20973,44,1284,8),(20974,54,1284,9),(20975,51,1284,10),(20976,16,1284,11),(22057,4,464,12),(22058,32,464,1),(22059,28,464,2),(22060,27,464,3),(22061,27,464,4),(22062,31,464,5),(22063,40,464,6),(22064,37,464,7),(22065,26,464,8),(22066,25,464,9),(22067,40,464,10),(22068,8,464,11),(22069,3,28,12),(22070,14,28,1),(22071,47,28,2),(22072,30,28,3),(22073,33,28,4),(22074,29,28,5),(22075,32,28,6),(22076,70,28,7),(22077,27,28,8),(22078,45,28,9),(22079,68,28,10),(22080,8,28,11),(22081,4,42,12),(22082,58,42,1),(22083,44,42,2),(22084,55,42,3),(22085,48,42,4),(22086,42,42,5),(22087,43,42,6),(22088,39,42,7),(22089,30,42,8),(22090,40,42,9),(22091,40,42,10),(22092,15,42,11),(22237,4,30,12),(22238,27,30,1),(22239,35,30,2),(22240,26,30,3),(22241,31,30,4),(22242,28,30,5),(22243,41,30,6),(22244,27,30,7),(22245,38,30,8),(22246,31,30,9),(22247,46,30,10),(22248,11,30,11),(22297,3,26,12),(22298,60,26,1),(22299,34,26,2),(22300,44,26,3),(22301,60,26,4),(22302,30,26,5),(22303,19,26,6),(22304,40,26,7),(22305,32,26,8),(22306,65,26,9),(22307,22,26,10),(22308,34,26,11),(23485,3,27,12),(23486,46,27,1),(23487,23,27,2),(23488,50,27,3),(23489,70,27,4),(23490,40,27,5),(23491,24,27,6),(23492,50,27,7),(23493,29,27,8),(23494,54,27,9),(23495,14,27,10),(23496,24,27,11),(23569,4,1073,12),(23570,54,1073,1),(23571,29,1073,2),(23572,45,1073,3),(23573,33,1073,4),(23574,50,1073,5),(23575,40,1073,6),(23576,22,1073,7),(23577,31,1073,8),(23578,35,1073,9),(23579,37,1073,10),(23580,13,1073,11),(23581,4,29,12),(23582,42,29,1),(23583,30,29,2),(23584,40,29,3),(23585,50,29,4),(23586,43,29,5),(23587,45,29,6),(23588,36,29,7),(23589,23,29,8),(23590,40,29,9),(23591,34,29,10),(23592,18,29,11),(23593,4,1353,12),(23594,63,1353,1),(23595,52,1353,2),(23596,63,1353,3),(23597,48,1353,4),(23598,63,1353,5),(23599,50,1353,6),(23600,30,1353,7),(23601,39,1353,8),(23602,55,1353,9),(23603,38,1353,10),(23604,19,1353,11),(23605,6,191,12),(23606,65,191,1),(23607,25,191,2),(23608,55,191,3),(23609,55,191,4),(23610,20,191,5),(23611,35,191,6),(23612,25,191,7),(23613,20,191,8),(23614,30,191,9),(23615,15,191,10),(23616,30,191,11),(23821,4,1318,12),(23822,26,1318,1),(23823,27,1318,2),(23824,30,1318,3),(23825,30,1318,4),(23826,38,1318,5),(23827,29,1318,6),(23828,52,1318,7),(23829,65,1318,8),(23830,47,1318,9),(23831,43,1318,10),(23832,12,1318,11),(23845,4,1529,12),(23846,60,1529,1),(23847,44,1529,2),(23848,50,1529,3),(23849,50,1529,4),(23850,40,1529,5),(23851,50,1529,6),(23852,29,1529,7),(23853,20,1529,8),(23854,40,1529,9),(23855,10,1529,10),(23856,20,1529,11),(23857,5,1530,12),(23858,55,1530,1),(23859,25,1530,2),(23860,40,1530,3),(23861,40,1530,4),(23862,55,1530,5),(23863,50,1530,6),(23864,30,1530,7),(23865,30,1530,8),(23866,25,1530,9),(23867,20,1530,10),(23868,15,1530,11),(23893,5,461,12),(23894,40,461,1),(23895,40,461,2),(23896,30,461,3),(23897,40,461,4),(23898,40,461,5),(23899,45,461,6),(23900,30,461,7),(23901,30,461,8),(23902,20,461,9),(23903,20,461,10),(23904,13,461,11),(23905,4,1072,12),(23906,30,1072,1),(23907,26,1072,2),(23908,32,1072,3),(23909,29,1072,4),(23910,36,1072,5),(23911,31,1072,6),(23912,29,1072,7),(23913,45,1072,8),(23914,41,1072,9),(23915,40,1072,10),(23916,11,1072,11);
/*!40000 ALTER TABLE `character_characteristic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_condition`
--

DROP TABLE IF EXISTS `character_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_condition` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `value` int DEFAULT NULL,
  `character_id` bigint NOT NULL,
  `condition_id` bigint NOT NULL,
  `counter` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkalc3acx8eykhh7b4wg8ur0fq` (`condition_id`),
  KEY `FKn49jodjs20oi512g0m505kx1s` (`character_id`),
  CONSTRAINT `FKkalc3acx8eykhh7b4wg8ur0fq` FOREIGN KEY (`condition_id`) REFERENCES `condition_entity` (`id`),
  CONSTRAINT `FKn49jodjs20oi512g0m505kx1s` FOREIGN KEY (`character_id`) REFERENCES `character_entity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=348 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_condition`
--

LOCK TABLES `character_condition` WRITE;
/*!40000 ALTER TABLE `character_condition` DISABLE KEYS */;
INSERT INTO `character_condition` VALUES (92,2,65,10,0);
/*!40000 ALTER TABLE `character_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_creature_trait`
--

DROP TABLE IF EXISTS `character_creature_trait`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_creature_trait` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `character_id` bigint NOT NULL,
  `creature_trait_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd29rp5oji2jghywovertf9e3e` (`creature_trait_id`),
  KEY `FKklicd6x4ik9wwtsh1jem4yur1` (`character_id`),
  CONSTRAINT `FKd29rp5oji2jghywovertf9e3e` FOREIGN KEY (`creature_trait_id`) REFERENCES `creature_trait` (`id`),
  CONSTRAINT `FKklicd6x4ik9wwtsh1jem4yur1` FOREIGN KEY (`character_id`) REFERENCES `character_entity` (`id`),
  CONSTRAINT `FKoyqh54xghyupq2d7o5mtofu1d` FOREIGN KEY (`creature_trait_id`) REFERENCES `creature_trait` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1826 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_creature_trait`
--

LOCK TABLES `character_creature_trait` WRITE;
/*!40000 ALTER TABLE `character_creature_trait` DISABLE KEYS */;
INSERT INTO `character_creature_trait` VALUES (13,'0',52,76),(14,NULL,52,83),(15,NULL,52,82),(16,'2',52,66),(17,'+6',52,80),(155,NULL,65,62),(156,NULL,65,25),(157,NULL,65,56),(158,'Duży',65,57),(159,NULL,65,71),(160,'+8',65,9),(161,NULL,65,77),(162,NULL,65,42),(792,NULL,33,62),(793,'(Pomniejsze)',33,21),(822,NULL,161,19),(823,NULL,161,51),(824,NULL,161,73),(825,NULL,161,56),(826,'(Pomniejsze)',161,21),(827,'2',161,31),(828,NULL,161,50),(829,NULL,160,28),(830,'-10',160,76),(831,NULL,160,73),(832,'+5',160,9),(833,NULL,160,50),(834,NULL,160,42),(835,NULL,160,39),(836,'2',160,31),(841,NULL,188,34),(842,NULL,188,3),(843,'+6',188,38),(844,NULL,188,50),(845,NULL,189,3),(846,NULL,189,50),(851,NULL,191,34),(852,NULL,191,3),(853,'+9',191,38),(854,NULL,191,50),(855,NULL,191,39),(856,'(Duży)',191,57),(857,NULL,191,6),(869,'(Krasnoludy)',219,37),(870,'(Elfy)',219,1),(871,NULL,219,36),(872,NULL,219,50),(873,NULL,219,42),(874,'+7',220,80),(875,NULL,220,61),(876,NULL,220,72),(877,'(Wierzchowiec)',220,69),(878,NULL,220,50),(879,NULL,220,7),(1520,'+7',33,38),(1528,NULL,399,43),(1547,'4',441,80),(1548,NULL,441,61),(1549,NULL,441,20),(1550,NULL,441,58),(1551,'(Mały)',441,57),(1552,'(Pomniejsze)',441,21),(1553,NULL,441,50),(1554,NULL,441,42),(1555,NULL,441,7),(1633,NULL,461,58),(1634,NULL,461,72),(1635,NULL,461,50),(1636,NULL,461,42),(1637,'+7',494,80),(1638,NULL,494,56),(1639,'1',494,31),(1640,'(Wielki)',495,57),(1641,'+9',495,80),(1642,'+5',501,80),(1643,NULL,501,61),(1644,NULL,501,58),(1645,'(Mały)',501,57),(1646,NULL,501,50),(1647,NULL,501,7),(1804,'2',1284,31),(1805,'(Sięgające Włosy)',1284,49),(1816,'+8',1529,66),(1817,'1',1529,38),(1818,'1',1529,21),(1819,NULL,1529,33),(1820,NULL,1529,56),(1821,'+10',1529,80),(1822,NULL,1530,58),(1823,NULL,1530,72),(1824,NULL,1530,50),(1825,NULL,1530,42);
/*!40000 ALTER TABLE `character_creature_trait` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_entity`
--

DROP TABLE IF EXISTS `character_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_entity` (
  `id` bigint NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_right_handed` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `group_column` varchar(255) DEFAULT NULL,
  `group_type_column` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_entity`
--

LOCK TABLES `character_entity` WRITE;
/*!40000 ALTER TABLE `character_entity` DISABLE KEYS */;
INSERT INTO `character_entity` VALUES (26,'Postać Piotra Ż. - Krasnolud',_binary '','Throngroth Hegalison','Emerytowani Bohaterowie','Główne',NULL,'BASE'),(27,'Postać Piotra P. - Krasnolud',_binary '','Ullagrund Ganddreng','Bohaterowie','Główne',NULL,'BASE'),(28,'Postać Huberta - Niziołek',_binary '','Nobbi Wesołek','Emerytowani Bohaterowie','Główne',NULL,'BASE'),(29,'Postać Kuby - Człowiek',_binary '','Rygar','Bohaterowie','Główne',NULL,'BASE'),(30,'Postać Klaudii - Człowiek',_binary '','Renia Sianko','Emerytowani Bohaterowie','Główne',NULL,'BASE'),(33,'Mutant, Zbój',_binary '','Mutant','Mutanci','Poboczne',NULL,'BASE'),(42,'Kapitan barki \"Lyan\"',_binary '','Marcus','Główni BN','Główne',NULL,'BASE'),(52,'Potwór z kanałów',_binary '','Ameba','Potwory','Poboczne',NULL,'BASE'),(54,'Gladiator',_binary '','Gladiator','Zawodnicy','Poboczne',NULL,'BASE'),(65,'Troll',_binary '','Troll','Potwory','Poboczne',NULL,'BASE'),(158,'Herszt piratów',_binary '','Herszt','Piraci Rzeczni','Poboczne',NULL,'BASE'),(159,'Pirat Rzeczny',_binary '','Pirat','Piraci Rzeczni','Poboczne',NULL,'BASE'),(160,'Ghoul z wieży semafora',_binary '','Ghoul Czempion','Nieumarli','Poboczne',NULL,'BASE'),(161,'',_binary '','Zombi z wieży Semafora','Nieumarli','Poboczne',NULL,'BASE'),(162,'Straż',_binary '','Kapitan Straży','Straż','Poboczne',NULL,'BASE'),(163,'Straż',_binary '','Rekrut Straży','Straż','Poboczne',NULL,'BASE'),(188,'',_binary '','Gor','Zwierzoludzie','Poboczne',NULL,'BASE'),(189,'',_binary '','Ungor','Zwierzoludzie','Poboczne',NULL,'BASE'),(191,'',_binary '','Minotaur','Zwierzoludzie','Poboczne',NULL,'BASE'),(219,'Plemię Wykrzywionej Paszczy',_binary '','Goblin','Zielonoskórzy','Poboczne',NULL,'BASE'),(220,'',_binary '','Wielki Wilk','Zwierzęta','Poboczne',NULL,'BASE'),(399,'',_binary '','Kanibal','Ludzie','Poboczne',NULL,'BASE'),(441,'',_binary '','Olbrzymi Szczur','Zwierzęta','Poboczne',NULL,'BASE'),(461,'',_binary '','Skaveński Wojownik','Skaveny','Poboczne',NULL,'BASE'),(463,'Postać Konrada - Czarodziej Metalu - Uczeń Alchemika',_binary '','Ignacius Graf','Bohaterowie Przygód','Główne','Brąz 4','BASE'),(464,'Postać Huberta - Kuglarz - Muzykant',_binary '','Ruprecht Dunkelherz','Bohaterowie Przygód','Główne','Brąz 3','BASE'),(465,'Postać Olka - Traper - Łowca',_binary '','Aesmaloc Jesienny Liść','Bohaterowie Przygód','Główne','Brąz 2','BASE'),(466,'Postać Piotrka - Łowca Czarownic - Oprawca',_binary '','Grodon Ramsey','Bohaterowie Przygód','Główne','Srebro 1','BASE'),(467,'',_binary '','Kultysta - Weteran','Ludzie','Poboczne',NULL,'BASE'),(468,'',_binary '','Kultysta','Ludzie','Poboczne',NULL,'BASE'),(493,'',_binary '','Eonir - otumaniony','Leśne Elfy','Poboczne',NULL,'BASE'),(494,'',_binary '','Driada','Leśne Elfy','Poboczne',NULL,'BASE'),(495,'',_binary '','Nieumarły Drzewiec','Leśne Elfy','Poboczne',NULL,'BASE'),(496,'',_binary '','Miecznik','Armia Imperialna','Poboczne',NULL,'BASE'),(497,'',_binary '','Halabardnik','Armia Imperialna','Poboczne',NULL,'BASE'),(498,'',_binary '','Kusznik','Armia Imperialna','Poboczne',NULL,'BASE'),(499,'',_binary '','Muszkieter','Armia Imperialna','Poboczne',NULL,'BASE'),(500,'',_binary '','Kapitan','Armia Imperialna','Poboczne',NULL,'BASE'),(501,'Pies Ruprechta',_binary '','Funfel','Bohaterowie Przygód','Główne',NULL,'BASE'),(1072,'Postać Huberta - Człowiek - Czarodziej',_binary '','Hildebrant Nachtdorn','Bohaterowie','Główne','Srebro 3','BASE'),(1073,'Postać Piotra Ż. - Człowiek - Rycerz',_binary '','Levin Jeager','Bohaterowie','Główne','Srebro 5','BASE'),(1074,'',_binary '','Bandyta','Ludzie','Poboczne','Brąz 3','BASE'),(1075,'',_binary '','Doświadczony Bandyta ','Ludzie','Poboczne','Brąz 3','BASE'),(1274,'',_binary '','Kultysta Purpurowej Dłoni','Kultyści','Poboczne',NULL,'BASE'),(1284,'',_binary '','Wtajemniczona Kultu Purpurowej Dłoni','Kultyści','Poboczne',NULL,'BASE'),(1318,'Postać Konrada - Człowiek',_binary '','Gotthard Lauterbach','Bohaterowie','Główne','Srebro 5','BASE'),(1353,'Szampierz Sądowy',_binary '','Dieter Schmiedehammer','Główni BN','Główne','Złoto 3','BASE'),(1529,'',_binary '','Mutant Purpurowej Dłoni','Kultyści','Poboczne',NULL,'BASE'),(1530,'',_binary '','Szturmoszczur','Skaveny','Poboczne',NULL,'BASE');
/*!40000 ALTER TABLE `character_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_skill`
--

DROP TABLE IF EXISTS `character_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_skill` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `value` int DEFAULT NULL,
  `character_id` bigint NOT NULL,
  `skill_id` bigint NOT NULL,
  `specialisation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKabu9xeixjyfy5x8b091c5asy5` (`skill_id`),
  KEY `FKt8yaixnj1hsuk9q5fawufia7i` (`character_id`),
  CONSTRAINT `FKabu9xeixjyfy5x8b091c5asy5` FOREIGN KEY (`skill_id`) REFERENCES `skill` (`id`),
  CONSTRAINT `FKt8yaixnj1hsuk9q5fawufia7i` FOREIGN KEY (`character_id`) REFERENCES `character_entity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_skill`
--

LOCK TABLES `character_skill` WRITE;
/*!40000 ALTER TABLE `character_skill` DISABLE KEYS */;
INSERT INTO `character_skill` VALUES (169,73,42,14,NULL),(170,50,42,36,NULL),(171,49,42,137,'Cieśla'),(172,47,42,37,NULL),(173,64,42,44,NULL),(174,82,42,105,NULL),(175,65,42,28,NULL),(176,50,42,96,NULL),(482,53,54,15,NULL),(483,74,54,25,NULL),(596,50,159,96,NULL),(597,49,159,15,NULL),(599,58,158,96,NULL),(600,49,158,15,NULL),(601,57,162,28,NULL),(602,55,162,96,NULL),(603,55,162,27,NULL),(604,48,162,26,NULL),(605,35,162,17,NULL),(606,40,162,13,NULL),(607,48,162,38,NULL),(608,39,162,15,NULL),(609,40,163,28,NULL),(610,35,163,38,NULL),(611,35,163,15,NULL),(699,35,219,28,NULL),(700,50,219,97,NULL),(701,30,219,38,NULL),(1332,50,461,28,NULL),(1333,55,461,15,NULL),(1335,85,28,137,'Gotowanie'),(1336,73,28,89,NULL),(1337,57,28,102,NULL),(1338,48,28,131,NULL),(1339,71,28,24,NULL),(1342,39,27,63,NULL),(1344,55,29,131,NULL),(1345,24,29,50,NULL),(1346,35,29,97,NULL),(1347,31,29,102,NULL),(1348,55,29,105,NULL),(1349,25,30,97,NULL),(1350,65,30,96,NULL),(1379,46,464,8,NULL),(1380,37,464,28,NULL),(1381,46,464,134,'Akrobatyka'),(1382,44,466,28,NULL),(1383,44,466,13,NULL),(1384,50,466,96,NULL),(1739,32,1072,34,NULL),(1740,35,1072,28,NULL),(1741,46,1072,13,NULL),(1742,43,1072,23,NULL),(1743,38,1072,131,NULL),(1744,36,1072,15,NULL),(1745,62,1072,70,NULL),(1746,60,1072,62,NULL),(1747,47,1072,133,'Magia'),(1748,35,1072,117,NULL),(1749,50,1073,8,NULL),(1750,70,1073,28,NULL),(1751,60,1073,30,NULL),(1752,50,1073,27,NULL),(1753,50,1073,23,NULL),(1754,38,1073,24,NULL),(1755,53,1073,25,NULL),(1756,36,1073,64,NULL),(1757,40,1073,48,NULL),(1758,50,1073,42,NULL),(1759,32,1073,133,'Heraldyka'),(1760,40,1074,28,NULL),(1761,40,1074,17,NULL),(1762,40,1074,15,NULL),(1763,45,1075,28,NULL),(1764,50,1075,17,NULL),(1765,45,1075,15,NULL),(1877,45,1274,8,NULL),(1878,54,1274,28,NULL),(1879,54,1274,98,NULL),(1880,64,1274,100,NULL),(1881,45,1274,15,NULL),(1922,44,1284,28,NULL),(1923,85,1284,70,NULL),(1924,65,1284,38,NULL),(1925,68,1284,57,NULL),(1926,65,1284,15,NULL),(2012,70,1318,48,NULL),(2013,70,1318,63,NULL),(2014,95,1318,64,NULL),(2107,32,27,132,'Khazalid'),(2108,60,27,137,'Stolarz'),(2109,32,27,133,'Metalurgia'),(2114,43,1072,10,NULL),(2115,43,1072,27,NULL),(2116,44,1072,132,'Staroświatowy'),(2117,49,1072,133,'Reikland'),(2118,47,1072,136,'Szary Zakon'),(2119,45,1318,17,NULL),(2120,62,1318,13,NULL),(2121,45,1318,23,NULL),(2122,45,1318,24,NULL),(2123,68,1318,133,'Reikland'),(2124,62,1318,117,NULL),(2125,65,1318,132,'Staroświatowy'),(2126,66,1318,133,'Anatomia'),(2127,66,1318,133,'Medycyna'),(2128,66,1318,132,'Cech Medyków'),(2129,53,1318,137,'Cyrulik'),(2130,66,1318,132,'Klasyczny'),(2131,66,1318,132,'Mroczna Mowa'),(2132,66,1318,104,NULL),(2133,42,1073,10,NULL),(2134,31,1073,132,'Staroświatowy'),(2135,32,1073,133,'Middenland'),(2136,32,1073,133,'Imperium'),(2138,70,27,28,NULL),(2139,60,27,17,NULL),(2140,64,27,13,NULL),(2141,45,27,25,NULL),(2142,29,27,132,'Staroświatowy'),(2143,32,27,133,'Krasnoludy'),(2144,39,30,28,NULL),(2145,59,30,10,NULL),(2146,43,30,13,NULL),(2147,64,30,23,NULL),(2148,46,30,16,NULL),(2149,51,30,24,NULL),(2150,43,30,15,NULL),(2151,38,30,132,'Staroświatowy'),(2152,35,30,48,NULL),(2153,38,30,133,'Reikland'),(2154,38,30,63,NULL),(2155,55,29,8,NULL),(2156,57,29,28,NULL),(2157,39,29,10,NULL),(2158,51,29,14,NULL),(2159,57,29,17,NULL),(2160,45,29,13,NULL),(2161,41,29,11,NULL),(2162,53,29,38,NULL),(2163,39,29,23,NULL),(2164,39,29,24,NULL),(2165,60,29,15,NULL),(2166,40,29,44,NULL),(2167,37,29,137,'Lalkarz'),(2168,24,29,132,'Staroświatow'),(2169,30,26,8,NULL),(2170,80,26,28,NULL),(2171,65,26,35,NULL),(2172,39,26,22,NULL),(2173,63,26,14,NULL),(2174,70,26,17,NULL),(2175,70,26,13,NULL),(2176,30,26,15,NULL),(2177,50,26,25,NULL),(2178,33,26,132,'Staroświatowy'),(2179,35,26,132,'Khazalid'),(2180,45,26,137,'Kowal Run'),(2181,35,26,133,'Krasnoludy'),(2182,35,26,133,'Metalurgia'),(2183,34,26,133,'Trolle'),(2184,40,26,64,NULL),(2185,33,26,132,'Bitewny'),(2186,50,26,118,NULL),(2188,83,1353,8,NULL),(2189,93,1353,35,NULL),(2190,83,1353,33,NULL),(2191,93,1353,28,NULL),(2192,83,1353,31,NULL),(2193,53,1353,10,NULL),(2194,53,1353,27,NULL),(2195,54,1353,22,NULL),(2196,82,1353,26,NULL),(2197,44,1353,132,'Klasyczny'),(2198,59,1353,64,NULL),(2199,58,1353,14,NULL),(2200,68,1353,17,NULL),(2201,83,1353,13,NULL),(2202,83,1353,38,NULL),(2203,51,1353,23,NULL),(2204,75,1353,15,NULL),(2205,42,1353,133,'Middenheim'),(2206,73,1353,25,NULL),(3101,70,1530,28,NULL),(3102,65,1530,33,NULL),(3103,65,1530,38,NULL),(3104,60,1530,131,NULL),(3105,60,1530,15,NULL),(3106,50,461,102,NULL);
/*!40000 ALTER TABLE `character_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_spell`
--

DROP TABLE IF EXISTS `character_spell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_spell` (
  `character_id` bigint NOT NULL,
  `spell_id` bigint NOT NULL,
  KEY `FKh9md6ppi1pboqd87oj35lf30o` (`spell_id`),
  KEY `FKsuu8k6n1uara6qdjk7qaugst7` (`character_id`),
  CONSTRAINT `FKh9md6ppi1pboqd87oj35lf30o` FOREIGN KEY (`spell_id`) REFERENCES `spell` (`id`),
  CONSTRAINT `FKsuu8k6n1uara6qdjk7qaugst7` FOREIGN KEY (`character_id`) REFERENCES `character_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_spell`
--

LOCK TABLES `character_spell` WRITE;
/*!40000 ALTER TABLE `character_spell` DISABLE KEYS */;
INSERT INTO `character_spell` VALUES (463,24),(463,15),(463,6),(463,17),(1284,157),(1284,6),(1284,38),(1284,3),(1284,39),(1284,21),(1284,40),(1284,19),(1284,136);
/*!40000 ALTER TABLE `character_spell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_talent`
--

DROP TABLE IF EXISTS `character_talent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_talent` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `value` int DEFAULT NULL,
  `character_id` bigint NOT NULL,
  `talent_id` bigint NOT NULL,
  `specialisation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7iq8gv87fb3fod88c02evllm3` (`talent_id`),
  KEY `FK2njo0h21msl0uja9rillbg27i` (`character_id`),
  CONSTRAINT `FK2njo0h21msl0uja9rillbg27i` FOREIGN KEY (`character_id`) REFERENCES `character_entity` (`id`),
  CONSTRAINT `FK7iq8gv87fb3fod88c02evllm3` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4818 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_talent`
--

LOCK TABLES `character_talent` WRITE;
/*!40000 ALTER TABLE `character_talent` DISABLE KEYS */;
INSERT INTO `character_talent` VALUES (170,1,42,212,NULL),(171,1,42,83,NULL),(172,1,42,141,NULL),(324,1,27,151,NULL),(325,1,27,157,NULL),(326,1,27,127,NULL),(327,1,27,198,NULL),(328,1,27,135,NULL),(329,1,27,212,NULL),(330,1,26,198,NULL),(331,1,26,156,NULL),(332,1,26,135,NULL),(333,1,26,151,NULL),(334,1,26,157,NULL),(335,1,26,69,NULL),(336,1,26,87,NULL),(337,1,30,176,NULL),(338,1,30,151,NULL),(339,1,30,10,NULL),(340,1,28,178,NULL),(533,1,52,145,NULL),(632,2,54,64,NULL),(633,1,54,158,NULL),(634,1,54,118,NULL),(1085,1,158,91,NULL),(1269,1,26,127,NULL),(1270,1,26,223,'Wszystko'),(1271,1,26,177,NULL),(1272,2,26,158,NULL),(1273,2,26,92,NULL),(1274,1,27,58,'Stolarz'),(1275,1,28,135,NULL),(1276,1,28,136,NULL),(1277,1,28,125,NULL),(1278,1,28,156,NULL),(1279,1,28,58,NULL),(1280,1,28,6,NULL),(1281,1,28,212,NULL),(1282,1,28,61,NULL),(1283,1,29,199,NULL),(1284,1,29,67,NULL),(1285,1,29,212,NULL),(1286,1,29,58,'Lalkarz'),(1287,1,29,122,NULL),(1288,1,29,191,NULL),(1289,1,29,135,NULL),(1290,1,29,154,NULL),(1291,1,29,193,NULL),(1292,1,29,211,NULL),(1293,1,30,26,NULL),(1369,2,219,1,NULL),(1564,1,26,104,NULL),(1565,1,30,72,'Mieszczanie'),(1566,1,28,72,NULL),(1932,1,399,142,NULL),(2184,2,461,175,NULL),(2185,1,29,194,NULL),(2186,1,30,61,NULL),(2188,1,465,211,NULL),(2189,1,465,163,NULL),(2190,1,465,92,NULL),(2191,1,465,135,NULL),(2192,1,465,2,NULL),(2193,1,465,207,NULL),(2194,1,463,23,NULL),(2195,1,463,165,NULL),(2196,1,463,67,NULL),(2197,1,463,143,NULL),(2198,1,463,198,NULL),(2199,1,463,144,NULL),(2200,1,463,151,NULL),(2201,1,463,7,NULL),(2202,1,463,170,NULL),(2203,1,464,134,NULL),(2204,1,464,22,NULL),(2205,1,464,85,NULL),(2206,1,464,23,NULL),(2207,1,466,23,NULL),(2208,1,466,199,NULL),(2209,1,466,151,NULL),(2210,1,466,9,NULL),(2211,1,466,67,NULL),(2212,1,466,92,NULL),(2213,1,466,56,NULL),(2214,1,467,150,NULL),(2215,1,467,43,NULL),(2294,1,493,135,NULL),(2444,1,466,129,NULL),(2445,1,466,133,NULL),(2542,1,465,129,NULL),(3033,1,1072,165,NULL),(3034,1,1072,67,NULL),(3036,1,1072,9,NULL),(3037,1,1072,10,NULL),(3038,1,1072,144,NULL),(3039,1,1072,16,NULL),(3040,1,1072,151,NULL),(3041,1,1073,137,NULL),(3042,1,1073,173,NULL),(3043,1,1073,151,NULL),(3044,1,1073,199,NULL),(3045,1,1073,72,'Gildie Kupieckie'),(3046,1,1073,133,NULL),(3047,1,1073,191,NULL),(3048,2,1073,175,NULL),(3049,1,1073,215,NULL),(3050,1,1073,162,NULL),(3051,1,1073,67,NULL),(3052,1,1073,56,NULL),(3053,1,1074,64,NULL),(3054,1,1074,105,NULL),(3055,1,1075,64,NULL),(3056,1,1075,105,NULL),(3057,1,1075,52,NULL),(3058,1,1075,158,NULL),(3059,1,1075,193,NULL),(4050,2,1318,10,NULL),(4051,1,1318,165,NULL),(4052,1,1318,67,NULL),(4053,1,1318,9,NULL),(4054,1,1318,151,NULL),(4055,1,1318,137,NULL),(4056,1,1318,82,NULL),(4057,1,1318,203,NULL),(4058,1,1318,56,NULL),(4059,1,1318,72,'Cech Medyków'),(4060,1,1318,154,NULL),(4123,1,1072,212,NULL),(4124,1,1072,176,NULL),(4125,1,1318,72,'Uczeni'),(4126,1,1073,72,'Żołnierze'),(4127,2,1073,198,NULL),(4128,1,27,136,NULL),(4129,1,27,61,NULL),(4130,1,27,169,NULL),(4131,1,27,216,NULL),(4133,1,1353,150,NULL),(4134,1,1353,212,NULL),(4135,1,1353,52,NULL),(4136,1,1353,165,NULL),(4137,1,1353,72,'Szlachta'),(4138,1,1353,81,NULL),(4139,1,1353,44,NULL),(4140,1,1353,51,NULL),(4141,1,1353,193,NULL),(4142,1,1353,159,NULL),(4143,1,1353,65,NULL),(4144,1,1353,66,NULL),(4145,2,1353,191,NULL),(4146,1,1353,215,NULL),(4147,1,1353,67,NULL),(4148,1,1353,25,NULL),(4149,1,1353,182,NULL),(4150,1,1353,118,NULL);
/*!40000 ALTER TABLE `character_talent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_weapon`
--

DROP TABLE IF EXISTS `character_weapon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_weapon` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `value` int DEFAULT NULL,
  `character_id` bigint NOT NULL,
  `weapon_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbguirset27kmboew4519168g4` (`weapon_id`),
  KEY `FKme3gn69fdecwldw3a4ag85xio` (`character_id`),
  CONSTRAINT `FKbguirset27kmboew4519168g4` FOREIGN KEY (`weapon_id`) REFERENCES `weapon` (`id`),
  CONSTRAINT `FKme3gn69fdecwldw3a4ag85xio` FOREIGN KEY (`character_id`) REFERENCES `character_entity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2762 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_weapon`
--

LOCK TABLES `character_weapon` WRITE;
/*!40000 ALTER TABLE `character_weapon` DISABLE KEYS */;
INSERT INTO `character_weapon` VALUES (17,1,188,60),(18,1,188,5),(19,1,189,60),(21,1,162,66),(22,1,162,5),(23,1,162,2),(24,1,163,60),(25,1,163,5),(26,1,163,2),(34,1,219,66),(35,1,219,6),(36,1,219,34),(37,20,219,55),(641,1,33,66),(642,1,33,60),(643,1,33,63),(649,1,399,1),(792,1,463,21),(793,1,465,60),(794,1,465,33),(795,10,465,55),(796,1,466,66),(797,1,466,2),(798,1,466,30),(799,8,466,52),(800,1,467,60),(801,1,467,66),(802,1,467,2),(803,1,467,37),(804,10,467,57),(805,1,468,60),(806,1,468,66),(807,1,468,2),(808,1,468,37),(809,10,468,57),(834,1,493,108),(835,1,493,107),(842,1,497,66),(843,1,497,18),(844,1,498,66),(845,1,498,37),(846,12,498,57),(847,1,499,66),(848,1,499,29),(849,12,499,52),(851,1,500,66),(852,1,500,5),(853,1,500,2),(854,1,500,30),(855,12,500,52),(937,6,466,54),(1512,1,496,66),(1513,1,496,5),(1514,1,496,2),(1702,1,1074,62),(1703,1,1074,2),(1704,1,1074,60),(1705,1,1075,62),(1706,1,1075,2),(1707,1,1075,60),(1708,1,1075,66),(2083,1,1274,62),(2084,1,1274,60),(2085,1,1274,37),(2086,12,1274,57),(2087,1,1274,5002),(2130,1,1284,2),(2131,1,1284,21),(2323,1,464,2),(2324,1,28,2),(2325,1,28,44),(2326,1,28,59),(2327,1,28,58),(2328,1,28,45),(2359,1,30,2),(2360,1,30,66),(2361,1,30,30),(2362,1,30,52),(2381,1,26,2),(2382,2,26,60),(2383,1,26,23),(2384,1,26,25),(2688,1,27,2),(2689,1,27,5),(2690,1,27,110),(2706,1,1073,66),(2707,1,1073,5),(2708,1,1073,8),(2709,1,1073,67),(2710,1,1073,2),(2711,1,29,33),(2712,8,29,55),(2713,1,29,5001),(2714,1,29,2),(2715,1,29,5000),(2716,1,1353,66),(2717,1,1353,26),(2718,1,1353,5),(2719,1,191,23),(2720,1,191,76),(2748,1,1318,2),(2749,1,1530,66),(2750,1,1530,5),(2751,1,1530,2),(2756,1,461,66),(2757,1,461,5),(2758,1,461,44),(2759,12,461,59),(2760,1,1072,21),(2761,1,1072,2);
/*!40000 ALTER TABLE `character_weapon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characteristic`
--

DROP TABLE IF EXISTS `characteristic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characteristic` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characteristic`
--

LOCK TABLES `characteristic` WRITE;
/*!40000 ALTER TABLE `characteristic` DISABLE KEYS */;
INSERT INTO `characteristic` VALUES (1,'WEAPON_SKILL'),(2,'BALLISTIC_SKILL'),(3,'STRENGTH'),(4,'TOUGHNESS'),(5,'INITIATIVE'),(6,'AGILITY'),(7,'DEXTERITY'),(8,'INTELLIGENCE'),(9,'WILLPOWER'),(10,'FELLOWSHIP'),(11,'WOUNDS'),(12,'MOVEMENT');
/*!40000 ALTER TABLE `characteristic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condition_entity`
--

DROP TABLE IF EXISTS `condition_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `condition_entity` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `has_counter` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition_entity`
--

LOCK TABLES `condition_entity` WRITE;
/*!40000 ALTER TABLE `condition_entity` DISABLE KEYS */;
INSERT INTO `condition_entity` VALUES (1,'ABLAZE',_binary '\0'),(2,'BLEEDING',_binary '\0'),(3,'BLINDED',_binary ''),(4,'BROKEN',_binary '\0'),(5,'DEAFENED',_binary '\0'),(6,'ENTANGLED',_binary '\0'),(7,'FATIGUED',_binary '\0'),(8,'POISON',_binary '\0'),(9,'PRONE',_binary '\0'),(10,'STUNNED',_binary '\0'),(11,'SURPRISED',_binary '\0'),(12,'UNCONSCIOUS',_binary '');
/*!40000 ALTER TABLE `condition_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_trait`
--

DROP TABLE IF EXISTS `creature_trait`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creature_trait` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `has_value` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_trait`
--

LOCK TABLES `creature_trait` WRITE;
/*!40000 ALTER TABLE `creature_trait` DISABLE KEYS */;
INSERT INTO `creature_trait` VALUES (1,_binary '','AFRAID'),(2,_binary '\0','AMPHIBIOUS'),(3,_binary '\0','ARBOREAL'),(4,_binary '','ANIMOSITY'),(5,_binary '','ARMOUR'),(6,_binary '\0','BELLIGERENT'),(7,_binary '\0','BESTIAL'),(8,_binary '\0','BIG'),(9,_binary '','BITE'),(10,_binary '','BLESSED'),(11,_binary '\0','BOUNCE'),(12,_binary '','BREATH_RATING'),(13,_binary '\0','BRUTE'),(14,_binary '\0','CHAMPION'),(15,_binary '\0','CHILL_GRASP'),(16,_binary '\0','CLEVER'),(17,_binary '\0','COLD_BLOODED'),(18,_binary '\0','CONSTRICTOR'),(19,_binary '\0','CONSTRUCT'),(20,_binary '\0','CORROSIVE_BLOOD'),(21,_binary '','CORRUPTED'),(22,_binary '\0','CUNNING'),(23,_binary '\0','DARK_VISION'),(24,_binary '','DAEMONIC'),(25,_binary '\0','DIE_HARD'),(26,_binary '','DISEASE'),(27,_binary '\0','DISTRACTING'),(28,_binary '\0','ELITE'),(29,_binary '\0','ETHEREAL'),(30,_binary '\0','FAST'),(31,_binary '','FEAR'),(32,_binary '','FLIGHT'),(33,_binary '\0','FRENZY'),(34,_binary '\0','FURY'),(35,_binary '\0','GHOSTLY_HOWL'),(36,_binary '\0','HARDY'),(37,_binary '','HATRED'),(38,_binary '','HORNS_RATING'),(39,_binary '\0','HUNGRY'),(40,_binary '','IMMUNITY'),(41,_binary '\0','IMMUNITY_TO_PSYCHOLOGY'),(42,_binary '\0','INFECTED'),(43,_binary '\0','INFESTATION'),(44,_binary '\0','LEADER'),(45,_binary '\0','MAGICAL'),(46,_binary '','MAGIC_RESISTANCE'),(47,_binary '','MENTAL_CORRUPTION'),(48,_binary '','MIRACLES'),(49,_binary '','MUTATION'),(50,_binary '\0','NIGHT_VISION'),(51,_binary '\0','PAINLESS'),(52,_binary '\0','PETRIFYING_GAZE'),(53,_binary '','PREJUDICE'),(54,_binary '','RANGED_RATING'),(55,_binary '\0','REAR'),(56,_binary '\0','REGENERATE'),(57,_binary '','SIZE'),(58,_binary '\0','SKITTISH'),(59,_binary '','SPELLCASTER'),(60,_binary '\0','STEALTHY'),(61,_binary '\0','STRIDE'),(62,_binary '\0','STUPID'),(63,_binary '\0','SWAMP_STRIDER'),(64,_binary '\0','SWARM'),(65,_binary '','TAIL_ATTACK'),(66,_binary '','TENTACLES'),(67,_binary '\0','TERRITORIAL'),(68,_binary '','TERROR'),(69,_binary '','TRAINED'),(70,_binary '','TONGUE_ATTACK_RATING'),(71,_binary '\0','TOUGH'),(72,_binary '\0','TRACKER'),(73,_binary '\0','UNDEAD'),(74,_binary '\0','UNSTABLE'),(75,_binary '\0','VAMPIRIC'),(76,_binary '','VENOM'),(77,_binary '\0','VOMIT'),(78,_binary '','WARD'),(79,_binary '\0','WALLCRAWLER'),(80,_binary '','WEAPON'),(81,_binary '','WEB'),(82,_binary '\0','ABSORB'),(83,_binary '\0','AMORPHOUS'),(84,_binary '','BLIGHTED'),(85,_binary '\0','FLESHTHIEF'),(86,_binary '\0','MINDLESS'),(87,_binary '\0','SPLIT');
/*!40000 ALTER TABLE `creature_trait` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `critical_wound`
--

DROP TABLE IF EXISTS `critical_wound`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `critical_wound` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `max_roll` int DEFAULT NULL,
  `min_roll` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `wounds` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `critical_wound`
--

LOCK TABLES `critical_wound` WRITE;
/*!40000 ALTER TABLE `critical_wound` DISABLE KEYS */;
INSERT INTO `critical_wound` VALUES (1,10,1,'HEAD_DRAMATIC_INJURY',1),(2,20,11,'HEAD_MINOR_CUT',1),(3,25,21,'HEAD_POKED_EYE',1),(4,30,26,'HEAD_EAR_BASH',1),(5,35,31,'HEAD_RATTLING_BLOW',2),(6,40,36,'HEAD_BLACK_EYE',2),(7,45,41,'HEAD_SLICED_EAR',2),(8,50,46,'HEAD_STRUCK_FOREHEAD',2),(9,55,51,'HEAD_FRACTURED_JAW',3),(10,60,56,'HEAD_MAJOR_EYE_WOUND',3),(11,65,61,'HEAD_MAJOR_EAR_WOUND',3),(12,70,66,'HEAD_BROKEN_NOSE',3),(13,75,71,'HEAD_BROKEN_JAR',4),(14,80,76,'HEAD_CONCUSSIVE_BLOW',4),(15,85,81,'HEAD_SMASHED_MOUTH',4),(16,90,86,'HEAD_MANGLED_EAR',4),(17,93,91,'HEAD_DEVASTATED_EYE',5),(18,96,94,'HEAD_DISFIGURING_BLOW',5),(19,99,97,'HEAD_MANGLED_JAW',5),(20,100,100,'HEAD_DECAPITATED',10),(21,10,1,'ARM_JARRED_ARM',1),(22,20,11,'ARM_MINOR_CUT',1),(23,25,21,'ARM_SPRAIN',1),(24,30,26,'ARM_BADLY_JARRED_ARM',2),(25,35,31,'ARM_TORN_MUSCLES',2),(26,40,36,'ARM_BLEEDING_HAND',2),(27,45,41,'ARM_WRENCHED_ARM',2),(28,50,46,'ARM_GAPING_WOUND',3),(29,55,51,'ARM_CLEAN_BREAK',3),(30,60,56,'ARM_RUPTURED_LIGAMENT',3),(31,65,61,'ARM_DEEP_CUT',3),(32,70,66,'ARM_DAMAGED_ARTERY',4),(33,75,71,'ARM_CRUSHED_ELBOW',4),(34,80,76,'ARM_DISLOCATED_SHOULDER',4),(35,85,81,'ARM_SEVERED_FINGER',4),(36,90,86,'ARM_CLEFT_HAND',5),(37,93,91,'ARM_MAULED_BICEP',5),(38,96,94,'ARM_MANGLED_HAND',5),(39,99,97,'ARM_SLICED_TENDONS',5),(40,100,100,'ARM_BRUTAL_DISMEMBERMENT',10),(41,10,1,'BODY_TIS_BUT_A_SCRATCH',1),(42,20,11,'BODY_GUT_BLOW',1),(43,25,21,'BODY_LOW_BLOW',1),(44,30,26,'BODY_TWISTED_BACK',1),(45,35,31,'BODY_WINDED',2),(46,40,36,'BODY_BRUISED_RIBS',2),(47,45,41,'BODY_WRENCHED_COLLAR_BONE',2),(48,50,46,'BODY_RAGGED_WOUND',2),(49,55,51,'BODY_CRACKED_RIBS',3),(50,60,56,'BODY_GAPING_WOUND',3),(51,65,61,'BODY_PAINFUL_CUT',3),(52,70,66,'BODY_ARTERIAL_DAMAGE',3),(53,75,71,'BODY_PULLED_BACK',4),(54,80,76,'BODY_FRACTURED_HIP',4),(55,85,81,'BODY_MAJOR_CHEST_WOUND',4),(56,90,86,'BODY_GUT_WOUND',4),(57,93,91,'BODY_SMASHED_RIB_CAGE',5),(58,96,94,'BODY_BROKEN_COLLAR_BONE',5),(59,99,97,'BODY_INTERNAL_BLEEDING',5),(60,100,100,'BODY_TORN_APART',10),(61,10,1,'LEG_STUBBED_TOE',1),(62,20,11,'LEG_TWISTED_ANKLE',1),(63,25,21,'LEG_MINOR_CUT',1),(64,30,26,'LEG_LOST_FOOTING',1),(65,35,31,'LEG_THIGH_STRIKE',2),(66,40,36,'LEG_SPRAINED_ANKLE',2),(67,45,41,'LEG_TWISTED_KNEE',2),(68,50,46,'LEG_BADLY_CUT_TOE',2),(69,55,51,'LEG_BAD_CUT',3),(70,60,56,'LEG_BADLY_TWISTED_KNEE',3),(71,65,61,'LEG_HACKED_LEG',3),(72,70,66,'LEG_TORN_THIGH',3),(73,75,71,'LEG_RUPTURED_TENDON',4),(74,80,76,'LEG_CARVED_SHIN',4),(75,85,81,'LEG_BROKEN_KNEE',4),(76,90,86,'LEG_DISLOCATED_KNEE',4),(77,93,91,'LEG_CRUSHED_FOOT',5),(78,96,94,'LEG_SEVERED_FOOT',5),(79,99,97,'LEG_CUT_TENDON',5),(80,100,100,'LEG_SHATTERED_PELVIS',10);
/*!40000 ALTER TABLE `critical_wound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `critical_wound_localization`
--

DROP TABLE IF EXISTS `critical_wound_localization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `critical_wound_localization` (
  `critical_wound_id` bigint NOT NULL,
  `body_localisation_id` bigint NOT NULL,
  KEY `FKdrn29a4omct7k44so55pfsgxc` (`body_localisation_id`),
  KEY `FK9l0c5r5d7olcw2v0g7vo7rlyl` (`critical_wound_id`),
  CONSTRAINT `FK9l0c5r5d7olcw2v0g7vo7rlyl` FOREIGN KEY (`critical_wound_id`) REFERENCES `critical_wound` (`id`),
  CONSTRAINT `FKdrn29a4omct7k44so55pfsgxc` FOREIGN KEY (`body_localisation_id`) REFERENCES `body_localization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `critical_wound_localization`
--

LOCK TABLES `critical_wound_localization` WRITE;
/*!40000 ALTER TABLE `critical_wound_localization` DISABLE KEYS */;
INSERT INTO `critical_wound_localization` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,2),(22,2),(23,2),(24,2),(25,2),(26,2),(27,2),(28,2),(29,2),(30,2),(31,2),(32,2),(33,2),(34,2),(35,2),(36,2),(37,2),(38,2),(39,2),(40,2),(21,3),(22,3),(23,3),(24,3),(25,3),(26,3),(27,3),(28,3),(29,3),(30,3),(31,3),(32,3),(33,3),(34,3),(35,3),(36,3),(37,3),(38,3),(39,3),(40,3),(41,4),(42,4),(43,4),(44,4),(45,4),(46,4),(47,4),(48,4),(49,4),(50,4),(51,4),(52,4),(53,4),(54,4),(55,4),(56,4),(57,4),(58,4),(59,4),(60,4),(61,5),(62,5),(63,5),(64,5),(65,5),(66,5),(67,5),(68,5),(69,5),(70,5),(71,5),(72,5),(73,5),(74,5),(75,5),(76,5),(77,5),(78,5),(79,5),(80,5),(61,6),(62,6),(63,6),(64,6),(65,6),(66,6),(67,6),(68,6),(69,6),(70,6),(71,6),(72,6),(73,6),(74,6),(75,6),(76,6),(77,6),(78,6),(79,6),(80,6);
/*!40000 ALTER TABLE `critical_wound_localization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequences`
--

DROP TABLE IF EXISTS `hibernate_sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) NOT NULL,
  `next_val` bigint DEFAULT NULL,
  PRIMARY KEY (`sequence_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequences`
--

LOCK TABLES `hibernate_sequences` WRITE;
/*!40000 ALTER TABLE `hibernate_sequences` DISABLE KEYS */;
INSERT INTO `hibernate_sequences` VALUES ('default',1530);
/*!40000 ALTER TABLE `hibernate_sequences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `injury`
--

DROP TABLE IF EXISTS `injury`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `injury` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `injury`
--

LOCK TABLES `injury` WRITE;
/*!40000 ALTER TABLE `injury` DISABLE KEYS */;
INSERT INTO `injury` VALUES (1,'MINOR_TORN_MUSCLE'),(2,'MAJOR_TORN_MUSCLE'),(3,'MINOR_BROKEN_BONE'),(4,'MAJOR_BROKEN_BONE'),(5,'AMPUTATED_ARM'),(6,'AMPUTATED_EAR'),(7,'AMPUTATED_EYE'),(8,'AMPUTATED_FINGERS'),(9,'AMPUTATED_FOOT'),(10,'AMPUTATED_HAND'),(11,'AMPUTATED_LEG'),(12,'AMPUTATED_NOSE'),(13,'AMPUTATED_TEETH'),(14,'AMPUTATED_TOES'),(15,'AMPUTATED_TONGUE');
/*!40000 ALTER TABLE `injury` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `note` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `note` varchar(2000) DEFAULT NULL,
  `character_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlh7b2x9n6uj7om671kk2c5fed` (`character_id`),
  CONSTRAINT `FKlh7b2x9n6uj7om671kk2c5fed` FOREIGN KEY (`character_id`) REFERENCES `character_entity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
INSERT INTO `note` VALUES (289,'Maskotka - +10 do Testów Sztuki, Muzyki, Występów.',501),(315,'- Mutacja zamieniła jej włosy w gromadę chwytnych paluchów o purpurowych paznokciach, które znikają gdzieś na jej karku.',1284),(316,'- Rzuciła na siebie zaklęcie \"Straszny Wygląd\"',1284);
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `is_skirmish_skill` bit(1) DEFAULT NULL,
  `has_specialisation` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (8,'ATHLETICS',_binary '',_binary '\0'),(9,'BRIBERY',_binary '\0',_binary '\0'),(10,'CHARM',_binary '\0',_binary '\0'),(11,'CHARM_ANIMAL',_binary '\0',_binary '\0'),(12,'CLIMB',_binary '\0',_binary '\0'),(13,'COOL',_binary '',_binary '\0'),(14,'CONSUME_ALCOHOL',_binary '\0',_binary '\0'),(15,'DODGE',_binary '',_binary '\0'),(16,'DRIVE',_binary '\0',_binary '\0'),(17,'ENDURANCE',_binary '',_binary '\0'),(22,'GAMBLE',_binary '\0',_binary '\0'),(23,'GOSSIP',_binary '\0',_binary '\0'),(24,'HAGGLE',_binary '\0',_binary '\0'),(25,'INTIMIDATE',_binary '\0',_binary '\0'),(26,'INTUITION',_binary '',_binary '\0'),(27,'LEADERSHIP',_binary '',_binary '\0'),(28,'MELEE_BASIC',_binary '',_binary '\0'),(29,'MELEE_BRAWLING',_binary '',_binary '\0'),(30,'MELEE_CAVALRY',_binary '',_binary '\0'),(31,'MELEE_FENCING',_binary '',_binary '\0'),(32,'MELEE_FLAIL',_binary '',_binary '\0'),(33,'MELEE_PARRY',_binary '',_binary '\0'),(34,'MELEE_POLEARM',_binary '',_binary '\0'),(35,'MELEE_TWO_HANDED',_binary '',_binary '\0'),(36,'NAVIGATION',_binary '\0',_binary '\0'),(37,'OUTDOOR_SURVIVAL',_binary '\0',_binary '\0'),(38,'PERCEPTION',_binary '',_binary '\0'),(39,'RIDE_DEMIGRYPH',_binary '',_binary '\0'),(40,'RIDE_GREAT_WOLF',_binary '',_binary '\0'),(41,'RIDE_GRIFFON',_binary '',_binary '\0'),(42,'RIDE_HORSE',_binary '',_binary '\0'),(43,'RIDE_PEGASUS',_binary '',_binary '\0'),(44,'ROW',_binary '\0',_binary '\0'),(45,'STEALTH_RURAL',_binary '\0',_binary '\0'),(46,'STEALTH_UNDERGROUND',_binary '\0',_binary '\0'),(47,'STEALTH_URBAN',_binary '\0',_binary '\0'),(48,'ANIMAL_CARE',_binary '\0',_binary '\0'),(49,'ANIMAL_TRAINING_DEMIGRYPH',_binary '\0',_binary '\0'),(50,'ANIMAL_TRAINING_DOG',_binary '\0',_binary '\0'),(51,'ANIMAL_TRAINING_HORSE',_binary '\0',_binary '\0'),(52,'ANIMAL_TRAINING_PEGASUS',_binary '\0',_binary '\0'),(53,'ANIMAL_TRAINING_PIGEON',_binary '\0',_binary '\0'),(54,'CHANNELLING_AQSHY',_binary '',_binary '\0'),(55,'CHANNELLING_AZYR',_binary '',_binary '\0'),(56,'CHANNELLING_CHAMON',_binary '',_binary '\0'),(57,'CHANNELLING_DHAR',_binary '',_binary '\0'),(58,'CHANNELLING_GHUR',_binary '',_binary '\0'),(59,'CHANNELLING_GHYRAN',_binary '',_binary '\0'),(60,'CHANNELLING_HYSH',_binary '',_binary '\0'),(61,'CHANNELLING_SHYISH',_binary '',_binary '\0'),(62,'CHANNELLING_ULGU',_binary '',_binary '\0'),(63,'EVALUATE',_binary '\0',_binary '\0'),(64,'HEAL',_binary '',_binary '\0'),(70,'LANGUAGE_MAGICK',_binary '',_binary '\0'),(89,'PICK_LOCK',_binary '\0',_binary '\0'),(95,'PRAY',_binary '',_binary '\0'),(96,'RANGED_BLACKPOWDER',_binary '',_binary '\0'),(97,'RANGED_BOW',_binary '',_binary '\0'),(98,'RANGED_CROSSBOW',_binary '',_binary '\0'),(99,'RANGED_ENGINEERING',_binary '',_binary '\0'),(100,'RANGED_ENTANGLING',_binary '',_binary '\0'),(101,'RANGED_EXPLOSIVES',_binary '',_binary '\0'),(102,'RANGED_SLING',_binary '',_binary '\0'),(103,'RANGED_THROWING',_binary '',_binary '\0'),(104,'RESEARCH',_binary '\0',_binary '\0'),(105,'SAIL_BARGE',_binary '\0',_binary '\0'),(106,'SAIL_CARAVEL',_binary '\0',_binary '\0'),(107,'SAIL_COG',_binary '\0',_binary '\0'),(108,'SAIL_FRIGATE',_binary '\0',_binary '\0'),(109,'SAIL_WOLFSHIP',_binary '\0',_binary '\0'),(116,'SET_TRAP',_binary '\0',_binary '\0'),(117,'SLEIGHT_OF_HAND',_binary '',_binary '\0'),(118,'SWIM',_binary '\0',_binary '\0'),(119,'TRACK',_binary '\0',_binary '\0'),(128,'CHANNELLING_TZEENTCH',_binary '',_binary '\0'),(129,'ART',_binary '\0',_binary ''),(130,'ENTERTAIN',_binary '\0',_binary ''),(131,'STEALTH',_binary '\0',_binary '\0'),(132,'LANGUAGE',_binary '\0',_binary ''),(133,'LORE',_binary '\0',_binary ''),(134,'PERFORM',_binary '\0',_binary ''),(135,'PLAY',_binary '\0',_binary ''),(136,'SECRET_SIGNS',_binary '\0',_binary ''),(137,'TRADE',_binary '\0',_binary '');
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skirmish_character_entity`
--

DROP TABLE IF EXISTS `skirmish_character_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skirmish_character_entity` (
  `id` bigint NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_right_handed` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `advantage` int DEFAULT NULL,
  `current_wounds` int DEFAULT NULL,
  `is_dead` bit(1) DEFAULT NULL,
  `skirmish_initiative` int DEFAULT NULL,
  `group_column` varchar(255) DEFAULT NULL,
  `sequence_number` int DEFAULT NULL,
  `character_id` bigint DEFAULT NULL,
  `skirmish_group_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhd7xbw9ja8fgakh2019l48h3e` (`character_id`),
  KEY `FKdrqrtm2omvyx26yg476ethb9q` (`skirmish_group_id`),
  CONSTRAINT `FKdrqrtm2omvyx26yg476ethb9q` FOREIGN KEY (`skirmish_group_id`) REFERENCES `skirmish_group` (`id`),
  CONSTRAINT `FKhd7xbw9ja8fgakh2019l48h3e` FOREIGN KEY (`character_id`) REFERENCES `character_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skirmish_character_entity`
--

LOCK TABLES `skirmish_character_entity` WRITE;
/*!40000 ALTER TABLE `skirmish_character_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `skirmish_character_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skirmish_group`
--

DROP TABLE IF EXISTS `skirmish_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skirmish_group` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `advantages` int DEFAULT NULL,
  `color_b` int DEFAULT NULL,
  `color_g` int DEFAULT NULL,
  `color_r` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skirmish_group`
--

LOCK TABLES `skirmish_group` WRITE;
/*!40000 ALTER TABLE `skirmish_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `skirmish_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell`
--

DROP TABLE IF EXISTS `spell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spell` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `spell_group_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbb2xubljj6vho3vox4pwykmkw` (`spell_group_id`),
  CONSTRAINT `FKbb2xubljj6vho3vox4pwykmkw` FOREIGN KEY (`spell_group_id`) REFERENCES `spell_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell`
--

LOCK TABLES `spell` WRITE;
/*!40000 ALTER TABLE `spell` DISABLE KEYS */;
INSERT INTO `spell` VALUES (1,'ANIMAL_FRIEND',1),(2,'BEARINGS',1),(3,'DAZZLE',1),(4,'CAREFUL_STEP',1),(5,'CONSERVE',1),(6,'DART',1),(7,'DRAIN',1),(8,'EAVESDROP',1),(9,'GUST',1),(10,'LIGHT',1),(11,'MAGIC_FLAME',1),(12,'MARSH_LIGHTS',1),(13,'MURMURED_WHISPER',1),(14,'OPEN_LOCK',1),(15,'PRODUCE_SMALL_ANIMAL',1),(16,'PROTECTION_FROM_RAIN',1),(17,'PURIFY_WATER',1),(18,'ROT',1),(19,'SLEEP',1),(20,'SPRING',1),(21,'SHOCK',1),(22,'SLY_HANDS',1),(23,'SOUNDS',1),(24,'TWITCH',1),(25,'WARNING',1),(26,'AETHYRIC_ARMOUR',2),(27,'AETHYRIC_ARMS',2),(28,'ARROW_SHIELD',2),(29,'BLAST',2),(30,'BOLT',2),(31,'BREATH',2),(32,'BRIDGE',2),(33,'CHAIN_ATTACK',2),(34,'CORROSIVE_BLOOD',2),(35,'DARK_VISION',2),(36,'DISTRACTING',2),(37,'DOME',2),(38,'DROP',2),(39,'ENTANGLE',2),(40,'FEARSOME',2),(41,'FLIGHT',2),(42,'MAGIC_SHIELD',2),(43,'MOVE_OBJECT',2),(44,'MUNDANE_AURA',2),(45,'PUSH',2),(46,'TELEPORT',2),(47,'TERRIFYING',2),(48,'WARD',2),(49,'AMBER_TALONS',3),(50,'BEAST_FORM',3),(51,'BEAST_MASTER',3),(52,'BEAST_TONGUE',3),(53,'FLOCK_OF_DOOM',3),(54,'HUNTERS_HIDE',3),(55,'THE_AMBER_SPEAR',3),(56,'WYSSANS_WILDFORM',3),(57,'CARESS_OF_LANIPH',4),(58,'DYING_WORDS',4),(59,'PURPLE_PALL_OF_SHYISH',4),(60,'SANCTIFY',4),(61,'SCYTHE_OF_SHYISH',4),(62,'SOUL_VORTEX',4),(63,'STEAL_LIFE',4),(64,'SWIFT_PASSING',4),(65,'AQSHYS_AEGIS',5),(66,'CAUTERISE',5),(67,'CROWN_OF_FLAME',5),(68,'FLAMING_HEARTS',5),(69,'FIREWALL',5),(70,'GREAT_FIRES_OF_UZHUL',5),(71,'FLAMING_SWORD_OF_RHUIN',5),(72,'PURGE',5),(73,'CERULEAN_SHIELD',6),(74,'COMET_OF_CASANDORA',6),(75,'FATES_FICKLE_FINGERS',6),(76,'STARCROSSED',6),(77,'TESSLAS_ARC',6),(78,'THE_FIRST_PORTENT_OF_AMUL',6),(79,'THE_SECOND_PORTENT_OF_AMUL',6),(80,'THE_THIRD_PORTENT_OF_AMUL',6),(81,'CRUCIBLE_OF_CHAMON',7),(82,'ENCHANT_WEAPON',7),(83,'FEATHER_OF_LEAD',7),(84,'FOOLS_GOLD',7),(85,'FORGE_OF_CHAMON',7),(86,'GLITTERING_ROBE',7),(87,'MUTABLE_METAL',7),(88,'TRANSMUTATION_OF_CHAMON',7),(89,'BARKSKIN',8),(90,'EARTHBLOOD',8),(91,'EARTHPOOL',8),(92,'FAT_OF_THE_LAND',8),(93,'FOREST_OF_THORNS',8),(94,'LIE_OF_THE_LAND',8),(95,'LIFEBLOOM',8),(96,'REGENERATE',8),(97,'BANISHMENT',9),(98,'BLINDING_LIGHT',9),(99,'CLARITY_OF_THOUGHT',9),(100,'DAEMONBANE',9),(102,'HEALING_LIGHT',9),(103,'NET_OF_AMYNTOK',9),(104,'PHAS_PROTECTION',9),(105,'SPEED_OF_THOUGHT',9),(106,'CHOKING_SHADOWS',10),(107,'DOPPELGANGER',10),(108,'ILLUSION',10),(109,'MINDSLIP',10),(110,'MYSTIFYING_MIASMA',10),(111,'SHADOWSTEED',10),(112,'SHADOWSTEP',10),(113,'SHROUD_OF_INVISIBILITY',10),(114,'GOODWILL',11),(115,'MIRKRIDE',11),(116,'NEPENTHE',11),(117,'NOSTRUM',11),(118,'PART_THE_BRANCHES',11),(119,'PROTECTIVE_CHARM',11),(120,'BLIGHT',12),(121,'CREEPING_MENACE',12),(122,'CURSE_OF_CRIPPLING_PAIN',12),(123,'CURSE_OF_ILL_FORTUNE',12),(124,'HAUNTING_HORROR',12),(125,'THE_EVIL_EYE',12),(126,'DESTROY_LESSER_DAEMON',13),(127,'DETECT_DAEMON',13),(128,'MANIFEST_LESSER_DAEMON',13),(129,'OCTAGRAM',13),(130,'RAISE_DEAD',14),(131,'REANIMATE',14),(132,'SCREAMING_SKULL',14),(133,'VANHELS_CALL',14),(134,'STREAM_OF_CORRUPTION',15),(135,'ACQUIESCENCE',16),(136,'TREASON_OF_TZEENTCH',17),(137,'BLAST_OF_CORRUPTION',18),(138,'BOLT_OF_CORRUPTION',18),(139,'DAEMONIC_MIEN',18),(140,'FOUL_MESSENGER',18),(141,'JOYOUS_ASPECT',18),(142,'OBSESSION',18),(143,'POWER_OF_CHAOS',18),(144,'REND_AETHYR',18),(145,'SLAVE_TO_DARKNESS',18),(146,'BOON_OF_TZEENTCH',17),(147,'THE_PURPLE_HAND',17),(148,'CURSE_OF_TZEENTCH',17),(149,'BLUE_FIRE_OF_TZEENTCH',17),(150,'BOLT_OF_CHANGE',17),(151,'THE_FLICKERING_FLAMES_OF_FICKLE_FATE',17),(152,'MASTER_OF_FORTUNE',17),(153,'MINDFIRE',17),(154,'PINK_FIRE_OF_TZEENTCH',17),(155,'SENSE_THE_SKEIN',17),(156,'TRANSFORMATION_OF_TZEENTCH',17),(157,'TZEENTCHS_FIRESTORM',17),(158,'TZEENTCHS_GOLDEN_AURA',17),(159,'WORD_OF_TZEENTCH',17);
/*!40000 ALTER TABLE `spell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_group`
--

DROP TABLE IF EXISTS `spell_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spell_group` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_group`
--

LOCK TABLES `spell_group` WRITE;
/*!40000 ALTER TABLE `spell_group` DISABLE KEYS */;
INSERT INTO `spell_group` VALUES (1,'PETTY_SPELLS'),(2,'ARCANE_SPELLS'),(3,'LORE_OF_BEASTS'),(4,'LORE_OF_DEATH'),(5,'LORE_OF_FIRE'),(6,'LORE_OF_HEAVENS'),(7,'LORE_OF_METAL'),(8,'LORE_OF_LIFE'),(9,'LORE_OF_LIGHT'),(10,'LORE_OF_SHADOWS'),(11,'LORE_OF_HEDGECRAFT'),(12,'LORE_OF_WITCHCRAFT'),(13,'LORE_OF_DAEMONOLOGY'),(14,'LORE_OF_NECROMANCY'),(15,'LORE_OF_NURGLE'),(16,'LORE_OF_SLAANESH'),(17,'LORE_OF_TZEENTCH'),(18,'CHAOS_SPELLS');
/*!40000 ALTER TABLE `spell_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `talent`
--

DROP TABLE IF EXISTS `talent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `talent` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `max_level` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_skirmish_talent` bit(1) DEFAULT NULL,
  `has_specialisation` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talent`
--

LOCK TABLES `talent` WRITE;
/*!40000 ALTER TABLE `talent` DISABLE KEYS */;
INSERT INTO `talent` VALUES (1,'BSB','ACCURATE_SHOT',_binary '',_binary '\0'),(2,'IB','ACUTE_SENSE_SIGHT',_binary '\0',_binary '\0'),(3,'IB','ACUTE_SENSE_SMELL',_binary '\0',_binary '\0'),(4,'IB','ACUTE_SENSE_HEARING',_binary '\0',_binary '\0'),(5,'IB','ACUTE_SENSE_FEEL',_binary '\0',_binary '\0'),(6,'IB','ACUTE_SENSE_TASTE',_binary '\0',_binary '\0'),(7,'IB','AETHYRIC_ATTUNEMENT',_binary '',_binary '\0'),(8,'IB','ALLEY_CAT',_binary '\0',_binary '\0'),(9,'2','AMBIDEXTROUS',_binary '',_binary '\0'),(10,'WPB','ANIMAL_AFFINITY',_binary '\0',_binary '\0'),(11,'1','ARCANE_MAGIC_BEASTS',_binary '',_binary '\0'),(12,'1','ARCANE_MAGIC_DEATH',_binary '',_binary '\0'),(13,'1','ARCANE_MAGIC_FIRE',_binary '',_binary '\0'),(14,'1','ARCANE_MAGIC_HEAVENS',_binary '',_binary '\0'),(15,'1','ARCANE_MAGIC_METAL',_binary '',_binary '\0'),(16,'1','ARCANE_MAGIC_SHADOW',_binary '',_binary '\0'),(17,'1','ARCANE_MAGIC_LIGHT',_binary '',_binary '\0'),(18,'1','ARCANE_MAGIC_LIFE',_binary '',_binary '\0'),(19,'1','ARCANE_MAGIC_HEDGECRAFT',_binary '',_binary '\0'),(20,'1','ARCANE_MAGIC_NECROMANCY',_binary '',_binary '\0'),(21,'FELB','ARGUMENTATIVE',_binary '\0',_binary '\0'),(22,'DEXB','ARTISTIC',_binary '\0',_binary '\0'),(23,'FELB','ATTRACTIVE',_binary '\0',_binary '\0'),(24,'WPB','BATTLE_RAGE',_binary '',_binary '\0'),(25,'WSB','BEAT_BLADE',_binary '',_binary '\0'),(26,'FELB','BENEATH_NOTICE',_binary '\0',_binary '\0'),(27,'SB','BERSERK_CHARGE',_binary '',_binary '\0'),(28,'FELB','BLATHER',_binary '\0',_binary '\0'),(29,'1','BLESS_MANANN',_binary '',_binary '\0'),(30,'1','BLESS_MORR',_binary '',_binary '\0'),(31,'1','BLESS_MYRMIDIA',_binary '',_binary '\0'),(32,'1','BLESS_RANALD',_binary '',_binary '\0'),(33,'1','BLESS_RHYA',_binary '',_binary '\0'),(34,'1','BLESS_SHALLYA',_binary '',_binary '\0'),(35,'1','BLESS_SIGMAR',_binary '',_binary '\0'),(36,'1','BLESS_TAAL',_binary '',_binary '\0'),(37,'1','BLESS_ULRIC',_binary '',_binary '\0'),(38,'1','BLESS_VERENA',_binary '',_binary '\0'),(39,'INTB','BOOKISH',_binary '\0',_binary '\0'),(40,'SB','BREAK_AND_ENTER',_binary '\0',_binary '\0'),(41,'FELB','BRIBER',_binary '\0',_binary '\0'),(42,'INTB','CARDSHARP',_binary '\0',_binary '\0'),(43,'IB','CAREFUL_STRIKE',_binary '',_binary '\0'),(44,'TB','CAROUSER',_binary '\0',_binary '\0'),(45,'AGB','CATFALL',_binary '\0',_binary '\0'),(46,'FELB','CAT_TONGUED',_binary '\0',_binary '\0'),(47,'1','CHAOS_MAGIC_NURGLE',_binary '',_binary '\0'),(48,'1','CHAOS_MAGIC_SLAANESH',_binary '',_binary '\0'),(49,'1','CHAOS_MAGIC_TZEENTCH',_binary '',_binary '\0'),(50,'IB','COMBAT_AWARE',_binary '',_binary '\0'),(51,'AGB','COMBAT_MASTER',_binary '',_binary '\0'),(52,'IB','COMBAT_REFLEXES',_binary '',_binary '\0'),(53,'FELB','COMMANDING_PRESENCE',_binary '',_binary '\0'),(54,'INTB','CONCOCT',_binary '\0',_binary '\0'),(55,'AGB','CONTORTIONIST',_binary '\0',_binary '\0'),(56,'1','COOLHEADED',_binary '\0',_binary '\0'),(57,'DEXB','CRACK_THE_WHIP',_binary '\0',_binary '\0'),(58,'DEXB','CRAFTSMAN',_binary '\0',_binary ''),(59,'NONE','CRIMINAL',_binary '\0',_binary '\0'),(60,'1','DEADEYE_SHOT',_binary '',_binary '\0'),(61,'FELB','DEALMAKER',_binary '\0',_binary '\0'),(62,'IB','DETECT_ARTEFACT',_binary '\0',_binary '\0'),(63,'INTB','DICEMAN',_binary '\0',_binary '\0'),(64,'WSB','DIRTY_FIGHTING',_binary '',_binary '\0'),(65,'IB','DISARM',_binary '',_binary '\0'),(66,'AGB','DISTRACT',_binary '',_binary '\0'),(67,'1','DOOMED',_binary '\0',_binary '\0'),(68,'WSB','DRILLED',_binary '',_binary '\0'),(69,'AGB','DUAL_WIELDER',_binary '',_binary '\0'),(70,'INTB','EMBEZZLE',_binary '\0',_binary '\0'),(71,'AGB','ENCLOSED_FIGHTER',_binary '',_binary '\0'),(72,'FELB','ETIQUETTE',_binary '\0',_binary ''),(73,'DEXB','FAST_HANDS',_binary '',_binary '\0'),(74,'AGB','FAST_SHOT',_binary '',_binary '\0'),(81,'WSB','FEINT',_binary '',_binary '\0'),(82,'INTB','FIELD_DRESSING',_binary '',_binary '\0'),(83,'IB','FISHERMAN',_binary '\0',_binary '\0'),(84,'TB','FLAGELLANT',_binary '\0',_binary '\0'),(85,'AGB','FLEE',_binary '',_binary '\0'),(86,'1','FLEET_FOOTED',_binary '\0',_binary '\0'),(87,'1','FRENZY',_binary '',_binary '\0'),(88,'SB','FRIGHTENING',_binary '',_binary '\0'),(89,'AGB','FURIOUS_ASSAULT',_binary '',_binary '\0'),(90,'FELB','GREGARIOUS',_binary '\0',_binary '\0'),(91,'DEXB','GUNNER',_binary '',_binary '\0'),(92,'TB','HARDY',_binary '\0',_binary '\0'),(100,'FELB','HOLY_HATRED',_binary '',_binary '\0'),(101,'IB','HOLY_VISIONS',_binary '\0',_binary '\0'),(102,'IB','HUNTERS_EYE',_binary '\0',_binary '\0'),(103,'FELB','IMPASSIONED_ZEAL',_binary '\0',_binary '\0'),(104,'TB','IMPLACABLE',_binary '',_binary '\0'),(105,'DEXB','IN_FIGHTER',_binary '',_binary '\0'),(106,'FELB','INSPIRING',_binary '\0',_binary '\0'),(107,'IB','INSTINCTIVE_DICTION',_binary '',_binary '\0'),(108,'1','INVOKE_MANANN',_binary '',_binary '\0'),(109,'1','INVOKE_MORR',_binary '',_binary '\0'),(110,'1','INVOKE_MYRMIDIA',_binary '',_binary '\0'),(111,'1','INVOKE_RANALD',_binary '',_binary '\0'),(112,'1','INVOKE_RHYA',_binary '',_binary '\0'),(113,'1','INVOKE_SHALLYA',_binary '',_binary '\0'),(114,'1','INVOKE_SIGMAR',_binary '',_binary '\0'),(115,'1','INVOKE_TAAL',_binary '',_binary '\0'),(116,'1','INVOKE_ULRIC',_binary '',_binary '\0'),(117,'1','INVOKE_VERENA',_binary '',_binary '\0'),(118,'TB','IRON_JAW',_binary '',_binary '\0'),(119,'WPB','IRON_WILL',_binary '\0',_binary '\0'),(120,'1','JUMP_UP',_binary '',_binary '\0'),(121,'1','KINGPIN',_binary '\0',_binary '\0'),(122,'1','LIGHTNING_REFLEXES',_binary '\0',_binary '\0'),(123,'IB','LINGUISTICS',_binary '\0',_binary '\0'),(124,'IB','LIP_READING',_binary '\0',_binary '\0'),(125,'FELB','LUCK',_binary '\0',_binary '\0'),(126,'IB','MAGICAL_SENSE',_binary '\0',_binary '\0'),(127,'1','MAGIC_RESISTANCE',_binary '',_binary '\0'),(128,'NONE','MAGNUM_OPUS',_binary '\0',_binary '\0'),(129,'1','MARKSMAN',_binary '\0',_binary '\0'),(130,'FELB','MASTER_OF_DISGUISE',_binary '\0',_binary '\0'),(131,'FELB','MASTER_ORATOR',_binary '\0',_binary '\0'),(132,'DEXB','MASTER_TRADESMAN',_binary '\0',_binary ''),(133,'SB','MENACING',_binary '\0',_binary '\0'),(134,'IB','MIMIC',_binary '\0',_binary '\0'),(135,'IB','NIGHT_VISION',_binary '',_binary '\0'),(136,'1','NIMBLE_FINGERED',_binary '\0',_binary '\0'),(137,'1','NOBLE_BLOOD',_binary '\0',_binary '\0'),(138,'IB','NOSE_FOR_TROUBLE',_binary '\0',_binary '\0'),(139,'IB','NUMISMATICS',_binary '\0',_binary '\0'),(140,'AGB','OLD_SALT',_binary '\0',_binary '\0'),(141,'IB','ORIENTATION',_binary '\0',_binary '\0'),(142,'FELB','PANHANDLE',_binary '\0',_binary '\0'),(143,'IB','PERFECT_PITCH',_binary '\0',_binary '\0'),(144,'1','PETTY_MAGIC',_binary '',_binary '\0'),(145,'INTB','PHARMACIST',_binary '\0',_binary '\0'),(146,'IB','PILOT',_binary '\0',_binary '\0'),(147,'FELB','PUBLIC_SPEAKER',_binary '\0',_binary '\0'),(148,'WPB','PURE_SOUL',_binary '\0',_binary '\0'),(149,'DEXB','RAPID_RELOAD',_binary '',_binary '\0'),(150,'IB','REACTION_STRIKE',_binary '',_binary '\0'),(151,'1','READ_WRITE',_binary '\0',_binary '\0'),(152,'AGB','RELENTLESS',_binary '',_binary '\0'),(153,'TB','POISON_RESISTANCE',_binary '',_binary '\0'),(154,'TB','DISEASE_RESISTANCE',_binary '',_binary '\0'),(155,'TB','MUTATION_RESISTANCE',_binary '',_binary '\0'),(156,'TB','CHAOS_RESISTANCE',_binary '',_binary '\0'),(157,'SB','RESOLUTE',_binary '',_binary '\0'),(158,'WSB','REVERSAL',_binary '',_binary '\0'),(159,'AGB','RIPOSTE',_binary '',_binary '\0'),(160,'IB','RIVER_GUIDE',_binary '\0',_binary '\0'),(161,'TB','ROBUST',_binary '',_binary '\0'),(162,'AGB','ROUGHRIDER',_binary '',_binary '\0'),(163,'AGB','ROVER',_binary '\0',_binary '\0'),(164,'INTB','SAVANT',_binary '\0',_binary ''),(165,'1','SAVVY',_binary '\0',_binary '\0'),(166,'SB','SCALE_SHEER_SURFACE',_binary '\0',_binary '\0'),(167,'INTB','SCHEMER',_binary '\0',_binary '\0'),(168,'TB','SEA_LEGS',_binary '\0',_binary '\0'),(169,'INTB','SEASONED_TRAVELLER',_binary '\0',_binary '\0'),(170,'IB','SECOND_SIGHT',_binary '\0',_binary '\0'),(171,'INTB','SECRET_IDENTITY',_binary '\0',_binary '\0'),(172,'AGB','SHADOW',_binary '\0',_binary '\0'),(173,'1','SHARP',_binary '\0',_binary '\0'),(174,'1','SHARPSHOOTER',_binary '',_binary '\0'),(175,'SB','SHIELDSMAN',_binary '',_binary '\0'),(176,'IB','SIXTH_SENSE',_binary '',_binary '\0'),(177,'1','SLAYER',_binary '',_binary '\0'),(178,'1','SMALL',_binary '',_binary '\0'),(179,'4','SNIPER',_binary '',_binary '\0'),(180,'INTB','SPEEDREADER',_binary '\0',_binary '\0'),(181,'SB','SPRINTER',_binary '',_binary '\0'),(182,'AGB','STEP_ASIDE',_binary '',_binary '\0'),(183,'TB','STONE_SOUP',_binary '\0',_binary '\0'),(184,'WPB','STOUT_HEARTED',_binary '',_binary '\0'),(191,'SB','STRIKE_MIGHTY_BLOW',_binary '',_binary '\0'),(192,'IB','STRIKE_TO_INJURE',_binary '',_binary '\0'),(193,'WSB','STRIKE_TO_STUN',_binary '',_binary '\0'),(194,'SB','STRONG_BACK',_binary '\0',_binary '\0'),(195,'SB','STRONG_LEGS',_binary '\0',_binary '\0'),(196,'WPB','STRING_MINDED',_binary '\0',_binary '\0'),(197,'SB','STRONG_SWIMMER',_binary '\0',_binary '\0'),(198,'SB','STURDY',_binary '\0',_binary '\0'),(199,'1','SUAVE',_binary '\0',_binary '\0'),(200,'INTB','SUPER_NUMERATE',_binary '\0',_binary '\0'),(201,'FELB','SUPPORTIVE',_binary '\0',_binary '\0'),(202,'IB','SURE_SHOT',_binary '\0',_binary '\0'),(203,'INTB','SURGERY',_binary '',_binary '\0'),(204,'TB','TENACIOUS',_binary '\0',_binary '\0'),(205,'DEXB','TINKER',_binary '\0',_binary '\0'),(206,'INTB','TOWER_OF_MEMORIES',_binary '\0',_binary '\0'),(207,'IB','TRAPPER',_binary '\0',_binary '\0'),(208,'AGB','TRICK_RIDING',_binary '',_binary '\0'),(209,'AGB','TUNNEL_RAT',_binary '\0',_binary '\0'),(210,'WPB','UNSHAKABLE',_binary '',_binary '\0'),(211,'1','VERY_RESILIENT',_binary '\0',_binary '\0'),(212,'1','VERY_STRONG',_binary '\0',_binary '\0'),(213,'FELB','WAR_LEADER',_binary '',_binary '\0'),(214,'1','WAR_WIZARD',_binary '',_binary '\0'),(215,'1','WARRIOR_BORN',_binary '\0',_binary '\0'),(216,'AGB','WATERMAN',_binary '\0',_binary '\0'),(217,'NONE','WEALTHY',_binary '\0',_binary '\0'),(218,'IB','WELL_PREPARED',_binary '\0',_binary '\0'),(219,'WPB','WITCH',_binary '\0',_binary '\0'),(220,'1','ARCANE_MAGIC_DEMONOLOGY',_binary '',_binary '\0'),(223,'FELB','FEARLESS',_binary '\0',_binary ''),(224,'FELB','HATRED',_binary '\0',_binary ''),(225,'AGB','STRIDER',_binary '',_binary '');
/*!40000 ALTER TABLE `talent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weapon`
--

DROP TABLE IF EXISTS `weapon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weapon` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `damage` int DEFAULT NULL,
  `encumbrance` varchar(255) DEFAULT NULL,
  `is_using_strength` bit(1) DEFAULT NULL,
  `is_using_strength_in_range` bit(1) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `name_translation` varchar(255) NOT NULL,
  `price` varchar(255) DEFAULT NULL,
  `weapon_range` float DEFAULT NULL,
  `availability_id` bigint NOT NULL,
  `weapon_group_id` bigint NOT NULL,
  `weapon_reach_id` bigint NOT NULL,
  `weapon_type_id` bigint NOT NULL,
  `is_base_weapon` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_m3g4t18ism1x7p997f9ustdu7` (`name`),
  UNIQUE KEY `UK_im2966n1lf6vmqt578ibtrcah` (`name_translation`),
  KEY `FKf09qvu7ulqpj06jdy82l1ysih` (`availability_id`),
  KEY `FKb0c92qm8bhswbxrt0rrjfisa1` (`weapon_group_id`),
  KEY `FKi3sgoa8cgvxlpj59kkamws5yu` (`weapon_reach_id`),
  KEY `FK3t2hcfewrcv6ielmtgbhrib23` (`weapon_type_id`),
  CONSTRAINT `FK3t2hcfewrcv6ielmtgbhrib23` FOREIGN KEY (`weapon_type_id`) REFERENCES `weapon_type` (`id`),
  CONSTRAINT `FKb0c92qm8bhswbxrt0rrjfisa1` FOREIGN KEY (`weapon_group_id`) REFERENCES `weapon_group` (`id`),
  CONSTRAINT `FKf09qvu7ulqpj06jdy82l1ysih` FOREIGN KEY (`availability_id`) REFERENCES `availability` (`id`),
  CONSTRAINT `FKi3sgoa8cgvxlpj59kkamws5yu` FOREIGN KEY (`weapon_reach_id`) REFERENCES `weapon_reach` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5004 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapon`
--

LOCK TABLES `weapon` WRITE;
/*!40000 ALTER TABLE `weapon` DISABLE KEYS */;
INSERT INTO `weapon` VALUES (1,1,'-',_binary '',_binary '\0','IMPROVISED_WEAPON','Broń improwizowana','-',0,3,1,7,1,_binary ''),(2,2,'0',_binary '',_binary '\0','DAGGER','Sztylet','16S',0,1,1,9,1,_binary ''),(3,1,'0',_binary '',_binary '\0','KNIFE','Nóż','8S',0,1,1,9,1,_binary ''),(4,1,'0',_binary '',_binary '\0','SHIELD_BUCKLER','Tarcza (puklerz)','18S 2P',0,1,1,4,1,_binary ''),(5,2,'1',_binary '',_binary '\0','SHIELD','Tarcza','2GC',0,1,1,9,1,_binary ''),(6,3,'3',_binary '',_binary '\0','SHIELD_LARGE','Tarcza (duża)','3GC',0,1,1,9,1,_binary ''),(7,5,'3',_binary '',_binary '\0','CAVALRY_HAMMER','Młot kawaleryjski','3GC',0,5,2,2,1,_binary ''),(8,6,'3',_binary '',_binary '\0','LANCE','Kopia','1GC',0,5,2,8,1,_binary ''),(9,3,'1',_binary '',_binary '\0','FOIL','Floret','5GC',0,5,3,1,1,_binary ''),(10,4,'1',_binary '',_binary '\0','RAPIER','Rapier','5GC',0,5,3,2,1,_binary ''),(11,0,'-',_binary '',_binary '\0','UNARMED','Pięści i kopniaki','-',0,3,4,4,1,_binary ''),(12,2,'0',_binary '',_binary '\0','KNUCKLEDUSTERS','Kastet','2S 6P',0,1,4,4,1,_binary ''),(13,3,'1',_binary '',_binary '\0','GRAIN_FLAIL','Cep bojowy','10S',0,1,5,1,1,_binary ''),(14,5,'1',_binary '',_binary '\0','FLAIL','Korbacz','2GC',0,5,5,1,1,_binary ''),(15,6,'2',_binary '',_binary '\0','MILITARY_FLAIL','Kiścień','3GC',0,4,5,2,1,_binary ''),(16,2,'0',_binary '',_binary '\0','MAIN_GAUCHE','Lewak','1GC',0,4,6,9,1,_binary ''),(17,3,'1',_binary '',_binary '\0','SWORDBRAKER','Łamacz mieczy','1GC 2S',0,5,6,6,1,_binary ''),(18,4,'3',_binary '',_binary '\0','HALBERD','Halabarda','2GC',0,1,7,2,1,_binary ''),(19,4,'2',_binary '',_binary '\0','SPEAR','Włócznia','15S',0,1,7,8,1,_binary ''),(20,4,'4',_binary '',_binary '\0','PIKE','Pika','18S',0,4,7,3,1,_binary ''),(21,4,'2',_binary '',_binary '\0','QUARTER_STAFF','Kostur','3S',0,1,7,2,1,_binary ''),(22,5,'3',_binary '',_binary '\0','BASTARD_SWORD','Półtorak','8GC',0,5,8,2,1,_binary ''),(23,6,'3',_binary '',_binary '\0','GREAT_AXE','Wielki topór','4GC',0,5,8,2,1,_binary ''),(24,5,'3',_binary '',_binary '\0','PICK','Nadziak','9S',0,1,8,1,1,_binary ''),(25,6,'3',_binary '',_binary '\0','2H_WARHAMMER','Dwuręczny młot bojowy','3GC',0,1,8,1,1,_binary ''),(26,5,'3',_binary '',_binary '\0','ZWEIHANDER','Miecz dwuręczny','10GC',0,5,8,2,1,_binary ''),(27,8,'1',_binary '\0',_binary '\0','BLUNDERBUSS','Garłacz','2GC',20,5,9,5,2,_binary ''),(28,9,'3',_binary '\0',_binary '\0','HOCHLAND_LONG_RIFLE','Muszkiet hochlandzki','100GC',100,2,9,5,2,_binary ''),(29,9,'2',_binary '\0',_binary '\0','HANDGUN','Rusznica','4GC',50,5,9,5,2,_binary ''),(30,8,'0',_binary '\0',_binary '\0','PISTOL','Pistolet','8GC',20,4,9,5,2,_binary ''),(31,4,'2',_binary '',_binary '\0','ELF_BOW','Łuk elfi','10GC',150,2,10,5,2,_binary ''),(32,4,'3',_binary '',_binary '\0','LONGBOW','Łuk długi','5GC',100,5,10,5,2,_binary ''),(33,3,'2',_binary '',_binary '\0','BOW','Łuk','4GC',50,1,10,5,2,_binary ''),(34,2,'1',_binary '',_binary '\0','SHORTBOW','Krótki łuk','3GC',20,1,10,5,2,_binary ''),(35,7,'0',_binary '\0',_binary '\0','CROSSBOW_PISTOL','Kusza pistoletowa','6GC',10,5,11,5,2,_binary ''),(36,9,'3',_binary '\0',_binary '\0','HEAVY_CROSSBOW','Ciężka kusza','7GC',100,4,11,5,2,_binary ''),(37,9,'2',_binary '\0',_binary '\0','CROSSBOW','Kusza','5GC',60,1,11,5,2,_binary ''),(38,9,'3',_binary '\0',_binary '\0','REPEATER_HANDGUN','Rusznica samopowtarzalna','10GC',30,4,12,5,2,_binary ''),(39,8,'1',_binary '\0',_binary '\0','REPEATER_PISTOL','Pistolet samopowtarzalny','15GC',10,4,12,5,2,_binary ''),(40,0,'0',_binary '\0',_binary '','LASSO','Arkan','6S',2,1,13,5,2,_binary ''),(41,2,'0',_binary '',_binary '\0','WHIP','Bicz','5S',6,1,13,5,2,_binary ''),(42,12,'0',_binary '\0',_binary '','BOMB','Bomba','3GC',0,4,14,5,2,_binary ''),(43,0,'0',_binary '\0',_binary '','INCENDIARY','Ładunek zapalający','1GC',0,5,14,5,2,_binary ''),(44,6,'0',_binary '\0',_binary '\0','SLING','Proca','1S',60,1,15,5,2,_binary ''),(45,7,'2',_binary '\0',_binary '\0','STAFF_SLING','Proca drzewcowa','4S',100,1,15,5,2,_binary ''),(46,0,'0',_binary '',_binary '','BOLAS','Bolas','10S',3,4,16,5,2,_binary ''),(47,1,'0',_binary '',_binary '','DART','Strzałka','2S',2,5,16,5,2,_binary ''),(48,3,'1',_binary '',_binary '','JAVELIN','Oszczep','10S 6P',3,5,16,5,2,_binary ''),(49,0,'0',_binary '',_binary '','ROCK','Kamień','-',3,1,16,5,2,_binary ''),(50,3,'1',_binary '',_binary '','THROWING_AXE','Topór do rzucania','1GC',2,1,16,5,2,_binary ''),(51,2,'0',_binary '',_binary '','THROWING_KNIFE','Nóż do rzucania','18S',2,1,16,5,2,_binary ''),(52,1,'0',_binary '\0',_binary '\0','BULLET_AND_POWDER','Pocisk i proch','3S 3P',1,1,17,5,3,_binary ''),(53,0,'0',_binary '\0',_binary '\0','IMPROVISED_SHOT_AND_POWDER','Improwizowany śrut i proch','3P',0.5,1,17,5,3,_binary ''),(54,0,'0',_binary '\0',_binary '\0','SMALL_SHOT_AND_POWDER','Śrut i proch','3S 3P',1,1,17,5,3,_binary ''),(55,0,'0',_binary '\0',_binary '\0','ARROW','Strzała','5S',1,1,18,5,3,_binary ''),(56,1,'0',_binary '\0',_binary '\0','ELF_ARROW','Strzała elfia','6S',50,2,18,5,3,_binary ''),(57,0,'0',_binary '\0',_binary '\0','BOLT','Bełt','5S',1,1,19,5,3,_binary ''),(58,1,'0',_binary '\0',_binary '\0','LEAD_BULLET','Pocisk ołowiany','4P',-10,1,20,5,3,_binary ''),(59,0,'0',_binary '\0',_binary '\0','STONE_BULLET','Pocisk kamienny','2P',1,1,20,5,3,_binary ''),(60,4,'1',_binary '',_binary '\0','AXE','Topór','10S',0,1,1,1,1,_binary ''),(61,1,'0',_binary '',_binary '\0','BALLOCK_KNIFE','Puginał','16S',0,5,1,9,1,_binary ''),(62,4,'0',_binary '',_binary '\0','CLUB','Maczuga','4S',0,1,1,1,1,_binary ''),(63,4,'1',_binary '',_binary '\0','MACE','Buzdygan','15S',0,1,1,1,1,_binary ''),(64,4,'1',_binary '',_binary '\0','MILITARY_PICK','Czekan','15S',0,5,1,1,1,_binary ''),(65,4,'1',_binary '',_binary '\0','SCIMITAR','Sejmitar','1GC',0,5,1,6,1,_binary ''),(66,4,'1',_binary '',_binary '\0','SWORD','Miecz','1GC',0,1,1,1,1,_binary ''),(67,4,'1',_binary '',_binary '\0','WARHAMMER','Młot bitewny','1GC',0,5,1,1,1,_binary ''),(68,2,'4',_binary '',_binary '\0','PAVISE','Pawęż','3GC 15S',0,4,1,9,1,_binary ''),(69,5,'2',_binary '',_binary '\0','DEMI-LANCE','Pół-kopia','1GC',0,5,2,2,1,_binary ''),(70,4,'1',_binary '',_binary '\0','SABRE','Szabla','2GC',0,5,2,1,1,_binary ''),(71,2,'1',_binary '',_binary '\0','SMALLSWORD','Szpada','4GC',0,5,3,1,1,_binary ''),(72,3,'1',_binary '',_binary '\0','SPIKED_GAUNTLET','Kolczasta rękawica','2GC',0,4,4,4,1,_binary ''),(73,4,'0',_binary '',_binary '\0','BOAT_HOOK','Hak wodny','6S',0,1,4,6,1,_binary ''),(74,2,'0',_binary '',_binary '\0','GARROTE','Garota','1S',0,4,4,4,1,_binary ''),(75,2,'1',_binary '',_binary '\0','LOCKED_GAUNTLET','Pancerna rękawica','1GC',0,5,4,4,1,_binary ''),(76,1,'0',_binary '',_binary '\0','SAP','Pałka','1S',0,4,4,4,1,_binary ''),(77,0,'1',_binary '',_binary '\0','CLOAK','Peleryna','10S',0,1,6,6,1,_binary ''),(78,0,'1',_binary '',_binary '\0','WEIGHTED_NET','Obciążona siatka','1G 10S',0,4,6,6,1,_binary ''),(79,3,'2',_binary '',_binary '\0','AHLSPIESS','Szydło','2GC',0,5,7,8,1,_binary ''),(80,4,'3',_binary '',_binary '\0','BILL','Gizarma','2GC',0,5,7,2,1,_binary ''),(81,2,'3',_binary '',_binary '\0','MANCATCHER','Łapacz','2GC',0,4,7,2,1,_binary ''),(82,4,'3',_binary '',_binary '\0','PARTIZAN','Partyzana','2GC',0,5,7,2,1,_binary ''),(83,4,'3',_binary '',_binary '\0','POLLAXE','Berdysz','2GC',0,5,7,2,1,_binary ''),(84,5,'3',_binary '',_binary '\0','FLAMBERGE_ZWEIHANDER','Flamberg','30GC',0,2,8,2,1,_binary ''),(85,0,'0',_binary '\0',_binary '\0','BARBED_ARROW','Strzała ząbkowana','8S',1,5,18,5,3,_binary ''),(86,0,'0',_binary '\0',_binary '\0','BODKIN_ARROW','Strzała bodkinowa','8S',1,5,18,5,3,_binary ''),(87,-2,'0',_binary '\0',_binary '\0','SHARP_STICK','Ostry kijek','-',0.5,1,18,5,3,_binary ''),(88,-2,'0',_binary '\0',_binary '\0','PEBBLE','Kamyk','-',-10,1,20,5,3,_binary ''),(89,8,'2',_binary '\0',_binary '\0','MATCHLOCK_HANDGUN','Rusznica z zamkiem zapłonowym','2GC',50,4,9,5,2,_binary ''),(90,7,'1',_binary '\0',_binary '\0','MATCHLOCK_BLUNDERBUSS','Garłacz z zamkiem zapłonowym','1GC',20,4,9,5,2,_binary ''),(91,9,'3',_binary '\0',_binary '\0','ARQUEBUS','Arkebuz','5GC',40,2,9,5,2,_binary ''),(92,9,'3',_binary '\0',_binary '\0','DOUBLE_BARRELLED_HANDGUN','Rusznica dwulufowa','7GC',50,2,9,5,2,_binary ''),(93,7,'1',_binary '\0',_binary '\0','GRIFFONSFOOT_PISTOL','Pistolet \"Gryfia stopa\"','10GC',10,2,9,5,2,_binary ''),(94,9,'1',_binary '\0',_binary '\0','GUN_AXE','Topór-rusznica','8GC',30,2,9,5,2,_binary ''),(95,9,'3',_binary '\0',_binary '\0','GUN_HALBERD','Halabarda-rusznica','10GC',30,2,9,5,2,_binary ''),(96,8,'1',_binary '\0',_binary '\0','PEPPERBOX','Rewolwer wiązkowy','12C',10,4,12,5,2,_binary ''),(97,7,'3',_binary '\0',_binary '\0','HAND_MORTAR','Moździerz ręczny','50C',30,2,12,5,2,_binary ''),(98,8,'1',_binary '\0',_binary '\0','CANE_PISTOL','Pistolet laskowy','15C',10,2,12,5,2,_binary ''),(99,1,'0',_binary '\0',_binary '\0','Paper Cartridge','Ładunek prochowy','5S (12)',1,5,17,5,3,_binary ''),(100,2,'0',_binary '\0',_binary '\0','AQSHY_INFUSED_POWDER','Proch Aqshy','1G (12)',10,2,17,5,3,_binary ''),(101,1,'0',_binary '\0',_binary '\0','PRECISION_SHOT_AND_POWDER','Precyzyjny proch i śrut','3S (12)',1,1,17,5,3,_binary ''),(102,-1,'0',_binary '\0',_binary '\0','SCRAP_AND_POWDER','Proch i złom','2S (12)',0.5,1,17,5,3,_binary ''),(103,2,'0',_binary '\0',_binary '\0','LARGE_BULLET_AND_POWDER','Duży pocisk i proch','1G (12)',1,5,17,5,3,_binary ''),(104,5,'0',_binary '\0',_binary '\0','MORTAR_BOMB','Pocisk moździeżowy','3G',1,4,17,5,3,_binary ''),(105,0,'0',_binary '\0',_binary '\0','MORTAR_INCENDIARY','Zapalający pocisk moździeżowy','1G',1,5,17,5,3,_binary ''),(106,2,'1',_binary '\0',_binary '\0','GRAPPLE','Chwytak moździeżowy','2G',0.5,5,17,5,3,_binary ''),(107,3,'0',_binary '',_binary '\0','EONIR_WAR_BLADE','Ostrze wojenne Eonirów','3G',0,5,1,1,1,_binary ''),(108,4,'1',_binary '',_binary '\0','EONIR_SPEAR','Włócznia Eonirów','2G',0,1,7,2,1,_binary ''),(109,4,'2',_binary '',_binary '\0','WILDWOOD_SWORD','Miecz Dzikiej Kniei','10G',0,5,8,2,1,_binary ''),(110,4,'2',_binary '',_binary '\0','BEARDER_AXE','Topór brodaty','1G',0,1,1,1,1,_binary ''),(111,4,'2',_binary '',_binary '\0','DWARF_HAMMER','Młot krasnoludzki','3G',0,5,1,1,1,_binary ''),(112,6,'4',_binary '',_binary '\0','SLAYERS_AXE','Topór Zabójców','12G',0,5,8,2,1,_binary ''),(113,3,'1',_binary '',_binary '\0','NANS_CLEAVER','Tasak babuni','1G',0,1,1,1,1,_binary ''),(114,3,'1',_binary '',_binary '\0','IRON_SKILLET','Żelazna patelnia','1G',0,1,1,1,1,_binary ''),(115,9,'2',_binary '\0',_binary '\0','DWARF_HANDGUN','Krasnoludzka rusznica','9G',50,4,9,5,2,_binary ''),(116,8,'1',_binary '\0',_binary '\0','DWARF_PISTOL','Krasnoludzki pistolet','18G',30,4,9,5,2,_binary ''),(117,9,'3',_binary '\0',_binary '\0','DWARF_CROSSBOW','Krasnoludzka kusza','9G',80,4,11,5,2,_binary ''),(118,8,'1',_binary '\0',_binary '\0','DRAKEFIRE_PISTOL','Pistolet smoczego ognia','25G',20,2,12,5,2,_binary ''),(119,14,'0',_binary '\0',_binary '','CINDERBLAST_BOMB','Bomba żużlowa','3G',1,2,14,5,2,_binary ''),(120,3,'1',_binary '',_binary '','BLACKBRIAR_JAVELIN','Oszczep czarnocierni','2G',3,2,16,5,2,_binary ''),(121,2,'0',_binary '\0',_binary '\0','DRAKEFIRE_SHOT','Ładunek smoczego ognia','4S',0,4,17,5,3,_binary ''),(123,0,'0',_binary '\0',_binary '\0','STARFIRE_SHAFTS','Strzały gwiezdnego ognia','8S',50,2,18,5,3,_binary ''),(124,1,'0',_binary '\0',_binary '\0','SWIFTSHIVER_SHAFTS','Strzały jaskółcze','6S',0,1,18,5,3,_binary ''),(5000,4,'1',_binary '',_binary '\0','RYGAR_SWORD','Miecz Rygara','1GC',0,1,1,1,1,_binary '\0'),(5001,4,'1',_binary '',_binary '\0','BARAKUL','Miecz Barakul','1GC',0,1,1,1,1,_binary '\0'),(5002,0,'0',NULL,_binary '','THORNY_WEB','Kolczasta sieć','10S',1,4,13,5,2,_binary '\0');
/*!40000 ALTER TABLE `weapon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weapon_group`
--

DROP TABLE IF EXISTS `weapon_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weapon_group` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapon_group`
--

LOCK TABLES `weapon_group` WRITE;
/*!40000 ALTER TABLE `weapon_group` DISABLE KEYS */;
INSERT INTO `weapon_group` VALUES (1,'BASIC'),(2,'CAVALRY'),(3,'FENCING'),(4,'BRAWLING'),(5,'FLAIL'),(6,'PARRY'),(7,'POLEARM'),(8,'TWO_HANDED'),(9,'BLACKPOWDER'),(10,'BOW'),(11,'CROSSBOW'),(12,'ENGINEERING'),(13,'ENTANGLING'),(14,'EXPLOSIVES'),(15,'SLING'),(16,'THROWING'),(17,'BLACKPOWDER_AMMUNITION'),(18,'BOW_AMMUNITION'),(19,'CROSSBOW_AMMUNITION'),(20,'SLING_AMMUNITION');
/*!40000 ALTER TABLE `weapon_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weapon_quality`
--

DROP TABLE IF EXISTS `weapon_quality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weapon_quality` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapon_quality`
--

LOCK TABLES `weapon_quality` WRITE;
/*!40000 ALTER TABLE `weapon_quality` DISABLE KEYS */;
INSERT INTO `weapon_quality` VALUES (1,'ACCURATE'),(2,'BLACKPOWDER'),(3,'BLAST'),(4,'DAMAGING'),(5,'DEFENSIVE'),(6,'DISTRACT'),(7,'ENTANGLE'),(8,'FAST'),(9,'HACK'),(10,'IMPACT'),(11,'IMPALE'),(12,'PENETRATING'),(13,'PISTOL'),(14,'PRECISE'),(15,'PUMMEL'),(16,'REPEATER'),(17,'SHIELD'),(18,'TRAP_BLADE'),(19,'TWO_HANDED'),(20,'UNBREAKABLE'),(21,'WRAP'),(22,'DANGEROUS'),(23,'IMPRECISE'),(24,'RELOAD'),(25,'SLOW'),(26,'TIRING'),(27,'UNDAMAGING'),(28,'INCENDIARY'),(29,'DURABLE'),(30,'FINE'),(31,'LIGHTWEIGHT'),(32,'PRACTICAL'),(33,'UGLY'),(34,'SHODDY'),(35,'UNRELIABLE'),(36,'BULKY'),(37,'UNBALANCED'),(38,'SLASH'),(39,'BALLOCK_KNIFE'),(40,'LANCE'),(41,'TRIP'),(42,'SPREAD'),(43,'INFECTED'),(44,'PAPER_CARTRIDGE'),(45,'AQSHY_INFUSED_POWDER'),(46,'LARGE_BULLET_AND_POWDER'),(47,'GRAPPLE'),(48,'MATCHLOCK'),(49,'CANE_PISTOL');
/*!40000 ALTER TABLE `weapon_quality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weapon_quality_value`
--

DROP TABLE IF EXISTS `weapon_quality_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weapon_quality_value` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `weapon_id` bigint NOT NULL,
  `weapon_quality_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKiga1ti68058b3a8db6f3gccdp` (`weapon_id`),
  KEY `FKda0tc27g64fcyhcowkmq1u1fr` (`weapon_quality_id`),
  CONSTRAINT `FKda0tc27g64fcyhcowkmq1u1fr` FOREIGN KEY (`weapon_quality_id`) REFERENCES `weapon_quality` (`id`),
  CONSTRAINT `FKiga1ti68058b3a8db6f3gccdp` FOREIGN KEY (`weapon_id`) REFERENCES `weapon` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapon_quality_value`
--

LOCK TABLES `weapon_quality_value` WRITE;
/*!40000 ALTER TABLE `weapon_quality_value` DISABLE KEYS */;
INSERT INTO `weapon_quality_value` VALUES (1,'1',1,27),(2,'1',3,27),(3,'1',4,27),(4,'1',4,5),(5,'1',4,17),(6,'1',5,27),(7,'1',5,5),(8,'2',5,17),(9,'1',6,27),(10,'1',6,5),(11,'3',6,17),(12,'1',7,19),(13,'1',7,15),(14,'1',8,10),(15,'1',8,11),(16,'1',9,8),(17,'1',9,11),(18,'1',9,14),(19,'1',9,27),(20,'1',10,8),(21,'1',10,11),(22,'1',11,27),(23,'1',13,6),(24,'1',13,23),(25,'1',13,21),(26,'1',14,6),(27,'1',14,21),(28,'1',15,19),(29,'1',15,6),(30,'1',15,10),(31,'1',15,26),(32,'1',15,21),(33,'1',16,5),(34,'1',17,5),(35,'1',17,18),(36,'1',18,19),(37,'1',18,5),(38,'*',18,9),(39,'*',18,11),(40,'1',19,19),(41,'1',19,11),(42,'1',20,19),(43,'1',20,11),(44,'1',21,19),(45,'1',21,5),(46,'1',21,15),(47,'1',22,19),(48,'1',22,4),(49,'1',22,5),(50,'1',23,19),(51,'1',23,9),(52,'1',23,10),(53,'1',23,26),(54,'1',24,19),(55,'1',24,4),(56,'1',24,11),(57,'1',25,19),(58,'1',25,4),(59,'1',25,15),(60,'1',26,19),(61,'1',26,4),(62,'1',26,9),(63,'1',27,2),(64,'1',27,4),(65,'3',27,3),(66,'1',27,22),(67,'2',27,24),(68,'1',27,19),(69,'1',28,2),(70,'1',28,4),(71,'1',28,1),(72,'1',28,14),(73,'4',28,24),(74,'1',28,19),(75,'1',29,2),(76,'1',29,4),(77,'1',29,22),(78,'3',29,24),(79,'1',29,19),(80,'1',30,2),(81,'1',30,4),(82,'1',30,13),(83,'1',30,24),(84,'1',31,4),(85,'1',31,14),(86,'1',31,19),(87,'1',32,4),(88,'1',32,19),(89,'1',33,19),(90,'1',34,19),(91,'1',35,13),(92,'1',36,4),(93,'2',36,24),(94,'1',36,19),(95,'1',37,24),(96,'1',37,19),(97,'1',38,2),(98,'1',38,4),(99,'1',38,22),(100,'5',38,24),(101,'4',38,16),(102,'1',39,2),(103,'1',39,4),(104,'1',39,22),(105,'4',39,16),(106,'4',39,24),(107,'1',40,7),(108,'1',41,7),(109,'5',42,3),(110,'1',42,22),(111,'1',42,10),(112,'1',43,28),(113,'4',43,3),(114,'1',43,22),(115,'1',45,19),(116,'1',46,7),(117,'1',47,11),(118,'1',48,11),(119,'1',50,9),(120,'1',52,11),(121,'1',52,12),(122,'1',54,3),(123,'1',55,11),(124,'1',56,1),(125,'1',56,11),(126,'1',56,12),(127,'1',57,11),(128,'1',58,15),(129,'1',59,15),(130,'1',60,9),(131,'1',60,37),(132,'1',61,11),(133,'1',61,12),(134,'1',61,14),(135,'1',1,37),(136,'1',62,27),(137,'1',62,37),(138,'1',63,15),(139,'1',63,37),(140,'1',64,12),(141,'1',64,37),(142,'1',65,38),(143,'1',61,39),(144,'1',67,37),(145,'*',67,15),(146,'*',67,12),(147,'5',68,17),(148,'1',8,40),(149,'1',69,10),(150,'1',69,11),(151,'1',69,40),(152,'1',70,38),(153,'1',71,8),(154,'1',71,11),(155,'1',71,14),(156,'1',72,11),(157,'1',72,37),(158,'1',73,41),(159,'1',73,37),(160,'1',74,7),(161,'1',74,25),(162,'1',74,37),(163,'1',74,27),(164,'1',75,27),(165,'1',76,15),(166,'1',76,37),(167,'1',76,27),(168,'1',77,7),(169,'1',77,5),(170,'1',77,27),(171,'1',78,7),(172,'1',78,5),(173,'1',78,17),(174,'1',78,25),(175,'1',78,27),(176,'1',78,21),(177,'1',79,11),(178,'1',79,12),(179,'1',80,5),(180,'*',80,9),(181,'*',80,41),(182,'1',81,5),(183,'1',81,7),(184,'1',82,5),(185,'*',82,11),(186,'2 *',82,38),(187,'1',83,5),(188,'*',83,9),(189,'*',83,11),(190,'*',83,15),(191,'1',24,25),(192,'1',25,25),(193,'1',84,19),(194,'1',84,4),(195,'1',84,9),(196,'2',84,38),(197,'1',85,11),(198,'1',85,38),(199,'1',86,11),(200,'1',86,12),(201,'1',87,22),(202,'1',87,23),(203,'1',87,27),(204,'1',88,23),(205,'1',88,27),(206,'1',39,13),(207,'1',89,2),(208,'1',89,4),(209,'1',89,22),(210,'4',89,24),(211,'1',90,2),(212,'1',90,4),(213,'1',90,22),(214,'3',90,24),(215,'3',90,42),(216,'1',91,2),(217,'1',91,4),(218,'1',91,22),(219,'5',91,24),(220,'1',91,23),(221,'1',92,2),(222,'1',92,4),(223,'1',92,22),(224,'4',92,24),(225,'2',92,16),(226,'1',93,2),(227,'1',93,4),(228,'1',93,22),(229,'6',93,24),(230,'1',93,23),(231,'5',93,42),(232,'1',94,2),(233,'1',94,4),(234,'1',94,22),(235,'4',94,24),(236,'1',94,23),(237,'1',95,2),(238,'1',95,4),(239,'1',95,22),(240,'4',95,24),(241,'1',95,23),(242,'1',96,2),(243,'1',96,4),(244,'1',96,22),(245,'4',96,24),(246,'1',96,13),(247,'4',96,16),(248,'1',97,2),(249,'1',97,4),(250,'1',97,22),(251,'2',97,24),(252,'1',97,23),(253,'1',98,2),(254,'1',98,4),(255,'1',98,22),(256,'6',98,24),(257,'1',98,23),(258,'1',99,11),(259,'1',99,12),(260,'1',99,44),(261,'1',100,11),(262,'1',100,12),(263,'1',100,45),(264,'1',101,11),(265,'1',101,12),(266,'1',101,14),(267,'3',102,42),(268,'1',102,43),(269,'1',103,11),(270,'1',103,10),(271,'1',103,12),(272,'1',103,46),(273,'5',104,3),(274,'1',104,22),(275,'1',104,10),(276,'5',105,3),(277,'1',105,22),(278,'1',105,28),(279,'1',106,12),(280,'2',106,24),(281,'1',106,47),(282,'1',89,48),(283,'1',90,48),(284,'1',98,49),(285,'1',5000,29),(286,'1',5000,14),(287,'1',5000,30),(288,'1',5000,31),(289,'1',110,18),(290,'1',111,15),(291,'1',112,10),(292,'1',112,12),(293,'1',113,9),(294,'1',114,5),(295,'1',115,12),(296,'3',115,24),(297,'1',116,12),(298,'1',116,13),(299,'3',116,24),(300,'1',117,14),(301,'1',117,4),(302,'2',117,24),(303,'1',118,22),(304,'1',118,13),(305,'3',119,3),(306,'1',119,22),(307,'1',119,10),(308,'1',119,12),(309,'1',120,11),(310,'1',121,4),(314,'1',123,1),(315,'1',123,11),(316,'1',124,3),(317,'1',123,12),(318,'1',107,14),(319,'1',108,12),(320,'1',109,4),(321,'1',109,8),(326,'1',5002,7),(328,'1',110,9);
/*!40000 ALTER TABLE `weapon_quality_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weapon_reach`
--

DROP TABLE IF EXISTS `weapon_reach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weapon_reach` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapon_reach`
--

LOCK TABLES `weapon_reach` WRITE;
/*!40000 ALTER TABLE `weapon_reach` DISABLE KEYS */;
INSERT INTO `weapon_reach` VALUES (1,'AVERAGE'),(2,'LONG'),(3,'MASSIVE'),(4,'PERSONAL'),(5,'RANGED'),(6,'SHORT'),(7,'VARIES'),(8,'VERY_LONG'),(9,'VERY_SHORT');
/*!40000 ALTER TABLE `weapon_reach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weapon_type`
--

DROP TABLE IF EXISTS `weapon_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weapon_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapon_type`
--

LOCK TABLES `weapon_type` WRITE;
/*!40000 ALTER TABLE `weapon_type` DISABLE KEYS */;
INSERT INTO `weapon_type` VALUES (1,'MELEE'),(2,'RANGED'),(3,'AMMUNITION');
/*!40000 ALTER TABLE `weapon_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-24  9:41:25
