-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: jobreferraldb
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add tag',8,'add_tag'),(30,'Can change tag',8,'change_tag'),(31,'Can delete tag',8,'delete_tag'),(32,'Can view tag',8,'view_tag'),(33,'Can add employer',9,'add_employer'),(34,'Can change employer',9,'change_employer'),(35,'Can delete employer',9,'delete_employer'),(36,'Can view employer',9,'view_employer'),(37,'Can add job applicant',10,'add_jobapplicant'),(38,'Can change job applicant',10,'change_jobapplicant'),(39,'Can delete job applicant',10,'delete_jobapplicant'),(40,'Can view job applicant',10,'view_jobapplicant'),(41,'Can add post',11,'add_post'),(42,'Can change post',11,'change_post'),(43,'Can delete post',11,'delete_post'),(44,'Can view post',11,'view_post'),(45,'Can add apply',12,'add_apply'),(46,'Can change apply',12,'change_apply'),(47,'Can delete apply',12,'delete_apply'),(48,'Can view apply',12,'view_apply'),(49,'Can add application',13,'add_application'),(50,'Can change application',13,'change_application'),(51,'Can delete application',13,'delete_application'),(52,'Can view application',13,'view_application'),(53,'Can add access token',14,'add_accesstoken'),(54,'Can change access token',14,'change_accesstoken'),(55,'Can delete access token',14,'delete_accesstoken'),(56,'Can view access token',14,'view_accesstoken'),(57,'Can add grant',15,'add_grant'),(58,'Can change grant',15,'change_grant'),(59,'Can delete grant',15,'delete_grant'),(60,'Can view grant',15,'view_grant'),(61,'Can add refresh token',16,'add_refreshtoken'),(62,'Can change refresh token',16,'change_refreshtoken'),(63,'Can delete refresh token',16,'delete_refreshtoken'),(64,'Can view refresh token',16,'view_refreshtoken'),(65,'Can add id token',17,'add_idtoken'),(66,'Can change id token',17,'change_idtoken'),(67,'Can delete id token',17,'delete_idtoken'),(68,'Can view id token',17,'view_idtoken'),(69,'Can add association',18,'add_association'),(70,'Can change association',18,'change_association'),(71,'Can delete association',18,'delete_association'),(72,'Can view association',18,'view_association'),(73,'Can add code',19,'add_code'),(74,'Can change code',19,'change_code'),(75,'Can delete code',19,'delete_code'),(76,'Can view code',19,'view_code'),(77,'Can add nonce',20,'add_nonce'),(78,'Can change nonce',20,'change_nonce'),(79,'Can delete nonce',20,'delete_nonce'),(80,'Can view nonce',20,'view_nonce'),(81,'Can add user social auth',21,'add_usersocialauth'),(82,'Can change user social auth',21,'change_usersocialauth'),(83,'Can delete user social auth',21,'delete_usersocialauth'),(84,'Can view user social auth',21,'view_usersocialauth'),(85,'Can add partial',22,'add_partial'),(86,'Can change partial',22,'change_partial'),(87,'Can delete partial',22,'delete_partial'),(88,'Can view partial',22,'view_partial'),(89,'Can add location',23,'add_location'),(90,'Can change location',23,'change_location'),(91,'Can delete location',23,'delete_location'),(92,'Can view location',23,'view_location');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
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
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_jobReferralApp_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_jobReferralApp_user_id` FOREIGN KEY (`user_id`) REFERENCES `jobreferralapp_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-10-18 12:30:40.841770','1','admin',2,'[{\"changed\": {\"fields\": [\"Avatar\"]}}]',6,1),(2,'2021-10-18 12:57:00.312315','1','admin',2,'[{\"changed\": {\"fields\": [\"Avatar\"]}}]',6,1),(3,'2021-10-18 13:08:20.665392','1','Data Analysis',1,'[{\"added\": {}}]',7,1),(4,'2021-10-18 13:15:32.883733','2','VietNam',1,'[{\"added\": {}}]',23,1),(5,'2021-10-18 13:16:40.758417','4','MyWeb',1,'[{\"added\": {}}]',9,1),(6,'2021-10-18 13:17:18.033861','1','Data Analysis',1,'[{\"added\": {}}]',8,1),(7,'2021-10-18 13:17:23.760824','2','IT',1,'[{\"added\": {}}]',8,1),(8,'2021-10-18 13:17:38.248517','1','Job1',1,'[{\"added\": {}}]',11,1),(9,'2021-10-18 13:46:03.024543','2','Marketing',1,'[{\"added\": {}}]',7,1),(10,'2021-10-18 13:47:16.922606','2','TTDemy',1,'[{\"added\": {}}]',9,1),(11,'2021-10-18 13:47:28.855286','3','Marketing',1,'[{\"added\": {}}]',8,1),(12,'2021-10-18 13:47:58.800853','2','Post2',1,'[{\"added\": {}}]',11,1),(13,'2021-10-19 08:53:11.074237','3','Post 3',1,'[{\"added\": {}}]',11,1),(14,'2021-10-19 10:16:35.117954','4','newPost',1,'[{\"added\": {}}]',11,1),(15,'2021-10-19 10:18:51.157456','5','TestPost',1,'[{\"added\": {}}]',11,1),(16,'2021-10-20 13:29:38.392697','3','VietNam',1,'[{\"added\": {}}]',23,1),(17,'2021-10-20 13:29:49.058212','4','VietNam',1,'[{\"added\": {}}]',23,1),(18,'2021-10-21 15:15:38.640204','8','companyname',3,'',9,1),(19,'2021-10-22 16:47:51.119054','1','Job1',2,'[{\"changed\": {\"fields\": [\"Salary\"]}}]',11,1),(20,'2021-10-22 16:48:02.597367','2','Post2',2,'[{\"changed\": {\"fields\": [\"Salary\"]}}]',11,1),(21,'2021-10-22 16:48:09.277664','3','Post 3',2,'[{\"changed\": {\"fields\": [\"Salary\"]}}]',11,1),(22,'2021-10-22 16:48:16.179429','4','newPost',2,'[{\"changed\": {\"fields\": [\"Salary\"]}}]',11,1),(23,'2021-10-22 16:48:22.647581','5','TestPost',2,'[{\"changed\": {\"fields\": [\"Salary\"]}}]',11,1),(24,'2021-10-23 11:00:07.877981','12','ihihi',3,'',6,1),(25,'2021-10-23 11:00:07.882797','11','hihihi',3,'',6,1),(26,'2021-10-23 11:00:07.887587','10','hihi',3,'',6,1),(27,'2021-10-23 11:00:07.891139','9','newuser',3,'',6,1),(28,'2021-10-23 11:08:21.730728','17','thuthu',3,'',6,1),(29,'2021-10-23 11:08:21.736618','16','thu',3,'',6,1),(30,'2021-10-23 11:08:21.741084','15','newusers',3,'',6,1),(31,'2021-10-23 11:08:21.745266','14','newuser',3,'',6,1),(32,'2021-10-23 11:08:21.748610','13','hi',3,'',6,1),(33,'2021-10-23 11:13:14.241520','19','thuthuhi',3,'',6,1),(34,'2021-10-23 11:13:14.248437','18','thuthu',3,'',6,1);
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
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(12,'jobReferralApp','apply'),(7,'jobReferralApp','category'),(9,'jobReferralApp','employer'),(10,'jobReferralApp','jobapplicant'),(23,'jobReferralApp','location'),(11,'jobReferralApp','post'),(8,'jobReferralApp','tag'),(6,'jobReferralApp','user'),(14,'oauth2_provider','accesstoken'),(13,'oauth2_provider','application'),(15,'oauth2_provider','grant'),(17,'oauth2_provider','idtoken'),(16,'oauth2_provider','refreshtoken'),(5,'sessions','session'),(18,'social_django','association'),(19,'social_django','code'),(20,'social_django','nonce'),(22,'social_django','partial'),(21,'social_django','usersocialauth');
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
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-10-15 03:48:46.667547'),(2,'contenttypes','0002_remove_content_type_name','2021-10-15 03:48:46.983527'),(3,'auth','0001_initial','2021-10-15 03:48:47.583439'),(4,'auth','0002_alter_permission_name_max_length','2021-10-15 03:48:47.763431'),(5,'auth','0003_alter_user_email_max_length','2021-10-15 03:48:47.789751'),(6,'auth','0004_alter_user_username_opts','2021-10-15 03:48:47.813947'),(7,'auth','0005_alter_user_last_login_null','2021-10-15 03:48:47.833485'),(8,'auth','0006_require_contenttypes_0002','2021-10-15 03:48:47.843277'),(9,'auth','0007_alter_validators_add_error_messages','2021-10-15 03:48:47.861670'),(10,'auth','0008_alter_user_username_max_length','2021-10-15 03:48:47.904667'),(11,'auth','0009_alter_user_last_name_max_length','2021-10-15 03:48:47.914127'),(12,'auth','0010_alter_group_name_max_length','2021-10-15 03:48:48.024553'),(13,'auth','0011_update_proxy_permissions','2021-10-15 03:48:48.042700'),(14,'auth','0012_alter_user_first_name_max_length','2021-10-15 03:48:48.060031'),(15,'jobReferralApp','0001_initial','2021-10-15 03:48:50.295076'),(16,'admin','0001_initial','2021-10-15 03:48:50.538351'),(17,'admin','0002_logentry_remove_auto_add','2021-10-15 03:48:50.551617'),(18,'admin','0003_logentry_add_action_flag_choices','2021-10-15 03:48:50.565718'),(19,'oauth2_provider','0001_initial','2021-10-15 03:48:51.881240'),(20,'oauth2_provider','0002_auto_20190406_1805','2021-10-15 03:48:52.013342'),(21,'oauth2_provider','0003_auto_20201211_1314','2021-10-15 03:48:52.145058'),(22,'oauth2_provider','0004_auto_20200902_2022','2021-10-15 03:48:52.852915'),(23,'sessions','0001_initial','2021-10-15 03:48:52.923377'),(24,'default','0001_initial','2021-10-15 03:48:53.520896'),(25,'social_auth','0001_initial','2021-10-15 03:48:53.529609'),(26,'default','0002_add_related_name','2021-10-15 03:48:53.563189'),(27,'social_auth','0002_add_related_name','2021-10-15 03:48:53.570250'),(28,'default','0003_alter_email_max_length','2021-10-15 03:48:53.679558'),(29,'social_auth','0003_alter_email_max_length','2021-10-15 03:48:53.687223'),(30,'default','0004_auto_20160423_0400','2021-10-15 03:48:53.717783'),(31,'social_auth','0004_auto_20160423_0400','2021-10-15 03:48:53.724459'),(32,'social_auth','0005_auto_20160727_2333','2021-10-15 03:48:53.766594'),(33,'social_django','0006_partial','2021-10-15 03:48:53.858057'),(34,'social_django','0007_code_timestamp','2021-10-15 03:48:53.952854'),(35,'social_django','0008_partial_timestamp','2021-10-15 03:48:54.119553'),(36,'social_django','0009_auto_20191118_0520','2021-10-15 03:48:54.332132'),(37,'social_django','0010_uid_db_index','2021-10-15 03:48:54.392169'),(38,'social_django','0002_add_related_name','2021-10-15 03:48:54.404496'),(39,'social_django','0003_alter_email_max_length','2021-10-15 03:48:54.412568'),(40,'social_django','0004_auto_20160423_0400','2021-10-15 03:48:54.421275'),(41,'social_django','0001_initial','2021-10-15 03:48:54.429791'),(42,'social_django','0005_auto_20160727_2333','2021-10-15 03:48:54.438465'),(43,'jobReferralApp','0002_auto_20211018_2006','2021-10-18 13:06:52.393698'),(44,'jobReferralApp','0003_auto_20211018_2043','2021-10-18 13:43:54.836717'),(45,'jobReferralApp','0004_alter_apply_date_apply','2021-10-18 13:43:55.076476'),(46,'jobReferralApp','0005_auto_20211019_1709','2021-10-19 10:09:48.454080'),(47,'jobReferralApp','0006_rename_address_post_address','2021-10-20 10:40:22.214284'),(48,'jobReferralApp','0007_alter_user_avatar','2021-10-20 12:54:35.995359'),(49,'jobReferralApp','0008_post_salary','2021-10-20 14:02:26.033714'),(50,'jobReferralApp','0009_auto_20211022_2336','2021-10-22 16:36:40.088972');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1xd3ikn0y624dxu7paxmob1uv5n45pqj','.eJxVjEEOwiAQRe_C2hBgOmBduu8ZyACDVA0kpV0Z765NutDtf-_9l_C0rcVvnRc_J3ERWpx-t0DxwXUH6U711mRsdV3mIHdFHrTLqSV-Xg_376BQL9-atWVLSXPKVllrY0BwkJ3JGUfWCkdUGgnNWZNjdAzIeYCBgcEZdOL9AeFWN1I:1mc5k3:Ff5j1b32umRrDs4jz4fFDQzxFUrnNCL5pRiXucvIzGs','2021-10-31 12:58:19.993709'),('3xal4cogd3xrmxw5sfmsn5kl166qfw8z','.eJxVjEEOwiAQRe_C2hBgOmBduu8ZyACDVA0kpV0Z765NutDtf-_9l_C0rcVvnRc_J3ERWpx-t0DxwXUH6U711mRsdV3mIHdFHrTLqSV-Xg_376BQL9-atWVLSXPKVllrY0BwkJ3JGUfWCkdUGgnNWZNjdAzIeYCBgcEZdOL9AeFWN1I:1mdxRN:6Rac8qvDLvLEa13Cj7jhUs-8jUWByDj_u24aog_46to','2021-11-05 16:30:45.339595'),('fcz3lckod517kv5xue24lzbkndaka9ot','.eJxVjEEOwiAURO_C2hCg_AIu3fcM5MMHqRpISrsy3t026UJ3k3lv5s08bmvxW0-Ln4ldGbDLbxcwPlM9AD2w3huPra7LHPih8JN2PjVKr9vp_h0U7GVfC2cBRVDkiLTBwRijA2SZlMhByIjGkaIhO9gDBildsnaEiFFYnUdgny_jGDfi:1mjFLN:G3vKqjoNr0gHwt9jlDJn1Qys5hVMGblrLKL3Tmxc0ZI','2021-11-20 06:38:25.828007'),('kmhfrytn4a69z2q307e21y0a9efzt6a1','.eJxVjEEOwiAQRe_C2hBgOmBduu8ZyACDVA0kpV0Z765NutDtf-_9l_C0rcVvnRc_J3ERWpx-t0DxwXUH6U711mRsdV3mIHdFHrTLqSV-Xg_376BQL9-atWVLSXPKVllrY0BwkJ3JGUfWCkdUGgnNWZNjdAzIeYCBgcEZdOL9AeFWN1I:1mbGZH:qKMhX35VIDe1mSEL3KbR40tIskdSVaKuJQ6KQtnyUH4','2021-10-29 06:19:47.713554'),('puuae3t18c30axde5jvznkhin3yhuil8','.eJxVjEEOwiAQRe_C2hBgOmBduu8ZyACDVA0kpV0Z765NutDtf-_9l_C0rcVvnRc_J3ERWpx-t0DxwXUH6U711mRsdV3mIHdFHrTLqSV-Xg_376BQL9-atWVLSXPKVllrY0BwkJ3JGUfWCkdUGgnNWZNjdAzIeYCBgcEZdOL9AeFWN1I:1meEkl:e0hj51AHLdTyM1FXbd6-omlLlZYaK5fk02HVhb-24Z4','2021-11-06 10:59:55.921907'),('u5w5sfbi87bf2e4ysul5vrp7jukghsiq','.eJxVjEEOwiAQRe_C2hBgOmBduu8ZyACDVA0kpV0Z765NutDtf-_9l_C0rcVvnRc_J3ERWpx-t0DxwXUH6U711mRsdV3mIHdFHrTLqSV-Xg_376BQL9-atWVLSXPKVllrY0BwkJ3JGUfWCkdUGgnNWZNjdAzIeYCBgcEZdOL9AeFWN1I:1mbJYE:ut5SWXPOo4JcrWkdtqJapMtnWYYCZzuHvdKN8cZ2pqA','2021-10-29 09:30:54.204885');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobreferralapp_apply`
--

DROP TABLE IF EXISTS `jobreferralapp_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobreferralapp_apply` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_apply` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `stars` int DEFAULT NULL,
  `post_id` bigint NOT NULL,
  `applicant_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobReferralApp_apply_post_id_b20e49dc_fk_jobReferralApp_post_id` (`post_id`),
  KEY `jobReferralApp_apply_applicant_id_a1ae9829_fk_jobReferr` (`applicant_id`),
  CONSTRAINT `jobReferralApp_apply_applicant_id_a1ae9829_fk_jobReferr` FOREIGN KEY (`applicant_id`) REFERENCES `jobreferralapp_jobapplicant` (`user_id`),
  CONSTRAINT `jobReferralApp_apply_post_id_b20e49dc_fk_jobReferralApp_post_id` FOREIGN KEY (`post_id`) REFERENCES `jobreferralapp_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobreferralapp_apply`
--

LOCK TABLES `jobreferralapp_apply` WRITE;
/*!40000 ALTER TABLE `jobreferralapp_apply` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobreferralapp_apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobreferralapp_category`
--

DROP TABLE IF EXISTS `jobreferralapp_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobreferralapp_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobreferralapp_category`
--

LOCK TABLES `jobreferralapp_category` WRITE;
/*!40000 ALTER TABLE `jobreferralapp_category` DISABLE KEYS */;
INSERT INTO `jobreferralapp_category` VALUES (1,'Data Analysis',NULL),(2,'Marketing',NULL);
/*!40000 ALTER TABLE `jobreferralapp_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobreferralapp_employer`
--

DROP TABLE IF EXISTS `jobreferralapp_employer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobreferralapp_employer` (
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `contact_phone` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `is_accepted` tinyint(1) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `contact_phone` (`contact_phone`),
  CONSTRAINT `jobReferralApp_emplo_user_id_70fa6c1c_fk_jobReferr` FOREIGN KEY (`user_id`) REFERENCES `jobreferralapp_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobreferralapp_employer`
--

LOCK TABLES `jobreferralapp_employer` WRITE;
/*!40000 ALTER TABLE `jobreferralapp_employer` DISABLE KEYS */;
INSERT INTO `jobreferralapp_employer` VALUES ('TTDemy','Go Vap','npthuthuy237@gmail.com','+84941662402',1,2),('MyWeb','HCM','1851050140thuy@ou.edu.vn','+84941662403',1,4),('thuy','Duong Quang Ham, p5, Go Vap','thu@gmail.com','+84941762401',0,8);
/*!40000 ALTER TABLE `jobreferralapp_employer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobreferralapp_jobapplicant`
--

DROP TABLE IF EXISTS `jobreferralapp_jobapplicant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobreferralapp_jobapplicant` (
  `cv` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover_letter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `phone` (`phone`),
  CONSTRAINT `jobReferralApp_jobap_user_id_14b10ee4_fk_jobReferr` FOREIGN KEY (`user_id`) REFERENCES `jobreferralapp_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobreferralapp_jobapplicant`
--

LOCK TABLES `jobreferralapp_jobapplicant` WRITE;
/*!40000 ALTER TABLE `jobreferralapp_jobapplicant` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobreferralapp_jobapplicant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobreferralapp_location`
--

DROP TABLE IF EXISTS `jobreferralapp_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobreferralapp_location` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobreferralapp_location`
--

LOCK TABLES `jobreferralapp_location` WRITE;
/*!40000 ALTER TABLE `jobreferralapp_location` DISABLE KEYS */;
INSERT INTO `jobreferralapp_location` VALUES (2,'VietNam','Ho Chi Minh City'),(3,'VietNam','Ha Noi'),(4,'VietNam','Da Nang');
/*!40000 ALTER TABLE `jobreferralapp_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobreferralapp_post`
--

DROP TABLE IF EXISTS `jobreferralapp_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobreferralapp_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `category_id` bigint DEFAULT NULL,
  `employer_id` bigint NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location_id` bigint NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `salary` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jobReferralApp_post_category_id_b5a3a96c_fk_jobReferr` (`category_id`),
  KEY `jobReferralApp_post_employer_id_72a4f46f_fk_jobReferr` (`employer_id`),
  KEY `jobReferralApp_post_location_id_128782af_fk_jobReferr` (`location_id`),
  CONSTRAINT `jobReferralApp_post_category_id_b5a3a96c_fk_jobReferr` FOREIGN KEY (`category_id`) REFERENCES `jobreferralapp_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobreferralapp_post`
--

LOCK TABLES `jobreferralapp_post` WRITE;
/*!40000 ALTER TABLE `jobreferralapp_post` DISABLE KEYS */;
INSERT INTO `jobreferralapp_post` VALUES (1,'Job1','<p>this is a descriptions</p>','static/uploads/images/2021/10/angular.png','2021-10-18 00:00:00.000000','2021-10-22 16:47:51.111054',1,1,4,'Binh Thanh',2,'this is a subtitle',0),(2,'Post2','<p>des1</p>','static/uploads/images/2021/10/biglogo.png','2021-10-18 00:00:00.000000','2021-10-22 16:48:02.597367',1,2,2,'Tan Binh',3,'this is a subtitle',0),(3,'Post 3','<p>hihi</p>','static/uploads/images/2021/10/tt.png','2021-10-19 00:00:00.000000','2021-10-22 16:48:09.275403',1,2,4,'10 District',2,'this is a subtitle',0),(4,'newPost','<h1>Hello</h1>\r\n\r\n<p>this is a description</p>','static/uploads/images/2021/10/contact.png','2021-10-19 10:16:35.111519','2021-10-22 16:48:16.172523',1,2,4,'Binh Thanh',2,'this is a new Post',0),(5,'TestPost','<p>hi</p>','static/uploads/images/2021/10/contact_ExQPZAS.png','2021-10-19 10:18:51.152455','2021-10-22 16:48:22.641965',1,1,2,'10 District',2,'hello',0),(8,'Job2','<p>test</p>','hi','2021-10-19 10:18:51.152455','2021-10-22 16:48:22.641965',1,1,2,'null',4,'hi',0),(9,'Hi','hi','hi','2021-10-19 10:18:51.152455','2021-10-22 16:48:22.641965',1,1,4,'null',3,'hi',0);
/*!40000 ALTER TABLE `jobreferralapp_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobreferralapp_post_tags`
--

DROP TABLE IF EXISTS `jobreferralapp_post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobreferralapp_post_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jobReferralApp_post_tags_post_id_tag_id_8561687d_uniq` (`post_id`,`tag_id`),
  KEY `jobReferralApp_post__tag_id_e0e78fa6_fk_jobReferr` (`tag_id`),
  CONSTRAINT `jobReferralApp_post__post_id_9ec8d8dc_fk_jobReferr` FOREIGN KEY (`post_id`) REFERENCES `jobreferralapp_post` (`id`),
  CONSTRAINT `jobReferralApp_post__tag_id_e0e78fa6_fk_jobReferr` FOREIGN KEY (`tag_id`) REFERENCES `jobreferralapp_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobreferralapp_post_tags`
--

LOCK TABLES `jobreferralapp_post_tags` WRITE;
/*!40000 ALTER TABLE `jobreferralapp_post_tags` DISABLE KEYS */;
INSERT INTO `jobreferralapp_post_tags` VALUES (1,1,1),(2,1,2),(3,2,3),(4,3,3),(5,4,3),(6,5,1);
/*!40000 ALTER TABLE `jobreferralapp_post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobreferralapp_tag`
--

DROP TABLE IF EXISTS `jobreferralapp_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobreferralapp_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobreferralapp_tag`
--

LOCK TABLES `jobreferralapp_tag` WRITE;
/*!40000 ALTER TABLE `jobreferralapp_tag` DISABLE KEYS */;
INSERT INTO `jobreferralapp_tag` VALUES (1,'Data Analysis'),(2,'IT'),(3,'Marketing');
/*!40000 ALTER TABLE `jobreferralapp_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobreferralapp_user`
--

DROP TABLE IF EXISTS `jobreferralapp_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobreferralapp_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `avatar` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobreferralapp_user`
--

LOCK TABLES `jobreferralapp_user` WRITE;
/*!40000 ALTER TABLE `jobreferralapp_user` DISABLE KEYS */;
INSERT INTO `jobreferralapp_user` VALUES (1,'pbkdf2_sha256$260000$3hhTBZkwzKfKo5xkceCRUo$vukFvLCoqj7ngzW42YUWt2G5BepHBPeqfI/EXccv1ks=','2021-10-24 09:26:15.800157',1,'admin','','','admin@gmail.com',1,1,'2021-10-15 03:49:11.000000','static/uploads/avatar/2021/10/001.png'),(2,'!CfdwKjk7a1BChheTz4hgz8dpnE5aYef3JfKMQjFz',NULL,0,'npthuthuy237','Thu Thủy','Nguyễn Phương','npthuthuy237@gmail.com',0,1,'2021-10-15 04:32:44.272403',''),(3,'!GIQ77KmNGTwZZVA9rIPtruTFFhx8ohIAZig43TnI',NULL,0,'ngaymuadai72','Thu Thủy','Nguyễn Phương','ngaymuadai72@gmail.com',0,1,'2021-10-15 06:12:51.178302',''),(4,'!GAehL94hCg8j4etMRBKwGoCz8zIedfwxkJEZhr7A',NULL,0,'1851050140thuy','Thuy','Nguyen Phuong Thu','1851050140thuy@ou.edu.vn',0,1,'2021-10-15 06:14:30.075098',''),(5,'pbkdf2_sha256$260000$IEDefOyDqzEHMo0irUiMtT$SwY/3fHNc4XcWukShI6dLZC21/jMXOhlZqj1K0RC1DM=','2021-11-06 06:38:25.803558',0,'ThuThuy','','','thuy@gmail.com',0,1,'2021-10-20 12:54:50.327138',''),(6,'pbkdf2_sha256$260000$HAUqtpeZlm9mQPbK9siUQ2$tER6d/NAEUOIfQ7Hj0Okdat7Ev/854/is1I5CKm8qPk=',NULL,0,'meo','','','hihi@gmail.com',0,1,'2021-10-20 13:00:35.374357',''),(7,'pbkdf2_sha256$260000$PAiag15tLwHFX8QBD228RT$WU9TGe+4ADJmgPYD7msTinextpNLm8FgpVQC7hQXuJ0=',NULL,0,'thuy','','','thuy@gmail.com',0,1,'2021-10-20 13:02:08.563226',''),(8,'pbkdf2_sha256$260000$9QKDvPAob71rk7SPlndZGz$/56BZy86KoJBy0P37pJvCwYkXIbzB9POzBIKY4WGaO0=',NULL,0,'helloword','','','newuser@gmail.com',0,1,'2021-10-21 10:37:01.387961',''),(20,'pbkdf2_sha256$260000$cQb4fhMBRtZqVkvQqxuGaD$8DYGXCSigw4m2vEtjMmL1jrjy2Ea1qkizgASbhgQTpY=',NULL,0,'thu','','','thuy@gmail.com',0,1,'2021-10-23 11:14:03.552094',''),(21,'pbkdf2_sha256$260000$IwuHuYKxoMG3cGACa1ctKL$dKpD8jZ0g5MbOFAUtKcBut2DSMti9g8FJPojSL0UVbQ=',NULL,0,'thuthu','','','thuy@gmail.com',0,1,'2021-10-23 11:16:15.696926',''),(22,'pbkdf2_sha256$260000$SsTii4H0gCud4vRwc2lfUQ$u0meKp1pYIEuC1EHsXVfYPNsCVjHqb5EkrAJZobtx2g=',NULL,0,'thuthuthu','','','thuy@gmail.com',0,1,'2021-10-23 11:17:57.904589',''),(23,'pbkdf2_sha256$260000$zRaWV2JvxIKlWD0I3qPAbR$xx+E5S7VfuWBbGAfbmngdHOg1DM73hcrLhKz1Q8Ov7I=',NULL,0,'hi','','','hihi@gmail.com',0,1,'2021-10-23 11:22:37.709089','');
/*!40000 ALTER TABLE `jobreferralapp_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobreferralapp_user_groups`
--

DROP TABLE IF EXISTS `jobreferralapp_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobreferralapp_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jobReferralApp_user_groups_user_id_group_id_d4a795b1_uniq` (`user_id`,`group_id`),
  KEY `jobReferralApp_user_groups_group_id_5e9ce792_fk_auth_group_id` (`group_id`),
  CONSTRAINT `jobReferralApp_user__user_id_ce04ccea_fk_jobReferr` FOREIGN KEY (`user_id`) REFERENCES `jobreferralapp_user` (`id`),
  CONSTRAINT `jobReferralApp_user_groups_group_id_5e9ce792_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobreferralapp_user_groups`
--

LOCK TABLES `jobreferralapp_user_groups` WRITE;
/*!40000 ALTER TABLE `jobreferralapp_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobreferralapp_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobreferralapp_user_user_permissions`
--

DROP TABLE IF EXISTS `jobreferralapp_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobreferralapp_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jobReferralApp_user_user_user_id_permission_id_b786f9be_uniq` (`user_id`,`permission_id`),
  KEY `jobReferralApp_user__permission_id_87b0b5f1_fk_auth_perm` (`permission_id`),
  CONSTRAINT `jobReferralApp_user__permission_id_87b0b5f1_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `jobReferralApp_user__user_id_5379cba9_fk_jobReferr` FOREIGN KEY (`user_id`) REFERENCES `jobreferralapp_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobreferralapp_user_user_permissions`
--

LOCK TABLES `jobreferralapp_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `jobreferralapp_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobreferralapp_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_accesstoken`
--

DROP TABLE IF EXISTS `oauth2_provider_accesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_accesstoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext COLLATE utf8_unicode_ci NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `source_refresh_token_id` bigint DEFAULT NULL,
  `id_token_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  UNIQUE KEY `source_refresh_token_id` (`source_refresh_token_id`),
  UNIQUE KEY `id_token_id` (`id_token_id`),
  KEY `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_acce_user_id_6e4c9a65_fk_jobReferr` (`user_id`),
  CONSTRAINT `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_acce_id_token_id_85db651b_fk_oauth2_pr` FOREIGN KEY (`id_token_id`) REFERENCES `oauth2_provider_idtoken` (`id`),
  CONSTRAINT `oauth2_provider_acce_source_refresh_token_e66fbc72_fk_oauth2_pr` FOREIGN KEY (`source_refresh_token_id`) REFERENCES `oauth2_provider_refreshtoken` (`id`),
  CONSTRAINT `oauth2_provider_acce_user_id_6e4c9a65_fk_jobReferr` FOREIGN KEY (`user_id`) REFERENCES `jobreferralapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_accesstoken` VALUES (1,'3au70pfkrypqyPs2mRsHiHUvnK2768','2021-10-15 13:58:47.207373','read write',1,1,'2021-10-15 03:58:47.208373','2021-10-15 03:58:47.208373',NULL,NULL),(2,'bSceDW2rNjFpTT8pGzM5bdpXPTFUm3','2021-10-15 14:04:12.771542','read write',1,1,'2021-10-15 04:04:12.772543','2021-10-15 04:04:12.772543',NULL,NULL),(3,'Mcc5TQaS5zSjJaJosQ2E7vfRIPzQkG','2021-10-15 14:32:44.318698','read write',1,2,'2021-10-15 04:32:44.319816','2021-10-15 04:32:44.319816',NULL,NULL),(4,'ErXvQnJKbSBBN0icnYFfddwVk3Ik43','2021-10-15 14:33:35.771429','read write',1,2,'2021-10-15 04:33:35.771429','2021-10-15 04:33:35.771429',NULL,NULL),(5,'eD6pKrA29vWVwgrAQ8O8jHl2efKOdk','2021-10-15 14:34:22.676589','read write',1,2,'2021-10-15 04:34:22.676589','2021-10-15 04:34:22.676589',NULL,NULL),(6,'Ht6AEPYxgmmAC53caPiYi4EoCKZBNz','2021-10-15 14:35:20.647322','read write',1,2,'2021-10-15 04:35:20.647322','2021-10-15 04:35:20.647322',NULL,NULL),(7,'5vYbUj1Kv8io4UQtjIYcDfxs6URmRc','2021-10-15 15:38:42.451071','read write',1,2,'2021-10-15 05:38:42.452073','2021-10-15 05:38:42.452073',NULL,NULL),(8,'t6If9WLnOvaEguTiX6seIyihibSINw','2021-10-15 15:43:53.858699','read write',1,2,'2021-10-15 05:43:53.859688','2021-10-15 05:43:53.859688',NULL,NULL),(9,'L5yBHDjTZ4E7Kh5WZErPrzaZbDZkAq','2021-10-15 15:46:58.615738','read write',1,2,'2021-10-15 05:46:58.616738','2021-10-15 05:46:58.616738',NULL,NULL),(10,'LfOinJkMW8VhgEsn5QOhkrVSfRu9kA','2021-10-15 15:53:15.620413','read write',1,2,'2021-10-15 05:53:15.620413','2021-10-15 05:53:15.621415',NULL,NULL),(11,'ohU6K6L2AObqVEicK5z7CCQHeVU4Nn','2021-10-15 15:54:40.414550','read write',1,2,'2021-10-15 05:54:40.415577','2021-10-15 05:54:40.416348',NULL,NULL),(12,'81EOhUd7oMKyPvLA0m3hO7PC8FE9e9','2021-10-15 15:56:51.315595','read write',1,2,'2021-10-15 05:56:51.316577','2021-10-15 05:56:51.316577',NULL,NULL),(13,'qxLEltC5kjBHN2EXa6uL8cJMFf7mnp','2021-10-15 15:57:53.013233','read write',1,2,'2021-10-15 05:57:53.014231','2021-10-15 05:57:53.014231',NULL,NULL),(14,'bwczR3hYCKrbyeypHbxY6vogLxEF4e','2021-10-15 15:58:26.042202','read write',1,2,'2021-10-15 05:58:26.043199','2021-10-15 05:58:26.043199',NULL,NULL),(15,'lJH4w38uvN8GPjOqEeYlUtbAgQnkRe','2021-10-15 15:58:55.686092','read write',1,2,'2021-10-15 05:58:55.687091','2021-10-15 05:58:55.687091',NULL,NULL),(16,'AcG615SMdixcKY9QJ94eeBz5X07HHU','2021-10-15 15:59:06.751176','read write',1,2,'2021-10-15 05:59:06.752881','2021-10-15 05:59:06.752881',NULL,NULL),(17,'tSvvJwPyW92DAYqrlaLYGQP5Dodxnk','2021-10-15 15:59:16.400186','read write',1,2,'2021-10-15 05:59:16.401198','2021-10-15 05:59:16.401198',NULL,NULL),(18,'crfRazVwSxF4YrkDBo4QmMLozETTvY','2021-10-15 15:59:38.567523','read write',1,2,'2021-10-15 05:59:38.569245','2021-10-15 05:59:38.569245',NULL,NULL),(19,'svOD5OcauJb6fYAWqgwhn8rJeyLVh0','2021-10-15 16:00:11.934453','read write',1,1,'2021-10-15 06:00:11.935976','2021-10-15 06:00:11.935976',NULL,NULL),(20,'TbeKtHsK7Y4N4wadKTjwKrWsf3RAaz','2021-10-15 16:01:36.101972','read write',1,1,'2021-10-15 06:01:36.102970','2021-10-15 06:01:36.102970',NULL,NULL),(21,'I8s0W0pHLVhTmh22IGjgVmHCGOR5dJ','2021-10-15 16:01:51.657553','read write',1,2,'2021-10-15 06:01:51.658548','2021-10-15 06:01:51.658548',NULL,NULL),(22,'8HaXe8EGn4w0MSNiSif49vOUrDF9z0','2021-10-15 16:03:56.985857','read write',1,2,'2021-10-15 06:03:56.985857','2021-10-15 06:03:56.985857',NULL,NULL),(23,'YDj4aE8m3eB9lScyjFXHTZaf60QgZ2','2021-10-15 16:04:30.103045','read write',1,2,'2021-10-15 06:04:30.104054','2021-10-15 06:04:30.104054',NULL,NULL),(24,'pBp5dgKpXjgVSc9D6nSzyzhtwRikQo','2021-10-15 16:10:45.109291','read write',1,2,'2021-10-15 06:10:45.110290','2021-10-15 06:10:45.110290',NULL,NULL),(25,'z41mtxM6GshNNIsCIMV68YlUyyN4n6','2021-10-15 16:12:51.230616','read write',1,3,'2021-10-15 06:12:51.231612','2021-10-15 06:12:51.231612',NULL,NULL),(26,'42JLAZPtm3HtbFZOcCLnAibzBWjbsX','2021-10-15 16:14:30.109137','read write',1,4,'2021-10-15 06:14:30.110174','2021-10-15 06:14:30.110174',NULL,NULL),(27,'wkQAtFYFZJeBN7Ldd7jfyGz2LH5z5u','2021-10-15 16:15:00.877302','read write',1,4,'2021-10-15 06:15:00.878302','2021-10-15 06:15:00.878302',NULL,NULL),(28,'7wJ0s5abepepw9xeakvWZFhIQ2i8PM','2021-10-15 16:16:44.176630','read write',1,4,'2021-10-15 06:16:44.177628','2021-10-15 06:16:44.177628',NULL,NULL),(29,'AAhmkoCisd2EJQidCOCIA9tXYBO4p8','2021-10-15 16:18:05.718963','read write',1,2,'2021-10-15 06:18:05.719951','2021-10-15 06:18:05.719951',NULL,NULL),(30,'QCTAiDWVt1Oi8DfeSwh2bqTIR4XOdX','2021-10-15 16:18:42.829867','read write',1,2,'2021-10-15 06:18:42.830865','2021-10-15 06:18:42.830865',NULL,NULL),(31,'AKU1nZOrfMWtzCoBjMIz4884AietjZ','2021-10-15 16:19:17.820628','read write',1,4,'2021-10-15 06:19:17.821619','2021-10-15 06:19:17.821619',NULL,NULL),(32,'9t4J0p9IsPwieMuV94p71pbvsGnmtB','2021-10-15 16:20:33.029152','read write',1,2,'2021-10-15 06:20:33.030151','2021-10-15 06:20:33.030151',NULL,NULL),(33,'mF9Zz51bBR1rUM7worz7m3hOAHyB2h','2021-10-15 16:21:00.442898','read write',1,3,'2021-10-15 06:21:00.443897','2021-10-15 06:21:00.443897',NULL,NULL),(34,'901F6PKJM7RmV9UXIQEBSYepJxyksE','2021-10-15 16:22:04.688420','read write',1,3,'2021-10-15 06:22:04.688420','2021-10-15 06:22:04.688420',NULL,NULL),(35,'4Bf2ZY7WZEvJIpRXmSK7weiIXx7ARV','2021-10-15 16:22:32.377681','read write',1,2,'2021-10-15 06:22:32.378867','2021-10-15 06:22:32.378867',NULL,NULL),(36,'mKQguHJ71kved1REX1szNdmfPhIeHZ','2021-10-15 16:23:26.265439','read write',1,2,'2021-10-15 06:23:26.266431','2021-10-15 06:23:26.266431',NULL,NULL),(37,'Ql81e6I5Uf9CTEjpbDtBx4VhWh1kyQ','2021-10-15 16:26:56.232868','read write',1,2,'2021-10-15 06:26:56.233826','2021-10-15 06:26:56.234868',NULL,NULL),(38,'VIAr8D3eVaVGP47cWmIpeG4eQy35Rz','2021-10-15 16:27:32.403291','read write',1,3,'2021-10-15 06:27:32.404283','2021-10-15 06:27:32.404283',NULL,NULL),(39,'85ITOS8qXjix3Be53cw9t0FyvycbuM','2021-10-17 13:05:45.007330','read write',1,2,'2021-10-17 03:05:45.008330','2021-10-17 03:05:45.008330',NULL,NULL),(40,'2Rus8c7zqXGvMJC6ALfKEbz2TFhLKT','2021-10-17 13:11:21.915190','read write',1,1,'2021-10-17 03:11:21.916186','2021-10-17 03:11:21.916186',NULL,NULL),(41,'UuyiQsAINVAecuKQij2Tjv3SqPiEbd','2021-10-17 13:31:50.447442','read write',1,2,'2021-10-17 03:31:50.447442','2021-10-17 03:31:50.447442',NULL,NULL),(42,'WWyJzrpDey51WNMoJmRUdTYGZrcfEJ','2021-10-17 13:39:56.738266','read write',1,2,'2021-10-17 03:39:56.738266','2021-10-17 03:39:56.738266',NULL,NULL),(43,'YyDEXprxYt5eHa8hPiplqzNsahIJsA','2021-10-17 13:50:35.366006','read write',1,1,'2021-10-17 03:50:35.366006','2021-10-17 03:50:35.366006',NULL,NULL),(44,'EPy9UucNRahz0sKUsb6D9vyznTcg6r','2021-10-17 15:11:08.325634','read write',1,1,'2021-10-17 05:11:08.344758','2021-10-17 05:11:08.345754',NULL,NULL),(45,'LKTuTJOWFL3iuklI6ddRMAgXYsCwnz','2021-10-17 22:49:54.417710','read write',1,2,'2021-10-17 12:49:54.418747','2021-10-17 12:49:54.418747',NULL,NULL),(46,'kOJiDta2XCOtv3GCw2RpjrMGLLLEFo','2021-10-17 23:04:27.111289','read write',1,1,'2021-10-17 13:04:27.112264','2021-10-17 13:04:27.112264',NULL,NULL),(47,'iJqtqrbwdI3z7jFwUslpUd6rAyfxGL','2021-10-20 23:01:49.204497','read write',1,5,'2021-10-20 13:01:49.204497','2021-10-20 13:01:49.204497',NULL,NULL),(48,'Tno6PYWAHhEgolQm54XJUYNw2Rwe5M','2021-10-20 23:03:38.538590','read write',1,5,'2021-10-20 13:03:38.546009','2021-10-20 13:03:38.546009',NULL,NULL),(49,'ZD0STe9xKlHgtVkveuslJfH4gnnQVg','2021-10-20 23:03:55.434162','read write',1,1,'2021-10-20 13:03:55.434162','2021-10-20 13:03:55.434162',NULL,NULL),(50,'SVCCz09heJoy0VG3AZSwrrCXCkQpFe','2021-10-21 12:38:29.612767','read write',1,5,'2021-10-21 02:38:29.613766','2021-10-21 02:38:29.613766',NULL,NULL),(51,'7WxwmCOifsMXlSUMIrMEdMdBiaBEoR','2021-10-21 20:38:44.064818','read write',1,8,'2021-10-21 10:38:44.064818','2021-10-21 10:38:44.064818',NULL,NULL),(52,'YQw5cZCvyf7AJuKE1Bb2hOdyqyLpNW','2021-10-21 21:11:53.383187','read write',1,8,'2021-10-21 11:11:53.384187','2021-10-21 11:11:53.384187',NULL,NULL),(53,'CVufV6hyisuESQUcBNRtzPrPN8h29K','2021-10-23 02:49:24.149870','read write',1,5,'2021-10-22 16:49:24.150438','2021-10-22 16:49:24.150438',NULL,NULL),(54,'SBkXznvf7VVkuyKAm4HvB2LnsuGqfG','2021-10-23 02:49:35.662664','read write',1,1,'2021-10-22 16:49:35.662664','2021-10-22 16:49:35.662664',NULL,NULL),(55,'BVuUwgZVwPXhsgbBBnJdEfrkQKsDjG','2021-10-23 02:49:54.046571','read write',1,1,'2021-10-22 16:49:54.046571','2021-10-22 16:49:54.046571',NULL,NULL),(56,'GIy9dLnC8NdFgxNLx6iJmtwb4k6fv8','2021-10-23 02:53:26.706171','read write',1,5,'2021-10-22 16:53:26.714170','2021-10-22 16:53:26.714170',NULL,NULL),(57,'0s1AxaAG0NP2HgCcVMaqZvTed9vXTW','2021-10-23 20:20:50.130464','read write',1,5,'2021-10-23 10:20:50.130464','2021-10-23 10:20:50.130464',NULL,NULL),(58,'gWi4Q6S9mhWxRiJ7zFZBnWRFJG1EzX','2021-10-23 20:21:02.722679','read write',1,5,'2021-10-23 10:21:02.723679','2021-10-23 10:21:02.723679',NULL,NULL),(59,'mJe6da4d7XF2fhg4qjbr557b13Umzr','2021-10-23 20:52:17.142956','read write',1,5,'2021-10-23 10:52:17.144977','2021-10-23 10:52:17.144977',NULL,NULL),(60,'0uMiRuaQARHQ7B4h68Oetg9oV12zNz','2021-10-23 20:52:48.568831','read write',1,6,'2021-10-23 10:52:48.568831','2021-10-23 10:52:48.568831',NULL,NULL),(61,'Q9tLSGCC8Vm6StfV1k0B5l95ytmyYC','2021-10-23 20:53:00.798273','read write',1,6,'2021-10-23 10:53:00.799278','2021-10-23 10:53:00.799278',NULL,NULL),(62,'H3en8MA7tVAScmTODmPTwI9rgJ97kH','2021-10-23 20:53:28.187737','read write',1,6,'2021-10-23 10:53:28.188693','2021-10-23 10:53:28.188693',NULL,NULL),(63,'a5tFQ3UoE1DSZMW4zdIkrHYVV7buEY','2021-10-23 20:55:00.126768','read write',1,6,'2021-10-23 10:55:00.127722','2021-10-23 10:55:00.127722',NULL,NULL),(64,'1fCQTgKHXN0hxhSzfc7uPu4P3jFGpB','2021-10-23 21:22:37.899787','read write',1,23,'2021-10-23 11:22:37.900795','2021-10-23 11:22:37.900795',NULL,NULL),(65,'BE9PbsZegF3T0KT7zWNgv9nJIfkDBN','2021-10-23 21:23:30.438694','read write',1,23,'2021-10-23 11:23:30.439687','2021-10-23 11:23:30.439687',NULL,NULL),(66,'cvi7ZmU9IOT6jRfI5AfW1E04oWmFwK','2021-10-24 19:19:37.903496','read write',1,5,'2021-10-24 09:19:37.909510','2021-10-24 09:19:37.909510',NULL,NULL),(67,'psNZ5kwOaJhSrbbhM6PJLKOdInUyZJ','2021-10-24 19:23:28.697646','read write',1,4,'2021-10-24 09:23:28.697646','2021-10-24 09:23:28.697646',NULL,NULL),(68,'3HPrGkvq5ZhAXvCDUIutKYjUvYO77s','2021-10-24 19:24:09.668465','read write',1,4,'2021-10-24 09:24:09.668465','2021-10-24 09:24:09.668465',NULL,NULL),(69,'1PtIG56tyTcXquX0SsfizInUjwiao3','2021-10-24 19:25:08.078284','read write',1,3,'2021-10-24 09:25:08.078284','2021-10-24 09:25:08.078284',NULL,NULL),(70,'DLNSgixRjZXrLBNnE9iyorpMrB8PxO','2021-10-24 19:44:54.591728','read write',1,3,'2021-10-24 09:44:54.591728','2021-10-24 09:44:54.591728',NULL,NULL),(71,'ZYcZLdtU8iFPw1vwwOxd69DsSJ1oAq','2021-10-24 20:26:10.592441','read write',1,7,'2021-10-24 10:26:10.592441','2021-10-24 10:26:10.592441',NULL,NULL),(72,'TydXQXyXxswFJg5dfKK80WVQxkh6Je','2021-10-25 00:24:42.285443','read write',1,5,'2021-10-24 14:24:42.286443','2021-10-24 14:24:42.286443',NULL,NULL),(73,'nv1hjZZVUI3Vp8ULePUCqNhBuAhYUb','2021-10-25 00:49:47.772077','read write',1,4,'2021-10-24 14:49:47.772077','2021-10-24 14:49:47.772077',NULL,NULL),(74,'AWcEzZSOQrX3Pxuoj6msNH1HYKtTqH','2021-10-25 19:59:33.918230','read write',1,5,'2021-10-25 09:59:33.918230','2021-10-25 09:59:33.918230',NULL,NULL),(75,'aHxSHl9vTD6s0SV60epGPlT4HKEk0L','2021-10-25 20:26:22.536841','read write',1,5,'2021-10-25 10:26:22.536841','2021-10-25 10:26:22.536841',NULL,NULL),(76,'Zl0MILuszfLSa7dMFoSXy5IuIXhlZL','2021-10-25 21:03:22.140721','read write',1,5,'2021-10-25 11:03:22.144724','2021-10-25 11:03:22.144724',NULL,NULL),(77,'RSF28S3FgCqRPdQNMavfdxMiIhia8V','2021-11-21 15:51:58.305218','read write',1,5,'2021-11-21 05:51:58.305218','2021-11-21 05:51:58.305218',NULL,NULL);
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_application`
--

DROP TABLE IF EXISTS `oauth2_provider_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_application` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `client_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uris` longtext COLLATE utf8_unicode_ci NOT NULL,
  `client_type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `authorization_grant_type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `client_secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `algorithm` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`client_id`),
  KEY `oauth2_provider_appl_user_id_79829054_fk_jobReferr` (`user_id`),
  KEY `oauth2_provider_application_client_secret_53133678` (`client_secret`),
  CONSTRAINT `oauth2_provider_appl_user_id_79829054_fk_jobReferr` FOREIGN KEY (`user_id`) REFERENCES `jobreferralapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_application`
--

LOCK TABLES `oauth2_provider_application` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_application` DISABLE KEYS */;
INSERT INTO `oauth2_provider_application` VALUES (1,'rkIEIks89aJKch3vGO4JSwDWDwxgWK6l6MsQodwi','','confidential','password','tZnJ8hN76t6CQFI3lB1oRCw3Zgoyf3gFMWw4qqHscI8LWhlZGZHdFn8U2qXDa9l9qlOgjLXDoUrIa8moDzyiBXlEeGMnjKyIrhH9yIpmj7DHvmK8id2KsjZKFDi7hjK8','Job App',1,0,'2021-10-15 03:49:45.849525','2021-10-15 03:49:45.849525','');
/*!40000 ALTER TABLE `oauth2_provider_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_grant`
--

DROP TABLE IF EXISTS `oauth2_provider_grant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_grant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `redirect_uri` longtext COLLATE utf8_unicode_ci NOT NULL,
  `scope` longtext COLLATE utf8_unicode_ci NOT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `code_challenge` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `code_challenge_method` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `nonce` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `claims` longtext COLLATE utf8_unicode_ci NOT NULL DEFAULT (_utf8mb3''),
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_grant_user_id_e8f62af8_fk_jobReferralApp_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_grant_user_id_e8f62af8_fk_jobReferralApp_user_id` FOREIGN KEY (`user_id`) REFERENCES `jobreferralapp_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_grant`
--

LOCK TABLES `oauth2_provider_grant` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_grant` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_idtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_idtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_idtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `jti` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jti` (`jti`),
  KEY `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_idto_user_id_dd512b59_fk_jobReferr` (`user_id`),
  CONSTRAINT `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_idto_user_id_dd512b59_fk_jobReferr` FOREIGN KEY (`user_id`) REFERENCES `jobreferralapp_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_idtoken`
--

LOCK TABLES `oauth2_provider_idtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_refreshtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_refreshtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_refreshtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` bigint DEFAULT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `revoked` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token_id` (`access_token_id`),
  UNIQUE KEY `oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq` (`token`,`revoked`),
  KEY `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_refr_user_id_da837fce_fk_jobReferr` (`user_id`),
  CONSTRAINT `oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr` FOREIGN KEY (`access_token_id`) REFERENCES `oauth2_provider_accesstoken` (`id`),
  CONSTRAINT `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_refr_user_id_da837fce_fk_jobReferr` FOREIGN KEY (`user_id`) REFERENCES `jobreferralapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_refreshtoken` VALUES (1,'saX4mUeQ0iw48d1sKyIf46CZRNEuY6',1,1,1,'2021-10-15 03:58:47.230775','2021-10-15 03:58:47.230775',NULL),(2,'gSO8BA8yaa4UXfScOGtBJuTSeo6b7S',2,1,1,'2021-10-15 04:04:12.774557','2021-10-15 04:04:12.775547',NULL),(3,'qLyoNNMvVqm0cqJSBQoYjy0hDMJ8dg',3,1,2,'2021-10-15 04:32:44.321576','2021-10-15 04:32:44.321576',NULL),(4,'n5IyiqbD26DAb6pwodBXHJt76oM19x',4,1,2,'2021-10-15 04:33:35.776761','2021-10-15 04:33:35.776761',NULL),(5,'WZFxDZDB1Egrho71qNuJoJZH8uBfUY',5,1,2,'2021-10-15 04:34:22.679822','2021-10-15 04:34:22.679822',NULL),(6,'LAgQ4uh0vaZsQGaW8DFmRiTJdldN98',6,1,2,'2021-10-15 04:35:20.651538','2021-10-15 04:35:20.652543',NULL),(7,'gpQer3uFRZT21UpfXNtcqovIYS0bcW',7,1,2,'2021-10-15 05:38:42.462115','2021-10-15 05:38:42.462115',NULL),(8,'BgwVRdGFDCpVMkmKlvsitaPWqJdM8h',8,1,2,'2021-10-15 05:43:53.865718','2021-10-15 05:43:53.865718',NULL),(9,'RevquyyhMJ4D5eSKECedvpQW9QBWUO',9,1,2,'2021-10-15 05:46:58.623032','2021-10-15 05:46:58.623032',NULL),(10,'GwWdxBxXJM12kuItJx29hyFZ8y1i6S',10,1,2,'2021-10-15 05:53:15.624416','2021-10-15 05:53:15.624416',NULL),(11,'94OjmqmD08ZpSKiKq3wAFjcXpSW0ap',11,1,2,'2021-10-15 05:54:40.423354','2021-10-15 05:54:40.423354',NULL),(12,'hsCVwwhJLt9uoI7sVwkwgaH5JeVjEl',12,1,2,'2021-10-15 05:56:51.320578','2021-10-15 05:56:51.320578',NULL),(13,'qArLW8fS3R8kH3uRi7Kg8QBlissjsZ',13,1,2,'2021-10-15 05:57:53.020777','2021-10-15 05:57:53.020777',NULL),(14,'5SBQ8fMz4ZdAw4Lx0Jelo0mKSYcF1E',14,1,2,'2021-10-15 05:58:26.045838','2021-10-15 05:58:26.046375',NULL),(15,'CELajuI7kVhJYDYsgn2cpehKft7cOJ',15,1,2,'2021-10-15 05:58:55.692089','2021-10-15 05:58:55.692089',NULL),(16,'ZB0IggrD40glEO7MoHtk3b3HWpYQU7',16,1,2,'2021-10-15 05:59:06.758840','2021-10-15 05:59:06.758840',NULL),(17,'8GZ3mKpG4buEU9avbeAyeWMn7yRHHD',17,1,2,'2021-10-15 05:59:16.404565','2021-10-15 05:59:16.404565',NULL),(18,'XQIRTBgwuC4tcCTxZzXurICPzqvSZu',18,1,2,'2021-10-15 05:59:38.572718','2021-10-15 05:59:38.572718',NULL),(19,'6lX8vOPZl6vUu0WapZ2ZzTlrIIlG4Z',19,1,1,'2021-10-15 06:00:11.939018','2021-10-15 06:00:11.939018',NULL),(20,'V3UKKeeFWiO2mHeWD7Mhuds7BAxvEE',20,1,1,'2021-10-15 06:01:36.107839','2021-10-15 06:01:36.107839',NULL),(21,'XswujXWzGsclxW1BKjtY8T4dpWYoz5',21,1,2,'2021-10-15 06:01:51.665215','2021-10-15 06:01:51.665215',NULL),(22,'PMQF7slfQlOW4HKaQCLGi2yMYtWXCC',22,1,2,'2021-10-15 06:03:56.989472','2021-10-15 06:03:56.989472',NULL),(23,'0fbWA5kQrbBZ6Z3cYkYzcVLzbzyNiC',23,1,2,'2021-10-15 06:04:30.110215','2021-10-15 06:04:30.110298',NULL),(24,'HWhTjCy08N2tn90pqed9Vkp6YbS6jj',24,1,2,'2021-10-15 06:10:45.112321','2021-10-15 06:10:45.112321',NULL),(25,'hEZxLSkIOXsGKcFOTyarFLaG9Y44AW',25,1,3,'2021-10-15 06:12:51.238081','2021-10-15 06:12:51.238081',NULL),(26,'541QVBwnqYV0JEqtkmUCqbmsqhB6kc',26,1,4,'2021-10-15 06:14:30.112142','2021-10-15 06:14:30.112142',NULL),(27,'d6UQ6RRnM71lQCbEvIxqVglcTz9xHy',27,1,4,'2021-10-15 06:15:00.882342','2021-10-15 06:15:00.882342',NULL),(28,'rmZt86nGsWWfqaWJ9h4pjzffUVjbTe',28,1,4,'2021-10-15 06:16:44.182438','2021-10-15 06:16:44.182438',NULL),(29,'CLLslwOopaxWkmwN8FgsvCEvur9FoH',29,1,2,'2021-10-15 06:18:05.722505','2021-10-15 06:18:05.722505',NULL),(30,'wIQzedvQCF0zCSyo2MBVJ6Qt4MLL7r',30,1,2,'2021-10-15 06:18:42.836074','2021-10-15 06:18:42.836074',NULL),(31,'G6CQXFlgMeG4xy3wslClFtCaWYufOw',31,1,4,'2021-10-15 06:19:17.824473','2021-10-15 06:19:17.824473',NULL),(32,'lMhpWI5kWJNj8rHJKWVxvo1cis5UpO',32,1,2,'2021-10-15 06:20:33.032774','2021-10-15 06:20:33.032774',NULL),(33,'bOghcJZ9iUyvNO0sV7UbX98urPYFFX',33,1,3,'2021-10-15 06:21:00.449445','2021-10-15 06:21:00.449445',NULL),(34,'hwowSqPtatuQrNnzOxN5EnU61WV8pF',34,1,3,'2021-10-15 06:22:04.691421','2021-10-15 06:22:04.691421',NULL),(35,'zb5xbeHITkSXB4IPJickkzWRbs47ix',35,1,2,'2021-10-15 06:22:32.381399','2021-10-15 06:22:32.381399',NULL),(36,'4c7l50CjQRqyTukG4JjNeDm84qrI02',36,1,2,'2021-10-15 06:23:26.273465','2021-10-15 06:23:26.273465',NULL),(37,'ufDQhbYLkT1kMrH7PLxaY1zgVtRTl1',37,1,2,'2021-10-15 06:26:56.237195','2021-10-15 06:26:56.237195',NULL),(38,'VZzQaptPEAadmHgKnm47YpKmBAe94t',38,1,3,'2021-10-15 06:27:32.410316','2021-10-15 06:27:32.410316',NULL),(39,'kdxlo01oAtskj9tAEeRd1IMwRenMHZ',39,1,2,'2021-10-17 03:05:45.028336','2021-10-17 03:05:45.028336',NULL),(40,'rJs1P7WBXDiuahXq4xcbweKtEWU4Da',40,1,1,'2021-10-17 03:11:21.922191','2021-10-17 03:11:21.922191',NULL),(41,'F7R5MkgmgxfdO0l37pFEQtk4rFN3UB',41,1,2,'2021-10-17 03:31:50.448909','2021-10-17 03:31:50.448909',NULL),(42,'zOkpuBRUmtyHRuToZnDzWpaA6beW18',42,1,2,'2021-10-17 03:39:56.740863','2021-10-17 03:39:56.740863',NULL),(43,'X6VNCUEiF5OiNDKyotm2XhVmEAeHfF',43,1,1,'2021-10-17 03:50:35.368087','2021-10-17 03:50:35.368087',NULL),(44,'NyO25Vw8MrCOZeFHMqYeEG7rwqV6BH',44,1,1,'2021-10-17 05:11:08.404732','2021-10-17 05:11:08.404732',NULL),(45,'3n8klliYEp4x8IPCR4emRUVeJNWAag',45,1,2,'2021-10-17 12:49:54.440037','2021-10-17 12:49:54.440037',NULL),(46,'LSqzVApfNWprsfYjSU9Zq3jwe1FojE',46,1,1,'2021-10-17 13:04:27.119271','2021-10-17 13:04:27.119271',NULL),(47,'FQBMONyymfbBdiQlIBuBJ7O2xU2NtI',47,1,5,'2021-10-20 13:01:49.221256','2021-10-20 13:01:49.221256',NULL),(48,'eaaE394IXTSRzH1e5KdNJGOnGxKpsK',48,1,5,'2021-10-20 13:03:38.551024','2021-10-20 13:03:38.551024',NULL),(49,'tU9BCui29kVQIeamYTKXiga2huAuTW',49,1,1,'2021-10-20 13:03:55.442329','2021-10-20 13:03:55.442329',NULL),(50,'Fy2nA3hdFXU6zziqtPiyiPq9GfYQ4n',50,1,5,'2021-10-21 02:38:29.631472','2021-10-21 02:38:29.631472',NULL),(51,'ICFKauEO4sjzT4Jol2Gi1kCQDzbeV7',51,1,8,'2021-10-21 10:38:44.080210','2021-10-21 10:38:44.080210',NULL),(52,'kVDWrdI1aQvAUghdSY07g9fP98v4kF',52,1,8,'2021-10-21 11:11:53.389505','2021-10-21 11:11:53.389505',NULL),(53,'ut5Fb47K69EkXtMjcubJrhQevFbviy',53,1,5,'2021-10-22 16:49:24.155134','2021-10-22 16:49:24.155134',NULL),(54,'iWEE4NilhbZ2AgBk5Bt8p3h8DM5ORA',54,1,1,'2021-10-22 16:49:35.670674','2021-10-22 16:49:35.670674',NULL),(55,'yYGxLgeJxCPweghLn7vltKN9XZtVHm',55,1,1,'2021-10-22 16:49:54.054618','2021-10-22 16:49:54.054618',NULL),(56,'zVQJyaWwYrMCQjz6FW0lkaXdQ1XidU',56,1,5,'2021-10-22 16:53:26.714170','2021-10-22 16:53:26.714170',NULL),(57,'L4TYmZtk3LSszzk9v9gBBKbS6AHMEX',57,1,5,'2021-10-23 10:20:50.152435','2021-10-23 10:20:50.152435',NULL),(58,'4fB3QTkToavhitAVcQSK3HW4QVsBs2',58,1,5,'2021-10-23 10:21:02.724679','2021-10-23 10:21:02.724679',NULL),(59,'uL8ZQdCUgXMfd0KU7QPVyhOgY6xDws',59,1,5,'2021-10-23 10:52:17.154982','2021-10-23 10:52:17.154982',NULL),(60,'qWIhogVRwymHzEEYvpdbU5WIaiCDSs',60,1,6,'2021-10-23 10:52:48.570878','2021-10-23 10:52:48.570878',NULL),(61,'KjwBVgp8Te7DjZwDINbz7SDryan4HF',61,1,6,'2021-10-23 10:53:00.801245','2021-10-23 10:53:00.801245',NULL),(62,'H7joNI4MiyvW6J46w69hdjBpAjDfj2',62,1,6,'2021-10-23 10:53:28.190954','2021-10-23 10:53:28.190954',NULL),(63,'knKD7v1wBDpglmIZTVlU7wz5YUGeaH',63,1,6,'2021-10-23 10:55:00.128981','2021-10-23 10:55:00.128981',NULL),(64,'32yauaRwGPDcxovH0R2YKASmO4VtAB',64,1,23,'2021-10-23 11:22:37.904013','2021-10-23 11:22:37.904013',NULL),(65,'Tkf1uJmjGuedYZXkMd0JSdDZZViJkA',65,1,23,'2021-10-23 11:23:30.440748','2021-10-23 11:23:30.440748',NULL),(66,'TTnlYH9WUP4RQtZvp4o6yCTtgVER5d',66,1,5,'2021-10-24 09:19:37.925519','2021-10-24 09:19:37.925519',NULL),(67,'2eqPESbMFfXQQpt1PC2WtvxmtDdO5A',67,1,4,'2021-10-24 09:23:28.697646','2021-10-24 09:23:28.697646',NULL),(68,'urAcgsM5rbD94dc322LSFIED6OweHD',68,1,4,'2021-10-24 09:24:09.668465','2021-10-24 09:24:09.668465',NULL),(69,'uDhuPOLsDApe982adgydLvmMysrL6S',69,1,3,'2021-10-24 09:25:08.078284','2021-10-24 09:25:08.078284',NULL),(70,'by0I8XOGM3S5AnXqrtlss2ymoEX8wl',70,1,3,'2021-10-24 09:44:54.599979','2021-10-24 09:44:54.599979',NULL),(71,'j6fWHo1FUaHzKSGI4pqcR7NiTMnQnT',71,1,7,'2021-10-24 10:26:10.600441','2021-10-24 10:26:10.600441',NULL),(72,'WNaiSz0zSICzc3USBISSJ3GWTy3Wl5',72,1,5,'2021-10-24 14:24:42.294554','2021-10-24 14:24:42.294554',NULL),(73,'H7SRBXseEFPbOLAooT00uTcMaq10xx',73,1,4,'2021-10-24 14:49:47.780558','2021-10-24 14:49:47.780558',NULL),(74,'wp7kgwJXl5Vpfra8EneCvxPidkQQSD',74,1,5,'2021-10-25 09:59:33.941982','2021-10-25 09:59:33.941982',NULL),(75,'LjLCyo2k9MRYFQPk4MQNJ4tWf00FrM',75,1,5,'2021-10-25 10:26:22.539455','2021-10-25 10:26:22.539455',NULL),(76,'LJ4KRc5C8711ePPAuA0C7dgMVIOr4M',76,1,5,'2021-10-25 11:03:22.150009','2021-10-25 11:03:22.150009',NULL),(77,'akWMvvwLa75zRuLJgnfi3aYLgVELwP',77,1,5,'2021-11-21 05:51:58.329237','2021-11-21 05:51:58.329237',NULL);
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_association`
--

DROP TABLE IF EXISTS `social_auth_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_association` (
  `id` int NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issued` int NOT NULL,
  `lifetime` int NOT NULL,
  `assoc_type` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_association`
--

LOCK TABLES `social_auth_association` WRITE;
/*!40000 ALTER TABLE `social_auth_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_code`
--

DROP TABLE IF EXISTS `social_auth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_code` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  KEY `social_auth_code_code_a2393167` (`code`),
  KEY `social_auth_code_timestamp_176b341f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_code`
--

LOCK TABLES `social_auth_code` WRITE;
/*!40000 ALTER TABLE `social_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_nonce`
--

DROP TABLE IF EXISTS `social_auth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_nonce` (
  `id` int NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int NOT NULL,
  `salt` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_nonce`
--

LOCK TABLES `social_auth_nonce` WRITE;
/*!40000 ALTER TABLE `social_auth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_partial`
--

DROP TABLE IF EXISTS `social_auth_partial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_partial` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `next_step` smallint unsigned NOT NULL,
  `backend` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_auth_partial_token_3017fea3` (`token`),
  KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`),
  CONSTRAINT `social_auth_partial_chk_1` CHECK ((`next_step` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_partial`
--

LOCK TABLES `social_auth_partial` WRITE;
/*!40000 ALTER TABLE `social_auth_partial` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_partial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_usersocialauth`
--

DROP TABLE IF EXISTS `social_auth_usersocialauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_usersocialauth` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provider` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `extra_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  KEY `social_auth_usersoci_user_id_17d28448_fk_jobReferr` (`user_id`),
  KEY `social_auth_usersocialauth_uid_796e51dc` (`uid`),
  CONSTRAINT `social_auth_usersoci_user_id_17d28448_fk_jobReferr` FOREIGN KEY (`user_id`) REFERENCES `jobreferralapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_usersocialauth`
--

LOCK TABLES `social_auth_usersocialauth` WRITE;
/*!40000 ALTER TABLE `social_auth_usersocialauth` DISABLE KEYS */;
INSERT INTO `social_auth_usersocialauth` VALUES (1,'google-oauth2','npthuthuy237@gmail.com','{\"auth_time\": 1634474994, \"expires\": null, \"access_token\": \"ya29.a0ARrdaM_V_q36eqC9BSwV6m5uZdq9Qg0K9Hm_jKoKfFZfrSKw_j4r9KoSMiG4W_y_uvZKnKJaF5zLSEsRK2gctJOwhunfCouUYQW8P-n86Ey5fwbBikZLwQ7xvu46YsPDu7Z2H_pT8F-QgTGwsIl4nmc5Vv9m5g\", \"token_type\": null}',2,'2021-10-15 04:32:44.296181','2021-10-17 12:49:54.371733'),(2,'google-oauth2','ngaymuadai72@gmail.com','{\"auth_time\": 1635068694, \"expires\": null, \"access_token\": \"ya29.a0ARrdaM81VBGA2tS4eDJFq1XR6PYhIGoQWqpS2ektJ50kcQ6UBbkVPcTXANUkebv5eDlcMaO6ih6KUKDv08Ldpd0YAFAhWXn8Rkyj6bfoWeA2Em9W6q9Xh-CPh-RS0eQNQNr0GK3XKkVy6ZGGCEEFYtJoeNIdsg\", \"token_type\": null}',3,'2021-10-15 06:12:51.194116','2021-10-24 09:44:54.577986'),(3,'google-oauth2','1851050140thuy@ou.edu.vn','{\"auth_time\": 1635086987, \"expires\": null, \"access_token\": \"ya29.a0ARrdaM8NGfO8ymC6Ddt_K3D3gtjQy6mdHmgjG88CxtPWdhMLvT449OFY2atFZuG8P8-VThWZCGeaeblwtZU3qDplaN_mbkWrvLDSqU5oKk5rUVlTrgs_YaMaLeM7JuCpTgnj4AAOGMRSwfkhxCaeU2HdQjFi4w\", \"token_type\": null}',4,'2021-10-15 06:14:30.084270','2021-10-24 14:49:47.737049');
/*!40000 ALTER TABLE `social_auth_usersocialauth` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-21 12:53:48
