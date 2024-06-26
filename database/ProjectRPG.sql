-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: projectrpg
-- ------------------------------------------------------
-- Server version	8.2.0

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_piy227jvtb6tk5xv2p57mudtr` (`name`),
  UNIQUE KEY `UK_ox489vahmjb30xu37sq87an09` (`name_translation`),
  KEY `FKqkp6fd8qa836fixioj16a2k7i` (`armor_category_id`),
  KEY `FKb4hxxgvd03u8qqri0306tbhkp` (`availability_id`),
  CONSTRAINT `FKb4hxxgvd03u8qqri0306tbhkp` FOREIGN KEY (`availability_id`) REFERENCES `availability` (`id`),
  CONSTRAINT `FKqkp6fd8qa836fixioj16a2k7i` FOREIGN KEY (`armor_category_id`) REFERENCES `armor_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armor`
--

LOCK TABLES `armor` WRITE;
/*!40000 ALTER TABLE `armor` DISABLE KEYS */;
INSERT INTO `armor` VALUES (1,'LEATHER_JACK','Skórzana kurta',1,'1','12S',1,_binary ''),(2,'LEATHER_JERKIN','Skórzany kaftan',1,'1','10S',1,_binary ''),(3,'LEATHER_LEGGINGS','Skórzane nogawice',1,'1','14S',1,_binary ''),(4,'LEATHER_SKULLCAP','Skórzany hełm',1,'0','8S',1,_binary ''),(5,'COLLAR','Kolet',2,'2','18S',5,_binary ''),(6,'MAIL_CHAUSSES','Nogawice kolcze',3,'3','2G',5,_binary ''),(7,'MAIL_COAT','Kolczuga',3,'3','3G',1,_binary ''),(8,'MAIL_COIF','Czepiec kolczy',3,'2','1G',5,_binary ''),(9,'MAIL_SHIRT','Kaftan kolczy',3,'2','2G',5,_binary ''),(10,'BREASTPLATE','Napierśnik',4,'3','10G',5,_binary ''),(11,'OPEN_HELM','Hełm otwarty',4,'1','2G',1,_binary ''),(12,'BRACERS','Naramienniki',4,'3','8G',4,_binary ''),(13,'PLATE_LEGGINGS','Nagolenniki płytowe',4,'3','10G',4,_binary ''),(14,'HELM','Hełm',4,'2','3G',4,_binary ''),(15,'ARMOR_1','Pancerz (1)',5,'-','-',1,_binary '\0'),(16,'ARMOR_2','Pancerz (2)',5,'-','-',1,_binary '\0'),(17,'ARMOR_3','Pancerz (3)',5,'-','-',1,_binary '\0'),(18,'ARMOR_4','Pancerz (4)',5,'-','-',1,_binary '\0'),(20,'ARMOR_5','Pancerz (5)',5,'-','-',1,_binary '\0');
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `armor_points` int DEFAULT NULL,
  `armor_id` bigint NOT NULL,
  `body_localization_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK97wnwsegsxw8g7i932o0qvpox` (`armor_id`),
  KEY `FKk9rypu2nmx6l2flq0er133cf9` (`body_localization_id`),
  CONSTRAINT `FK97wnwsegsxw8g7i932o0qvpox` FOREIGN KEY (`armor_id`) REFERENCES `armor` (`id`),
  CONSTRAINT `FKk9rypu2nmx6l2flq0er133cf9` FOREIGN KEY (`body_localization_id`) REFERENCES `body_localization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armor_body_localization`
--

LOCK TABLES `armor_body_localization` WRITE;
/*!40000 ALTER TABLE `armor_body_localization` DISABLE KEYS */;
INSERT INTO `armor_body_localization` VALUES (1,1,1,2),(2,1,1,3),(3,1,1,4),(4,1,2,4),(5,1,3,5),(6,1,3,6),(7,1,4,1),(8,2,5,4),(9,2,6,5),(10,2,6,6),(11,2,7,2),(12,2,7,3),(13,2,7,4),(14,2,8,1),(15,2,9,4),(16,2,10,4),(17,2,11,1),(18,2,12,2),(19,2,12,3),(20,2,13,5),(21,2,13,6),(22,2,14,1),(23,1,15,1),(24,1,15,2),(25,1,15,3),(26,1,15,4),(27,1,15,5),(28,1,15,6),(29,2,16,1),(30,2,16,2),(31,2,16,3),(32,2,16,4),(33,2,16,5),(34,2,16,6),(35,3,17,1),(36,3,17,2),(37,3,17,3),(38,3,17,4),(39,3,17,5),(40,3,17,6),(53,4,18,1),(54,4,18,2),(55,4,18,3),(56,4,18,4),(57,4,18,5),(58,4,18,6),(61,5,20,1),(62,5,20,2),(63,5,20,3),(64,5,20,4),(65,5,20,5),(66,5,20,6);
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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
  `character_id` bigint NOT NULL,
  `armor_id` bigint NOT NULL,
  KEY `FK1ny7jluu147hk2glittg9qi60` (`armor_id`),
  KEY `FKl3mduvvv9n0ynjkli13eg14el` (`character_id`),
  CONSTRAINT `FK1ny7jluu147hk2glittg9qi60` FOREIGN KEY (`armor_id`) REFERENCES `armor` (`id`),
  CONSTRAINT `FKl3mduvvv9n0ynjkli13eg14el` FOREIGN KEY (`character_id`) REFERENCES `character_entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_armor`
--

LOCK TABLES `character_armor` WRITE;
/*!40000 ALTER TABLE `character_armor` DISABLE KEYS */;
INSERT INTO `character_armor` VALUES (188,15),(189,15),(162,6),(162,7),(162,8),(162,1),(162,3),(162,4),(163,1),(163,3),(163,4),(163,7),(191,16),(219,15),(220,15),(221,16),(383,7),(383,6),(383,8),(383,1),(383,3),(383,4),(41,8),(41,7),(41,6),(41,1),(41,3),(41,4),(397,16),(33,15),(430,16),(439,16),(444,16),(445,18),(446,16),(447,2),(456,20),(460,15),(28,2),(27,2),(27,3),(27,4),(27,7),(27,8),(27,6),(29,4),(29,3),(29,1),(29,7),(29,6),(29,8),(468,2),(468,3),(467,2),(467,3);
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
  KEY `FKn6t0d50tjqhss2xmefiyvdxdr` (`character_id`),
  CONSTRAINT `FK551pb3grkxhj5my6y9pwqh5c7` FOREIGN KEY (`body_localization_id`) REFERENCES `body_localization` (`id`),
  CONSTRAINT `FKn6t0d50tjqhss2xmefiyvdxdr` FOREIGN KEY (`character_id`) REFERENCES `character_entity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5479 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_body_localization`
--

LOCK TABLES `character_body_localization` WRITE;
/*!40000 ALTER TABLE `character_body_localization` DISABLE KEYS */;
INSERT INTO `character_body_localization` VALUES (967,0,1,42,0),(968,0,2,42,0),(969,0,3,42,0),(970,0,4,42,0),(971,0,5,42,0),(972,0,6,42,0),(973,0,1,43,0),(974,0,2,43,0),(975,0,3,43,0),(976,0,4,43,0),(977,0,5,43,0),(978,0,6,43,0),(1249,3,1,27,0),(1250,2,2,27,0),(1251,2,3,27,0),(1252,3,4,27,0),(1253,3,5,27,0),(1254,3,6,27,0),(1255,0,1,26,0),(1256,0,2,26,0),(1257,0,3,26,0),(1258,0,4,26,0),(1259,0,5,26,0),(1260,0,6,26,0),(1267,0,1,30,0),(1268,0,2,30,0),(1269,0,3,30,0),(1270,0,4,30,0),(1271,0,5,30,0),(1272,0,6,30,0),(1273,0,1,28,0),(1274,0,2,28,0),(1275,0,3,28,0),(1276,1,4,28,0),(1277,0,5,28,0),(1278,0,6,28,0),(1885,0,1,40,0),(1886,0,2,40,0),(1887,0,3,40,0),(1888,0,4,40,0),(1889,0,5,40,0),(1890,0,6,40,0),(1927,0,1,70,0),(1928,0,2,70,0),(1929,0,3,70,0),(1930,0,4,70,0),(1931,0,5,70,0),(1932,0,6,70,0),(1933,0,1,68,0),(1934,0,2,68,0),(1935,0,3,68,0),(1936,0,4,68,0),(1937,0,5,68,0),(1938,0,6,68,0),(1987,3,1,41,0),(1988,3,2,41,0),(1989,3,3,41,0),(1990,3,4,41,0),(1991,3,5,41,0),(1992,3,6,41,0),(2023,0,1,65,0),(2024,0,2,65,0),(2025,0,3,65,0),(2026,0,4,65,0),(2027,0,5,65,0),(2028,0,6,65,0),(2377,0,1,54,0),(2378,0,2,54,0),(2379,0,3,54,0),(2380,0,4,54,0),(2381,0,5,54,0),(2382,0,6,54,0),(2773,0,1,25,0),(2774,0,2,25,0),(2775,0,3,25,0),(2776,0,4,25,0),(2777,0,5,25,0),(2778,0,6,25,0),(3121,3,1,29,0),(3122,3,2,29,0),(3123,3,3,29,0),(3124,3,4,29,0),(3125,3,5,29,0),(3126,3,6,29,0),(3271,0,1,55,0),(3272,0,2,55,0),(3273,0,3,55,0),(3274,0,4,55,0),(3275,0,5,55,0),(3276,0,6,55,0),(3325,1,1,33,0),(3326,1,2,33,0),(3327,1,3,33,0),(3328,1,4,33,0),(3329,1,5,33,0),(3330,1,6,33,0),(3427,0,1,159,0),(3428,0,2,159,0),(3429,0,3,159,0),(3430,0,4,159,0),(3431,0,5,159,0),(3432,0,6,159,0),(3433,0,1,158,0),(3434,0,2,158,0),(3435,0,3,158,0),(3436,0,4,158,0),(3437,0,5,158,0),(3438,0,6,158,0),(3463,0,1,161,0),(3464,0,2,161,0),(3465,0,3,161,0),(3466,0,4,161,0),(3467,0,5,161,0),(3468,0,6,161,0),(3469,0,1,160,0),(3470,0,2,160,0),(3471,0,3,160,0),(3472,0,4,160,0),(3473,0,5,160,0),(3474,0,6,160,0),(3475,3,1,162,0),(3476,3,2,162,0),(3477,3,3,162,0),(3478,3,4,162,0),(3479,3,5,162,0),(3480,3,6,162,0),(3481,1,1,163,0),(3482,3,2,163,0),(3483,3,3,163,0),(3484,3,4,163,0),(3485,1,5,163,0),(3486,1,6,163,0),(3751,1,1,188,0),(3752,1,2,188,0),(3753,1,3,188,0),(3754,1,4,188,0),(3755,1,5,188,0),(3756,1,6,188,0),(3757,1,1,189,0),(3758,1,2,189,0),(3759,1,3,189,0),(3760,1,4,189,0),(3761,1,5,189,0),(3762,1,6,189,0),(3769,2,1,191,0),(3770,2,2,191,0),(3771,2,3,191,0),(3772,2,4,191,0),(3773,2,5,191,0),(3774,2,6,191,0),(3913,1,1,219,0),(3914,1,3,219,0),(3915,1,2,219,0),(3916,1,4,219,0),(3917,1,6,219,0),(3918,1,5,219,0),(3919,1,1,220,0),(3920,1,3,220,0),(3921,1,2,220,0),(3922,1,4,220,0),(3923,1,6,220,0),(3924,1,5,220,0),(3925,2,1,221,0),(3926,2,3,221,0),(3927,2,2,221,0),(3928,2,4,221,0),(3929,2,6,221,0),(3930,2,5,221,0),(4897,3,1,383,0),(4898,3,2,383,0),(4899,3,3,383,0),(4900,3,4,383,0),(4901,3,5,383,0),(4902,3,6,383,0),(4903,0,1,384,0),(4904,0,3,384,0),(4905,0,2,384,0),(4906,0,4,384,0),(4907,0,6,384,0),(4908,0,5,384,0),(4909,0,1,385,0),(4910,0,3,385,0),(4911,0,2,385,0),(4912,0,4,385,0),(4913,0,6,385,0),(4914,0,5,385,0),(4981,2,1,397,0),(4982,2,3,397,0),(4983,2,2,397,0),(4984,2,4,397,0),(4985,2,6,397,0),(4986,2,5,397,0),(4987,0,1,398,0),(4988,0,3,398,0),(4989,0,2,398,0),(4990,0,4,398,0),(4991,0,6,398,0),(4992,0,5,398,0),(5179,2,1,430,0),(5180,2,3,430,0),(5181,2,2,430,0),(5182,2,4,430,0),(5183,2,6,430,0),(5184,2,5,430,0),(5233,2,1,439,0),(5234,2,3,439,0),(5235,2,2,439,0),(5236,2,4,439,0),(5237,2,6,439,0),(5238,2,5,439,0),(5239,0,1,440,0),(5240,0,3,440,0),(5241,0,2,440,0),(5242,0,4,440,0),(5243,0,6,440,0),(5244,0,5,440,0),(5245,0,1,441,0),(5246,0,3,441,0),(5247,0,2,441,0),(5248,0,4,441,0),(5249,0,6,441,0),(5250,0,5,441,0),(5251,0,1,442,0),(5252,0,3,442,0),(5253,0,2,442,0),(5254,0,4,442,0),(5255,0,6,442,0),(5256,0,5,442,0),(5257,0,1,443,0),(5258,0,3,443,0),(5259,0,2,443,0),(5260,0,4,443,0),(5261,0,6,443,0),(5262,0,5,443,0),(5263,2,1,444,0),(5264,2,3,444,0),(5265,2,2,444,0),(5266,2,4,444,0),(5267,2,6,444,0),(5268,2,5,444,0),(5269,4,1,445,0),(5270,4,3,445,0),(5271,4,2,445,0),(5272,4,4,445,0),(5273,4,6,445,0),(5274,4,5,445,0),(5275,2,1,446,0),(5276,2,3,446,0),(5277,2,2,446,0),(5278,2,4,446,0),(5279,2,6,446,0),(5280,2,5,446,0),(5281,0,1,447,0),(5282,0,3,447,0),(5283,0,2,447,0),(5284,1,4,447,0),(5285,0,6,447,0),(5286,0,5,447,0),(5287,0,1,448,0),(5288,0,3,448,0),(5289,0,2,448,0),(5290,0,4,448,0),(5291,0,6,448,0),(5292,0,5,448,0),(5293,0,1,449,0),(5294,0,3,449,0),(5295,0,2,449,0),(5296,0,4,449,0),(5297,0,6,449,0),(5298,0,5,449,0),(5299,0,1,450,0),(5300,0,3,450,0),(5301,0,2,450,0),(5302,0,4,450,0),(5303,0,6,450,0),(5304,0,5,450,0),(5305,0,1,451,0),(5306,0,3,451,0),(5307,0,2,451,0),(5308,0,4,451,0),(5309,0,6,451,0),(5310,0,5,451,0),(5311,0,1,452,0),(5312,0,3,452,0),(5313,0,2,452,0),(5314,0,4,452,0),(5315,0,6,452,0),(5316,0,5,452,0),(5317,0,1,453,0),(5318,0,3,453,0),(5319,0,2,453,0),(5320,0,4,453,0),(5321,0,6,453,0),(5322,0,5,453,0),(5323,0,1,454,0),(5324,0,3,454,0),(5325,0,2,454,0),(5326,0,4,454,0),(5327,0,6,454,0),(5328,0,5,454,0),(5329,0,1,455,0),(5330,0,3,455,0),(5331,0,2,455,0),(5332,0,4,455,0),(5333,0,6,455,0),(5334,0,5,455,0),(5335,5,1,456,0),(5336,5,3,456,0),(5337,5,2,456,0),(5338,5,4,456,0),(5339,5,6,456,0),(5340,5,5,456,0),(5341,0,1,457,0),(5342,0,3,457,0),(5343,0,2,457,0),(5344,0,4,457,0),(5345,0,6,457,0),(5346,0,5,457,0),(5347,0,1,458,0),(5348,0,3,458,0),(5349,0,2,458,0),(5350,0,4,458,0),(5351,0,6,458,0),(5352,0,5,458,0),(5353,0,1,459,0),(5354,0,3,459,0),(5355,0,2,459,0),(5356,0,4,459,0),(5357,0,6,459,0),(5358,0,5,459,0),(5359,1,1,460,0),(5360,1,3,460,0),(5361,1,2,460,0),(5362,1,4,460,0),(5363,1,6,460,0),(5364,1,5,460,0),(5365,0,1,461,0),(5366,0,3,461,0),(5367,0,2,461,0),(5368,0,4,461,0),(5369,0,6,461,0),(5370,0,5,461,0),(5377,0,1,52,0),(5378,0,2,52,0),(5379,0,3,52,0),(5380,0,4,52,0),(5381,0,5,52,0),(5382,0,6,52,0),(5383,0,1,399,0),(5384,0,2,399,0),(5385,0,3,399,0),(5386,0,4,399,0),(5387,0,5,399,0),(5388,0,6,399,0),(5407,0,1,465,0),(5408,0,2,465,0),(5409,0,3,465,0),(5410,0,4,465,0),(5411,0,5,465,0),(5412,0,6,465,0),(5413,0,1,463,0),(5414,0,2,463,0),(5415,0,3,463,0),(5416,0,4,463,0),(5417,0,5,463,0),(5418,0,6,463,0),(5419,0,1,464,0),(5420,0,2,464,0),(5421,0,3,464,0),(5422,0,4,464,0),(5423,0,5,464,0),(5424,0,6,464,0),(5431,0,1,466,0),(5432,0,2,466,0),(5433,0,3,466,0),(5434,0,4,466,0),(5435,0,5,466,0),(5436,0,6,466,0),(5461,0,1,468,0),(5462,0,2,468,0),(5463,0,3,468,0),(5464,1,4,468,0),(5465,1,5,468,0),(5466,1,6,468,0),(5473,0,1,467,0),(5474,0,2,467,0),(5475,0,3,467,0),(5476,1,4,467,0),(5477,1,5,467,0),(5478,1,6,467,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_body_localization_injury`
--

LOCK TABLES `character_body_localization_injury` WRITE;
/*!40000 ALTER TABLE `character_body_localization_injury` DISABLE KEYS */;
INSERT INTO `character_body_localization_injury` VALUES (20,1,1257,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=11113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_characteristic`
--

LOCK TABLES `character_characteristic` WRITE;
/*!40000 ALTER TABLE `character_characteristic` DISABLE KEYS */;
INSERT INTO `character_characteristic` VALUES (1933,4,42,12),(1934,58,42,1),(1935,44,42,2),(1936,55,42,3),(1937,48,42,4),(1938,42,42,5),(1939,43,42,6),(1940,39,42,7),(1941,30,42,8),(1942,40,42,9),(1943,40,42,10),(1944,15,42,11),(1945,4,43,12),(1946,42,43,1),(1947,23,43,2),(1948,44,43,3),(1949,39,43,4),(1950,45,43,5),(1951,46,43,6),(1952,24,43,7),(1953,34,43,8),(1954,45,43,9),(1955,24,43,10),(1956,12,43,11),(2497,3,27,12),(2498,46,27,1),(2499,23,27,2),(2500,50,27,3),(2501,70,27,4),(2502,40,27,5),(2503,24,27,6),(2504,50,27,7),(2505,29,27,8),(2506,54,27,9),(2507,14,27,10),(2508,24,27,11),(2509,3,26,12),(2510,60,26,1),(2511,34,26,2),(2512,44,26,3),(2513,60,26,4),(2514,30,26,5),(2515,19,26,6),(2516,40,26,7),(2517,32,26,8),(2518,65,26,9),(2519,22,26,10),(2520,34,26,11),(2533,4,30,12),(2534,27,30,1),(2535,35,30,2),(2536,26,30,3),(2537,31,30,4),(2538,28,30,5),(2539,41,30,6),(2540,27,30,7),(2541,38,30,8),(2542,31,30,9),(2543,46,30,10),(2544,11,30,11),(2545,3,28,12),(2546,14,28,1),(2547,47,28,2),(2548,30,28,3),(2549,33,28,4),(2550,29,28,5),(2551,32,28,6),(2552,70,28,7),(2553,27,28,8),(2554,45,28,9),(2555,68,28,10),(2556,8,28,11),(3769,4,40,12),(3770,48,40,1),(3771,58,40,2),(3772,51,40,3),(3773,55,40,4),(3774,35,40,5),(3775,57,40,6),(3776,35,40,7),(3777,30,40,8),(3778,34,40,9),(3779,27,40,10),(3780,18,40,11),(3853,4,70,12),(3854,45,70,1),(3855,47,70,2),(3856,42,70,3),(3857,40,70,4),(3858,58,70,5),(3859,47,70,6),(3860,39,70,7),(3861,59,70,8),(3862,60,70,9),(3863,51,70,10),(3864,22,70,11),(3865,4,68,12),(3866,45,68,1),(3867,47,68,2),(3868,42,68,3),(3869,40,68,4),(3870,58,68,5),(3871,47,68,6),(3872,39,68,7),(3873,59,68,8),(3874,60,68,9),(3875,51,68,10),(3876,18,68,11),(3973,4,41,12),(3974,45,41,1),(3975,30,41,2),(3976,40,41,3),(3977,40,41,4),(3978,25,41,5),(3979,35,41,6),(3980,30,41,7),(3981,25,41,8),(3982,30,41,9),(3983,25,41,10),(3984,15,41,11),(4045,6,65,12),(4046,30,65,1),(4047,15,65,2),(4048,55,65,3),(4049,45,65,4),(4050,10,65,5),(4051,15,65,6),(4052,15,65,7),(4053,10,65,8),(4054,20,65,9),(4055,5,65,10),(4056,30,65,11),(4753,4,54,12),(4754,57,54,1),(4755,28,54,2),(4756,54,54,3),(4757,52,54,4),(4758,41,54,5),(4759,33,54,6),(4760,29,54,7),(4761,23,54,8),(4762,30,54,9),(4763,27,54,10),(4764,18,54,11),(6241,4,29,12),(6242,42,29,1),(6243,30,29,2),(6244,40,29,3),(6245,50,29,4),(6246,43,29,5),(6247,45,29,6),(6248,36,29,7),(6249,23,29,8),(6250,40,29,9),(6251,34,29,10),(6252,18,29,11),(6541,4,55,12),(6542,39,55,1),(6543,49,55,2),(6544,50,55,3),(6545,39,55,4),(6546,39,55,5),(6547,59,55,6),(6548,39,55,7),(6549,49,55,8),(6550,99,55,9),(6551,19,55,10),(6552,19,55,11),(6649,4,33,12),(6650,52,33,1),(6651,30,33,2),(6652,55,33,3),(6653,43,33,4),(6654,30,33,5),(6655,40,33,6),(6656,30,33,7),(6657,30,33,8),(6658,30,33,9),(6659,30,33,10),(6660,14,33,11),(6853,4,159,12),(6854,40,159,1),(6855,43,159,2),(6856,40,159,3),(6857,40,159,4),(6858,42,159,5),(6859,34,159,6),(6860,29,159,7),(6861,41,159,8),(6862,33,159,9),(6863,35,159,10),(6864,15,159,11),(6865,4,158,12),(6866,40,158,1),(6867,43,158,2),(6868,40,158,3),(6869,50,158,4),(6870,42,158,5),(6871,34,158,6),(6872,29,158,7),(6873,41,158,8),(6874,33,158,9),(6875,35,158,10),(6876,16,158,11),(6925,4,161,12),(6926,45,161,1),(6927,0,161,2),(6928,40,161,3),(6929,40,161,4),(6930,5,161,5),(6931,10,161,6),(6932,15,161,7),(6933,0,161,8),(6934,0,161,9),(6935,0,161,10),(6936,16,161,11),(6937,4,160,12),(6938,60,160,1),(6939,0,160,2),(6940,45,160,3),(6941,40,160,4),(6942,40,160,5),(6943,35,160,6),(6944,25,160,7),(6945,20,160,8),(6946,40,160,9),(6947,5,160,10),(6948,16,160,11),(6949,4,162,12),(6950,45,162,1),(6951,43,162,2),(6952,51,162,3),(6953,30,162,4),(6954,40,162,5),(6955,28,162,6),(6956,27,162,7),(6957,30,162,8),(6958,31,162,9),(6959,43,162,10),(6960,14,162,11),(6961,4,163,12),(6962,35,163,1),(6963,30,163,2),(6964,40,163,3),(6965,30,163,4),(6966,30,163,5),(6967,30,163,6),(6968,35,163,7),(6969,30,163,8),(6970,30,163,9),(6971,25,163,10),(6972,13,163,11),(7561,4,25,12),(7562,26,25,1),(7563,27,25,2),(7564,30,25,3),(7565,30,25,4),(7566,33,25,5),(7567,29,25,6),(7568,52,25,7),(7569,65,25,8),(7570,42,25,9),(7571,28,25,10),(7572,12,25,11),(7657,4,188,12),(7658,45,188,1),(7659,30,188,2),(7660,35,188,3),(7661,45,188,4),(7662,30,188,5),(7663,35,188,6),(7664,25,188,7),(7665,25,188,8),(7666,30,188,9),(7667,25,188,10),(7668,14,188,11),(7669,4,189,12),(7670,35,189,1),(7671,30,189,2),(7672,30,189,3),(7673,35,189,4),(7674,30,189,5),(7675,35,189,6),(7676,25,189,7),(7677,25,189,8),(7678,35,189,9),(7679,25,189,10),(7680,12,189,11),(7693,6,191,12),(7694,65,191,1),(7695,25,191,2),(7696,55,191,3),(7697,55,191,4),(7698,20,191,5),(7699,35,191,6),(7700,25,191,7),(7701,20,191,8),(7702,30,191,9),(7703,15,191,10),(7704,30,191,11),(7981,4,219,12),(7982,25,219,1),(7983,40,219,2),(7984,35,219,3),(7985,35,219,4),(7986,20,219,5),(7987,35,219,6),(7988,40,219,7),(7989,30,219,8),(7990,20,219,9),(7991,20,219,10),(7992,14,219,11),(7993,4,220,12),(7994,55,220,1),(7995,0,220,2),(7996,35,220,3),(7997,40,220,4),(7998,30,220,5),(7999,55,220,6),(8000,0,220,7),(8001,15,220,8),(8002,15,220,9),(8003,0,220,10),(8004,12,220,11),(8005,4,221,12),(8006,45,221,1),(8007,60,221,2),(8008,40,221,3),(8009,40,221,4),(8010,30,221,5),(8011,35,221,6),(8012,40,221,7),(8013,30,221,8),(8014,50,221,9),(8015,25,221,10),(8016,21,221,11),(9949,4,383,12),(9950,48,383,1),(9951,58,383,2),(9952,51,383,3),(9953,55,383,4),(9954,35,383,5),(9955,57,383,6),(9956,35,383,7),(9957,30,383,8),(9958,34,383,9),(9959,27,383,10),(9960,18,383,11),(9961,4,384,12),(9962,39,384,1),(9963,31,384,2),(9964,31,384,3),(9965,23,384,4),(9966,32,384,5),(9967,29,384,6),(9968,27,384,7),(9969,47,384,8),(9970,39,384,9),(9971,29,384,10),(9972,10,384,11),(9973,4,385,12),(9974,42,385,1),(9975,27,385,2),(9976,29,385,3),(9977,30,385,4),(9978,49,385,5),(9979,40,385,6),(9980,28,385,7),(9981,56,385,8),(9982,52,385,9),(9983,31,385,10),(9984,13,385,11),(10117,4,397,12),(10118,40,397,1),(10119,30,397,2),(10120,30,397,3),(10121,40,397,4),(10122,35,397,5),(10123,40,397,6),(10124,30,397,7),(10125,30,397,8),(10126,30,397,9),(10127,30,397,10),(10128,14,397,11),(10129,4,398,12),(10130,60,398,1),(10131,0,398,2),(10132,50,398,3),(10133,50,398,4),(10134,5,398,5),(10135,10,398,6),(10136,15,398,7),(10137,0,398,8),(10138,0,398,9),(10139,0,398,10),(10140,20,398,11),(10513,4,430,12),(10514,44,430,1),(10515,27,430,2),(10516,31,430,3),(10517,42,430,4),(10518,38,430,5),(10519,40,430,6),(10520,28,430,7),(10521,37,430,8),(10522,31,430,9),(10523,29,430,10),(10524,14,430,11),(10621,4,439,12),(10622,48,439,1),(10623,25,439,2),(10624,44,439,3),(10625,48,439,4),(10626,29,439,5),(10627,33,439,6),(10628,25,439,7),(10629,31,439,8),(10630,36,439,9),(10631,11,439,10),(10632,15,439,11),(10633,0,440,12),(10634,30,440,1),(10635,0,440,2),(10636,10,440,3),(10637,30,440,4),(10638,100,440,5),(10639,30,440,6),(10640,30,440,7),(10641,3,440,8),(10642,0,440,9),(10643,0,440,10),(10644,6,440,11),(10645,4,441,12),(10646,25,441,1),(10647,0,441,2),(10648,30,441,3),(10649,25,441,4),(10650,25,441,5),(10651,35,441,6),(10652,0,441,7),(10653,15,441,8),(10654,15,441,9),(10655,0,441,10),(10656,5,441,11),(10657,4,442,12),(10658,30,442,1),(10659,40,442,2),(10660,30,442,3),(10661,25,442,4),(10662,45,442,5),(10663,35,442,6),(10664,0,442,7),(10665,15,442,8),(10666,15,442,9),(10667,0,442,10),(10668,8,442,11),(10669,3,443,12),(10670,30,443,1),(10671,0,443,2),(10672,20,443,3),(10673,20,443,4),(10674,20,443,5),(10675,30,443,6),(10676,0,443,7),(10677,10,443,8),(10678,15,443,9),(10679,0,443,10),(10680,2,443,11),(10681,4,444,12),(10682,25,444,1),(10683,25,444,2),(10684,30,444,3),(10685,30,444,4),(10686,20,444,5),(10687,20,444,6),(10688,25,444,7),(10689,0,444,8),(10690,0,444,9),(10691,0,444,10),(10692,12,444,11),(10693,4,445,12),(10694,55,445,1),(10695,45,445,2),(10696,45,445,3),(10697,45,445,4),(10698,45,445,5),(10699,20,445,6),(10700,25,445,7),(10701,15,445,8),(10702,40,445,9),(10703,10,445,10),(10704,16,445,11),(10705,4,446,12),(10706,45,446,1),(10707,31,446,2),(10708,38,446,3),(10709,40,446,4),(10710,42,446,5),(10711,40,446,6),(10712,29,446,7),(10713,36,446,8),(10714,28,446,9),(10715,27,446,10),(10716,13,446,11),(10717,4,447,12),(10718,35,447,1),(10719,30,447,2),(10720,35,447,3),(10721,35,447,4),(10722,30,447,5),(10723,30,447,6),(10724,30,447,7),(10725,30,447,8),(10726,30,447,9),(10727,30,447,10),(10728,12,447,11),(10729,4,448,12),(10730,30,448,1),(10731,0,448,2),(10732,20,448,3),(10733,30,448,4),(10734,40,448,5),(10735,20,448,6),(10736,0,448,7),(10737,10,448,8),(10738,20,448,9),(10739,0,448,10),(10740,15,448,11),(10741,0,449,12),(10742,50,449,1),(10743,0,449,2),(10744,50,449,3),(10745,30,449,4),(10746,30,449,5),(10747,0,449,6),(10748,0,449,7),(10749,5,449,8),(10750,0,449,9),(10751,0,449,10),(10752,44,449,11),(10753,0,450,12),(10754,50,450,1),(10755,0,450,2),(10756,20,450,3),(10757,20,450,4),(10758,20,450,5),(10759,0,450,6),(10760,0,450,7),(10761,0,450,8),(10762,0,450,9),(10763,0,450,10),(10764,7,450,11),(10765,0,451,12),(10766,45,451,1),(10767,0,451,2),(10768,20,451,3),(10769,50,451,4),(10770,20,451,5),(10771,0,451,6),(10772,0,451,7),(10773,10,451,8),(10774,10,451,9),(10775,0,451,10),(10776,52,451,11),(10777,4,452,12),(10778,60,452,1),(10779,50,452,2),(10780,40,452,3),(10781,30,452,4),(10782,65,452,5),(10783,60,452,6),(10784,35,452,7),(10785,30,452,8),(10786,70,452,9),(10787,45,452,10),(10788,17,452,11),(10789,0,453,12),(10790,35,453,1),(10791,0,453,2),(10792,20,453,3),(10793,50,453,4),(10794,55,453,5),(10795,0,453,6),(10796,0,453,7),(10797,0,453,8),(10798,0,453,9),(10799,0,453,10),(10800,56,453,11),(10801,0,454,12),(10802,35,454,1),(10803,0,454,2),(10804,20,454,3),(10805,40,454,4),(10806,55,454,5),(10807,0,454,6),(10808,0,454,7),(10809,0,454,8),(10810,0,454,9),(10811,0,454,10),(10812,4,454,11),(10813,4,455,12),(10814,35,455,1),(10815,25,455,2),(10816,30,455,3),(10817,30,455,4),(10818,50,455,5),(10819,45,455,6),(10820,55,455,7),(10821,20,455,8),(10822,30,455,9),(10823,30,455,10),(10824,12,455,11),(10825,5,456,12),(10826,65,456,1),(10827,30,456,2),(10828,55,456,3),(10829,65,456,4),(10830,55,456,5),(10831,65,456,6),(10832,30,456,7),(10833,55,456,8),(10834,65,456,9),(10835,25,456,10),(10836,25,456,11),(10837,5,457,12),(10838,40,457,1),(10839,0,457,2),(10840,20,457,3),(10841,10,457,4),(10842,60,457,5),(10843,40,457,6),(10844,0,457,7),(10845,10,457,8),(10846,20,457,9),(10847,0,457,10),(10848,30,457,11),(10849,4,458,12),(10850,60,458,1),(10851,0,458,2),(10852,60,458,3),(10853,60,458,4),(10854,10,458,5),(10855,10,458,6),(10856,10,458,7),(10857,0,458,8),(10858,0,458,9),(10859,0,458,10),(10860,24,458,11),(10861,4,459,12),(10862,38,459,1),(10863,28,459,2),(10864,28,459,3),(10865,31,459,4),(10866,38,459,5),(10867,37,459,6),(10868,36,459,7),(10869,51,459,8),(10870,50,459,9),(10871,41,459,10),(10872,13,459,11),(10873,6,460,12),(10874,40,460,1),(10875,20,460,2),(10876,45,460,3),(10877,55,460,4),(10878,10,460,5),(10879,25,460,6),(10880,20,460,7),(10881,20,460,8),(10882,40,460,9),(10883,20,460,10),(10884,36,460,11),(10885,5,461,12),(10886,40,461,1),(10887,40,461,2),(10888,30,461,3),(10889,40,461,4),(10890,40,461,5),(10891,45,461,6),(10892,30,461,7),(10893,30,461,8),(10894,20,461,9),(10895,20,461,10),(10896,13,461,11),(10909,4,52,12),(10910,45,52,1),(10911,0,52,2),(10912,40,52,3),(10913,40,52,4),(10914,0,52,5),(10915,20,52,6),(10916,10,52,7),(10917,0,52,8),(10918,0,52,9),(10919,0,52,10),(10920,20,52,11),(10921,4,399,12),(10922,30,399,1),(10923,30,399,2),(10924,30,399,3),(10925,30,399,4),(10926,30,399,5),(10927,30,399,6),(10928,30,399,7),(10929,30,399,8),(10930,30,399,9),(10931,30,399,10),(10932,12,399,11),(10969,4,465,12),(10970,40,465,1),(10971,48,465,2),(10972,40,465,3),(10973,40,465,4),(10974,45,465,5),(10975,41,465,6),(10976,48,465,7),(10977,41,465,8),(10978,46,465,9),(10979,32,465,10),(10980,20,465,11),(10981,4,463,12),(10982,30,463,1),(10983,29,463,2),(10984,31,463,3),(10985,31,463,4),(10986,31,463,5),(10987,27,463,6),(10988,29,463,7),(10989,37,463,8),(10990,41,463,9),(10991,27,463,10),(10992,13,463,11),(10993,4,464,12),(10994,32,464,1),(10995,28,464,2),(10996,27,464,3),(10997,27,464,4),(10998,31,464,5),(10999,34,464,6),(11000,37,464,7),(11001,26,464,8),(11002,25,464,9),(11003,36,464,10),(11004,8,464,11),(11017,4,466,12),(11018,32,466,1),(11019,35,466,2),(11020,30,466,3),(11021,30,466,4),(11022,30,466,5),(11023,30,466,6),(11024,24,466,7),(11025,28,466,8),(11026,36,466,9),(11027,40,466,10),(11028,12,466,11),(11077,4,468,12),(11078,40,468,1),(11079,40,468,2),(11080,40,468,3),(11081,40,468,4),(11082,40,468,5),(11083,40,468,6),(11084,40,468,7),(11085,40,468,8),(11086,40,468,9),(11087,40,468,10),(11088,12,468,11),(11101,4,467,12),(11102,50,467,1),(11103,40,467,2),(11104,40,467,3),(11105,50,467,4),(11106,40,467,5),(11107,40,467,6),(11108,40,467,7),(11109,40,467,8),(11110,40,467,9),(11111,40,467,10),(11112,15,467,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=276 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  CONSTRAINT `FKklicd6x4ik9wwtsh1jem4yur1` FOREIGN KEY (`character_id`) REFERENCES `character_entity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1637 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_creature_trait`
--

LOCK TABLES `character_creature_trait` WRITE;
/*!40000 ALTER TABLE `character_creature_trait` DISABLE KEYS */;
INSERT INTO `character_creature_trait` VALUES (13,'0',52,76),(14,NULL,52,83),(15,NULL,52,82),(16,'2',52,66),(17,'+6',52,80),(119,'+9',70,80),(120,'+8',70,24),(121,NULL,70,74),(122,NULL,70,59),(123,'(Purpurowa Gorączka Mózgowa))',70,84),(124,'(Umiarkowane)',70,21),(125,'2',70,31),(126,NULL,70,36),(127,NULL,70,50),(128,NULL,70,85),(130,NULL,41,6),(155,NULL,65,62),(156,NULL,65,25),(157,NULL,65,56),(158,'Duży',65,57),(159,NULL,65,71),(160,'+8',65,9),(161,NULL,65,77),(162,NULL,65,42),(771,'8+',55,24),(772,NULL,55,51),(773,'+8',55,38),(774,'(2)',55,31),(792,NULL,33,62),(793,'(Pomniejsze)',33,21),(822,NULL,161,19),(823,NULL,161,51),(824,NULL,161,73),(825,NULL,161,56),(826,'(Pomniejsze)',161,21),(827,'2',161,31),(828,NULL,161,50),(829,NULL,160,28),(830,'-10',160,76),(831,NULL,160,73),(832,'+5',160,9),(833,NULL,160,50),(834,NULL,160,42),(835,NULL,160,39),(836,'2',160,31),(841,NULL,188,34),(842,NULL,188,3),(843,'+6',188,38),(844,NULL,188,50),(845,NULL,189,3),(846,NULL,189,50),(851,NULL,191,34),(852,NULL,191,3),(853,'+9',191,38),(854,NULL,191,50),(855,NULL,191,39),(856,'(Duży)',191,57),(857,NULL,191,6),(869,'(Krasnoludy)',219,37),(870,'(Elfy)',219,1),(871,NULL,219,36),(872,NULL,219,50),(873,NULL,219,42),(874,'+7',220,80),(875,NULL,220,61),(876,NULL,220,72),(877,'(Wierzchowiec)',220,69),(878,NULL,220,50),(879,NULL,220,7),(880,'(Elfy)',221,1),(881,'(Krasnoludy)',221,37),(882,NULL,221,36),(883,NULL,221,50),(884,NULL,221,44),(1502,'(Umiarkowane)',385,21),(1503,'1',385,32),(1520,'+7',33,38),(1521,NULL,398,19),(1522,'x4 +7',398,66),(1523,NULL,398,51),(1524,NULL,398,74),(1525,NULL,398,73),(1526,'2',398,31),(1527,NULL,398,23),(1528,NULL,399,43),(1540,'1',439,21),(1541,NULL,439,79),(1542,'3',440,80),(1543,NULL,440,51),(1544,NULL,440,41),(1545,'(Mały)',440,57),(1546,NULL,440,7),(1547,'4',441,80),(1548,NULL,441,61),(1549,NULL,441,20),(1550,NULL,441,58),(1551,'(Mały)',441,57),(1552,'(Pomniejsze)',441,21),(1553,NULL,441,50),(1554,NULL,441,42),(1555,NULL,441,7),(1556,'+6',442,80),(1557,'90',442,32),(1558,NULL,442,58),(1559,'(Średni)',442,57),(1560,'+5',442,9),(1561,NULL,442,23),(1562,'+6 (Trucizna)',442,12),(1563,NULL,442,7),(1564,NULL,443,63),(1565,NULL,443,41),(1566,'(Niewielki)',443,57),(1567,'+3',443,9),(1568,NULL,443,23),(1569,NULL,443,17),(1570,NULL,443,7),(1571,NULL,443,39),(1572,NULL,444,19),(1573,NULL,444,51),(1574,NULL,444,73),(1575,'2',444,31),(1576,NULL,444,23),(1577,NULL,444,42),(1578,NULL,445,14),(1579,NULL,445,51),(1580,NULL,445,73),(1581,'2',445,31),(1582,NULL,445,23),(1583,NULL,445,42),(1584,'+5',448,80),(1585,'(Niewielki)',448,57),(1586,NULL,448,64),(1587,NULL,448,50),(1588,NULL,448,42),(1589,NULL,448,7),(1590,'+5',449,80),(1591,NULL,449,51),(1592,NULL,449,41),(1593,'(Wielki)',449,57),(1594,'+5',449,9),(1595,NULL,449,7),(1596,NULL,450,18),(1597,NULL,450,51),(1598,NULL,450,41),(1599,'x5 +5',451,66),(1600,'(Wielki)',451,57),(1601,NULL,451,41),(1602,NULL,451,7),(1603,'+9',452,80),(1604,NULL,452,14),(1605,NULL,452,27),(1606,'8+',452,24),(1607,NULL,452,74),(1608,'(Umiarkowane)',452,21),(1609,'2',452,31),(1610,NULL,452,50),(1611,NULL,453,27),(1612,NULL,453,19),(1613,NULL,453,41),(1614,'(Wielki)',453,57),(1615,NULL,454,18),(1616,NULL,454,19),(1617,'+3',454,66),(1618,NULL,454,56),(1619,NULL,456,14),(1620,NULL,456,16),(1621,NULL,456,30),(1622,NULL,456,71),(1623,NULL,457,64),(1624,NULL,457,7),(1625,'(Pomniejsze)',457,21),(1626,'(Pięści) +10',458,80),(1627,NULL,458,8),(1628,NULL,458,34),(1629,NULL,458,19),(1630,NULL,458,41),(1631,'(3)',458,31),(1632,NULL,460,50),(1633,NULL,461,58),(1634,NULL,461,72),(1635,NULL,461,50),(1636,NULL,461,42);
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
INSERT INTO `character_entity` VALUES (25,'Postać Konrada - Człowiek',_binary '','Gotthard Lauterbach','Bohaterowie','Główne',NULL,'BASE'),(26,'Postać Piotra Ż. - Krasnolud',_binary '','Throngroth Hegalison','Bohaterowie','Główne',NULL,'BASE'),(27,'Postać Piotra P. - Krasnolud',_binary '','Ullagrund Ganddreng','Bohaterowie','Główne',NULL,'BASE'),(28,'Postać Huberta - Niziołek',_binary '','Nobbi Wesołek','Bohaterowie','Główne',NULL,'BASE'),(29,'Postać Kuby - Człowiek',_binary '','Rygar','Bohaterowie','Główne',NULL,'BASE'),(30,'Postać Klaudii - Człowiek',_binary '','Renia Sianko','Bohaterowie','Główne',NULL,'BASE'),(33,'Mutant, Zbój',_binary '','Mutant','Mutanci','Poboczne',NULL,'BASE'),(40,'Doświadczony Łowca Nagród',_binary '','Adolphus Kuftsos','Główni BN','Główne',NULL,'BASE'),(41,'',_binary '','Oprych','Oprychy','Główne',NULL,'BASE'),(42,'Kapitan barki \"Lyan\"',_binary '','Marcus','Główni BN','Główne',NULL,'BASE'),(43,'Mąciwoda',_binary '','Max Ernst','Oprychy','Główne',NULL,'BASE'),(52,'Potwór z kanałów',_binary '','Ameba','Potwory','Poboczne',NULL,'BASE'),(54,'Gladiator',_binary '','Gladiator','Zawodnicy','Poboczne',NULL,'BASE'),(55,'Spotkany w świątyni w kanałach',_binary '','Herold Tzeentcha','Demony','Główne',NULL,'BASE'),(65,'Troll',_binary '','Troll','Potwory','Poboczne',NULL,'BASE'),(68,'Człowiek, Demonolog i Patrycjusz',_binary '','Johannes Teugen','Główni BN','Główne',NULL,'BASE'),(70,'Sheru-Tar Gee\'Taru - Herold Tzeentcha',_binary '','Gideon','Główni BN','Główne',NULL,'BASE'),(158,'Herszt piratów',_binary '','Herszt','Piraci Rzeczni','Poboczne',NULL,'BASE'),(159,'Pirat Rzeczny',_binary '','Pirat','Piraci Rzeczni','Poboczne',NULL,'BASE'),(160,'Ghoul z wieży semafora',_binary '','Ghoul Czempion','Nieumarli','Poboczne',NULL,'BASE'),(161,'',_binary '','Zombi z wieży Semafora','Nieumarli','Poboczne',NULL,'BASE'),(162,'Straż',_binary '','Kapitan Straży','Straż','Poboczne',NULL,'BASE'),(163,'Straż',_binary '','Rekrut Straży','Straż','Poboczne',NULL,'BASE'),(188,'',_binary '','Gor','Zwierzoludzie','Poboczne',NULL,'BASE'),(189,'',_binary '','Ungor','Zwierzoludzie','Poboczne',NULL,'BASE'),(191,'',_binary '','Minotaur','Zwierzoludzie','Poboczne',NULL,'BASE'),(219,'Plemię Wykrzywionej Paszczy',_binary '','Goblin','Zielonoskórzy','Poboczne',NULL,'BASE'),(220,'',_binary '','Wielki Wilk','Zwierzęta','Poboczne',NULL,'BASE'),(221,'Herszt plemienia Wykrzywionej Paszczy',_binary '','Gutbag Gronostajodławca','Zielonoskórzy','Główne',NULL,'BASE'),(383,'Najemnik',_binary '','Oswald','Główni BN','Główne',NULL,'BASE'),(384,'Uczeń Czarodzieja',_binary '','Ernst Heidlemann','Główni BN','Główne',NULL,'BASE'),(385,'Mistrzyni Magii',_binary '','Etelka Herzen','Główni BN','Główne',NULL,'BASE'),(397,'',_binary '','Strażnik z Wittgendorfu','Zamek Wittgenstein','Główne',NULL,'BASE'),(398,'Utworzony po otwarciu fiolki ze spaczeniem w domu lekarza',_binary '','Chaotyczny trup','Zamek Wittgenstein','Główne',NULL,'BASE'),(399,'',_binary '','Kanibal','Ludzie','Poboczne',NULL,'BASE'),(430,'',_binary '','Kratz, Sierżant Strażników z Wittgendorfu','Zamek Wittgenstein','Główne',NULL,'BASE'),(439,'',_binary '','Mutant Brutagh','Zamek Wittgenstein','Główne',NULL,'BASE'),(440,'',_binary '','Chłościciel','Zamek Wittgenstein','Główne',NULL,'BASE'),(441,'',_binary '','Olbrzymi Szczur','Zwierzęta','Poboczne',NULL,'BASE'),(442,'',_binary '','Olbrzymie Nietoperze','Zamek Wittgenstein','Główne',NULL,'BASE'),(443,'',_binary '','Olbrzymia Pijawka','Zamek Wittgenstein','Główne',NULL,'BASE'),(444,'',_binary '','Szkielety','Zamek Wittgenstein','Główne',NULL,'BASE'),(445,'',_binary '','Georg Hegel, Szkielet, Dawny Kapitan Straży','Zamek Wittgenstein','Główne',NULL,'BASE'),(446,'',_binary '','Shif Doppler, Porucznik Strażników','Zamek Wittgenstein','Główne',NULL,'BASE'),(447,'',_binary '','Banita','Zamek Wittgenstein','Główne',NULL,'BASE'),(448,'',_binary '','Rój Szczurów','Zamek Wittgenstein','Główne',NULL,'BASE'),(449,'',_binary '','Paszcza z Ogrodu','Zamek Wittgenstein','Główne',NULL,'BASE'),(450,'',_binary '','Winorośle Paszczy z Ogrodu','Zamek Wittgenstein','Główne',NULL,'BASE'),(451,'',_binary '','Coś z Jamy','Zamek Wittgenstein','Główne',NULL,'BASE'),(452,'',_binary '','Pomniejszy Demon Slaanesha','Zamek Wittgenstein','Główne',NULL,'BASE'),(453,'',_binary '','Chaotyczne Organy','Zamek Wittgenstein','Główne',NULL,'BASE'),(454,'',_binary '','Macki Chaotycznych Organów','Zamek Wittgenstein','Główne',NULL,'BASE'),(455,'',_binary '','Kurt von Wittgenstein','Zamek Wittgenstein','Główne',NULL,'BASE'),(456,'',_binary '','Ulfhednar Niszczyciel','Zamek Wittgenstein','Główne',NULL,'BASE'),(457,'',_binary '','Zmutowane koty','Zamek Wittgenstein','Główne',NULL,'BASE'),(458,'',_binary '','Potwór Wittgensteinów','Zamek Wittgenstein','Główne',NULL,'BASE'),(459,'',_binary '','Lady Magritte Von Wittgenstein','Zamek Wittgenstein','Główne',NULL,'BASE'),(460,'',_binary '','Slagdarg - Zmutowany Ogrzy Oprawca','Zamek Wittgenstein','Główne',NULL,'BASE'),(461,'',_binary '','Skaveński Wojownik','Skaveny','Poboczne',NULL,'BASE'),(463,'Postać Konrada - Czarodziej Metalu - Uczeń Alchemika',_binary '','Ignacius Graf','Bohaterowie Przygód','Główne','Brąz 4','BASE'),(464,'Postać Huberta - Kuglarz - Muzykant',_binary '','Ruprecht Dunkelherz','Bohaterowie Przygód','Główne','Brąz 3','BASE'),(465,'Postać Olka - Traper - Łowca',_binary '','Aesmaloc Jesienny Liść','Bohaterowie Przygód','Główne','Brąz 2','BASE'),(466,'Postać Piotrka - Łowca Czarownic - Oprawca',_binary '','Grodon Ramsey','Bohaterowie Przygód','Główne','Srebro 1','BASE'),(467,'',_binary '','Kultysta - Weteran','Ludzie','Poboczne',NULL,'BASE'),(468,'',_binary '','Kultysta','Ludzie','Poboczne',NULL,'BASE');
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
  KEY `FKt8yaixnj1hsuk9q5fawufia7i` (`character_id`),
  CONSTRAINT `FKabu9xeixjyfy5x8b091c5asy5` FOREIGN KEY (`skill_id`) REFERENCES `skill` (`id`),
  CONSTRAINT `FKt8yaixnj1hsuk9q5fawufia7i` FOREIGN KEY (`character_id`) REFERENCES `character_entity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1354 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_skill`
--

LOCK TABLES `character_skill` WRITE;
/*!40000 ALTER TABLE `character_skill` DISABLE KEYS */;
INSERT INTO `character_skill` VALUES (169,73,42,14),(170,50,42,36),(171,49,42,123),(172,47,42,37),(173,64,42,44),(174,82,42,105),(175,65,42,28),(176,50,42,96),(177,52,43,28),(178,51,43,42),(179,65,43,13),(180,56,43,15),(181,54,43,25),(454,77,40,8),(455,63,40,28),(456,73,40,98),(457,37,40,10),(458,37,40,27),(459,67,40,42),(460,85,40,17),(461,40,40,48),(462,55,40,38),(463,47,40,23),(464,42,40,9),(465,61,40,118),(466,77,40,47),(467,72,40,45),(468,45,40,37),(469,32,40,24),(470,45,40,119),(471,66,40,12),(472,66,40,25),(473,55,68,28),(474,73,68,26),(475,74,68,70),(476,80,68,57),(482,53,54,15),(483,74,54,25),(596,50,159,96),(597,49,159,15),(599,58,158,96),(600,49,158,15),(601,57,162,28),(602,55,162,96),(603,55,162,27),(604,48,162,26),(605,35,162,17),(606,40,162,13),(607,48,162,38),(608,39,162,15),(609,40,163,28),(610,35,163,38),(611,35,163,15),(692,70,25,48),(693,70,25,63),(695,57,25,117),(699,35,219,28),(700,50,219,97),(701,30,219,38),(702,55,221,28),(703,70,221,97),(704,30,221,38),(1142,77,383,8),(1143,63,383,28),(1144,68,383,98),(1145,37,383,10),(1146,37,383,27),(1147,40,383,42),(1148,72,383,17),(1149,40,383,48),(1150,55,383,38),(1152,61,383,118),(1154,45,383,47),(1156,45,383,37),(1158,45,383,119),(1159,66,383,12),(1160,66,383,25),(1161,55,41,28),(1162,45,384,28),(1163,37,384,26),(1164,54,384,70),(1165,37,384,38),(1166,32,384,15),(1167,51,384,78),(1168,52,385,28),(1169,36,385,27),(1170,59,385,26),(1171,69,385,70),(1172,67,385,67),(1173,64,385,13),(1174,57,385,38),(1175,46,385,15),(1176,68,385,78),(1177,62,385,128),(1184,45,397,8),(1185,45,397,32),(1186,45,397,28),(1187,40,397,26),(1188,45,397,17),(1189,35,397,13),(1190,45,397,38),(1191,50,397,15),(1192,40,397,98),(1225,45,430,8),(1226,54,430,32),(1227,49,430,28),(1228,34,430,27),(1229,48,430,26),(1230,52,430,17),(1231,41,430,13),(1232,48,430,38),(1233,50,430,15),(1306,58,439,28),(1307,35,439,38),(1308,70,445,28),(1309,55,445,38),(1310,50,446,8),(1311,52,446,28),(1312,58,446,32),(1313,41,446,97),(1314,32,446,27),(1315,41,446,65),(1316,50,446,17),(1317,50,446,15),(1318,50,446,25),(1319,35,447,8),(1320,40,447,28),(1321,35,447,97),(1322,40,447,17),(1323,35,447,37),(1324,45,455,29),(1325,75,456,35),(1326,80,458,29),(1327,43,459,28),(1328,43,459,31),(1329,63,459,70),(1330,43,459,15),(1331,50,460,28),(1332,50,461,28),(1333,55,461,15),(1334,0,459,57),(1335,85,28,124),(1336,73,28,89),(1337,57,28,102),(1338,48,28,47),(1339,71,28,24),(1340,32,27,69),(1341,60,27,123),(1342,39,27,63),(1343,32,27,79),(1344,50,29,46),(1345,24,29,50),(1346,35,29,97),(1347,31,29,102),(1348,55,29,105),(1349,25,30,97),(1350,65,30,96),(1351,90,25,64),(1352,53,25,67),(1353,66,25,104);
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
INSERT INTO `character_spell` VALUES (463,24),(463,15),(463,6),(463,17);
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
  KEY `FK2njo0h21msl0uja9rillbg27i` (`character_id`),
  CONSTRAINT `FK2njo0h21msl0uja9rillbg27i` FOREIGN KEY (`character_id`) REFERENCES `character_entity` (`id`),
  CONSTRAINT `FK7iq8gv87fb3fod88c02evllm3` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_talent`
--

LOCK TABLES `character_talent` WRITE;
/*!40000 ALTER TABLE `character_talent` DISABLE KEYS */;
INSERT INTO `character_talent` VALUES (170,1,42,212),(171,1,42,83),(172,1,42,141),(173,1,43,64),(174,1,43,192),(175,1,43,193),(176,1,43,65),(177,1,43,191),(178,1,43,56),(324,1,27,151),(325,1,27,157),(326,1,27,127),(327,1,27,198),(328,1,27,135),(329,1,27,212),(330,1,26,198),(331,1,26,156),(332,1,26,135),(333,1,26,151),(334,1,26,157),(335,1,26,69),(336,1,26,87),(337,1,30,176),(338,1,30,151),(339,1,30,10),(340,1,28,178),(533,1,52,145),(591,2,40,172),(592,1,40,194),(593,1,40,152),(594,1,40,193),(595,1,40,191),(596,1,40,129),(597,1,40,181),(598,1,68,144),(599,1,68,220),(600,1,68,170),(632,2,54,64),(633,1,54,158),(634,1,54,118),(1085,1,158,91),(1225,1,25,137),(1226,1,25,165),(1227,1,25,151),(1228,1,25,9),(1229,2,25,10),(1230,1,25,67),(1266,1,25,82),(1267,1,25,203),(1268,1,25,56),(1269,1,26,127),(1270,1,26,76),(1271,1,26,177),(1272,2,26,158),(1273,2,26,92),(1274,1,27,58),(1275,1,28,135),(1276,1,28,136),(1277,1,28,125),(1278,1,28,156),(1279,1,28,58),(1280,1,28,6),(1281,1,28,212),(1282,1,28,61),(1283,1,29,199),(1284,1,29,67),(1285,1,29,212),(1286,1,29,58),(1287,1,29,122),(1288,1,29,191),(1289,1,29,135),(1290,1,29,154),(1291,1,29,193),(1292,1,29,211),(1293,1,30,26),(1369,2,219,1),(1370,2,221,1),(1371,1,221,162),(1564,1,26,104),(1565,1,30,72),(1566,1,28,72),(1567,1,25,72),(1847,1,383,194),(1848,1,383,152),(1849,1,383,193),(1850,1,383,191),(1853,1,384,165),(1854,1,384,85),(1855,1,384,151),(1856,1,384,144),(1857,1,384,3),(1858,1,385,23),(1859,1,385,151),(1860,1,385,49),(1861,1,385,144),(1862,1,385,170),(1863,3,385,107),(1864,1,385,126),(1865,1,385,7),(1931,1,397,68),(1932,1,399,142),(2155,2,430,68),(2156,1,430,158),(2157,1,430,193),(2158,1,430,191),(2159,1,430,175),(2172,2,445,51),(2173,1,445,158),(2174,2,445,175),(2175,1,445,89),(2176,2,446,68),(2177,1,446,158),(2178,2,446,191),(2179,1,455,9),(2180,1,455,87),(2181,3,458,24),(2182,1,459,144),(2183,1,459,20),(2184,2,461,175),(2185,1,29,194),(2186,1,30,61),(2187,1,25,154),(2188,1,465,211),(2189,1,465,163),(2190,1,465,92),(2191,1,465,135),(2192,1,465,2),(2193,1,465,207),(2194,1,463,23),(2195,1,463,165),(2196,1,463,67),(2197,1,463,143),(2198,1,463,198),(2199,1,463,144),(2200,1,463,151),(2201,1,463,7),(2202,1,463,170),(2203,1,464,134),(2204,1,464,22),(2205,1,464,85),(2206,1,464,23),(2207,1,466,23),(2208,1,466,199),(2209,1,466,151),(2210,1,466,9),(2211,1,466,67),(2212,1,466,92),(2213,1,466,56),(2214,1,467,150),(2215,1,467,43);
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
) ENGINE=InnoDB AUTO_INCREMENT=810 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_weapon`
--

LOCK TABLES `character_weapon` WRITE;
/*!40000 ALTER TABLE `character_weapon` DISABLE KEYS */;
INSERT INTO `character_weapon` VALUES (1,1,27,60),(2,1,27,2),(3,1,26,2),(4,2,26,60),(5,1,26,23),(6,1,29,33),(7,1,29,55),(8,1,30,2),(9,1,30,66),(10,1,30,30),(11,1,30,52),(12,1,28,2),(13,1,28,44),(14,1,28,59),(15,1,28,58),(16,1,25,2),(17,1,188,60),(18,1,188,5),(19,1,189,60),(21,1,162,66),(22,1,162,5),(23,1,162,2),(24,1,163,60),(25,1,163,5),(26,1,163,2),(27,1,191,23),(34,1,219,66),(35,1,219,6),(36,1,219,34),(37,20,219,55),(38,1,221,66),(39,1,221,6),(40,1,221,34),(41,20,221,55),(447,1,26,25),(612,1,383,66),(613,1,383,2),(614,1,383,6),(615,1,383,37),(616,25,383,57),(617,1,41,60),(618,1,41,37),(619,25,41,57),(620,1,384,66),(621,1,385,66),(622,1,385,2),(641,1,33,66),(642,1,33,60),(643,1,33,63),(644,1,397,14),(645,1,397,12),(646,1,397,5),(647,1,397,37),(648,20,397,57),(649,1,399,1),(733,1,430,14),(734,1,430,5),(772,1,439,60),(773,1,444,66),(774,1,445,22),(775,1,445,37),(776,60,445,57),(777,1,446,14),(778,1,446,12),(779,1,446,5),(780,1,447,60),(781,1,447,33),(782,24,447,55),(783,1,455,66),(784,1,456,26),(785,1,460,63),(786,1,461,66),(787,1,461,5),(788,1,28,45),(789,1,27,5),(790,1,29,107),(791,1,29,108),(792,1,463,21),(793,1,465,60),(794,1,465,33),(795,10,465,55),(796,1,466,66),(797,1,466,2),(798,1,466,30),(799,12,466,52),(800,1,467,60),(801,1,467,66),(802,1,467,2),(803,1,467,37),(804,10,467,57),(805,1,468,60),(806,1,468,66),(807,1,468,2),(808,1,468,37),(809,10,468,57);
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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-03-30 17:34:52.292235'),(2,'auth','0001_initial','2023-03-30 17:34:54.029865'),(3,'admin','0001_initial','2023-03-30 17:34:54.342424'),(4,'admin','0002_logentry_remove_auto_add','2023-03-30 17:34:54.354424'),(5,'admin','0003_logentry_add_action_flag_choices','2023-03-30 17:34:54.365426'),(6,'contenttypes','0002_remove_content_type_name','2023-03-30 17:34:54.584003'),(7,'auth','0002_alter_permission_name_max_length','2023-03-30 17:34:54.716938'),(8,'auth','0003_alter_user_email_max_length','2023-03-30 17:34:54.744662'),(9,'auth','0004_alter_user_username_opts','2023-03-30 17:34:54.755685'),(10,'auth','0005_alter_user_last_login_null','2023-03-30 17:34:54.859128'),(11,'auth','0006_require_contenttypes_0002','2023-03-30 17:34:54.868357'),(12,'auth','0007_alter_validators_add_error_messages','2023-03-30 17:34:54.881354'),(13,'auth','0008_alter_user_username_max_length','2023-03-30 17:34:55.001340'),(14,'auth','0009_alter_user_last_name_max_length','2023-03-30 17:34:55.133944'),(15,'auth','0010_alter_group_name_max_length','2023-03-30 17:34:55.164952'),(16,'auth','0011_update_proxy_permissions','2023-03-30 17:34:55.179952'),(17,'auth','0012_alter_user_first_name_max_length','2023-03-30 17:34:55.333970'),(18,'sessions','0001_initial','2023-03-30 17:34:55.439040');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
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
INSERT INTO `hibernate_sequences` VALUES ('default',468);
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
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
INSERT INTO `note` VALUES (191,'Wyposażenie: czerwona suknia balowa założona na kolczugę, diamentowa tiara założona na czubek hełmu (warta 9 złotych koron), hełm, klucz do skrzyni w lokacji nr 12, krótki łuk, magiczna tarcza (+1 PZ podczas używania), miecz',221),(254,'67 złotych koron, sztylet, mikstura lotu, onyksowa różdżka, podróżny sakwojaż, złote kolczyki (każdy wart 10 złotych koron), złote pierścionki (dwa, każdy wart 15 złotych koron)',385),(258,'Wyposażenie: 33 złote korony, 15 srebrnych szylingów i 3 brązowe pensy, miecz, podróżny sakwojaż (zawiera osobisty dobytek i 8 fiolek czerwonego płynu, mikstury potrzebnej do złagodzenia objawów jego Wycieńczajacej Choroby)',384),(270,'Strażnicy paskudnie cuchną i każdy w zasięgu 2 metrów od jednego z nich musi zdać Wymagający (+0) Test Odporności albo na czas potyczki otrzyma karę -10 do Walki Wręcz. Pod kolczugami i za opuszczonymi zasłonami hełmów ich ciała są masa gnijącego mięsa. Każdy, kto zobaczy odsłonięty oblicze lub ciało strażnika, musi zdać Test Strachu (2) albo przerażony stanie jak wryty w miejscu.',397),(271,'Strażnicy paskudnie cuchną i każdy w zasięgu 2 metrów od jednego z nich musi zdać Wymagający (+0) Test Odporności albo na czas potyczki otrzyma karę -10 do Walki Wręcz. Pod kolczugami i za opuszczonymi zasłonami hełmów ich ciała są masa gnijącego mięsa. Każdy, kto zobaczy odsłonięty oblicze lub ciało strażnika, musi zdać Test Strachu (2) albo przerażony stanie jak wryty w miejscu.',430),(272,'Mutacja - Długa Szyja',439),(273,'Mutacja - Chityna',439),(274,'Mutacja - Przyssawki na dłoniach i stopach - może wspinać się po ścianach',439),(275,'Chłościciele są niezwykle szybkie i zawsze atakują pierwsze, nawet jeśli ich ofiara jest świadoma ich obecności.',440),(276,'Jeśli Pijawka zada obrażenia, przysysa się do ofiary, powodując Stan Krwawienie, dopóki nie zostanie zabita albo się nie nasyci. Aby sprawdzić, czy pijawka się najadła, rzuć w każdej Rundzie 1k10: 9 lub 10 oznacza, że się nasyciła i sama odpada, w przeciwnym razie kontynuuje pożywianie się. Ogień lub inne drażniące substancje (sól, kwas itp.) spowodują, że pijawka odessie się i spróbuje uciec. Oderwanie jej od rany powoduje 1 poziom Stanu Krawawienie.',443),(277,'Mutacja - Obrotowa głowa - może obracać głową i ramionami o 360 stopni. Może dzięki temu udawać martwego - Test Leczenia (+40) pozwoli przejrzeć ten fortel.',446),(278,'Paszcza otwiera sie szeroko, odsłaniajac jasnozielone żeby i wnetrze wypełnione chorobliwie zielona posoka. Bohater, który zostanie przyciagniety 6 metrów przez winorośla, znajdzie sie w zasięgu ugryzienia. Wykonaj normalny rzut na trafienie. Każda postać, której Żywotnosc w wyniku tego ataku spadnie do 0, zostaje połknięta w następnej Rundzie.',449),(279,'Udany atak chwyta oare w Zapasy, ale nie zadaje Obrazen. Zamiast tego ofiara zostaje przyciagnieta 2 metry blizej do paszczy za kazdy poziom Stanu Pochwycenie. Siłujac sie z ofiarą w Zapasach, winorosl jest traktowana jako Bezbronny cel.',450),(280,'Kazde ramie Czegos ma 5 punktów Zywotnosci – zadanie mu tylu Ran w ramach Ataku Mierzonego odcina konczyne, usuwajac wszystkie poziomy Stanu Pochwycenie z dowolnego Bohatera trzymanego przez to ramie. Uszkodzenie ramienia nie zmniejsza Zywotnosci samego Czegos, a kolejne ramie zastapi odciete w nastepnej Rundzie. Jedynie ataki wymierzone w miesista mase samego Czegos obnizaja Zywotnosc stwora.',451),(281,'Gdy jego Zywotnosc spadnie do 0, Cos wpadnie w przedsmiertne drgawki: podłoga zacznie falowac, a sciany pekac. Kazdy Bohater w jamie moze uciec po drabinie na dziedziniec, ale ci, którzy opóznia swoja ucieczke o wiecej niz 3 Rundy, zostana uwiezieni wewnatrz Czegos, gdy istota zapadnie sie w siebie. Uwiezieni awanturnicy zaczna sie dusic po upływie tylu Rund, ile wynosi ich Bonus z Wytrzymałosci +2. Mozna ich przedtem wydostac wciąż zywych, rozcinajac miesista mase. Zadanie 10 Ran wystarczy, by uwolnic Bohatera.',451),(282,'Pamietaj, ze oprócz innych efektów Cos podwaja zadawane Obrazenia istotom Srednim oraz potraja zadawane Małym przeciwnikom.',451),(283,'Organy są bezbronnym celem',453),(284,'Mackę można odciąć tylko poprzez zadanie 6 lub więcej Ran na skutek pojedynczego ataku tnącą bronią. Wszelkie inne obrażenia zostają natychmiast zregenerowane.',454),(285,'Pochwycony cel jest traktowany jako Bezbronny',454),(286,'Mutacja - Cztery ręce',455),(288,'Ma różdżkę z gagatu, która obniża PZ każdego rzucanego zaklęcia z jej użyciem o 2.',459);
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (1,'ART_CARTOGRAPHY'),(2,'ART_ENGRAVING'),(3,'ART_MOSAICS'),(4,'ART_PAINTING'),(5,'ART_SCULPTURE'),(6,'ART_TATTOO'),(7,'ART_WEAVING'),(8,'ATHLETICS'),(9,'BRIBERY'),(10,'CHARM'),(11,'CHARM_ANIMAL'),(12,'CLIMB'),(13,'COOL'),(14,'CONSUME_ALCOHOL'),(15,'DODGE'),(16,'DRIVE'),(17,'ENDURANCE'),(18,'ENTERTAIN_ACTING'),(19,'ENTERTAIN_COMEDY'),(20,'ENTERTAIN_SINGING'),(21,'ENTERTAIN_STORYTELLING'),(22,'GAMBLE'),(23,'GOSSIP'),(24,'HAGGLE'),(25,'INTIMIDATE'),(26,'INTUITION'),(27,'LEADERSHIP'),(28,'MELEE_BASIC'),(29,'MELEE_BRAWLING'),(30,'MELEE_CAVALRY'),(31,'MELEE_FENCING'),(32,'MELEE_FLAIL'),(33,'MELEE_PARRY'),(34,'MELEE_POLEARM'),(35,'MELEE_TWO_HANDED'),(36,'NAVIGATION'),(37,'OUTDOOR_SURVIVAL'),(38,'PERCEPTION'),(39,'RIDE_DEMIGRYPH'),(40,'RIDE_GREAT_WOLF'),(41,'RIDE_GRIFFON'),(42,'RIDE_HORSE'),(43,'RIDE_PEGASUS'),(44,'ROW'),(45,'STEALTH_RURAL'),(46,'STEALTH_UNDERGROUND'),(47,'STEALTH_URBAN'),(48,'ANIMAL_CARE'),(49,'ANIMAL_TRAINING_DEMIGRYPH'),(50,'ANIMAL_TRAINING_DOG'),(51,'ANIMAL_TRAINING_HORSE'),(52,'ANIMAL_TRAINING_PEGASUS'),(53,'ANIMAL_TRAINING_PIGEON'),(54,'CHANNELLING_AQSHY'),(55,'CHANNELLING_AZYR'),(56,'CHANNELLING_CHAMON'),(57,'CHANNELLING_DHAR'),(58,'CHANNELLING_GHUR'),(59,'CHANNELLING_GHYRAN'),(60,'CHANNELLING_HYSH'),(61,'CHANNELLING_SHYISH'),(62,'CHANNELLING_ULGU'),(63,'EVALUATE'),(64,'HEAL'),(65,'LANGUAGE_BATTLE_TONGUE'),(66,'LANGUAGE_BRETONNIAN'),(67,'LANGUAGE_CLASSICAL'),(68,'LANGUAGE_GUILDER'),(69,'LANGUAGE_KHAZALID'),(70,'LANGUAGE_MAGICK'),(71,'LANGUAGE_THIEF'),(72,'LANGUAGE_TILEAN'),(73,'LORE_ENGINEERING'),(74,'LORE_GEOLOGY'),(75,'LORE_HERALDRY'),(76,'LORE_HISTORY'),(77,'LORE_LAW'),(78,'LORE_MAGICK'),(79,'LORE_METALLURGY'),(80,'LORE_SCIENCE'),(81,'LORE_THEOLOGY'),(82,'PERFORM_ACROBATICS'),(83,'PERFORM_CLOWNING'),(84,'PERFORM_DANCING'),(85,'PERFORM_FIREBREATHING'),(86,'PERFORM_JUGGLING'),(87,'PERFORM_MIMING'),(88,'PERFORM_ROPE_WALKING'),(89,'PICK_LOCK'),(90,'PLAY_BAGPIPE'),(91,'PLAY_LUTE'),(92,'PLAY_HARP'),(93,'PLAY_HORN'),(94,'PLAY_VIOLIN'),(95,'PRAY'),(96,'RANGED_BLACKPOWDER'),(97,'RANGED_BOW'),(98,'RANGED_CROSSBOW'),(99,'RANGED_ENGINEERING'),(100,'RANGED_ENTANGLING'),(101,'RANGED_EXPLOSIVES'),(102,'RANGED_SLING'),(103,'RANGED_THROWING'),(104,'RESEARCH'),(105,'SAIL_BARGE'),(106,'SAIL_CARAVEL'),(107,'SAIL_COG'),(108,'SAIL_FRIGATE'),(109,'SAIL_WOLFSHIP'),(110,'SECRET_SIGNS_GREY_ORDER'),(111,'SECRET_SIGNS_GUILD'),(112,'SECRET_SIGNS_RANGER'),(113,'SECRET_SIGNS_SCOUT'),(114,'SECRET_SIGNS_THIEF'),(115,'SECRET_SIGNS_VAGABOND'),(116,'SET_TRAP'),(117,'SLEIGHT_OF_HAND'),(118,'SWIM'),(119,'TRACK'),(120,'TRADE_APOTHECARY'),(121,'TRADE_CALLIGRAPHER'),(122,'TRADE_CHANDLER'),(123,'TRADE_CARPENTER'),(124,'TRADE_COOK'),(125,'TRADE_EMBALMER'),(126,'TRADE_SMITH'),(127,'TRADE_TANNER'),(128,'CHANNELLING_TZEENTCH');
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
  PRIMARY KEY (`id`),
  KEY `FKhd7xbw9ja8fgakh2019l48h3e` (`character_id`),
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapon`
--

LOCK TABLES `weapon` WRITE;
/*!40000 ALTER TABLE `weapon` DISABLE KEYS */;
INSERT INTO `weapon` VALUES (1,1,'-',_binary '',_binary '\0','IMPROVISED_WEAPON','Broń improwizowana','-',0,3,1,7,1,_binary ''),(2,2,'0',_binary '',_binary '\0','DAGGER','Sztylet','16S',0,1,1,9,1,_binary ''),(3,1,'0',_binary '',_binary '\0','KNIFE','Nóż','8S',0,1,1,9,1,_binary ''),(4,1,'0',_binary '',_binary '\0','SHIELD_BUCKLER','Tarcza (puklerz)','18S 2P',0,1,6,4,1,_binary ''),(5,2,'1',_binary '',_binary '\0','SHIELD','Tarcza','2GC',0,1,6,9,1,_binary ''),(6,3,'3',_binary '',_binary '\0','SHIELD_LARGE','Tarcza (duża)','3GC',0,1,6,9,1,_binary ''),(7,5,'3',_binary '',_binary '\0','CAVALRY_HAMMER','Młot kawaleryjski','3GC',0,5,2,2,1,_binary ''),(8,6,'3',_binary '',_binary '\0','LANCE','Kopia','1GC',0,5,2,8,1,_binary ''),(9,3,'1',_binary '',_binary '\0','FOIL','Floret','5GC',0,5,3,1,1,_binary ''),(10,4,'1',_binary '',_binary '\0','RAPIER','Rapier','5GC',0,5,3,2,1,_binary ''),(11,0,'-',_binary '',_binary '\0','UNARMED','Pięści i kopniaki','-',0,3,4,4,1,_binary ''),(12,2,'0',_binary '',_binary '\0','KNUCKLEDUSTERS','Kastet','2S 6P',0,1,4,4,1,_binary ''),(13,3,'1',_binary '',_binary '\0','GRAIN_FLAIL','Cep bojowy','10S',0,1,5,1,1,_binary ''),(14,5,'1',_binary '',_binary '\0','FLAIL','Korbacz','2GC',0,5,5,1,1,_binary ''),(15,6,'2',_binary '',_binary '\0','MILITARY_FLAIL','Kiścień','3GC',0,4,5,2,1,_binary ''),(16,2,'0',_binary '',_binary '\0','MAIN_GAUCHE','Lewak','1GC',0,4,6,9,1,_binary ''),(17,3,'1',_binary '',_binary '\0','SWORDBRAKER','Łamacz mieczy','1GC 2S',0,5,6,6,1,_binary ''),(18,4,'3',_binary '',_binary '\0','HALBERD','Halabarda','2GC',0,1,7,2,1,_binary ''),(19,4,'2',_binary '',_binary '\0','SPEAR','Włócznia','15S',0,1,7,8,1,_binary ''),(20,4,'4',_binary '',_binary '\0','PIKE','Pika','18S',0,4,7,3,1,_binary ''),(21,4,'2',_binary '',_binary '\0','QUARTER_STAFF','Kostur','3S',0,1,7,2,1,_binary ''),(22,5,'3',_binary '',_binary '\0','BASTARD_SWORD','Półtorak','8GC',0,5,8,2,1,_binary ''),(23,6,'3',_binary '',_binary '\0','GREAT_AXE','Wielki topór','4GC',0,5,8,2,1,_binary ''),(24,5,'3',_binary '',_binary '\0','PICK','Nadziak','9S',0,1,8,1,1,_binary ''),(25,6,'3',_binary '',_binary '\0','2H_WARHAMMER','Dwuręczny młot bojowy','3GC',0,1,8,1,1,_binary ''),(26,5,'3',_binary '',_binary '\0','ZWEIHANDER','Miecz dwuręczny','10GC',0,5,8,2,1,_binary ''),(27,8,'1',_binary '\0',_binary '\0','BLUNDERBUSS','Garłacz','2GC',20,5,9,5,2,_binary ''),(28,9,'3',_binary '\0',_binary '\0','HOCHLAND_LONG_RIFLE','Muszkiet hochlandzki','100GC',100,2,9,5,2,_binary ''),(29,9,'2',_binary '\0',_binary '\0','HANDGUN','Rusznica','4GC',50,5,9,5,2,_binary ''),(30,8,'0',_binary '\0',_binary '\0','PISTOL','Pistolet','8GC',20,4,9,5,2,_binary ''),(31,4,'2',_binary '',_binary '\0','ELF_BOW','Łuk elfi','10GC',150,2,10,5,2,_binary ''),(32,4,'3',_binary '',_binary '\0','LONGBOW','Łuk długi','5GC',100,5,10,5,2,_binary ''),(33,3,'2',_binary '',_binary '\0','BOW','Łuk','4GC',50,1,10,5,2,_binary ''),(34,2,'1',_binary '',_binary '\0','SHORTBOW','Krótki łuk','3GC',20,1,10,5,2,_binary ''),(35,7,'0',_binary '\0',_binary '\0','CROSSBOW_PISTOL','Kusza pistoletowa','6GC',10,5,11,5,2,_binary ''),(36,9,'3',_binary '\0',_binary '\0','HEAVY_CROSSBOW','Ciężka kusza','7GC',100,4,11,5,2,_binary ''),(37,9,'2',_binary '\0',_binary '\0','CROSSBOW','Kusza','5GC',60,1,11,5,2,_binary ''),(38,9,'3',_binary '\0',_binary '\0','REPEATER_HANDGUN','Rusznica samopowtarzalna','10GC',30,4,12,5,2,_binary ''),(39,8,'1',_binary '\0',_binary '\0','REPEATER_PISTOL','Pistolet samopowtarzalny','15GC',10,4,12,5,2,_binary ''),(40,0,'0',_binary '\0',_binary '','LASSO','Arkan','6S',2,1,13,5,2,_binary ''),(41,2,'0',_binary '',_binary '\0','WHIP','Bicz','5S',6,1,13,5,2,_binary ''),(42,12,'0',_binary '\0',_binary '','BOMB','Bomba','3GC',0,4,14,5,2,_binary ''),(43,0,'0',_binary '\0',_binary '','INCENDIARY','Ładunek zapalający','1GC',0,5,14,5,2,_binary ''),(44,6,'0',_binary '\0',_binary '\0','SLING','Proca','1S',60,1,15,5,2,_binary ''),(45,7,'2',_binary '\0',_binary '\0','STAFF_SLING','Proca drzewcowa','4S',100,1,15,5,2,_binary ''),(46,0,'0',_binary '',_binary '','BOLAS','Bolas','10S',3,4,16,5,2,_binary ''),(47,1,'0',_binary '',_binary '','DART','Strzałka','2S',2,5,16,5,2,_binary ''),(48,3,'1',_binary '',_binary '','JAVELIN','Oszczep','10S 6P',3,5,16,5,2,_binary ''),(49,0,'0',_binary '',_binary '','ROCK','Kamień','-',3,1,16,5,2,_binary ''),(50,3,'1',_binary '',_binary '','THROWING_AXE','Topór do rzucania','1GC',2,1,16,5,2,_binary ''),(51,2,'0',_binary '',_binary '','THROWING_KNIFE','Nóż do rzucania','18S',2,1,16,5,2,_binary ''),(52,1,'0',_binary '\0',_binary '\0','BULLET_AND_POWDER','Pocisk i proch','3S 3P',1,1,17,5,3,_binary ''),(53,0,'0',_binary '\0',_binary '\0','IMPROVISED_SHOT_AND_POWDER','Improwizowany śrut i proch','3P',0.5,1,17,5,3,_binary ''),(54,0,'0',_binary '\0',_binary '\0','SMALL_SHOT_AND_POWDER','Śrut i proch','3S 3P',1,1,17,5,3,_binary ''),(55,0,'0',_binary '\0',_binary '\0','ARROW','Strzała','5S',1,1,18,5,3,_binary ''),(56,1,'0',_binary '\0',_binary '\0','ELF_ARROW','Strzała elfia','6S',50,2,18,5,3,_binary ''),(57,0,'0',_binary '\0',_binary '\0','BOLT','Bełt','5S',1,1,19,5,3,_binary ''),(58,1,'0',_binary '\0',_binary '\0','LEAD_BULLET','Pocisk ołowiany','4P',-10,1,20,5,3,_binary ''),(59,0,'0',_binary '\0',_binary '\0','STONE_BULLET','Pocisk kamienny','2P',1,1,20,5,3,_binary ''),(60,4,'1',_binary '',_binary '\0','AXE','Topór','10S',0,1,1,1,1,_binary ''),(61,1,'0',_binary '',_binary '\0','BALLOCK_KNIFE','Puginał','16S',0,5,1,9,1,_binary ''),(62,4,'0',_binary '',_binary '\0','CLUB','Maczuga','4S',0,1,1,1,1,_binary ''),(63,4,'1',_binary '',_binary '\0','MACE','Buzdygan','15S',0,1,1,1,1,_binary ''),(64,4,'1',_binary '',_binary '\0','MILITARY_PICK','Czekan','15S',0,5,1,1,1,_binary ''),(65,4,'1',_binary '',_binary '\0','SCIMITAR','Sejmitar','1GC',0,5,1,6,1,_binary ''),(66,4,'1',_binary '',_binary '\0','SWORD','Miecz','1GC',0,1,1,1,1,_binary ''),(67,4,'1',_binary '',_binary '\0','WARHAMMER','Młot bitewny','1GC',0,5,1,1,1,_binary ''),(68,2,'4',_binary '',_binary '\0','PAVISE','Pawęż','3GC 15S',0,4,6,9,1,_binary ''),(69,5,'2',_binary '',_binary '\0','DEMI-LANCE','Pół-kopia','1GC',0,5,2,2,1,_binary ''),(70,4,'1',_binary '',_binary '\0','SABRE','Szabla','2GC',0,5,2,1,1,_binary ''),(71,2,'1',_binary '',_binary '\0','SMALLSWORD','Szpada','4GC',0,5,3,1,1,_binary ''),(72,3,'1',_binary '',_binary '\0','SPIKED_GAUNTLET','Kolczasta rękawica','2GC',0,4,4,4,1,_binary ''),(73,4,'0',_binary '',_binary '\0','BOAT_HOOK','Hak wodny','6S',0,1,4,6,1,_binary ''),(74,2,'0',_binary '',_binary '\0','GARROTE','Garota','1S',0,4,4,4,1,_binary ''),(75,2,'1',_binary '',_binary '\0','LOCKED_GAUNTLET','Pancerna rękawica','1GC',0,5,4,4,1,_binary ''),(76,1,'0',_binary '',_binary '\0','SAP','Pałka','1S',0,4,4,4,1,_binary ''),(77,0,'1',_binary '',_binary '\0','CLOAK','Peleryna','10S',0,1,6,6,1,_binary ''),(78,0,'1',_binary '',_binary '\0','WEIGHTED_NET','Obciążona siatka','1G 10S',0,4,6,6,1,_binary ''),(79,3,'2',_binary '',_binary '\0','AHLSPIESS','Szydło','2GC',0,5,7,8,1,_binary ''),(80,4,'3',_binary '',_binary '\0','BILL','Gizarma','2GC',0,5,7,2,1,_binary ''),(81,2,'3',_binary '',_binary '\0','MANCATCHER','Łapacz','2GC',0,4,7,2,1,_binary ''),(82,4,'3',_binary '',_binary '\0','PARTIZAN','Partyzana','2GC',0,5,7,2,1,_binary ''),(83,4,'3',_binary '',_binary '\0','POLLAXE','Berdysz','2GC',0,5,7,2,1,_binary ''),(84,5,'3',_binary '',_binary '\0','FLAMBERGE_ZWEIHANDER','Flamberg','30GC',0,2,8,2,1,_binary ''),(85,0,'0',_binary '\0',_binary '\0','BARBED_ARROW','Strzała ząbkowana','8S',1,5,18,5,3,_binary ''),(86,0,'0',_binary '\0',_binary '\0','BODKIN_ARROW','Strzała bodkinowa','8S',1,5,18,5,3,_binary ''),(87,-2,'0',_binary '\0',_binary '\0','SHARP_STICK','Ostry kijek','-',0.5,1,18,5,3,_binary ''),(88,-2,'0',_binary '\0',_binary '\0','PEBBLE','Kamyk','-',-10,1,20,5,3,_binary ''),(89,8,'2',_binary '\0',_binary '\0','MATCHLOCK_HANDGUN','Rusznica z zamkiem zapłonowym','2GC',50,4,9,5,2,_binary ''),(90,7,'1',_binary '\0',_binary '\0','MATCHLOCK_BLUNDERBUSS','Garłacz z zamkiem zapłonowym','1GC',20,4,9,5,2,_binary ''),(91,9,'3',_binary '\0',_binary '\0','ARQUEBUS','Arkebuz','5GC',40,2,9,5,2,_binary ''),(92,9,'3',_binary '\0',_binary '\0','DOUBLE_BARRELLED_HANDGUN','Rusznica dwulufowa','7GC',50,2,9,5,2,_binary ''),(93,7,'1',_binary '\0',_binary '\0','GRIFFONSFOOT_PISTOL','Pistolet \"Gryfia stopa\"','10GC',10,2,9,5,2,_binary ''),(94,9,'1',_binary '\0',_binary '\0','GUN_AXE','Topór-rusznica','8GC',30,2,9,5,2,_binary ''),(95,9,'3',_binary '\0',_binary '\0','GUN_HALBERD','Halabarda-rusznica','10GC',30,2,9,5,2,_binary ''),(96,8,'1',_binary '\0',_binary '\0','PEPPERBOX','Rewolwer wiązkowy','12C',10,4,12,5,2,_binary ''),(97,7,'3',_binary '\0',_binary '\0','HAND_MORTAR','Moździerz ręczny','50C',30,2,12,5,2,_binary ''),(98,8,'1',_binary '\0',_binary '\0','CANE_PISTOL','Pistolet laskowy','15C',10,2,12,5,2,_binary ''),(99,1,'0',_binary '\0',_binary '\0','Paper Cartridge','Ładunek prochowy','5S (12)',1,5,17,5,3,_binary ''),(100,2,'0',_binary '\0',_binary '\0','AQSHY_INFUSED_POWDER','Proch Aqshy','1G (12)',10,2,17,5,3,_binary ''),(101,1,'0',_binary '\0',_binary '\0','PRECISION_SHOT_AND_POWDER','Precyzyjny proch i śrut','3S (12)',1,1,17,5,3,_binary ''),(102,-1,'0',_binary '\0',_binary '\0','SCRAP_AND_POWDER','Proch i złom','2S (12)',0.5,1,17,5,3,_binary ''),(103,2,'0',_binary '\0',_binary '\0','LARGE_BULLET_AND_POWDER','Duży pocisk i proch','1G (12)',1,5,17,5,3,_binary ''),(104,5,'0',_binary '\0',_binary '\0','MORTAR_BOMB','Pocisk moździeżowy','3G',1,4,17,5,3,_binary ''),(105,0,'0',_binary '\0',_binary '\0','MORTAR_INCENDIARY','Zapalający pocisk moździeżowy','1G',1,5,17,5,3,_binary ''),(106,2,'1',_binary '\0',_binary '\0','GRAPPLE','Chwytak moździeżowy','2G',0.5,5,17,5,3,_binary ''),(107,4,'1',_binary '',_binary '\0','RYGAR_SWORD','Miecz Rygara','1GC',0,1,1,1,1,_binary '\0'),(108,4,'1',_binary '',_binary '\0','BARAKUL','Miecz Barakul','1GC',0,1,1,1,1,_binary '\0');
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
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapon_quality_value`
--

LOCK TABLES `weapon_quality_value` WRITE;
/*!40000 ALTER TABLE `weapon_quality_value` DISABLE KEYS */;
INSERT INTO `weapon_quality_value` VALUES (1,'1',1,27),(2,'1',3,27),(3,'1',4,27),(4,'1',4,5),(5,'1',4,17),(6,'1',5,27),(7,'1',5,5),(8,'2',5,17),(9,'1',6,27),(10,'1',6,5),(11,'3',6,17),(12,'1',7,19),(13,'1',7,15),(14,'1',8,10),(15,'1',8,11),(16,'1',9,8),(17,'1',9,11),(18,'1',9,14),(19,'1',9,27),(20,'1',10,8),(21,'1',10,11),(22,'1',11,27),(23,'1',13,6),(24,'1',13,23),(25,'1',13,21),(26,'1',14,6),(27,'1',14,21),(28,'1',15,19),(29,'1',15,6),(30,'1',15,10),(31,'1',15,26),(32,'1',15,21),(33,'1',16,5),(34,'1',17,5),(35,'1',17,18),(36,'1',18,19),(37,'1',18,5),(38,'*',18,9),(39,'*',18,11),(40,'1',19,19),(41,'1',19,11),(42,'1',20,19),(43,'1',20,11),(44,'1',21,19),(45,'1',21,5),(46,'1',21,15),(47,'1',22,19),(48,'1',22,4),(49,'1',22,5),(50,'1',23,19),(51,'1',23,9),(52,'1',23,10),(53,'1',23,26),(54,'1',24,19),(55,'1',24,4),(56,'1',24,11),(57,'1',25,19),(58,'1',25,4),(59,'1',25,15),(60,'1',26,19),(61,'1',26,4),(62,'1',26,9),(63,'1',27,2),(64,'1',27,4),(65,'3',27,3),(66,'1',27,22),(67,'2',27,24),(68,'1',27,19),(69,'1',28,2),(70,'1',28,4),(71,'1',28,1),(72,'1',28,14),(73,'4',28,24),(74,'1',28,19),(75,'1',29,2),(76,'1',29,4),(77,'1',29,22),(78,'3',29,24),(79,'1',29,19),(80,'1',30,2),(81,'1',30,4),(82,'1',30,13),(83,'1',30,24),(84,'1',31,4),(85,'1',31,14),(86,'1',31,19),(87,'1',32,4),(88,'1',32,19),(89,'1',33,19),(90,'1',34,19),(91,'1',35,13),(92,'1',36,4),(93,'2',36,24),(94,'1',36,19),(95,'1',37,24),(96,'1',37,19),(97,'1',38,2),(98,'1',38,4),(99,'1',38,22),(100,'5',38,24),(101,'4',38,16),(102,'1',39,2),(103,'1',39,4),(104,'1',39,22),(105,'4',39,16),(106,'4',39,24),(107,'1',40,7),(108,'1',41,7),(109,'5',42,3),(110,'1',42,22),(111,'1',42,10),(112,'1',43,28),(113,'4',43,3),(114,'1',43,22),(115,'1',45,19),(116,'1',46,7),(117,'1',47,11),(118,'1',48,11),(119,'1',50,9),(120,'1',52,11),(121,'1',52,12),(122,'1',54,3),(123,'1',55,11),(124,'1',56,1),(125,'1',56,11),(126,'1',56,12),(127,'1',57,11),(128,'1',58,15),(129,'1',59,15),(130,'1',60,9),(131,'1',60,37),(132,'1',61,11),(133,'1',61,12),(134,'1',61,14),(135,'1',1,37),(136,'1',62,27),(137,'1',62,37),(138,'1',63,15),(139,'1',63,37),(140,'1',64,12),(141,'1',64,37),(142,'1',65,38),(143,'1',61,39),(144,'1',67,37),(145,'*',67,15),(146,'*',67,12),(147,'5',68,17),(148,'1',8,40),(149,'1',69,10),(150,'1',69,11),(151,'1',69,40),(152,'1',70,38),(153,'1',71,8),(154,'1',71,11),(155,'1',71,14),(156,'1',72,11),(157,'1',72,37),(158,'1',73,41),(159,'1',73,37),(160,'1',74,7),(161,'1',74,25),(162,'1',74,37),(163,'1',74,27),(164,'1',75,27),(165,'1',76,15),(166,'1',76,37),(167,'1',76,27),(168,'1',77,7),(169,'1',77,5),(170,'1',77,27),(171,'1',78,7),(172,'1',78,5),(173,'1',78,17),(174,'1',78,25),(175,'1',78,27),(176,'1',78,21),(177,'1',79,11),(178,'1',79,12),(179,'1',80,5),(180,'*',80,9),(181,'*',80,41),(182,'1',81,5),(183,'1',81,7),(184,'1',82,5),(185,'*',82,11),(186,'2 *',82,38),(187,'1',83,5),(188,'*',83,9),(189,'*',83,11),(190,'*',83,15),(191,'1',24,25),(192,'1',25,25),(193,'1',84,19),(194,'1',84,4),(195,'1',84,9),(196,'2',84,38),(197,'1',85,11),(198,'1',85,38),(199,'1',86,11),(200,'1',86,12),(201,'1',87,22),(202,'1',87,23),(203,'1',87,27),(204,'1',88,23),(205,'1',88,27),(206,'1',39,13),(207,'1',89,2),(208,'1',89,4),(209,'1',89,22),(210,'4',89,24),(211,'1',90,2),(212,'1',90,4),(213,'1',90,22),(214,'3',90,24),(215,'3',90,42),(216,'1',91,2),(217,'1',91,4),(218,'1',91,22),(219,'5',91,24),(220,'1',91,23),(221,'1',92,2),(222,'1',92,4),(223,'1',92,22),(224,'4',92,24),(225,'2',92,16),(226,'1',93,2),(227,'1',93,4),(228,'1',93,22),(229,'6',93,24),(230,'1',93,23),(231,'5',93,42),(232,'1',94,2),(233,'1',94,4),(234,'1',94,22),(235,'4',94,24),(236,'1',94,23),(237,'1',95,2),(238,'1',95,4),(239,'1',95,22),(240,'4',95,24),(241,'1',95,23),(242,'1',96,2),(243,'1',96,4),(244,'1',96,22),(245,'4',96,24),(246,'1',96,13),(247,'4',96,16),(248,'1',97,2),(249,'1',97,4),(250,'1',97,22),(251,'2',97,24),(252,'1',97,23),(253,'1',98,2),(254,'1',98,4),(255,'1',98,22),(256,'6',98,24),(257,'1',98,23),(258,'1',99,11),(259,'1',99,12),(260,'1',99,44),(261,'1',100,11),(262,'1',100,12),(263,'1',100,45),(264,'1',101,11),(265,'1',101,12),(266,'1',101,14),(267,'3',102,42),(268,'1',102,43),(269,'1',103,11),(270,'1',103,10),(271,'1',103,12),(272,'1',103,46),(273,'5',104,3),(274,'1',104,22),(275,'1',104,10),(276,'5',105,3),(277,'1',105,22),(278,'1',105,28),(279,'1',106,12),(280,'2',106,24),(281,'1',106,47),(282,'1',89,48),(283,'1',90,48),(284,'1',98,49),(285,'1',107,29),(286,'1',107,14),(287,'1',107,30),(288,'1',107,31);
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

-- Dump completed on 2024-05-29 14:04:33
