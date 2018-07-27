-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: ortopedica
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Current Database: `ortopedica`
--

/*!40000 DROP DATABASE IF EXISTS `ortopedica`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ortopedica` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ortopedica`;

--
-- Table structure for table `auth_group`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add user',6,'add_user'),(17,'Can change user',6,'change_user'),(18,'Can delete user',6,'delete_user'),(19,'Can add entidade',7,'add_entity'),(20,'Can change entidade',7,'change_entity'),(21,'Can delete entidade',7,'delete_entity'),(22,'Can add amputation reason',8,'add_amputationreason'),(23,'Can change amputation reason',8,'change_amputationreason'),(24,'Can delete amputation reason',8,'delete_amputationreason'),(25,'Can add amputation type',9,'add_amputationtype'),(26,'Can change amputation type',9,'change_amputationtype'),(27,'Can delete amputation type',9,'delete_amputationtype'),(28,'Can add amputee member',10,'add_amputeemember'),(29,'Can change amputee member',10,'change_amputeemember'),(30,'Can delete amputee member',10,'delete_amputeemember'),(31,'Can add color',11,'add_color'),(32,'Can change color',11,'change_color'),(33,'Can delete color',11,'delete_color'),(34,'Can add institution',12,'add_institution'),(35,'Can change institution',12,'change_institution'),(36,'Can delete institution',12,'delete_institution'),(37,'Can add making',13,'add_making'),(38,'Can change making',13,'change_making'),(39,'Can delete making',13,'delete_making'),(40,'Can add mold type',14,'add_moldtype'),(41,'Can change mold type',14,'change_moldtype'),(42,'Can delete mold type',14,'delete_moldtype'),(43,'Can add side',15,'add_side'),(44,'Can change side',15,'change_side'),(45,'Can delete side',15,'delete_side'),(46,'Can add situation',16,'add_situation'),(47,'Can change situation',16,'change_situation'),(48,'Can delete situation',16,'delete_situation'),(49,'Can add technical responsible',17,'add_technicalresponsible'),(50,'Can change technical responsible',17,'change_technicalresponsible'),(51,'Can delete technical responsible',17,'delete_technicalresponsible'),(52,'Can add patient',18,'add_patient'),(53,'Can change patient',18,'change_patient'),(54,'Can delete patient',18,'delete_patient');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_fe_core_user_uuid` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_fe_core_user_uuid` FOREIGN KEY (`user_id`) REFERENCES `fe_core_user` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
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

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(7,'fe_core','entity'),(6,'fe_core','user'),(8,'ortopedica','amputationreason'),(9,'ortopedica','amputationtype'),(10,'ortopedica','amputeemember'),(11,'ortopedica','color'),(12,'ortopedica','institution'),(13,'ortopedica','making'),(14,'ortopedica','moldtype'),(18,'ortopedica','patient'),(15,'ortopedica','side'),(16,'ortopedica','situation'),(17,'ortopedica','technicalresponsible'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-07-27 14:58:31.363114'),(2,'contenttypes','0002_remove_content_type_name','2018-07-27 14:58:31.970838'),(3,'auth','0001_initial','2018-07-27 14:58:32.796556'),(4,'auth','0002_alter_permission_name_max_length','2018-07-27 14:58:32.826107'),(5,'auth','0003_alter_user_email_max_length','2018-07-27 14:58:32.851088'),(6,'auth','0004_alter_user_username_opts','2018-07-27 14:58:32.865011'),(7,'auth','0005_alter_user_last_login_null','2018-07-27 14:58:32.878276'),(8,'auth','0006_require_contenttypes_0002','2018-07-27 14:58:32.883364'),(9,'auth','0007_alter_validators_add_error_messages','2018-07-27 14:58:32.903664'),(10,'auth','0008_alter_user_username_max_length','2018-07-27 14:58:32.918375'),(11,'fe_core','0001_initial','2018-07-27 14:58:34.220578'),(12,'admin','0001_initial','2018-07-27 14:58:34.622044'),(13,'admin','0002_logentry_remove_auto_add','2018-07-27 14:58:34.648167'),(14,'auth','0009_alter_user_last_name_max_length','2018-07-27 14:58:34.671198'),(15,'ortopedica','0001_initial','2018-07-27 14:58:38.647693'),(16,'ortopedica','0002_patient','2018-07-27 14:58:39.422669'),(17,'sessions','0001_initial','2018-07-27 14:58:39.544089');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_core_entity`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_core_entity` (
  `uuid` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_core_entity`
--

LOCK TABLES `fe_core_entity` WRITE;
/*!40000 ALTER TABLE `fe_core_entity` DISABLE KEYS */;
INSERT INTO `fe_core_entity` VALUES ('670d7a30a6b54feaaffa94191e891d08','2018-07-27 16:05:17.250315','2018-07-27 16:05:17.250373','Demo');
/*!40000 ALTER TABLE `fe_core_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_core_user`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_core_user` (
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `uuid` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `entity_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `email` (`email`),
  KEY `fe_core_user_entity_id_8a3163a6_fk_fe_core_entity_uuid` (`entity_id`),
  CONSTRAINT `fe_core_user_entity_id_8a3163a6_fk_fe_core_entity_uuid` FOREIGN KEY (`entity_id`) REFERENCES `fe_core_entity` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_core_user`
--

LOCK TABLES `fe_core_user` WRITE;
/*!40000 ALTER TABLE `fe_core_user` DISABLE KEYS */;
INSERT INTO `fe_core_user` VALUES ('pbkdf2_sha256$100000$kDu3LMhGtxS4$bloC7wnswx34P+p/IAmKxEpnsRcR0vfcHbkq/2OiG1Q=','2018-07-27 16:05:02.000000',1,'670d7a30a6b54feaaffa94191e891d08','2018-07-27 14:58:40.958414','2018-07-27 16:05:31.830460','demo@example.com',1,1,'670d7a30a6b54feaaffa94191e891d08');
/*!40000 ALTER TABLE `fe_core_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_core_user_groups`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_core_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` char(32) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fe_core_user_groups_user_id_group_id_14b16de9_uniq` (`user_id`,`group_id`),
  KEY `fe_core_user_groups_group_id_cf9bf19e_fk_auth_group_id` (`group_id`),
  CONSTRAINT `fe_core_user_groups_group_id_cf9bf19e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `fe_core_user_groups_user_id_14a5486d_fk_fe_core_user_uuid` FOREIGN KEY (`user_id`) REFERENCES `fe_core_user` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_core_user_groups`
--

LOCK TABLES `fe_core_user_groups` WRITE;
/*!40000 ALTER TABLE `fe_core_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_core_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_core_user_user_permissions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_core_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` char(32) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fe_core_user_user_permis_user_id_permission_id_e8d1cb52_uniq` (`user_id`,`permission_id`),
  KEY `fe_core_user_user_pe_permission_id_e8aa7629_fk_auth_perm` (`permission_id`),
  CONSTRAINT `fe_core_user_user_pe_permission_id_e8aa7629_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `fe_core_user_user_pe_user_id_68138537_fk_fe_core_u` FOREIGN KEY (`user_id`) REFERENCES `fe_core_user` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_core_user_user_permissions`
--

LOCK TABLES `fe_core_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `fe_core_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_core_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ortopedica_amputationreason`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ortopedica_amputationreason` (
  `uuid` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `entity_id` char(32) DEFAULT NULL,
  `user_id` char(32) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `ortopedica_amputatio_entity_id_76311a70_fk_fe_core_e` (`entity_id`),
  KEY `ortopedica_amputatio_user_id_10e3393b_fk_fe_core_u` (`user_id`),
  CONSTRAINT `ortopedica_amputatio_entity_id_76311a70_fk_fe_core_e` FOREIGN KEY (`entity_id`) REFERENCES `fe_core_entity` (`uuid`),
  CONSTRAINT `ortopedica_amputatio_user_id_10e3393b_fk_fe_core_u` FOREIGN KEY (`user_id`) REFERENCES `fe_core_user` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ortopedica_amputationreason`
--

LOCK TABLES `ortopedica_amputationreason` WRITE;
/*!40000 ALTER TABLE `ortopedica_amputationreason` DISABLE KEYS */;
/*!40000 ALTER TABLE `ortopedica_amputationreason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ortopedica_amputationtype`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ortopedica_amputationtype` (
  `uuid` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `entity_id` char(32) DEFAULT NULL,
  `user_id` char(32) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `ortopedica_amputatio_entity_id_fb65f677_fk_fe_core_e` (`entity_id`),
  KEY `ortopedica_amputationtype_user_id_05c528da_fk_fe_core_user_uuid` (`user_id`),
  CONSTRAINT `ortopedica_amputatio_entity_id_fb65f677_fk_fe_core_e` FOREIGN KEY (`entity_id`) REFERENCES `fe_core_entity` (`uuid`),
  CONSTRAINT `ortopedica_amputationtype_user_id_05c528da_fk_fe_core_user_uuid` FOREIGN KEY (`user_id`) REFERENCES `fe_core_user` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ortopedica_amputationtype`
--

LOCK TABLES `ortopedica_amputationtype` WRITE;
/*!40000 ALTER TABLE `ortopedica_amputationtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `ortopedica_amputationtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ortopedica_amputeemember`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ortopedica_amputeemember` (
  `uuid` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `entity_id` char(32) DEFAULT NULL,
  `user_id` char(32) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `ortopedica_amputeeme_entity_id_66a4b9d0_fk_fe_core_e` (`entity_id`),
  KEY `ortopedica_amputeemember_user_id_8397bf30_fk_fe_core_user_uuid` (`user_id`),
  CONSTRAINT `ortopedica_amputeeme_entity_id_66a4b9d0_fk_fe_core_e` FOREIGN KEY (`entity_id`) REFERENCES `fe_core_entity` (`uuid`),
  CONSTRAINT `ortopedica_amputeemember_user_id_8397bf30_fk_fe_core_user_uuid` FOREIGN KEY (`user_id`) REFERENCES `fe_core_user` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ortopedica_amputeemember`
--

LOCK TABLES `ortopedica_amputeemember` WRITE;
/*!40000 ALTER TABLE `ortopedica_amputeemember` DISABLE KEYS */;
/*!40000 ALTER TABLE `ortopedica_amputeemember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ortopedica_color`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ortopedica_color` (
  `uuid` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `entity_id` char(32) DEFAULT NULL,
  `user_id` char(32) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `ortopedica_color_entity_id_4b0acdb2_fk_fe_core_entity_uuid` (`entity_id`),
  KEY `ortopedica_color_user_id_7fadaeea_fk_fe_core_user_uuid` (`user_id`),
  CONSTRAINT `ortopedica_color_entity_id_4b0acdb2_fk_fe_core_entity_uuid` FOREIGN KEY (`entity_id`) REFERENCES `fe_core_entity` (`uuid`),
  CONSTRAINT `ortopedica_color_user_id_7fadaeea_fk_fe_core_user_uuid` FOREIGN KEY (`user_id`) REFERENCES `fe_core_user` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ortopedica_color`
--

LOCK TABLES `ortopedica_color` WRITE;
/*!40000 ALTER TABLE `ortopedica_color` DISABLE KEYS */;
/*!40000 ALTER TABLE `ortopedica_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ortopedica_institution`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ortopedica_institution` (
  `uuid` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `identifier` varchar(10) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `doctor` varchar(50) DEFAULT NULL,
  `address` char(32) DEFAULT NULL,
  `entity_id` char(32) DEFAULT NULL,
  `user_id` char(32) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `ortopedica_institution_entity_id_ad759ecb_fk_fe_core_entity_uuid` (`entity_id`),
  KEY `ortopedica_institution_user_id_0368b51e_fk_fe_core_user_uuid` (`user_id`),
  CONSTRAINT `ortopedica_institution_entity_id_ad759ecb_fk_fe_core_entity_uuid` FOREIGN KEY (`entity_id`) REFERENCES `fe_core_entity` (`uuid`),
  CONSTRAINT `ortopedica_institution_user_id_0368b51e_fk_fe_core_user_uuid` FOREIGN KEY (`user_id`) REFERENCES `fe_core_user` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ortopedica_institution`
--

LOCK TABLES `ortopedica_institution` WRITE;
/*!40000 ALTER TABLE `ortopedica_institution` DISABLE KEYS */;
/*!40000 ALTER TABLE `ortopedica_institution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ortopedica_making`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ortopedica_making` (
  `uuid` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `name` varchar(30) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `entity_id` char(32) DEFAULT NULL,
  `user_id` char(32) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `ortopedica_making_entity_id_319cdd13_fk_fe_core_entity_uuid` (`entity_id`),
  KEY `ortopedica_making_user_id_d69a28e5_fk_fe_core_user_uuid` (`user_id`),
  CONSTRAINT `ortopedica_making_entity_id_319cdd13_fk_fe_core_entity_uuid` FOREIGN KEY (`entity_id`) REFERENCES `fe_core_entity` (`uuid`),
  CONSTRAINT `ortopedica_making_user_id_d69a28e5_fk_fe_core_user_uuid` FOREIGN KEY (`user_id`) REFERENCES `fe_core_user` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ortopedica_making`
--

LOCK TABLES `ortopedica_making` WRITE;
/*!40000 ALTER TABLE `ortopedica_making` DISABLE KEYS */;
/*!40000 ALTER TABLE `ortopedica_making` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ortopedica_moldtype`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ortopedica_moldtype` (
  `uuid` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `entity_id` char(32) DEFAULT NULL,
  `user_id` char(32) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `ortopedica_moldtype_entity_id_4e8b0de4_fk_fe_core_entity_uuid` (`entity_id`),
  KEY `ortopedica_moldtype_user_id_428bc915_fk_fe_core_user_uuid` (`user_id`),
  CONSTRAINT `ortopedica_moldtype_entity_id_4e8b0de4_fk_fe_core_entity_uuid` FOREIGN KEY (`entity_id`) REFERENCES `fe_core_entity` (`uuid`),
  CONSTRAINT `ortopedica_moldtype_user_id_428bc915_fk_fe_core_user_uuid` FOREIGN KEY (`user_id`) REFERENCES `fe_core_user` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ortopedica_moldtype`
--

LOCK TABLES `ortopedica_moldtype` WRITE;
/*!40000 ALTER TABLE `ortopedica_moldtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `ortopedica_moldtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ortopedica_patient`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ortopedica_patient` (
  `uuid` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `transient` tinyint(1) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `rg` varchar(15) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `phone1` varchar(15) DEFAULT NULL,
  `phone2` varchar(15) DEFAULT NULL,
  `phone3` varchar(50) DEFAULT NULL,
  `address` varchar(80) DEFAULT NULL,
  `neighborhood` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `profissao` varchar(30) DEFAULT NULL,
  `altura` varchar(10) DEFAULT NULL,
  `peso` varchar(10) DEFAULT NULL,
  `protetizacao` varchar(50) DEFAULT NULL,
  `tempo_amputacao` varchar(50) DEFAULT NULL,
  `amputation_reason_id` char(32) DEFAULT NULL,
  `amputee_member_id` char(32) DEFAULT NULL,
  `entity_id` char(32) DEFAULT NULL,
  `user_id` char(32) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `ortopedica_patient_amputation_reason_id_52a2f12b_fk_ortopedic` (`amputation_reason_id`),
  KEY `ortopedica_patient_amputee_member_id_d6f23f95_fk_ortopedic` (`amputee_member_id`),
  KEY `ortopedica_patient_entity_id_edb2961a_fk_fe_core_entity_uuid` (`entity_id`),
  KEY `ortopedica_patient_user_id_5971a5dd_fk_fe_core_user_uuid` (`user_id`),
  CONSTRAINT `ortopedica_patient_amputation_reason_id_52a2f12b_fk_ortopedic` FOREIGN KEY (`amputation_reason_id`) REFERENCES `ortopedica_amputationreason` (`uuid`),
  CONSTRAINT `ortopedica_patient_amputee_member_id_d6f23f95_fk_ortopedic` FOREIGN KEY (`amputee_member_id`) REFERENCES `ortopedica_amputeemember` (`uuid`),
  CONSTRAINT `ortopedica_patient_entity_id_edb2961a_fk_fe_core_entity_uuid` FOREIGN KEY (`entity_id`) REFERENCES `fe_core_entity` (`uuid`),
  CONSTRAINT `ortopedica_patient_user_id_5971a5dd_fk_fe_core_user_uuid` FOREIGN KEY (`user_id`) REFERENCES `fe_core_user` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ortopedica_patient`
--

LOCK TABLES `ortopedica_patient` WRITE;
/*!40000 ALTER TABLE `ortopedica_patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `ortopedica_patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ortopedica_side`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ortopedica_side` (
  `uuid` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `entity_id` char(32) DEFAULT NULL,
  `user_id` char(32) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `ortopedica_side_entity_id_4cc5b3cf_fk_fe_core_entity_uuid` (`entity_id`),
  KEY `ortopedica_side_user_id_e239aedd_fk_fe_core_user_uuid` (`user_id`),
  CONSTRAINT `ortopedica_side_entity_id_4cc5b3cf_fk_fe_core_entity_uuid` FOREIGN KEY (`entity_id`) REFERENCES `fe_core_entity` (`uuid`),
  CONSTRAINT `ortopedica_side_user_id_e239aedd_fk_fe_core_user_uuid` FOREIGN KEY (`user_id`) REFERENCES `fe_core_user` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ortopedica_side`
--

LOCK TABLES `ortopedica_side` WRITE;
/*!40000 ALTER TABLE `ortopedica_side` DISABLE KEYS */;
/*!40000 ALTER TABLE `ortopedica_side` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ortopedica_situation`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ortopedica_situation` (
  `uuid` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `entity_id` char(32) DEFAULT NULL,
  `user_id` char(32) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `ortopedica_situation_entity_id_b37b0635_fk_fe_core_entity_uuid` (`entity_id`),
  KEY `ortopedica_situation_user_id_d3c2bb2b_fk_fe_core_user_uuid` (`user_id`),
  CONSTRAINT `ortopedica_situation_entity_id_b37b0635_fk_fe_core_entity_uuid` FOREIGN KEY (`entity_id`) REFERENCES `fe_core_entity` (`uuid`),
  CONSTRAINT `ortopedica_situation_user_id_d3c2bb2b_fk_fe_core_user_uuid` FOREIGN KEY (`user_id`) REFERENCES `fe_core_user` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ortopedica_situation`
--

LOCK TABLES `ortopedica_situation` WRITE;
/*!40000 ALTER TABLE `ortopedica_situation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ortopedica_situation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ortopedica_technicalresponsible`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ortopedica_technicalresponsible` (
  `uuid` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `entity_id` char(32) DEFAULT NULL,
  `user_id` char(32) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `ortopedica_technical_entity_id_b742e337_fk_fe_core_e` (`entity_id`),
  KEY `ortopedica_technical_user_id_d1000633_fk_fe_core_u` (`user_id`),
  CONSTRAINT `ortopedica_technical_entity_id_b742e337_fk_fe_core_e` FOREIGN KEY (`entity_id`) REFERENCES `fe_core_entity` (`uuid`),
  CONSTRAINT `ortopedica_technical_user_id_d1000633_fk_fe_core_u` FOREIGN KEY (`user_id`) REFERENCES `fe_core_user` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ortopedica_technicalresponsible`
--

LOCK TABLES `ortopedica_technicalresponsible` WRITE;
/*!40000 ALTER TABLE `ortopedica_technicalresponsible` DISABLE KEYS */;
/*!40000 ALTER TABLE `ortopedica_technicalresponsible` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-27 16:06:21
