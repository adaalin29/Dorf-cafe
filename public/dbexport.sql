-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: dorfcafe
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.16.04.1

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
-- Table structure for table `about_banners`
--

DROP TABLE IF EXISTS `about_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about_banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_banners`
--

LOCK TABLES `about_banners` WRITE;
/*!40000 ALTER TABLE `about_banners` DISABLE KEYS */;
INSERT INTO `about_banners` VALUES (1,'2019-10-20 20:18:00','2019-11-06 09:53:07',NULL,'about-banners/November2019/8M4SqDoAYuzZyYuNXiYC.jpg'),(2,'2019-10-20 20:18:28','2019-10-20 20:18:28',NULL,'about-banners/October2019/oWnBPehzXACZXDIc4Yc0.png'),(3,'2019-10-20 20:18:00','2019-11-06 09:53:20',NULL,'about-banners/November2019/4kmPjQrZjpDwOUp1ASWW.jpg');
/*!40000 ALTER TABLE `about_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (1,'2019-10-09 08:52:51','2019-10-09 08:52:51',NULL,'banners/October2019/8VrllLdh4nuAZgAvW0K7.png'),(2,'2019-10-09 08:52:59','2019-10-09 08:52:59',NULL,'banners/October2019/6owzPTpc1o5hRXsb0dS3.png'),(3,'2019-10-09 08:53:08','2019-10-09 08:53:08',NULL,'banners/October2019/nZ1zNLFUKfHeynNJ8Ggs.png');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (2,'2019-10-11 12:10:46','2019-11-06 08:58:14',NULL,'From Dorfcafé'),(3,'2019-10-11 12:10:57','2019-11-06 08:57:21',NULL,'Dishes and treats from our kitchen');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(29,5,'id','number','ID',1,0,0,0,0,0,NULL,1),(30,5,'author_id','text','Author',1,0,1,1,0,1,NULL,2),(31,5,'category_id','text','Category',1,0,1,1,1,0,NULL,3),(32,5,'title','text','Title',1,1,1,1,1,1,NULL,4),(33,5,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,5),(34,5,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,6),(35,5,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(36,5,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',8),(37,5,'meta_description','text_area','Meta Description',1,0,1,1,1,1,NULL,9),(38,5,'meta_keywords','text_area','Meta Keywords',1,0,1,1,1,1,NULL,10),(39,5,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(40,5,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,12),(41,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,13),(42,5,'seo_title','text','SEO Title',0,1,1,1,1,1,NULL,14),(43,5,'featured','checkbox','Featured',1,1,1,1,1,1,NULL,15),(44,6,'id','number','ID',1,0,0,0,0,0,NULL,1),(45,6,'author_id','text','Author',1,0,0,0,0,0,NULL,2),(46,6,'title','text','Title',1,1,1,1,1,1,NULL,3),(47,6,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,4),(48,6,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,5),(49,6,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',6),(50,6,'meta_description','text','Meta Description',1,0,1,1,1,1,NULL,7),(51,6,'meta_keywords','text','Meta Keywords',1,0,1,1,1,1,NULL,8),(52,6,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(53,6,'created_at','timestamp','Created At',1,1,1,0,0,0,NULL,10),(54,6,'updated_at','timestamp','Updated At',1,0,0,0,0,0,NULL,11),(55,6,'image','image','Page Image',0,1,1,1,1,1,NULL,12),(56,7,'id','text','Id',1,0,0,0,0,0,'{}',1),(57,7,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',2),(58,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',3),(59,7,'deleted_at','timestamp','Deleted At',0,1,1,1,1,1,'{}',4),(60,7,'image','image','Image',0,1,1,1,1,1,'{}',5),(61,8,'id','text','Id',1,0,0,0,0,0,'{}',1),(62,8,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',2),(63,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',3),(64,8,'deleted_at','timestamp','Deleted At',0,1,1,1,1,1,'{}',4),(65,8,'name','text','Name',0,1,1,1,1,1,'{}',5),(66,8,'key','text','Key',0,1,1,1,1,1,'{}',6),(67,8,'content','rich_text_box','Content',0,1,1,1,1,1,'{}',7),(68,8,'images','multiple_images','Images',0,1,1,1,1,1,'{}',8),(69,9,'id','text','Id',1,0,0,0,0,0,'{}',1),(70,9,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',2),(71,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',3),(72,9,'deleted_at','timestamp','Deleted At',0,1,1,1,1,1,'{}',4),(73,9,'image','image','Image',0,1,1,1,1,1,'{}',5),(74,10,'id','text','Id',1,0,0,0,0,0,'{}',1),(75,10,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',2),(76,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',3),(77,10,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',4),(78,10,'name','text','Name',0,1,1,1,1,1,'{}',5),(79,13,'id','text','Id',1,0,0,0,0,0,'{}',1),(80,13,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',2),(81,13,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',3),(82,13,'deleted_at','timestamp','Deleted At',0,1,1,1,1,1,'{}',4),(83,13,'image','multiple_images','Image',0,1,1,1,1,1,'{}',5),(84,13,'category_id','text','Category Id',0,1,1,1,1,1,'{}',6),(85,13,'photo_belongsto_category_relationship','relationship','categories',0,1,1,1,1,1,'{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}',7),(94,15,'id','text','Id',1,0,0,0,0,0,'{}',1),(95,15,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',2),(96,15,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',3),(97,15,'deleted_at','timestamp','Deleted At',0,1,1,1,1,1,'{}',4),(98,15,'image','image','Image',0,1,1,1,1,1,'{}',5),(105,18,'id','text','Id',1,0,0,0,0,0,'{}',1),(106,18,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',2),(107,18,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',3),(108,18,'deleted_at','timestamp','Deleted At',0,1,1,1,1,1,'{}',4),(109,18,'image','image','Image',0,1,1,1,1,1,'{}',5),(110,19,'id','text','Id',1,0,0,0,0,0,'{}',1),(111,19,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',2),(112,19,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',3),(113,19,'deleted_at','timestamp','Deleted At',0,1,1,1,1,1,'{}',4),(114,19,'image','image','Image',0,1,1,1,1,1,'{}',5),(115,19,'title','text','Title',0,1,1,1,1,1,'{}',6),(116,19,'description','rich_text_box','Description',0,1,1,1,1,1,'{}',7),(117,19,'pdf','text','PDF',0,0,0,0,0,0,'{}',8),(126,21,'id','text','Id',1,0,0,0,0,0,'{}',1),(127,21,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',2),(128,21,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',3),(129,21,'deleted_at','timestamp','Deleted At',0,1,1,1,1,1,'{}',4),(130,21,'Title','text','Title',0,1,1,1,1,1,'{}',5),(131,21,'Content','text','Content',0,1,1,1,1,1,'{}',6),(132,21,'Image','image','Image',0,1,1,1,1,1,'{}',7),(133,21,'pdf','text','Pdf',0,1,1,1,1,1,'{}',8);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2019-10-09 08:09:24','2019-10-09 08:09:24'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2019-10-09 08:09:24','2019-10-09 08:09:24'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,NULL,'2019-10-09 08:09:24','2019-10-09 08:09:24'),(5,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,NULL,'2019-10-09 08:09:24','2019-10-09 08:09:24'),(6,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,NULL,'2019-10-09 08:09:24','2019-10-09 08:09:24'),(7,'banners','banners','Banner','Banners',NULL,'App\\Banner',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2019-10-09 08:50:45','2019-10-09 08:50:45'),(8,'statice','statice','Statice','Statices',NULL,'App\\Statice',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2019-10-09 09:10:59','2019-10-09 09:10:59'),(9,'showcases','showcases','Showcase','Showcases',NULL,'App\\Showcase',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2019-10-11 07:08:39','2019-10-11 07:08:39'),(10,'categories','categories','Category','Categories',NULL,'App\\Category',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2019-10-11 12:06:57','2019-10-11 12:06:57'),(13,'photos','photos','Photo','Photos',NULL,'App\\Photo',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-10-11 12:17:22','2019-11-12 11:36:13'),(15,'pictures','pictures','Picture','Pictures',NULL,'App\\Picture',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2019-10-15 10:54:38','2019-10-15 10:54:38'),(18,'about_banners','about-banners','About Banner','About Banners',NULL,'App\\AboutBanner',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2019-10-20 20:14:07','2019-10-20 20:14:07'),(19,'events','events','Event','Events',NULL,'App\\Event',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-10-20 21:37:38','2019-10-28 08:28:56'),(21,'menu_categories','menu-categories','Menu Category','Menu Categories',NULL,'App\\MenuCategory',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2019-10-28 08:33:16','2019-10-28 08:33:16');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `pdf` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'2019-10-20 21:39:00','2019-11-06 09:15:31',NULL,'events/November2019/W1Zr0J8rCeMtzQ3cuKzc.jpg','Christmas holiday 25.12','<p>Spend the first Christmas holiday relaxing in the company of your family and friends? Choose us. We are open for you from 17.00 o\'clock. (Please reservate)</p>',NULL),(6,'2019-11-06 09:18:00','2019-11-06 09:30:57',NULL,'events/November2019/Yj9SQak0MHCyjznWVI2D.jpg','Christmas Day','<p>For a relaxed breakfasts. Coffee and cake in the afternoon. Or a lovely dinner. We are open for you from 08.00 o\'clock. (Please reservate)</p>',NULL);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_categories`
--

DROP TABLE IF EXISTS `menu_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `Title` text COLLATE utf8mb4_unicode_ci,
  `Content` text COLLATE utf8mb4_unicode_ci,
  `Image` text COLLATE utf8mb4_unicode_ci,
  `pdf` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_categories`
--

LOCK TABLES `menu_categories` WRITE;
/*!40000 ALTER TABLE `menu_categories` DISABLE KEYS */;
INSERT INTO `menu_categories` VALUES (4,'2019-10-28 08:34:00','2019-11-07 09:13:36',NULL,'Menu','Get some anticipation and appetite, take a look at our current menu and seasonal offers.','menu-categories/November2019/WUO6IGidE5DCOPywL8r3.jpg','http://dorfcafe.laravel.touchmediahost.com/storage/Menus/Menu.pdf'),(5,'2019-10-28 08:34:00','2019-11-12 11:46:49',NULL,'Kindergarten Catering','For further information or inquiries, please contact us via our contact form.','menu-categories/November2019/39Hv8acqpYqBF6ykVESg.jpg','http://dorfcafe.laravel.touchmediahost.com/storage/Menus/Kiga%20Catering.pdf'),(6,'2019-10-28 08:35:00','2019-11-07 09:11:58',NULL,'Breakfast menu','Get some anticipation and appetite, take a look at our current menu and seasonal offers.','menu-categories/November2019/ud8LvWI5dtlhbiIV7wtQ.jpg','http://dorfcafe.laravel.touchmediahost.com/storage/Menus/Fru%CC%88hstu%CC%88ckskarte_Dorfcafe%CC%81.pdf'),(7,'2019-10-28 08:35:00','2019-11-07 09:14:49',NULL,'Catering Fondue','Get some anticipation and appetite, take a look at our current menu and seasonal offers.','menu-categories/November2019/Z98MKRBqrKOIYyHUhl0v.jpg','http://dorfcafe.laravel.touchmediahost.com/storage/Menus/Fondue.pdf');
/*!40000 ALTER TABLE `menu_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2019-10-09 08:09:24','2019-10-09 08:09:24','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,4,'2019-10-09 08:09:24','2019-10-11 07:18:30','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,3,'2019-10-09 08:09:24','2019-10-09 08:09:24','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2019-10-09 08:09:24','2019-10-09 08:09:24','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,5,'2019-10-09 08:09:24','2019-11-13 13:41:00',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2019-10-09 08:09:24','2019-10-11 07:18:30','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2019-10-09 08:09:24','2019-10-11 07:18:30','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2019-10-09 08:09:24','2019-10-11 07:18:30','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2019-10-09 08:09:24','2019-10-11 07:18:30','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,6,'2019-10-09 08:09:24','2019-11-13 13:41:00','voyager.settings.index',NULL),(14,1,'Hooks','','_self','voyager-hook',NULL,5,5,'2019-10-09 08:09:24','2019-10-11 07:18:30','voyager.hooks',NULL),(15,1,'Index Header Banner','admin/banners','_self','voyager-photos','#000000',NULL,9,'2019-10-09 08:50:45','2019-11-13 13:41:00',NULL,''),(16,1,'Statices','admin/statice','_self','voyager-data','#000000',NULL,7,'2019-10-09 09:10:59','2019-11-13 13:41:00',NULL,''),(17,1,'Index Swiper Images','admin/showcases','_self','voyager-images','#000000',NULL,8,'2019-10-11 07:08:39','2019-11-13 13:41:00',NULL,''),(18,1,'Gallery Categories','admin/categories','_self','voyager-tag','#000000',NULL,10,'2019-10-11 12:06:57','2019-11-13 13:41:00',NULL,''),(21,1,'Gallery','admin/photos','_self','voyager-camera','#000000',NULL,11,'2019-10-11 12:17:22','2019-11-13 13:41:00',NULL,''),(23,1,'Pictures','','_self',NULL,NULL,NULL,13,'2019-10-15 10:54:38','2019-11-13 13:41:00','voyager.pictures.index',NULL),(26,1,'About Banners','','_self',NULL,NULL,NULL,14,'2019-10-20 20:14:07','2019-11-13 13:41:00','voyager.about-banners.index',NULL),(27,1,'Events','admin/events','_self','voyager-wineglass','#000000',NULL,15,'2019-10-20 21:37:38','2019-11-13 13:41:00',NULL,''),(29,1,'Menu','admin/menu-categories','_self','voyager-documentation','#000000',NULL,12,'2019-10-28 08:33:16','2019-11-13 13:41:00',NULL,'');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2019-10-09 08:09:24','2019-10-09 08:09:24');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_05_19_173453_create_menu_table',1),(6,'2016_10_21_190000_create_roles_table',1),(7,'2016_10_21_190000_create_settings_table',1),(8,'2016_11_30_135954_create_permission_table',1),(9,'2016_11_30_141208_create_permission_role_table',1),(10,'2016_12_26_201236_data_types__add__server_side',1),(11,'2017_01_13_000000_add_route_to_menu_items_table',1),(12,'2017_01_14_005015_create_translations_table',1),(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(14,'2017_03_06_000000_add_controller_to_data_types_table',1),(15,'2017_04_21_000000_add_order_to_data_rows_table',1),(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),(17,'2017_08_05_000000_add_group_to_settings_table',1),(18,'2017_11_26_013050_add_user_role_relationship',1),(19,'2017_11_26_015000_create_user_roles_table',1),(20,'2018_03_11_000000_add_user_settings',1),(21,'2018_03_14_000000_add_details_to_data_types_table',1),(22,'2018_03_16_000000_make_settings_value_nullable',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2016_01_01_000000_create_pages_table',2),(25,'2016_01_01_000000_create_posts_table',2),(26,'2016_02_15_204651_create_categories_table',2),(27,'2017_04_11_000000_alter_post_nullable_fields_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,'Hello World','Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.','<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/page1.jpg','hello-world','Yar Meta Description','Keyword1, Keyword2','ACTIVE','2019-10-09 08:09:24','2019-10-09 08:09:24');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(72,1),(73,1),(74,1),(75,1),(76,1),(102,1),(103,1),(104,1),(105,1),(106,1),(112,1),(113,1),(114,1),(115,1),(116,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2019-10-09 08:09:24','2019-10-09 08:09:24'),(2,'browse_bread',NULL,'2019-10-09 08:09:24','2019-10-09 08:09:24'),(3,'browse_database',NULL,'2019-10-09 08:09:24','2019-10-09 08:09:24'),(4,'browse_media',NULL,'2019-10-09 08:09:24','2019-10-09 08:09:24'),(5,'browse_compass',NULL,'2019-10-09 08:09:24','2019-10-09 08:09:24'),(6,'browse_menus','menus','2019-10-09 08:09:24','2019-10-09 08:09:24'),(7,'read_menus','menus','2019-10-09 08:09:24','2019-10-09 08:09:24'),(8,'edit_menus','menus','2019-10-09 08:09:24','2019-10-09 08:09:24'),(9,'add_menus','menus','2019-10-09 08:09:24','2019-10-09 08:09:24'),(10,'delete_menus','menus','2019-10-09 08:09:24','2019-10-09 08:09:24'),(11,'browse_roles','roles','2019-10-09 08:09:24','2019-10-09 08:09:24'),(12,'read_roles','roles','2019-10-09 08:09:24','2019-10-09 08:09:24'),(13,'edit_roles','roles','2019-10-09 08:09:24','2019-10-09 08:09:24'),(14,'add_roles','roles','2019-10-09 08:09:24','2019-10-09 08:09:24'),(15,'delete_roles','roles','2019-10-09 08:09:24','2019-10-09 08:09:24'),(16,'browse_users','users','2019-10-09 08:09:24','2019-10-09 08:09:24'),(17,'read_users','users','2019-10-09 08:09:24','2019-10-09 08:09:24'),(18,'edit_users','users','2019-10-09 08:09:24','2019-10-09 08:09:24'),(19,'add_users','users','2019-10-09 08:09:24','2019-10-09 08:09:24'),(20,'delete_users','users','2019-10-09 08:09:24','2019-10-09 08:09:24'),(21,'browse_settings','settings','2019-10-09 08:09:24','2019-10-09 08:09:24'),(22,'read_settings','settings','2019-10-09 08:09:24','2019-10-09 08:09:24'),(23,'edit_settings','settings','2019-10-09 08:09:24','2019-10-09 08:09:24'),(24,'add_settings','settings','2019-10-09 08:09:24','2019-10-09 08:09:24'),(25,'delete_settings','settings','2019-10-09 08:09:24','2019-10-09 08:09:24'),(31,'browse_posts','posts','2019-10-09 08:09:24','2019-10-09 08:09:24'),(32,'read_posts','posts','2019-10-09 08:09:24','2019-10-09 08:09:24'),(33,'edit_posts','posts','2019-10-09 08:09:24','2019-10-09 08:09:24'),(34,'add_posts','posts','2019-10-09 08:09:24','2019-10-09 08:09:24'),(35,'delete_posts','posts','2019-10-09 08:09:24','2019-10-09 08:09:24'),(36,'browse_pages','pages','2019-10-09 08:09:24','2019-10-09 08:09:24'),(37,'read_pages','pages','2019-10-09 08:09:24','2019-10-09 08:09:24'),(38,'edit_pages','pages','2019-10-09 08:09:24','2019-10-09 08:09:24'),(39,'add_pages','pages','2019-10-09 08:09:24','2019-10-09 08:09:24'),(40,'delete_pages','pages','2019-10-09 08:09:24','2019-10-09 08:09:24'),(41,'browse_hooks',NULL,'2019-10-09 08:09:24','2019-10-09 08:09:24'),(42,'browse_banners','banners','2019-10-09 08:50:45','2019-10-09 08:50:45'),(43,'read_banners','banners','2019-10-09 08:50:45','2019-10-09 08:50:45'),(44,'edit_banners','banners','2019-10-09 08:50:45','2019-10-09 08:50:45'),(45,'add_banners','banners','2019-10-09 08:50:45','2019-10-09 08:50:45'),(46,'delete_banners','banners','2019-10-09 08:50:45','2019-10-09 08:50:45'),(47,'browse_statice','statice','2019-10-09 09:10:59','2019-10-09 09:10:59'),(48,'read_statice','statice','2019-10-09 09:10:59','2019-10-09 09:10:59'),(49,'edit_statice','statice','2019-10-09 09:10:59','2019-10-09 09:10:59'),(50,'add_statice','statice','2019-10-09 09:10:59','2019-10-09 09:10:59'),(51,'delete_statice','statice','2019-10-09 09:10:59','2019-10-09 09:10:59'),(52,'browse_showcases','showcases','2019-10-11 07:08:39','2019-10-11 07:08:39'),(53,'read_showcases','showcases','2019-10-11 07:08:39','2019-10-11 07:08:39'),(54,'edit_showcases','showcases','2019-10-11 07:08:39','2019-10-11 07:08:39'),(55,'add_showcases','showcases','2019-10-11 07:08:39','2019-10-11 07:08:39'),(56,'delete_showcases','showcases','2019-10-11 07:08:39','2019-10-11 07:08:39'),(57,'browse_categories','categories','2019-10-11 12:06:57','2019-10-11 12:06:57'),(58,'read_categories','categories','2019-10-11 12:06:57','2019-10-11 12:06:57'),(59,'edit_categories','categories','2019-10-11 12:06:57','2019-10-11 12:06:57'),(60,'add_categories','categories','2019-10-11 12:06:57','2019-10-11 12:06:57'),(61,'delete_categories','categories','2019-10-11 12:06:57','2019-10-11 12:06:57'),(72,'browse_photos','photos','2019-10-11 12:17:22','2019-10-11 12:17:22'),(73,'read_photos','photos','2019-10-11 12:17:22','2019-10-11 12:17:22'),(74,'edit_photos','photos','2019-10-11 12:17:22','2019-10-11 12:17:22'),(75,'add_photos','photos','2019-10-11 12:17:22','2019-10-11 12:17:22'),(76,'delete_photos','photos','2019-10-11 12:17:22','2019-10-11 12:17:22'),(82,'browse_pictures','pictures','2019-10-15 10:54:38','2019-10-15 10:54:38'),(83,'read_pictures','pictures','2019-10-15 10:54:38','2019-10-15 10:54:38'),(84,'edit_pictures','pictures','2019-10-15 10:54:38','2019-10-15 10:54:38'),(85,'add_pictures','pictures','2019-10-15 10:54:38','2019-10-15 10:54:38'),(86,'delete_pictures','pictures','2019-10-15 10:54:38','2019-10-15 10:54:38'),(97,'browse_about_banners','about_banners','2019-10-20 20:14:07','2019-10-20 20:14:07'),(98,'read_about_banners','about_banners','2019-10-20 20:14:07','2019-10-20 20:14:07'),(99,'edit_about_banners','about_banners','2019-10-20 20:14:07','2019-10-20 20:14:07'),(100,'add_about_banners','about_banners','2019-10-20 20:14:07','2019-10-20 20:14:07'),(101,'delete_about_banners','about_banners','2019-10-20 20:14:07','2019-10-20 20:14:07'),(102,'browse_events','events','2019-10-20 21:37:38','2019-10-20 21:37:38'),(103,'read_events','events','2019-10-20 21:37:38','2019-10-20 21:37:38'),(104,'edit_events','events','2019-10-20 21:37:38','2019-10-20 21:37:38'),(105,'add_events','events','2019-10-20 21:37:38','2019-10-20 21:37:38'),(106,'delete_events','events','2019-10-20 21:37:38','2019-10-20 21:37:38'),(112,'browse_menu_categories','menu_categories','2019-10-28 08:33:16','2019-10-28 08:33:16'),(113,'read_menu_categories','menu_categories','2019-10-28 08:33:16','2019-10-28 08:33:16'),(114,'edit_menu_categories','menu_categories','2019-10-28 08:33:16','2019-10-28 08:33:16'),(115,'add_menu_categories','menu_categories','2019-10-28 08:33:16','2019-10-28 08:33:16'),(116,'delete_menu_categories','menu_categories','2019-10-28 08:33:16','2019-10-28 08:33:16');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (12,'2019-11-12 12:00:16','2019-11-13 09:44:58',NULL,'[\"photos\\/November2019\\/sEJePg8GXK7PqqqMqNLd.jpg\",\"photos\\/November2019\\/2OiDsQWqGgUdW8mOtSh1.jpg\",\"photos\\/November2019\\/ojZG2kRVoIfwVquyQqv0.jpg\",\"photos\\/November2019\\/M7ryFH1yoEfoITjAKzXy.jpg\",\"photos\\/November2019\\/qaolcc6pMF8eHhOoctEL.jpg\",\"photos\\/November2019\\/yZaWpa2CLw3Auq7SR82t.jpg\",\"photos\\/November2019\\/ZYXpihGO5h2XW5StbHHl.jpg\",\"photos\\/November2019\\/UuAJkGPuT7tyUWdpCDzO.jpg\",\"photos\\/November2019\\/zaNz2CZxNASnDldR7TBQ.jpg\",\"photos\\/November2019\\/JN7QrmMU46hOxYJS9E0f.jpg\",\"photos\\/November2019\\/9pJqVVZnp4EtvbG2ETwY.jpg\",\"photos\\/November2019\\/IFQdNEJ5ko4h1oLRW6rT.jpg\",\"photos\\/November2019\\/ERU2g1vyynIpDY72tjwk.jpg\",\"photos\\/November2019\\/atJadJTqt8ABWRV6FqSd.jpg\"]',2),(15,'2019-11-12 12:03:00','2019-11-13 10:58:27',NULL,'[\"photos\\/November2019\\/7J5az4R3o38H9gqgUyIF.jpg\",\"photos\\/November2019\\/En9JNSYzSM7zfVS3AhoM.jpg\",\"photos\\/November2019\\/MsV50O9KEV18YShK3ff7.jpg\",\"photos\\/November2019\\/2yqyakQkccfJQuOVe4OI.jpg\",\"photos\\/November2019\\/T6LunPrMtpkbwKG3u8jQ.jpg\",\"photos\\/November2019\\/xiegOyzN406xV8jXSYay.jpg\",\"photos\\/November2019\\/GrtsgKiFuMT8KXktZQ8F.jpg\",\"photos\\/November2019\\/a1WEUoXsloiUx7DsUWdQ.jpg\",\"photos\\/November2019\\/NydJNuV9gmKdozX3qlKH.jpg\",\"photos\\/November2019\\/WolmdKc9PYbzunGjci8w.jpg\",\"photos\\/November2019\\/Imck2x7ZdsZZGD7J9ZwH.jpg\",\"photos\\/November2019\\/YJCsxbogeL3ZSMfqPZWu.jpg\",\"photos\\/November2019\\/V8F5uRd49e074fj4UUfU.jpg\",\"photos\\/November2019\\/CZpDcYAgZ1TSlS7I5lcW.jpg\"]',3);
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pictures`
--

DROP TABLE IF EXISTS `pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pictures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pictures`
--

LOCK TABLES `pictures` WRITE;
/*!40000 ALTER TABLE `pictures` DISABLE KEYS */;
INSERT INTO `pictures` VALUES (2,'2019-10-15 10:55:28','2019-10-15 10:55:28',NULL,'pictures/October2019/gCcvR8ZijI3JbWyA4g9Y.png');
/*!40000 ALTER TABLE `pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,0,NULL,'Lorem Ipsum Post',NULL,'This is the excerpt for the Lorem Ipsum Post','<p>This is the body of the lorem ipsum post</p>','posts/post1.jpg','lorem-ipsum-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2019-10-09 08:09:24','2019-10-09 08:09:24'),(2,0,NULL,'My Sample Post',NULL,'This is the excerpt for the sample Post','<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>','posts/post2.jpg','my-sample-post','Meta Description for sample post','keyword1, keyword2, keyword3','PUBLISHED',0,'2019-10-09 08:09:24','2019-10-09 08:09:24'),(3,0,NULL,'Latest Post',NULL,'This is the excerpt for the latest post','<p>This is the body for the latest post</p>','posts/post3.jpg','latest-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2019-10-09 08:09:24','2019-10-09 08:09:24'),(4,0,NULL,'Yarr Post',NULL,'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.','<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>','posts/post4.jpg','yarr-post','this be a meta descript','keyword1, keyword2, keyword3','PUBLISHED',0,'2019-10-09 08:09:24','2019-10-09 08:09:24');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2019-10-09 08:09:24','2019-10-09 08:09:24'),(2,'user','Normal User','2019-10-09 08:09:24','2019-10-09 08:09:24');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Site Title','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),(6,'admin.title','Admin Title','Voyager','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin'),(11,'site.phone-number','Contact Phone Number','076 131 968 558',NULL,'text',6,'Site'),(14,'site.latitude','Map Latitude','47.933858',NULL,'text',9,'Site'),(15,'site.longitude','Map Longitude','7.859008',NULL,'text',10,'Site'),(21,'site.contact-mail','Contact Mail','reservierung@dorfcafe-horben.de',NULL,'text',15,'Site'),(22,'site.tripadvisor','Tripadvisor Link','https://www.tripadvisor.de/Restaurant_Review-g1124211-d1514645-Reviews-Dorfcafe-Horben_Baden_Wurttemberg.html',NULL,'text',16,'Site'),(24,'site.instagram-link','Instagram Link','https://www.instagram.com/dorfcafe_horben/',NULL,'text',17,'Site');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showcases`
--

DROP TABLE IF EXISTS `showcases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `showcases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showcases`
--

LOCK TABLES `showcases` WRITE;
/*!40000 ALTER TABLE `showcases` DISABLE KEYS */;
INSERT INTO `showcases` VALUES (5,'2019-10-11 07:49:00','2019-11-13 11:03:44',NULL,'showcases/November2019/8qU0cysKnqP6GNR3T31C.jpg'),(6,'2019-10-11 07:49:00','2019-11-13 11:05:10',NULL,'showcases/November2019/BZrY3v0S7UNRgWWa7GrD.jpg'),(7,'2019-10-11 07:49:00','2019-11-13 11:02:38',NULL,'showcases/November2019/5BM4pFbHz3joN5rqzZXI.jpg');
/*!40000 ALTER TABLE `showcases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statice`
--

DROP TABLE IF EXISTS `statice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `key` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statice`
--

LOCK TABLES `statice` WRITE;
/*!40000 ALTER TABLE `statice` DISABLE KEYS */;
INSERT INTO `statice` VALUES (3,'2019-10-09 11:06:00','2019-11-13 10:54:32',NULL,'About Us Picture','about-us-image','','[\"statice\\/November2019\\/ucPxu8VKnzo3Qdq30MT4.jpg\"]'),(4,'2019-10-09 12:18:00','2019-10-17 12:50:34',NULL,'About Us Title','about-us-title','<p>About US</p>',NULL),(5,'2019-10-09 12:20:00','2019-11-07 08:21:02',NULL,'About US Content','about-us-content','<p>We offer a classic Baden cuisine with international influences and that throughout. Also try our daily fresh homemade cakes. Because we still bake ourselves.</p>\n<p>We enjoy what we do and therefore we are welcome you to Dorfcaf&eacute; in Horben!</p>',NULL),(6,'2019-10-10 06:18:00','2019-11-13 10:54:54',NULL,'Menu Picture','index-menu-picture','','[\"statice\\/November2019\\/lmqS2xqDLRJibiEbQ49B.jpg\"]'),(7,'2019-10-10 07:23:00','2019-11-07 08:26:55',NULL,'Menu title 1','menu-title1','<p>Breakfast, lunch, caf&eacute; &amp; cake and dinner</p>',NULL),(8,'2019-10-10 07:23:00','2019-11-07 08:25:30',NULL,'Menu text 1','menu-text1','<p>Come and let us spoil you with culinary delights.</p>',NULL),(9,'2019-10-10 07:24:00','2019-11-07 08:27:51',NULL,'Menu title 2','menu-title2','<p>Kindergarten Catering</p>',NULL),(10,'2019-10-10 07:24:00','2019-11-07 08:28:46',NULL,'Menu text 2','menu-text2','<p>For further information or inquiries, please contact us via our contact form.</p>',NULL),(11,'2019-10-10 07:24:00','2019-11-07 08:30:02',NULL,'Menu title 3','menu-title3','<p>Events</p>',NULL),(12,'2019-10-10 07:25:00','2019-11-07 08:31:54',NULL,'Menu text 3','menu-text3','<p class=\"Text\"><span lang=\"DE\">All year we organize special events for you. And we will inform you about it on website.</span></p>',NULL),(13,'2019-10-11 06:10:00','2019-11-07 08:33:12',NULL,'Exceptional Menu TItle','exceptional-menu-title','<p>Our Menu</p>',NULL),(14,'2019-10-11 06:11:00','2019-11-07 08:34:05',NULL,'Exceptional Menu Text','exceptional-menu-text','<p>Get some anticipation and appetite, take a look at our current menu and seasonal offers.</p>',NULL),(15,'2019-10-11 08:08:35','2019-10-11 08:08:35',NULL,'Gallery Picture 1','gallery-picture1','','[\"statice\\/October2019\\/jHm6hpfbRHJ2BiVnrTvr.png\"]'),(16,'2019-10-11 08:09:05','2019-10-11 08:09:05',NULL,'Gallery Picture 2','gallery-picture2','','[\"statice\\/October2019\\/k4nXxwsDf08WN04ugELt.png\"]'),(17,'2019-10-11 08:09:40','2019-10-11 08:09:40',NULL,'Gallery Picture 3','gallery-picture3','','[\"statice\\/October2019\\/OmzlVu7dukbxxR4T7eoQ.png\"]'),(18,'2019-10-11 08:10:04','2019-10-11 08:10:04',NULL,'Gallery Picture 4','gallery-picture4','','[\"statice\\/October2019\\/ikOd5L6SgnDO3Ux8Lcv5.png\"]'),(19,'2019-10-11 08:28:00','2019-11-06 13:22:52',NULL,'Intex Gallery TItle','index-gallery-title','<p>Gallery</p>',NULL),(20,'2019-10-11 09:07:00','2019-11-13 10:55:15',NULL,'About Us Story Image ','about-mission-image','','[\"statice\\/November2019\\/vvSpEElhchshmdPQrc91.jpg\"]'),(22,'2019-10-11 09:20:00','2019-11-07 07:35:17',NULL,'About US Story Title','mission-title','<p>OUR MISSION</p>',NULL),(23,'2019-10-11 09:21:00','2019-11-07 07:37:43',NULL,'About Us Story Text','mission-text','<p>Food is something very special and we would like to share this feeling with you.</p>\n<p>Our kitchen is down-to-earth Baden, but at home in the world. Fresh and regional products are a matter of course for us.</p>\n<p>Dorfcaf&eacute; is the perfect combination of a unique location, a cozy ambience and a highly motivated team. Whether with friends, acquaintances or with your family. Our goal is to provide you with a place of wellbeing and gathering. Come and let us spoil you in the heart of Horben culinary.</p>',NULL),(24,'2019-10-11 09:39:00','2019-11-07 07:35:22',NULL,'About Us Services Title','story-title','<p>OUR HISTORY</p>',NULL),(25,'2019-10-11 09:45:00','2019-11-07 07:43:26',NULL,'About Us Services content','story-content','<p>Dorfcaf&eacute; was first opened in 1989, with a bake sale and a classic caf&eacute;. Since November 2019 Mihaela Euler, lovingly named \"Samy\" by all, has the honor to take over the village caf&eacute; in the beautiful Horben.</p>\n<p>Samy comes from a gastronomic family and knows from a young age that fresh dishes are to be created with the utmost care and the best ingredients. Through her passion for the classic Baden cuisine and coupled with her great curiosity for the new, she always ensures happiness moments.</p>',NULL),(26,'2019-10-11 09:46:00','2019-11-13 10:57:42',NULL,'About Us Services Picture','story-image','','[\"statice\\/November2019\\/dpHKCQsQfjHnW0uGWj3P.jpg\"]'),(27,'2019-10-11 10:26:00','2019-11-06 13:13:36',NULL,'About Us Find TItle','find-us-title','<p>HOW TO FIND US</p>',NULL),(28,'2019-10-11 10:27:00','2019-11-07 07:49:47',NULL,'About Us Find Subtitle','find-us-subtitle','<p>Welcome to the restaurant Dorfcaf&eacute; in the heart of Horben.</p>\n<p>Baden cuisine in its freshest variety, influenced by international influences.</p>\n<p>&nbsp;</p>',NULL),(29,'2019-10-15 09:35:00','2019-11-06 12:34:57',NULL,'Index Header Title','index-header-title','<p>Welcome to the restaurant Dorfcaf&eacute; in the heart of Horben.</p>\n<p>Baden cuisine in its freshest variety, influenced by international influences.</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>',NULL),(30,'2019-10-15 11:13:00','2019-11-06 12:14:58',NULL,'Menu Subtitle','menu-subtitle','<p>see our prices</p>',NULL),(36,'2019-10-17 06:35:00','2019-11-06 12:13:45',NULL,'Contact Title','contact-title','<p>Contact</p>',NULL),(37,'2019-10-17 06:36:00','2019-11-06 12:12:51',NULL,'Contact Subtitle','contact-subtitle','<p>Do you have questions, let them in this form and we will answer you.</p>\n<p>&nbsp;</p>',NULL),(39,'2019-10-17 12:56:00','2019-11-11 10:12:18',NULL,'Phone','phone','<p>0761 / 31 96 85 58</p>',NULL),(42,'2019-10-17 13:08:00','2019-11-13 12:35:49',NULL,'CopyRIght Text','copy','<p>&nbsp;</p>\n<p>Copyright 2019 Dorfcafe. All rights reserved.</p>',NULL),(44,'2019-10-28 08:17:00','2019-11-06 12:27:32',NULL,'Catering TItle','catering-title','<p>do you need catering for your event?</p>',NULL),(45,'2019-10-28 08:18:00','2019-11-06 12:26:30',NULL,'Catering Description','catering-description','<p>Even cooked, it tastes better! That\'s what you and we know ... That\'s why our food is prepared fresh every day - and you can taste it as well.</p>\n<p>Coming from a gastronomic family, that also knows Mihaela Euler, affectionately known as Samy. Through her years of experience in the catering industry and mother of three children, she knows how important a healthy and balanced meal is for children. Even the smallest ones should develop a sense of good and fresh food.</p>',NULL),(46,'2019-10-28 08:18:00','2019-11-13 10:55:49',NULL,'Catering Image','catering-image','','[\"statice\\/November2019\\/jItTC9vb3QK1jBNPd6QY.jpg\"]'),(47,'2019-10-30 14:54:00','2019-11-13 10:00:20',NULL,'About Us Banner','about-us-banner','','[\"statice\\/November2019\\/C1aSDrS61gl6XEXVpc8V.jpg\"]'),(48,'2019-10-30 14:54:00','2019-11-06 10:06:41',NULL,'About Us Headline','about-us-title-big','<p>Welcome to the restaurant Dorfcaf&eacute; in the heart of Horben.</p>',NULL),(49,'2019-10-30 14:55:00','2019-11-06 10:09:04',NULL,'About US Headline Subtitle','about-us-subtitle','<p>Baden cuisine in its freshest variety with shapes of international influences.</p>',NULL);
/*!40000 ALTER TABLE `statice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',5,'pt','Post','2019-10-09 08:09:24','2019-10-09 08:09:24'),(2,'data_types','display_name_singular',6,'pt','Página','2019-10-09 08:09:24','2019-10-09 08:09:24'),(3,'data_types','display_name_singular',1,'pt','Utilizador','2019-10-09 08:09:24','2019-10-09 08:09:24'),(4,'data_types','display_name_singular',4,'pt','Categoria','2019-10-09 08:09:24','2019-10-09 08:09:24'),(5,'data_types','display_name_singular',2,'pt','Menu','2019-10-09 08:09:24','2019-10-09 08:09:24'),(6,'data_types','display_name_singular',3,'pt','Função','2019-10-09 08:09:24','2019-10-09 08:09:24'),(7,'data_types','display_name_plural',5,'pt','Posts','2019-10-09 08:09:24','2019-10-09 08:09:24'),(8,'data_types','display_name_plural',6,'pt','Páginas','2019-10-09 08:09:24','2019-10-09 08:09:24'),(9,'data_types','display_name_plural',1,'pt','Utilizadores','2019-10-09 08:09:24','2019-10-09 08:09:24'),(10,'data_types','display_name_plural',4,'pt','Categorias','2019-10-09 08:09:24','2019-10-09 08:09:24'),(11,'data_types','display_name_plural',2,'pt','Menus','2019-10-09 08:09:24','2019-10-09 08:09:24'),(12,'data_types','display_name_plural',3,'pt','Funções','2019-10-09 08:09:24','2019-10-09 08:09:24'),(13,'categories','slug',1,'pt','categoria-1','2019-10-09 08:09:24','2019-10-09 08:09:24'),(14,'categories','name',1,'pt','Categoria 1','2019-10-09 08:09:24','2019-10-09 08:09:24'),(15,'categories','slug',2,'pt','categoria-2','2019-10-09 08:09:24','2019-10-09 08:09:24'),(16,'categories','name',2,'pt','Categoria 2','2019-10-09 08:09:24','2019-10-09 08:09:24'),(17,'pages','title',1,'pt','Olá Mundo','2019-10-09 08:09:24','2019-10-09 08:09:24'),(18,'pages','slug',1,'pt','ola-mundo','2019-10-09 08:09:24','2019-10-09 08:09:24'),(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2019-10-09 08:09:24','2019-10-09 08:09:24'),(20,'menu_items','title',1,'pt','Painel de Controle','2019-10-09 08:09:24','2019-10-09 08:09:24'),(21,'menu_items','title',2,'pt','Media','2019-10-09 08:09:24','2019-10-09 08:09:24'),(22,'menu_items','title',12,'pt','Publicações','2019-10-09 08:09:24','2019-10-09 08:09:24'),(23,'menu_items','title',3,'pt','Utilizadores','2019-10-09 08:09:24','2019-10-09 08:09:24'),(24,'menu_items','title',11,'pt','Categorias','2019-10-09 08:09:24','2019-10-09 08:09:24'),(25,'menu_items','title',13,'pt','Páginas','2019-10-09 08:09:24','2019-10-09 08:09:24'),(26,'menu_items','title',4,'pt','Funções','2019-10-09 08:09:24','2019-10-09 08:09:24'),(27,'menu_items','title',5,'pt','Ferramentas','2019-10-09 08:09:24','2019-10-09 08:09:24'),(28,'menu_items','title',6,'pt','Menus','2019-10-09 08:09:24','2019-10-09 08:09:24'),(29,'menu_items','title',7,'pt','Base de dados','2019-10-09 08:09:24','2019-10-09 08:09:24'),(30,'menu_items','title',10,'pt','Configurações','2019-10-09 08:09:24','2019-10-09 08:09:24'),(33,'statice','name',3,'de','About Us Picture','2019-10-09 11:06:28','2019-10-09 11:06:28'),(34,'menu_items','title',15,'de','Index Header Banner','2019-10-11 07:17:49','2019-10-11 07:36:33'),(35,'menu_items','title',17,'de','Index Swiper Images','2019-10-11 07:24:33','2019-10-11 07:37:58'),(36,'statice','name',21,'de','About Us Mission Image 2','2019-10-11 09:08:12','2019-10-11 09:08:12'),(37,'statice','name',23,'de','Unsere Mission','2019-10-11 09:21:47','2019-11-06 13:18:59'),(38,'statice','content',23,'de','<p class=\"Text\"><span lang=\"DE\">Essen ist etwas ganz besonderes und dieses Gef&uuml;hl m&ouml;chten wir gerne mit Ihnen teilen.</span></p>\n<p class=\"Text\"><span lang=\"DE\">Unsere K&uuml;che ist bodenst&auml;ndig badisch, aber in der Welt zu Hause. Frische und regionale Produkte sind f&uuml;r uns selbstverst&auml;ndlich.</span></p>\n<p class=\"Text\"><span lang=\"DE\">Das Dorfcaf&eacute; ist die perfekte Kombination aus einer einmaligen Lage, einem gem&uuml;tlichen Ambiente und einem hochmotiviertem Team. Ob mit Freunden, Bekannten oder im Kreise Ihrer Familie. Unse</span><span lang=\"DE\">r Ziel ist es, Ihnen einen Ort des Wohlbefindens und des Zusammenkommens zu bieten. Kommen Sie vorbei und lassen Sie sich von uns im Herzen von Horben kulinarisch verw&ouml;hnen. </span></p>','2019-10-11 09:21:47','2019-11-07 07:37:43'),(39,'statice','name',25,'de','Unsere Geschichte ','2019-10-11 09:46:38','2019-11-06 13:20:51'),(40,'statice','content',25,'de','<p class=\"Text\"><span lang=\"DE\">1989 wurde das Dorfcaf&eacute; erstmals er&ouml;ffnet, mit einem Kuchenverkauf und einem klassischen Caf&eacute;. Seit November 2019 hat Mihaela Euler, von allen liebevoll &bdquo;Samy&ldquo; genannt, die Ehre das Dorfcaf&eacute; im sch&ouml;nen Horben zu &uuml;bernehmen. </span></p>\n<p class=\"Text\"><span lang=\"DE\">Samy stammt aus einer gastronomischen Familie und wei&szlig; von kleinauf, dass frische Gerichte mit gr&ouml;&szlig;ter Sorgfalt und den besten Zutaten zu kreieren sind. Durch ihre&nbsp; Leidenschaft f&uuml;r die klassische badische K&uuml;che und&nbsp;gepaart mit ihrer gro&szlig;en Neugier aufs Neue, sorgt sie immer wieder f&uuml;r Gl&uuml;cksmomente&nbsp;f&uuml;r Ihren Gaumen.</span></p>','2019-10-11 09:46:38','2019-11-07 07:43:26'),(41,'statice','name',26,'de','About Us Story Picture','2019-10-11 09:46:47','2019-10-11 09:46:47'),(42,'menu_categories','name',1,'de','Current Menu','2019-10-15 13:25:41','2019-10-15 13:25:41'),(43,'statice','name',4,'de','About Us Title','2019-10-17 09:03:28','2019-10-17 09:03:28'),(44,'statice','content',4,'de','<p>&Uuml;ber uns</p>','2019-10-17 09:03:28','2019-11-07 08:22:24'),(45,'statice','name',6,'de','Menu Picture','2019-10-18 05:36:15','2019-10-18 05:36:15'),(67,'data_rows','display_name',110,'de','Id','2019-10-28 07:18:54','2019-10-28 07:18:54'),(68,'data_rows','display_name',111,'de','Created At','2019-10-28 07:18:54','2019-10-28 07:18:54'),(69,'data_rows','display_name',112,'de','Updated At','2019-10-28 07:18:54','2019-10-28 07:18:54'),(70,'data_rows','display_name',113,'de','Deleted At','2019-10-28 07:18:54','2019-10-28 07:18:54'),(71,'data_rows','display_name',114,'de','Image','2019-10-28 07:18:54','2019-10-28 07:18:54'),(72,'data_rows','display_name',115,'de','Title','2019-10-28 07:18:54','2019-10-28 07:18:54'),(73,'data_rows','display_name',116,'de','Description','2019-10-28 07:18:54','2019-10-28 07:18:54'),(74,'data_types','display_name_singular',19,'de','Event','2019-10-28 07:18:54','2019-10-28 07:18:54'),(75,'data_types','display_name_plural',19,'de','Events','2019-10-28 07:18:54','2019-10-28 07:18:54'),(80,'events','title',1,'de','Weihnachtsfeiertag 25.12','2019-10-28 08:12:34','2019-11-06 09:12:52'),(81,'events','description',1,'de','<p class=\"Text\"><span lang=\"DE\">Den ersten Weihnachtsfeiertag ganz entspannt im Kreise von Familie und Freunden verbringen? Dann sind Sie bei uns genau richtig. Wir haben f&uuml;r Sie ab 17.00Uhr ge&ouml;ffnet. (Um Reservierung wird gebeten)</span></p>','2019-10-28 08:12:34','2019-11-06 09:12:52'),(82,'data_rows','display_name',117,'de','PDF','2019-10-28 08:28:56','2019-10-28 08:28:56'),(83,'statice','name',20,'de','About Us Mission Image 1','2019-10-31 07:51:40','2019-10-31 07:51:40'),(84,'statice','name',22,'de','About US Mission Title','2019-10-31 07:52:48','2019-10-31 07:52:48'),(85,'statice','content',22,'de','<p>UNSERE MISSION</p>','2019-10-31 07:52:48','2019-11-07 07:35:17'),(86,'statice','name',24,'de','About Us Story Title','2019-10-31 07:54:26','2019-10-31 07:54:26'),(87,'statice','content',24,'de','<p>UNSERE GESCHICHTE</p>','2019-10-31 07:54:26','2019-11-07 07:35:22'),(88,'menu_categories','Title',7,'de','Catering Fondue','2019-10-31 08:03:08','2019-11-07 08:57:21'),(89,'menu_categories','Content',7,'de','Holen Sie sich Vorfreude und Appetit, werfen Sie einen Blick in unsere aktuelle Speisekarte und saisonalen Angebote.','2019-10-31 08:03:08','2019-11-07 08:57:21'),(90,'menu_categories','Title',6,'de','Frühstückskarte','2019-10-31 08:03:14','2019-11-07 09:00:06'),(91,'menu_categories','Content',6,'de','Holen Sie sich Vorfreude und Appetit, werfen Sie einen Blick in unsere aktuelle Speisekarte und saisonalen Angebote.','2019-10-31 08:03:14','2019-11-07 09:00:06'),(92,'menu_categories','Title',5,'de','Kindergarten Catering','2019-10-31 08:03:18','2019-11-07 09:02:30'),(93,'menu_categories','Content',5,'de','Für nähere Informationen oder Anfragen, nehmen Sie bitte Kontakt über unser Kontaktformular auf.','2019-10-31 08:03:18','2019-11-07 09:02:30'),(94,'menu_categories','Title',4,'de','Menü','2019-10-31 08:03:22','2019-11-07 08:50:48'),(95,'menu_categories','Content',4,'de','Holen Sie sich Vorfreude und Appetit, werfen Sie einen Blick in unsere aktuelle Speisekarte und saisonalen Angebote.','2019-10-31 08:03:22','2019-11-07 08:54:38'),(96,'statice','name',49,'de','About US Headline Subtitle','2019-11-06 08:46:12','2019-11-06 08:46:12'),(97,'statice','content',49,'de','<p>Badische K&uuml;che in seiner frischesten Vielfalt, gepr&auml;gt&nbsp;von internationalen Einfl&uuml;ssen.</p>','2019-11-06 08:46:12','2019-11-11 11:39:30'),(98,'statice','name',29,'de','Index Header Title','2019-11-06 08:48:14','2019-11-06 08:48:14'),(99,'statice','content',29,'de','<p><span lang=\"DE\">Willkommen im Restaurant Dorfcaf&eacute; im Herzen von Horben.</span></p>\n<p><span lang=\"DE\">Badische K&uuml;che in seiner frischesten Vielfalt, gepr&auml;gt von internationalen Einfl&uuml;ssen.</span></p>','2019-11-06 08:48:14','2019-11-07 07:49:50'),(100,'categories','name',3,'de','Gerichte und Leckereien  aus unserer Küche ','2019-11-06 08:57:21','2019-11-06 08:57:40'),(101,'categories','name',2,'de','Das Dorfcafé','2019-11-06 08:58:14','2019-11-06 08:58:24'),(102,'events','title',6,'de','Weihnachtsfeiertag','2019-11-06 09:18:22','2019-11-06 09:18:22'),(103,'events','description',6,'de','<p class=\"Text\"><span lang=\"DE\">Entspannt Fr&uuml;hst&uuml;cken, zum Caf&eacute; und Kuchen am Nachmittag, oder abends zum Essen vorbei kommen. Wir haben f&uuml;r Sie ab 08.00Uhr ge&ouml;ffnet. (Um Reservierung wird gebeten)</span></p>','2019-11-06 09:18:22','2019-11-06 09:18:22'),(104,'statice','name',48,'de','About Us Headline','2019-11-06 10:06:02','2019-11-06 10:06:02'),(105,'statice','content',48,'de','<p>Willkommen im Restaurant Dorfcaf&eacute; im Herzen von Horben.</p>','2019-11-06 10:06:02','2019-11-06 10:06:02'),(106,'statice','name',42,'de','CopyRIght Text','2019-11-06 10:51:53','2019-11-06 10:51:53'),(107,'statice','content',42,'de','<p>Copywrite 2019 Dorfcafe. Alle Rechte vorbehalten.</p>','2019-11-06 10:51:53','2019-11-13 12:36:08'),(114,'statice','name',39,'de','Telefonnummer','2019-11-06 12:09:36','2019-11-06 12:11:53'),(115,'statice','content',39,'de','<p>0761 / 31 96 85 58</p>','2019-11-06 12:09:36','2019-11-11 10:12:18'),(116,'statice','name',37,'de','Contact Subtitle','2019-11-06 12:12:51','2019-11-06 12:12:51'),(117,'statice','content',37,'de','<p>Haben Sie Fragen, lassen Sie diese in diesem Formular und wir werden Ihnen antworten.</p>','2019-11-06 12:12:51','2019-11-06 12:12:51'),(118,'statice','name',36,'de','Contact Title','2019-11-06 12:13:45','2019-11-06 12:13:45'),(119,'statice','content',36,'de','<p>Kontakt</p>','2019-11-06 12:13:45','2019-11-06 12:13:45'),(120,'statice','name',30,'de','Menu Subtitle','2019-11-06 12:14:58','2019-11-06 12:14:58'),(121,'statice','content',30,'de','<p>siehe unsere preise</p>','2019-11-06 12:14:58','2019-11-06 12:14:58'),(122,'statice','name',47,'de','About Us Banner','2019-11-06 12:24:53','2019-11-06 12:24:53'),(123,'statice','name',45,'de','Catering Description','2019-11-06 12:25:45','2019-11-06 12:25:45'),(124,'statice','content',45,'de','<p class=\"TextA\"><span lang=\"DE\">Selbst gekocht schmeckt es besser ! Dass wissen Sie und auch wir &hellip; Deshalb wird unser Essen t&auml;glich frisch von uns zubereitet - und das schmeckt man auch. </span></p>\n<p class=\"TextA\"><span lang=\"DE\">Aus einer gastronomischen Familie stammend, wei&szlig; das auch Mihaela Euler, liebevoll Samy genannt. Durch Ihre jahrelange Erfahrung in der Gastronomie und Mutter dreier Kinder wei&szlig; sie, wie wichtig eine gesunde und ausgewogene Mahlzeit f&uuml;r Kinder ist. Denn auch die Kleinsten sollen einen Sinn f&uuml;r gutes und frisches Essen entwickeln.</span></p>','2019-11-06 12:25:45','2019-11-06 12:25:45'),(125,'statice','name',44,'de','Catering TItle','2019-11-06 12:27:32','2019-11-06 12:27:32'),(126,'statice','content',44,'de','<p>Ben&ouml;tigen Sie Catering f&uuml;r Ihre Veranstaltung?</p>','2019-11-06 12:27:32','2019-11-06 12:27:32'),(127,'statice','name',28,'de','About Us Find Subtitle','2019-11-06 12:36:59','2019-11-06 12:36:59'),(128,'statice','content',28,'de','<p><span lang=\"DE\">Willkommen im Restaurant Dorfcaf&eacute; im Herzen von Horben.</span></p>\n<p><span lang=\"DE\">Badische K&uuml;che in seiner frischesten Vielfalt, gepr&auml;gt von internationalen Einfl&uuml;ssen.</span></p>','2019-11-06 12:36:59','2019-11-07 07:49:47'),(129,'statice','name',27,'de','About Us Find TItle','2019-11-06 13:13:36','2019-11-06 13:13:36'),(130,'statice','content',27,'de','<p>WIE SIE UNS FINDEN</p>','2019-11-06 13:13:36','2019-11-06 13:13:36'),(131,'statice','name',19,'de','Intex Gallery TItle','2019-11-06 13:22:52','2019-11-06 13:22:52'),(132,'statice','content',19,'de','<p>Gallerie</p>','2019-11-06 13:22:52','2019-11-06 13:22:52'),(133,'statice','name',14,'de','Exceptional Menu Text','2019-11-06 13:38:16','2019-11-06 13:38:16'),(134,'statice','content',14,'de','<p>Holen Sie sich Vorfreude und Appetit, werfen Sie einen Blick in unsere aktuelle Speisekarte und saisonalen Angebote.</p>','2019-11-06 13:38:16','2019-11-07 08:34:05'),(135,'statice','name',13,'de','Exceptional Menu TItle','2019-11-07 07:51:27','2019-11-07 07:51:27'),(136,'statice','content',13,'de','<p>Unsere Speisekarten</p>','2019-11-07 07:51:27','2019-11-07 08:33:12'),(137,'statice','name',5,'de','About US Content','2019-11-07 08:21:02','2019-11-07 08:21:02'),(138,'statice','content',5,'de','<p>Wir bieten Ihnen eine klassische badische K&uuml;che mit internationalen Einfl&uuml;ssen und dass durchgehend. Probieren Sie auch gerne von unseren t&auml;glich frischen, hausgemachten Kuchen. Denn wir backen noch selbst.&nbsp;</p>\n<p>Wir haben Freude an dem was wir machen und hei&szlig;en Sie daher herzlichst willkommen im Dorfcaf&eacute; in Horben!</p>','2019-11-07 08:21:02','2019-11-07 08:21:02'),(139,'statice','name',7,'de','Menu title 1','2019-11-07 08:24:41','2019-11-07 08:24:41'),(140,'statice','content',7,'de','<p class=\"Text\"><span lang=\"DE\">Fr&uuml;hst&uuml;ck, Mittagessen, Caf&eacute; &amp; Kuchen und Abendessen</span></p>','2019-11-07 08:24:41','2019-11-07 08:26:55'),(141,'statice','name',8,'de','Menu text 1','2019-11-07 08:25:30','2019-11-07 08:25:30'),(142,'statice','content',8,'de','<p>Kommen Sie vorbei und lassen Sie sich von uns kulinarisch verw&ouml;hnen.&nbsp;</p>','2019-11-07 08:25:30','2019-11-07 08:25:30'),(143,'statice','name',9,'de','Menu title 2','2019-11-07 08:27:51','2019-11-07 08:27:51'),(144,'statice','content',9,'de','<p class=\"Text\"><span lang=\"DE\">Kindergarten Catering</span></p>','2019-11-07 08:27:51','2019-11-07 08:27:51'),(145,'statice','name',10,'de','Menu text 2','2019-11-07 08:28:46','2019-11-07 08:28:46'),(146,'statice','content',10,'de','<p>F&uuml;r n&auml;here Informationen oder Anfragen, nehmen Sie bitte Kontakt &uuml;ber unser Kontaktformular auf.</p>','2019-11-07 08:28:46','2019-11-07 08:28:46'),(147,'statice','name',11,'de','Menu title 3','2019-11-07 08:30:02','2019-11-07 08:30:02'),(148,'statice','content',11,'de','<p>Veranstaltungen</p>','2019-11-07 08:30:02','2019-11-07 08:30:02'),(149,'statice','name',12,'de','Menu text 3','2019-11-07 08:31:54','2019-11-07 08:31:54'),(150,'statice','content',12,'de','<p class=\"Text\"><span lang=\"DE\">Das ganze Jahr &uuml;ber veranstalten wir f&uuml;r Sie &bdquo;Specials&ldquo;. Wir informieren Sie dar&uuml;ber auf unserer Homepage.</span></p>','2019-11-07 08:31:54','2019-11-07 08:31:54'),(151,'data_rows','display_name',79,'de','Id','2019-11-12 11:36:13','2019-11-12 11:36:13'),(152,'data_rows','display_name',80,'de','Created At','2019-11-12 11:36:13','2019-11-12 11:36:13'),(153,'data_rows','display_name',81,'de','Updated At','2019-11-12 11:36:13','2019-11-12 11:36:13'),(154,'data_rows','display_name',82,'de','Deleted At','2019-11-12 11:36:13','2019-11-12 11:36:13'),(155,'data_rows','display_name',83,'de','Image','2019-11-12 11:36:13','2019-11-12 11:36:13'),(156,'data_rows','display_name',84,'de','Category Id','2019-11-12 11:36:13','2019-11-12 11:36:13'),(157,'data_rows','display_name',85,'de','categories','2019-11-12 11:36:13','2019-11-12 11:36:13'),(158,'data_types','display_name_singular',13,'de','Photo','2019-11-12 11:36:13','2019-11-12 11:36:13'),(159,'data_types','display_name_plural',13,'de','Photos','2019-11-12 11:36:13','2019-11-12 11:36:13'),(160,'statice','name',46,'de','Catering Image','2019-11-13 10:55:49','2019-11-13 10:55:49'),(161,'menu_items','title',16,'de','Statices','2019-11-13 13:18:25','2019-11-13 13:18:25'),(162,'menu_items','title',18,'de','Gallery Categories','2019-11-13 13:28:30','2019-11-13 13:28:30'),(163,'menu_items','title',21,'de','Gallery','2019-11-13 13:32:37','2019-11-13 13:32:37'),(164,'menu_items','title',27,'de','Events','2019-11-13 13:38:40','2019-11-13 13:38:40'),(165,'menu_items','title',29,'de','Menu','2019-11-13 13:40:22','2019-11-13 13:40:52');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Admin','admin@admin.com','users/default.png',NULL,'$2y$10$rLPEI4eIlhuFB7dGwPn1zOgFCsIVnV1clp.h2m7OzhhaLaY/CrPFq','hh2tiB4aEpofwpadYC4TEpwzhR8RrBnYEVaFdCuuOqHY2oaUY3mgz826nQ9g',NULL,'2019-10-09 08:09:24','2019-10-09 08:09:24');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-13 14:39:42
