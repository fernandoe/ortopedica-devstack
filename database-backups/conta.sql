-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: conta
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
-- Current Database: `conta`
--

/*!40000 DROP DATABASE IF EXISTS `conta`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `conta` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `conta`;

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add user',6,'add_user'),(17,'Can change user',6,'change_user'),(18,'Can delete user',6,'delete_user'),(19,'Can add entidade',7,'add_entity'),(20,'Can change entidade',7,'change_entity'),(21,'Can delete entidade',7,'delete_entity');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-07-03 13:37:17.376867','d1084747-5333-4449-a83a-a2ebe98bb969','Ortopédica Canadense',1,'[{\"added\": {}}]',7,'252af268a5174b738c85c2e3f529b26e'),(2,'2018-07-03 13:37:26.107234','dc4ecafa-c0e9-4268-aa10-934bbe56d7cd','Demo',1,'[{\"added\": {}}]',7,'252af268a5174b738c85c2e3f529b26e'),(3,'2018-07-03 13:39:50.155801','3174922d-6cec-4ca0-ab49-29ff2b982356','espindola@ortopedicacanadense.com.br',1,'[{\"added\": {}}]',6,'252af268a5174b738c85c2e3f529b26e'),(4,'2018-07-03 13:40:07.926907','3174922d-6cec-4ca0-ab49-29ff2b982356','espindola@ortopedicacanadense.com.br',2,'[{\"changed\": {\"fields\": [\"entity\"]}}]',6,'252af268a5174b738c85c2e3f529b26e'),(5,'2018-07-03 13:40:19.669671','252af268-a517-4b73-8c85-c2e3f529b26e','demo@example.com',2,'[{\"changed\": {\"fields\": [\"entity\"]}}]',6,'252af268a5174b738c85c2e3f529b26e');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(7,'fe_core','entity'),(6,'fe_core','user'),(5,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-06-14 21:56:19.159222'),(2,'contenttypes','0002_remove_content_type_name','2018-06-14 21:56:19.240806'),(3,'auth','0001_initial','2018-06-14 21:56:19.519420'),(4,'auth','0002_alter_permission_name_max_length','2018-06-14 21:56:19.537684'),(5,'auth','0003_alter_user_email_max_length','2018-06-14 21:56:19.551821'),(6,'auth','0004_alter_user_username_opts','2018-06-14 21:56:19.567713'),(7,'auth','0005_alter_user_last_login_null','2018-06-14 21:56:19.581993'),(8,'auth','0006_require_contenttypes_0002','2018-06-14 21:56:19.587060'),(9,'auth','0007_alter_validators_add_error_messages','2018-06-14 21:56:19.604410'),(10,'auth','0008_alter_user_username_max_length','2018-06-14 21:56:19.624133'),(11,'fe_core','0001_initial','2018-06-14 21:56:20.078980'),(12,'admin','0001_initial','2018-06-14 21:56:20.223095'),(13,'admin','0002_logentry_remove_auto_add','2018-06-14 21:56:20.247155'),(14,'auth','0009_alter_user_last_name_max_length','2018-06-14 21:56:20.270828'),(15,'sessions','0001_initial','2018-06-14 21:56:20.316589');
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
INSERT INTO `django_session` VALUES ('yfeziv4zygs18m4qxm28ckxf2h4upabf','YjczZTYxMzBhZTA3ZDBkOGMyNmMzZDc3NTVhNTdjZDEwOTE0YjA3ODp7Il9hdXRoX3VzZXJfaWQiOiIyNTJhZjI2OC1hNTE3LTRiNzMtOGM4NS1jMmUzZjUyOWIyNmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6Ijc5YWZkODMzYWUyZTQ1ZmYyMjlhMWE0YzRhMTczYmQxZThjY2FmZjMifQ==','2018-07-17 13:15:04.296491');
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
INSERT INTO `fe_core_entity` VALUES ('bdf19bb31cc14cddbce9ca1ecbeaec85','2018-07-03 13:37:17.376028','2018-07-03 13:37:17.376084','Ortopédica Canadense'),('670d7a30a6b54feaaffa94191e891d08','2018-07-03 13:37:26.106188','2018-07-03 13:37:26.106243','Demo');
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
INSERT INTO `fe_core_user` VALUES ('pbkdf2_sha256$100000$5jO3HZV1Qgqr$l5Lgo0rSKI6QKlMjqOJnnib1T6Y/DxBT4WHiK0H+drE=','2018-07-03 13:15:04.000000',1,'670d7a30a6b54feaaffa94191e891d08','2018-06-14 21:56:21.573206','2018-07-03 13:40:19.662047','demo@example.com',1,1,'dc4ecafac0e94268aa10934bbe56d7cd'),('pbkdf2_sha256$100000$CcbzLtNLGN8b$IuVf4tPJD5+4a8dqMXduBXzOAhO30gUM0M6UleDTPiY=',NULL,0,'3174922d6cec4ca0ab4929ff2b982356','2018-07-03 13:39:50.154857','2018-07-03 13:40:07.919263','espindola@ortopedicacanadense.com.br',0,1,'bdf19bb31cc14cddbce9ca1ecbeaec85');
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-03 13:41:10
