-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: projectrpg
-- ------------------------------------------------------
-- Server version	8.4.0

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armor`
--

LOCK TABLES `armor` WRITE;
/*!40000 ALTER TABLE `armor` DISABLE KEYS */;
INSERT INTO `armor` VALUES (1,'LEATHER_JACK','Skórzana kurta',1,'1','12S',1,_binary '',1,1,1),(2,'LEATHER_JERKIN','Skórzany kaftan',1,'1','10S',1,_binary '',1,1,1),(3,'LEATHER_LEGGINGS','Skórzane nogawice',1,'1','14S',1,_binary '',1,1,1),(4,'LEATHER_SKULLCAP','Skórzany hełm',1,'0','8S',1,_binary '',1,1,1),(5,'COLLAR','Kolet',2,'2','18S',5,_binary '',2,1,1),(6,'MAIL_CHAUSSES','Nogawice kolcze',3,'3','2G',5,_binary '',2,2,2),(7,'MAIL_COAT','Kolczuga',3,'3','3G',1,_binary '',2,2,2),(8,'MAIL_COIF','Czepiec kolczy',3,'2','1G',5,_binary '',2,2,2),(9,'MAIL_SHIRT','Kaftan kolczy',3,'2','2G',5,_binary '',2,2,2),(10,'BREASTPLATE','Napierśnik',4,'3','10G',5,_binary '',2,2,3),(11,'OPEN_HELM','Hełm otwarty',4,'1','2G',1,_binary '',2,2,3),(12,'BRACERS','Naramienniki',4,'3','8G',4,_binary '',2,2,3),(13,'PLATE_LEGGINGS','Nagolenniki płytowe',4,'3','10G',4,_binary '',2,2,3),(14,'HELM','Hełm',4,'2','3G',4,_binary '',2,2,3),(15,'ARMOR_1','Pancerz (1)',5,'-','-',1,_binary '\0',1,1,1),(16,'ARMOR_2','Pancerz (2)',5,'-','-',1,_binary '\0',2,1,1),(17,'ARMOR_3','Pancerz (3)',5,'-','-',1,_binary '\0',3,1,1),(18,'ARMOR_4','Pancerz (4)',5,'-','-',1,_binary '\0',4,1,1),(20,'ARMOR_5','Pancerz (5)',5,'-','-',1,_binary '\0',5,1,1);
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
INSERT INTO `armor_body_localization` VALUES (1,2),(1,3),(1,4),(2,4),(3,5),(3,6),(4,1),(5,4),(6,5),(6,6),(7,2),(7,3),(7,4),(8,1),(9,4),(10,4),(11,1),(12,2),(12,3),(13,5),(13,6),(14,1),(15,1),(15,2),(15,3),(15,4),(15,5),(15,6),(16,1),(16,2),(16,3),(16,4),(16,5),(16,6),(17,1),(17,2),(17,3),(17,4),(17,5),(17,6);
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
                                   `id` bigint NOT NULL AUTO_INCREMENT,
                                   `armor_points` int DEFAULT NULL,
                                   `armor_id` bigint NOT NULL,
                                   `character_id` bigint NOT NULL,
                                   PRIMARY KEY (`id`),
                                   KEY `FK1ny7jluu147hk2glittg9qi60` (`armor_id`),
                                   KEY `FKl3mduvvv9n0ynjkli13eg14el` (`character_id`),
                                   CONSTRAINT `FK1ny7jluu147hk2glittg9qi60` FOREIGN KEY (`armor_id`) REFERENCES `armor` (`id`),
                                   CONSTRAINT `FKl3mduvvv9n0ynjkli13eg14el` FOREIGN KEY (`character_id`) REFERENCES `character_entity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_armor`
--

LOCK TABLES `character_armor` WRITE;
/*!40000 ALTER TABLE `character_armor` DISABLE KEYS */;
INSERT INTO `character_armor` VALUES (32,NULL,15,68),(33,NULL,15,398),(49,NULL,3,813),(50,NULL,1,813),(52,NULL,2,814),(53,NULL,3,814);
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
                                                     CONSTRAINT `FKcis343e26wfqsyagixc0nod9i` FOREIGN KEY (`character_armor_id`) REFERENCES `character_armor` (`id`),
                                                     CONSTRAINT `FKk9rypu2nmx6l2flq0er133` FOREIGN KEY (`body_localization_id`) REFERENCES `body_localization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_armor_body_localization`
--

LOCK TABLES `character_armor_body_localization` WRITE;
/*!40000 ALTER TABLE `character_armor_body_localization` DISABLE KEYS */;
INSERT INTO `character_armor_body_localization` VALUES (121,1,1,32),(122,1,2,32),(123,1,3,32),(124,1,4,32),(125,1,5,32),(126,1,6,32),(127,1,1,33),(128,1,2,33),(129,1,3,33),(130,1,4,33),(131,1,5,33),(132,1,6,33),(220,1,5,49),(221,1,6,49),(222,1,2,50),(223,1,3,50),(224,1,4,50),(226,1,4,52),(227,1,5,53),(228,1,6,53);
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
) ENGINE=InnoDB AUTO_INCREMENT=7387 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_body_localization`
--

LOCK TABLES `character_body_localization` WRITE;
/*!40000 ALTER TABLE `character_body_localization` DISABLE KEYS */;
INSERT INTO `character_body_localization` VALUES (967,0,1,42,0),(968,0,2,42,0),(969,0,3,42,0),(970,0,4,42,0),(971,0,5,42,0),(972,0,6,42,0),(1249,3,1,27,0),(1250,2,2,27,0),(1251,2,3,27,0),(1252,3,4,27,0),(1253,3,5,27,0),(1254,3,6,27,0),(1267,0,1,30,0),(1268,0,2,30,0),(1269,0,3,30,0),(1270,0,4,30,0),(1271,0,5,30,0),(1272,0,6,30,0),(1273,0,1,28,0),(1274,0,2,28,0),(1275,0,3,28,0),(1276,1,4,28,0),(1277,0,5,28,0),(1278,0,6,28,0),(1927,0,1,70,0),(1928,0,2,70,0),(1929,0,3,70,0),(1930,0,4,70,0),(1931,0,5,70,0),(1932,0,6,70,0),(2023,0,1,65,0),(2024,0,2,65,0),(2025,0,3,65,0),(2026,0,4,65,0),(2027,0,5,65,0),(2028,0,6,65,0),(2377,0,1,54,0),(2378,0,2,54,0),(2379,0,3,54,0),(2380,0,4,54,0),(2381,0,5,54,0),(2382,0,6,54,0),(3121,3,1,29,0),(3122,3,2,29,0),(3123,3,3,29,0),(3124,3,4,29,0),(3125,3,5,29,0),(3126,3,6,29,0),(3325,1,1,33,0),(3326,1,2,33,0),(3327,1,3,33,0),(3328,1,4,33,0),(3329,1,5,33,0),(3330,1,6,33,0),(3427,0,1,159,0),(3428,0,2,159,0),(3429,0,3,159,0),(3430,0,4,159,0),(3431,0,5,159,0),(3432,0,6,159,0),(3433,0,1,158,0),(3434,0,2,158,0),(3435,0,3,158,0),(3436,0,4,158,0),(3437,0,5,158,0),(3438,0,6,158,0),(3463,0,1,161,0),(3464,0,2,161,0),(3465,0,3,161,0),(3466,0,4,161,0),(3467,0,5,161,0),(3468,0,6,161,0),(3469,0,1,160,0),(3470,0,2,160,0),(3471,0,3,160,0),(3472,0,4,160,0),(3473,0,5,160,0),(3474,0,6,160,0),(3475,3,1,162,0),(3476,3,2,162,0),(3477,3,3,162,0),(3478,3,4,162,0),(3479,3,5,162,0),(3480,3,6,162,0),(3481,1,1,163,0),(3482,3,2,163,0),(3483,3,3,163,0),(3484,3,4,163,0),(3485,1,5,163,0),(3486,1,6,163,0),(3751,1,1,188,0),(3752,1,2,188,0),(3753,1,3,188,0),(3754,1,4,188,0),(3755,1,5,188,0),(3756,1,6,188,0),(3757,1,1,189,0),(3758,1,2,189,0),(3759,1,3,189,0),(3760,1,4,189,0),(3761,1,5,189,0),(3762,1,6,189,0),(3769,2,1,191,0),(3770,2,2,191,0),(3771,2,3,191,0),(3772,2,4,191,0),(3773,2,5,191,0),(3774,2,6,191,0),(3913,1,1,219,0),(3914,1,3,219,0),(3915,1,2,219,0),(3916,1,4,219,0),(3917,1,6,219,0),(3918,1,5,219,0),(3919,1,1,220,0),(3920,1,3,220,0),(3921,1,2,220,0),(3922,1,4,220,0),(3923,1,6,220,0),(3924,1,5,220,0),(4897,3,1,383,0),(4898,3,2,383,0),(4899,3,3,383,0),(4900,3,4,383,0),(4901,3,5,383,0),(4902,3,6,383,0),(4903,0,1,384,0),(4904,0,3,384,0),(4905,0,2,384,0),(4906,0,4,384,0),(4907,0,6,384,0),(4908,0,5,384,0),(4909,0,1,385,0),(4910,0,3,385,0),(4911,0,2,385,0),(4912,0,4,385,0),(4913,0,6,385,0),(4914,0,5,385,0),(5179,2,1,430,0),(5180,2,3,430,0),(5181,2,2,430,0),(5182,2,4,430,0),(5183,2,6,430,0),(5184,2,5,430,0),(5233,2,1,439,0),(5234,2,3,439,0),(5235,2,2,439,0),(5236,2,4,439,0),(5237,2,6,439,0),(5238,2,5,439,0),(5239,0,1,440,0),(5240,0,3,440,0),(5241,0,2,440,0),(5242,0,4,440,0),(5243,0,6,440,0),(5244,0,5,440,0),(5245,0,1,441,0),(5246,0,3,441,0),(5247,0,2,441,0),(5248,0,4,441,0),(5249,0,6,441,0),(5250,0,5,441,0),(5251,0,1,442,0),(5252,0,3,442,0),(5253,0,2,442,0),(5254,0,4,442,0),(5255,0,6,442,0),(5256,0,5,442,0),(5257,0,1,443,0),(5258,0,3,443,0),(5259,0,2,443,0),(5260,0,4,443,0),(5261,0,6,443,0),(5262,0,5,443,0),(5263,2,1,444,0),(5264,2,3,444,0),(5265,2,2,444,0),(5266,2,4,444,0),(5267,2,6,444,0),(5268,2,5,444,0),(5269,4,1,445,0),(5270,4,3,445,0),(5271,4,2,445,0),(5272,4,4,445,0),(5273,4,6,445,0),(5274,4,5,445,0),(5275,2,1,446,0),(5276,2,3,446,0),(5277,2,2,446,0),(5278,2,4,446,0),(5279,2,6,446,0),(5280,2,5,446,0),(5281,0,1,447,0),(5282,0,3,447,0),(5283,0,2,447,0),(5284,1,4,447,0),(5285,0,6,447,0),(5286,0,5,447,0),(5287,0,1,448,0),(5288,0,3,448,0),(5289,0,2,448,0),(5290,0,4,448,0),(5291,0,6,448,0),(5292,0,5,448,0),(5293,0,1,449,0),(5294,0,3,449,0),(5295,0,2,449,0),(5296,0,4,449,0),(5297,0,6,449,0),(5298,0,5,449,0),(5299,0,1,450,0),(5300,0,3,450,0),(5301,0,2,450,0),(5302,0,4,450,0),(5303,0,6,450,0),(5304,0,5,450,0),(5305,0,1,451,0),(5306,0,3,451,0),(5307,0,2,451,0),(5308,0,4,451,0),(5309,0,6,451,0),(5310,0,5,451,0),(5311,0,1,452,0),(5312,0,3,452,0),(5313,0,2,452,0),(5314,0,4,452,0),(5315,0,6,452,0),(5316,0,5,452,0),(5317,0,1,453,0),(5318,0,3,453,0),(5319,0,2,453,0),(5320,0,4,453,0),(5321,0,6,453,0),(5322,0,5,453,0),(5323,0,1,454,0),(5324,0,3,454,0),(5325,0,2,454,0),(5326,0,4,454,0),(5327,0,6,454,0),(5328,0,5,454,0),(5329,0,1,455,0),(5330,0,3,455,0),(5331,0,2,455,0),(5332,0,4,455,0),(5333,0,6,455,0),(5334,0,5,455,0),(5335,5,1,456,0),(5336,5,3,456,0),(5337,5,2,456,0),(5338,5,4,456,0),(5339,5,6,456,0),(5340,5,5,456,0),(5341,0,1,457,0),(5342,0,3,457,0),(5343,0,2,457,0),(5344,0,4,457,0),(5345,0,6,457,0),(5346,0,5,457,0),(5347,0,1,458,0),(5348,0,3,458,0),(5349,0,2,458,0),(5350,0,4,458,0),(5351,0,6,458,0),(5352,0,5,458,0),(5353,0,1,459,0),(5354,0,3,459,0),(5355,0,2,459,0),(5356,0,4,459,0),(5357,0,6,459,0),(5358,0,5,459,0),(5359,1,1,460,0),(5360,1,3,460,0),(5361,1,2,460,0),(5362,1,4,460,0),(5363,1,6,460,0),(5364,1,5,460,0),(5365,0,1,461,0),(5366,0,3,461,0),(5367,0,2,461,0),(5368,0,4,461,0),(5369,0,6,461,0),(5370,0,5,461,0),(5377,0,1,52,0),(5378,0,2,52,0),(5379,0,3,52,0),(5380,0,4,52,0),(5381,0,5,52,0),(5382,0,6,52,0),(5383,0,1,399,0),(5384,0,2,399,0),(5385,0,3,399,0),(5386,0,4,399,0),(5387,0,5,399,0),(5388,0,6,399,0),(5461,0,1,468,0),(5462,0,2,468,0),(5463,0,3,468,0),(5464,1,4,468,0),(5465,1,5,468,0),(5466,1,6,468,0),(5473,0,1,467,0),(5474,0,2,467,0),(5475,0,3,467,0),(5476,1,4,467,0),(5477,1,5,467,0),(5478,1,6,467,0),(5497,0,1,26,0),(5498,0,2,26,0),(5499,0,3,26,0),(5500,0,4,26,0),(5501,0,5,26,0),(5502,0,6,26,0),(5617,1,1,493,0),(5618,1,2,493,0),(5619,1,3,493,0),(5620,1,4,493,0),(5621,1,5,493,0),(5622,1,6,493,0),(5623,2,1,494,0),(5624,2,2,494,0),(5625,2,3,494,0),(5626,2,4,494,0),(5627,2,5,494,0),(5628,2,6,494,0),(5647,3,1,495,0),(5648,3,2,495,0),(5649,3,3,495,0),(5650,3,4,495,0),(5651,3,5,495,0),(5652,3,6,495,0),(5659,1,1,497,0),(5660,3,2,497,0),(5661,3,3,497,0),(5662,3,4,497,0),(5663,1,5,497,0),(5664,1,6,497,0),(5665,1,1,498,0),(5666,3,2,498,0),(5667,3,3,498,0),(5668,3,4,498,0),(5669,1,5,498,0),(5670,1,6,498,0),(5671,1,1,499,0),(5672,3,2,499,0),(5673,3,3,499,0),(5674,3,4,499,0),(5675,1,5,499,0),(5676,1,6,499,0),(5677,1,1,496,0),(5678,3,2,496,0),(5679,3,3,496,0),(5680,3,4,496,0),(5681,1,5,496,0),(5682,1,6,496,0),(5683,3,1,500,0),(5684,3,2,500,0),(5685,3,3,500,0),(5686,5,4,500,0),(5687,3,5,500,0),(5688,3,6,500,0),(5695,0,1,501,0),(5696,0,2,501,0),(5697,0,3,501,0),(5698,0,4,501,0),(5699,0,5,501,0),(5700,0,6,501,0),(6301,0,1,464,0),(6302,0,2,464,0),(6303,0,3,464,0),(6304,0,4,464,0),(6305,0,5,464,0),(6306,0,6,464,0),(6397,0,1,646,0),(6398,1,2,646,0),(6399,1,3,646,0),(6400,1,4,646,0),(6401,1,5,646,0),(6402,1,6,646,0),(6403,0,1,645,0),(6404,0,2,645,0),(6405,0,3,645,0),(6406,0,4,645,0),(6407,0,5,645,0),(6408,0,6,645,0),(6421,0,1,647,0),(6422,3,2,647,0),(6423,3,3,647,0),(6424,3,4,647,0),(6425,1,5,647,0),(6426,1,6,647,0),(6427,0,1,648,0),(6428,3,2,648,0),(6429,3,3,648,0),(6430,3,4,648,0),(6431,1,5,648,0),(6432,1,6,648,0),(6463,0,1,465,0),(6464,0,2,465,0),(6465,0,3,465,0),(6466,0,4,465,0),(6467,0,5,465,0),(6468,0,6,465,0),(6469,1,1,466,0),(6470,1,2,466,0),(6471,1,3,466,0),(6472,1,4,466,0),(6473,1,5,466,0),(6474,1,6,466,0),(6475,0,1,463,0),(6476,0,2,463,0),(6477,0,3,463,0),(6478,0,4,463,0),(6479,0,5,463,0),(6480,0,6,463,0),(7009,1,1,68,0),(7010,1,2,68,0),(7011,1,3,68,0),(7012,1,4,68,0),(7013,1,5,68,0),(7014,1,6,68,0),(7039,1,1,398,0),(7040,1,2,398,0),(7041,1,3,398,0),(7042,1,4,398,0),(7043,1,5,398,0),(7044,1,6,398,0),(7321,0,1,813,0),(7322,1,2,813,0),(7323,1,3,813,0),(7324,1,4,813,0),(7325,1,5,813,0),(7326,1,6,813,0),(7375,0,1,814,0),(7376,0,2,814,0),(7377,0,3,814,0),(7378,1,4,814,0),(7379,1,5,814,0),(7380,1,6,814,0),(7381,0,1,815,0),(7382,0,2,815,0),(7383,0,3,815,0),(7384,0,4,815,0),(7385,0,5,815,0),(7386,0,6,815,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=14929 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_characteristic`
--

LOCK TABLES `character_characteristic` WRITE;
/*!40000 ALTER TABLE `character_characteristic` DISABLE KEYS */;
INSERT INTO `character_characteristic` VALUES (1933,4,42,12),(1934,58,42,1),(1935,44,42,2),(1936,55,42,3),(1937,48,42,4),(1938,42,42,5),(1939,43,42,6),(1940,39,42,7),(1941,30,42,8),(1942,40,42,9),(1943,40,42,10),(1944,15,42,11),(2497,3,27,12),(2498,46,27,1),(2499,23,27,2),(2500,50,27,3),(2501,70,27,4),(2502,40,27,5),(2503,24,27,6),(2504,50,27,7),(2505,29,27,8),(2506,54,27,9),(2507,14,27,10),(2508,24,27,11),(2533,4,30,12),(2534,27,30,1),(2535,35,30,2),(2536,26,30,3),(2537,31,30,4),(2538,28,30,5),(2539,41,30,6),(2540,27,30,7),(2541,38,30,8),(2542,31,30,9),(2543,46,30,10),(2544,11,30,11),(2545,3,28,12),(2546,14,28,1),(2547,47,28,2),(2548,30,28,3),(2549,33,28,4),(2550,29,28,5),(2551,32,28,6),(2552,70,28,7),(2553,27,28,8),(2554,45,28,9),(2555,68,28,10),(2556,8,28,11),(3853,4,70,12),(3854,45,70,1),(3855,47,70,2),(3856,42,70,3),(3857,40,70,4),(3858,58,70,5),(3859,47,70,6),(3860,39,70,7),(3861,59,70,8),(3862,60,70,9),(3863,51,70,10),(3864,22,70,11),(4045,6,65,12),(4046,30,65,1),(4047,15,65,2),(4048,55,65,3),(4049,45,65,4),(4050,10,65,5),(4051,15,65,6),(4052,15,65,7),(4053,10,65,8),(4054,20,65,9),(4055,5,65,10),(4056,30,65,11),(4753,4,54,12),(4754,57,54,1),(4755,28,54,2),(4756,54,54,3),(4757,52,54,4),(4758,41,54,5),(4759,33,54,6),(4760,29,54,7),(4761,23,54,8),(4762,30,54,9),(4763,27,54,10),(4764,18,54,11),(6241,4,29,12),(6242,42,29,1),(6243,30,29,2),(6244,40,29,3),(6245,50,29,4),(6246,43,29,5),(6247,45,29,6),(6248,36,29,7),(6249,23,29,8),(6250,40,29,9),(6251,34,29,10),(6252,18,29,11),(6649,4,33,12),(6650,52,33,1),(6651,30,33,2),(6652,55,33,3),(6653,43,33,4),(6654,30,33,5),(6655,40,33,6),(6656,30,33,7),(6657,30,33,8),(6658,30,33,9),(6659,30,33,10),(6660,14,33,11),(6853,4,159,12),(6854,40,159,1),(6855,43,159,2),(6856,40,159,3),(6857,40,159,4),(6858,42,159,5),(6859,34,159,6),(6860,29,159,7),(6861,41,159,8),(6862,33,159,9),(6863,35,159,10),(6864,15,159,11),(6865,4,158,12),(6866,40,158,1),(6867,43,158,2),(6868,40,158,3),(6869,50,158,4),(6870,42,158,5),(6871,34,158,6),(6872,29,158,7),(6873,41,158,8),(6874,33,158,9),(6875,35,158,10),(6876,16,158,11),(6925,4,161,12),(6926,45,161,1),(6927,0,161,2),(6928,40,161,3),(6929,40,161,4),(6930,5,161,5),(6931,10,161,6),(6932,15,161,7),(6933,0,161,8),(6934,0,161,9),(6935,0,161,10),(6936,16,161,11),(6937,4,160,12),(6938,60,160,1),(6939,0,160,2),(6940,45,160,3),(6941,40,160,4),(6942,40,160,5),(6943,35,160,6),(6944,25,160,7),(6945,20,160,8),(6946,40,160,9),(6947,5,160,10),(6948,16,160,11),(6949,4,162,12),(6950,45,162,1),(6951,43,162,2),(6952,51,162,3),(6953,30,162,4),(6954,40,162,5),(6955,28,162,6),(6956,27,162,7),(6957,30,162,8),(6958,31,162,9),(6959,43,162,10),(6960,14,162,11),(6961,4,163,12),(6962,35,163,1),(6963,30,163,2),(6964,40,163,3),(6965,30,163,4),(6966,30,163,5),(6967,30,163,6),(6968,35,163,7),(6969,30,163,8),(6970,30,163,9),(6971,25,163,10),(6972,13,163,11),(7657,4,188,12),(7658,45,188,1),(7659,30,188,2),(7660,35,188,3),(7661,45,188,4),(7662,30,188,5),(7663,35,188,6),(7664,25,188,7),(7665,25,188,8),(7666,30,188,9),(7667,25,188,10),(7668,14,188,11),(7669,4,189,12),(7670,35,189,1),(7671,30,189,2),(7672,30,189,3),(7673,35,189,4),(7674,30,189,5),(7675,35,189,6),(7676,25,189,7),(7677,25,189,8),(7678,35,189,9),(7679,25,189,10),(7680,12,189,11),(7693,6,191,12),(7694,65,191,1),(7695,25,191,2),(7696,55,191,3),(7697,55,191,4),(7698,20,191,5),(7699,35,191,6),(7700,25,191,7),(7701,20,191,8),(7702,30,191,9),(7703,15,191,10),(7704,30,191,11),(7981,4,219,12),(7982,25,219,1),(7983,40,219,2),(7984,35,219,3),(7985,35,219,4),(7986,20,219,5),(7987,35,219,6),(7988,40,219,7),(7989,30,219,8),(7990,20,219,9),(7991,20,219,10),(7992,14,219,11),(7993,4,220,12),(7994,55,220,1),(7995,0,220,2),(7996,35,220,3),(7997,40,220,4),(7998,30,220,5),(7999,55,220,6),(8000,0,220,7),(8001,15,220,8),(8002,15,220,9),(8003,0,220,10),(8004,12,220,11),(9949,4,383,12),(9950,48,383,1),(9951,58,383,2),(9952,51,383,3),(9953,55,383,4),(9954,35,383,5),(9955,57,383,6),(9956,35,383,7),(9957,30,383,8),(9958,34,383,9),(9959,27,383,10),(9960,18,383,11),(9961,4,384,12),(9962,39,384,1),(9963,31,384,2),(9964,31,384,3),(9965,23,384,4),(9966,32,384,5),(9967,29,384,6),(9968,27,384,7),(9969,47,384,8),(9970,39,384,9),(9971,29,384,10),(9972,10,384,11),(9973,4,385,12),(9974,42,385,1),(9975,27,385,2),(9976,29,385,3),(9977,30,385,4),(9978,49,385,5),(9979,40,385,6),(9980,28,385,7),(9981,56,385,8),(9982,52,385,9),(9983,31,385,10),(9984,13,385,11),(10513,4,430,12),(10514,44,430,1),(10515,27,430,2),(10516,31,430,3),(10517,42,430,4),(10518,38,430,5),(10519,40,430,6),(10520,28,430,7),(10521,37,430,8),(10522,31,430,9),(10523,29,430,10),(10524,14,430,11),(10621,4,439,12),(10622,48,439,1),(10623,25,439,2),(10624,44,439,3),(10625,48,439,4),(10626,29,439,5),(10627,33,439,6),(10628,25,439,7),(10629,31,439,8),(10630,36,439,9),(10631,11,439,10),(10632,15,439,11),(10633,0,440,12),(10634,30,440,1),(10635,0,440,2),(10636,10,440,3),(10637,30,440,4),(10638,100,440,5),(10639,30,440,6),(10640,30,440,7),(10641,3,440,8),(10642,0,440,9),(10643,0,440,10),(10644,6,440,11),(10645,4,441,12),(10646,25,441,1),(10647,0,441,2),(10648,30,441,3),(10649,25,441,4),(10650,25,441,5),(10651,35,441,6),(10652,0,441,7),(10653,15,441,8),(10654,15,441,9),(10655,0,441,10),(10656,5,441,11),(10657,4,442,12),(10658,30,442,1),(10659,40,442,2),(10660,30,442,3),(10661,25,442,4),(10662,45,442,5),(10663,35,442,6),(10664,0,442,7),(10665,15,442,8),(10666,15,442,9),(10667,0,442,10),(10668,8,442,11),(10669,3,443,12),(10670,30,443,1),(10671,0,443,2),(10672,20,443,3),(10673,20,443,4),(10674,20,443,5),(10675,30,443,6),(10676,0,443,7),(10677,10,443,8),(10678,15,443,9),(10679,0,443,10),(10680,2,443,11),(10681,4,444,12),(10682,25,444,1),(10683,25,444,2),(10684,30,444,3),(10685,30,444,4),(10686,20,444,5),(10687,20,444,6),(10688,25,444,7),(10689,0,444,8),(10690,0,444,9),(10691,0,444,10),(10692,12,444,11),(10693,4,445,12),(10694,55,445,1),(10695,45,445,2),(10696,45,445,3),(10697,45,445,4),(10698,45,445,5),(10699,20,445,6),(10700,25,445,7),(10701,15,445,8),(10702,40,445,9),(10703,10,445,10),(10704,16,445,11),(10705,4,446,12),(10706,45,446,1),(10707,31,446,2),(10708,38,446,3),(10709,40,446,4),(10710,42,446,5),(10711,40,446,6),(10712,29,446,7),(10713,36,446,8),(10714,28,446,9),(10715,27,446,10),(10716,13,446,11),(10717,4,447,12),(10718,35,447,1),(10719,30,447,2),(10720,35,447,3),(10721,35,447,4),(10722,30,447,5),(10723,30,447,6),(10724,30,447,7),(10725,30,447,8),(10726,30,447,9),(10727,30,447,10),(10728,12,447,11),(10729,4,448,12),(10730,30,448,1),(10731,0,448,2),(10732,20,448,3),(10733,30,448,4),(10734,40,448,5),(10735,20,448,6),(10736,0,448,7),(10737,10,448,8),(10738,20,448,9),(10739,0,448,10),(10740,15,448,11),(10741,0,449,12),(10742,50,449,1),(10743,0,449,2),(10744,50,449,3),(10745,30,449,4),(10746,30,449,5),(10747,0,449,6),(10748,0,449,7),(10749,5,449,8),(10750,0,449,9),(10751,0,449,10),(10752,44,449,11),(10753,0,450,12),(10754,50,450,1),(10755,0,450,2),(10756,20,450,3),(10757,20,450,4),(10758,20,450,5),(10759,0,450,6),(10760,0,450,7),(10761,0,450,8),(10762,0,450,9),(10763,0,450,10),(10764,7,450,11),(10765,0,451,12),(10766,45,451,1),(10767,0,451,2),(10768,20,451,3),(10769,50,451,4),(10770,20,451,5),(10771,0,451,6),(10772,0,451,7),(10773,10,451,8),(10774,10,451,9),(10775,0,451,10),(10776,52,451,11),(10777,4,452,12),(10778,60,452,1),(10779,50,452,2),(10780,40,452,3),(10781,30,452,4),(10782,65,452,5),(10783,60,452,6),(10784,35,452,7),(10785,30,452,8),(10786,70,452,9),(10787,45,452,10),(10788,17,452,11),(10789,0,453,12),(10790,35,453,1),(10791,0,453,2),(10792,20,453,3),(10793,50,453,4),(10794,55,453,5),(10795,0,453,6),(10796,0,453,7),(10797,0,453,8),(10798,0,453,9),(10799,0,453,10),(10800,56,453,11),(10801,0,454,12),(10802,35,454,1),(10803,0,454,2),(10804,20,454,3),(10805,40,454,4),(10806,55,454,5),(10807,0,454,6),(10808,0,454,7),(10809,0,454,8),(10810,0,454,9),(10811,0,454,10),(10812,4,454,11),(10813,4,455,12),(10814,35,455,1),(10815,25,455,2),(10816,30,455,3),(10817,30,455,4),(10818,50,455,5),(10819,45,455,6),(10820,55,455,7),(10821,20,455,8),(10822,30,455,9),(10823,30,455,10),(10824,12,455,11),(10825,5,456,12),(10826,65,456,1),(10827,30,456,2),(10828,55,456,3),(10829,65,456,4),(10830,55,456,5),(10831,65,456,6),(10832,30,456,7),(10833,55,456,8),(10834,65,456,9),(10835,25,456,10),(10836,25,456,11),(10837,5,457,12),(10838,40,457,1),(10839,0,457,2),(10840,20,457,3),(10841,10,457,4),(10842,60,457,5),(10843,40,457,6),(10844,0,457,7),(10845,10,457,8),(10846,20,457,9),(10847,0,457,10),(10848,30,457,11),(10849,4,458,12),(10850,60,458,1),(10851,0,458,2),(10852,60,458,3),(10853,60,458,4),(10854,10,458,5),(10855,10,458,6),(10856,10,458,7),(10857,0,458,8),(10858,0,458,9),(10859,0,458,10),(10860,24,458,11),(10861,4,459,12),(10862,38,459,1),(10863,28,459,2),(10864,28,459,3),(10865,31,459,4),(10866,38,459,5),(10867,37,459,6),(10868,36,459,7),(10869,51,459,8),(10870,50,459,9),(10871,41,459,10),(10872,13,459,11),(10873,6,460,12),(10874,40,460,1),(10875,20,460,2),(10876,45,460,3),(10877,55,460,4),(10878,10,460,5),(10879,25,460,6),(10880,20,460,7),(10881,20,460,8),(10882,40,460,9),(10883,20,460,10),(10884,36,460,11),(10885,5,461,12),(10886,40,461,1),(10887,40,461,2),(10888,30,461,3),(10889,40,461,4),(10890,40,461,5),(10891,45,461,6),(10892,30,461,7),(10893,30,461,8),(10894,20,461,9),(10895,20,461,10),(10896,13,461,11),(10909,4,52,12),(10910,45,52,1),(10911,0,52,2),(10912,40,52,3),(10913,40,52,4),(10914,0,52,5),(10915,20,52,6),(10916,10,52,7),(10917,0,52,8),(10918,0,52,9),(10919,0,52,10),(10920,20,52,11),(10921,4,399,12),(10922,30,399,1),(10923,30,399,2),(10924,30,399,3),(10925,30,399,4),(10926,30,399,5),(10927,30,399,6),(10928,30,399,7),(10929,30,399,8),(10930,30,399,9),(10931,30,399,10),(10932,12,399,11),(11077,4,468,12),(11078,40,468,1),(11079,40,468,2),(11080,40,468,3),(11081,40,468,4),(11082,40,468,5),(11083,40,468,6),(11084,40,468,7),(11085,40,468,8),(11086,40,468,9),(11087,40,468,10),(11088,12,468,11),(11101,4,467,12),(11102,50,467,1),(11103,40,467,2),(11104,40,467,3),(11105,50,467,4),(11106,40,467,5),(11107,40,467,6),(11108,40,467,7),(11109,40,467,8),(11110,40,467,9),(11111,40,467,10),(11112,15,467,11),(11149,3,26,12),(11150,60,26,1),(11151,34,26,2),(11152,44,26,3),(11153,60,26,4),(11154,30,26,5),(11155,19,26,6),(11156,40,26,7),(11157,32,26,8),(11158,65,26,9),(11159,22,26,10),(11160,34,26,11),(11389,5,493,12),(11390,40,493,1),(11391,50,493,2),(11392,30,493,3),(11393,35,493,4),(11394,50,493,5),(11395,50,493,6),(11396,40,493,7),(11397,35,493,8),(11398,30,493,9),(11399,20,493,10),(11400,12,493,11),(11401,5,494,12),(11402,50,494,1),(11403,0,494,2),(11404,40,494,3),(11405,50,494,4),(11406,40,494,5),(11407,30,494,6),(11408,30,494,7),(11409,30,494,8),(11410,50,494,9),(11411,0,494,10),(11412,14,494,11),(11449,4,495,12),(11450,50,495,1),(11451,0,495,2),(11452,60,495,3),(11453,50,495,4),(11454,30,495,5),(11455,20,495,6),(11456,20,495,7),(11457,20,495,8),(11458,20,495,9),(11459,0,495,10),(11460,40,495,11),(11473,4,497,12),(11474,40,497,1),(11475,40,497,2),(11476,40,497,3),(11477,40,497,4),(11478,40,497,5),(11479,35,497,6),(11480,35,497,7),(11481,35,497,8),(11482,35,497,9),(11483,30,497,10),(11484,12,497,11),(11485,4,498,12),(11486,40,498,1),(11487,40,498,2),(11488,40,498,3),(11489,40,498,4),(11490,40,498,5),(11491,35,498,6),(11492,35,498,7),(11493,35,498,8),(11494,35,498,9),(11495,30,498,10),(11496,12,498,11),(11497,4,499,12),(11498,40,499,1),(11499,40,499,2),(11500,40,499,3),(11501,40,499,4),(11502,40,499,5),(11503,35,499,6),(11504,35,499,7),(11505,35,499,8),(11506,35,499,9),(11507,30,499,10),(11508,12,499,11),(11509,4,496,12),(11510,40,496,1),(11511,40,496,2),(11512,40,496,3),(11513,40,496,4),(11514,40,496,5),(11515,35,496,6),(11516,35,496,7),(11517,35,496,8),(11518,35,496,9),(11519,30,496,10),(11520,12,496,11),(11521,4,500,12),(11522,50,500,1),(11523,50,500,2),(11524,40,500,3),(11525,40,500,4),(11526,50,500,5),(11527,35,500,6),(11528,35,500,7),(11529,45,500,8),(11530,45,500,9),(11531,50,500,10),(11532,12,500,11),(11545,4,501,12),(11546,25,501,1),(11547,0,501,2),(11548,20,501,3),(11549,20,501,4),(11550,35,501,5),(11551,30,501,6),(11552,0,501,7),(11553,15,501,8),(11554,10,501,9),(11555,15,501,10),(11556,5,501,11),(12757,4,464,12),(12758,32,464,1),(12759,28,464,2),(12760,27,464,3),(12761,27,464,4),(12762,31,464,5),(12763,40,464,6),(12764,37,464,7),(12765,26,464,8),(12766,25,464,9),(12767,40,464,10),(12768,8,464,11),(12949,4,646,12),(12950,40,646,1),(12951,35,646,2),(12952,40,646,3),(12953,40,646,4),(12954,30,646,5),(12955,30,646,6),(12956,30,646,7),(12957,30,646,8),(12958,30,646,9),(12959,30,646,10),(12960,14,646,11),(12961,4,645,12),(12962,40,645,1),(12963,40,645,2),(12964,40,645,3),(12965,40,645,4),(12966,40,645,5),(12967,40,645,6),(12968,40,645,7),(12969,55,645,8),(12970,55,645,9),(12971,40,645,10),(12972,14,645,11),(12997,4,647,12),(12998,40,647,1),(12999,35,647,2),(13000,35,647,3),(13001,35,647,4),(13002,30,647,5),(13003,30,647,6),(13004,30,647,7),(13005,30,647,8),(13006,30,647,9),(13007,30,647,10),(13008,12,647,11),(13009,4,648,12),(13010,40,648,1),(13011,35,648,2),(13012,35,648,3),(13013,35,648,4),(13014,30,648,5),(13015,30,648,6),(13016,30,648,7),(13017,30,648,8),(13018,30,648,9),(13019,30,648,10),(13020,12,648,11),(13081,4,465,12),(13082,40,465,1),(13083,53,465,2),(13084,42,465,3),(13085,43,465,4),(13086,45,465,5),(13087,41,465,6),(13088,52,465,7),(13089,41,465,8),(13090,46,465,9),(13091,32,465,10),(13092,20,465,11),(13093,4,466,12),(13094,36,466,1),(13095,40,466,2),(13096,30,466,3),(13097,33,466,4),(13098,30,466,5),(13099,30,466,6),(13100,24,466,7),(13101,28,466,8),(13102,40,466,9),(13103,40,466,10),(13104,15,466,11),(13105,4,463,12),(13106,30,463,1),(13107,29,463,2),(13108,31,463,3),(13109,31,463,4),(13110,31,463,5),(13111,27,463,6),(13112,29,463,7),(13113,37,463,8),(13114,41,463,9),(13115,27,463,10),(13116,13,463,11),(14173,4,68,12),(14174,45,68,1),(14175,47,68,2),(14176,42,68,3),(14177,40,68,4),(14178,58,68,5),(14179,47,68,6),(14180,39,68,7),(14181,59,68,8),(14182,60,68,9),(14183,51,68,10),(14184,18,68,11),(14233,4,398,12),(14234,60,398,1),(14235,0,398,2),(14236,50,398,3),(14237,50,398,4),(14238,5,398,5),(14239,10,398,6),(14240,15,398,7),(14241,0,398,8),(14242,0,398,9),(14243,0,398,10),(14244,20,398,11),(14797,5,813,12),(14798,35,813,1),(14799,50,813,2),(14800,30,813,3),(14801,30,813,4),(14802,40,813,5),(14803,45,813,6),(14804,45,813,7),(14805,30,813,8),(14806,30,813,9),(14807,30,813,10),(14808,12,813,11),(14905,4,814,12),(14906,45,814,1),(14907,30,814,2),(14908,50,814,3),(14909,40,814,4),(14910,30,814,5),(14911,30,814,6),(14912,30,814,7),(14913,30,814,8),(14914,30,814,9),(14915,30,814,10),(14916,15,814,11),(14917,4,815,12),(14918,35,815,1),(14919,30,815,2),(14920,30,815,3),(14921,35,815,4),(14922,40,815,5),(14923,40,815,6),(14924,40,815,7),(14925,40,815,8),(14926,50,815,9),(14927,50,815,10),(14928,12,815,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=1729 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_creature_trait`
--

LOCK TABLES `character_creature_trait` WRITE;
/*!40000 ALTER TABLE `character_creature_trait` DISABLE KEYS */;
INSERT INTO `character_creature_trait` VALUES (13,'0',52,76),(14,NULL,52,83),(15,NULL,52,82),(16,'2',52,66),(17,'+6',52,80),(119,'+9',70,80),(120,'+8',70,24),(121,NULL,70,74),(122,NULL,70,59),(123,'(Purpurowa Gorączka Mózgowa))',70,84),(124,'(Umiarkowane)',70,21),(125,'2',70,31),(126,NULL,70,36),(127,NULL,70,50),(128,NULL,70,85),(155,NULL,65,62),(156,NULL,65,25),(157,NULL,65,56),(158,'Duży',65,57),(159,NULL,65,71),(160,'+8',65,9),(161,NULL,65,77),(162,NULL,65,42),(792,NULL,33,62),(793,'(Pomniejsze)',33,21),(822,NULL,161,19),(823,NULL,161,51),(824,NULL,161,73),(825,NULL,161,56),(826,'(Pomniejsze)',161,21),(827,'2',161,31),(828,NULL,161,50),(829,NULL,160,28),(830,'-10',160,76),(831,NULL,160,73),(832,'+5',160,9),(833,NULL,160,50),(834,NULL,160,42),(835,NULL,160,39),(836,'2',160,31),(841,NULL,188,34),(842,NULL,188,3),(843,'+6',188,38),(844,NULL,188,50),(845,NULL,189,3),(846,NULL,189,50),(851,NULL,191,34),(852,NULL,191,3),(853,'+9',191,38),(854,NULL,191,50),(855,NULL,191,39),(856,'(Duży)',191,57),(857,NULL,191,6),(869,'(Krasnoludy)',219,37),(870,'(Elfy)',219,1),(871,NULL,219,36),(872,NULL,219,50),(873,NULL,219,42),(874,'+7',220,80),(875,NULL,220,61),(876,NULL,220,72),(877,'(Wierzchowiec)',220,69),(878,NULL,220,50),(879,NULL,220,7),(1502,'(Umiarkowane)',385,21),(1503,'1',385,32),(1520,'+7',33,38),(1521,NULL,398,19),(1522,'x4 +7',398,66),(1523,NULL,398,51),(1524,NULL,398,74),(1525,NULL,398,73),(1526,'2',398,31),(1527,NULL,398,23),(1528,NULL,399,43),(1540,'1',439,21),(1541,NULL,439,79),(1542,'3',440,80),(1543,NULL,440,51),(1544,NULL,440,41),(1545,'(Mały)',440,57),(1546,NULL,440,7),(1547,'4',441,80),(1548,NULL,441,61),(1549,NULL,441,20),(1550,NULL,441,58),(1551,'(Mały)',441,57),(1552,'(Pomniejsze)',441,21),(1553,NULL,441,50),(1554,NULL,441,42),(1555,NULL,441,7),(1556,'+6',442,80),(1557,'90',442,32),(1558,NULL,442,58),(1559,'(Średni)',442,57),(1560,'+5',442,9),(1561,NULL,442,23),(1562,'+6 (Trucizna)',442,12),(1563,NULL,442,7),(1564,NULL,443,63),(1565,NULL,443,41),(1566,'(Niewielki)',443,57),(1567,'+3',443,9),(1568,NULL,443,23),(1569,NULL,443,17),(1570,NULL,443,7),(1571,NULL,443,39),(1572,NULL,444,19),(1573,NULL,444,51),(1574,NULL,444,73),(1575,'2',444,31),(1576,NULL,444,23),(1577,NULL,444,42),(1578,NULL,445,14),(1579,NULL,445,51),(1580,NULL,445,73),(1581,'2',445,31),(1582,NULL,445,23),(1583,NULL,445,42),(1584,'+5',448,80),(1585,'(Niewielki)',448,57),(1586,NULL,448,64),(1587,NULL,448,50),(1588,NULL,448,42),(1589,NULL,448,7),(1590,'+5',449,80),(1591,NULL,449,51),(1592,NULL,449,41),(1593,'(Wielki)',449,57),(1594,'+5',449,9),(1595,NULL,449,7),(1596,NULL,450,18),(1597,NULL,450,51),(1598,NULL,450,41),(1599,'x5 +5',451,66),(1600,'(Wielki)',451,57),(1601,NULL,451,41),(1602,NULL,451,7),(1603,'+9',452,80),(1604,NULL,452,14),(1605,NULL,452,27),(1606,'8+',452,24),(1607,NULL,452,74),(1608,'(Umiarkowane)',452,21),(1609,'2',452,31),(1610,NULL,452,50),(1611,NULL,453,27),(1612,NULL,453,19),(1613,NULL,453,41),(1614,'(Wielki)',453,57),(1615,NULL,454,18),(1616,NULL,454,19),(1617,'+3',454,66),(1618,NULL,454,56),(1619,NULL,456,14),(1620,NULL,456,16),(1621,NULL,456,30),(1622,NULL,456,71),(1623,NULL,457,64),(1624,NULL,457,7),(1625,'(Pomniejsze)',457,21),(1626,'(Pięści) +10',458,80),(1627,NULL,458,8),(1628,NULL,458,34),(1629,NULL,458,19),(1630,NULL,458,41),(1631,'(3)',458,31),(1632,NULL,460,50),(1633,NULL,461,58),(1634,NULL,461,72),(1635,NULL,461,50),(1636,NULL,461,42),(1637,'+7',494,80),(1638,NULL,494,56),(1639,'1',494,31),(1640,'(Wielki)',495,57),(1641,'+9',495,80),(1642,'+5',501,80),(1643,NULL,501,61),(1644,NULL,501,58),(1645,'(Mały)',501,57),(1646,NULL,501,50),(1647,NULL,501,7);
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
INSERT INTO `character_entity` VALUES (26,'Postać Piotra Ż. - Krasnolud',_binary '','Throngroth Hegalison','Bohaterowie','Główne',NULL,'BASE'),(27,'Postać Piotra P. - Krasnolud',_binary '','Ullagrund Ganddreng','Bohaterowie','Główne',NULL,'BASE'),(28,'Postać Huberta - Niziołek',_binary '','Nobbi Wesołek','Bohaterowie','Główne',NULL,'BASE'),(29,'Postać Kuby - Człowiek',_binary '','Rygar','Bohaterowie','Główne',NULL,'BASE'),(30,'Postać Klaudii - Człowiek',_binary '','Renia Sianko','Bohaterowie','Główne',NULL,'BASE'),(33,'Mutant, Zbój',_binary '','Mutant','Mutanci','Poboczne',NULL,'BASE'),(42,'Kapitan barki \"Lyan\"',_binary '','Marcus','Główni BN','Główne',NULL,'BASE'),(52,'Potwór z kanałów',_binary '','Ameba','Potwory','Poboczne',NULL,'BASE'),(54,'Gladiator',_binary '','Gladiator','Zawodnicy','Poboczne',NULL,'BASE'),(65,'Troll',_binary '','Troll','Potwory','Poboczne',NULL,'BASE'),(68,'Człowiek, Demonolog i Patrycjusz',_binary '','Johannes Teugen','Główni BN','Główne',NULL,'BASE'),(70,'Sheru-Tar Gee\'Taru - Herold Tzeentcha',_binary '','Gideon','Główni BN','Główne',NULL,'BASE'),(158,'Herszt piratów',_binary '','Herszt','Piraci Rzeczni','Poboczne',NULL,'BASE'),(159,'Pirat Rzeczny',_binary '','Pirat','Piraci Rzeczni','Poboczne',NULL,'BASE'),(160,'Ghoul z wieży semafora',_binary '','Ghoul Czempion','Nieumarli','Poboczne',NULL,'BASE'),(161,'',_binary '','Zombi z wieży Semafora','Nieumarli','Poboczne',NULL,'BASE'),(162,'Straż',_binary '','Kapitan Straży','Straż','Poboczne',NULL,'BASE'),(163,'Straż',_binary '','Rekrut Straży','Straż','Poboczne',NULL,'BASE'),(188,'',_binary '','Gor','Zwierzoludzie','Poboczne',NULL,'BASE'),(189,'',_binary '','Ungor','Zwierzoludzie','Poboczne',NULL,'BASE'),(191,'',_binary '','Minotaur','Zwierzoludzie','Poboczne',NULL,'BASE'),(219,'Plemię Wykrzywionej Paszczy',_binary '','Goblin','Zielonoskórzy','Poboczne',NULL,'BASE'),(220,'',_binary '','Wielki Wilk','Zwierzęta','Poboczne',NULL,'BASE'),(383,'Najemnik',_binary '','Oswald','Główni BN','Główne',NULL,'BASE'),(384,'Uczeń Czarodzieja',_binary '','Ernst Heidlemann','Główni BN','Główne',NULL,'BASE'),(385,'Mistrzyni Magii',_binary '','Etelka Herzen','Główni BN','Główne',NULL,'BASE'),(398,'Utworzony po otwarciu fiolki ze spaczeniem w domu lekarza',_binary '','Chaotyczny trup','Zamek Wittgenstein','Główne',NULL,'BASE'),(399,'',_binary '','Kanibal','Ludzie','Poboczne',NULL,'BASE'),(430,'',_binary '','Kratz, Sierżant Strażników z Wittgendorfu','Zamek Wittgenstein','Główne',NULL,'BASE'),(439,'',_binary '','Mutant Brutagh','Zamek Wittgenstein','Główne',NULL,'BASE'),(440,'',_binary '','Chłościciel','Zamek Wittgenstein','Główne',NULL,'BASE'),(441,'',_binary '','Olbrzymi Szczur','Zwierzęta','Poboczne',NULL,'BASE'),(442,'',_binary '','Olbrzymie Nietoperze','Zamek Wittgenstein','Główne',NULL,'BASE'),(443,'',_binary '','Olbrzymia Pijawka','Zamek Wittgenstein','Główne',NULL,'BASE'),(444,'',_binary '','Szkielety','Zamek Wittgenstein','Główne',NULL,'BASE'),(445,'',_binary '','Georg Hegel, Szkielet, Dawny Kapitan Straży','Zamek Wittgenstein','Główne',NULL,'BASE'),(446,'',_binary '','Shif Doppler, Porucznik Strażników','Zamek Wittgenstein','Główne',NULL,'BASE'),(447,'',_binary '','Banita','Zamek Wittgenstein','Główne',NULL,'BASE'),(448,'',_binary '','Rój Szczurów','Zamek Wittgenstein','Główne',NULL,'BASE'),(449,'',_binary '','Paszcza z Ogrodu','Zamek Wittgenstein','Główne',NULL,'BASE'),(450,'',_binary '','Winorośle Paszczy z Ogrodu','Zamek Wittgenstein','Główne',NULL,'BASE'),(451,'',_binary '','Coś z Jamy','Zamek Wittgenstein','Główne',NULL,'BASE'),(452,'',_binary '','Pomniejszy Demon Slaanesha','Zamek Wittgenstein','Główne',NULL,'BASE'),(453,'',_binary '','Chaotyczne Organy','Zamek Wittgenstein','Główne',NULL,'BASE'),(454,'',_binary '','Macki Chaotycznych Organów','Zamek Wittgenstein','Główne',NULL,'BASE'),(455,'',_binary '','Kurt von Wittgenstein','Zamek Wittgenstein','Główne',NULL,'BASE'),(456,'',_binary '','Ulfhednar Niszczyciel','Zamek Wittgenstein','Główne',NULL,'BASE'),(457,'',_binary '','Zmutowane koty','Zamek Wittgenstein','Główne',NULL,'BASE'),(458,'',_binary '','Potwór Wittgensteinów','Zamek Wittgenstein','Główne',NULL,'BASE'),(459,'',_binary '','Lady Magritte Von Wittgenstein','Zamek Wittgenstein','Główne',NULL,'BASE'),(460,'',_binary '','Slagdarg - Zmutowany Ogrzy Oprawca','Zamek Wittgenstein','Główne',NULL,'BASE'),(461,'',_binary '','Skaveński Wojownik','Skaveny','Poboczne',NULL,'BASE'),(463,'Postać Konrada - Czarodziej Metalu - Uczeń Alchemika',_binary '','Ignacius Graf','Bohaterowie Przygód','Główne','Brąz 4','BASE'),(464,'Postać Huberta - Kuglarz - Muzykant',_binary '','Ruprecht Dunkelherz','Bohaterowie Przygód','Główne','Brąz 3','BASE'),(465,'Postać Olka - Traper - Łowca',_binary '','Aesmaloc Jesienny Liść','Bohaterowie Przygód','Główne','Brąz 2','BASE'),(466,'Postać Piotrka - Łowca Czarownic - Oprawca',_binary '','Grodon Ramsey','Bohaterowie Przygód','Główne','Srebro 1','BASE'),(467,'',_binary '','Kultysta - Weteran','Ludzie','Poboczne',NULL,'BASE'),(468,'',_binary '','Kultysta','Ludzie','Poboczne',NULL,'BASE'),(493,'',_binary '','Eonir - otumaniony','Leśne Elfy','Poboczne',NULL,'BASE'),(494,'',_binary '','Driada','Leśne Elfy','Poboczne',NULL,'BASE'),(495,'',_binary '','Nieumarły Drzewiec','Leśne Elfy','Poboczne',NULL,'BASE'),(496,'',_binary '','Miecznik','Armia Imperialna','Poboczne',NULL,'BASE'),(497,'',_binary '','Halabardnik','Armia Imperialna','Poboczne',NULL,'BASE'),(498,'',_binary '','Kusznik','Armia Imperialna','Poboczne',NULL,'BASE'),(499,'',_binary '','Muszkieter','Armia Imperialna','Poboczne',NULL,'BASE'),(500,'',_binary '','Kapitan','Armia Imperialna','Poboczne',NULL,'BASE'),(501,'Pies Ruprechta',_binary '','Funfel','Bohaterowie Przygód','Główne',NULL,'BASE'),(645,'',_binary '','Malivia','Kultyści - Przygody','Główne',NULL,'BASE'),(646,'',_binary '','Aleks','Kultyści - Przygody','Główne',NULL,'BASE'),(647,'',_binary '','Kultysta','Kultyści - Przygody','Główne',NULL,'BASE'),(648,'',_binary '','Kultysta - sojusznik','Kultyści - Przygody','Główne',NULL,'BASE'),(813,'',_binary '','Irys','Cyrkowcy','Główne',NULL,'BASE'),(814,'',_binary '','Hektor','Cyrkowcy','Główne',NULL,'BASE'),(815,'',_binary '','Otto Wielki','Cyrkowcy','Główne',NULL,'BASE');
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
) ENGINE=InnoDB AUTO_INCREMENT=1624 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_skill`
--

LOCK TABLES `character_skill` WRITE;
/*!40000 ALTER TABLE `character_skill` DISABLE KEYS */;
INSERT INTO `character_skill` VALUES (169,73,42,14),(170,50,42,36),(171,49,42,123),(172,47,42,37),(173,64,42,44),(174,82,42,105),(175,65,42,28),(176,50,42,96),(473,55,68,28),(474,73,68,26),(475,74,68,70),(476,80,68,57),(482,53,54,15),(483,74,54,25),(596,50,159,96),(597,49,159,15),(599,58,158,96),(600,49,158,15),(601,57,162,28),(602,55,162,96),(603,55,162,27),(604,48,162,26),(605,35,162,17),(606,40,162,13),(607,48,162,38),(608,39,162,15),(609,40,163,28),(610,35,163,38),(611,35,163,15),(699,35,219,28),(700,50,219,97),(701,30,219,38),(1142,77,383,8),(1143,63,383,28),(1144,68,383,98),(1145,37,383,10),(1146,37,383,27),(1147,40,383,42),(1148,72,383,17),(1149,40,383,48),(1150,55,383,38),(1152,61,383,118),(1154,45,383,47),(1156,45,383,37),(1158,45,383,119),(1159,66,383,12),(1160,66,383,25),(1162,45,384,28),(1163,37,384,26),(1164,54,384,70),(1165,37,384,38),(1166,32,384,15),(1167,51,384,78),(1168,52,385,28),(1169,36,385,27),(1170,59,385,26),(1171,69,385,70),(1172,67,385,67),(1173,64,385,13),(1174,57,385,38),(1175,46,385,15),(1176,68,385,78),(1177,62,385,128),(1225,45,430,8),(1226,54,430,32),(1227,49,430,28),(1228,34,430,27),(1229,48,430,26),(1230,52,430,17),(1231,41,430,13),(1232,48,430,38),(1233,50,430,15),(1306,58,439,28),(1307,35,439,38),(1308,70,445,28),(1309,55,445,38),(1310,50,446,8),(1311,52,446,28),(1312,58,446,32),(1313,41,446,97),(1314,32,446,27),(1315,41,446,65),(1316,50,446,17),(1317,50,446,15),(1318,50,446,25),(1319,35,447,8),(1320,40,447,28),(1321,35,447,97),(1322,40,447,17),(1323,35,447,37),(1324,45,455,29),(1325,75,456,35),(1326,80,458,29),(1327,43,459,28),(1328,43,459,31),(1329,63,459,70),(1330,43,459,15),(1331,50,460,28),(1332,50,461,28),(1333,55,461,15),(1334,0,459,57),(1335,85,28,124),(1336,73,28,89),(1337,57,28,102),(1338,48,28,47),(1339,71,28,24),(1340,32,27,69),(1341,60,27,123),(1342,39,27,63),(1343,32,27,79),(1344,50,29,46),(1345,24,29,50),(1346,35,29,97),(1347,31,29,102),(1348,55,29,105),(1349,25,30,97),(1350,65,30,96),(1379,46,464,8),(1380,37,464,28),(1381,46,464,82),(1382,44,466,28),(1383,44,466,13),(1384,50,466,96),(1406,60,645,61),(1407,45,645,15),(1408,60,645,70),(1409,45,645,34),(1410,50,646,28),(1622,1,815,62),(1623,1,815,70);
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
INSERT INTO `character_spell` VALUES (645,57),(645,30),(645,59),(645,33),(645,29),(645,63),(463,24),(463,15),(463,6),(463,17),(815,110),(815,108),(815,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=2836 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_talent`
--

LOCK TABLES `character_talent` WRITE;
/*!40000 ALTER TABLE `character_talent` DISABLE KEYS */;
INSERT INTO `character_talent` VALUES (170,1,42,212),(171,1,42,83),(172,1,42,141),(324,1,27,151),(325,1,27,157),(326,1,27,127),(327,1,27,198),(328,1,27,135),(329,1,27,212),(330,1,26,198),(331,1,26,156),(332,1,26,135),(333,1,26,151),(334,1,26,157),(335,1,26,69),(336,1,26,87),(337,1,30,176),(338,1,30,151),(339,1,30,10),(340,1,28,178),(533,1,52,145),(598,1,68,144),(599,1,68,220),(600,1,68,170),(632,2,54,64),(633,1,54,158),(634,1,54,118),(1085,1,158,91),(1269,1,26,127),(1270,1,26,76),(1271,1,26,177),(1272,2,26,158),(1273,2,26,92),(1274,1,27,58),(1275,1,28,135),(1276,1,28,136),(1277,1,28,125),(1278,1,28,156),(1279,1,28,58),(1280,1,28,6),(1281,1,28,212),(1282,1,28,61),(1283,1,29,199),(1284,1,29,67),(1285,1,29,212),(1286,1,29,58),(1287,1,29,122),(1288,1,29,191),(1289,1,29,135),(1290,1,29,154),(1291,1,29,193),(1292,1,29,211),(1293,1,30,26),(1369,2,219,1),(1564,1,26,104),(1565,1,30,72),(1566,1,28,72),(1847,1,383,194),(1848,1,383,152),(1849,1,383,193),(1850,1,383,191),(1853,1,384,165),(1854,1,384,85),(1855,1,384,151),(1856,1,384,144),(1857,1,384,3),(1858,1,385,23),(1859,1,385,151),(1860,1,385,49),(1861,1,385,144),(1862,1,385,170),(1863,3,385,107),(1864,1,385,126),(1865,1,385,7),(1932,1,399,142),(2155,2,430,68),(2156,1,430,158),(2157,1,430,193),(2158,1,430,191),(2159,1,430,175),(2172,2,445,51),(2173,1,445,158),(2174,2,445,175),(2175,1,445,89),(2176,2,446,68),(2177,1,446,158),(2178,2,446,191),(2179,1,455,9),(2180,1,455,87),(2181,3,458,24),(2182,1,459,144),(2183,1,459,20),(2184,2,461,175),(2185,1,29,194),(2186,1,30,61),(2188,1,465,211),(2189,1,465,163),(2190,1,465,92),(2191,1,465,135),(2192,1,465,2),(2193,1,465,207),(2194,1,463,23),(2195,1,463,165),(2196,1,463,67),(2197,1,463,143),(2198,1,463,198),(2199,1,463,144),(2200,1,463,151),(2201,1,463,7),(2202,1,463,170),(2203,1,464,134),(2204,1,464,22),(2205,1,464,85),(2206,1,464,23),(2207,1,466,23),(2208,1,466,199),(2209,1,466,151),(2210,1,466,9),(2211,1,466,67),(2212,1,466,92),(2213,1,466,56),(2214,1,467,150),(2215,1,467,43),(2294,1,493,135),(2444,1,466,129),(2445,1,466,133),(2525,1,645,12),(2526,1,645,7),(2527,1,645,170),(2528,1,645,107),(2542,1,465,129);
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
) ENGINE=InnoDB AUTO_INCREMENT=1129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_weapon`
--

LOCK TABLES `character_weapon` WRITE;
/*!40000 ALTER TABLE `character_weapon` DISABLE KEYS */;
INSERT INTO `character_weapon` VALUES (1,1,27,60),(2,1,27,2),(3,1,26,2),(4,2,26,60),(5,1,26,23),(6,1,29,33),(7,1,29,55),(8,1,30,2),(9,1,30,66),(10,1,30,30),(11,1,30,52),(12,1,28,2),(13,1,28,44),(14,1,28,59),(15,1,28,58),(17,1,188,60),(18,1,188,5),(19,1,189,60),(21,1,162,66),(22,1,162,5),(23,1,162,2),(24,1,163,60),(25,1,163,5),(26,1,163,2),(27,1,191,23),(34,1,219,66),(35,1,219,6),(36,1,219,34),(37,20,219,55),(447,1,26,25),(612,1,383,66),(613,1,383,2),(614,1,383,6),(615,1,383,37),(616,25,383,57),(620,1,384,66),(621,1,385,66),(622,1,385,2),(641,1,33,66),(642,1,33,60),(643,1,33,63),(649,1,399,1),(733,1,430,14),(734,1,430,5),(772,1,439,60),(773,1,444,66),(774,1,445,22),(775,1,445,37),(776,60,445,57),(777,1,446,14),(778,1,446,12),(779,1,446,5),(780,1,447,60),(781,1,447,33),(782,24,447,55),(783,1,455,66),(784,1,456,26),(785,1,460,63),(786,1,461,66),(787,1,461,5),(788,1,28,45),(789,1,27,5),(790,1,29,5000),(791,1,29,5001),(792,1,463,21),(793,1,465,60),(794,1,465,33),(795,10,465,55),(796,1,466,66),(797,1,466,2),(798,1,466,30),(799,8,466,52),(800,1,467,60),(801,1,467,66),(802,1,467,2),(803,1,467,37),(804,10,467,57),(805,1,468,60),(806,1,468,66),(807,1,468,2),(808,1,468,37),(809,10,468,57),(834,1,493,108),(835,1,493,107),(836,1,496,66),(837,1,496,5),(842,1,497,66),(843,1,497,18),(844,1,498,66),(845,1,498,37),(846,12,498,57),(847,1,499,66),(848,1,499,29),(849,12,499,52),(850,1,496,2),(851,1,500,66),(852,1,500,5),(853,1,500,2),(854,1,500,30),(855,12,500,52),(937,6,466,54),(962,1,464,2),(982,1,645,21),(983,1,647,66),(984,1,647,60),(985,1,647,19),(986,1,647,2),(987,1,647,37),(988,12,647,57),(989,1,648,66),(990,1,648,60),(991,1,648,19),(992,1,648,2),(993,1,648,37),(994,12,648,57),(1123,12,813,51),(1124,1,813,2),(1126,1,814,12),(1127,1,814,60),(1128,1,815,66);
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
INSERT INTO `hibernate_sequences` VALUES ('default',815);
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
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
INSERT INTO `note` VALUES (254,'67 złotych koron, sztylet, mikstura lotu, onyksowa różdżka, podróżny sakwojaż, złote kolczyki (każdy wart 10 złotych koron), złote pierścionki (dwa, każdy wart 15 złotych koron)',385),(258,'Wyposażenie: 33 złote korony, 15 srebrnych szylingów i 3 brązowe pensy, miecz, podróżny sakwojaż (zawiera osobisty dobytek i 8 fiolek czerwonego płynu, mikstury potrzebnej do złagodzenia objawów jego Wycieńczajacej Choroby)',384),(271,'Strażnicy paskudnie cuchną i każdy w zasięgu 2 metrów od jednego z nich musi zdać Wymagający (+0) Test Odporności albo na czas potyczki otrzyma karę -10 do Walki Wręcz. Pod kolczugami i za opuszczonymi zasłonami hełmów ich ciała są masa gnijącego mięsa. Każdy, kto zobaczy odsłonięty oblicze lub ciało strażnika, musi zdać Test Strachu (2) albo przerażony stanie jak wryty w miejscu.',430),(272,'Mutacja - Długa Szyja',439),(273,'Mutacja - Chityna',439),(274,'Mutacja - Przyssawki na dłoniach i stopach - może wspinać się po ścianach',439),(275,'Chłościciele są niezwykle szybkie i zawsze atakują pierwsze, nawet jeśli ich ofiara jest świadoma ich obecności.',440),(276,'Jeśli Pijawka zada obrażenia, przysysa się do ofiary, powodując Stan Krwawienie, dopóki nie zostanie zabita albo się nie nasyci. Aby sprawdzić, czy pijawka się najadła, rzuć w każdej Rundzie 1k10: 9 lub 10 oznacza, że się nasyciła i sama odpada, w przeciwnym razie kontynuuje pożywianie się. Ogień lub inne drażniące substancje (sól, kwas itp.) spowodują, że pijawka odessie się i spróbuje uciec. Oderwanie jej od rany powoduje 1 poziom Stanu Krawawienie.',443),(277,'Mutacja - Obrotowa głowa - może obracać głową i ramionami o 360 stopni. Może dzięki temu udawać martwego - Test Leczenia (+40) pozwoli przejrzeć ten fortel.',446),(278,'Paszcza otwiera sie szeroko, odsłaniajac jasnozielone żeby i wnetrze wypełnione chorobliwie zielona posoka. Bohater, który zostanie przyciagniety 6 metrów przez winorośla, znajdzie sie w zasięgu ugryzienia. Wykonaj normalny rzut na trafienie. Każda postać, której Żywotnosc w wyniku tego ataku spadnie do 0, zostaje połknięta w następnej Rundzie.',449),(279,'Udany atak chwyta oare w Zapasy, ale nie zadaje Obrazen. Zamiast tego ofiara zostaje przyciagnieta 2 metry blizej do paszczy za kazdy poziom Stanu Pochwycenie. Siłujac sie z ofiarą w Zapasach, winorosl jest traktowana jako Bezbronny cel.',450),(280,'Kazde ramie Czegos ma 5 punktów Zywotnosci – zadanie mu tylu Ran w ramach Ataku Mierzonego odcina konczyne, usuwajac wszystkie poziomy Stanu Pochwycenie z dowolnego Bohatera trzymanego przez to ramie. Uszkodzenie ramienia nie zmniejsza Zywotnosci samego Czegos, a kolejne ramie zastapi odciete w nastepnej Rundzie. Jedynie ataki wymierzone w miesista mase samego Czegos obnizaja Zywotnosc stwora.',451),(281,'Gdy jego Zywotnosc spadnie do 0, Cos wpadnie w przedsmiertne drgawki: podłoga zacznie falowac, a sciany pekac. Kazdy Bohater w jamie moze uciec po drabinie na dziedziniec, ale ci, którzy opóznia swoja ucieczke o wiecej niz 3 Rundy, zostana uwiezieni wewnatrz Czegos, gdy istota zapadnie sie w siebie. Uwiezieni awanturnicy zaczna sie dusic po upływie tylu Rund, ile wynosi ich Bonus z Wytrzymałosci +2. Mozna ich przedtem wydostac wciąż zywych, rozcinajac miesista mase. Zadanie 10 Ran wystarczy, by uwolnic Bohatera.',451),(282,'Pamietaj, ze oprócz innych efektów Cos podwaja zadawane Obrazenia istotom Srednim oraz potraja zadawane Małym przeciwnikom.',451),(283,'Organy są bezbronnym celem',453),(284,'Mackę można odciąć tylko poprzez zadanie 6 lub więcej Ran na skutek pojedynczego ataku tnącą bronią. Wszelkie inne obrażenia zostają natychmiast zregenerowane.',454),(285,'Pochwycony cel jest traktowany jako Bezbronny',454),(286,'Mutacja - Cztery ręce',455),(288,'Ma różdżkę z gagatu, która obniża PZ każdego rzucanego zaklęcia z jej użyciem o 2.',459),(289,'Maskotka - +10 do Testów Sztuki, Muzyki, Występów.',501),(291,'+2 PS do splatania ze względu na szatę i magiczny kostur.\n',645),(292,'Każdy żywy cel zaklęcia Tradycji Śmierci otrzymuje również 1 pkt Zmęczenia.',645);
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
) ENGINE=InnoDB AUTO_INCREMENT=5002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapon`
--

LOCK TABLES `weapon` WRITE;
/*!40000 ALTER TABLE `weapon` DISABLE KEYS */;
INSERT INTO `weapon` VALUES (1,1,'-',_binary '',_binary '\0','IMPROVISED_WEAPON','Broń improwizowana','-',0,3,1,7,1,_binary ''),(2,2,'0',_binary '',_binary '\0','DAGGER','Sztylet','16S',0,1,1,9,1,_binary ''),(3,1,'0',_binary '',_binary '\0','KNIFE','Nóż','8S',0,1,1,9,1,_binary ''),(4,1,'0',_binary '',_binary '\0','SHIELD_BUCKLER','Tarcza (puklerz)','18S 2P',0,1,6,4,1,_binary ''),(5,2,'1',_binary '',_binary '\0','SHIELD','Tarcza','2GC',0,1,6,9,1,_binary ''),(6,3,'3',_binary '',_binary '\0','SHIELD_LARGE','Tarcza (duża)','3GC',0,1,6,9,1,_binary ''),(7,5,'3',_binary '',_binary '\0','CAVALRY_HAMMER','Młot kawaleryjski','3GC',0,5,2,2,1,_binary ''),(8,6,'3',_binary '',_binary '\0','LANCE','Kopia','1GC',0,5,2,8,1,_binary ''),(9,3,'1',_binary '',_binary '\0','FOIL','Floret','5GC',0,5,3,1,1,_binary ''),(10,4,'1',_binary '',_binary '\0','RAPIER','Rapier','5GC',0,5,3,2,1,_binary ''),(11,0,'-',_binary '',_binary '\0','UNARMED','Pięści i kopniaki','-',0,3,4,4,1,_binary ''),(12,2,'0',_binary '',_binary '\0','KNUCKLEDUSTERS','Kastet','2S 6P',0,1,4,4,1,_binary ''),(13,3,'1',_binary '',_binary '\0','GRAIN_FLAIL','Cep bojowy','10S',0,1,5,1,1,_binary ''),(14,5,'1',_binary '',_binary '\0','FLAIL','Korbacz','2GC',0,5,5,1,1,_binary ''),(15,6,'2',_binary '',_binary '\0','MILITARY_FLAIL','Kiścień','3GC',0,4,5,2,1,_binary ''),(16,2,'0',_binary '',_binary '\0','MAIN_GAUCHE','Lewak','1GC',0,4,6,9,1,_binary ''),(17,3,'1',_binary '',_binary '\0','SWORDBRAKER','Łamacz mieczy','1GC 2S',0,5,6,6,1,_binary ''),(18,4,'3',_binary '',_binary '\0','HALBERD','Halabarda','2GC',0,1,7,2,1,_binary ''),(19,4,'2',_binary '',_binary '\0','SPEAR','Włócznia','15S',0,1,7,8,1,_binary ''),(20,4,'4',_binary '',_binary '\0','PIKE','Pika','18S',0,4,7,3,1,_binary ''),(21,4,'2',_binary '',_binary '\0','QUARTER_STAFF','Kostur','3S',0,1,7,2,1,_binary ''),(22,5,'3',_binary '',_binary '\0','BASTARD_SWORD','Półtorak','8GC',0,5,8,2,1,_binary ''),(23,6,'3',_binary '',_binary '\0','GREAT_AXE','Wielki topór','4GC',0,5,8,2,1,_binary ''),(24,5,'3',_binary '',_binary '\0','PICK','Nadziak','9S',0,1,8,1,1,_binary ''),(25,6,'3',_binary '',_binary '\0','2H_WARHAMMER','Dwuręczny młot bojowy','3GC',0,1,8,1,1,_binary ''),(26,5,'3',_binary '',_binary '\0','ZWEIHANDER','Miecz dwuręczny','10GC',0,5,8,2,1,_binary ''),(27,8,'1',_binary '\0',_binary '\0','BLUNDERBUSS','Garłacz','2GC',20,5,9,5,2,_binary ''),(28,9,'3',_binary '\0',_binary '\0','HOCHLAND_LONG_RIFLE','Muszkiet hochlandzki','100GC',100,2,9,5,2,_binary ''),(29,9,'2',_binary '\0',_binary '\0','HANDGUN','Rusznica','4GC',50,5,9,5,2,_binary ''),(30,8,'0',_binary '\0',_binary '\0','PISTOL','Pistolet','8GC',20,4,9,5,2,_binary ''),(31,4,'2',_binary '',_binary '\0','ELF_BOW','Łuk elfi','10GC',150,2,10,5,2,_binary ''),(32,4,'3',_binary '',_binary '\0','LONGBOW','Łuk długi','5GC',100,5,10,5,2,_binary ''),(33,3,'2',_binary '',_binary '\0','BOW','Łuk','4GC',50,1,10,5,2,_binary ''),(34,2,'1',_binary '',_binary '\0','SHORTBOW','Krótki łuk','3GC',20,1,10,5,2,_binary ''),(35,7,'0',_binary '\0',_binary '\0','CROSSBOW_PISTOL','Kusza pistoletowa','6GC',10,5,11,5,2,_binary ''),(36,9,'3',_binary '\0',_binary '\0','HEAVY_CROSSBOW','Ciężka kusza','7GC',100,4,11,5,2,_binary ''),(37,9,'2',_binary '\0',_binary '\0','CROSSBOW','Kusza','5GC',60,1,11,5,2,_binary ''),(38,9,'3',_binary '\0',_binary '\0','REPEATER_HANDGUN','Rusznica samopowtarzalna','10GC',30,4,12,5,2,_binary ''),(39,8,'1',_binary '\0',_binary '\0','REPEATER_PISTOL','Pistolet samopowtarzalny','15GC',10,4,12,5,2,_binary ''),(40,0,'0',_binary '\0',_binary '','LASSO','Arkan','6S',2,1,13,5,2,_binary ''),(41,2,'0',_binary '',_binary '\0','WHIP','Bicz','5S',6,1,13,5,2,_binary ''),(42,12,'0',_binary '\0',_binary '','BOMB','Bomba','3GC',0,4,14,5,2,_binary ''),(43,0,'0',_binary '\0',_binary '','INCENDIARY','Ładunek zapalający','1GC',0,5,14,5,2,_binary ''),(44,6,'0',_binary '\0',_binary '\0','SLING','Proca','1S',60,1,15,5,2,_binary ''),(45,7,'2',_binary '\0',_binary '\0','STAFF_SLING','Proca drzewcowa','4S',100,1,15,5,2,_binary ''),(46,0,'0',_binary '',_binary '','BOLAS','Bolas','10S',3,4,16,5,2,_binary ''),(47,1,'0',_binary '',_binary '','DART','Strzałka','2S',2,5,16,5,2,_binary ''),(48,3,'1',_binary '',_binary '','JAVELIN','Oszczep','10S 6P',3,5,16,5,2,_binary ''),(49,0,'0',_binary '',_binary '','ROCK','Kamień','-',3,1,16,5,2,_binary ''),(50,3,'1',_binary '',_binary '','THROWING_AXE','Topór do rzucania','1GC',2,1,16,5,2,_binary ''),(51,2,'0',_binary '',_binary '','THROWING_KNIFE','Nóż do rzucania','18S',2,1,16,5,2,_binary ''),(52,1,'0',_binary '\0',_binary '\0','BULLET_AND_POWDER','Pocisk i proch','3S 3P',1,1,17,5,3,_binary ''),(53,0,'0',_binary '\0',_binary '\0','IMPROVISED_SHOT_AND_POWDER','Improwizowany śrut i proch','3P',0.5,1,17,5,3,_binary ''),(54,0,'0',_binary '\0',_binary '\0','SMALL_SHOT_AND_POWDER','Śrut i proch','3S 3P',1,1,17,5,3,_binary ''),(55,0,'0',_binary '\0',_binary '\0','ARROW','Strzała','5S',1,1,18,5,3,_binary ''),(56,1,'0',_binary '\0',_binary '\0','ELF_ARROW','Strzała elfia','6S',50,2,18,5,3,_binary ''),(57,0,'0',_binary '\0',_binary '\0','BOLT','Bełt','5S',1,1,19,5,3,_binary ''),(58,1,'0',_binary '\0',_binary '\0','LEAD_BULLET','Pocisk ołowiany','4P',-10,1,20,5,3,_binary ''),(59,0,'0',_binary '\0',_binary '\0','STONE_BULLET','Pocisk kamienny','2P',1,1,20,5,3,_binary ''),(60,4,'1',_binary '',_binary '\0','AXE','Topór','10S',0,1,1,1,1,_binary ''),(61,1,'0',_binary '',_binary '\0','BALLOCK_KNIFE','Puginał','16S',0,5,1,9,1,_binary ''),(62,4,'0',_binary '',_binary '\0','CLUB','Maczuga','4S',0,1,1,1,1,_binary ''),(63,4,'1',_binary '',_binary '\0','MACE','Buzdygan','15S',0,1,1,1,1,_binary ''),(64,4,'1',_binary '',_binary '\0','MILITARY_PICK','Czekan','15S',0,5,1,1,1,_binary ''),(65,4,'1',_binary '',_binary '\0','SCIMITAR','Sejmitar','1GC',0,5,1,6,1,_binary ''),(66,4,'1',_binary '',_binary '\0','SWORD','Miecz','1GC',0,1,1,1,1,_binary ''),(67,4,'1',_binary '',_binary '\0','WARHAMMER','Młot bitewny','1GC',0,5,1,1,1,_binary ''),(68,2,'4',_binary '',_binary '\0','PAVISE','Pawęż','3GC 15S',0,4,6,9,1,_binary ''),(69,5,'2',_binary '',_binary '\0','DEMI-LANCE','Pół-kopia','1GC',0,5,2,2,1,_binary ''),(70,4,'1',_binary '',_binary '\0','SABRE','Szabla','2GC',0,5,2,1,1,_binary ''),(71,2,'1',_binary '',_binary '\0','SMALLSWORD','Szpada','4GC',0,5,3,1,1,_binary ''),(72,3,'1',_binary '',_binary '\0','SPIKED_GAUNTLET','Kolczasta rękawica','2GC',0,4,4,4,1,_binary ''),(73,4,'0',_binary '',_binary '\0','BOAT_HOOK','Hak wodny','6S',0,1,4,6,1,_binary ''),(74,2,'0',_binary '',_binary '\0','GARROTE','Garota','1S',0,4,4,4,1,_binary ''),(75,2,'1',_binary '',_binary '\0','LOCKED_GAUNTLET','Pancerna rękawica','1GC',0,5,4,4,1,_binary ''),(76,1,'0',_binary '',_binary '\0','SAP','Pałka','1S',0,4,4,4,1,_binary ''),(77,0,'1',_binary '',_binary '\0','CLOAK','Peleryna','10S',0,1,6,6,1,_binary ''),(78,0,'1',_binary '',_binary '\0','WEIGHTED_NET','Obciążona siatka','1G 10S',0,4,6,6,1,_binary ''),(79,3,'2',_binary '',_binary '\0','AHLSPIESS','Szydło','2GC',0,5,7,8,1,_binary ''),(80,4,'3',_binary '',_binary '\0','BILL','Gizarma','2GC',0,5,7,2,1,_binary ''),(81,2,'3',_binary '',_binary '\0','MANCATCHER','Łapacz','2GC',0,4,7,2,1,_binary ''),(82,4,'3',_binary '',_binary '\0','PARTIZAN','Partyzana','2GC',0,5,7,2,1,_binary ''),(83,4,'3',_binary '',_binary '\0','POLLAXE','Berdysz','2GC',0,5,7,2,1,_binary ''),(84,5,'3',_binary '',_binary '\0','FLAMBERGE_ZWEIHANDER','Flamberg','30GC',0,2,8,2,1,_binary ''),(85,0,'0',_binary '\0',_binary '\0','BARBED_ARROW','Strzała ząbkowana','8S',1,5,18,5,3,_binary ''),(86,0,'0',_binary '\0',_binary '\0','BODKIN_ARROW','Strzała bodkinowa','8S',1,5,18,5,3,_binary ''),(87,-2,'0',_binary '\0',_binary '\0','SHARP_STICK','Ostry kijek','-',0.5,1,18,5,3,_binary ''),(88,-2,'0',_binary '\0',_binary '\0','PEBBLE','Kamyk','-',-10,1,20,5,3,_binary ''),(89,8,'2',_binary '\0',_binary '\0','MATCHLOCK_HANDGUN','Rusznica z zamkiem zapłonowym','2GC',50,4,9,5,2,_binary ''),(90,7,'1',_binary '\0',_binary '\0','MATCHLOCK_BLUNDERBUSS','Garłacz z zamkiem zapłonowym','1GC',20,4,9,5,2,_binary ''),(91,9,'3',_binary '\0',_binary '\0','ARQUEBUS','Arkebuz','5GC',40,2,9,5,2,_binary ''),(92,9,'3',_binary '\0',_binary '\0','DOUBLE_BARRELLED_HANDGUN','Rusznica dwulufowa','7GC',50,2,9,5,2,_binary ''),(93,7,'1',_binary '\0',_binary '\0','GRIFFONSFOOT_PISTOL','Pistolet \"Gryfia stopa\"','10GC',10,2,9,5,2,_binary ''),(94,9,'1',_binary '\0',_binary '\0','GUN_AXE','Topór-rusznica','8GC',30,2,9,5,2,_binary ''),(95,9,'3',_binary '\0',_binary '\0','GUN_HALBERD','Halabarda-rusznica','10GC',30,2,9,5,2,_binary ''),(96,8,'1',_binary '\0',_binary '\0','PEPPERBOX','Rewolwer wiązkowy','12C',10,4,12,5,2,_binary ''),(97,7,'3',_binary '\0',_binary '\0','HAND_MORTAR','Moździerz ręczny','50C',30,2,12,5,2,_binary ''),(98,8,'1',_binary '\0',_binary '\0','CANE_PISTOL','Pistolet laskowy','15C',10,2,12,5,2,_binary ''),(99,1,'0',_binary '\0',_binary '\0','Paper Cartridge','Ładunek prochowy','5S (12)',1,5,17,5,3,_binary ''),(100,2,'0',_binary '\0',_binary '\0','AQSHY_INFUSED_POWDER','Proch Aqshy','1G (12)',10,2,17,5,3,_binary ''),(101,1,'0',_binary '\0',_binary '\0','PRECISION_SHOT_AND_POWDER','Precyzyjny proch i śrut','3S (12)',1,1,17,5,3,_binary ''),(102,-1,'0',_binary '\0',_binary '\0','SCRAP_AND_POWDER','Proch i złom','2S (12)',0.5,1,17,5,3,_binary ''),(103,2,'0',_binary '\0',_binary '\0','LARGE_BULLET_AND_POWDER','Duży pocisk i proch','1G (12)',1,5,17,5,3,_binary ''),(104,5,'0',_binary '\0',_binary '\0','MORTAR_BOMB','Pocisk moździeżowy','3G',1,4,17,5,3,_binary ''),(105,0,'0',_binary '\0',_binary '\0','MORTAR_INCENDIARY','Zapalający pocisk moździeżowy','1G',1,5,17,5,3,_binary ''),(106,2,'1',_binary '\0',_binary '\0','GRAPPLE','Chwytak moździeżowy','2G',0.5,5,17,5,3,_binary ''),(107,3,'0',_binary '',_binary '\0','EONIR_WAR_BLADE','Ostrze wojenne Eonirów','3G',0,5,1,1,1,_binary ''),(108,4,'1',_binary '',_binary '\0','EONIR_SPEAR','Włócznia Eonirów','2G',0,1,7,2,1,_binary ''),(109,4,'2',_binary '',_binary '\0','WILDWOOD_SWORD','Miecz Dzikiej Kniei','10G',0,5,8,2,1,_binary ''),(110,4,'2',_binary '',_binary '\0','BEARDER_AXE','Topór brodaty','1G',0,1,1,1,1,_binary ''),(111,4,'2',_binary '',_binary '\0','DWARF_HAMMER','Młot krasnoludzki','3G',0,5,1,1,1,_binary ''),(112,6,'4',_binary '',_binary '\0','SLAYERS_AXE','Topór Zabójców','12G',0,5,8,2,1,_binary ''),(113,3,'1',_binary '',_binary '\0','NANS_CLEAVER','Tasak babuni','1G',0,1,1,1,1,_binary ''),(114,3,'1',_binary '',_binary '\0','IRON_SKILLET','Żelazna patelnia','1G',0,1,1,1,1,_binary ''),(115,9,'2',_binary '\0',_binary '\0','DWARF_HANDGUN','Krasnoludzka rusznica','9G',50,4,9,5,2,_binary ''),(116,8,'1',_binary '\0',_binary '\0','DWARF_PISTOL','Krasnoludzki pistolet','18G',30,4,9,5,2,_binary ''),(117,9,'3',_binary '\0',_binary '\0','DWARF_CROSSBOW','Krasnoludzka kusza','9G',80,4,11,5,2,_binary ''),(118,8,'1',_binary '\0',_binary '\0','DRAKEFIRE_PISTOL','Pistolet smoczego ognia','25G',20,2,12,5,2,_binary ''),(119,14,'0',_binary '\0',_binary '','CINDERBLAST_BOMB','Bomba żużlowa','3G',1,2,14,5,2,_binary ''),(120,3,'1',_binary '',_binary '','BLACKBRIAR_JAVELIN','Oszczep czarnocierni','2G',3,2,16,5,2,_binary ''),(121,2,'0',_binary '\0',_binary '\0','DRAKEFIRE_SHOT','Ładunek smoczego ognia','4S',0,4,17,5,3,_binary ''),(123,0,'0',_binary '\0',_binary '\0','STARFIRE_SHAFTS','Strzały gwiezdnego ognia','8S',50,2,18,5,3,_binary ''),(124,1,'0',_binary '\0',_binary '\0','SWIFTSHIVER_SHAFTS','Strzały jaskółcze','6S',0,1,18,5,3,_binary ''),(5000,4,'1',_binary '',_binary '\0','RYGAR_SWORD','Miecz Rygara','1GC',0,1,1,1,1,_binary '\0'),(5001,4,'1',_binary '',_binary '\0','BARAKUL','Miecz Barakul','1GC',0,1,1,1,1,_binary '\0');
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
) ENGINE=InnoDB AUTO_INCREMENT=322 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapon_quality_value`
--

LOCK TABLES `weapon_quality_value` WRITE;
/*!40000 ALTER TABLE `weapon_quality_value` DISABLE KEYS */;
INSERT INTO `weapon_quality_value` VALUES (1,'1',1,27),(2,'1',3,27),(3,'1',4,27),(4,'1',4,5),(5,'1',4,17),(6,'1',5,27),(7,'1',5,5),(8,'2',5,17),(9,'1',6,27),(10,'1',6,5),(11,'3',6,17),(12,'1',7,19),(13,'1',7,15),(14,'1',8,10),(15,'1',8,11),(16,'1',9,8),(17,'1',9,11),(18,'1',9,14),(19,'1',9,27),(20,'1',10,8),(21,'1',10,11),(22,'1',11,27),(23,'1',13,6),(24,'1',13,23),(25,'1',13,21),(26,'1',14,6),(27,'1',14,21),(28,'1',15,19),(29,'1',15,6),(30,'1',15,10),(31,'1',15,26),(32,'1',15,21),(33,'1',16,5),(34,'1',17,5),(35,'1',17,18),(36,'1',18,19),(37,'1',18,5),(38,'*',18,9),(39,'*',18,11),(40,'1',19,19),(41,'1',19,11),(42,'1',20,19),(43,'1',20,11),(44,'1',21,19),(45,'1',21,5),(46,'1',21,15),(47,'1',22,19),(48,'1',22,4),(49,'1',22,5),(50,'1',23,19),(51,'1',23,9),(52,'1',23,10),(53,'1',23,26),(54,'1',24,19),(55,'1',24,4),(56,'1',24,11),(57,'1',25,19),(58,'1',25,4),(59,'1',25,15),(60,'1',26,19),(61,'1',26,4),(62,'1',26,9),(63,'1',27,2),(64,'1',27,4),(65,'3',27,3),(66,'1',27,22),(67,'2',27,24),(68,'1',27,19),(69,'1',28,2),(70,'1',28,4),(71,'1',28,1),(72,'1',28,14),(73,'4',28,24),(74,'1',28,19),(75,'1',29,2),(76,'1',29,4),(77,'1',29,22),(78,'3',29,24),(79,'1',29,19),(80,'1',30,2),(81,'1',30,4),(82,'1',30,13),(83,'1',30,24),(84,'1',31,4),(85,'1',31,14),(86,'1',31,19),(87,'1',32,4),(88,'1',32,19),(89,'1',33,19),(90,'1',34,19),(91,'1',35,13),(92,'1',36,4),(93,'2',36,24),(94,'1',36,19),(95,'1',37,24),(96,'1',37,19),(97,'1',38,2),(98,'1',38,4),(99,'1',38,22),(100,'5',38,24),(101,'4',38,16),(102,'1',39,2),(103,'1',39,4),(104,'1',39,22),(105,'4',39,16),(106,'4',39,24),(107,'1',40,7),(108,'1',41,7),(109,'5',42,3),(110,'1',42,22),(111,'1',42,10),(112,'1',43,28),(113,'4',43,3),(114,'1',43,22),(115,'1',45,19),(116,'1',46,7),(117,'1',47,11),(118,'1',48,11),(119,'1',50,9),(120,'1',52,11),(121,'1',52,12),(122,'1',54,3),(123,'1',55,11),(124,'1',56,1),(125,'1',56,11),(126,'1',56,12),(127,'1',57,11),(128,'1',58,15),(129,'1',59,15),(130,'1',60,9),(131,'1',60,37),(132,'1',61,11),(133,'1',61,12),(134,'1',61,14),(135,'1',1,37),(136,'1',62,27),(137,'1',62,37),(138,'1',63,15),(139,'1',63,37),(140,'1',64,12),(141,'1',64,37),(142,'1',65,38),(143,'1',61,39),(144,'1',67,37),(145,'*',67,15),(146,'*',67,12),(147,'5',68,17),(148,'1',8,40),(149,'1',69,10),(150,'1',69,11),(151,'1',69,40),(152,'1',70,38),(153,'1',71,8),(154,'1',71,11),(155,'1',71,14),(156,'1',72,11),(157,'1',72,37),(158,'1',73,41),(159,'1',73,37),(160,'1',74,7),(161,'1',74,25),(162,'1',74,37),(163,'1',74,27),(164,'1',75,27),(165,'1',76,15),(166,'1',76,37),(167,'1',76,27),(168,'1',77,7),(169,'1',77,5),(170,'1',77,27),(171,'1',78,7),(172,'1',78,5),(173,'1',78,17),(174,'1',78,25),(175,'1',78,27),(176,'1',78,21),(177,'1',79,11),(178,'1',79,12),(179,'1',80,5),(180,'*',80,9),(181,'*',80,41),(182,'1',81,5),(183,'1',81,7),(184,'1',82,5),(185,'*',82,11),(186,'2 *',82,38),(187,'1',83,5),(188,'*',83,9),(189,'*',83,11),(190,'*',83,15),(191,'1',24,25),(192,'1',25,25),(193,'1',84,19),(194,'1',84,4),(195,'1',84,9),(196,'2',84,38),(197,'1',85,11),(198,'1',85,38),(199,'1',86,11),(200,'1',86,12),(201,'1',87,22),(202,'1',87,23),(203,'1',87,27),(204,'1',88,23),(205,'1',88,27),(206,'1',39,13),(207,'1',89,2),(208,'1',89,4),(209,'1',89,22),(210,'4',89,24),(211,'1',90,2),(212,'1',90,4),(213,'1',90,22),(214,'3',90,24),(215,'3',90,42),(216,'1',91,2),(217,'1',91,4),(218,'1',91,22),(219,'5',91,24),(220,'1',91,23),(221,'1',92,2),(222,'1',92,4),(223,'1',92,22),(224,'4',92,24),(225,'2',92,16),(226,'1',93,2),(227,'1',93,4),(228,'1',93,22),(229,'6',93,24),(230,'1',93,23),(231,'5',93,42),(232,'1',94,2),(233,'1',94,4),(234,'1',94,22),(235,'4',94,24),(236,'1',94,23),(237,'1',95,2),(238,'1',95,4),(239,'1',95,22),(240,'4',95,24),(241,'1',95,23),(242,'1',96,2),(243,'1',96,4),(244,'1',96,22),(245,'4',96,24),(246,'1',96,13),(247,'4',96,16),(248,'1',97,2),(249,'1',97,4),(250,'1',97,22),(251,'2',97,24),(252,'1',97,23),(253,'1',98,2),(254,'1',98,4),(255,'1',98,22),(256,'6',98,24),(257,'1',98,23),(258,'1',99,11),(259,'1',99,12),(260,'1',99,44),(261,'1',100,11),(262,'1',100,12),(263,'1',100,45),(264,'1',101,11),(265,'1',101,12),(266,'1',101,14),(267,'3',102,42),(268,'1',102,43),(269,'1',103,11),(270,'1',103,10),(271,'1',103,12),(272,'1',103,46),(273,'5',104,3),(274,'1',104,22),(275,'1',104,10),(276,'5',105,3),(277,'1',105,22),(278,'1',105,28),(279,'1',106,12),(280,'2',106,24),(281,'1',106,47),(282,'1',89,48),(283,'1',90,48),(284,'1',98,49),(285,'1',5000,29),(286,'1',5000,14),(287,'1',5000,30),(288,'1',5000,31),(289,'1',110,18),(290,'1',111,15),(291,'1',112,10),(292,'1',112,12),(293,'1',113,9),(294,'1',114,5),(295,'1',115,12),(296,'3',115,24),(297,'1',116,12),(298,'1',116,13),(299,'3',116,24),(300,'1',117,14),(301,'1',117,4),(302,'2',117,24),(303,'1',118,22),(304,'1',118,13),(305,'3',119,3),(306,'1',119,22),(307,'1',119,10),(308,'1',119,12),(309,'1',120,11),(310,'1',121,4),(314,'1',123,1),(315,'1',123,11),(316,'1',124,3),(317,'1',123,12),(318,'1',107,14),(319,'1',108,12),(320,'1',109,4),(321,'1',109,8);
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

-- Dump completed on 2024-09-11 12:32:39
