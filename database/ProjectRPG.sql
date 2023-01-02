-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: projectrpg
-- ------------------------------------------------------
-- Server version	8.0.27

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_piy227jvtb6tk5xv2p57mudtr` (`name`),
  UNIQUE KEY `UK_ox489vahmjb30xu37sq87an09` (`name_translation`),
  KEY `FKqkp6fd8qa836fixioj16a2k7i` (`armor_category_id`),
  CONSTRAINT `FKqkp6fd8qa836fixioj16a2k7i` FOREIGN KEY (`armor_category_id`) REFERENCES `armor_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armor`
--

LOCK TABLES `armor` WRITE;
/*!40000 ALTER TABLE `armor` DISABLE KEYS */;
INSERT INTO `armor` VALUES (1,'LEATHER_JACK','Skórzana kurta',1),(2,'LEATHER_JERKIN','Skórzany kaftan',1),(3,'LEATHER_LEGGINGS','Skórzane nogawice',1),(4,'LEATHER_SKULLCAP','Skórzany hełm',1),(5,'COLLAR','Kolet',2),(6,'MAIL_CHAUSSES','Nogawice kolcze',3),(7,'MAIL_COAT','Kolczuga',3),(8,'MAIL_COIF','Czepiec kolczy',3),(9,'MAIL_SHIRT','Kaftan kolczy',3),(10,'BREASTPLATE','Napierśnik',4),(11,'OPEN_HELM','Hełm otwarty',4),(12,'BRACERS','Naramienniki',4),(13,'PLATE_LEGGINGS','Nagolenniki płytowe',4),(14,'HELM','Hełm',4),(15,'MUTATION_SPIKY_SCALES','Mutacja (Kolczaste Łuski)',5),(17,'ARMOR_2','Pancerz (2)',5),(18,'ARMOR_1','Pancerz (1)',5);
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
INSERT INTO `armor_armor_quality` VALUES (4,3),(6,1),(7,1),(8,1),(8,3),(9,1),(10,2),(10,4),(11,3),(12,2),(12,4),(13,2),(13,4),(14,2),(14,4),(5,4);
/*!40000 ALTER TABLE `armor_armor_quality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `armor_body_localization`
--

DROP TABLE IF EXISTS `armor_body_localization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `armor_body_localization` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `armor_points` int DEFAULT NULL,
  `armor_id` bigint NOT NULL,
  `body_localization_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK97wnwsegsxw8g7i932o0qvpox` (`armor_id`),
  KEY `FKk9rypu2nmx6l2flq0er133cf9` (`body_localization_id`),
  CONSTRAINT `FK97wnwsegsxw8g7i932o0qvpox` FOREIGN KEY (`armor_id`) REFERENCES `armor` (`id`),
  CONSTRAINT `FKk9rypu2nmx6l2flq0er133cf9` FOREIGN KEY (`body_localization_id`) REFERENCES `body_localization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armor_body_localization`
--

LOCK TABLES `armor_body_localization` WRITE;
/*!40000 ALTER TABLE `armor_body_localization` DISABLE KEYS */;
INSERT INTO `armor_body_localization` VALUES (1,1,1,2),(2,1,1,3),(3,1,1,4),(4,1,2,4),(5,1,3,5),(6,1,3,6),(7,1,4,1),(9,2,6,5),(10,2,6,6),(11,2,7,2),(12,2,7,3),(13,2,7,4),(14,2,8,1),(15,2,9,4),(16,2,10,4),(17,2,11,1),(18,2,12,2),(19,2,12,3),(20,2,13,5),(21,2,13,6),(22,2,14,1),(29,2,5,4),(31,1,15,2),(32,1,15,3),(33,1,15,4),(34,1,15,1),(35,1,15,5),(36,1,15,6),(37,2,17,2),(38,2,17,3),(39,2,17,4),(40,2,17,1),(41,2,17,5),(42,2,17,6),(43,1,18,2),(44,1,18,3),(45,1,18,4),(46,1,18,1),(47,1,18,5),(48,1,18,6);
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
INSERT INTO `body_localization` VALUES (1,'HEAD'),(2,'RIGHT_ARM'),(3,'LEFT_ARM'),(4,'BODY'),(5,'RIGHT_LEG'),(6,'LEFT_LEG');
/*!40000 ALTER TABLE `body_localization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_armor`
--

DROP TABLE IF EXISTS `character_armor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_armor` (
  `character_id` bigint NOT NULL,
  `armor_id` bigint NOT NULL,
  KEY `FK1ny7jluu147hk2glittg9qi60` (`armor_id`),
  CONSTRAINT `FK1ny7jluu147hk2glittg9qi60` FOREIGN KEY (`armor_id`) REFERENCES `armor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_armor`
--

LOCK TABLES `character_armor` WRITE;
/*!40000 ALTER TABLE `character_armor` DISABLE KEYS */;
INSERT INTO `character_armor` VALUES (42,1),(42,3),(43,1),(43,3),(40,9),(40,1),(40,3),(41,1),(75,18),(77,1),(77,3),(78,18),(79,1),(37,18),(159,7),(159,1),(159,3),(158,7),(158,1),(158,3),(162,2),(162,3),(162,7),(162,8),(163,8),(163,2),(163,3);
/*!40000 ALTER TABLE `character_armor` ENABLE KEYS */;
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
  CONSTRAINT `FK551pb3grkxhj5my6y9pwqh5c7` FOREIGN KEY (`body_localization_id`) REFERENCES `body_localization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3487 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_body_localization`
--

LOCK TABLES `character_body_localization` WRITE;
/*!40000 ALTER TABLE `character_body_localization` DISABLE KEYS */;
INSERT INTO `character_body_localization` VALUES (967,0,1,42,0),(968,1,2,42,0),(969,1,3,42,0),(970,1,4,42,0),(971,1,5,42,0),(972,1,6,42,0),(973,0,1,43,0),(974,1,2,43,0),(975,1,3,43,0),(976,1,4,43,0),(977,1,5,43,0),(978,1,6,43,0),(1249,0,1,27,0),(1250,0,2,27,0),(1251,0,3,27,0),(1252,0,4,27,0),(1253,0,5,27,0),(1254,0,6,27,0),(1255,0,1,26,0),(1256,0,2,26,0),(1257,0,3,26,0),(1258,0,4,26,0),(1259,0,5,26,0),(1260,0,6,26,0),(1267,0,1,30,0),(1268,0,2,30,0),(1269,0,3,30,0),(1270,0,4,30,0),(1271,0,5,30,0),(1272,0,6,30,0),(1273,0,1,28,0),(1274,0,2,28,0),(1275,0,3,28,0),(1276,0,4,28,0),(1277,0,5,28,0),(1278,0,6,28,0),(1777,0,1,52,0),(1778,0,2,52,0),(1779,0,3,52,0),(1780,0,4,52,0),(1781,0,5,52,0),(1782,0,6,52,0),(1885,0,1,40,0),(1886,1,2,40,0),(1887,1,3,40,0),(1888,3,4,40,0),(1889,1,5,40,0),(1890,1,6,40,0),(1927,0,1,70,0),(1928,0,2,70,0),(1929,0,3,70,0),(1930,0,4,70,0),(1931,0,5,70,0),(1932,0,6,70,0),(1933,0,1,68,0),(1934,0,2,68,0),(1935,0,3,68,0),(1936,0,4,68,0),(1937,0,5,68,0),(1938,0,6,68,0),(1987,0,1,41,0),(1988,1,2,41,0),(1989,1,3,41,0),(1990,1,4,41,0),(1991,0,5,41,0),(1992,0,6,41,0),(2023,0,1,65,0),(2024,0,2,65,0),(2025,0,3,65,0),(2026,0,4,65,0),(2027,0,5,65,0),(2028,0,6,65,0),(2377,0,1,54,0),(2378,0,2,54,0),(2379,0,3,54,0),(2380,0,4,54,0),(2381,0,5,54,0),(2382,0,6,54,0),(2575,1,1,75,0),(2576,1,2,75,0),(2577,1,3,75,0),(2578,1,4,75,0),(2579,1,5,75,0),(2580,1,6,75,0),(2587,0,1,77,0),(2588,1,2,77,0),(2589,1,3,77,0),(2590,1,4,77,0),(2591,1,5,77,0),(2592,1,6,77,0),(2593,0,1,76,0),(2594,0,2,76,0),(2595,0,3,76,0),(2596,0,4,76,0),(2597,0,5,76,0),(2598,0,6,76,0),(2599,1,1,78,0),(2600,1,2,78,0),(2601,1,3,78,0),(2602,1,4,78,0),(2603,1,5,78,0),(2604,1,6,78,0),(2605,0,1,79,0),(2606,1,2,79,0),(2607,1,3,79,0),(2608,1,4,79,0),(2609,0,5,79,0),(2610,0,6,79,0),(2773,0,1,25,0),(2774,0,2,25,0),(2775,0,3,25,0),(2776,0,4,25,0),(2777,0,5,25,0),(2778,0,6,25,0),(3121,0,1,29,0),(3122,0,2,29,0),(3123,0,3,29,0),(3124,0,4,29,0),(3125,0,5,29,0),(3126,0,6,29,0),(3271,0,1,55,0),(3272,0,2,55,0),(3273,0,3,55,0),(3274,0,4,55,0),(3275,0,5,55,0),(3276,0,6,55,0),(3283,0,1,31,0),(3284,0,2,31,0),(3285,0,3,31,0),(3286,0,4,31,0),(3287,0,5,31,0),(3288,0,6,31,0),(3307,0,1,34,0),(3308,0,2,34,0),(3309,0,3,34,0),(3310,0,4,34,0),(3311,0,5,34,0),(3312,0,6,34,0),(3313,0,1,35,0),(3314,0,2,35,0),(3315,0,3,35,0),(3316,0,4,35,0),(3317,0,5,35,0),(3318,0,6,35,0),(3319,1,1,37,0),(3320,1,2,37,0),(3321,1,3,37,0),(3322,1,4,37,0),(3323,1,5,37,0),(3324,1,6,37,0),(3325,0,1,33,0),(3326,0,2,33,0),(3327,0,3,33,0),(3328,0,4,33,0),(3329,0,5,33,0),(3330,0,6,33,0),(3331,0,1,150,0),(3332,0,2,150,0),(3333,0,3,150,0),(3334,0,4,150,0),(3335,0,5,150,0),(3336,0,6,150,0),(3337,0,1,151,0),(3338,0,2,151,0),(3339,0,3,151,0),(3340,0,4,151,0),(3341,0,5,151,0),(3342,0,6,151,0),(3343,0,1,152,0),(3344,0,2,152,0),(3345,0,3,152,0),(3346,0,4,152,0),(3347,0,5,152,0),(3348,0,6,152,0),(3349,0,1,153,0),(3350,0,2,153,0),(3351,0,3,153,0),(3352,0,4,153,0),(3353,0,5,153,0),(3354,0,6,153,0),(3361,0,1,155,0),(3362,0,2,155,0),(3363,0,3,155,0),(3364,0,4,155,0),(3365,0,5,155,0),(3366,0,6,155,0),(3397,0,1,154,0),(3398,0,2,154,0),(3399,0,3,154,0),(3400,0,4,154,0),(3401,0,5,154,0),(3402,0,6,154,0),(3427,0,1,159,0),(3428,3,2,159,0),(3429,3,3,159,0),(3430,3,4,159,0),(3431,1,5,159,0),(3432,1,6,159,0),(3433,0,1,158,0),(3434,3,2,158,0),(3435,3,3,158,0),(3436,3,4,158,0),(3437,1,5,158,0),(3438,1,6,158,0),(3463,0,1,161,0),(3464,0,2,161,0),(3465,0,3,161,0),(3466,0,4,161,0),(3467,0,5,161,0),(3468,0,6,161,0),(3469,0,1,160,0),(3470,0,2,160,0),(3471,0,3,160,0),(3472,0,4,160,0),(3473,0,5,160,0),(3474,0,6,160,0),(3475,2,1,162,0),(3476,2,2,162,0),(3477,2,3,162,0),(3478,3,4,162,0),(3479,1,5,162,0),(3480,1,6,162,0),(3481,2,1,163,0),(3482,0,2,163,0),(3483,0,3,163,0),(3484,1,4,163,0),(3485,1,5,163,0),(3486,1,6,163,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  CONSTRAINT `FK5vh9hej9skk5btevxcahcptf9` FOREIGN KEY (`characteristic_id`) REFERENCES `characteristic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6973 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_characteristic`
--

LOCK TABLES `character_characteristic` WRITE;
/*!40000 ALTER TABLE `character_characteristic` DISABLE KEYS */;
INSERT INTO `character_characteristic` VALUES (1933,4,42,12),(1934,58,42,1),(1935,44,42,2),(1936,55,42,3),(1937,48,42,4),(1938,42,42,5),(1939,43,42,6),(1940,39,42,7),(1941,30,42,8),(1942,40,42,9),(1943,40,42,10),(1944,15,42,11),(1945,4,43,12),(1946,42,43,1),(1947,23,43,2),(1948,44,43,3),(1949,39,43,4),(1950,45,43,5),(1951,46,43,6),(1952,24,43,7),(1953,34,43,8),(1954,45,43,9),(1955,24,43,10),(1956,12,43,11),(2497,3,27,12),(2498,46,27,1),(2499,23,27,2),(2500,40,27,3),(2501,50,27,4),(2502,31,27,5),(2503,24,27,6),(2504,45,27,7),(2505,29,27,8),(2506,54,27,9),(2507,14,27,10),(2508,19,27,11),(2509,3,26,12),(2510,52,26,1),(2511,34,26,2),(2512,40,26,3),(2513,48,26,4),(2514,30,26,5),(2515,19,26,6),(2516,40,26,7),(2517,32,26,8),(2518,61,26,9),(2519,22,26,10),(2520,17,26,11),(2533,4,30,12),(2534,27,30,1),(2535,25,30,2),(2536,26,30,3),(2537,31,30,4),(2538,28,30,5),(2539,36,30,6),(2540,27,30,7),(2541,35,30,8),(2542,31,30,9),(2543,39,30,10),(2544,11,30,11),(2545,3,28,12),(2546,14,28,1),(2547,47,28,2),(2548,17,28,3),(2549,30,28,4),(2550,29,28,5),(2551,32,28,6),(2552,55,28,7),(2553,27,28,8),(2554,45,28,9),(2555,47,28,10),(2556,8,28,11),(3553,4,52,12),(3554,45,52,1),(3555,0,52,2),(3556,40,52,3),(3557,40,52,4),(3558,0,52,5),(3559,20,52,6),(3560,10,52,7),(3561,0,52,8),(3562,0,52,9),(3563,0,52,10),(3564,20,52,11),(3769,4,40,12),(3770,48,40,1),(3771,58,40,2),(3772,51,40,3),(3773,55,40,4),(3774,35,40,5),(3775,57,40,6),(3776,35,40,7),(3777,30,40,8),(3778,34,40,9),(3779,27,40,10),(3780,18,40,11),(3853,4,70,12),(3854,45,70,1),(3855,47,70,2),(3856,42,70,3),(3857,40,70,4),(3858,58,70,5),(3859,47,70,6),(3860,39,70,7),(3861,59,70,8),(3862,60,70,9),(3863,51,70,10),(3864,22,70,11),(3865,4,68,12),(3866,45,68,1),(3867,47,68,2),(3868,42,68,3),(3869,40,68,4),(3870,58,68,5),(3871,47,68,6),(3872,39,68,7),(3873,59,68,8),(3874,60,68,9),(3875,51,68,10),(3876,18,68,11),(3973,4,41,12),(3974,45,41,1),(3975,30,41,2),(3976,40,41,3),(3977,40,41,4),(3978,25,41,5),(3979,35,41,6),(3980,30,41,7),(3981,25,41,8),(3982,30,41,9),(3983,25,41,10),(3984,15,41,11),(4045,6,65,12),(4046,30,65,1),(4047,15,65,2),(4048,55,65,3),(4049,45,65,4),(4050,10,65,5),(4051,15,65,6),(4052,15,65,7),(4053,10,65,8),(4054,20,65,9),(4055,5,65,10),(4056,30,65,11),(4753,4,54,12),(4754,57,54,1),(4755,28,54,2),(4756,54,54,3),(4757,52,54,4),(4758,41,54,5),(4759,33,54,6),(4760,29,54,7),(4761,23,54,8),(4762,30,54,9),(4763,27,54,10),(4764,18,54,11),(5149,4,75,12),(5150,55,75,1),(5151,30,75,2),(5152,35,75,3),(5153,55,75,4),(5154,40,75,5),(5155,45,75,6),(5156,25,75,7),(5157,25,75,8),(5158,30,75,9),(5159,25,75,10),(5160,16,75,11),(5173,4,77,12),(5174,45,77,1),(5175,35,77,2),(5176,41,77,3),(5177,31,77,4),(5178,44,77,5),(5179,31,77,6),(5180,32,77,7),(5181,33,77,8),(5182,40,77,9),(5183,27,77,10),(5184,14,77,11),(5185,4,76,12),(5186,45,76,1),(5187,35,76,2),(5188,41,76,3),(5189,31,76,4),(5190,44,76,5),(5191,31,76,6),(5192,32,76,7),(5193,33,76,8),(5194,40,76,9),(5195,27,76,10),(5196,14,76,11),(5197,4,78,12),(5198,45,78,1),(5199,35,78,2),(5200,41,78,3),(5201,31,78,4),(5202,44,78,5),(5203,31,78,6),(5204,32,78,7),(5205,33,78,8),(5206,40,78,9),(5207,27,78,10),(5208,14,78,11),(5209,4,79,12),(5210,40,79,1),(5211,30,79,2),(5212,40,79,3),(5213,35,79,4),(5214,35,79,5),(5215,35,79,6),(5216,30,79,7),(5217,25,79,8),(5218,30,79,9),(5219,25,79,10),(5220,13,79,11),(5545,4,25,12),(5546,26,25,1),(5547,27,25,2),(5548,30,25,3),(5549,30,25,4),(5550,28,25,5),(5551,27,25,6),(5552,32,25,7),(5553,60,25,8),(5554,32,25,9),(5555,28,25,10),(5556,12,25,11),(6241,4,29,12),(6242,32,29,1),(6243,30,29,2),(6244,35,29,3),(6245,33,29,4),(6246,39,29,5),(6247,40,29,6),(6248,36,29,7),(6249,23,29,8),(6250,32,29,9),(6251,34,29,10),(6252,12,29,11),(6541,4,55,12),(6542,39,55,1),(6543,49,55,2),(6544,50,55,3),(6545,39,55,4),(6546,39,55,5),(6547,59,55,6),(6548,39,55,7),(6549,49,55,8),(6550,99,55,9),(6551,19,55,10),(6552,19,55,11),(6565,4,31,12),(6566,32,31,1),(6567,25,31,2),(6568,27,31,3),(6569,28,31,4),(6570,40,31,5),(6571,45,31,6),(6572,39,31,7),(6573,29,31,8),(6574,25,31,9),(6575,0,31,10),(6576,8,31,11),(6613,4,34,12),(6614,45,34,1),(6615,30,34,2),(6616,35,34,3),(6617,35,34,4),(6618,30,34,5),(6619,40,34,6),(6620,30,34,7),(6621,30,34,8),(6622,30,34,9),(6623,30,34,10),(6624,12,34,11),(6625,4,35,12),(6626,45,35,1),(6627,30,35,2),(6628,35,35,3),(6629,35,35,4),(6630,30,35,5),(6631,40,35,6),(6632,30,35,7),(6633,30,35,8),(6634,30,35,9),(6635,30,35,10),(6636,12,35,11),(6637,4,37,12),(6638,36,37,1),(6639,43,37,2),(6640,39,37,3),(6641,32,37,4),(6642,35,37,5),(6643,33,37,6),(6644,29,37,7),(6645,33,37,8),(6646,35,37,9),(6647,30,37,10),(6648,12,37,11),(6649,4,33,12),(6650,45,33,1),(6651,30,33,2),(6652,55,33,3),(6653,35,33,4),(6654,30,33,5),(6655,40,33,6),(6656,30,33,7),(6657,30,33,8),(6658,30,33,9),(6659,30,33,10),(6660,12,33,11),(6661,4,150,12),(6662,26,150,1),(6663,27,150,2),(6664,30,150,3),(6665,30,150,4),(6666,28,150,5),(6667,27,150,6),(6668,32,150,7),(6669,60,150,8),(6670,32,150,9),(6671,28,150,10),(6672,12,150,11),(6673,3,151,12),(6674,52,151,1),(6675,34,151,2),(6676,40,151,3),(6677,48,151,4),(6678,30,151,5),(6679,19,151,6),(6680,40,151,7),(6681,32,151,8),(6682,61,151,9),(6683,22,151,10),(6684,17,151,11),(6685,3,152,12),(6686,46,152,1),(6687,23,152,2),(6688,40,152,3),(6689,50,152,4),(6690,31,152,5),(6691,24,152,6),(6692,45,152,7),(6693,29,152,8),(6694,54,152,9),(6695,14,152,10),(6696,19,152,11),(6697,3,153,12),(6698,14,153,1),(6699,47,153,2),(6700,17,153,3),(6701,30,153,4),(6702,29,153,5),(6703,32,153,6),(6704,55,153,7),(6705,27,153,8),(6706,45,153,9),(6707,47,153,10),(6708,8,153,11),(6721,4,155,12),(6722,27,155,1),(6723,25,155,2),(6724,26,155,3),(6725,31,155,4),(6726,28,155,5),(6727,36,155,6),(6728,27,155,7),(6729,35,155,8),(6730,31,155,9),(6731,39,155,10),(6732,11,155,11),(6793,4,154,12),(6794,32,154,1),(6795,30,154,2),(6796,35,154,3),(6797,33,154,4),(6798,39,154,5),(6799,40,154,6),(6800,36,154,7),(6801,23,154,8),(6802,32,154,9),(6803,34,154,10),(6804,12,154,11),(6853,4,159,12),(6854,40,159,1),(6855,43,159,2),(6856,40,159,3),(6857,40,159,4),(6858,42,159,5),(6859,34,159,6),(6860,29,159,7),(6861,41,159,8),(6862,33,159,9),(6863,35,159,10),(6864,15,159,11),(6865,4,158,12),(6866,40,158,1),(6867,43,158,2),(6868,40,158,3),(6869,50,158,4),(6870,42,158,5),(6871,34,158,6),(6872,29,158,7),(6873,41,158,8),(6874,33,158,9),(6875,35,158,10),(6876,16,158,11),(6925,4,161,12),(6926,45,161,1),(6927,0,161,2),(6928,40,161,3),(6929,40,161,4),(6930,5,161,5),(6931,10,161,6),(6932,15,161,7),(6933,0,161,8),(6934,0,161,9),(6935,0,161,10),(6936,16,161,11),(6937,4,160,12),(6938,60,160,1),(6939,0,160,2),(6940,45,160,3),(6941,40,160,4),(6942,40,160,5),(6943,35,160,6),(6944,25,160,7),(6945,20,160,8),(6946,40,160,9),(6947,5,160,10),(6948,16,160,11),(6949,4,162,12),(6950,45,162,1),(6951,43,162,2),(6952,51,162,3),(6953,30,162,4),(6954,40,162,5),(6955,28,162,6),(6956,27,162,7),(6957,30,162,8),(6958,31,162,9),(6959,43,162,10),(6960,14,162,11),(6961,4,163,12),(6962,35,163,1),(6963,30,163,2),(6964,40,163,3),(6965,30,163,4),(6966,30,163,5),(6967,30,163,6),(6968,35,163,7),(6969,30,163,8),(6970,30,163,9),(6971,25,163,10),(6972,13,163,11);
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
  CONSTRAINT `FKkalc3acx8eykhh7b4wg8ur0fq` FOREIGN KEY (`condition_id`) REFERENCES `condition_entity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_condition`
--

LOCK TABLES `character_condition` WRITE;
/*!40000 ALTER TABLE `character_condition` DISABLE KEYS */;
INSERT INTO `character_condition` VALUES (90,1,40,1,1),(92,2,65,10,0),(240,1,154,4,0);
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
  CONSTRAINT `FKd29rp5oji2jghywovertf9e3e` FOREIGN KEY (`creature_trait_id`) REFERENCES `creature_trait` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=837 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_creature_trait`
--

LOCK TABLES `character_creature_trait` WRITE;
/*!40000 ALTER TABLE `character_creature_trait` DISABLE KEYS */;
INSERT INTO `character_creature_trait` VALUES (13,'0',52,76),(14,NULL,52,83),(15,NULL,52,82),(16,'2',52,66),(17,'+6',52,80),(58,NULL,40,83),(119,'+9',70,80),(120,'+8',70,24),(121,NULL,70,74),(122,NULL,70,59),(123,'(Purpurowa Gorączka Mózgowa))',70,84),(124,'(Umiarkowane)',70,21),(125,'2',70,31),(126,NULL,70,36),(127,NULL,70,50),(128,NULL,70,85),(130,NULL,41,6),(155,NULL,65,62),(156,NULL,65,25),(157,NULL,65,56),(158,'Duży',65,57),(159,NULL,65,71),(160,'+8',65,9),(161,NULL,65,77),(162,NULL,65,42),(724,'x2 +7',75,66),(725,'(Pomniejsze)',75,21),(726,NULL,75,50),(727,NULL,75,2),(730,'(Pomniejsze)',77,21),(731,'+7',77,9),(732,'60',76,32),(733,'(Pomniejsze)',76,21),(734,'(Pomniejsze)',78,21),(771,'8+',55,24),(772,NULL,55,51),(773,'+8',55,38),(774,'(2)',55,31),(779,'(2)',31,31),(780,NULL,31,42),(781,NULL,31,7),(782,NULL,31,39),(788,'(Pomniejsze)',34,21),(789,'(Pomniejsze)',35,21),(790,NULL,35,62),(791,'(Pomniejsze)',37,21),(792,NULL,33,62),(793,'(Pomniejsze)',33,21),(822,NULL,161,19),(823,NULL,161,51),(824,NULL,161,73),(825,NULL,161,56),(826,'(Pomniejsze)',161,21),(827,'2',161,31),(828,NULL,161,50),(829,NULL,160,28),(830,'-10',160,76),(831,NULL,160,73),(832,'+5',160,9),(833,NULL,160,50),(834,NULL,160,42),(835,NULL,160,39),(836,'2',160,31);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_entity`
--

LOCK TABLES `character_entity` WRITE;
/*!40000 ALTER TABLE `character_entity` DISABLE KEYS */;
INSERT INTO `character_entity` VALUES (25,'Postać Konrada - Człowiek - Student Medycyny',_binary '','Gotthard Lauterbach','Bohaterowie'),(26,'Postać Piotra Ż. - Krasnolud - Zabójca Trolli',_binary '','Throngroth Hegalison','Bohaterowie'),(27,'Postać Piotra P. - Krasnolud - Czeladnik',_binary '','Ullagrund Ganddreng','Bohaterowie'),(28,'Postać Huberta - Niziołek - Czeladnik',_binary '','Nobbi Wesołek','Bohaterowie'),(29,'Postać Kuby - Człowiek - Uczeń Szczurołapa',_binary '','Rygar','Bohaterowie'),(30,'Postać Klaudii - Człowiek - Przekupka',_binary '','Renia Sianko','Bohaterowie'),(31,'Mutant, Zbój',_binary '','Mutant Rolf Hurtsis','Mutanci'),(33,'Mutant, Zbój',_binary '','Mutant Terenz','Mutanci'),(34,'Mutant, Zbój',_binary '','Mutant Mikael','Mutanci'),(35,'Mutant, Zbój',_binary '','Mutant Johann','Mutanci'),(37,'Mutant, Banita',_binary '','Mutant Knud Cratinx','Mutanci'),(40,'Doświadczony Łowca Nagród',_binary '','Adolphus Kuftsos','Główni BN'),(41,'',_binary '','Oprych','Oprychy'),(42,'Kapitan barki \"Lyan\"',_binary '','Marcus','Główni BN'),(43,'Mąciwoda',_binary '','Max Ernst','Oprychy'),(52,'Potwór z kanałów',_binary '','Ameba','Potwory'),(54,'Gladiator',_binary '','\"Miażdżyciel\" Braugen ','Zawodnicy'),(55,'Spotkany w świątyni w kanałach',_binary '','Herold Tzeentcha','Demony'),(65,'Troll',_binary '','Troll','Potwory'),(68,'Człowiek, Demonolog i Patrycjusz',_binary '','Johannes Teugen','Główni BN'),(70,'Sheru-Tar Gee\'Taru - Herold Tzeentcha',_binary '','Gideon','Główni BN'),(75,'',_binary '','Mackowaty Mutant','Rzeczni Mutanci'),(76,'',_binary '','Skrzydlaty Mutant','Rzeczni Mutanci'),(77,'',_binary '','Dziobaty Mutant','Rzeczni Mutanci'),(78,'',_binary '','Włochaty Mutant','Rzeczni Mutanci'),(79,'',_binary '','Porywacz z Czerwonej Stodoły','Oprychy'),(158,'Herszt piratów',_binary '','Rufus','Piraci Rzeczni'),(159,'Pirat Rzeczny',_binary '','Pirat','Piraci Rzeczni'),(160,'Ghoul z wieży semafora',_binary '','Ghoul Czempion','Nieumarli'),(161,'',_binary '','Zombi z wieży Semafora','Nieumarli'),(162,'Straż',_binary '','Kapitan Straży','Straż'),(163,'Straż',_binary '','Rekrut Straży','Straż');
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
  PRIMARY KEY (`id`),
  KEY `FKabu9xeixjyfy5x8b091c5asy5` (`skill_id`),
  CONSTRAINT `FKabu9xeixjyfy5x8b091c5asy5` FOREIGN KEY (`skill_id`) REFERENCES `skill` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=612 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_skill`
--

LOCK TABLES `character_skill` WRITE;
/*!40000 ALTER TABLE `character_skill` DISABLE KEYS */;
INSERT INTO `character_skill` VALUES (169,73,42,14),(170,50,42,36),(171,49,42,123),(172,47,42,37),(173,64,42,44),(174,82,42,105),(175,65,42,28),(176,50,42,96),(177,52,43,28),(178,51,43,42),(179,65,43,13),(180,56,43,15),(181,54,43,25),(454,77,40,8),(455,63,40,28),(456,73,40,98),(457,37,40,10),(458,37,40,27),(459,67,40,42),(460,85,40,17),(461,40,40,48),(462,55,40,38),(463,47,40,23),(464,42,40,9),(465,61,40,118),(466,77,40,47),(467,72,40,45),(468,45,40,37),(469,32,40,24),(470,45,40,119),(471,66,40,12),(472,66,40,25),(473,55,68,28),(474,73,68,26),(475,74,68,70),(476,80,68,57),(481,74,54,17),(482,53,54,15),(483,74,54,25),(486,65,75,29),(487,55,75,15),(492,55,77,28),(493,53,77,118),(494,41,77,15),(495,55,76,34),(496,45,76,98),(497,53,76,118),(498,41,76,15),(499,55,76,28),(500,55,78,28),(501,53,78,118),(502,41,78,15),(503,45,79,29),(504,45,79,28),(505,40,79,14),(506,35,79,13),(507,40,79,47),(508,40,79,15),(509,30,79,63),(510,45,79,25),(579,55,31,8),(580,37,31,28),(581,45,31,38),(582,34,31,37),(583,54,31,15),(584,54,37,28),(585,52,37,98),(586,45,37,27),(587,43,37,38),(588,38,37,37),(589,49,37,25),(596,50,159,96),(597,49,159,15),(598,65,158,28),(599,58,158,96),(600,49,158,15),(601,57,162,28),(602,55,162,96),(603,55,162,27),(604,48,162,26),(605,35,162,17),(606,40,162,13),(607,48,162,38),(608,39,162,15),(609,40,163,28),(610,35,163,38),(611,35,163,15);
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
  CONSTRAINT `FKh9md6ppi1pboqd87oj35lf30o` FOREIGN KEY (`spell_id`) REFERENCES `spell` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_spell`
--

LOCK TABLES `character_spell` WRITE;
/*!40000 ALTER TABLE `character_spell` DISABLE KEYS */;
INSERT INTO `character_spell` VALUES (40,3),(70,6),(70,5),(70,7),(70,9),(70,8),(68,3),(68,4),(68,1),(68,2);
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
  PRIMARY KEY (`id`),
  KEY `FK7iq8gv87fb3fod88c02evllm3` (`talent_id`),
  CONSTRAINT `FK7iq8gv87fb3fod88c02evllm3` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1086 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_talent`
--

LOCK TABLES `character_talent` WRITE;
/*!40000 ALTER TABLE `character_talent` DISABLE KEYS */;
INSERT INTO `character_talent` VALUES (170,1,42,212),(171,1,42,83),(172,1,42,141),(173,1,43,64),(174,1,43,192),(175,1,43,193),(176,1,43,65),(177,1,43,191),(178,1,43,56),(324,1,27,151),(325,1,27,157),(326,1,27,127),(327,1,27,198),(328,1,27,135),(329,1,27,212),(330,1,26,198),(331,1,26,156),(332,1,26,135),(333,1,26,151),(334,1,26,157),(335,1,26,69),(336,1,26,87),(337,1,30,176),(338,1,30,151),(339,1,30,10),(340,1,28,178),(533,1,52,145),(591,2,40,172),(592,1,40,194),(593,1,40,152),(594,1,40,193),(595,1,40,191),(596,1,40,129),(597,1,40,181),(598,1,68,144),(599,1,68,220),(600,1,68,170),(632,2,54,64),(633,1,54,158),(634,1,54,118),(690,1,79,133),(691,1,79,59),(753,1,25,165),(754,1,25,137),(755,1,25,151),(756,1,25,9),(757,2,25,10),(758,1,25,67),(1058,1,37,41),(1059,1,37,99),(1060,1,37,119),(1061,1,150,137),(1062,1,150,165),(1063,1,150,151),(1064,1,150,9),(1065,2,150,10),(1066,1,150,67),(1067,1,151,151),(1068,1,151,69),(1069,1,151,157),(1070,1,151,156),(1071,1,151,87),(1072,1,151,198),(1073,1,151,135),(1074,1,152,212),(1075,1,152,151),(1076,1,152,157),(1077,1,152,127),(1078,1,152,198),(1079,1,152,135),(1080,1,153,178),(1081,1,155,151),(1082,1,155,10),(1083,1,155,176),(1085,1,158,91);
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
  CONSTRAINT `FKbguirset27kmboew4519168g4` FOREIGN KEY (`weapon_id`) REFERENCES `weapon` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=369 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_weapon`
--

LOCK TABLES `character_weapon` WRITE;
/*!40000 ALTER TABLE `character_weapon` DISABLE KEYS */;
INSERT INTO `character_weapon` VALUES (122,1,42,1),(123,1,42,31),(124,20,42,53),(125,1,43,1),(153,1,28,45),(154,12,28,60),(223,1,40,1),(224,1,40,38),(225,40,40,58),(226,1,68,3),(235,1,41,63),(236,1,41,3),(237,1,41,61),(239,1,54,2),(246,1,77,67),(247,1,76,20),(248,1,76,38),(249,20,76,58),(250,1,78,63),(251,1,79,3),(252,1,79,63),(276,1,25,3),(331,1,55,1),(333,1,31,3),(337,1,34,1),(338,1,35,1),(339,1,37,1),(340,1,37,38),(341,15,37,58),(342,1,33,1),(343,1,150,3),(344,1,153,45),(345,12,153,60),(352,1,159,67),(353,1,159,31),(354,20,159,53),(355,1,158,67),(356,1,158,31),(357,20,158,53),(362,1,161,67),(363,1,160,1),(364,1,162,67),(365,1,162,6),(366,1,162,31),(367,20,162,53),(368,1,163,67);
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
INSERT INTO `hibernate_sequences` VALUES ('default',163);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
INSERT INTO `note` VALUES (145,'Pozostało mu 10 Żywotności.',77),(146,'Pozostało mu 10 Żywotności.',78),(180,'Mutacja - Psi wygląd',34),(181,'Mutacja - Spiczastogłowy',35),(182,'Mutacja - Kolczaste łuski',37),(183,'Mutacja - Gwoździogłowy\n',33);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (1,'ART_CARTOGRAPHY'),(2,'ART_ENGRAVING'),(3,'ART_MOSAICS'),(4,'ART_PAINTING'),(5,'ART_SCULPTURE'),(6,'ART_TATTOO'),(7,'ART_WEAVING'),(8,'ATHLETICS'),(9,'BRIBERY'),(10,'CHARM'),(11,'CHARM_ANIMAL'),(12,'CLIMB'),(13,'COOL'),(14,'CONSUME_ALCOHOL'),(15,'DODGE'),(16,'DRIVE'),(17,'ENDURANCE'),(18,'ENTERTAIN_ACTING'),(19,'ENTERTAIN_COMEDY'),(20,'ENTERTAIN_SINGING'),(21,'ENTERTAIN_STORYTELLING'),(22,'GAMBLE'),(23,'GOSSIP'),(24,'HAGGLE'),(25,'INTIMIDATE'),(26,'INTUITION'),(27,'LEADERSHIP'),(28,'MELEE_BASIC'),(29,'MELEE_BRAWLING'),(30,'MELEE_CAVALRY'),(31,'MELEE_FENCING'),(32,'MELEE_FLAIL'),(33,'MELEE_PARRY'),(34,'MELEE_POLEARM'),(35,'MELEE_TWO_HANDED'),(36,'NAVIGATION'),(37,'OUTDOOR_SURVIVAL'),(38,'PERCEPTION'),(39,'RIDE_DEMIGRYPH'),(40,'RIDE_GREAT_WOLF'),(41,'RIDE_GRIFFON'),(42,'RIDE_HORSE'),(43,'RIDE_PEGASUS'),(44,'ROW'),(45,'STEALTH_RURAL'),(46,'STEALTH_UNDERGROUND'),(47,'STEALTH_URBAN'),(48,'ANIMAL_CARE'),(49,'ANIMAL_TRAINING_DEMIGRYPH'),(50,'ANIMAL_TRAINING_DOG'),(51,'ANIMAL_TRAINING_HORSE'),(52,'ANIMAL_TRAINING_PEGASUS'),(53,'ANIMAL_TRAINING_PIGEON'),(54,'CHANNELLING_AQSHY'),(55,'CHANNELLING_AZYR'),(56,'CHANNELLING_CHAMON'),(57,'CHANNELLING_DHAR'),(58,'CHANNELLING_GHUR'),(59,'CHANNELLING_GHYRAN'),(60,'CHANNELLING_HYSH'),(61,'CHANNELLING_SHYISH'),(62,'CHANNELLING_ULGU'),(63,'EVALUATE'),(64,'HEAL'),(65,'LANGUAGE_BATTLE_TONGUE'),(66,'LANGUAGE_BRETONNIAN'),(67,'LANGUAGE_CLASSICAL'),(68,'LANGUAGE_GUILDER'),(69,'LANGUAGE_KHAZALID'),(70,'LANGUAGE_MAGICK'),(71,'LANGUAGE_THIEF'),(72,'LANGUAGE_TILEAN'),(73,'LORE_ENGINEERING'),(74,'LORE_GEOLOGY'),(75,'LORE_HERALDRY'),(76,'LORE_HISTORY'),(77,'LORE_LAW'),(78,'LORE_MAGICK'),(79,'LORE_METALLURGY'),(80,'LORE_SCIENCE'),(81,'LORE_THEOLOGY'),(82,'PERFORM_ACROBATICS'),(83,'PERFORM_CLOWNING'),(84,'PERFORM_DANCING'),(85,'PERFORM_FIREBREATHING'),(86,'PERFORM_JUGGLING'),(87,'PERFORM_MIMING'),(88,'PERFORM_ROPE_WALKING'),(89,'PICK_LOCK'),(90,'PLAY_BAGPIPE'),(91,'PLAY_LUTE'),(92,'PLAY_HARP'),(93,'PLAY_HORN'),(94,'PLAY_VIOLIN'),(95,'PRAY'),(96,'RANGED_BLACKPOWDER'),(97,'RANGED_BOW'),(98,'RANGED_CROSSBOW'),(99,'RANGED_ENGINEERING'),(100,'RANGED_ENTANGLING'),(101,'RANGED_EXPLOSIVES'),(102,'RANGED_SLING'),(103,'RANGED_THROWING'),(104,'RESEARCH'),(105,'SAIL_BARGE'),(106,'SAIL_CARAVEL'),(107,'SAIL_COG'),(108,'SAIL_FRIGATE'),(109,'SAIL_WOLFSHIP'),(110,'SECRET_SIGNS_GREY_ORDER'),(111,'SECRET_SIGNS_GUILD'),(112,'SECRET_SIGNS_RANGER'),(113,'SECRET_SIGNS_SCOUT'),(114,'SECRET_SIGNS_THIEF'),(115,'SECRET_SIGNS_VAGABOND'),(116,'SET_TRAP'),(117,'SLEIGHT_OF_HAND'),(118,'SWIM'),(119,'TRACK'),(120,'TRADE_APOTHECARY'),(121,'TRADE_CALLIGRAPHER'),(122,'TRADE_CHANDLER'),(123,'TRADE_CARPENTER'),(124,'TRADE_COOK'),(125,'TRADE_EMBALMER'),(126,'TRADE_SMITH'),(127,'TRADE_TANNER');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skirmish_character_entity`
--

LOCK TABLES `skirmish_character_entity` WRITE;
/*!40000 ALTER TABLE `skirmish_character_entity` DISABLE KEYS */;
INSERT INTO `skirmish_character_entity` VALUES (150,'Postać Konrada - Człowiek - Student Medycyny',_binary '','Gotthard Lauterbach',0,12,_binary '\0',28,'Bohaterowie'),(151,'Postać Piotra Ż. - Krasnolud - Zabójca Trolli',_binary '','Throngroth Hegalison',0,17,_binary '\0',30,'Bohaterowie'),(152,'Postać Piotra P. - Krasnolud - Czeladnik',_binary '','Ullagrund Ganddreng',0,19,_binary '\0',31,'Bohaterowie'),(153,'Postać Huberta - Niziołek - Czeladnik',_binary '','Nobbi Wesołek',0,8,_binary '\0',29,'Bohaterowie'),(154,'Postać Kuby - Człowiek - Uczeń Szczurołapa',_binary '','Rygar',0,9,_binary '\0',39,'Bohaterowie'),(155,'Postać Klaudii - Człowiek - Przekupka',_binary '','Renia Sianko',0,11,_binary '\0',28,'Bohaterowie');
/*!40000 ALTER TABLE `skirmish_character_entity` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell`
--

LOCK TABLES `spell` WRITE;
/*!40000 ALTER TABLE `spell` DISABLE KEYS */;
INSERT INTO `spell` VALUES (1,'BOLT',2),(2,'CORROSIVE_BLOOD',2),(3,'DOME',2),(4,'ENTANGLE',2),(5,'BOLT_OF_CORRUPTION',18),(6,'BLUE_FIRE_OF_TZEENTCH',17),(7,'PINK_FIRE_OF_TZEENTCH',17),(8,'POWER_OF_CHAOS',18),(9,'MINDFIRE',17);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talent`
--

LOCK TABLES `talent` WRITE;
/*!40000 ALTER TABLE `talent` DISABLE KEYS */;
INSERT INTO `talent` VALUES (1,'BSB','ACCURATE_SHOT'),(2,'IB','ACUTE_SENSE_SIGHT'),(3,'IB','ACUTE_SENSE_SMELL'),(4,'IB','ACUTE_SENSE_HEARING'),(5,'IB','ACUTE_SENSE_FEEL'),(6,'IB','ACUTE_SENSE_TASTE'),(7,'IB','AETHYRIC_ATTUNEMENT'),(8,'IB','ALLEY_CAT'),(9,'2','AMBIDEXTROUS'),(10,'WPB','ANIMAL_AFFINITY'),(11,'1','ARCANE_MAGIC_BEASTS'),(12,'1','ARCANE_MAGIC_DEATH'),(13,'1','ARCANE_MAGIC_FIRE'),(14,'1','ARCANE_MAGIC_HEAVENS'),(15,'1','ARCANE_MAGIC_METAL'),(16,'1','ARCANE_MAGIC_SHADOW'),(17,'1','ARCANE_MAGIC_LIGHT'),(18,'1','ARCANE_MAGIC_LIFE'),(19,'1','ARCANE_MAGIC_HEDGECRAFT'),(20,'1','ARCANE_MAGIC_NECROMANCY'),(21,'FELB','ARGUMENTATIVE'),(22,'DEXB','ARTISTIC'),(23,'FELB','ATTRACTIVE'),(24,'WPB','BATTLE_RAGE'),(25,'WSB','BEAT_BLADE'),(26,'FELB','BENEATH_NOTICE'),(27,'SB','BERSERK_CHARGE'),(28,'FELB','BLATHER'),(29,'1','BLESS_MANANN'),(30,'1','BLESS_MORR'),(31,'1','BLESS_MYRMIDIA'),(32,'1','BLESS_RANALD'),(33,'1','BLESS_RHYA'),(34,'1','BLESS_SHALLYA'),(35,'1','BLESS_SIGMAR'),(36,'1','BLESS_TAAL'),(37,'1','BLESS_ULRIC'),(38,'1','BLESS_VERENA'),(39,'INTB','BOOKISH'),(40,'SB','BREAK_AND_ENTER'),(41,'FELB','BRIBER'),(42,'INTB','CARDSHARP'),(43,'IB','CAREFUL_STRIKE'),(44,'TB','CAROUSER'),(45,'AGB','CATFALL'),(46,'FELB','CAT_TONGUED'),(47,'1','CHAOS_MAGIC_NURGLE'),(48,'1','CHAOS_MAGIC_SLAANESH'),(49,'1','CHAOS_MAGIC_TZEENTCH'),(50,'IB','COMBAT_AWARE'),(51,'AGB','COMBAT_MASTER'),(52,'IB','COMBAT_REFLEXES'),(53,'FELB','COMMANDING_PRESENCE'),(54,'INTB','CONCOCT'),(55,'AGB','CONTORTIONIST'),(56,'1','COOLHEADED'),(57,'DEXB','CRACK_THE_WHIP'),(58,'DEXB','CRAFTSMAN'),(59,'NONE','CRIMINAL'),(60,'1','DEADEYE_SHOT'),(61,'FELB','DEALMAKER'),(62,'IB','DETECT_ARTEFACT'),(63,'INTB','DICEMAN'),(64,'WSB','DIRTY_FIGHTING'),(65,'IB','DISARM'),(66,'AGB','DISTRACT'),(67,'1','DOOMED'),(68,'WSB','DRILLED'),(69,'AGB','DUAL_WIELDER'),(70,'INTB','EMBEZZLE'),(71,'AGB','ENCLOSED_FIGHTER'),(72,'FELB','ETIQUETTE'),(73,'DEXB','FAST_HANDS'),(74,'AGB','FAST_SHOT'),(75,'WPB','FEARLESS_BEASTMEN'),(76,'WPB','FEARLESS_GREENSKINS'),(77,'WPB','FEARLESS_OUTLAWS'),(78,'WPB','FEARLESS_VAMPIRES'),(79,'WPB','FEARLESS_WATCHMEN'),(80,'WPB','FEARLESS_WITCHES'),(81,'WSB','FEINT'),(82,'INTB','FIELD_DRESSING'),(83,'IB','FISHERMAN'),(84,'TB','FLAGELLANT'),(85,'AGB','FLEE'),(86,'1','FLEET_FOOTED'),(87,'1','FRENZY'),(88,'SB','FRIGHTENING'),(89,'AGB','FURIOUS_ASSAULT'),(90,'FELB','GREGARIOUS'),(91,'DEXB','GUNNER'),(92,'TB','HARDY'),(93,'WPB','HATRED_BEASTMEN'),(94,'WPB','HATRED_GRENSKINS'),(95,'WPB','HATRED_MONSTERS'),(96,'WPB','HATRED_OUTLAWS'),(97,'WPB','HATRED_SIGMARITES'),(98,'WPB','HATRED_UNDEAD'),(99,'WPB','HATRED_WITCHES'),(100,'FELB','HOLY_HATRED'),(101,'IB','HOLY_VISIONS'),(102,'IB','HUNTERS_EYE'),(103,'FELB','IMPASSIONED_ZEAL'),(104,'TB','IMPLACABLE'),(105,'DEXB','IN_FIGHTER'),(106,'FELB','INSPIRING'),(107,'IB','INSTINCTIVE_DICTION'),(108,'1','INVOKE_MANANN'),(109,'1','INVOKE_MORR'),(110,'1','INVOKE_MYRMIDIA'),(111,'1','INVOKE_RANALD'),(112,'1','INVOKE_RHYA'),(113,'1','INVOKE_SHALLYA'),(114,'1','INVOKE_SIGMAR'),(115,'1','INVOKE_TAAL'),(116,'1','INVOKE_ULRIC'),(117,'1','INVOKE_VERENA'),(118,'TB','IRON_JAW'),(119,'WPB','IRON_WILL'),(120,'1','JUMP_UP'),(121,'1','KINGPIN'),(122,'1','LIGHTNING_REFLEXES'),(123,'IB','LINGUISTICS'),(124,'IB','LIP_READING'),(125,'FELB','LUCK'),(126,'IB','MAGICAL_SENSE'),(127,'1','MAGIC_RESISTANCE'),(128,'NONE','MAGNUM_OPUS'),(129,'1','MARKSMAN'),(130,'FELB','MASTER_OF_DISGUISE'),(131,'FELB','MASTER_ORATOR'),(132,'DEXB','MASTER_TRADESMAN'),(133,'SB','MENACING'),(134,'IB','MIMIC'),(135,'IB','NIGHT_VISION'),(136,'1','NIMBLE_FINGERED'),(137,'1','NOBLE_BLOOD'),(138,'IB','NOSE_FOR_TROUBLE'),(139,'IB','NUMISMATICS'),(140,'AGB','OLD_SALT'),(141,'IB','ORIENTATION'),(142,'FELB','PANHANDLE'),(143,'IB','PERFECT_PITCH'),(144,'1','PETTY_MAGIC'),(145,'INTB','PHARMACIST'),(146,'IB','PILOT'),(147,'FELB','PUBLIC_SPEAKER'),(148,'WPB','PURE_SOUL'),(149,'DEXB','RAPID_RELOAD'),(150,'IB','REACTION_STRIKE'),(151,'1','READ_WRITE'),(152,'AGB','RELENTLESS'),(153,'TB','POISON_RESISTANCE'),(154,'TB','DISEASE_RESISTANCE'),(155,'TB','MUTATION_RESISTANCE'),(156,'TB','CHAOS_RESISTANCE'),(157,'SB','RESOLUTE'),(158,'WSB','REVERSAL'),(159,'AGB','RIPOSTE'),(160,'IB','RIVER_GUIDE'),(161,'TB','ROBUST'),(162,'AGB','ROUGHRIDER'),(163,'AGB','ROVER'),(164,'INTB','SAVANT'),(165,'1','SAVVY'),(166,'SB','SCALE_SHEER_SURFACE'),(167,'INTB','SCHEMER'),(168,'TB','SEA_LEGS'),(169,'INTB','SEASONED_TRAVELLER'),(170,'IB','SECOND_SIGHT'),(171,'INTB','SECRET_IDENTITY'),(172,'AGB','SHADOW'),(173,'1','SHARP'),(174,'1','SHARPSHOOTER'),(175,'SB','SHIELDSMAN'),(176,'IB','SIXTH_SENSE'),(177,'1','SLAYER'),(178,'1','SMALL'),(179,'4','SNIPER'),(180,'INTB','SPEEDREADER'),(181,'SB','SPRINTER'),(182,'AGB','STEP_ASIDE'),(183,'TB','STONE_SOUP'),(184,'WPB','STOUT_HEARTED'),(185,'AGB','STRIDER_COASTAL'),(186,'AGB','STRIDER_DESERTS'),(187,'AGB','STRIDER_MARSHES'),(188,'AGB','STRIDER_ROCKY'),(189,'AGB','STRIDER_TUNDRA'),(190,'AGB','STRIDER_WOODLANDS'),(191,'SB','STRIKE_MIGHTY_BLOW'),(192,'IB','STRIKE_TO_INJURE'),(193,'WSB','STRIKE_TO_STUN'),(194,'SB','STRONG_BACK'),(195,'SB','STRONG_LEGS'),(196,'WPB','STRING_MINDED'),(197,'SB','STRONG_SWIMMER'),(198,'SB','STURDY'),(199,'1','SUAVE'),(200,'INTB','SUPER_NUMERATE'),(201,'FELB','SUPPORTIVE'),(202,'IB','SURE_SHOT'),(203,'INTB','SURGERY'),(204,'TB','TENACIOUS'),(205,'DEXB','TINKER'),(206,'INTB','TOWER_OF_MEMORIES'),(207,'IB','TRAPPER'),(208,'AGB','TRICK_RIDING'),(209,'AGB','TUNNEL_RAT'),(210,'WPB','UNSHAKABLE'),(211,'1','VERY_RESILIENT'),(212,'1','VERY_STRONG'),(213,'FELB','WAR_LEADER'),(214,'1','WAR_WIZARD'),(215,'1','WARRIOR_BORN'),(216,'AGB','WATERMAN'),(217,'NONE','WEALTHY'),(218,'IB','WELL_PREPARED'),(219,'WPB','WITCH'),(220,'1','ARCANE_MAGIC_DEMONOLOGY');
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
  `is_using_strength` bit(1) DEFAULT NULL,
  `is_using_strength_in_range` bit(1) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `name_translation` varchar(255) NOT NULL,
  `weapon_range` float DEFAULT NULL,
  `weapon_group_id` bigint NOT NULL,
  `weapon_reach_id` bigint NOT NULL,
  `weapon_type_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_m3g4t18ism1x7p997f9ustdu7` (`name`),
  UNIQUE KEY `UK_im2966n1lf6vmqt578ibtrcah` (`name_translation`),
  KEY `FKb0c92qm8bhswbxrt0rrjfisa1` (`weapon_group_id`),
  KEY `FKi3sgoa8cgvxlpj59kkamws5yu` (`weapon_reach_id`),
  KEY `FK3t2hcfewrcv6ielmtgbhrib23` (`weapon_type_id`),
  CONSTRAINT `FK3t2hcfewrcv6ielmtgbhrib23` FOREIGN KEY (`weapon_type_id`) REFERENCES `weapon_type` (`id`),
  CONSTRAINT `FKb0c92qm8bhswbxrt0rrjfisa1` FOREIGN KEY (`weapon_group_id`) REFERENCES `weapon_group` (`id`),
  CONSTRAINT `FKi3sgoa8cgvxlpj59kkamws5yu` FOREIGN KEY (`weapon_reach_id`) REFERENCES `weapon_reach` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapon`
--

LOCK TABLES `weapon` WRITE;
/*!40000 ALTER TABLE `weapon` DISABLE KEYS */;
INSERT INTO `weapon` VALUES (1,4,_binary '',_binary '\0','HAND_WEAPON','Broń ręczna',0,1,1,1),(2,1,_binary '',_binary '\0','IMPROVISED_WEAPON','Broń improwizowana',0,1,7,1),(3,2,_binary '',_binary '\0','DAGGER','Sztylet',0,1,9,1),(4,1,_binary '',_binary '\0','KNIFE','Nóż',0,1,9,1),(5,1,_binary '',_binary '\0','SHIELD_BUCKLER','Tarcza (puklerz)',0,1,4,1),(6,2,_binary '',_binary '\0','SHIELD','Tarcza',0,1,9,1),(7,3,_binary '',_binary '\0','SHIELD_LARGE','Tarcza (duża)',0,1,9,1),(8,5,_binary '',_binary '\0','CAVALRY_HAMMER','Młot kawaleryjski',0,2,2,1),(9,6,_binary '',_binary '\0','LANCE','Kopia',0,2,8,1),(10,3,_binary '',_binary '\0','FOIL','Floret',0,3,1,1),(11,4,_binary '',_binary '\0','RAPIER','Rapier',0,3,2,1),(12,0,_binary '',_binary '\0','UNARMED','Pięści i kopniaki',0,4,4,1),(13,2,_binary '',_binary '\0','KNUCKLEDUSTERS','Kastet',0,4,4,1),(14,3,_binary '',_binary '\0','GRAIN_FLAIL','Cep bojowy',0,5,1,1),(15,5,_binary '',_binary '\0','FLAIL','Korbacz',0,5,1,1),(16,6,_binary '',_binary '\0','MILITARY_FLAIL','Kiścień',0,5,2,1),(17,2,_binary '',_binary '\0','MAIN_GAUCHE','Lewak',0,6,9,1),(18,3,_binary '',_binary '\0','SWORDBRAKER','Łamacz mieczy',0,6,6,1),(19,4,_binary '',_binary '\0','HALBERD','Halabarda',0,7,2,1),(20,4,_binary '',_binary '\0','SPEAR','Włócznia',0,7,8,1),(21,4,_binary '',_binary '\0','PIKE','Pika',0,7,3,1),(22,4,_binary '',_binary '\0','QUARTER_STAFF','Kostur',0,7,2,1),(23,5,_binary '',_binary '\0','BASTARD_SWORD','Półtorak',0,8,2,1),(24,6,_binary '',_binary '\0','GREAT_AXE','Wielki topór',0,8,2,1),(25,5,_binary '',_binary '\0','PICK','Nadziak',0,8,1,1),(26,6,_binary '',_binary '\0','WARHAMMER','Młot bojowy',0,8,1,1),(27,5,_binary '',_binary '\0','ZWEIHANDER','Miecz dwuręczny',0,8,2,1),(28,8,_binary '\0',_binary '\0','BLUNDERBUSS','Garłacz',20,9,5,2),(29,9,_binary '\0',_binary '\0','HOCHLAND_LONG_RIFLE','Muszkiet hochlandzki',100,9,5,2),(30,9,_binary '\0',_binary '\0','HANDGUN','Rusznica',50,9,5,2),(31,8,_binary '\0',_binary '\0','PISTOL','Pistolet',20,9,5,2),(32,4,_binary '',_binary '\0','ELF_BOW','Łuk elfi',150,10,5,2),(33,4,_binary '',_binary '\0','LONGBOW','Łuk długi',100,10,5,2),(34,3,_binary '',_binary '\0','BOW','Łuk',50,10,5,2),(35,2,_binary '',_binary '\0','SHORTBOW','Krótki łuk',20,10,5,2),(36,7,_binary '\0',_binary '\0','CROSSBOW_PISTOL','Kusza pistoletowa',10,11,5,2),(37,9,_binary '\0',_binary '\0','HEAVY_CROSSBOW','Ciężka kusza',100,11,5,2),(38,9,_binary '\0',_binary '\0','CROSSBOW','Kusza',60,11,5,2),(39,9,_binary '\0',_binary '\0','REPEATER_HANDGUN','Rusznica samopowtarzalna',30,12,5,2),(40,8,_binary '\0',_binary '\0','REPEATER_PISTOL','Pistolet samopowtarzalny',10,12,5,2),(41,0,_binary '\0',_binary '','LASSO','Arkan',2,13,5,2),(42,2,_binary '',_binary '\0','WHIP','Bicz',6,13,5,2),(43,12,_binary '\0',_binary '','BOMB','Bomba',0,14,5,2),(44,0,_binary '\0',_binary '','INCENDIARY','Ładunek zapalający',0,14,5,2),(45,6,_binary '\0',_binary '\0','SLING','Proca',60,15,5,2),(46,7,_binary '\0',_binary '\0','STAFF_SLING','Proca drzewcowa',100,15,5,2),(47,0,_binary '',_binary '','BOLAS','Bolas',3,16,5,2),(48,1,_binary '',_binary '','DART','Strzałka',2,16,5,2),(49,3,_binary '',_binary '','JAVELIN','Oszczep',3,16,5,2),(50,0,_binary '',_binary '','ROCK','Kamień',3,16,5,2),(51,3,_binary '',_binary '','THROWING_AXE','Topór do rzucania',2,16,5,2),(52,2,_binary '',_binary '','THROWING_KNIFE','Nóż do rzucania',2,16,5,2),(53,1,_binary '\0',_binary '\0','BULLET_AND_POWDER','Pocisk i proch',1,17,5,2),(54,0,_binary '\0',_binary '\0','IMPROVISED_SHOT_AND_POWDER','Improwizowany śrut i proch',0.5,17,5,2),(55,0,_binary '\0',_binary '\0','SMALL_SHOT_AND_POWDER','Śrut i proch',1,17,5,2),(56,0,_binary '\0',_binary '\0','ARROW','Strzała',1,18,5,2),(57,1,_binary '\0',_binary '\0','ELF_ARROW','Strzała elfia',50,18,5,2),(58,0,_binary '\0',_binary '\0','BOLT','Bełt',1,19,5,2),(59,1,_binary '\0',_binary '\0','LEAD_BULLET','Pocisk ołowiany',-10,20,5,2),(60,1,_binary '\0',_binary '\0','STONE_BULLET','Pocisk kamienny',1,20,5,2),(61,4,_binary '',_binary '\0','AXE','Topór',0,1,1,1),(62,1,_binary '',_binary '\0','BALLOCK KNIFE','Puginał',0,1,9,1),(63,4,_binary '',_binary '\0','CLUB','Maczuga',0,1,1,1),(64,4,_binary '',_binary '\0','MACE','Buzdygan',0,1,1,1),(65,4,_binary '',_binary '\0','MILITARY_PICK','Czekan',0,1,1,1),(66,4,_binary '',_binary '\0','SCIMITAR','Sejmitar',0,1,6,1),(67,4,_binary '',_binary '\0','SWORD','Miecz',0,1,1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapon_quality`
--

LOCK TABLES `weapon_quality` WRITE;
/*!40000 ALTER TABLE `weapon_quality` DISABLE KEYS */;
INSERT INTO `weapon_quality` VALUES (1,'ACCURATE'),(2,'BLACKPOWDER'),(3,'BLAST'),(4,'DAMAGING'),(5,'DEFENSIVE'),(6,'DISTRACT'),(7,'ENTANGLE'),(8,'FAST'),(9,'HACK'),(10,'IMPACT'),(11,'IMPALE'),(12,'PENETRATING'),(13,'PISTOL'),(14,'PRECISE'),(15,'PUMMEL'),(16,'REPEATER'),(17,'SHIELD'),(18,'TRAP_BLADE'),(19,'TWO_HANDED'),(20,'UNBREAKABLE'),(21,'WRAP'),(22,'DANGEROUS'),(23,'IMPRECISE'),(24,'RELOAD'),(25,'SLOW'),(26,'TIRING'),(27,'UNDAMAGING'),(28,'INCENDIARY'),(29,'DURABLE'),(30,'FINE'),(31,'LIGHTWEIGHT'),(32,'PRACTICAL'),(33,'UGLY'),(34,'SHODDY'),(35,'UNRELIABLE'),(36,'BULKY'),(37,'UNBALANCED'),(38,'SLASH');
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
  `value` int DEFAULT NULL,
  `weapon_id` bigint NOT NULL,
  `weapon_quality_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKiga1ti68058b3a8db6f3gccdp` (`weapon_id`),
  KEY `FKda0tc27g64fcyhcowkmq1u1fr` (`weapon_quality_id`),
  CONSTRAINT `FKda0tc27g64fcyhcowkmq1u1fr` FOREIGN KEY (`weapon_quality_id`) REFERENCES `weapon_quality` (`id`),
  CONSTRAINT `FKiga1ti68058b3a8db6f3gccdp` FOREIGN KEY (`weapon_id`) REFERENCES `weapon` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapon_quality_value`
--

LOCK TABLES `weapon_quality_value` WRITE;
/*!40000 ALTER TABLE `weapon_quality_value` DISABLE KEYS */;
INSERT INTO `weapon_quality_value` VALUES (1,1,2,27),(2,1,4,27),(3,1,5,27),(4,1,5,5),(5,1,5,17),(6,1,6,27),(7,1,6,5),(8,2,6,17),(9,1,7,27),(10,1,7,5),(11,3,7,17),(12,1,8,19),(13,1,8,15),(14,1,9,10),(15,1,9,11),(16,1,10,8),(17,1,10,11),(18,1,10,14),(19,1,10,27),(20,1,11,8),(21,1,11,11),(22,1,12,27),(23,1,14,6),(24,1,14,23),(25,1,14,21),(26,1,15,6),(27,1,15,21),(28,1,16,19),(29,1,16,6),(30,1,16,10),(31,1,16,26),(32,1,16,21),(33,1,17,5),(34,1,18,5),(35,1,18,18),(36,1,19,19),(37,1,19,5),(38,1,19,9),(39,1,19,11),(40,1,20,19),(41,1,20,11),(42,1,21,19),(43,1,21,11),(44,1,22,19),(45,1,22,5),(46,1,22,15),(47,1,23,19),(48,1,23,4),(49,1,23,5),(50,1,24,19),(51,1,24,9),(52,1,24,10),(53,1,24,26),(54,1,25,19),(55,1,25,4),(56,1,25,11),(57,1,26,19),(58,1,26,4),(59,1,26,15),(60,1,27,19),(61,1,27,4),(62,1,27,9),(63,1,28,2),(64,1,28,4),(65,3,28,3),(66,1,28,22),(67,2,28,24),(68,1,28,19),(69,1,29,2),(70,1,29,4),(71,1,29,1),(72,1,29,14),(73,4,29,24),(74,1,29,19),(75,1,30,2),(76,1,30,4),(77,1,30,22),(78,3,30,24),(79,1,30,19),(80,1,31,2),(81,1,31,4),(82,1,31,13),(83,1,31,24),(84,1,32,4),(85,1,32,14),(86,1,32,19),(87,1,33,4),(88,1,33,19),(89,1,34,19),(90,1,35,19),(91,1,36,13),(92,1,37,4),(93,2,37,24),(94,1,37,19),(95,1,38,24),(96,1,38,19),(97,1,39,2),(98,1,39,4),(99,1,39,22),(100,5,39,24),(101,4,39,16),(102,1,40,2),(103,1,40,4),(104,1,40,22),(105,4,40,16),(106,4,40,24),(107,1,41,7),(108,1,42,7),(109,5,43,3),(110,1,43,22),(111,1,43,10),(112,1,44,28),(113,4,44,3),(114,1,44,22),(115,1,46,19),(116,1,47,7),(117,1,48,11),(118,1,49,11),(119,1,51,9),(120,1,53,11),(121,1,53,12),(122,1,55,3),(123,1,56,11),(124,1,57,1),(125,1,57,11),(126,1,57,12),(127,1,58,11),(128,1,59,15),(129,1,60,15),(130,1,61,9),(131,1,61,37),(132,1,62,11),(133,1,62,12),(134,1,62,14),(135,1,2,37),(136,1,63,27),(137,1,63,37),(138,1,64,15),(139,1,64,37),(140,1,65,12),(141,1,65,37),(142,1,66,38);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapon_type`
--

LOCK TABLES `weapon_type` WRITE;
/*!40000 ALTER TABLE `weapon_type` DISABLE KEYS */;
INSERT INTO `weapon_type` VALUES (1,'MELEE'),(2,'RANGED');
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

-- Dump completed on 2023-01-02 16:37:12
