-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: bitfan
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `access_message`
--


DROP TABLE IF EXISTS `access_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `access_message` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `message_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `access_message_user_id_foreign` (`user_id`),
  KEY `access_message_message_id_foreign` (`message_id`),
  CONSTRAINT `access_message_message_id_foreign` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `access_message_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_message`
--

LOCK TABLES `access_message` WRITE;
/*!40000 ALTER TABLE `access_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `access_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `access_post`
--

DROP TABLE IF EXISTS `access_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `access_post` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `access_post_user_id_foreign` (`user_id`),
  KEY `access_post_post_id_foreign` (`post_id`),
  CONSTRAINT `access_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `access_post_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_post`
--

LOCK TABLES `access_post` WRITE;
/*!40000 ALTER TABLE `access_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `access_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_payout`
--

DROP TABLE IF EXISTS `batch_payout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_payout` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `batch_id` bigint unsigned NOT NULL,
  `payout_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `batch_payout_batch_id_foreign` (`batch_id`),
  KEY `batch_payout_payout_id_foreign` (`payout_id`),
  CONSTRAINT `batch_payout_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `payout_batches` (`id`) ON DELETE CASCADE,
  CONSTRAINT `batch_payout_payout_id_foreign` FOREIGN KEY (`payout_id`) REFERENCES `payouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_payout`
--

LOCK TABLES `batch_payout` WRITE;
/*!40000 ALTER TABLE `batch_payout` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch_payout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmarks`
--

DROP TABLE IF EXISTS `bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookmarks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bookmarks_user_id_foreign` (`user_id`),
  KEY `bookmarks_post_id_foreign` (`post_id`),
  CONSTRAINT `bookmarks_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `bookmarks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmarks`
--

LOCK TABLES `bookmarks` WRITE;
/*!40000 ALTER TABLE `bookmarks` DISABLE KEYS */;
INSERT INTO `bookmarks` VALUES (2,4,5,'2022-07-20 09:44:10','2022-07-20 09:44:10'),(3,10,8,'2022-07-20 15:51:44','2022-07-20 15:51:44'),(4,4,15,'2022-07-20 23:45:51','2022-07-20 23:45:51'),(7,4,12,'2022-07-21 21:08:37','2022-07-21 21:08:37'),(8,4,14,'2022-07-24 11:44:50','2022-07-24 11:44:50'),(9,14,17,'2022-07-26 17:02:22','2022-07-26 17:02:22'),(13,4,11,'2022-07-26 23:45:25','2022-07-26 23:45:25'),(18,4,19,'2022-08-01 13:22:39','2022-08-01 13:22:39'),(19,16,17,'2022-08-02 10:21:29','2022-08-02 10:21:29'),(22,22,21,'2022-08-04 15:20:34','2022-08-04 15:20:34');
/*!40000 ALTER TABLE `bookmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bundles`
--

DROP TABLE IF EXISTS `bundles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bundles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `months` tinyint unsigned NOT NULL,
  `discount` tinyint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bundles_user_id_foreign` (`user_id`),
  CONSTRAINT `bundles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bundles`
--

LOCK TABLES `bundles` WRITE;
/*!40000 ALTER TABLE `bundles` DISABLE KEYS */;
INSERT INTO `bundles` VALUES (1,1,3,30,'2022-07-18 16:56:53','2022-07-18 16:56:53',NULL),(2,8,3,50,'2022-07-18 21:28:33','2022-07-19 11:09:47','2022-07-19 11:09:47'),(3,8,3,50,'2022-07-19 11:10:00','2022-07-19 11:10:12','2022-07-19 11:10:12'),(4,4,6,50,'2022-07-19 11:11:03','2022-07-20 09:45:14','2022-07-20 09:45:14'),(5,7,6,20,'2022-07-19 13:34:33','2022-07-19 13:34:34','2022-07-19 13:34:34'),(6,7,6,10,'2022-07-19 13:34:38','2022-07-19 13:34:38',NULL),(7,7,3,20,'2022-07-19 13:34:42','2022-07-19 13:34:42',NULL),(8,7,12,40,'2022-07-19 13:34:47','2022-07-19 13:34:47',NULL),(9,8,3,50,'2022-07-19 17:44:31','2022-07-19 17:44:31',NULL),(10,4,3,40,'2022-07-19 22:10:12','2022-07-20 09:45:15','2022-07-20 09:45:15'),(11,4,3,20,'2022-07-20 09:45:21','2022-07-20 09:45:21',NULL),(12,8,12,40,'2022-07-21 12:13:13','2022-07-21 12:13:13',NULL),(13,12,1,50,'2022-07-21 14:17:24','2022-07-21 14:17:24',NULL),(14,4,1,95,'2022-07-21 16:21:34','2022-07-21 16:26:36',NULL),(15,6,1,90,'2022-07-21 17:07:19','2022-07-21 17:07:19',NULL),(16,22,3,50,'2022-08-04 16:28:18','2022-08-04 16:28:18',NULL),(17,22,1,80,'2022-08-08 09:36:35','2022-08-08 09:37:03','2022-08-08 09:37:03'),(18,22,6,80,'2022-08-08 09:36:42','2022-08-08 09:36:42',NULL),(19,22,12,80,'2022-08-08 09:36:46','2022-08-08 10:47:11','2022-08-08 10:47:11'),(20,22,1,95,'2022-08-08 09:37:08','2022-08-08 14:23:49','2022-08-08 14:23:49'),(21,2,3,10,'2022-08-08 09:48:11','2022-08-08 09:48:11',NULL),(22,2,6,10,'2022-08-08 09:48:15','2022-08-08 09:48:15',NULL);
/*!40000 ALTER TABLE `bundles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_like`
--

DROP TABLE IF EXISTS `comment_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_like` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `comment_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_like_user_id_foreign` (`user_id`),
  KEY `comment_like_comment_id_foreign` (`comment_id`),
  CONSTRAINT `comment_like_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comment_like_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_like`
--

LOCK TABLES `comment_like` WRITE;
/*!40000 ALTER TABLE `comment_like` DISABLE KEYS */;
INSERT INTO `comment_like` VALUES (1,2,1),(2,2,2),(3,4,12),(4,4,13),(5,2,23),(6,22,25);
/*!40000 ALTER TABLE `comment_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_user_id_foreign` (`user_id`),
  KEY `comments_post_id_foreign` (`post_id`),
  CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,2,1,'soo','2022-07-18 15:13:00','2022-07-18 15:13:00'),(2,2,1,'@user6666345,','2022-07-18 15:13:08','2022-07-18 15:13:08'),(3,1,4,'asd','2022-07-19 10:54:04','2022-07-19 10:54:04'),(4,1,4,'@admin, ad','2022-07-19 10:54:08','2022-07-19 10:54:08'),(6,4,5,'sad','2022-07-19 14:11:43','2022-07-19 14:11:43'),(7,4,5,'love','2022-07-20 20:40:08','2022-07-20 20:40:08'),(8,4,5,'sd','2022-07-20 22:45:22','2022-07-20 22:45:22'),(9,11,15,'sd','2022-07-20 22:51:51','2022-07-20 22:51:51'),(11,4,2,'Hey','2022-07-21 17:13:41','2022-07-21 17:13:41'),(12,4,12,'Lol','2022-07-21 17:14:06','2022-07-21 17:14:06'),(13,4,12,'Love ❤️','2022-07-23 11:04:06','2022-07-23 11:04:06'),(14,4,14,'love','2022-07-24 12:26:32','2022-07-24 12:26:32'),(15,4,14,'love','2022-07-24 12:26:34','2022-07-24 12:26:34'),(16,4,12,'@user3394847, gh','2022-07-24 17:02:32','2022-07-24 17:02:32'),(17,14,17,'sad','2022-07-26 14:53:33','2022-07-26 14:53:33'),(18,14,17,'sad','2022-07-26 14:53:35','2022-07-26 14:53:35'),(19,14,17,'sda','2022-07-26 14:53:40','2022-07-26 14:53:40'),(20,14,17,'@fanse, dsa','2022-07-26 17:02:27','2022-07-26 17:02:27'),(21,4,17,'Suppo','2022-07-26 23:28:58','2022-07-26 23:28:58'),(22,4,17,'Hshhd','2022-07-26 23:32:29','2022-07-26 23:32:29'),(23,2,19,'Tip me','2022-07-31 20:42:01','2022-07-31 20:42:01'),(24,8,19,'פגז','2022-08-01 13:21:38','2022-08-01 13:21:38'),(25,22,21,'Movie all-in','2022-08-04 15:08:01','2022-08-04 15:08:01'),(26,22,21,'@Yaniv','2022-08-04 15:23:04','2022-08-04 15:23:04'),(27,22,17,'Wow','2022-08-04 17:47:28','2022-08-04 17:47:28'),(28,16,15,'Test','2022-08-08 10:19:25','2022-08-08 10:19:25'),(29,16,15,'@user3793502, Hi','2022-08-08 10:19:35','2022-08-08 10:19:35'),(30,22,27,'wow','2022-08-09 09:28:21','2022-08-09 09:28:21'),(31,22,29,'sd','2022-08-09 09:32:05','2022-08-09 09:32:05');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_lists`
--

DROP TABLE IF EXISTS `custom_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `custom_lists_user_id_foreign` (`user_id`),
  CONSTRAINT `custom_lists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_lists`
--

LOCK TABLES `custom_lists` WRITE;
/*!40000 ALTER TABLE `custom_lists` DISABLE KEYS */;
INSERT INTO `custom_lists` VALUES (1000,2,'sd','2022-07-18 16:17:25','2022-07-18 16:17:25'),(1001,34,'Hello','2022-08-08 13:21:51','2022-08-08 13:21:51');
/*!40000 ALTER TABLE `custom_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like_post`
--

DROP TABLE IF EXISTS `like_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `like_post` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `like_post_user_id_foreign` (`user_id`),
  KEY `like_post_post_id_foreign` (`post_id`),
  CONSTRAINT `like_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `like_post_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_post`
--

LOCK TABLES `like_post` WRITE;
/*!40000 ALTER TABLE `like_post` DISABLE KEYS */;
INSERT INTO `like_post` VALUES (1,2,1),(3,4,15),(4,8,15),(5,11,15),(7,4,14),(8,4,12),(10,6,17),(11,14,17),(14,4,17),(16,2,17),(17,2,19),(18,8,19),(20,22,17),(23,8,17);
/*!40000 ALTER TABLE `like_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lists`
--

DROP TABLE IF EXISTS `lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `listee_id` bigint unsigned NOT NULL,
  `list_ids` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lists_user_id_foreign` (`user_id`),
  KEY `lists_listee_id_foreign` (`listee_id`),
  CONSTRAINT `lists_listee_id_foreign` FOREIGN KEY (`listee_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lists`
--

LOCK TABLES `lists` WRITE;
/*!40000 ALTER TABLE `lists` DISABLE KEYS */;
INSERT INTO `lists` VALUES (1,2,4,'[0, 1000]'),(2,2,2,'[1000]'),(3,1,1,'[0]'),(4,4,7,'[0]'),(6,4,1,'[0]'),(7,1,4,'[0]'),(8,11,11,'[0]'),(9,8,14,'[0]'),(10,16,2,'[0]'),(11,33,14,'[0]'),(12,34,9,'[0, 1001]'),(13,22,4,'[0]');
/*!40000 ALTER TABLE `lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint NOT NULL COMMENT '0 - image, 1 - video, 2 - audio',
  `info` json DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0 - tmp, 1 - active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_user_id_foreign` (`user_id`),
  CONSTRAINT `media_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,1,'kfhgrqkHcWlYMQGo','jpg',0,NULL,0,'2022-07-18 13:47:33','2022-07-18 13:47:33',NULL),(2,1,'lre837WFahtwfv3O','jpg',0,NULL,0,'2022-07-18 14:34:06','2022-07-18 14:34:06',NULL),(3,1,'bAxUZ3R1xy0xqluu','png',0,NULL,0,'2022-07-18 16:49:54','2022-07-18 16:49:54',NULL),(4,1,'03Kj3LQxSuQEVCos','jpg',0,NULL,0,'2022-07-18 19:41:52','2022-07-18 19:41:52',NULL),(5,4,'aXRyIxl7RgoSIg6n','png',0,NULL,0,'2022-07-19 09:55:17','2022-07-19 09:55:17',NULL),(6,1,'FGZyvcay0eEuizym','png',0,NULL,0,'2022-07-19 10:53:56','2022-07-19 10:53:56',NULL),(7,1,'3uoxubwxSwvvuS5X','png',0,NULL,0,'2022-07-19 11:08:18','2022-07-19 11:08:18',NULL),(8,4,'fC6F4c8IaZt7p7Bp','png',0,NULL,0,'2022-07-19 11:22:38','2022-07-19 11:22:38',NULL),(9,4,'LWLim1F8cjLTpWw9','png',0,NULL,0,'2022-07-19 11:23:02','2022-07-19 11:23:02',NULL),(10,4,'5hDqbeXfl9mEKPFQ','jpg',0,NULL,0,'2022-07-19 11:32:19','2022-07-19 11:32:19',NULL),(11,4,'A3MRqHTMZI9SG4mp','png',0,NULL,0,'2022-07-19 13:30:36','2022-07-19 13:30:36',NULL),(12,4,'h4QFwJLytOec54YL','png',0,NULL,0,'2022-07-19 13:31:24','2022-07-19 13:31:24',NULL),(13,4,'xktb1cyDL1UQht5Q','png',0,NULL,0,'2022-07-19 13:32:52','2022-07-19 13:32:52',NULL),(14,4,'HCwdttsCyx50FPPz','jpg',0,NULL,0,'2022-07-19 13:57:39','2022-07-19 13:57:39',NULL),(15,4,'8ivmBtG4CQfvon7p','png',0,NULL,0,'2022-07-20 15:23:55','2022-07-20 15:23:55',NULL),(16,4,'dPzaRgvwjO8Kgluk','png',0,NULL,0,'2022-07-20 15:32:14','2022-07-20 15:32:14',NULL),(17,9,'kqMd9sahbZqtQj3p','mp4',1,NULL,0,'2022-07-20 15:35:53','2022-07-20 15:35:53',NULL),(18,9,'FC00XUGRlrmhPByX','mp4',1,NULL,0,'2022-07-20 15:36:34','2022-07-20 15:36:34',NULL),(19,9,'NKtPL0XGDxNLsUPh','mp4',1,NULL,0,'2022-07-20 15:38:12','2022-07-20 15:38:12',NULL),(20,4,'oreIunZEVUJBOAPo','jpg',0,NULL,2,'2022-07-20 15:46:20','2022-07-20 15:46:24',NULL),(21,4,'mMYnW73XBGNtlpus','jpg',0,NULL,0,'2022-07-20 19:09:57','2022-07-20 19:09:57',NULL),(22,4,'7l6OTx5xogIrw32c','jpg',0,NULL,0,'2022-07-20 19:58:58','2022-07-20 19:58:58',NULL),(23,4,'7bBCcisnWhEZ7gVC','png',0,NULL,0,'2022-07-20 19:59:04','2022-07-20 19:59:04',NULL),(24,4,'jrPRCyQgOExnLgrl','png',0,NULL,0,'2022-07-20 20:00:13','2022-07-20 20:00:13',NULL),(25,4,'HlBBVdlWtw7tAvgr','png',0,NULL,0,'2022-07-20 20:00:23','2022-07-20 20:00:23',NULL),(26,4,'qM4QJWvW5GkOSA2o','jpg',0,NULL,0,'2022-07-20 20:04:26','2022-07-20 20:04:26',NULL),(27,4,'m0v0YfYavpPKli4x','mov',1,'{\"screenshot\": \"0\"}',2,'2022-07-20 20:08:09','2022-07-20 20:08:25',NULL),(28,4,'P0OoBpB8gLvUSVKw','mov',1,NULL,0,'2022-07-20 20:09:51','2022-07-20 20:09:51',NULL),(29,4,'rORPgjoncNoakPUS','heic',0,NULL,2,'2022-07-20 20:13:11','2022-07-20 20:13:16',NULL),(30,4,'3Yq5orWsAWZg5gb1','heic',0,NULL,0,'2022-07-20 20:15:01','2022-07-20 20:15:01',NULL),(31,11,'zAvFAqnwIvB62aJR','jpg',0,NULL,2,'2022-07-20 21:03:50','2022-07-20 21:03:53',NULL),(32,4,'O26meZmEj94rPsp4','png',0,NULL,0,'2022-07-21 01:29:42','2022-07-21 01:29:42',NULL),(33,11,'pL26LlFCQ2MvyGGZ','png',0,NULL,0,'2022-07-21 11:19:47','2022-07-21 11:19:47',NULL),(34,4,'iZhQwNBbfbgD2Oyk','png',0,NULL,0,'2022-07-21 15:00:29','2022-07-21 15:00:29',NULL),(35,4,'LYWIirzh9xQ86w7K','png',0,NULL,0,'2022-07-24 13:57:16','2022-07-24 13:57:16',NULL),(36,4,'vmyjPp0ceRw6LbRp','png',0,NULL,0,'2022-07-24 14:02:44','2022-07-24 14:02:44',NULL),(37,4,'0TeTqfRa4XukdH8N','jpg',0,NULL,0,'2022-07-24 14:02:51','2022-07-24 14:02:51',NULL),(38,4,'eIAEYQDviXlRnzIa','jpg',0,NULL,0,'2022-07-24 14:03:07','2022-07-24 14:03:07',NULL),(39,4,'ebHOdmA0sO4mytfx','jpg',0,NULL,2,'2022-07-24 17:05:57','2022-07-24 17:05:59',NULL),(40,14,'YnuXMiEKJFZ5oGaI','jpg',0,NULL,2,'2022-07-26 14:03:04','2022-07-26 14:03:05',NULL),(41,4,'nTDX3o9tOmn0bUph','png',0,NULL,0,'2022-07-26 23:30:49','2022-07-26 23:30:49',NULL),(42,2,'BoJE87sW9hZIi5hr','jpg',0,NULL,2,'2022-07-31 20:41:36','2022-07-31 20:41:52',NULL),(43,22,'2xXOfpPTjLtEvyTZ','jpg',0,NULL,2,'2022-08-04 15:06:56','2022-08-04 15:06:58',NULL),(44,22,'G2f9ttBEEMlM32YU','png',0,NULL,2,'2022-08-04 15:22:26','2022-08-04 15:22:29',NULL),(45,2,'2CHL0jHemUgNUiuB','jpg',0,NULL,0,'2022-08-07 10:58:33','2022-08-07 10:58:33',NULL),(46,2,'BduCwj0ZQE0oqTHt','jpg',0,NULL,2,'2022-08-07 10:58:48','2022-08-07 10:58:54',NULL),(47,22,'nnpEuK0ncXGZFeh2','jpg',0,NULL,2,'2022-08-07 10:59:18','2022-08-07 10:59:22',NULL),(48,22,'ihDTHqW1HetVuQQz','jpg',0,NULL,2,'2022-08-07 10:59:43','2022-08-07 10:59:45',NULL),(49,22,'1bY9olrFWslntC6f','jpg',0,NULL,0,'2022-08-08 11:35:07','2022-08-08 11:35:07',NULL),(50,22,'ginJSRhlA9HUHLkg','jpg',0,NULL,2,'2022-08-08 11:35:24','2022-08-08 11:35:27',NULL),(51,22,'hjhxa3SXmuO5yOP2','jpg',0,NULL,2,'2022-08-08 22:34:26','2022-08-08 22:34:34',NULL),(52,22,'ENBplPpcLncCYtZE','jpg',0,NULL,2,'2022-08-08 22:34:27','2022-08-08 22:34:34',NULL),(53,22,'uYEMoAKRPLtW969v','jpg',0,NULL,2,'2022-08-08 22:34:28','2022-08-08 22:34:34',NULL),(54,22,'zQNzY38idyIpu5dh','jpg',0,NULL,2,'2022-08-08 22:34:29','2022-08-08 22:34:34',NULL),(55,22,'bGcGn4sIaUhgEdLu','mov',1,'{\"screenshot\": \"0\"}',2,'2022-08-09 06:37:45','2022-08-09 06:37:49',NULL),(56,22,'fh5RWTKv7yMMVht6','mov',1,'{\"screenshot\": \"0\"}',2,'2022-08-09 06:39:09','2022-08-09 06:39:30',NULL);
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_message`
--

DROP TABLE IF EXISTS `media_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_message` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message_id` bigint unsigned NOT NULL,
  `media_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `media_message_message_id_foreign` (`message_id`),
  KEY `media_message_media_id_foreign` (`media_id`),
  CONSTRAINT `media_message_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  CONSTRAINT `media_message_message_id_foreign` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_message`
--

LOCK TABLES `media_message` WRITE;
/*!40000 ALTER TABLE `media_message` DISABLE KEYS */;
INSERT INTO `media_message` VALUES (1,50,44),(2,56,46),(3,57,47),(4,58,48);
/*!40000 ALTER TABLE `media_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_post`
--

DROP TABLE IF EXISTS `media_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_post` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL,
  `media_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `media_post_post_id_foreign` (`post_id`),
  KEY `media_post_media_id_foreign` (`media_id`),
  CONSTRAINT `media_post_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  CONSTRAINT `media_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_post`
--

LOCK TABLES `media_post` WRITE;
/*!40000 ALTER TABLE `media_post` DISABLE KEYS */;
INSERT INTO `media_post` VALUES (1,8,20),(2,12,27),(3,13,29),(4,15,31),(5,16,39),(6,17,40),(7,19,42),(8,20,43),(9,24,50),(11,26,52),(12,26,53),(13,26,54),(14,28,55),(15,29,56);
/*!40000 ALTER TABLE `media_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_user`
--

DROP TABLE IF EXISTS `message_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `party_id` bigint unsigned NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `message_user_message_id_foreign` (`message_id`),
  KEY `message_user_user_id_foreign` (`user_id`),
  KEY `message_user_party_id_foreign` (`party_id`),
  CONSTRAINT `message_user_message_id_foreign` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `message_user_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `message_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_user`
--

LOCK TABLES `message_user` WRITE;
/*!40000 ALTER TABLE `message_user` DISABLE KEYS */;
INSERT INTO `message_user` VALUES (1,1,2,3,0),(3,2,2,3,0),(5,3,2,3,0),(7,4,2,3,0),(9,5,2,3,0),(11,6,2,3,0),(20,10,4,1,1),(21,11,4,1,1),(24,13,4,1,1),(26,14,4,1,1),(29,15,4,1,1),(30,16,4,1,1),(32,17,2,1,1),(34,18,4,1,1),(36,20,4,1,1),(38,21,4,1,1),(40,22,4,1,0),(56,30,11,9,0),(70,37,4,1,0),(77,42,14,4,1),(79,43,4,1,1),(80,43,1,4,1),(81,46,16,11,0),(82,46,11,16,0),(83,47,16,9,0),(84,47,9,16,0),(90,51,22,4,1),(95,53,14,6,1),(104,55,2,1,0),(106,56,2,1,0),(108,57,22,4,1),(110,58,22,4,1),(113,59,2,8,1),(115,60,22,8,1),(116,63,16,9,0),(117,63,9,16,0),(118,64,22,4,0),(120,65,22,8,1),(122,66,34,9,0),(123,66,9,34,0),(124,67,22,2,1),(125,67,2,22,1),(126,68,22,8,1),(127,68,8,22,1),(128,69,16,11,0),(129,69,11,16,0),(130,70,22,11,0),(131,70,11,22,0),(132,71,22,11,0),(133,71,11,22,0),(134,72,22,11,0),(135,72,11,22,0),(136,73,22,11,0),(137,73,11,22,0),(138,74,22,16,1),(139,74,16,22,1);
/*!40000 ALTER TABLE `message_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `type` tinyint unsigned NOT NULL DEFAULT '0',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint unsigned DEFAULT NULL,
  `mass` tinyint unsigned NOT NULL DEFAULT '0',
  `info` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `messages_user_id_foreign` (`user_id`),
  CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,2,0,'Hey',NULL,0,NULL,'2022-07-18 13:43:08','2022-07-18 13:43:08'),(2,2,0,'uj',NULL,0,NULL,'2022-07-18 15:13:32','2022-07-18 15:13:32'),(3,2,0,'Yaniv',NULL,0,NULL,'2022-07-18 15:51:36','2022-07-18 15:51:36'),(4,2,0,'Hahah',NULL,0,NULL,'2022-07-18 15:56:13','2022-07-18 15:56:13'),(5,2,0,'Maka',NULL,0,NULL,'2022-07-18 15:56:14','2022-07-18 15:56:14'),(6,2,0,'ds',NULL,0,NULL,'2022-07-18 16:17:53','2022-07-18 16:17:53'),(7,2,0,'usp',NULL,0,NULL,'2022-07-18 19:45:34','2022-07-18 19:45:34'),(8,8,0,'Booo',NULL,0,NULL,'2022-07-18 21:30:11','2022-07-18 21:30:11'),(9,8,0,'Dm myself',NULL,0,NULL,'2022-07-18 21:30:27','2022-07-18 21:30:27'),(10,1,0,'hey',NULL,0,NULL,'2022-07-19 10:50:06','2022-07-19 10:50:06'),(11,4,0,'heyy',NULL,0,NULL,'2022-07-19 10:56:31','2022-07-19 10:56:31'),(12,4,0,'ll',NULL,1,NULL,'2022-07-19 11:02:52','2022-07-19 11:02:52'),(13,4,0,'sup',NULL,0,NULL,'2022-07-19 13:23:46','2022-07-19 13:23:46'),(14,4,0,'s',100,0,NULL,'2022-07-19 13:23:51','2022-07-19 13:23:51'),(15,1,0,'hey',NULL,0,NULL,'2022-07-19 13:36:46','2022-07-19 13:36:46'),(16,4,0,'what is going on',NULL,0,NULL,'2022-07-19 13:36:58','2022-07-19 13:36:58'),(17,2,1,'sd',NULL,0,'{\"payment_id\": 1}','2022-07-19 13:38:59','2022-07-19 13:38:59'),(18,4,0,'sdfs',NULL,0,NULL,'2022-07-19 14:11:35','2022-07-19 14:11:35'),(19,4,0,'sda',NULL,1,NULL,'2022-07-19 14:12:29','2022-07-19 14:12:29'),(20,4,0,'sad',NULL,0,NULL,'2022-07-19 22:15:59','2022-07-19 22:15:59'),(21,4,0,'sf',200,0,NULL,'2022-07-20 10:11:17','2022-07-20 10:11:17'),(22,4,0,'ds',300,0,NULL,'2022-07-20 11:37:34','2022-07-20 11:37:34'),(23,4,0,'love',NULL,0,NULL,'2022-07-20 20:26:16','2022-07-20 20:26:16'),(24,4,0,'Sup',NULL,0,NULL,'2022-07-20 21:22:19','2022-07-20 21:22:19'),(25,11,0,'Love',NULL,0,NULL,'2022-07-20 21:43:15','2022-07-20 21:43:15'),(26,4,0,'Love',NULL,0,NULL,'2022-07-20 21:50:31','2022-07-20 21:50:31'),(27,11,0,'yo',NULL,0,NULL,'2022-07-20 22:56:00','2022-07-20 22:56:00'),(28,11,0,'sad',NULL,0,NULL,'2022-07-20 23:32:15','2022-07-20 23:32:15'),(29,11,0,'lo',NULL,0,NULL,'2022-07-20 23:35:46','2022-07-20 23:35:46'),(30,11,0,'jh',NULL,0,NULL,'2022-07-20 23:36:09','2022-07-20 23:36:09'),(31,4,0,'Hey',NULL,0,NULL,'2022-07-20 23:36:50','2022-07-20 23:36:50'),(32,4,0,'Hey',NULL,0,NULL,'2022-07-20 23:36:59','2022-07-20 23:36:59'),(33,4,0,'Love',NULL,0,NULL,'2022-07-20 23:37:04','2022-07-20 23:37:04'),(34,4,0,'Mz',500,0,NULL,'2022-07-20 23:37:14','2022-07-20 23:37:14'),(35,4,0,'H',NULL,0,NULL,'2022-07-21 01:30:43','2022-07-21 01:30:43'),(36,11,0,'So',NULL,0,NULL,'2022-07-21 11:16:35','2022-07-21 11:16:35'),(37,4,0,'Ll',NULL,0,NULL,'2022-07-24 15:40:07','2022-07-24 15:40:07'),(38,4,0,'H',NULL,1,NULL,'2022-07-24 17:02:40','2022-07-24 17:02:40'),(39,8,0,'hey',NULL,0,NULL,'2022-07-25 12:30:01','2022-07-25 12:30:01'),(40,8,0,'bsbsbs',NULL,0,NULL,'2022-07-25 12:30:18','2022-07-25 12:30:18'),(41,14,0,'Hey',NULL,1,NULL,'2022-07-26 17:00:54','2022-07-26 17:00:54'),(42,14,0,'asd',NULL,0,NULL,'2022-07-26 17:01:03','2022-07-26 17:01:03'),(43,4,0,'Hxjjx',NULL,0,NULL,'2022-07-26 23:31:16','2022-07-26 23:31:16'),(44,4,0,'Supp',NULL,1,NULL,'2022-07-27 17:44:24','2022-07-27 17:44:24'),(45,2,0,'Lovely',NULL,1,NULL,'2022-08-03 18:56:56','2022-08-03 18:56:56'),(46,16,0,'Hello',NULL,0,NULL,'2022-08-04 03:59:29','2022-08-04 03:59:29'),(47,16,0,'Hello',NULL,0,NULL,'2022-08-04 04:00:28','2022-08-04 04:00:28'),(48,22,0,'So',NULL,1,NULL,'2022-08-04 15:17:56','2022-08-04 15:17:56'),(49,22,0,'Sup',NULL,0,NULL,'2022-08-04 15:22:05','2022-08-04 15:22:05'),(50,22,0,'Lo',500,0,NULL,'2022-08-04 15:22:29','2022-08-04 15:22:29'),(51,22,0,'Hey',NULL,0,NULL,'2022-08-04 17:40:41','2022-08-04 17:40:41'),(52,22,0,'Hello',NULL,0,NULL,'2022-08-04 17:47:43','2022-08-04 17:47:43'),(53,6,0,'Hey',NULL,0,NULL,'2022-08-04 17:48:41','2022-08-04 17:48:41'),(54,2,0,'love',NULL,1,NULL,'2022-08-07 09:00:44','2022-08-07 09:00:44'),(55,2,0,'hi',NULL,0,NULL,'2022-08-07 10:58:34','2022-08-07 10:58:34'),(56,2,0,'hi',NULL,0,NULL,'2022-08-07 10:58:54','2022-08-07 10:58:54'),(57,22,0,'Hi',NULL,0,NULL,'2022-08-07 10:59:22','2022-08-07 10:59:22'),(58,22,0,'Heyy',NULL,0,NULL,'2022-08-07 10:59:45','2022-08-07 10:59:45'),(59,8,0,'dfdf',NULL,0,NULL,'2022-08-07 11:00:44','2022-08-07 11:00:44'),(60,8,0,'adssds',NULL,0,NULL,'2022-08-07 12:41:17','2022-08-07 12:41:17'),(61,22,0,'love',NULL,1,NULL,'2022-08-07 19:32:43','2022-08-07 19:32:43'),(62,22,0,'d',NULL,1,NULL,'2022-08-07 19:32:52','2022-08-07 19:32:52'),(63,16,0,'test',NULL,0,NULL,'2022-08-08 10:17:41','2022-08-08 10:17:41'),(64,22,0,'סדר יום',NULL,0,NULL,'2022-08-08 13:13:46','2022-08-08 13:13:46'),(65,22,0,'שדגדגשג\n\n\nדשג\nגש\nג\nש\nגשד',NULL,0,NULL,'2022-08-08 13:13:55','2022-08-08 13:13:55'),(66,34,0,'Hello \nHope you are doing well and great',NULL,0,NULL,'2022-08-08 13:18:25','2022-08-08 13:18:25'),(67,22,0,'sdok',NULL,0,NULL,'2022-08-08 13:42:10','2022-08-08 13:42:10'),(68,22,0,'sup',NULL,0,NULL,'2022-08-08 18:12:50','2022-08-08 18:12:50'),(69,16,0,'hi',NULL,0,NULL,'2022-08-08 20:46:46','2022-08-08 20:46:46'),(70,22,0,'Supp',NULL,0,NULL,'2022-08-08 22:29:50','2022-08-08 22:29:50'),(71,22,0,'Supp',NULL,0,NULL,'2022-08-08 22:29:50','2022-08-08 22:29:50'),(72,22,0,'Supp',NULL,0,NULL,'2022-08-08 22:29:53','2022-08-08 22:29:53'),(73,22,0,'Hey',NULL,0,NULL,'2022-08-08 22:29:59','2022-08-08 22:29:59'),(74,22,0,'Sup',NULL,0,NULL,'2022-08-08 22:35:29','2022-08-08 22:35:29');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2021_09_22_115502_create_posts_table',1),(6,'2021_09_22_123711_create_media_table',1),(7,'2021_09_22_123901_create_polls_table',1),(8,'2021_09_22_124141_create_votes_table',1),(9,'2021_09_22_131126_create_messages_table',1),(10,'2021_09_22_132538_create_media_post_table',1),(11,'2021_09_22_132626_create_media_message_table',1),(12,'2021_09_22_133649_create_custom_lists_table',1),(13,'2021_09_22_133735_create_lists_table',1),(14,'2021_09_22_134007_create_notifications_table',1),(15,'2021_09_24_133654_create_comments_table',1),(16,'2021_09_24_133830_create_like_post_table',1),(17,'2021_09_24_134139_create_comment_like_table',1),(18,'2021_09_29_084023_create_bookmarks_table',1),(19,'2021_11_24_084446_create_bundles_table',1),(20,'2021_11_24_085420_create_subscriptions_table',1),(21,'2021_11_24_085443_create_payments_table',1),(22,'2021_11_24_090254_create_access_post_table',1),(23,'2021_11_24_090309_create_access_message_table',1),(24,'2021_12_03_124503_create_message_user_table',1),(25,'2021_12_20_130031_create_verifications_table',1),(26,'2021_12_21_095322_create_payouts_table',1),(27,'2021_12_22_094832_create_payout_methods_table',1),(28,'2022_01_11_135621_create_payment_methods_table',1),(29,'2022_02_07_080222_create_payout_batches_table',1),(30,'2022_02_07_080356_create_batch_payout_table',1),(31,'2022_08_04_123645_addlastseen_to_users_table',2),(32,'2022_08_07_123645_addsocials_to_users_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `type` tinyint NOT NULL,
  `info` json NOT NULL,
  `viewed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_user_id_foreign` (`user_id`),
  CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,3,20,'{\"user_id\": 2}',0,'2022-07-18 13:43:13','2022-07-18 13:43:13'),(2,1,10,'{\"post_id\": 1, \"user_id\": 2}',1,'2022-07-18 15:12:55','2022-07-18 16:50:00'),(3,1,0,'{\"post_id\": 1, \"user_id\": 2, \"comment_id\": 1}',1,'2022-07-18 15:13:00','2022-07-18 16:50:00'),(4,1,11,'{\"post_id\": 1, \"user_id\": 2, \"comment_id\": 1}',1,'2022-07-18 15:13:03','2022-07-18 16:50:00'),(5,1,0,'{\"post_id\": 1, \"user_id\": 2, \"comment_id\": 2}',1,'2022-07-18 15:13:08','2022-07-18 16:50:00'),(6,1,11,'{\"post_id\": 1, \"user_id\": 2, \"comment_id\": 2}',1,'2022-07-18 15:13:12','2022-07-18 16:50:00'),(7,2,20,'{\"user_id\": 1}',1,'2022-07-18 16:56:24','2022-07-18 17:36:14'),(8,2,20,'{\"user_id\": 8}',1,'2022-07-18 21:30:02','2022-07-19 09:37:43'),(9,3,20,'{\"user_id\": 8}',0,'2022-07-19 09:25:32','2022-07-19 09:25:32'),(10,5,20,'{\"user_id\": 8}',0,'2022-07-19 09:25:40','2022-07-19 09:25:40'),(11,5,20,'{\"user_id\": 2}',0,'2022-07-19 09:39:09','2022-07-19 09:39:09'),(12,1,0,'{\"post_id\": 4, \"user_id\": 1, \"comment_id\": 3}',1,'2022-07-19 10:54:04','2022-07-19 10:54:25'),(13,1,0,'{\"post_id\": 4, \"user_id\": 1, \"comment_id\": 4}',1,'2022-07-19 10:54:08','2022-07-19 10:54:25'),(14,3,20,'{\"user_id\": 4}',0,'2022-07-19 13:24:07','2022-07-19 13:24:07'),(15,4,0,'{\"post_id\": 2, \"user_id\": 4, \"comment_id\": 5}',1,'2022-07-19 13:24:20','2022-07-19 13:24:22'),(16,3,20,'{\"user_id\": 4}',0,'2022-07-19 13:57:13','2022-07-19 13:57:13'),(17,2,20,'{\"user_id\": 4}',1,'2022-07-19 13:57:18','2022-07-19 15:38:22'),(18,4,0,'{\"post_id\": 5, \"user_id\": 4, \"comment_id\": 6}',1,'2022-07-19 14:11:43','2022-07-19 14:11:45'),(19,4,0,'{\"post_id\": 5, \"user_id\": 4, \"comment_id\": 7}',1,'2022-07-20 20:40:08','2022-07-20 20:48:49'),(20,11,10,'{\"post_id\": 15, \"user_id\": 11}',1,'2022-07-20 21:14:50','2022-07-20 21:14:53'),(21,4,0,'{\"post_id\": 5, \"user_id\": 4, \"comment_id\": 8}',1,'2022-07-20 22:45:22','2022-07-20 22:45:26'),(22,11,0,'{\"post_id\": 15, \"user_id\": 11, \"comment_id\": 9}',1,'2022-07-20 22:51:51','2022-07-20 22:54:02'),(23,3,20,'{\"user_id\": 11}',0,'2022-07-20 23:32:02','2022-07-20 23:32:02'),(24,11,10,'{\"post_id\": 15, \"user_id\": 4}',1,'2022-07-20 23:45:52','2022-07-21 11:14:56'),(25,11,10,'{\"post_id\": 15, \"user_id\": 8}',1,'2022-07-21 08:25:23','2022-07-21 11:14:56'),(26,11,10,'{\"post_id\": 15, \"user_id\": 11}',1,'2022-07-21 11:19:37','2022-07-21 11:21:04'),(27,11,20,'{\"user_id\": 4}',0,'2022-07-21 15:01:06','2022-07-21 15:01:06'),(28,4,10,'{\"post_id\": 12, \"user_id\": 4}',1,'2022-07-21 16:03:07','2022-07-21 16:03:28'),(29,11,10,'{\"post_id\": 14, \"user_id\": 4}',0,'2022-07-21 16:47:44','2022-07-21 16:47:44'),(30,4,0,'{\"post_id\": 2, \"user_id\": 4, \"comment_id\": 10}',1,'2022-07-21 17:13:34','2022-07-21 17:13:43'),(31,4,0,'{\"post_id\": 2, \"user_id\": 4, \"comment_id\": 11}',1,'2022-07-21 17:13:41','2022-07-21 17:13:43'),(32,4,0,'{\"post_id\": 12, \"user_id\": 4, \"comment_id\": 12}',1,'2022-07-21 17:14:06','2022-07-21 21:04:35'),(33,9,20,'{\"user_id\": 8}',0,'2022-07-22 22:57:14','2022-07-22 22:57:14'),(34,4,0,'{\"post_id\": 12, \"user_id\": 4, \"comment_id\": 13}',1,'2022-07-23 11:04:06','2022-07-23 11:04:09'),(35,11,0,'{\"post_id\": 14, \"user_id\": 4, \"comment_id\": 14}',0,'2022-07-24 12:26:32','2022-07-24 12:26:32'),(36,11,0,'{\"post_id\": 14, \"user_id\": 4, \"comment_id\": 15}',0,'2022-07-24 12:26:34','2022-07-24 12:26:34'),(37,4,10,'{\"post_id\": 12, \"user_id\": 4}',1,'2022-07-24 14:33:28','2022-07-24 14:33:41'),(38,4,0,'{\"post_id\": 12, \"user_id\": 4, \"comment_id\": 16}',1,'2022-07-24 17:02:32','2022-07-24 17:05:42'),(39,11,20,'{\"user_id\": 13}',0,'2022-07-24 19:20:55','2022-07-24 19:20:55'),(40,4,20,'{\"user_id\": 13}',1,'2022-07-24 19:22:27','2022-07-24 20:08:48'),(41,11,20,'{\"user_id\": 13}',0,'2022-07-24 19:27:15','2022-07-24 19:27:15'),(42,11,20,'{\"user_id\": 13}',0,'2022-07-24 19:42:02','2022-07-24 19:42:02'),(43,11,20,'{\"user_id\": 13}',0,'2022-07-24 20:04:50','2022-07-24 20:04:50'),(44,4,20,'{\"user_id\": 13}',1,'2022-07-24 20:06:02','2022-07-24 20:08:48'),(45,11,20,'{\"user_id\": 13}',0,'2022-07-24 20:06:17','2022-07-24 20:06:17'),(46,11,20,'{\"user_id\": 13}',0,'2022-07-24 20:08:29','2022-07-24 20:08:29'),(47,11,20,'{\"user_id\": 13}',0,'2022-07-24 20:20:32','2022-07-24 20:20:32'),(48,4,20,'{\"user_id\": 13}',1,'2022-07-24 20:21:04','2022-07-24 20:40:12'),(49,4,11,'{\"post_id\": 12, \"user_id\": 4, \"comment_id\": 12}',1,'2022-07-24 20:26:43','2022-07-24 20:40:12'),(50,4,11,'{\"post_id\": 12, \"user_id\": 4, \"comment_id\": 13}',1,'2022-07-24 20:26:44','2022-07-24 20:40:12'),(51,11,20,'{\"user_id\": 4}',0,'2022-07-24 20:53:32','2022-07-24 20:53:32'),(52,4,20,'{\"user_id\": 13}',1,'2022-07-25 11:03:18','2022-07-25 12:48:13'),(53,11,20,'{\"user_id\": 13}',0,'2022-07-25 12:16:13','2022-07-25 12:16:13'),(54,11,20,'{\"user_id\": 13}',0,'2022-07-25 12:27:07','2022-07-25 12:27:07'),(55,11,20,'{\"user_id\": 8}',0,'2022-07-25 12:28:03','2022-07-25 12:28:03'),(56,11,20,'{\"user_id\": 13}',0,'2022-07-25 12:30:12','2022-07-25 12:30:12'),(57,11,20,'{\"user_id\": 13}',0,'2022-07-25 12:31:51','2022-07-25 12:31:51'),(58,11,20,'{\"user_id\": 13}',0,'2022-07-25 12:34:46','2022-07-25 12:34:46'),(59,11,20,'{\"user_id\": 13}',0,'2022-07-25 12:39:42','2022-07-25 12:39:42'),(60,11,20,'{\"user_id\": 8}',0,'2022-07-25 12:40:08','2022-07-25 12:40:08'),(61,11,20,'{\"user_id\": 8}',0,'2022-07-25 12:40:37','2022-07-25 12:40:37'),(62,11,20,'{\"user_id\": 13}',0,'2022-07-25 12:41:47','2022-07-25 12:41:47'),(63,4,20,'{\"user_id\": 8}',1,'2022-07-25 12:55:51','2022-07-25 23:55:00'),(64,4,20,'{\"user_id\": 8}',1,'2022-07-25 12:59:47','2022-07-25 23:55:00'),(65,4,20,'{\"user_id\": 8}',1,'2022-07-25 13:01:04','2022-07-25 23:55:00'),(66,11,20,'{\"user_id\": 2}',0,'2022-07-26 09:36:05','2022-07-26 09:36:05'),(67,11,20,'{\"user_id\": 4}',0,'2022-07-26 13:35:55','2022-07-26 13:35:55'),(68,11,20,'{\"user_id\": 4}',0,'2022-07-26 13:52:16','2022-07-26 13:52:16'),(69,14,20,'{\"user_id\": 8}',1,'2022-07-26 14:17:34','2022-07-26 17:00:37'),(70,14,10,'{\"post_id\": 17, \"user_id\": 6}',1,'2022-07-26 14:27:57','2022-07-26 17:00:37'),(71,14,10,'{\"post_id\": 17, \"user_id\": 6}',1,'2022-07-26 14:27:59','2022-07-26 17:00:37'),(72,14,10,'{\"post_id\": 17, \"user_id\": 14}',1,'2022-07-26 14:53:27','2022-07-26 17:00:37'),(73,14,0,'{\"post_id\": 17, \"user_id\": 14, \"comment_id\": 17}',1,'2022-07-26 14:53:33','2022-07-26 17:00:37'),(74,14,0,'{\"post_id\": 17, \"user_id\": 14, \"comment_id\": 18}',1,'2022-07-26 14:53:35','2022-07-26 17:00:37'),(75,14,0,'{\"post_id\": 17, \"user_id\": 14, \"comment_id\": 19}',1,'2022-07-26 14:53:40','2022-07-26 17:00:37'),(76,14,0,'{\"post_id\": 17, \"user_id\": 14, \"comment_id\": 20}',1,'2022-07-26 17:02:27','2022-07-27 15:21:51'),(77,14,0,'{\"post_id\": 17, \"user_id\": 4, \"comment_id\": 21}',1,'2022-07-26 23:28:58','2022-07-27 15:21:51'),(78,14,10,'{\"post_id\": 17, \"user_id\": 4}',1,'2022-07-26 23:32:25','2022-07-27 15:21:51'),(79,14,0,'{\"post_id\": 17, \"user_id\": 4, \"comment_id\": 22}',1,'2022-07-26 23:32:29','2022-07-27 15:21:51'),(80,14,10,'{\"post_id\": 17, \"user_id\": 4}',1,'2022-07-26 23:38:13','2022-07-27 15:21:51'),(81,14,10,'{\"post_id\": 17, \"user_id\": 4}',1,'2022-07-26 23:46:32','2022-07-27 15:21:51'),(82,14,10,'{\"post_id\": 17, \"user_id\": 8}',1,'2022-07-27 07:43:17','2022-07-27 15:21:51'),(83,14,10,'{\"post_id\": 17, \"user_id\": 2}',1,'2022-07-27 14:28:26','2022-07-27 15:21:51'),(84,2,20,'{\"user_id\": 8}',1,'2022-07-27 15:59:51','2022-07-31 18:30:28'),(85,14,20,'{\"user_id\": 8}',1,'2022-07-27 16:07:36','2022-07-28 11:03:01'),(86,9,20,'{\"user_id\": 14}',0,'2022-07-31 13:48:59','2022-07-31 13:48:59'),(87,11,20,'{\"user_id\": 14}',0,'2022-07-31 13:49:04','2022-07-31 13:49:04'),(88,11,20,'{\"user_id\": 14}',0,'2022-07-31 13:49:25','2022-07-31 13:49:25'),(89,2,0,'{\"post_id\": 19, \"user_id\": 2, \"comment_id\": 23}',1,'2022-07-31 20:42:01','2022-07-31 20:42:06'),(90,2,11,'{\"post_id\": 19, \"user_id\": 2, \"comment_id\": 23}',1,'2022-07-31 20:42:03','2022-07-31 20:42:06'),(91,2,10,'{\"post_id\": 19, \"user_id\": 2}',1,'2022-07-31 20:42:05','2022-07-31 20:42:06'),(92,9,20,'{\"user_id\": 16}',0,'2022-08-01 03:35:09','2022-08-01 03:35:09'),(93,2,20,'{\"user_id\": 16}',1,'2022-08-01 03:35:49','2022-08-02 12:00:34'),(94,14,20,'{\"user_id\": 16}',1,'2022-08-01 03:45:37','2022-08-09 14:06:52'),(95,11,20,'{\"user_id\": 16}',0,'2022-08-01 03:45:48','2022-08-01 03:45:48'),(96,2,20,'{\"user_id\": 16}',1,'2022-08-01 03:46:09','2022-08-02 12:00:34'),(97,9,20,'{\"user_id\": 17}',0,'2022-08-01 04:01:31','2022-08-01 04:01:31'),(98,14,20,'{\"user_id\": 16}',1,'2022-08-01 04:18:49','2022-08-09 14:06:52'),(99,11,20,'{\"user_id\": 16}',0,'2022-08-01 04:18:56','2022-08-01 04:18:56'),(100,2,20,'{\"user_id\": 16}',1,'2022-08-01 04:19:42','2022-08-02 12:00:34'),(101,2,20,'{\"user_id\": 16}',1,'2022-08-01 04:22:10','2022-08-02 12:00:34'),(102,11,20,'{\"user_id\": 16}',0,'2022-08-01 04:22:23','2022-08-01 04:22:23'),(103,9,20,'{\"user_id\": 16}',0,'2022-08-01 04:22:35','2022-08-01 04:22:35'),(104,11,20,'{\"user_id\": 16}',0,'2022-08-01 05:42:30','2022-08-01 05:42:30'),(105,14,20,'{\"user_id\": 16}',1,'2022-08-01 05:44:26','2022-08-09 14:06:52'),(106,11,20,'{\"user_id\": 16}',0,'2022-08-01 07:46:51','2022-08-01 07:46:51'),(107,14,20,'{\"user_id\": 16}',1,'2022-08-01 07:46:59','2022-08-09 14:06:52'),(108,14,20,'{\"user_id\": 16}',1,'2022-08-01 07:49:02','2022-08-09 14:06:52'),(109,2,10,'{\"post_id\": 19, \"user_id\": 8}',1,'2022-08-01 13:21:28','2022-08-02 12:00:34'),(110,2,0,'{\"post_id\": 19, \"user_id\": 8, \"comment_id\": 24}',1,'2022-08-01 13:21:38','2022-08-02 12:00:34'),(111,11,20,'{\"user_id\": 20}',0,'2022-08-01 15:43:28','2022-08-01 15:43:28'),(112,11,20,'{\"user_id\": 20}',0,'2022-08-01 15:43:58','2022-08-01 15:43:58'),(113,11,20,'{\"user_id\": 16}',0,'2022-08-01 17:57:50','2022-08-01 17:57:50'),(114,2,20,'{\"user_id\": 21}',1,'2022-08-03 07:30:29','2022-08-03 10:47:40'),(115,9,20,'{\"user_id\": 21}',0,'2022-08-03 07:30:37','2022-08-03 07:30:37'),(116,14,20,'{\"user_id\": 21}',1,'2022-08-03 07:30:42','2022-08-09 14:06:52'),(117,9,20,'{\"user_id\": 21}',0,'2022-08-03 07:32:48','2022-08-03 07:32:48'),(118,14,20,'{\"user_id\": 21}',1,'2022-08-03 07:33:05','2022-08-09 14:06:52'),(119,11,20,'{\"user_id\": 21}',0,'2022-08-03 07:33:26','2022-08-03 07:33:26'),(120,2,20,'{\"user_id\": 21}',1,'2022-08-03 07:38:32','2022-08-03 10:47:40'),(121,11,20,'{\"user_id\": 21}',0,'2022-08-03 07:39:11','2022-08-03 07:39:11'),(122,14,20,'{\"user_id\": 21}',1,'2022-08-03 07:40:03','2022-08-09 14:06:52'),(123,11,20,'{\"user_id\": 17}',0,'2022-08-03 07:46:28','2022-08-03 07:46:28'),(124,9,20,'{\"user_id\": 17}',0,'2022-08-03 07:54:08','2022-08-03 07:54:08'),(125,2,20,'{\"user_id\": 16}',1,'2022-08-03 07:55:34','2022-08-03 10:47:40'),(126,2,20,'{\"user_id\": 16}',1,'2022-08-03 09:02:26','2022-08-03 10:47:40'),(127,9,20,'{\"user_id\": 16}',0,'2022-08-03 09:02:32','2022-08-03 09:02:32'),(128,11,20,'{\"user_id\": 16}',0,'2022-08-03 09:02:37','2022-08-03 09:02:37'),(129,2,20,'{\"user_id\": 22}',1,'2022-08-03 10:48:11','2022-08-03 16:59:34'),(130,9,20,'{\"user_id\": 22}',0,'2022-08-03 10:48:17','2022-08-03 10:48:17'),(131,11,20,'{\"user_id\": 22}',0,'2022-08-03 10:48:25','2022-08-03 10:48:25'),(132,11,20,'{\"user_id\": 22}',0,'2022-08-03 10:48:53','2022-08-03 10:48:53'),(133,9,20,'{\"user_id\": 8}',0,'2022-08-03 11:07:29','2022-08-03 11:07:29'),(134,11,20,'{\"user_id\": 8}',0,'2022-08-03 11:07:43','2022-08-03 11:07:43'),(135,14,20,'{\"user_id\": 22}',1,'2022-08-03 11:23:45','2022-08-09 14:06:52'),(136,11,20,'{\"user_id\": 22}',0,'2022-08-03 11:24:26','2022-08-03 11:24:26'),(137,2,20,'{\"user_id\": 23}',1,'2022-08-03 11:40:28','2022-08-03 16:59:34'),(138,11,20,'{\"user_id\": 23}',0,'2022-08-03 11:40:58','2022-08-03 11:40:58'),(139,11,20,'{\"user_id\": 23}',0,'2022-08-03 11:53:11','2022-08-03 11:53:11'),(140,9,20,'{\"user_id\": 16}',0,'2022-08-03 15:53:53','2022-08-03 15:53:53'),(141,11,20,'{\"user_id\": 24}',0,'2022-08-03 15:57:16','2022-08-03 15:57:16'),(142,9,20,'{\"user_id\": 22}',0,'2022-08-03 16:55:03','2022-08-03 16:55:03'),(143,11,20,'{\"user_id\": 2}',0,'2022-08-03 18:51:16','2022-08-03 18:51:16'),(144,2,20,'{\"user_id\": 16}',1,'2022-08-03 18:55:58','2022-08-03 18:56:27'),(145,11,20,'{\"user_id\": 16}',0,'2022-08-03 18:56:16','2022-08-03 18:56:16'),(146,9,20,'{\"user_id\": 16}',0,'2022-08-03 18:59:11','2022-08-03 18:59:11'),(147,2,20,'{\"user_id\": 16}',1,'2022-08-03 19:41:50','2022-08-03 19:49:40'),(148,11,20,'{\"user_id\": 2}',0,'2022-08-03 22:20:13','2022-08-03 22:20:13'),(149,9,20,'{\"user_id\": 16}',0,'2022-08-04 01:39:52','2022-08-04 01:39:52'),(150,11,20,'{\"user_id\": 16}',0,'2022-08-04 01:53:53','2022-08-04 01:53:53'),(151,14,20,'{\"user_id\": 16}',1,'2022-08-04 02:09:04','2022-08-09 14:06:52'),(152,2,20,'{\"user_id\": 16}',1,'2022-08-04 02:10:13','2022-08-04 10:35:30'),(153,11,20,'{\"user_id\": 16}',0,'2022-08-04 02:10:28','2022-08-04 02:10:28'),(154,2,20,'{\"user_id\": 16}',1,'2022-08-04 02:14:37','2022-08-04 10:35:30'),(155,11,20,'{\"user_id\": 16}',0,'2022-08-04 03:51:59','2022-08-04 03:51:59'),(156,14,20,'{\"user_id\": 16}',1,'2022-08-04 03:59:49','2022-08-09 14:06:52'),(157,2,20,'{\"user_id\": 16}',1,'2022-08-04 04:25:07','2022-08-04 10:35:30'),(158,2,20,'{\"user_id\": 16}',1,'2022-08-04 04:30:15','2022-08-04 10:35:30'),(159,11,20,'{\"user_id\": 16}',0,'2022-08-04 04:30:25','2022-08-04 04:30:25'),(160,2,20,'{\"user_id\": 16}',1,'2022-08-04 04:43:18','2022-08-04 10:35:30'),(161,11,20,'{\"user_id\": 16}',0,'2022-08-04 04:43:26','2022-08-04 04:43:26'),(162,2,20,'{\"user_id\": 16}',1,'2022-08-04 05:00:22','2022-08-04 10:35:30'),(163,9,20,'{\"user_id\": 16}',0,'2022-08-04 06:15:18','2022-08-04 06:15:18'),(164,11,20,'{\"user_id\": 22}',0,'2022-08-04 11:39:28','2022-08-04 11:39:28'),(165,2,20,'{\"user_id\": 16}',1,'2022-08-04 13:18:11','2022-08-04 13:48:08'),(166,2,20,'{\"user_id\": 19}',1,'2022-08-04 13:19:43','2022-08-04 13:48:08'),(167,19,20,'{\"user_id\": 16}',1,'2022-08-04 13:23:11','2022-08-04 17:00:42'),(168,14,20,'{\"user_id\": 6}',1,'2022-08-04 13:24:06','2022-08-09 14:06:52'),(169,11,20,'{\"user_id\": 16}',0,'2022-08-04 13:41:27','2022-08-04 13:41:27'),(170,11,20,'{\"user_id\": 16}',0,'2022-08-04 13:41:43','2022-08-04 13:41:43'),(171,11,20,'{\"user_id\": 2}',0,'2022-08-04 13:45:36','2022-08-04 13:45:36'),(172,22,20,'{\"user_id\": 2}',1,'2022-08-04 13:50:14','2022-08-04 13:50:57'),(173,22,10,'{\"post_id\": 20, \"user_id\": 22}',1,'2022-08-04 15:07:10','2022-08-04 15:08:06'),(174,22,0,'{\"post_id\": 21, \"user_id\": 22, \"comment_id\": 25}',1,'2022-08-04 15:08:01','2022-08-04 15:08:06'),(175,22,11,'{\"post_id\": 21, \"user_id\": 22, \"comment_id\": 25}',1,'2022-08-04 15:08:03','2022-08-04 15:08:06'),(176,22,20,'{\"user_id\": 16}',1,'2022-08-04 15:13:30','2022-08-04 15:17:43'),(177,22,0,'{\"post_id\": 21, \"user_id\": 22, \"comment_id\": 26}',1,'2022-08-04 15:23:04','2022-08-04 16:21:31'),(178,2,20,'{\"user_id\": 17}',1,'2022-08-04 15:47:44','2022-08-04 16:21:00'),(179,22,20,'{\"user_id\": 16}',1,'2022-08-04 15:51:22','2022-08-04 16:21:31'),(180,2,20,'{\"user_id\": 16}',1,'2022-08-04 16:02:51','2022-08-04 16:21:00'),(181,9,20,'{\"user_id\": 16}',0,'2022-08-04 16:02:59','2022-08-04 16:02:59'),(182,11,20,'{\"user_id\": 16}',0,'2022-08-04 16:03:03','2022-08-04 16:03:03'),(183,14,20,'{\"user_id\": 16}',1,'2022-08-04 16:03:07','2022-08-09 14:06:52'),(184,11,20,'{\"user_id\": 19}',0,'2022-08-04 17:02:14','2022-08-04 17:02:14'),(185,11,20,'{\"user_id\": 19}',0,'2022-08-04 17:36:30','2022-08-04 17:36:30'),(186,14,10,'{\"post_id\": 17, \"user_id\": 22}',1,'2022-08-04 17:47:20','2022-08-09 14:06:52'),(187,14,0,'{\"post_id\": 17, \"user_id\": 22, \"comment_id\": 27}',1,'2022-08-04 17:47:28','2022-08-09 14:06:52'),(188,14,20,'{\"user_id\": 8}',1,'2022-08-04 17:49:56','2022-08-09 14:06:52'),(189,14,10,'{\"post_id\": 17, \"user_id\": 8}',1,'2022-08-04 18:03:17','2022-08-09 14:06:52'),(190,14,10,'{\"post_id\": 17, \"user_id\": 8}',1,'2022-08-04 18:03:18','2022-08-09 14:06:52'),(191,14,10,'{\"post_id\": 17, \"user_id\": 8}',1,'2022-08-04 18:03:20','2022-08-09 14:06:52'),(192,2,20,'{\"user_id\": 8}',1,'2022-08-07 09:00:43','2022-08-07 09:00:55'),(193,14,20,'{\"user_id\": 27}',1,'2022-08-07 13:48:22','2022-08-09 14:06:52'),(194,9,20,'{\"user_id\": 27}',0,'2022-08-07 13:51:09','2022-08-07 13:51:09'),(195,2,20,'{\"user_id\": 22}',0,'2022-08-07 14:12:22','2022-08-07 14:12:22'),(196,9,20,'{\"user_id\": 8}',0,'2022-08-07 14:47:10','2022-08-07 14:47:10'),(197,2,20,'{\"user_id\": 22}',0,'2022-08-07 21:10:56','2022-08-07 21:10:56'),(198,11,10,'{\"post_id\": 15, \"user_id\": 16}',0,'2022-08-08 10:19:12','2022-08-08 10:19:12'),(199,11,0,'{\"post_id\": 15, \"user_id\": 16, \"comment_id\": 28}',0,'2022-08-08 10:19:25','2022-08-08 10:19:25'),(200,11,0,'{\"post_id\": 15, \"user_id\": 16, \"comment_id\": 29}',0,'2022-08-08 10:19:35','2022-08-08 10:19:35'),(201,11,11,'{\"post_id\": 15, \"user_id\": 16, \"comment_id\": 28}',0,'2022-08-08 10:19:41','2022-08-08 10:19:41'),(202,9,20,'{\"user_id\": 34}',0,'2022-08-08 13:19:40','2022-08-08 13:19:40'),(203,9,20,'{\"user_id\": 22}',0,'2022-08-08 13:29:47','2022-08-08 13:29:47'),(204,11,20,'{\"user_id\": 31}',0,'2022-08-08 15:39:50','2022-08-08 15:39:50'),(205,9,20,'{\"user_id\": 16}',0,'2022-08-08 17:28:19','2022-08-08 17:28:19'),(206,11,20,'{\"user_id\": 22}',0,'2022-08-08 17:49:12','2022-08-08 17:49:12'),(207,11,20,'{\"user_id\": 27}',0,'2022-08-08 17:52:17','2022-08-08 17:52:17'),(208,11,20,'{\"user_id\": 33}',0,'2022-08-08 18:08:48','2022-08-08 18:08:48'),(209,22,0,'{\"post_id\": 27, \"user_id\": 22, \"comment_id\": 30}',1,'2022-08-09 09:28:21','2022-08-09 09:28:24'),(210,22,0,'{\"post_id\": 29, \"user_id\": 22, \"comment_id\": 31}',1,'2022-08-09 09:32:05','2022-08-09 09:33:00'),(211,9,20,'{\"user_id\": 28}',0,'2022-08-09 13:40:38','2022-08-09 13:40:38'),(212,22,20,'{\"user_id\": 34}',1,'2022-08-09 15:44:54','2022-08-09 16:22:33'),(213,9,20,'{\"user_id\": 28}',0,'2022-08-09 19:21:37','2022-08-09 19:21:37'),(214,14,20,'{\"user_id\": 28}',0,'2022-08-09 19:22:24','2022-08-09 19:22:24'),(215,9,20,'{\"user_id\": 40}',0,'2022-08-10 02:05:20','2022-08-10 02:05:20'),(216,9,20,'{\"user_id\": 43}',0,'2022-08-10 03:53:17','2022-08-10 03:53:17');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_methods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `gateway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` json NOT NULL,
  `main` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_methods_user_id_foreign` (`user_id`),
  CONSTRAINT `payment_methods_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `to_id` bigint unsigned NOT NULL,
  `type` tinyint unsigned NOT NULL,
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` bigint unsigned NOT NULL,
  `fee` tinyint unsigned NOT NULL,
  `info` json DEFAULT NULL,
  `status` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payments_user_id_foreign` (`user_id`),
  KEY `payments_to_id_foreign` (`to_id`),
  CONSTRAINT `payments_to_id_foreign` FOREIGN KEY (`to_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,2,1,20,'Y285mR05BKekOAVl',NULL,'paypal',50000,20,'{\"message\": \"sd\", \"post_id\": 1}',1,'2022-07-18 15:12:33','2022-07-19 13:38:59',NULL),(2,2,1,0,'RquyaTKyEjBcKEG6',NULL,'paypal',5000,20,'{\"sub_id\": 1}',1,'2022-07-18 17:45:22','2022-07-19 13:38:58',NULL),(3,2,1,0,'g8Yg9sdYXnciijQl',NULL,'stripe',5000,20,'{\"sub_id\": 1}',1,'2022-07-18 17:45:24','2022-07-19 13:38:57',NULL),(4,8,1,0,'YERfsPOPpUahL0Dk',NULL,'paypal',5000,20,'{\"sub_id\": 1}',1,'2022-07-18 21:23:47','2022-07-19 13:38:56',NULL),(5,8,1,0,'QpJ7P5EC3H9dbRO2',NULL,'stripe',5000,20,'{\"sub_id\": 1}',1,'2022-07-18 21:23:49','2022-07-19 13:38:44',NULL),(6,8,1,0,'fdqu6zEvTg15O7hw',NULL,'stripe',5000,20,'{\"sub_id\": 1}',1,'2022-07-18 21:29:53','2022-07-19 13:38:42',NULL),(7,8,1,0,'t2CwiCLX6oR6FfiX',NULL,'stripe',5000,20,'{\"sub_id\": 1}',1,'2022-07-18 21:29:55','2022-07-19 13:38:41',NULL),(8,8,1,0,'mdgE6OfzjhjJDQtj',NULL,'paypal',5000,20,'{\"sub_id\": 1}',1,'2022-07-18 21:55:18','2022-07-19 13:38:40',NULL),(9,2,1,0,'F2VFIvqluzcVfdv6',NULL,'paypal',5000,20,'{\"sub_id\": 1}',1,'2022-07-19 09:38:26','2022-07-19 13:38:39',NULL),(10,4,1,0,'s3dRfWA9hGTrX9GE',NULL,'paypal',5000,20,'{\"sub_id\": 1}',1,'2022-07-19 11:03:12','2022-07-19 13:38:38',NULL),(11,4,1,0,'lXeZGwzsW9guUGhd',NULL,'stripe',5000,20,'{\"sub_id\": 1}',1,'2022-07-19 11:15:02','2022-07-19 13:38:38',NULL),(12,4,7,0,'npFIgK6htH0vEKXW',NULL,'paypal',1000,20,'{\"sub_id\": 7}',1,'2022-07-19 13:57:25','2022-07-19 14:37:56',NULL),(13,4,7,0,'Sn1YDQvgkM0mRoPx',NULL,'paypal',5400,20,'{\"sub_id\": 7, \"bundle_id\": 6}',1,'2022-07-19 13:57:30','2022-07-19 14:37:56',NULL),(14,4,7,0,'EP2qq8f32C1b5hqe',NULL,'paypal',1000,20,'{\"sub_id\": 7}',10,'2022-07-19 14:34:39','2022-07-19 14:38:40',NULL),(15,1,4,0,'nqZI114vYMdhOZmj',NULL,'paypal',5000,20,'{\"sub_id\": 4}',10,'2022-07-19 14:36:38','2022-07-19 14:38:39',NULL),(16,1,4,0,'6lrFZQUDe2MZtHqZ',NULL,'stripe',5000,20,'{\"sub_id\": 4}',10,'2022-07-19 14:37:21','2022-07-19 14:38:37',NULL),(17,1,4,0,'a1MtGEm1hMEbllwc',NULL,'paypal',5000,20,'{\"sub_id\": 4}',0,'2022-07-19 14:38:07','2022-07-19 14:38:07',NULL),(18,1,4,20,'IYGC8vb1q7INWQ7m',NULL,'paypal',200000,20,'{\"message\": \"asd\"}',0,'2022-07-19 14:38:15','2022-07-19 14:38:15',NULL),(19,1,4,20,'XYyo6lJxkTwmTCDG',NULL,'stripe',200000,20,'{\"message\": \"asd\"}',0,'2022-07-19 14:38:18','2022-07-19 14:38:18',NULL),(20,4,8,0,'mK74fAFYtvYSf8Zp',NULL,'paypal',500,20,'{\"sub_id\": 8}',0,'2022-07-19 14:51:29','2022-07-19 14:51:29',NULL),(21,4,7,0,'E455QCXqlbY2zDxV',NULL,'stripe',1000,20,'{\"sub_id\": 7}',0,'2022-07-19 22:10:47','2022-07-19 22:10:47',NULL),(22,4,1,0,'tKLAMHsbMdWEVGbA',NULL,'stripe',5000,20,'{\"sub_id\": 1}',0,'2022-07-20 10:10:20','2022-07-20 10:10:20',NULL),(23,4,1,0,'O3DIu9r6MPU1Ivag',NULL,'paypal',5000,20,'{\"sub_id\": 1}',0,'2022-07-20 10:10:22','2022-07-20 10:10:22',NULL),(24,2,8,0,'rL4LVXooC38rA4ll',NULL,'paypal',500,20,'{\"sub_id\": 8}',0,'2022-07-21 01:39:14','2022-07-21 01:39:14',NULL),(25,8,4,0,'zJJeGtHbkjzjhNum',NULL,'paypal',5000,20,'{\"sub_id\": 4}',0,'2022-07-21 08:27:22','2022-07-21 08:27:22',NULL),(26,8,4,0,'kWhVZE3FjQKoZ2OO',NULL,'stripe',5000,20,'{\"sub_id\": 4}',0,'2022-07-21 08:27:24','2022-07-21 08:27:24',NULL),(27,8,4,0,'574gtz2PRjwuxCP2',NULL,'stripe',12000,20,'{\"sub_id\": 4, \"bundle_id\": 11}',0,'2022-07-21 08:27:32','2022-07-21 08:27:32',NULL),(28,2,12,0,'6ElZWczE3fEJDJ1B',NULL,'paypal',1500,20,'{\"sub_id\": 12, \"bundle_id\": 13}',0,'2022-07-21 14:18:51','2022-07-21 14:18:51',NULL),(29,8,6,0,'XaLQQFrzEwH02fZE',NULL,'stripe',300,20,'{\"sub_id\": 6, \"bundle_id\": 15}',0,'2022-07-24 14:42:42','2022-07-24 14:42:42',NULL),(30,4,11,20,'OADz3bEwDo4SiOa1',NULL,'paypal',1000,20,'{\"message\": \"מג\", \"post_id\": 15}',0,'2022-07-24 15:48:15','2022-07-24 15:48:15',NULL),(31,4,11,20,'xBiNLiVrPdtlE1Qe',NULL,'stripe',1000,20,'{\"message\": \"מג\", \"post_id\": 15}',0,'2022-07-24 15:48:17','2022-07-24 15:48:17',NULL),(32,13,4,0,'n6tFiEc6cSBwjh5n',NULL,'paypal',0,20,'{\"sub_id\": 4}',0,'2022-07-24 19:20:46','2022-07-24 19:20:46',NULL),(33,13,4,0,'XJiLktFUlWD7l8CK',NULL,'stripe',0,20,'{\"sub_id\": 4}',0,'2022-07-24 19:20:48','2022-07-24 19:20:48',NULL),(34,13,11,0,'OtxaLeYxetItYqv9',NULL,'stripe',0,20,'{\"sub_id\": 11}',0,'2022-07-24 19:21:04','2022-07-24 19:21:04',NULL),(35,13,4,0,'IjZBwJ7lnntFRi9U',NULL,'paypal',0,20,'{\"sub_id\": 4}',0,'2022-07-24 19:23:23','2022-07-24 19:23:23',NULL),(36,13,11,0,'GuPeieTzIImDxIjh',NULL,'paypal',0,20,'{\"sub_id\": 11}',0,'2022-07-24 19:33:16','2022-07-24 19:33:16',NULL),(37,13,11,0,'26Cm5fOHCFP3pf7G',NULL,'paypal',0,20,'{\"sub_id\": 11}',0,'2022-07-24 19:57:40','2022-07-24 19:57:40',NULL),(38,4,11,0,'WmcRC2FQZJO8cCue',NULL,'stripe',0,20,'{\"sub_id\": 11}',0,'2022-07-24 20:29:21','2022-07-24 20:29:21',NULL),(39,4,11,0,'vPXV6FGqH26OTP68',NULL,'paypal',0,20,'{\"sub_id\": 11}',0,'2022-07-24 20:29:24','2022-07-24 20:29:24',NULL),(40,16,4,0,'cSI3D1eri1ICos2S',NULL,'paypal',2000,20,'{\"sub_id\": 4}',0,'2022-08-01 04:19:19','2022-08-01 04:19:19',NULL),(41,16,4,0,'aS8usX1dy1A3bDFc',NULL,'stripe',2000,20,'{\"sub_id\": 4}',0,'2022-08-01 04:22:50','2022-08-01 04:22:50',NULL),(42,16,4,0,'bCW7b12oKhFDQ6iD',NULL,'paypal',2000,20,'{\"sub_id\": 4}',0,'2022-08-01 04:28:20','2022-08-01 04:28:20',NULL),(43,8,4,0,'U5NyAT5iqC0VpMU8',NULL,'paypal',2000,20,'{\"sub_id\": 4}',0,'2022-08-01 13:40:15','2022-08-01 13:40:15',NULL),(44,8,4,0,'TyaFH5TsZyjemOLy',NULL,'stripe',2000,20,'{\"sub_id\": 4}',0,'2022-08-01 13:40:18','2022-08-01 13:40:18',NULL),(45,21,4,0,'lwKZhUYCihSV2ta8',NULL,'paypal',2000,20,'{\"sub_id\": 4}',0,'2022-08-03 07:33:48','2022-08-03 07:33:48',NULL),(46,16,11,20,'hPdfrapvNMtRgT1a',NULL,'paypal',33300,20,'{\"message\": null}',0,'2022-08-04 03:58:29','2022-08-04 03:58:29',NULL),(47,16,11,20,'LBI7l2aCdY3oZ93Q',NULL,'paypal',33300,20,'{\"message\": \"121\"}',0,'2022-08-04 03:58:34','2022-08-04 03:58:34',NULL),(48,16,11,20,'1oGvKPNKUrwXv0jG',NULL,'stripe',33300,20,'{\"message\": \"121\"}',0,'2022-08-04 03:58:37','2022-08-04 03:58:37',NULL),(49,16,11,20,'7VvnUDude5M1Bz6d',NULL,'paypal',33300,20,'{\"message\": \"121\"}',0,'2022-08-04 03:58:46','2022-08-04 03:58:46',NULL),(50,16,11,20,'2Zhl3S6XuGWqmlGZ',NULL,'stripe',33300,20,'{\"message\": \"121\"}',0,'2022-08-04 03:58:48','2022-08-04 03:58:48',NULL),(51,8,4,0,'xqee3kO6D1KOb3s0',NULL,'stripe',2000,20,'{\"sub_id\": 4}',0,'2022-08-07 09:12:59','2022-08-07 09:12:59',NULL),(52,2,22,0,'fJyVnTj7ciaDZruQ',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-07 12:52:38','2022-08-07 12:52:38',NULL),(53,27,22,0,'ZeTTAB1zfvS74zxu',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-07 13:43:04','2022-08-07 13:43:04',NULL),(54,8,2,20,'yEbo49P8ygypfPJA',NULL,'paypal',10,20,'{\"message\": \"sdsds\"}',0,'2022-08-07 13:57:12','2022-08-07 13:57:12',NULL),(55,8,2,20,'0IwdJQ5u1Vd5lriG',NULL,'stripe',10,20,'{\"message\": \"sdsds\"}',0,'2022-08-07 13:57:14','2022-08-07 13:57:14',NULL),(56,4,22,0,'TIIlpOccYfqZWKEu',NULL,'stripe',3000,20,'{\"sub_id\": 22, \"bundle_id\": 16}',0,'2022-08-07 15:05:46','2022-08-07 15:05:46',NULL),(57,4,22,0,'JNPm0bNa9eiFGiLj',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-07 15:06:05','2022-08-07 15:06:05',NULL),(58,6,22,0,'4HM4Exs0mywxnY3p',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-07 15:59:47','2022-08-07 15:59:47',NULL),(59,22,4,0,'TxMDKY64hpT8x70k',NULL,'stripe',2000,20,'{\"sub_id\": 4}',0,'2022-08-07 20:13:55','2022-08-07 20:13:55',NULL),(60,22,4,0,'9TQyOa8xMvR6Kkg3',NULL,'paypal',2000,20,'{\"sub_id\": 4}',0,'2022-08-07 20:13:56','2022-08-07 20:13:56',NULL),(61,8,22,20,'tblqGE6ewZN95Z6I',NULL,'paypal',70000000000,20,'{\"message\": null}',0,'2022-08-07 20:25:30','2022-08-07 20:25:30',NULL),(62,22,4,0,'ZOucRvkyatArRaE4',NULL,'stripe',2000,20,'{\"sub_id\": 4}',0,'2022-08-07 20:34:11','2022-08-07 20:34:11',NULL),(63,22,4,0,'cEl8TEulQPevW0Vw',NULL,'paypal',2000,20,'{\"sub_id\": 4}',0,'2022-08-07 21:18:02','2022-08-07 21:18:02',NULL),(64,16,11,20,'K3w7CvmggDD458yE',NULL,'stripe',500000,20,'{\"message\": null}',0,'2022-08-08 10:18:08','2022-08-08 10:18:08',NULL),(65,22,4,20,'rNSjQp9B71v94V2h',NULL,'paypal',150000000000,20,'{\"message\": \"sdda\"}',0,'2022-08-08 13:17:21','2022-08-08 13:17:21',NULL),(66,16,22,0,'yP5NFVjnYHoojVg6',NULL,'paypal',2000,20,'{\"sub_id\": 22}',0,'2022-08-08 16:59:01','2022-08-08 16:59:01',NULL),(67,22,4,0,'ktBHgeP7UoyWcc9l',NULL,'stripe',100,20,'{\"sub_id\": 4, \"bundle_id\": 14}',0,'2022-08-08 17:50:23','2022-08-08 17:50:23',NULL),(68,22,4,0,'8f3mWhyWhSUr1Vos',NULL,'stripe',100,20,'{\"sub_id\": 4, \"bundle_id\": 14}',0,'2022-08-08 22:37:49','2022-08-08 22:37:49',NULL),(69,34,22,0,'89ecm2Do3D73e5Po',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-09 15:34:31','2022-08-09 15:34:31',NULL),(70,34,22,0,'W3KeWTWb8titIidQ',NULL,'paypal',2000,20,'{\"sub_id\": 22}',0,'2022-08-09 15:35:06','2022-08-09 15:35:06',NULL),(71,34,22,0,'P0OfGvPeGPHmh3cx',NULL,'paypal',2000,20,'{\"sub_id\": 22}',0,'2022-08-09 15:36:48','2022-08-09 15:36:48',NULL),(72,34,22,0,'YJowKGfZVZjGG6EP',NULL,'paypal',2000,20,'{\"sub_id\": 22}',0,'2022-08-09 15:37:05','2022-08-09 15:37:05',NULL),(73,34,4,0,'ZbEYKM1yHFaeUYfw',NULL,'paypal',100,20,'{\"sub_id\": 4, \"bundle_id\": 14}',0,'2022-08-09 15:37:55','2022-08-09 15:37:55',NULL),(74,36,22,0,'bEVOIV3gV0H8wMGY',NULL,'paypal',2000,20,'{\"sub_id\": 22}',0,'2022-08-09 16:12:53','2022-08-09 16:12:53',NULL),(75,13,2,0,'7iXQNtUjfCJ17AVJ',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 16:42:37','2022-08-09 16:42:37',NULL),(76,13,2,0,'zwR6QmGCzXtbKuiL',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 16:44:19','2022-08-09 16:44:19',NULL),(77,13,2,0,'91Y6eGq7LwOvPYGs',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 16:45:02','2022-08-09 16:45:02',NULL),(78,13,2,0,'Mel8NEtm3IYgnZaU',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 16:46:16','2022-08-09 16:46:16',NULL),(79,13,2,0,'UFxpnf9qlEsp1FCQ',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 16:46:38','2022-08-09 16:46:38',NULL),(80,13,2,0,'Ku2x4z54LQeyzZhW',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 16:49:02','2022-08-09 16:49:02',NULL),(81,22,2,0,'4UV33Zbswl4KFzEG',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 16:50:17','2022-08-09 16:50:17',NULL),(82,22,2,0,'PTMq1Xrqz8rRC6Pf',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 16:52:26','2022-08-09 16:52:26',NULL),(83,22,2,0,'rLchZOQ23PSqGwVt',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 16:53:36','2022-08-09 16:53:36',NULL),(84,13,2,0,'ETyW29sVtPs80kPf',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 16:57:27','2022-08-09 16:57:27',NULL),(85,13,2,0,'3YFaQycLolAcED6Z',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 16:57:47','2022-08-09 16:57:47',NULL),(86,13,2,0,'NrvMGrSxHYIJSo5C',NULL,'stripe',5400,20,'{\"sub_id\": 2, \"bundle_id\": 21}',0,'2022-08-09 17:00:09','2022-08-09 17:00:09',NULL),(87,8,22,0,'TDUbjhzKBXRZmSPS',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-09 17:00:32','2022-08-09 17:00:32',NULL),(88,13,2,0,'qdoGTPoGKAmIDUBv',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 17:02:36','2022-08-09 17:02:36',NULL),(89,13,2,0,'XT8jYzXK4DpLphQL',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 17:04:17','2022-08-09 17:04:17',NULL),(90,13,2,20,'eteooU9mT71PQ3yd',NULL,'stripe',200,20,'{\"message\": \"1\"}',0,'2022-08-09 17:06:03','2022-08-09 17:06:03',NULL),(91,13,2,0,'uhf38KZcoJXRnFQv',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 17:13:46','2022-08-09 17:13:46',NULL),(92,13,2,0,'3mK0J6xt9b68GUNJ',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 17:16:55','2022-08-09 17:16:55',NULL),(93,13,2,0,'ZdKabMIz9Rk6yhNZ',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 17:47:16','2022-08-09 17:47:16',NULL),(94,13,2,0,'Pmzv8SAfHYiWKTEO',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 17:48:56','2022-08-09 17:48:56',NULL),(95,13,2,0,'wpjucIGaz8JsFCx4',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 17:49:24','2022-08-09 17:49:24',NULL),(96,13,2,0,'suIZujk9dhHrnNIc',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 17:50:16','2022-08-09 17:50:16',NULL),(97,13,4,0,'X6sBVUUB81Whqptq',NULL,'stripe',100,20,'{\"sub_id\": 4, \"bundle_id\": 14}',0,'2022-08-09 17:50:55','2022-08-09 17:50:55',NULL),(98,13,4,0,'wD75VKD1RnnppwtO',NULL,'stripe',100,20,'{\"sub_id\": 4, \"bundle_id\": 14}',0,'2022-08-09 17:50:56','2022-08-09 17:50:56',NULL),(99,13,4,0,'aAVuVu9BzQwpUsAp',NULL,'stripe',100,20,'{\"sub_id\": 4, \"bundle_id\": 14}',0,'2022-08-09 17:52:14','2022-08-09 17:52:14',NULL),(100,13,4,0,'ILQjrYLWhahlFyKh',NULL,'stripe',100,20,'{\"sub_id\": 4, \"bundle_id\": 14}',0,'2022-08-09 17:55:04','2022-08-09 17:55:04',NULL),(101,13,4,0,'Ern4ZsuOlYOZi114',NULL,'stripe',100,20,'{\"sub_id\": 4, \"bundle_id\": 14}',0,'2022-08-09 17:55:50','2022-08-09 17:55:50',NULL),(102,13,4,0,'7Q2faLGDuqW5SVGr',NULL,'stripe',100,20,'{\"sub_id\": 4, \"bundle_id\": 14}',0,'2022-08-09 17:58:39','2022-08-09 17:58:39',NULL),(103,13,4,0,'jTA45pbMz92vLoQ5',NULL,'stripe',100,20,'{\"sub_id\": 4, \"bundle_id\": 14}',0,'2022-08-09 17:58:47','2022-08-09 17:58:47',NULL),(104,13,4,0,'6i5Xppc25pbJ0HBh',NULL,'stripe',100,20,'{\"sub_id\": 4, \"bundle_id\": 14}',0,'2022-08-09 17:58:48','2022-08-09 17:58:48',NULL),(105,13,2,0,'NW1HoGiYxsSTldnA',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 18:02:40','2022-08-09 18:02:40',NULL),(106,13,2,0,'z5YdFPbFAHafg1a4',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 18:04:44','2022-08-09 18:04:44',NULL),(107,13,2,0,'iJNuhxQdjrbRZs4N',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 18:04:45','2022-08-09 18:04:45',NULL),(108,13,2,0,'9vjTeCbW6P2AwkIP',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 18:07:45','2022-08-09 18:07:45',NULL),(109,13,2,0,'eiNUfDlv3U6UIs50',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 18:07:59','2022-08-09 18:07:59',NULL),(110,13,2,0,'rm8NgbXusQRzxcOJ',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 18:08:00','2022-08-09 18:08:00',NULL),(111,13,2,0,'0NgQHpdvOm3Cdevl',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 18:08:26','2022-08-09 18:08:26',NULL),(112,13,2,0,'tBbjAtTL1yjVYB9M',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 18:11:00','2022-08-09 18:11:00',NULL),(113,13,2,0,'MWxSRIt4nnN9c8B3',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 18:11:02','2022-08-09 18:11:02',NULL),(114,13,2,0,'egjQoxUfrFnCS7Nl',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 18:11:22','2022-08-09 18:11:22',NULL),(115,13,2,0,'XftGG7IgxBGI5XeE',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 18:11:32','2022-08-09 18:11:32',NULL),(116,13,2,0,'mbKqShCVtYEOm5pK',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 18:11:35','2022-08-09 18:11:35',NULL),(117,13,2,0,'ILhTxC1OyWJUlNaA',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 18:13:27','2022-08-09 18:13:27',NULL),(118,13,2,0,'R3i3AkXOR0RQnFMJ',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 18:15:33','2022-08-09 18:15:33',NULL),(119,13,2,0,'wxCco2uPd5CKwEi8',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 18:15:35','2022-08-09 18:15:35',NULL),(120,13,2,20,'sfNQH4ofxr8sno5u',NULL,'stripe',200,20,'{\"message\": \"sd\"}',0,'2022-08-09 18:15:41','2022-08-09 18:15:41',NULL),(121,13,2,0,'zOrSxffyE43KTQRv',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 18:17:40','2022-08-09 18:17:40',NULL),(122,13,2,0,'hS0AOM1kVxMBYAdR',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 18:17:42','2022-08-09 18:17:42',NULL),(123,28,22,0,'tIntToXRO1cdAYKr',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-09 19:22:34','2022-08-09 19:22:34',NULL),(124,22,4,0,'8MCJ07Qsgz4Zis0u',NULL,'stripe',100,20,'{\"sub_id\": 4, \"bundle_id\": 14}',0,'2022-08-09 19:39:54','2022-08-09 19:39:54',NULL),(125,28,2,0,'zBv7kZ8q5HT2IMzP',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 20:07:03','2022-08-09 20:07:03',NULL),(126,28,4,0,'LG2h51gQnqteVvJG',NULL,'stripe',100,20,'{\"sub_id\": 4, \"bundle_id\": 14}',0,'2022-08-09 20:10:06','2022-08-09 20:10:06',NULL),(127,28,4,0,'MnEuubXqgjOcXdVV',NULL,'stripe',100,20,'{\"sub_id\": 4, \"bundle_id\": 14}',0,'2022-08-09 20:10:23','2022-08-09 20:10:23',NULL),(128,31,4,0,'79GJkiscbFEW7oes',NULL,'stripe',2000,20,'{\"sub_id\": 4}',0,'2022-08-09 20:54:31','2022-08-09 20:54:31',NULL),(129,34,2,0,'p0H9MLQZU961gUfN',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 21:07:55','2022-08-09 21:07:55',NULL),(130,34,2,0,'THQpevlolWM1Sk3T',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 21:11:16','2022-08-09 21:11:16',NULL),(131,34,2,0,'NnHYLb5KOg0QBuZI',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 21:11:30','2022-08-09 21:11:30',NULL),(132,34,2,0,'J34CsQjbEiQcpPWi',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 21:11:48','2022-08-09 21:11:48',NULL),(133,34,2,0,'91Lg6X7tHYfInJq0',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 21:18:19','2022-08-09 21:18:19',NULL),(134,34,2,0,'51xFBdf6jtOPDOjd',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 21:18:52','2022-08-09 21:18:52',NULL),(135,34,2,0,'AW7ZFbGeDjlDlxfG',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 21:20:49','2022-08-09 21:20:49',NULL),(136,34,2,0,'hQybTBo0B8ynis19',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 21:31:46','2022-08-09 21:31:46',NULL),(137,34,2,0,'d1YkuVfmHe6DT0sG',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-09 21:46:47','2022-08-09 21:46:47',NULL),(138,39,22,0,'4LE9dgwecSRcDnpw',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-09 22:16:39','2022-08-09 22:16:39',NULL),(139,22,4,0,'TdMFoydj9rimT8Y9',NULL,'stripe',100,20,'{\"sub_id\": 4, \"bundle_id\": 14}',0,'2022-08-09 23:03:05','2022-08-09 23:03:05',NULL),(140,16,22,0,'TQBYO7nUZXBbOFxH',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 00:11:54','2022-08-10 00:11:54',NULL),(141,28,22,0,'EGLvsvwckHexbaYN',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 00:22:53','2022-08-10 00:22:53',NULL),(142,39,22,0,'uITa9biZwb3r9WMj',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 01:07:08','2022-08-10 01:07:08',NULL),(143,39,22,0,'FRUIFa7PgjSq9RuP',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 01:08:47','2022-08-10 01:08:47',NULL),(144,28,22,0,'hRDejH9y1cXDF72q',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 01:13:39','2022-08-10 01:13:39',NULL),(145,28,22,0,'k7GqZ8cN9kLm5g1e',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 01:16:07','2022-08-10 01:16:07',NULL),(146,28,22,0,'BUpOJDzBHonBX2ES',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 01:32:25','2022-08-10 01:32:25',NULL),(147,16,11,20,'3lQFRwFaA6P2igxG',NULL,'stripe',40000,20,'{\"message\": null, \"post_id\": 14}',0,'2022-08-10 01:32:57','2022-08-10 01:32:57',NULL),(148,16,11,20,'EwTIdL41wdR59mAx',NULL,'stripe',100,20,'{\"message\": null, \"post_id\": 14}',0,'2022-08-10 01:34:25','2022-08-10 01:34:25',NULL),(149,16,11,20,'j5ie7P6kqckUR9LK',NULL,'stripe',1000,20,'{\"message\": null, \"post_id\": 14}',0,'2022-08-10 01:34:26','2022-08-10 01:34:26',NULL),(150,28,22,0,'7iedDQyPYfML4nTb',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 01:37:30','2022-08-10 01:37:30',NULL),(151,28,22,0,'KOBiWeIotyjNPvtE',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 01:39:43','2022-08-10 01:39:43',NULL),(152,16,22,0,'kycunGNmURcSqhKo',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 01:40:35','2022-08-10 01:40:35',NULL),(153,16,22,0,'AxaH82FgHbwmP3ve',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 01:40:39','2022-08-10 01:40:39',NULL),(154,28,22,0,'y8WN4ZAyhnY0aF8a',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 01:41:43','2022-08-10 01:41:43',NULL),(155,28,22,0,'5H2BlsPWavVsgp94',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 01:51:58','2022-08-10 01:51:58',NULL),(156,40,22,0,'zULK65KPam4Df5OV',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 02:05:47','2022-08-10 02:05:47',NULL),(157,39,22,0,'JRFqyB8LWkbfgt9f',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 02:08:23','2022-08-10 02:08:23',NULL),(158,39,22,0,'sxdrGHSIdsz9SGPe',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 02:08:51','2022-08-10 02:08:51',NULL),(159,16,2,20,'ynUurBj2HnvZiM2L',NULL,'stripe',200,20,'{\"message\": null, \"post_id\": 18}',0,'2022-08-10 02:11:11','2022-08-10 02:11:11',NULL),(160,39,22,0,'4zWIMsAuogaU5hmV',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 02:17:31','2022-08-10 02:17:31',NULL),(161,28,22,0,'GZi5AiJrGiow2YoL',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 02:24:55','2022-08-10 02:24:55',NULL),(162,28,22,0,'OZA0yL1hyhi3BchE',NULL,'stripe',3000,20,'{\"sub_id\": 22, \"bundle_id\": 16}',0,'2022-08-10 02:26:29','2022-08-10 02:26:29',NULL),(163,39,22,0,'fSyxr50O05tCppPw',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 02:27:59','2022-08-10 02:27:59',NULL),(164,28,22,0,'8evpZO9kSg8nIXQw',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 02:33:01','2022-08-10 02:33:01',NULL),(165,28,22,0,'SysFhUTtH6VwEp0P',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 02:33:02','2022-08-10 02:33:02',NULL),(166,28,22,0,'tu6jXvHCqJ8xMyw0',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 02:33:08','2022-08-10 02:33:08',NULL),(167,28,22,0,'rg17MsUp8q3VkWED',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 02:33:09','2022-08-10 02:33:09',NULL),(168,28,2,0,'w4ax6foA9tpHXiZd',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-10 02:38:10','2022-08-10 02:38:10',NULL),(169,28,2,0,'DnLgG1SV49q5guRy',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-10 02:38:13','2022-08-10 02:38:13',NULL),(170,28,2,0,'KEPxLMDCiipviCUF',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-10 02:43:39','2022-08-10 02:43:39',NULL),(171,36,22,0,'kUrJLhRanlakMkA1',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 02:52:51','2022-08-10 02:52:51',NULL),(172,36,22,0,'Pm3rBOD3tMGjXM5n',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 02:53:45','2022-08-10 02:53:45',NULL),(173,39,22,0,'MvkJ9fOcOcnmJaMU',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 02:55:01','2022-08-10 02:55:01',NULL),(174,39,22,0,'IKSGjdf8br51QcV4',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 03:19:02','2022-08-10 03:19:02',NULL),(175,39,22,0,'6KpkAaE60rMojSe2',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 03:19:44','2022-08-10 03:19:44',NULL),(176,39,22,0,'asOq7hkjAvfxyJ2l',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 03:20:01','2022-08-10 03:20:01',NULL),(177,28,2,0,'vCe4HAlyqqIKltG7',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-10 03:20:20','2022-08-10 03:20:20',NULL),(178,28,22,0,'IHalwWTFLS2N55Vk',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 03:20:31','2022-08-10 03:20:31',NULL),(179,28,22,0,'G96ZJH5AncwWgzjQ',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 03:20:32','2022-08-10 03:20:32',NULL),(180,39,22,0,'8LQ38FRtOpnLtML6',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 03:20:51','2022-08-10 03:20:51',NULL),(181,42,22,0,'sWGpKjsdiXczVzWq',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 03:21:58','2022-08-10 03:21:58',NULL),(182,42,22,0,'5e7jYCLdcb6ZYNoj',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 03:24:02','2022-08-10 03:24:02',NULL),(183,42,22,0,'GZDzvEhGo7CTbSjC',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 03:26:05','2022-08-10 03:26:05',NULL),(184,39,22,0,'4gAMLmDqdJfhry99',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 03:27:22','2022-08-10 03:27:22',NULL),(185,39,22,0,'UFm44CcX7zUmv4zp',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 03:28:40','2022-08-10 03:28:40',NULL),(186,28,22,0,'NAKOWZU9mqpUf9Y0',NULL,'stripe',3000,20,'{\"sub_id\": 22, \"bundle_id\": 16}',0,'2022-08-10 03:33:36','2022-08-10 03:33:36',NULL),(187,28,22,0,'hzEtX78318R57KnH',NULL,'stripe',3000,20,'{\"sub_id\": 22, \"bundle_id\": 16}',0,'2022-08-10 03:33:38','2022-08-10 03:33:38',NULL),(188,28,2,0,'pareGQGO2kVqHVdF',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-10 03:44:55','2022-08-10 03:44:55',NULL),(189,44,22,0,'LkQZyGR9J0NVswai',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 03:53:42','2022-08-10 03:53:42',NULL),(190,43,22,0,'VmlecwLlcbKW9CL6',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 03:57:03','2022-08-10 03:57:03',NULL),(191,28,22,0,'RJNh6KJWOTvsW4Ev',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 03:57:16','2022-08-10 03:57:16',NULL),(192,28,22,0,'7IwhKI1CAW2lV8Uy',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 03:57:17','2022-08-10 03:57:17',NULL),(193,45,22,0,'M6FoPe0MgPsSaTbC',NULL,'stripe',2000,20,'{\"sub_id\": 22}',0,'2022-08-10 04:01:32','2022-08-10 04:01:32',NULL),(194,28,2,0,'y3az9hGTSEeXb0j2',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-10 04:04:56','2022-08-10 04:04:56',NULL),(195,28,2,0,'EX4hhMwMOaLtzxFi',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-10 04:08:57','2022-08-10 04:08:57',NULL),(196,28,2,0,'yb000qTAnTFjGPyj',NULL,'stripe',2000,20,'{\"sub_id\": 2}',0,'2022-08-10 04:08:59','2022-08-10 04:08:59',NULL),(197,43,4,0,'ZAsgppXcXRSJ9kAH',NULL,'stripe',100,20,'{\"sub_id\": 4, \"bundle_id\": 14}',0,'2022-08-10 04:16:56','2022-08-10 04:16:56',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payout_batches`
--

DROP TABLE IF EXISTS `payout_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payout_batches` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `processed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payout_batches`
--

LOCK TABLES `payout_batches` WRITE;
/*!40000 ALTER TABLE `payout_batches` DISABLE KEYS */;
INSERT INTO `payout_batches` VALUES (1,'WsLK2dmW',1,'2022-07-19 13:38:25','2022-07-19 09:37:16','2022-07-19 13:38:25'),(2,'VmD65uc0',1,'2022-07-19 13:38:24','2022-07-19 13:38:15','2022-07-19 13:38:24'),(3,'vNuMVQDz',1,'2022-07-19 14:39:06','2022-07-19 14:39:04','2022-07-19 14:39:06'),(4,'JwqPXg6m',1,'2022-07-20 10:12:06','2022-07-20 10:12:04','2022-07-20 10:12:06');
/*!40000 ALTER TABLE `payout_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payout_methods`
--

DROP TABLE IF EXISTS `payout_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payout_methods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `gateway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payout_methods_user_id_foreign` (`user_id`),
  CONSTRAINT `payout_methods_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payout_methods`
--

LOCK TABLES `payout_methods` WRITE;
/*!40000 ALTER TABLE `payout_methods` DISABLE KEYS */;
INSERT INTO `payout_methods` VALUES (1,1,'paypal','{\"paypal\": \"admin@localhost\"}','2022-07-18 09:25:26','2022-07-18 09:25:26');
/*!40000 ALTER TABLE `payout_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payouts`
--

DROP TABLE IF EXISTS `payouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payouts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `amount` bigint unsigned NOT NULL,
  `status` tinyint unsigned NOT NULL DEFAULT '0',
  `info` json NOT NULL,
  `processed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payouts_user_id_foreign` (`user_id`),
  CONSTRAINT `payouts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payouts`
--

LOCK TABLES `payouts` WRITE;
/*!40000 ALTER TABLE `payouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `payouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=388 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',1,'admin','6a71017744203ec4a03cdab970db310dd45e0746fd3e24f4400b0764c23716a2','[\"user\",\"creator\",\"admin\"]','2022-07-18 13:31:14','2022-07-18 13:31:12','2022-07-18 13:31:14'),(2,'App\\Models\\User',1,'admin','01ad1d4dcbc8850dcd4ec9a0bd7f50ce323e2a2114ebe48c86dfa3078b6cb0b8','[\"user\",\"creator\",\"admin\"]','2022-07-18 13:34:19','2022-07-18 13:34:18','2022-07-18 13:34:19'),(3,'App\\Models\\User',2,'main','abdf93da1486fd597bd1d114e78289ea8b61670a0c2bf28c3df77be4cf721b8a','[\"user\"]','2022-07-18 13:44:36','2022-07-18 13:42:48','2022-07-18 13:44:36'),(4,'App\\Models\\User',1,'admin','8badabab6bf240a6366f2edf27a83a2939e8ad7e75906e949a5cc836ed89d62b','[\"user\",\"creator\",\"admin\"]','2022-07-18 13:44:44','2022-07-18 13:44:40','2022-07-18 13:44:44'),(5,'App\\Models\\User',1,'admin','0d0aa0de18137927bd76ea72ee7caadd0f3f66bf52c4543026d3791e38d331ee','[\"user\",\"creator\",\"admin\"]','2022-07-18 13:54:36','2022-07-18 13:44:43','2022-07-18 13:54:36'),(9,'App\\Models\\User',1,'admin','561cc69096dda81d20881dbdffd2fa18162c1eaa73c40a62f54955f031bae1ea','[\"user\",\"creator\",\"admin\"]','2022-07-18 14:32:52','2022-07-18 13:56:14','2022-07-18 14:32:52'),(11,'App\\Models\\User',1,'admin','a15156cc8c703191bca54818ddc5917aba2afdf73775421597ff5ce7e3fcd2e3','[\"user\",\"creator\",\"admin\"]','2022-07-18 14:35:48','2022-07-18 14:33:41','2022-07-18 14:35:48'),(15,'App\\Models\\User',6,'main','1841b54c6432d6cfd7d21e40251e79103b6d7f679200a42159882f5d693aa607','[\"user\"]','2022-07-18 18:26:26','2022-07-18 16:26:34','2022-07-18 18:26:26'),(16,'App\\Models\\User',6,'main','e1e86032fb03d28f28c40a7760e1d78ff93561f6b437152690d46449f5dd704f','[\"user\"]','2022-08-09 16:04:28','2022-07-18 16:26:43','2022-08-09 16:04:28'),(19,'App\\Models\\User',2,'main','c80ff32968c25e0d7ba3cb07ab082f9881c7f58d2803d4fdea1208b1d82f1ff1','[\"user\"]','2022-07-18 16:59:57','2022-07-18 16:51:22','2022-07-18 16:59:57'),(21,'App\\Models\\User',7,'main','dda402328a16258d97622cea7d075fd6f2253679c1dc2fd9549a17cc690bc62e','[\"user\"]','2022-07-19 14:43:10','2022-07-18 19:34:41','2022-07-19 14:43:10'),(24,'App\\Models\\User',2,'main','71ce296ec0cdd681685f4e67b59d90da69834bd9d914f0db6a41f8ddb4715a53','[\"user\"]','2022-07-19 09:19:05','2022-07-18 19:44:30','2022-07-19 09:19:05'),(27,'App\\Models\\User',8,'main','283236b28f15ff79ff6328052cdee0a9a4b980a27b16c1dbd977c96f18ddddef','[\"user\"]','2022-08-01 15:01:40','2022-07-18 21:23:37','2022-08-01 15:01:40'),(33,'App\\Models\\User',4,'main','5b802dce38085e3c63301ce98c90f4f58eeb71cbb45424ff4778b37bfb5d66ce','[\"user\",\"creator\"]','2022-07-19 11:07:27','2022-07-19 10:56:06','2022-07-19 11:07:27'),(35,'App\\Models\\User',4,'main','93a45699b67fcd98bf81d7b6eb7399bd9b5bc2e0d5999fbbe507accc8bf37322','[\"user\",\"creator\"]','2022-07-19 11:15:02','2022-07-19 11:10:37','2022-07-19 11:15:02'),(36,'App\\Models\\User',4,'main','9db9c6fd342fe11ccd64b0a681c2344eba99fd4f8a613a49a729220c4f153586','[\"user\",\"creator\"]','2022-07-19 11:32:19','2022-07-19 11:22:31','2022-07-19 11:32:19'),(37,'App\\Models\\User',4,'main','9c3c6c38a2dfbe686f4e64a15c9b57c58ae509b89f15d4ea8f2fa4924fb82e11','[\"user\",\"creator\"]','2022-07-19 13:36:58','2022-07-19 13:22:23','2022-07-19 13:36:58'),(39,'App\\Models\\User',1,'admin','e13edcb8eabea4fe3629b2c9765fa3007e5534831fd95ee94d8b04dcf5a3cfa1','[\"user\",\"creator\",\"admin\"]','2022-07-19 13:36:18','2022-07-19 13:36:10','2022-07-19 13:36:18'),(41,'App\\Models\\User',4,'main','a535e557474a2cea7d7583898ed971a92e829a020daad33e2f6201c772eb1c4a','[\"user\",\"creator\"]','2022-07-19 13:57:39','2022-07-19 13:49:31','2022-07-19 13:57:39'),(42,'App\\Models\\User',4,'main','3b89721d89d15b5b27b6a76e12f5a2ebb109ac685462b492efaaede87ba64e8a','[\"user\",\"creator\"]','2022-07-19 14:35:29','2022-07-19 14:11:19','2022-07-19 14:35:29'),(49,'App\\Models\\User',1,'admin','4ee208c003df6bfaab0f134d4a96cb477dbf8057e44be54d6f06486ef06765ca','[\"user\",\"creator\",\"admin\"]','2022-07-20 19:09:26','2022-07-20 11:46:54','2022-07-20 19:09:26'),(51,'App\\Models\\User',4,'main','c6d88393dc866cfe0bff185fe78db58bd01d9ce81bb6fbabcedc7fb3c8244fae','[\"user\",\"creator\"]','2022-07-20 15:32:24','2022-07-20 15:23:44','2022-07-20 15:32:24'),(53,'App\\Models\\User',1,'admin','bf52790ab1b9ba3cb989d14f32af3d66edbafe2c2381edfcf47b837ade4227e2','[\"user\",\"creator\",\"admin\"]','2022-07-20 15:33:57','2022-07-20 15:33:50','2022-07-20 15:33:57'),(56,'App\\Models\\User',10,'main','d70dfc8df1abf0302693354830c329af16d114c0b37f72de449ad12a4c556e47','[\"user\"]','2022-07-20 15:52:16','2022-07-20 15:49:58','2022-07-20 15:52:16'),(57,'App\\Models\\User',9,'main','25c29893ea0af0a48ba31c3d11a428cfb104f076938880c49b4f73b74c5ecda0','[\"user\",\"creator\"]','2022-07-20 15:53:22','2022-07-20 15:50:49','2022-07-20 15:53:22'),(58,'App\\Models\\User',4,'main','263bfdceb62c61ccbde6ec81e7b2c83fcb58b698a78c016da389df08f4ce803c','[\"user\",\"creator\"]','2022-07-20 19:05:17','2022-07-20 15:54:12','2022-07-20 19:05:17'),(59,'App\\Models\\User',4,'main','8db81d0068e0663b4ca835f881bf0279e0974442afc8d1237d62aa59e17f1ebe','[\"user\",\"creator\"]','2022-07-20 19:07:54','2022-07-20 15:54:53','2022-07-20 19:07:54'),(60,'App\\Models\\User',4,'main','8d3fded72addccdd3ca35d5ef1a02054dc6d16f294c3e2d83aa0b071b9fabb67','[\"user\",\"creator\"]','2022-07-20 15:58:20','2022-07-20 15:55:49','2022-07-20 15:58:20'),(63,'App\\Models\\User',4,'main','29de261bb12cae3be9995db842ab8a0cd48f424d832cc7dbf0f89020ee38e51c','[\"user\",\"creator\"]','2022-07-20 19:16:57','2022-07-20 19:08:12','2022-07-20 19:16:57'),(64,'App\\Models\\User',4,'main','855c22976093f476bab6801b526ed7fda9efb7b41ff0622aeef7d3576d74dbf2','[\"user\",\"creator\"]','2022-07-20 19:09:57','2022-07-20 19:09:40','2022-07-20 19:09:57'),(65,'App\\Models\\User',4,'main','0ffa9379ffdd2d9f5bf50961802a6b6290ce56b2fe0d75150e3974ffa385763e','[\"user\",\"creator\"]','2022-07-20 19:30:56','2022-07-20 19:20:04','2022-07-20 19:30:56'),(67,'App\\Models\\User',4,'main','c5809dd1e3e6ada2950e393534e77da55b88c4ae6e96e829c24b829b63a34b60','[\"user\",\"creator\"]','2022-07-20 19:47:37','2022-07-20 19:31:20','2022-07-20 19:47:37'),(68,'App\\Models\\User',4,'main','c05ecf69ceb8a77be194c07b2a5645e16fe0742459ec39670a2ae2cc08530de7','[\"user\",\"creator\"]','2022-07-20 20:08:47','2022-07-20 19:50:26','2022-07-20 20:08:47'),(69,'App\\Models\\User',4,'main','a50e8282bbd09ca5017fc2bcfd2c6298af7fa79f4049b725d66f62b885043957','[\"user\",\"creator\"]','2022-07-20 19:53:29','2022-07-20 19:52:39','2022-07-20 19:53:29'),(70,'App\\Models\\User',4,'main','557e0bf686e9950b949545ae999d4be55f88ed4adbab0e07d3a7633b61362c45','[\"user\",\"creator\"]','2022-07-20 21:02:41','2022-07-20 19:58:51','2022-07-20 21:02:41'),(71,'App\\Models\\User',4,'main','262b3a4d1de1f2747f2e6d80fc8a723f3d1fe9b1b005b8b1b3a72020133dae41','[\"user\",\"creator\"]','2022-07-20 20:28:52','2022-07-20 20:09:05','2022-07-20 20:28:52'),(72,'App\\Models\\User',4,'main','5c724cdb2b57777c8a78283bed1e05f20b05c6165d3e97496e48e422c3feebc2','[\"user\",\"creator\"]','2022-07-20 20:35:08','2022-07-20 20:33:34','2022-07-20 20:35:08'),(74,'App\\Models\\User',1,'admin','6ce5a7727b705954e1382160baa32a5ec6cbc1c2b4ea3e97e970ed3c682c8007','[\"user\",\"creator\",\"admin\"]','2022-07-20 21:02:51','2022-07-20 21:02:44','2022-07-20 21:02:51'),(75,'App\\Models\\User',11,'main','96f75ade7f22fcfdb5cd766e510507be9599bbbcb6491fc4a08ca85cdfbc114c','[\"user\",\"creator\"]','2022-07-20 22:34:06','2022-07-20 21:42:55','2022-07-20 22:34:06'),(76,'App\\Models\\User',4,'main','0037e4030444cf252936e5480e708cbe4b6ccec8d9bf3532488fec22797c3a20','[\"user\",\"creator\"]','2022-07-21 12:09:59','2022-07-20 22:32:14','2022-07-21 12:09:59'),(77,'App\\Models\\User',2,'main','6ab81613c4551ffcf0b6ba621fd42200a76c32d9317c017f02d94133be3f7aa8','[\"user\"]','2022-07-21 01:48:41','2022-07-21 01:31:48','2022-07-21 01:48:41'),(78,'App\\Models\\User',2,'main','5da0ef649c1f75d56073c8d92ca8623b927cda80ae021dd9d9f4827a89916a42','[\"user\"]','2022-07-21 13:39:48','2022-07-21 13:35:07','2022-07-21 13:39:48'),(82,'App\\Models\\User',2,'main','af2af4b0650e0ca118b6d598010ff1ba2b9d9fa88539c9fa78088b1484edac3b','[\"user\"]','2022-07-21 17:13:12','2022-07-21 16:52:44','2022-07-21 17:13:12'),(84,'App\\Models\\User',4,'main','f57ba78859f03a43809e99e22ff7237b9cf9a66c820c837d5f3214d78de2ea0f','[\"user\",\"creator\"]','2022-07-24 16:26:34','2022-07-24 14:02:36','2022-07-24 16:26:34'),(85,'App\\Models\\User',4,'main','0b3e466779e6d378bd3ca9623e7da4e8a976269039a5d134e43dbbcc65efcda3','[\"user\",\"creator\"]','2022-07-24 15:05:07','2022-07-24 15:05:06','2022-07-24 15:05:07'),(86,'App\\Models\\User',4,'main','be2fac6fbbdc757ba4f2963139de79ad6e3d54296683e1e053661355e770bdc3','[\"user\",\"creator\"]','2022-07-24 15:18:54','2022-07-24 15:18:17','2022-07-24 15:18:54'),(87,'App\\Models\\User',4,'main','173d49f8999499e9b00cc88220d4246128d50ee08cb7878d6b6f6a8286dc43c4','[\"user\",\"creator\"]','2022-07-24 16:40:56','2022-07-24 15:21:04','2022-07-24 16:40:56'),(88,'App\\Models\\User',4,'main','a06aba7a94788c5458c4bf04f8c6d4aadbacae67a092c1aee193a57d05cde0f0','[\"user\",\"creator\"]','2022-07-25 00:50:55','2022-07-24 16:41:28','2022-07-25 00:50:55'),(94,'App\\Models\\User',13,'main','9024ff14f2245cbb332cded02391be68dd954d534d49da49df840090e42b849b','[\"user\"]','2022-07-24 20:05:39','2022-07-24 19:07:16','2022-07-24 20:05:39'),(100,'App\\Models\\User',1,'admin','56e61741a684d000366d32678b5e87a89ebd479d99e79116edb30f344e53901d','[\"user\",\"creator\",\"admin\"]','2022-07-26 13:58:03','2022-07-26 13:57:53','2022-07-26 13:58:03'),(102,'App\\Models\\User',6,'main','728bcbd02c1bf100aa64935fc6622cffbf6b397e16c25c03bde9cb603e942f96','[\"user\"]','2022-07-26 14:52:48','2022-07-26 14:28:27','2022-07-26 14:52:48'),(105,'App\\Models\\User',15,'main','aebf11998ce87ad1405728b41d2bc6dbd4bf99087d74bda3db6246bf5b605771','[\"user\"]','2022-07-27 13:47:02','2022-07-27 13:45:56','2022-07-27 13:47:02'),(107,'App\\Models\\User',4,'main','b4ad5ba8a220375a80cd4060d66e5c93d00f8752a0aa2d19d5f1089ee01d86fc','[\"user\",\"creator\"]','2022-08-09 15:35:24','2022-07-28 13:48:35','2022-08-09 15:35:24'),(108,'App\\Models\\User',2,'main','d94abf9c75748f419ffa6ca2e9fbfbf4c6d66dbd7bafb5653a7dbb98cf11b1ee','[\"user\",\"creator\"]','2022-07-31 18:30:12','2022-07-31 18:29:25','2022-07-31 18:30:12'),(109,'App\\Models\\User',2,'main','51ade3981da82094432d15cccabe2ad7c545275a6ee2bbec54d620aa6933293d','[\"user\",\"creator\"]','2022-08-04 17:54:49','2022-07-31 18:30:08','2022-08-04 17:54:49'),(110,'App\\Models\\User',2,'main','b2c957aa169955db879825e6e6faa66d04f2631c0a365e1fbf23e7b5198d4524','[\"user\",\"creator\"]','2022-08-01 00:09:01','2022-07-31 20:40:06','2022-08-01 00:09:01'),(118,'App\\Models\\User',16,'main','98adda6ab1aaec5dc03c451b298216425cafe4da05ae199d9eda8d9052a5be50','[\"user\"]',NULL,'2022-08-01 05:12:08','2022-08-01 05:12:08'),(126,'App\\Models\\User',19,'main','d0db5d02a34b9b5e6a3b61446e568ff060ff96f2637bf2806134a503105f65ac','[\"user\"]','2022-08-01 05:58:14','2022-08-01 05:58:01','2022-08-01 05:58:14'),(135,'App\\Models\\User',6,'main','e9d2dca9bfdbc320d9b5a11851a8740d640b0a909a5d3d04460b981fedc85ea1','[\"user\"]','2022-08-01 15:53:58','2022-08-01 14:39:06','2022-08-01 15:53:58'),(137,'App\\Models\\User',8,'main','4189bfb15449da31770ddec7d924ec7b62bc299d77d05e8e8e0094cdecae6512','[\"user\"]','2022-08-02 06:46:34','2022-08-01 15:10:00','2022-08-02 06:46:34'),(138,'App\\Models\\User',6,'main','ea0437b681ecd7ccd157a32a28a867b6758cdfa6cc5e13fb40459f67f9810bbf','[\"user\"]','2022-08-01 16:56:16','2022-08-01 16:55:46','2022-08-01 16:56:16'),(139,'App\\Models\\User',16,'main','72536edaa39ba04d72d448e40f31445b70974d49390cc651ed30d244da5e744a','[\"user\"]','2022-08-01 17:54:09','2022-08-01 17:03:48','2022-08-01 17:54:09'),(140,'App\\Models\\User',16,'main','2c4f10abb138cd4b8caa38da6ca347bbc2004523bf725855ed57462a5ab11ceb','[\"user\"]','2022-08-01 19:49:28','2022-08-01 19:33:56','2022-08-01 19:49:28'),(141,'App\\Models\\User',16,'main','36fd957edf27841058a7b5f99948bd0c9b025b21b04a842963626503c6c13d80','[\"user\"]','2022-08-01 23:46:28','2022-08-01 19:36:36','2022-08-01 23:46:28'),(142,'App\\Models\\User',16,'main','91e5c8a38af054738c79c08200ef145700f44d4bb5a77ab5625f7dadbf332f0e','[\"user\"]','2022-08-01 22:44:48','2022-08-01 22:44:24','2022-08-01 22:44:48'),(143,'App\\Models\\User',19,'main','ce3bfa27c13b496292e7156e48689b5e8baf6779aeee0165c10a104aa3b36944','[\"user\"]','2022-08-01 22:45:49','2022-08-01 22:45:27','2022-08-01 22:45:49'),(145,'App\\Models\\User',16,'main','6f01399a2fde404df1eadfc6f6edfaf79f5e8f258850e86ded69edcd35fd449f','[\"user\"]',NULL,'2022-08-02 04:44:22','2022-08-02 04:44:22'),(147,'App\\Models\\User',16,'main','7a334cfbc38c16b6c0ea38a2c348a8241868e8854dbef2c396d6f9fffd15decb','[\"user\"]',NULL,'2022-08-02 04:52:45','2022-08-02 04:52:45'),(148,'App\\Models\\User',16,'main','bbb1d382a5cb9ba62177ac53c4031916d23b83ee3c1b637a4d42e6cea7e12b7c','[\"user\"]',NULL,'2022-08-02 04:52:45','2022-08-02 04:52:45'),(149,'App\\Models\\User',16,'main','c289287fe059bc6ab0ee7fbf87b37064072a9d48f15cc06a7ae33b72cd2742ca','[\"user\"]',NULL,'2022-08-02 04:52:45','2022-08-02 04:52:45'),(150,'App\\Models\\User',16,'main','6446a2b3049159ca64e55fab5311d9188b50f7e3db1b6908d0cfa61aed834412','[\"user\"]',NULL,'2022-08-02 04:52:46','2022-08-02 04:52:46'),(151,'App\\Models\\User',16,'main','e87c9d642db9d93d732c3fc2c32119a8d7e794cdee12506c09423cc3c888e78d','[\"user\"]',NULL,'2022-08-02 05:23:26','2022-08-02 05:23:26'),(152,'App\\Models\\User',16,'main','8cf9496b23602dd534a2d26c011f25cd6415176a0d796434908f3eb7abf3ee24','[\"user\"]',NULL,'2022-08-02 05:23:29','2022-08-02 05:23:29'),(153,'App\\Models\\User',16,'main','9434a96c05683e4082cdf413b34da75362994641e987240c251aa3d67dfd46c1','[\"user\"]',NULL,'2022-08-02 05:23:29','2022-08-02 05:23:29'),(154,'App\\Models\\User',16,'main','ab3fe7db5e3080db7d6dfdbf5020c644c1347ea860d2d58cb3be7999d672a14b','[\"user\"]',NULL,'2022-08-02 05:23:29','2022-08-02 05:23:29'),(155,'App\\Models\\User',16,'main','30a6745d796aab3e817bf868d07fb34bca08af2149474d5000a73da1de567bbc','[\"user\"]',NULL,'2022-08-02 05:23:36','2022-08-02 05:23:36'),(156,'App\\Models\\User',16,'main','b10b370983ab40bac270b02773175afa1243495db9999c4ab3c335da545c9e34','[\"user\"]',NULL,'2022-08-02 05:23:41','2022-08-02 05:23:41'),(157,'App\\Models\\User',16,'main','0e1688a85d7d28e70a5454d5aca7badcb0697647f6fc08c7eb3a7126752a2283','[\"user\"]',NULL,'2022-08-02 05:23:42','2022-08-02 05:23:42'),(158,'App\\Models\\User',16,'main','8b85159905d4f1611a2335b2b55d399d49bc74e6597480c7755dcaf2b527cf40','[\"user\"]',NULL,'2022-08-02 05:23:42','2022-08-02 05:23:42'),(159,'App\\Models\\User',16,'main','d8dea1c2b60d8fe91a06db172ea7958d53ec20586f702aa9e682d456a1ce1ae5','[\"user\"]',NULL,'2022-08-02 05:23:42','2022-08-02 05:23:42'),(160,'App\\Models\\User',16,'main','4545c19eec47b7f48192b3cf557f4cc14d80795fa334149a4aab58a59e84efa8','[\"user\"]',NULL,'2022-08-02 05:23:43','2022-08-02 05:23:43'),(161,'App\\Models\\User',16,'main','50a781814e080ad7f9e1d8591ecb9c8b81d50f142d39fb755a1ada691fd52a2a','[\"user\"]',NULL,'2022-08-02 05:23:43','2022-08-02 05:23:43'),(166,'App\\Models\\User',4,'main','fcba2a2035efcddd0baf0b582593bf0404bfb14b68ad11fb6b194e93870e48ef','[\"user\",\"creator\"]','2022-08-02 08:43:28','2022-08-02 08:21:00','2022-08-02 08:43:28'),(170,'App\\Models\\User',8,'main','6e6173542d77c7d9194ec428a85ff414ad5f0e7f06beae25b6fadea6cbb7b43c','[\"user\"]','2022-08-02 11:04:43','2022-08-02 10:56:36','2022-08-02 11:04:43'),(173,'App\\Models\\User',4,'main','19063fe043bc18094f07ccbe85e9b5803ec77b176557c732218f12daece78ce9','[\"user\",\"creator\"]','2022-08-02 15:31:20','2022-08-02 11:07:10','2022-08-02 15:31:20'),(175,'App\\Models\\User',2,'main','6263c691c7a9aed26c68d2308b67e797e88848c5c06eaaa16be8f9bf59b31a3d','[\"user\",\"creator\"]','2022-08-02 15:36:48','2022-08-02 12:01:13','2022-08-02 15:36:48'),(183,'App\\Models\\User',16,'main','9f93f4a287000b4aaefcba90c5b65454f95f1445f871e440c00e688d01d4d3b3','[\"user\"]','2022-08-03 09:32:46','2022-08-03 09:01:39','2022-08-03 09:32:46'),(188,'App\\Models\\User',8,'main','41552c0b7d431a94ebf71323d0dd0ceb3b8abfd82edc291348635671f7fea49b','[\"user\"]','2022-08-03 14:32:09','2022-08-03 10:53:56','2022-08-03 14:32:09'),(190,'App\\Models\\User',2,'main','93bdc608427e172901e629d3bfd716bcf044ee0086ee4af844c890b025d163ca','[\"user\",\"creator\"]','2022-08-03 11:15:39','2022-08-03 11:15:35','2022-08-03 11:15:39'),(191,'App\\Models\\User',22,'main','b57aedfa4a5b3a922bc091dd31d36833355daf0c04c1311c848f53f1241e29fe','[\"user\"]','2022-08-03 11:16:34','2022-08-03 11:16:11','2022-08-03 11:16:34'),(199,'App\\Models\\User',16,'main','8707a2a6aa6e65d4f5ffe940d3eab4e8bb9c0b7946a4a3d7dd23b60a37fab144','[\"user\"]','2022-08-03 14:55:30','2022-08-03 14:53:28','2022-08-03 14:55:30'),(207,'App\\Models\\User',24,'main','8e413b80adfb3552461cc1ba5c57d66ae1a59a5a28699110137ef7e265a9f785','[\"user\"]','2022-08-03 15:57:47','2022-08-03 15:57:00','2022-08-03 15:57:47'),(213,'App\\Models\\User',2,'main','f2e4e6c62d40c5952288e62b631a37d059e04912dfb37753eef60662d438f4a1','[\"user\",\"creator\"]','2022-08-03 19:49:40','2022-08-03 18:50:48','2022-08-03 19:49:40'),(216,'App\\Models\\User',2,'main','d1184a6376e49c06d8a7845778315609b89c82158ef7d362d351644bc8ca4e68','[\"user\",\"creator\"]','2022-08-03 20:40:06','2022-08-03 20:39:40','2022-08-03 20:40:06'),(217,'App\\Models\\User',2,'main','2b59710015b0bd32c0541a3071b5cb9e26259690107d008e216a98a939ba07fa','[\"user\",\"creator\"]','2022-08-03 22:20:13','2022-08-03 22:20:03','2022-08-03 22:20:13'),(219,'App\\Models\\User',16,'main','b5f350386e9351259d680797dc3695c6f69d3be64f1711848234bd271ef8ffed','[\"user\"]','2022-08-08 07:45:37','2022-08-04 03:14:18','2022-08-08 07:45:37'),(220,'App\\Models\\User',16,'main','71d80c4cfb0e040792aed60f4a2b27da354562d149743b53af925665f96cf36b','[\"user\"]','2022-08-04 04:50:42','2022-08-04 03:28:26','2022-08-04 04:50:42'),(225,'App\\Models\\User',16,'main','7c33dbae8236596401319adf84fb53b6644acb2f07edef42f5e7a738e7211e6b','[\"user\"]','2022-08-04 06:16:39','2022-08-04 06:14:22','2022-08-04 06:16:39'),(226,'App\\Models\\User',2,'main','32061c5f66cc64edbe602d1f18ce17712b13d2989584029c8d7906cff5473c3f','[\"user\",\"creator\"]','2022-08-04 12:37:03','2022-08-04 08:27:35','2022-08-04 12:37:03'),(227,'App\\Models\\User',22,'main','775279e5c76df54918b9aa895d0b5f3c1dd9649d4ea85f0fd4fae95588c4b2cd','[\"user\"]','2022-08-04 10:36:23','2022-08-04 10:01:34','2022-08-04 10:36:23'),(228,'App\\Models\\User',16,'main','1df9ed956e033a972a3fd5c7dd3e01df3b291dfdb255ea061f3bc3b8de597527','[\"user\"]','2022-08-04 13:47:06','2022-08-04 10:19:18','2022-08-04 13:47:06'),(232,'App\\Models\\User',16,'main','508f3b4e19ca13cc1713edd11ee51d3d7100c29a840297fe3008dff9bc5d0db6','[\"user\"]','2022-08-04 10:56:19','2022-08-04 10:46:57','2022-08-04 10:56:19'),(235,'App\\Models\\User',16,'main','479e4dfc9de452f4eb0a7bfd1665baa174fe4a035a0fa2e4ccf51daaa14d0e11','[\"user\"]','2022-08-04 12:37:57','2022-08-04 12:33:59','2022-08-04 12:37:57'),(236,'App\\Models\\User',2,'main','3a9e03169bafcce67e68bc23808795d9b8f5dc90ee5f3ba4e4310f2e029e044a','[\"user\",\"creator\"]','2022-08-04 13:19:42','2022-08-04 12:37:23','2022-08-04 13:19:42'),(237,'App\\Models\\User',19,'main','3dc3e03fb6d628db2e42c7111d328aa2dda7cc347e50f7f9a496bb80ff983b7e','[\"user\"]','2022-08-04 12:38:18','2022-08-04 12:38:07','2022-08-04 12:38:18'),(245,'App\\Models\\User',22,'main','8825e3a9dbb267b13d365abb67ff5b6b1d82964ef43f219059be9ae2ba7084a2','[\"user\"]','2022-08-04 13:55:37','2022-08-04 13:50:54','2022-08-04 13:55:37'),(247,'App\\Models\\User',22,'main','07bbe5a0c5972e3733c4b091ef7cb9a0ba8399e7a258ef3f900c594cc356c766','[\"user\"]','2022-08-04 15:05:11','2022-08-04 15:03:56','2022-08-04 15:05:11'),(249,'App\\Models\\User',22,'main','d41e7f814f11cd5013aa4a1c0c6461efbd8ae75fd04bc37c75eb028704bea572','[\"user\",\"creator\"]','2022-08-04 15:08:26','2022-08-04 15:06:07','2022-08-04 15:08:26'),(250,'App\\Models\\User',22,'main','936fb12cd964fca9f9ac9a0f3b824fe29ab775e9d2bdec097633dabfa0bc1633','[\"user\",\"creator\"]','2022-08-04 15:24:07','2022-08-04 15:17:32','2022-08-04 15:24:07'),(261,'App\\Models\\User',22,'main','0fb2908e7738e06bdf9fc2c46f92d8b9d23100bc9ac5153e5aafb468fe7fb1bf','[\"user\",\"creator\"]','2022-08-04 17:00:12','2022-08-04 16:21:22','2022-08-04 17:00:12'),(262,'App\\Models\\User',22,'main','70fe09f56564ecb97aafaae21975732e97e59249bd52585e54dfd8a40dbe7ab9','[\"user\",\"creator\"]','2022-08-08 22:28:55','2022-08-04 16:42:49','2022-08-08 22:28:55'),(268,'App\\Models\\User',22,'main','03e1bac7ed05a59590f8438dff4746652e96d57fe6d68e05630c90a9b2e55b7a','[\"user\",\"creator\"]','2022-08-04 17:35:00','2022-08-04 17:32:38','2022-08-04 17:35:00'),(269,'App\\Models\\User',6,'main','67ccd5c5ed2a8d38c4ec6c72de31f3fb84d2649f4ffd4e0c22865fc3e50caf55','[\"user\"]','2022-08-04 17:52:28','2022-08-04 17:33:11','2022-08-04 17:52:28'),(270,'App\\Models\\User',22,'main','5000c14ddf60c065cd777ac19ab946f2a810af7b5fed51615fca572cac869828','[\"user\",\"creator\"]','2022-08-04 19:08:27','2022-08-04 17:38:25','2022-08-04 19:08:27'),(271,'App\\Models\\User',6,'main','b04d6ce2ef129ed9d60c885cac0fcb8de4dd5806e0c4080c5e8ecce3d9cd8304','[\"user\"]','2022-08-09 13:47:14','2022-08-04 17:46:07','2022-08-09 13:47:14'),(272,'App\\Models\\User',22,'main','4f8f3f597a3b9808aeba22bcae3aa81e02c37af879a4374eb6adf6a7a57e3347','[\"user\",\"creator\"]','2022-08-07 08:54:47','2022-08-04 18:17:47','2022-08-07 08:54:47'),(279,'App\\Models\\User',29,'main','a46142af87172d8a9c01843e66db07c519ac1d187d47fdd02572062ace15eaf3','[\"user\"]',NULL,'2022-08-07 15:44:06','2022-08-07 15:44:06'),(285,'App\\Models\\User',22,'main','b0cba10576cb8735f5f7ef7f737b241dfeb76e4a1f987086e45cb8632e2d9fac','[\"user\",\"creator\"]','2022-08-07 18:49:59','2022-08-07 17:14:40','2022-08-07 18:49:59'),(289,'App\\Models\\User',16,'main','1b4431b3d1eb7e51dda5d31af615b25fb5d115e757abc3e46fc0d5d248966335','[\"user\"]','2022-08-07 18:12:59','2022-08-07 18:12:46','2022-08-07 18:12:59'),(290,'App\\Models\\User',22,'main','4057e276aab3fe0a3063d6bcaeac6cab060274d4e8b53caddb52c06b42ae744d','[\"user\",\"creator\"]','2022-08-07 19:55:13','2022-08-07 19:27:09','2022-08-07 19:55:13'),(294,'App\\Models\\User',16,'main','23584a7abb91e1f0d5488dcaa4da35755c5ab5fdcf7a6af10e38ec23fe35461c','[\"user\"]','2022-08-08 07:44:33','2022-08-08 06:49:12','2022-08-08 07:44:33'),(296,'App\\Models\\User',16,'main','53c36e0c81e19f18c3e4bc095a4e1b1b493742bc31562172344b1e8b21e73e2d','[\"user\"]','2022-08-08 07:22:19','2022-08-08 07:09:25','2022-08-08 07:22:19'),(299,'App\\Models\\User',16,'main','50f7295e5f390896441a693cb79a1cfa374c7f8c32a0687dcd889909f58e61d5','[\"user\"]','2022-08-08 23:12:09','2022-08-08 07:50:45','2022-08-08 23:12:09'),(300,'App\\Models\\User',32,'main','1a4b110b28670867d1af80db6a1c8db65c34ed68c1921205a129774ef7941693','[\"user\"]','2022-08-08 07:59:37','2022-08-08 07:51:36','2022-08-08 07:59:37'),(302,'App\\Models\\User',22,'main','cc663918455a153f7f62e298cfd1fabb33e692a84bf1f7d4a35790714392c9c2','[\"user\",\"creator\"]','2022-08-08 09:37:15','2022-08-08 09:36:25','2022-08-08 09:37:15'),(305,'App\\Models\\User',16,'main','1c974391ebecef50c14c2feee45adadd1e3af6958cf958d881b1fdbce0a1a141','[\"user\"]','2022-08-08 10:19:48','2022-08-08 10:17:05','2022-08-08 10:19:48'),(310,'App\\Models\\User',34,'main','da5f34b46c6ea84a82f6d5b71253adab32081783062f6a8655508a9484fab0d9','[\"user\"]','2022-08-09 18:25:45','2022-08-08 12:43:11','2022-08-09 18:25:45'),(314,'App\\Models\\User',16,'main','cf63866306a3e24f20e2774268eb1a3690ef07e08514cad33c06b903b4848d30','[\"user\"]','2022-08-08 15:35:30','2022-08-08 15:35:29','2022-08-08 15:35:30'),(315,'App\\Models\\User',16,'main','91374080e0bf236bdc04fe8009eca6fd01a55c21608969ad2465431e5a41dabb','[\"user\"]','2022-08-08 20:49:05','2022-08-08 15:35:29','2022-08-08 20:49:05'),(320,'App\\Models\\User',2,'main','2a8bcc48bb535aafa8383c6e4825575ce4c6003f83860411045ec94bd50860b8','[\"user\",\"creator\"]','2022-08-08 17:03:06','2022-08-08 16:45:08','2022-08-08 17:03:06'),(326,'App\\Models\\User',33,'main','cbc44fcc2668119d3760455e33292ffb54ea26f5dcec40c322898aff40ec803a','[\"user\"]','2022-08-09 09:27:22','2022-08-08 18:08:34','2022-08-09 09:27:22'),(329,'App\\Models\\User',16,'main','63ce61ee01c7d6c2c09c5688862e48f7ea716be97278a88a7659fa272d9fac86','[\"user\"]','2022-08-09 13:13:27','2022-08-08 19:51:32','2022-08-09 13:13:27'),(330,'App\\Models\\User',31,'main','1e15c8bc1cc1f728cbfb7437ac70c1aecf02e8df29eaa13fa639745418bcf356','[\"user\"]','2022-08-09 20:54:31','2022-08-08 19:52:45','2022-08-09 20:54:31'),(331,'App\\Models\\User',2,'main','a29e1a76ec20e96bba40ed1e51b35fe291e0623d7abac10bdffcbb11689194c7','[\"user\",\"creator\"]','2022-08-08 21:56:11','2022-08-08 20:14:55','2022-08-08 21:56:11'),(333,'App\\Models\\User',16,'main','af6e50f4ee3026e3fc0389c7146b092aeb85ba46955025d6d9eb62a7ec90f169','[\"user\"]','2022-08-10 01:40:39','2022-08-08 20:36:58','2022-08-10 01:40:39'),(348,'App\\Models\\User',34,'main','c4586680494790c76fe80cf097466c4b2a17a5fdc44980d0c85f6140b11b24f0','[\"user\"]','2022-08-09 22:52:52','2022-08-09 13:08:55','2022-08-09 22:52:52'),(350,'App\\Models\\User',6,'main','d0ff00885a69010b0612e34a1791538bc5962a30f11b776a6a9f44e311f24e9e','[\"user\"]','2022-08-09 13:56:40','2022-08-09 13:55:48','2022-08-09 13:56:40'),(354,'App\\Models\\User',22,'main','b0139662341716fdd5fd41832132af3bc55fb64f27c16b20e4a2a11482aaace3','[\"user\",\"creator\"]','2022-08-09 15:00:38','2022-08-09 15:00:25','2022-08-09 15:00:38'),(356,'App\\Models\\User',22,'main','cab649e5803ff05fdbd3c0554de044020fa58e2a279fc75b48c9015627139f8e','[\"user\",\"creator\"]','2022-08-09 15:31:16','2022-08-09 15:20:29','2022-08-09 15:31:16'),(358,'App\\Models\\User',37,'main','bc9ab80d186b6b59eb42782b92a34fa6f483dddc01f6a7ded13a117a59a2b425','[\"user\"]','2022-08-09 16:28:52','2022-08-09 16:28:26','2022-08-09 16:28:52'),(359,'App\\Models\\User',13,'main','786643afb6272531f3ef8ae20adb37fc4876c7aaca84f9c44641f8c1431dc9cb','[\"user\"]','2022-08-10 04:41:53','2022-08-09 16:32:46','2022-08-10 04:41:53'),(360,'App\\Models\\User',22,'main','3a9516c302c60ef47576f7db3f538e463a3585e9fe3fa42725d9e0e5b21f699e','[\"user\",\"creator\"]','2022-08-09 16:53:36','2022-08-09 16:50:11','2022-08-09 16:53:36'),(361,'App\\Models\\User',8,'main','e65fd735fdad6536787fdb00158d337348d0087e3a9f1009dfddb2065a2d079c','[\"user\"]','2022-08-09 20:31:23','2022-08-09 17:00:27','2022-08-09 20:31:23'),(362,'App\\Models\\User',28,'main','620b17bf600af682fb0efbc60d2193317ee470b195ea1d78cf09eba09344387c','[\"user\"]','2022-08-09 18:31:48','2022-08-09 17:08:38','2022-08-09 18:31:48'),(365,'App\\Models\\User',38,'main','707ce0f85065883df4fe85a2b062e47fb6f3f04dbf2ad729f38c8ef6504dfccf','[\"user\"]','2022-08-09 20:55:09','2022-08-09 20:54:33','2022-08-09 20:55:09'),(366,'App\\Models\\User',39,'main','fd34c7bb3abf267ca497147f3d130fb8944e360914a0045a108c3944020e8e92','[\"user\"]','2022-08-10 03:28:40','2022-08-09 22:15:42','2022-08-10 03:28:40'),(367,'App\\Models\\User',22,'main','3880d9ea9180579b2fb43e435951b54ded5efbc5353f51ca7fa280b9218ec7ee','[\"user\",\"creator\"]','2022-08-09 23:54:15','2022-08-09 23:03:00','2022-08-09 23:54:15'),(368,'App\\Models\\User',16,'main','3fc66b81cd2c6251f62782101110cd0a4107388a3ce1664d5e7e0ea48eb2aa76','[\"user\"]','2022-08-10 01:19:49','2022-08-10 01:14:41','2022-08-10 01:19:49'),(369,'App\\Models\\User',16,'main','2d34759c11af2fe5df5cf40d5cfc48bd0d09f2f7473c1f5eaef666b1d1633c2a','[\"user\"]','2022-08-10 03:28:13','2022-08-10 01:30:50','2022-08-10 03:28:13'),(371,'App\\Models\\User',41,'main','adaa245b30ee859f423e6d0416a04abe97d1e5c3b5d8736adbaa07ed840a44ad','[\"user\"]','2022-08-10 02:52:23','2022-08-10 02:50:52','2022-08-10 02:52:23'),(374,'App\\Models\\User',42,'main','9bfb6fad95471086841d4df111f4e69a408a049fd7c8c307a79506c89226ac67','[\"user\"]','2022-08-10 03:26:05','2022-08-10 03:21:42','2022-08-10 03:26:05'),(375,'App\\Models\\User',28,'main','12de0b8b4c0c274ff32f61aaa703d7176f4c22da8c6231d5f60e742f1f87206c','[\"user\"]','2022-08-10 03:46:36','2022-08-10 03:44:36','2022-08-10 03:46:36'),(376,'App\\Models\\User',17,'main','8de41e19aaa066d049191145302dedc801be0f6cfe3348ee014dfb90f18c4c80','[\"user\"]','2022-08-10 03:48:55','2022-08-10 03:48:53','2022-08-10 03:48:55'),(378,'App\\Models\\User',44,'main','5e25f456d1b1880e21dca993e9fd5cfb8db764d89414df8072511c2d0959a158','[\"user\"]','2022-08-10 03:53:41','2022-08-10 03:53:14','2022-08-10 03:53:41'),(382,'App\\Models\\User',45,'main','8bf312905584a57af8928caa23c81196a3e6be7d92a3a472101281a04ee428ec','[\"user\"]','2022-08-10 04:01:32','2022-08-10 04:01:15','2022-08-10 04:01:32'),(387,'App\\Models\\User',31,'main','9124226de19866d1f94c346a92fee8312f4a769887d066781482830ac336c47f','[\"user\"]','2022-08-10 05:04:48','2022-08-10 05:04:31','2022-08-10 05:04:48');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls`
--

DROP TABLE IF EXISTS `polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `polls` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL,
  `option` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_post_id_foreign` (`post_id`),
  CONSTRAINT `polls_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls`
--

LOCK TABLES `polls` WRITE;
/*!40000 ALTER TABLE `polls` DISABLE KEYS */;
INSERT INTO `polls` VALUES (1,3,'sd'),(2,3,'sad'),(3,6,'asd'),(4,6,'sd'),(5,21,'Mall'),(6,21,'Movie'),(7,22,'§'),(8,22,'1'),(11,25,'1'),(12,25,'2'),(13,25,'6'),(14,27,'Hey'),(15,27,'Bye');
/*!40000 ALTER TABLE `polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` tinyint DEFAULT NULL,
  `schedule` datetime DEFAULT NULL,
  `price` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`),
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,'ads',NULL,NULL,NULL,'2022-07-18 13:47:26','2022-07-18 13:47:26',NULL),(2,4,'sad',NULL,NULL,NULL,'2022-07-19 09:53:34','2022-07-19 09:53:34',NULL),(3,1,'sd',NULL,NULL,NULL,'2022-07-19 10:53:48','2022-07-19 10:53:48',NULL),(4,1,'sd',NULL,NULL,NULL,'2022-07-19 10:53:57','2022-07-19 10:53:57',NULL),(5,4,'hey',NULL,NULL,NULL,'2022-07-19 13:23:30','2022-07-26 13:48:29',NULL),(6,4,'sad',NULL,NULL,NULL,'2022-07-19 14:12:01','2022-07-19 14:12:01',NULL),(7,4,'sda',NULL,NULL,NULL,'2022-07-20 15:23:58','2022-07-20 15:23:58',NULL),(8,4,'lo',NULL,NULL,NULL,'2022-07-20 15:46:24','2022-07-20 19:05:02','2022-07-20 19:05:02'),(9,4,'ל',NULL,NULL,NULL,'2022-07-20 19:05:17','2022-07-20 19:05:17',NULL),(10,4,'O',NULL,NULL,NULL,'2022-07-20 19:08:26','2022-07-20 19:08:26',NULL),(11,4,'sadp',NULL,NULL,NULL,'2022-07-20 19:53:28','2022-07-24 14:33:06',NULL),(12,4,'first video',NULL,NULL,NULL,'2022-07-20 20:08:25','2022-07-24 14:33:22',NULL),(13,4,'as',NULL,NULL,NULL,'2022-07-20 20:13:16','2022-07-20 20:20:14','2022-07-20 20:20:14'),(14,11,'sup',NULL,NULL,NULL,'2022-07-20 21:03:22','2022-07-20 21:03:22',NULL),(15,11,'sup',NULL,NULL,NULL,'2022-07-20 21:03:53','2022-07-20 21:03:53',NULL),(16,4,'Ha',NULL,NULL,NULL,'2022-07-24 17:05:59','2022-07-24 17:06:05','2022-07-24 17:06:05'),(17,14,'😴 Have you been sleeping on lately? Don\'t worry.\n\nWe\'ve compiled the top OFTV moments from June!',NULL,NULL,NULL,'2022-07-26 14:03:05','2022-08-09 13:06:26','2022-08-09 13:06:26'),(18,2,'Love',NULL,NULL,NULL,'2022-07-31 20:41:11','2022-07-31 20:41:11',NULL),(19,2,'Hard rock',NULL,NULL,NULL,'2022-07-31 20:41:52','2022-07-31 20:41:52',NULL),(20,22,'Lovely day yall <3',NULL,NULL,NULL,'2022-08-04 15:06:58','2022-08-04 15:06:58',NULL),(21,22,'What should i do ?',NULL,NULL,NULL,'2022-08-04 15:07:38','2022-08-04 16:09:34','2022-08-04 16:09:34'),(22,22,'test',NULL,NULL,NULL,'2022-08-04 16:13:48','2022-08-04 16:21:27','2022-08-04 16:21:27'),(23,22,'New day new post !',NULL,NULL,NULL,'2022-08-08 11:35:07','2022-08-08 11:35:11','2022-08-08 11:35:11'),(24,22,'New day new post !',NULL,NULL,NULL,'2022-08-08 11:35:27','2022-08-08 11:35:27',NULL),(25,22,'3',NULL,NULL,NULL,'2022-08-08 17:21:32','2022-08-08 17:48:05','2022-08-08 17:48:05'),(26,22,'Yep, that’s work ❤️🎉',NULL,NULL,NULL,'2022-08-08 22:34:34','2022-08-08 22:34:34',NULL),(27,22,'Testing',NULL,NULL,NULL,'2022-08-09 06:35:22','2022-08-09 06:35:22',NULL),(28,22,'Test video',NULL,NULL,NULL,'2022-08-09 06:37:49','2022-08-09 06:37:49',NULL),(29,22,'Test video quality + Price on video',NULL,NULL,NULL,'2022-08-09 06:39:30','2022-08-09 11:06:16','2022-08-09 11:06:16');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `sub_id` bigint unsigned NOT NULL,
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` bigint unsigned NOT NULL DEFAULT '0',
  `gateway` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `info` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subscriptions_user_id_foreign` (`user_id`),
  KEY `subscriptions_sub_id_foreign` (`sub_id`),
  CONSTRAINT `subscriptions_sub_id_foreign` FOREIGN KEY (`sub_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (1,2,3,'8BKoEXqg8EqiMZXF',NULL,0,NULL,NULL,1,NULL,'2022-07-18 13:43:13','2022-08-07 09:01:29','2022-08-07 09:01:29'),(2,1,2,'2LeL4gu5LY4wnUBV',NULL,0,NULL,NULL,1,NULL,'2022-07-18 16:56:24','2022-07-18 16:56:24',NULL),(3,8,2,'Zt1SEimGUbxKFASg',NULL,0,NULL,NULL,1,NULL,'2022-07-18 21:30:02','2022-07-25 12:28:28','2022-07-25 12:28:28'),(4,8,3,'me51YuKZskzaoqsq',NULL,0,NULL,NULL,1,NULL,'2022-07-19 09:25:32','2022-07-25 12:41:09','2022-07-25 12:41:09'),(5,8,5,'QQ4lcAq2tWCmBLMr',NULL,0,NULL,NULL,1,NULL,'2022-07-19 09:25:40','2022-07-25 12:28:34','2022-07-25 12:28:34'),(6,2,5,'3ElVovPKIqmaC0le',NULL,0,NULL,NULL,1,NULL,'2022-07-19 09:39:09','2022-07-19 09:39:09',NULL),(7,4,3,'eDfoQmGKy1SzInJW',NULL,0,NULL,NULL,1,NULL,'2022-07-19 13:24:07','2022-07-19 13:57:09','2022-07-19 13:57:09'),(8,4,3,'YqHAA1BhiN9F7EBX',NULL,0,NULL,NULL,1,NULL,'2022-07-19 13:57:13','2022-07-19 13:57:13',NULL),(9,4,2,'nLqSeGTlD0u7biuk',NULL,0,NULL,NULL,1,NULL,'2022-07-19 13:57:18','2022-07-19 13:57:18',NULL),(10,11,3,'hV4V5hvcIFjixhL4',NULL,0,NULL,NULL,1,NULL,'2022-07-20 23:32:02','2022-07-20 23:32:02',NULL),(11,4,11,'sbObZQ731tu77wr9',NULL,0,NULL,NULL,1,NULL,'2022-07-21 15:01:06','2022-07-24 18:53:11','2022-07-24 18:53:11'),(12,8,9,'v9M5FxhaY5gPjT1G',NULL,0,NULL,NULL,1,NULL,'2022-07-22 22:57:14','2022-07-25 12:41:17','2022-07-25 12:41:17'),(13,13,11,'cx6xvTHzC8MCd6DO',NULL,0,NULL,NULL,1,NULL,'2022-07-24 19:20:55','2022-07-24 19:27:03','2022-07-24 19:27:03'),(14,13,4,'cFrEEApn9Hm8G3dd',NULL,0,NULL,NULL,1,NULL,'2022-07-24 19:22:27','2022-07-24 19:32:37','2022-07-24 19:32:37'),(15,13,11,'ZfeFHQGseI2AHCxK',NULL,0,NULL,NULL,1,NULL,'2022-07-24 19:27:15','2022-07-24 19:32:59','2022-07-24 19:32:59'),(16,13,11,'NtEcKtZPJEh57udP',NULL,0,NULL,NULL,1,NULL,'2022-07-24 19:42:02','2022-07-24 19:47:57','2022-07-24 19:47:57'),(17,13,11,'NOM4NmiiPuALPs7P',NULL,0,NULL,NULL,1,NULL,'2022-07-24 20:04:50','2022-07-24 20:06:12','2022-07-24 20:06:12'),(18,13,4,'Dk0lGHEKfG23FJ7E',NULL,0,NULL,NULL,1,NULL,'2022-07-24 20:06:02','2022-07-24 20:07:51','2022-07-24 20:07:51'),(19,13,11,'mQXOjaKI4redXP9K',NULL,0,NULL,NULL,1,NULL,'2022-07-24 20:06:17','2022-07-24 20:08:10','2022-07-24 20:08:10'),(20,13,11,'2mTdrubrYvo4vqbx',NULL,0,NULL,NULL,1,NULL,'2022-07-24 20:08:29','2022-07-24 20:19:20','2022-07-24 20:19:20'),(21,13,11,'gl5AZK6XeDTdLFga',NULL,0,NULL,NULL,1,NULL,'2022-07-24 20:20:32','2022-07-25 12:10:03','2022-07-25 12:10:03'),(22,13,4,'FVm0TlN4qLD6XYso',NULL,0,NULL,NULL,1,NULL,'2022-07-24 20:21:04','2022-07-24 20:21:16','2022-07-24 20:21:16'),(23,4,11,'hsBJevtRBfgfThOH',NULL,0,NULL,NULL,1,NULL,'2022-07-24 20:53:32','2022-07-25 12:50:25','2022-07-25 12:50:25'),(24,13,4,'kCa5WUT6iDlkl97a',NULL,0,NULL,NULL,1,NULL,'2022-07-25 11:03:18','2022-08-08 09:47:18','2022-08-08 09:47:18'),(25,13,11,'ES0lz8ROqxUxQ5OA',NULL,0,NULL,NULL,1,NULL,'2022-07-25 12:16:13','2022-07-25 12:17:09','2022-07-25 12:17:09'),(26,13,11,'yL13UPW13UCFRFkW',NULL,0,NULL,NULL,1,NULL,'2022-07-25 12:27:07','2022-07-25 12:29:44','2022-07-25 12:29:44'),(27,8,11,'dpbqCUMawIw9TDi6',NULL,0,NULL,NULL,1,NULL,'2022-07-25 12:28:03','2022-07-25 12:29:29','2022-07-25 12:29:29'),(28,13,11,'QE86TjCzHFYwK3Ao',NULL,0,NULL,NULL,1,NULL,'2022-07-25 12:30:12','2022-07-25 12:31:33','2022-07-25 12:31:33'),(29,13,11,'dpucbMhZoX4hnWGs',NULL,0,NULL,NULL,1,NULL,'2022-07-25 12:31:51','2022-07-25 12:33:19','2022-07-25 12:33:19'),(30,13,11,'9f0UxpZXcWsPYdxX',NULL,0,NULL,NULL,1,NULL,'2022-07-25 12:34:46','2022-07-25 12:38:52','2022-07-25 12:38:52'),(31,13,11,'JkEazJEAsBYNhT6t',NULL,0,NULL,NULL,1,NULL,'2022-07-25 12:39:42','2022-07-25 12:41:41','2022-07-25 12:41:41'),(32,8,11,'GOGkws6cu8BQKa5c',NULL,0,NULL,NULL,1,NULL,'2022-07-25 12:40:08','2022-07-25 12:40:31','2022-07-25 12:40:31'),(33,8,11,'bgmIBAaQ6XN4N67V',NULL,0,NULL,NULL,1,NULL,'2022-07-25 12:40:37','2022-07-25 12:41:13','2022-07-25 12:41:13'),(34,13,11,'qop4phPOZuJPDSRr',NULL,0,NULL,NULL,1,NULL,'2022-07-25 12:41:47','2022-08-08 09:47:36','2022-08-08 09:47:36'),(35,8,4,'vhXVnAd6hHTeayKP',NULL,0,NULL,NULL,1,NULL,'2022-07-25 12:55:51','2022-07-25 12:59:41','2022-07-25 12:59:41'),(36,8,4,'ffvSnu2uf4EmZFWW',NULL,0,NULL,NULL,1,NULL,'2022-07-25 12:59:47','2022-07-25 13:00:09','2022-07-25 13:00:09'),(37,8,4,'7Wb1G38nTCYS4Eoj',NULL,0,NULL,NULL,1,NULL,'2022-07-25 13:01:04','2022-07-25 13:01:12','2022-07-25 13:01:12'),(38,2,11,'Csp5OYFljHMQ02A2',NULL,0,NULL,NULL,1,NULL,'2022-07-26 09:36:05','2022-07-26 09:38:56','2022-07-26 09:38:56'),(39,4,11,'XRi62zRZK4oMq5MB',NULL,0,NULL,NULL,1,NULL,'2022-07-26 13:35:55','2022-07-26 13:50:54','2022-07-26 13:50:54'),(40,4,11,'MjttcDl0vho8Dyu2',NULL,0,NULL,NULL,1,NULL,'2022-07-26 13:52:16','2022-07-26 13:52:42','2022-07-26 13:52:42'),(41,8,14,'KGagHINtnLi5WL2v',NULL,0,NULL,NULL,1,NULL,'2022-07-26 14:17:34','2022-07-27 15:59:58','2022-07-27 15:59:58'),(42,8,2,'EevEJLFLTVVEbkWr',NULL,0,NULL,NULL,1,NULL,'2022-07-27 15:59:51','2022-08-04 17:39:46','2022-08-04 17:39:46'),(43,8,14,'kPBBTUspLeSLSrmP',NULL,0,NULL,NULL,1,NULL,'2022-07-27 16:07:36','2022-08-04 17:39:49','2022-08-04 17:39:49'),(44,14,9,'Cjp6QHhWiQts2oQe',NULL,0,NULL,NULL,1,NULL,'2022-07-31 13:48:59','2022-07-31 13:48:59',NULL),(45,14,11,'aX2rZ6xiXRrTnWUe',NULL,0,NULL,NULL,1,NULL,'2022-07-31 13:49:04','2022-07-31 13:49:14','2022-07-31 13:49:14'),(46,14,11,'6zWjw3nCEWICyH6y',NULL,0,NULL,NULL,1,NULL,'2022-07-31 13:49:25','2022-07-31 13:49:25',NULL),(47,16,9,'qFt2NFlRhShqxrbi',NULL,0,NULL,NULL,1,NULL,'2022-08-01 03:35:09','2022-08-01 03:50:25','2022-08-01 03:50:25'),(48,16,2,'oOxzyYOpgTDB1yqB',NULL,0,NULL,NULL,1,NULL,'2022-08-01 03:35:49','2022-08-01 03:36:23','2022-08-01 03:36:23'),(49,16,14,'KaoGbSUykGUrao8l',NULL,0,NULL,NULL,1,NULL,'2022-08-01 03:45:37','2022-08-01 03:50:02','2022-08-01 03:50:02'),(50,16,11,'8ccfN6xk13v8PEDS',NULL,0,NULL,NULL,1,NULL,'2022-08-01 03:45:48','2022-08-01 03:49:35','2022-08-01 03:49:35'),(51,16,2,'wBnuI0OaopW5AXVt',NULL,0,NULL,NULL,1,NULL,'2022-08-01 03:46:09','2022-08-01 03:50:43','2022-08-01 03:50:43'),(52,17,9,'Pyd6y0wtLLwFdPFG',NULL,0,NULL,NULL,1,NULL,'2022-08-01 04:01:31','2022-08-03 07:53:39','2022-08-03 07:53:39'),(53,16,14,'gGfIdRa5VxTA9gJ6',NULL,0,NULL,NULL,1,NULL,'2022-08-01 04:18:49','2022-08-01 05:39:40','2022-08-01 05:39:40'),(54,16,11,'ItbISqpcGZKgk7iD',NULL,0,NULL,NULL,1,NULL,'2022-08-01 04:18:56','2022-08-01 04:21:43','2022-08-01 04:21:43'),(55,16,2,'4hM8vEblO5S62Y3K',NULL,0,NULL,NULL,1,NULL,'2022-08-01 04:19:42','2022-08-01 04:20:43','2022-08-01 04:20:43'),(56,16,2,'fr4b66DPxQKg4rky',NULL,0,NULL,NULL,1,NULL,'2022-08-01 04:22:10','2022-08-01 04:23:24','2022-08-01 04:23:24'),(57,16,11,'t2Mev0ndi5Sx8VdQ',NULL,0,NULL,NULL,1,NULL,'2022-08-01 04:22:23','2022-08-01 05:37:13','2022-08-01 05:37:13'),(58,16,9,'dLqIW88n4Ml13ePN',NULL,0,NULL,NULL,1,NULL,'2022-08-01 04:22:35','2022-08-01 04:29:16','2022-08-01 04:29:16'),(59,16,11,'PeySMiNeMXkOUm0P',NULL,0,NULL,NULL,1,NULL,'2022-08-01 05:42:30','2022-08-01 05:46:53','2022-08-01 05:46:53'),(60,16,14,'qlTHZwxSnQr7ZvNG',NULL,0,NULL,NULL,1,NULL,'2022-08-01 05:44:26','2022-08-01 05:47:32','2022-08-01 05:47:32'),(61,16,11,'scCFOjg3nsHQABk5',NULL,0,NULL,NULL,1,NULL,'2022-08-01 07:46:51','2022-08-01 07:51:49','2022-08-01 07:51:49'),(62,16,14,'qceiKzZ5OBoYrgRn',NULL,0,NULL,NULL,1,NULL,'2022-08-01 07:46:59','2022-08-01 07:48:09','2022-08-01 07:48:09'),(63,16,14,'blyjhcOpaKUQyf5Q',NULL,0,NULL,NULL,1,NULL,'2022-08-01 07:49:02','2022-08-03 19:41:36','2022-08-03 19:41:36'),(64,20,11,'P0dw7ir3DYDAz1o8',NULL,0,NULL,NULL,1,NULL,'2022-08-01 15:43:28','2022-08-01 15:43:42','2022-08-01 15:43:42'),(65,20,11,'B9TdPQosULVzJuMb',NULL,0,NULL,NULL,1,NULL,'2022-08-01 15:43:58','2022-08-01 15:43:58',NULL),(66,16,11,'0FEpnKuYfc96Sdlo',NULL,0,NULL,NULL,1,NULL,'2022-08-01 17:57:50','2022-08-03 09:00:41','2022-08-03 09:00:41'),(67,21,2,'IzYa0KXbjSdrBiuv',NULL,0,NULL,NULL,1,NULL,'2022-08-03 07:30:29','2022-08-03 07:33:57','2022-08-03 07:33:57'),(68,21,9,'FyGDV2z5343eZQCw',NULL,0,NULL,NULL,1,NULL,'2022-08-03 07:30:37','2022-08-03 07:32:05','2022-08-03 07:32:05'),(69,21,14,'uzkz4p6M8youPcCm',NULL,0,NULL,NULL,1,NULL,'2022-08-03 07:30:42','2022-08-03 07:30:52','2022-08-03 07:30:52'),(70,21,9,'HDcaOzgXqThkVjSo',NULL,0,NULL,NULL,1,NULL,'2022-08-03 07:32:48','2022-08-03 07:32:48',NULL),(71,21,14,'yS7i5QPy6L1ejzIx',NULL,0,NULL,NULL,1,NULL,'2022-08-03 07:33:05','2022-08-03 07:36:42','2022-08-03 07:36:42'),(72,21,11,'XsqoVzaRo8FCZGf3',NULL,0,NULL,NULL,1,NULL,'2022-08-03 07:33:26','2022-08-03 07:36:40','2022-08-03 07:36:40'),(73,21,2,'bK6DPWAObWiGDOTh',NULL,0,NULL,NULL,1,NULL,'2022-08-03 07:38:32','2022-08-03 07:38:32',NULL),(74,21,11,'tsxeErITVVuCAHqL',NULL,0,NULL,NULL,1,NULL,'2022-08-03 07:39:11','2022-08-03 07:39:11',NULL),(75,21,14,'yPQ2VC3U9ZgKITWu',NULL,0,NULL,NULL,1,NULL,'2022-08-03 07:40:03','2022-08-03 07:40:03',NULL),(76,17,11,'GXvDZGlz5xLh2phI',NULL,0,NULL,NULL,1,NULL,'2022-08-03 07:46:27','2022-08-03 07:53:41','2022-08-03 07:53:41'),(77,17,9,'pRhtk6a9YRJAH5TA',NULL,0,NULL,NULL,1,NULL,'2022-08-03 07:54:08','2022-08-03 07:54:08',NULL),(78,16,2,'CvvrDxSwcLmbMsDt',NULL,0,NULL,NULL,1,NULL,'2022-08-03 07:55:34','2022-08-03 09:01:48','2022-08-03 09:01:48'),(79,16,2,'Km4yozCBQpIoAZ8F',NULL,0,NULL,NULL,1,NULL,'2022-08-03 09:02:26','2022-08-03 09:02:45','2022-08-03 09:02:45'),(80,16,9,'OYdFlLN8NkR45oGA',NULL,0,NULL,NULL,1,NULL,'2022-08-03 09:02:32','2022-08-03 09:02:49','2022-08-03 09:02:49'),(81,16,11,'B5UMUG7KVnNeAK9E',NULL,0,NULL,NULL,1,NULL,'2022-08-03 09:02:37','2022-08-03 15:54:04','2022-08-03 15:54:04'),(82,22,2,'2OEx2DF8pIjlxV5u',NULL,0,NULL,NULL,1,NULL,'2022-08-03 10:48:11','2022-08-03 16:55:12','2022-08-03 16:55:12'),(83,22,9,'WBlRdBVZbN4rdTXI',NULL,0,NULL,NULL,1,NULL,'2022-08-03 10:48:17','2022-08-03 10:48:47','2022-08-03 10:48:47'),(84,22,11,'pOxqjrrP4tFCFBsc',NULL,0,NULL,NULL,1,NULL,'2022-08-03 10:48:25','2022-08-03 10:48:36','2022-08-03 10:48:36'),(85,22,11,'ZW3GaajTr69kETzO',NULL,0,NULL,NULL,1,NULL,'2022-08-03 10:48:53','2022-08-03 11:24:20','2022-08-03 11:24:20'),(86,8,9,'wkLpArPbYH4igVl1',NULL,0,NULL,NULL,1,NULL,'2022-08-03 11:07:29','2022-08-04 17:39:48','2022-08-04 17:39:48'),(87,8,11,'zamW3XSowy8HUwjQ',NULL,0,NULL,NULL,1,NULL,'2022-08-03 11:07:43','2022-08-04 17:39:51','2022-08-04 17:39:51'),(88,22,14,'Q4hUS8pRsBwac8dM',NULL,0,NULL,NULL,1,NULL,'2022-08-03 11:23:45','2022-08-04 17:34:58','2022-08-04 17:34:58'),(89,22,11,'KRHpsjy5HHWYDKF0',NULL,0,NULL,NULL,1,NULL,'2022-08-03 11:24:26','2022-08-04 11:38:23','2022-08-04 11:38:23'),(90,23,2,'INHYccQb1z7qfXpO',NULL,0,NULL,NULL,1,NULL,'2022-08-03 11:40:28','2022-08-03 11:40:28',NULL),(91,23,11,'SRCjHZFCMf2hFvkW',NULL,0,NULL,NULL,1,NULL,'2022-08-03 11:40:58','2022-08-03 11:48:06','2022-08-03 11:48:06'),(92,23,11,'Src94gARohY35Lky',NULL,0,NULL,NULL,1,NULL,'2022-08-03 11:53:11','2022-08-03 11:53:11',NULL),(93,16,9,'f3mW7OoK4TaYF3Fv',NULL,0,NULL,NULL,1,NULL,'2022-08-03 15:53:53','2022-08-03 15:54:02','2022-08-03 15:54:02'),(94,24,11,'uMzWMszgWAaaOFfL',NULL,0,NULL,NULL,1,NULL,'2022-08-03 15:57:16','2022-08-03 15:57:16',NULL),(95,22,9,'yzrilbcEnbGoW6Xe',NULL,0,NULL,NULL,1,NULL,'2022-08-03 16:55:03','2022-08-04 17:34:59','2022-08-04 17:34:59'),(96,2,11,'IIYUwvdIJ7Bi2iBe',NULL,0,NULL,NULL,1,NULL,'2022-08-03 18:51:16','2022-08-03 20:40:01','2022-08-03 20:40:01'),(97,16,2,'XLGcZ6R3vYmRj86N',NULL,0,NULL,NULL,1,NULL,'2022-08-03 18:55:58','2022-08-03 19:41:38','2022-08-03 19:41:38'),(98,16,11,'N4LFoMSRpgnrOSwb',NULL,0,NULL,NULL,1,NULL,'2022-08-03 18:56:16','2022-08-03 19:41:40','2022-08-03 19:41:40'),(99,16,9,'rSp4enyh35MoFHlV',NULL,0,NULL,NULL,1,NULL,'2022-08-03 18:59:11','2022-08-03 19:41:41','2022-08-03 19:41:41'),(100,16,2,'1aqlF0kPomYiU44m',NULL,0,NULL,NULL,1,NULL,'2022-08-03 19:41:50','2022-08-04 02:09:20','2022-08-04 02:09:20'),(101,2,11,'tQCn7KPtBOzX8zCb',NULL,0,NULL,NULL,1,NULL,'2022-08-03 22:20:13','2022-08-04 13:45:21','2022-08-04 13:45:21'),(102,16,9,'eNX3xw6Bv7ebJDNj',NULL,0,NULL,NULL,1,NULL,'2022-08-04 01:39:52','2022-08-04 02:09:26','2022-08-04 02:09:26'),(103,16,11,'3Kesv02uCnnNdvBF',NULL,0,NULL,NULL,1,NULL,'2022-08-04 01:53:53','2022-08-04 02:09:24','2022-08-04 02:09:24'),(104,16,14,'9DHI40SXF2t4IjPD',NULL,0,NULL,NULL,1,NULL,'2022-08-04 02:09:04','2022-08-04 02:09:22','2022-08-04 02:09:22'),(105,16,2,'ESi2tUipKVOLsTCG',NULL,0,NULL,NULL,1,NULL,'2022-08-04 02:10:13','2022-08-04 02:14:29','2022-08-04 02:14:29'),(106,16,11,'3wq7rN6h6KZ8ABqI',NULL,0,NULL,NULL,1,NULL,'2022-08-04 02:10:28','2022-08-04 02:14:27','2022-08-04 02:14:27'),(107,16,2,'uTpPrT9hDXmcpBGg',NULL,0,NULL,NULL,1,NULL,'2022-08-04 02:14:37','2022-08-04 04:24:57','2022-08-04 04:24:57'),(108,16,11,'JDO7D9r4BXSdBP5L',NULL,0,NULL,NULL,1,NULL,'2022-08-04 03:51:59','2022-08-04 04:24:59','2022-08-04 04:24:59'),(109,16,14,'55rpe5WfgYLQOU4A',NULL,0,NULL,NULL,1,NULL,'2022-08-04 03:59:49','2022-08-04 04:25:00','2022-08-04 04:25:00'),(110,16,2,'Jq3pzU0Rhzs7PYdm',NULL,0,NULL,NULL,1,NULL,'2022-08-04 04:25:07','2022-08-04 04:30:08','2022-08-04 04:30:08'),(111,16,2,'poyhbfCDVtGrEVTg',NULL,0,NULL,NULL,1,NULL,'2022-08-04 04:30:15','2022-08-04 04:43:08','2022-08-04 04:43:08'),(112,16,11,'57huRbjSo0akrYbj',NULL,0,NULL,NULL,1,NULL,'2022-08-04 04:30:25','2022-08-04 04:43:09','2022-08-04 04:43:09'),(113,16,2,'M12K0XXIy4FGnpN2',NULL,0,NULL,NULL,1,NULL,'2022-08-04 04:43:17','2022-08-04 04:59:55','2022-08-04 04:59:55'),(114,16,11,'lP8SxV3S0MEqRmEy',NULL,0,NULL,NULL,1,NULL,'2022-08-04 04:43:26','2022-08-04 13:17:51','2022-08-04 13:17:51'),(115,16,2,'eZdDkj3gLUx2rJ0H',NULL,0,NULL,NULL,1,NULL,'2022-08-04 05:00:22','2022-08-04 13:17:53','2022-08-04 13:17:53'),(116,16,9,'jhi97MXMWjjFXx23',NULL,0,NULL,NULL,1,NULL,'2022-08-04 06:15:18','2022-08-04 13:17:54','2022-08-04 13:17:54'),(117,22,11,'jrVqvxlRptV9Hv1K',NULL,0,NULL,NULL,1,NULL,'2022-08-04 11:39:28','2022-08-04 11:48:50','2022-08-04 11:48:50'),(118,16,2,'CDfVcRTxbmrg63FF',NULL,0,NULL,NULL,1,NULL,'2022-08-04 13:18:11','2022-08-04 15:54:41','2022-08-04 15:54:41'),(119,19,2,'Wvliwp2UHjFknBzm',NULL,0,NULL,NULL,1,NULL,'2022-08-04 13:19:43','2022-08-04 13:19:43',NULL),(120,16,19,'xBTUCiN7lDWUYgdi',NULL,0,NULL,NULL,1,NULL,'2022-08-04 13:23:11','2022-08-04 15:54:42','2022-08-04 15:54:42'),(121,6,14,'wyU4Tptt1lXcych0',NULL,0,NULL,NULL,1,NULL,'2022-08-04 13:24:06','2022-08-09 13:45:31','2022-08-09 13:45:31'),(122,16,11,'AWHwLj5mhoX6FyBp',NULL,0,NULL,NULL,1,NULL,'2022-08-04 13:41:27','2022-08-04 13:41:39','2022-08-04 13:41:39'),(123,16,11,'qopP8ohf4rOhL5iy',NULL,0,NULL,NULL,1,NULL,'2022-08-04 13:41:43','2022-08-04 15:54:46','2022-08-04 15:54:46'),(124,2,11,'BjBCvNO2RoZKYMKd',NULL,0,NULL,NULL,1,NULL,'2022-08-04 13:45:36','2022-08-04 13:45:36',NULL),(125,2,22,'NNIFlWeDFflpnYxE',NULL,0,NULL,NULL,1,NULL,'2022-08-04 13:50:14','2022-08-04 14:55:16','2022-08-04 14:55:16'),(126,16,22,'QslU5Od2TI1WKFsV',NULL,0,NULL,NULL,1,NULL,'2022-08-04 15:13:30','2022-08-04 15:19:19','2022-08-04 15:19:19'),(127,17,2,'9M2Fv6Q8NsUviEVA',NULL,0,NULL,NULL,1,NULL,'2022-08-04 15:47:44','2022-08-04 15:47:44',NULL),(128,16,22,'gXtHUVhR1DHNzNSs',NULL,0,NULL,NULL,1,NULL,'2022-08-04 15:51:22','2022-08-04 15:54:44','2022-08-04 15:54:44'),(129,16,2,'DwJCLqCPfzaqtYgr',NULL,0,NULL,NULL,1,NULL,'2022-08-04 16:02:51','2022-08-04 16:02:51',NULL),(130,16,9,'1j4GAu7SNd3YgNM6',NULL,0,NULL,NULL,1,NULL,'2022-08-04 16:02:59','2022-08-08 17:27:48','2022-08-08 17:27:48'),(131,16,11,'PQVisqYyvnicmWqH',NULL,0,NULL,NULL,1,NULL,'2022-08-04 16:03:03','2022-08-04 16:03:03',NULL),(132,16,14,'Z51g7GsPeANkaTzm',NULL,0,NULL,NULL,1,NULL,'2022-08-04 16:03:07','2022-08-04 16:03:07',NULL),(133,19,11,'nt7Jvw8gRSWLEMkA',NULL,0,NULL,NULL,1,NULL,'2022-08-04 17:02:14','2022-08-04 17:02:25','2022-08-04 17:02:25'),(134,19,11,'5J8PMK7Z6PIWFpab',NULL,0,NULL,NULL,1,NULL,'2022-08-04 17:36:30','2022-08-04 17:36:30',NULL),(135,8,14,'Ajmyo6CpocPAPYhE',NULL,0,NULL,NULL,1,NULL,'2022-08-04 17:49:56','2022-08-04 17:49:56',NULL),(136,8,2,'0shztQpIa1WLloSl',NULL,0,NULL,NULL,1,NULL,'2022-08-07 09:00:43','2022-08-07 09:00:43',NULL),(137,27,14,'qZDmvYg0gEtIlh0z',NULL,0,NULL,NULL,1,NULL,'2022-08-07 13:48:22','2022-08-07 13:48:22',NULL),(138,27,9,'2CjXUOMi8kuIwDh5',NULL,0,NULL,NULL,1,NULL,'2022-08-07 13:51:09','2022-08-07 13:51:09',NULL),(139,22,2,'nYQ2sLa23H7PzVI0',NULL,0,NULL,NULL,1,NULL,'2022-08-07 14:12:22','2022-08-07 19:09:16','2022-08-07 19:09:16'),(140,8,9,'caC23OcaUR6I3oLI',NULL,0,NULL,NULL,1,NULL,'2022-08-07 14:47:10','2022-08-07 14:47:10',NULL),(141,22,2,'ftj6KFfdepJeIl6k',NULL,0,NULL,NULL,1,NULL,'2022-08-07 21:10:56','2022-08-08 14:20:31','2022-08-08 14:20:31'),(142,34,9,'XPqb8gh1rQztvPM7',NULL,0,NULL,NULL,1,NULL,'2022-08-08 13:19:40','2022-08-08 13:19:40',NULL),(143,22,9,'9XSNVzdcS6qU3fQY',NULL,0,NULL,NULL,1,NULL,'2022-08-08 13:29:47','2022-08-08 13:29:47',NULL),(144,31,11,'BZ6xADi4FKrsySEH',NULL,0,NULL,NULL,1,NULL,'2022-08-08 15:39:50','2022-08-08 15:39:50',NULL),(145,16,9,'Wvwdd2aWBkecHu34',NULL,0,NULL,NULL,1,NULL,'2022-08-08 17:28:19','2022-08-08 17:28:19',NULL),(146,22,11,'DBgtp9DRzgUmQyZ2',NULL,0,NULL,NULL,1,NULL,'2022-08-08 17:49:12','2022-08-08 17:49:12',NULL),(147,27,11,'OyhttwhxVFhnjzvU',NULL,0,NULL,NULL,1,NULL,'2022-08-08 17:52:17','2022-08-08 17:52:17',NULL),(148,33,11,'6FOMRxR9l4ZTh63D',NULL,0,NULL,NULL,1,NULL,'2022-08-08 18:08:48','2022-08-08 18:08:48',NULL),(149,28,9,'sFVOIvObZvQSpbZB',NULL,0,NULL,NULL,1,NULL,'2022-08-09 13:40:38','2022-08-09 13:40:46','2022-08-09 13:40:46'),(150,34,22,'mKcn8fDskfxpYgd5',NULL,0,NULL,NULL,1,NULL,'2022-08-09 15:44:54','2022-08-09 15:44:54',NULL),(151,28,9,'3flExzLEKTjoMBMf',NULL,0,NULL,NULL,1,NULL,'2022-08-09 19:21:37','2022-08-09 19:21:37',NULL),(152,28,14,'Qd0VbLFdf8rAUYRy',NULL,0,NULL,NULL,1,NULL,'2022-08-09 19:22:24','2022-08-09 19:22:24',NULL),(153,40,9,'D8cLLDiaHKleZNsn',NULL,0,NULL,NULL,1,NULL,'2022-08-10 02:05:20','2022-08-10 02:05:20',NULL),(154,43,9,'FlYI8SQmQtqyk8xi',NULL,0,NULL,NULL,1,NULL,'2022-08-10 03:53:17','2022-08-10 03:53:17',NULL);
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `channel_type` tinyint NOT NULL DEFAULT '0' COMMENT '0 - email, 1 - twitter, 2 - google',
  `channel_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` tinyint unsigned NOT NULL DEFAULT '0',
  `commission` tinyint unsigned DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` tinyint NOT NULL DEFAULT '0',
  `avatar` tinyint NOT NULL DEFAULT '0',
  `price` bigint unsigned NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snapchat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiktok` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin','admin@localhost','$2y$10$UV7t0OkrXmCaOIHqsRIdt.jvYxbSW.bVIpJoC.zaNA4lP9cZeZuJy',NULL,NULL,0,'admin@localhost','2022-07-18 09:25:26',10,NULL,NULL,NULL,NULL,0,0,5000,NULL,'2022-07-18 09:25:26','2022-08-04 15:05:56',NULL,'2022-08-04 15:05:56',NULL,NULL,NULL,NULL),(2,'Yainv','user6666345','yaniv@ybhltd.com','$2y$10$llL36qTJ7LgEILQoaUFRieeZIKFdGuRwuj/T.9IxCWCT00QxlnZqq',NULL,NULL,0,'yaniv@ybhltd.com',NULL,1,NULL,'Love is in the air',NULL,NULL,1,1,2000,NULL,'2022-07-18 13:42:18','2022-08-08 21:56:11',NULL,'2022-08-08 21:56:11','https://www.instagram.com/northshirenet/','https://www.instagram.com/northshirenet/',NULL,'https://www.instagram.com/northshirenet/'),(3,'Yaniv','user3647804','yaniv@gmail.com','$2y$10$FxqaMTXZmxMjkWwKjJjGi.JOa0wNFncRWz0tcQBHtt981XZpPQylu',NULL,NULL,0,'yaniv@gmail.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-07-18 13:42:34','2022-07-18 13:42:34',NULL,NULL,NULL,NULL,NULL,NULL),(4,'Yaniv','user3394847','Yaniv.bh198@gmail.com','$2y$10$7pf.IDto8pTg8RNaXi2acuULyEA3SYt9GEm5H9CKkBaCDzLsSgkbK',NULL,NULL,0,'Yaniv.bh198@gmail.com',NULL,1,NULL,'sdasdsasd','sdadsad','https://ybhltd.com',1,1,2000,NULL,'2022-07-18 13:46:35','2022-08-09 15:35:24',NULL,'2022-08-09 15:35:24',NULL,NULL,NULL,NULL),(5,'Yaniv','user4363093','Yaniv.bh1298@gmail.com','$2y$10$yaSyPnGqnx/MljxIOr0PIusKOrfn7GLO0omD22zZULP0S0xyosvAO',NULL,NULL,0,'Yaniv.bh1298@gmail.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-07-18 14:33:17','2022-07-18 14:33:17',NULL,NULL,NULL,NULL,NULL,NULL),(6,'Test','user5510594','Agag@gmail.com','$2y$10$GSMNxJmfsAoIoEZOAssltev/ntw1VuorC/lkoebZtKwdS4IWwW2zG',NULL,NULL,0,'Agag@gmail.com',NULL,0,NULL,NULL,NULL,NULL,1,1,3000,NULL,'2022-07-18 16:26:34','2022-08-09 16:04:28',NULL,'2022-08-09 16:04:28','https://www.instagram.com/byfanse/',NULL,'https://www.instagram.com/byfanse/','https://www.instagram.com/byfanse/'),(7,'Noa','user6205987','Yanivi@ybhltd.com','$2y$10$zId1Xw8GWy/JnqmQX/ZDKOgo0noURtitqj/ZRgIyH8E7zwgoM0/gO',NULL,NULL,0,'Yanivi@ybhltd.com',NULL,0,NULL,NULL,NULL,NULL,0,0,1000,NULL,'2022-07-18 19:34:41','2022-07-19 13:34:28',NULL,NULL,NULL,NULL,NULL,NULL),(8,'Bot1','user9291487','asas@gmail.com','$2y$10$vnL.szRvkfp6hnbAOKozJePMnodY1xBhiKyXebkm/oDhFK05o5Utu',NULL,NULL,0,'asas@gmail.com',NULL,0,NULL,'sdsdsd\nsdsds\nsdsd\nsdsd','Inside your dreams',NULL,1,1,500,NULL,'2022-07-18 21:23:37','2022-08-09 20:31:23',NULL,'2022-08-09 20:31:23',NULL,NULL,NULL,NULL),(9,'tester','user6187622','test@uniprogy.com','$2y$10$mCWzRhm6SbuokLQGSTsuMeUQhOqCvWOp7Wu69lbyIocMbFAuwvXIq',NULL,NULL,0,'test@uniprogy.com',NULL,1,NULL,NULL,NULL,NULL,1,1,0,NULL,'2022-07-20 15:30:38','2022-07-20 15:53:22',NULL,NULL,NULL,NULL,NULL,NULL),(10,'Yaniv','user1335595','yaniv1@ybhltd.com','$2y$10$57dTL43pchVH02DJ0rmzIOo9ePKTaTqD4T5AcEHJZ3t7U4vACELxq',NULL,NULL,0,'yaniv1@ybhltd.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-07-20 15:49:58','2022-07-20 15:49:58',NULL,NULL,NULL,NULL,NULL,NULL),(11,'TEST','Yaniv','yaniv2@ybhltd.com','$2y$10$BWLsEpWHRLbdC14OuMmSUe/1kHqOiGKfv7pIbYYnI3bK./Mes/VUq',NULL,NULL,0,'yaniv2@ybhltd.com',NULL,1,NULL,'asddasasdasd','ISral','http://stfu.fans',1,1,0,NULL,'2022-07-20 21:01:40','2022-07-21 13:06:44',NULL,NULL,NULL,NULL,NULL,NULL),(12,'Rey','user6851488','Yaniv.bh981@gmail.com','$2y$10$mcNH0ZufbrmLvnoBXbu4BOXUjU6JbBNLBhHZVL90f3kcBtmRrJgsi',NULL,NULL,0,'Yaniv.bh981@gmail.com',NULL,0,NULL,NULL,NULL,NULL,0,0,3000,NULL,'2022-07-21 13:45:20','2022-07-21 14:17:35',NULL,NULL,NULL,NULL,NULL,NULL),(13,'Yanivs','user8927704','Yaniv.bh398@gmail.com','$2y$10$7SrD9T12Y6l20/ikYEHbDeofu3P2UAKFXW.PY6sjDqmtyZBL4kFBS',NULL,NULL,0,'Yaniv.bh398@gmail.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-07-24 19:02:35','2022-08-10 04:41:53',NULL,'2022-08-10 04:41:53',NULL,NULL,NULL,NULL),(14,'Fanse','fanse','fanse@fanse.co','$2y$10$apywfbOiHOWLdozzmpgxpOsilYQBkpVwrrRS8Wg6MBkw2lfRVehfO',NULL,NULL,0,'fanse@fanse.co',NULL,1,NULL,'Fanse Official Account',NULL,'https://fanse.co',1,1,0,NULL,'2022-07-26 13:55:05','2022-08-09 15:07:30',NULL,'2022-08-09 15:07:30','https://www.instagram.com/byfanse/','https://twitter.com/byFanse',NULL,NULL),(15,'Lala','user8512563','Lalala123@gmail.com','$2y$10$e8eZDb8HYjtyye1qiOVZpeHXakJDjaVcseSGeER5RRfByTohfZ6um',NULL,NULL,0,'Lalala123@gmail.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-07-27 13:45:56','2022-07-27 13:45:56',NULL,NULL,NULL,NULL,NULL,NULL),(16,'testuser12','user3793502','fihehi4026@galotv.com','$2y$10$FOwUpiLswoH64eQjpr8PMO2rtcG2dLfId2E4Q1Rqg9xKJxTryGnDS',NULL,NULL,0,'fihehi4026@galotv.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-01 03:29:44','2022-08-10 03:28:13',NULL,'2022-08-10 03:28:13',NULL,NULL,NULL,NULL),(17,'Mikio Sakai','Mikio','smileboth0805@gmail.com','$2y$10$YAAe5R.q9MzrzW3euketce7IiPdXV3Uxh9p9upg4Hx0x319JqC/py',NULL,NULL,0,'smileboth0805@gmail.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-01 03:56:21','2022-08-10 03:48:55',NULL,'2022-08-10 03:48:55',NULL,NULL,NULL,NULL),(18,'Nightwing','user8982356','webdev0627@gmail.com','$2y$10$41JM.6GSksXs6mK/B5tMleUjTPaHKx5qRfkm6HHyRha8z2FXLaMmq',NULL,NULL,0,'webdev0627@gmail.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-01 05:11:30','2022-08-01 05:11:30',NULL,NULL,NULL,NULL,NULL,NULL),(19,'testuser23','user2772029','fawilah160@galotv.com','$2y$10$BppFsgVNiWbtAbLkPQtmIe6x4OTLnC7h16fZCezoO1a4DkxC6zKou',NULL,NULL,0,'fawilah160@galotv.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-01 05:33:14','2022-08-04 18:41:03',NULL,'2022-08-04 18:41:03',NULL,NULL,NULL,NULL),(20,'Test user','user7082068','test@tet.com','$2y$10$KqgurbzomYA9EwCBZOUMPOagT4rchG28jl474nJ7U3Nqnp.ni6/s2',NULL,NULL,0,'test@tet.com',NULL,0,NULL,'sdfdsdfdsfdfsd\nsfd\nsdf\ns\ndf\nsdf\nsdf\ndfs\n\nsdf\nsdf\n\nd\nf\ndsfsdfsdffd',NULL,NULL,0,0,0,NULL,'2022-08-01 13:41:20','2022-08-01 15:56:46',NULL,NULL,NULL,NULL,NULL,NULL),(21,'testuser34','user323720','fihehi4027@galotv.com','$2y$10$NJO9Dr9hfEA74Us3pos5COgtMMPu1Y.IYt2FjCQ7H3v47UEBZ5ZbC',NULL,NULL,0,'fihehi4027@galotv.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-02 23:52:13','2022-08-02 23:52:13',NULL,NULL,NULL,NULL,NULL,NULL),(22,'Ariana 🦋','Ariana','Yaniv.bh698@gmail.com','$2y$10$JwkwQpI.jhNTjeRegpYqn.zLTZBOKEE.Fm5272sf14eHdwiCfdL4u',NULL,NULL,0,'Yaniv.bh698@gmail.com',NULL,1,NULL,'😎Hamari Style Thodi Hat Kar Hai🤘\n🔥Hum Jalte Kum Jalate Jyada Hai🔥\nI don’t do nude! Mostly Swim, lingerie and Sexy outfits.\n\nHere’s my wishlist if you’d like to get me anything :-)','ISRAEL','https://fanse.co',1,1,2000,NULL,'2022-08-03 10:47:57','2022-08-10 04:19:38',NULL,'2022-08-10 04:19:38','https://fanse.co/','https://fanse.co/','https://fanse.co/','https://fanse.co/'),(23,'sad','user74484','Yaniv.bh798@gmail.com','$2y$10$spFcthOMeU4XOdxEyw8.e.ZB.kQEK8ijfaWu5egxZdjJ1d/hw0OIu',NULL,NULL,0,'Yaniv.bh798@gmail.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-03 11:40:17','2022-08-03 11:40:17',NULL,NULL,NULL,NULL,NULL,NULL),(24,'Yanivs','user3079237','Yaniv.bh898@gmail.com','$2y$10$9YvQW26cLROQWZ4ZSSLR/O4Z93m5YJkyzF3KBdeErXbdXdMXXDPFq',NULL,NULL,0,'Yaniv.bh898@gmail.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-03 15:56:59','2022-08-03 15:56:59',NULL,NULL,NULL,NULL,NULL,NULL),(25,'Alyosha Agapov','user3153255','blocklimax@gmail.com','$2y$10$tj4iv9vY238kbnX2xGAw/Outv09II2B8.CqvGl57.7fi2kAVCe0YK',NULL,NULL,0,'blocklimax@gmail.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-06 19:14:43','2022-08-06 20:42:29',NULL,'2022-08-06 20:42:29',NULL,NULL,NULL,NULL),(26,'test41231','user1673891','test@test1412.123213','$2y$10$od67LzOUArLP20RNz2brBOt0MeFC7OxsnfFWC104.hh0PrZlh5pom',NULL,NULL,0,'test@test1412.123213',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-07 11:33:45','2022-08-07 11:45:19',NULL,'2022-08-07 11:45:19',NULL,NULL,NULL,NULL),(27,'asdsad','user1783753','Yaniv.bh098@gmail.com','$2y$10$vgxcg9J/fNWCaCADuDBc/ewX5EOwxc6qATkwTmyhP/URtCy8EqC7u',NULL,NULL,0,'Yaniv.bh098@gmail.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-07 13:01:51','2022-08-08 17:55:37',NULL,'2022-08-08 17:55:37',NULL,NULL,NULL,NULL),(28,'test1212dc3dqw','user2036185','test@tr3fdscvs.asdcasdc','$2y$10$r4S5VIOBqZKnRFEfYWaaI.VhZb/unrfSg7jC6icKdkJ9maqWSoiHC',NULL,NULL,0,'test@tr3fdscvs.asdcasdc',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-07 14:11:04','2022-08-10 04:56:39',NULL,'2022-08-10 04:56:39',NULL,NULL,NULL,NULL),(29,'Alexey Ivan','user1845996','blocklimax@gmails.com','$2y$10$BUZgFg80RA8ZCw0J6i1.WuXNbNp7XbN/zHEpGZ0HKlm8pgDqUyBGK',NULL,NULL,0,'blocklimax@gmails.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-07 15:19:49','2022-08-07 15:23:30',NULL,'2022-08-07 15:23:30',NULL,NULL,NULL,NULL),(30,'adssa','user3888941','Yaniv.bh1198@gmail.com','$2y$10$Njkg8UKb2oTB0/9c/8g.veHIOVQ.ef7U/q9hX4sej.4af1xZP.iBe',NULL,NULL,0,'Yaniv.bh1198@gmail.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-07 15:33:40','2022-08-07 17:14:33',NULL,'2022-08-07 17:14:33',NULL,NULL,NULL,NULL),(31,'35r43','user3618413','test41412@35r4324.afd2','$2y$10$7h5IAGPLMrPahwqoPy/HnOkZS78rZTPGzdFexfqianC0WjDHkSWgS',NULL,NULL,0,'test41412@35r4324.afd2',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-07 15:47:39','2022-08-10 05:04:48',NULL,'2022-08-10 05:04:48',NULL,NULL,NULL,NULL),(32,'Gleb','user4950680','Gleb.skp28@gmail.com','$2y$10$hB4y3uPuQvqc52NckZdA/OVfVdRlgRNpIisdBHuVsmFZ/oXlHDUGG',NULL,NULL,0,'Gleb.skp28@gmail.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-08 07:51:36','2022-08-08 07:59:37',NULL,'2022-08-08 07:59:37',NULL,NULL,NULL,NULL),(33,'asdd','user2942329','Yaniv.bh3398@gmail.com','$2y$10$9C6Ug0D91KzDQnjnpfVvG./YrEAhW9Vem2cDk0wux0KDGZJKZJaAO',NULL,NULL,0,'Yaniv.bh3398@gmail.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-08 08:51:29','2022-08-09 09:27:22',NULL,'2022-08-09 09:27:22',NULL,NULL,NULL,NULL),(34,'Dev0304','user7448055','devsops2022@gmail.com','$2y$10$RZ56TzFDBPQloV63SSsz9Od1yuxYjpS3z0YnVEA/KvsFN7XkzPcdS',NULL,NULL,0,'devsops2022@gmail.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-08 12:33:21','2022-08-09 22:52:52',NULL,'2022-08-09 22:52:52',NULL,NULL,NULL,NULL),(35,'Panther','user6665774','leichen0311@gmail.com','$2y$10$gtznGyTuYAkPV8RVtbfQ/OXfIEDw6gcJFgyTvjA.zGzPHXDu2GRha',NULL,NULL,0,'leichen0311@gmail.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-08 20:37:29','2022-08-08 20:37:53',NULL,'2022-08-08 20:37:53',NULL,NULL,NULL,NULL),(36,'admin1','user360728','admin@admin1.com','$2y$10$NijtfmVvaCyq3tsZ6QlFRuZzf73uVfQ1PvlLpgtXrsHfkj5rsiuJ.',NULL,NULL,0,'admin@admin1.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-09 14:01:44','2022-08-10 02:54:56',NULL,'2022-08-10 02:54:56',NULL,NULL,NULL,NULL),(37,'hideki','user2191205','hideki.dev1995@gmail.com','$2y$10$xSCyirzyDpOJiArvioN0gOtX62JEmVs7L8trihiIBsJabgNJ358Y2',NULL,NULL,0,'hideki.dev1995@gmail.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-09 16:28:26','2022-08-09 16:28:52',NULL,'2022-08-09 16:28:52',NULL,NULL,NULL,NULL),(38,'Tadashi','user6965970','goldstardev2002@gmail.com','$2y$10$.JcSI2cgz3x7E3KHPa0VwutsOY31oYvofV9R2dGoMgslxUmlUX8vq',NULL,NULL,0,'goldstardev2002@gmail.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-09 20:54:32','2022-08-09 20:55:09',NULL,'2022-08-09 20:55:09',NULL,NULL,NULL,NULL),(39,'ray','user531314','Raymond@gmail.com','$2y$10$WY40yTM6RYmNyf6HXFo4tOC13xPVQ7V5eR5X/xwai3Atece5LQN7S',NULL,NULL,0,'Raymond@gmail.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-09 22:15:42','2022-08-10 03:28:40',NULL,'2022-08-10 03:28:40',NULL,NULL,NULL,NULL),(40,'infinite','user448038','infiniteaengus@gmail.com','$2y$10$JNSLk/9zmNmUwTRabzkufeYDsMmxcwGvaRVbbBHGdzOrrBwrwfizy',NULL,NULL,0,'infiniteaengus@gmail.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-10 02:03:50','2022-08-10 02:12:54',NULL,'2022-08-10 02:12:54',NULL,NULL,NULL,NULL),(41,'akileus','user5640643','akileus0902@gmail.com','$2y$10$iVGkdHhwgfegtcCgCRrnfO0OufK2YX0Hote.xuWD0npJKBhGyvPF2',NULL,NULL,0,'akileus0902@gmail.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-10 02:50:52','2022-08-10 02:52:23',NULL,'2022-08-10 02:52:23',NULL,NULL,NULL,NULL),(42,'dev','user6602152','admin@admin.com','$2y$10$Efgp4yXakNRfxi1hXhfOw.PQINRLgx1g/hoebMwngIbRJbmXI9zcu',NULL,NULL,0,'admin@admin.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-10 03:21:42','2022-08-10 03:26:05',NULL,'2022-08-10 03:26:05',NULL,NULL,NULL,NULL),(43,'Open conversation','user9350259','openconversation2@gmail.com','$2y$10$apOyFkl/XYFxo0aFDv3lEuZzU2iVmKgDcdwkAjGibUeCrVh1JG3T6',NULL,NULL,0,'openconversation2@gmail.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-10 03:52:57','2022-08-10 04:17:41',NULL,'2022-08-10 04:17:41',NULL,NULL,NULL,NULL),(44,'dev','user5881154','admin@admin2.com','$2y$10$w7XkEfODyjVyHrptRxAqz.GUBqwfYWom5WTgnmrzaNhRYMf.ZhKj.',NULL,NULL,0,'admin@admin2.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-10 03:53:14','2022-08-10 03:53:41',NULL,'2022-08-10 03:53:41',NULL,NULL,NULL,NULL),(45,'asd','user5759273','admin@dev.com','$2y$10$TrZy2/2.KpRGAqHNP1ZAF.zOnQZsl649RW8MYzq0N9QzR..AHT7km',NULL,NULL,0,'admin@dev.com',NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,'2022-08-10 04:01:15','2022-08-10 04:01:32',NULL,'2022-08-10 04:01:32',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verifications`
--

DROP TABLE IF EXISTS `verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` json NOT NULL,
  `status` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `verifications_user_id_foreign` (`user_id`),
  CONSTRAINT `verifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verifications`
--

LOCK TABLES `verifications` WRITE;
/*!40000 ALTER TABLE `verifications` DISABLE KEYS */;
INSERT INTO `verifications` VALUES (1,1,'W8CKmgC5Rfcu8seX','US','{\"zip\": \"10128\", \"city\": \"New York\", \"state\": \"NY\", \"address\": \"7744 Columbia St\", \"last_name\": \"Account\", \"first_name\": \"Admin\"}',1,'2022-07-18 09:25:26','2022-07-18 09:25:26',NULL),(2,2,'x1vqKSEluQvbLzuo','IL','{\"zip\": \"3849754\", \"city\": \"Hadera\", \"state\": \"He\", \"address\": \"Hashikma 17 th\", \"last_name\": \"Ben Harroch\", \"first_name\": \"Yaniv\"}',1,'2022-07-18 13:44:24','2022-07-26 13:58:03',NULL),(3,4,'ZFRy8nqLDH4HZLvq','IL','{\"zip\": \"3849754\", \"city\": \"Hadera\", \"state\": \"He\", \"address\": \"Hashikma 17 th\", \"last_name\": \"Ben Harroch\", \"first_name\": \"Yaniv\"}',1,'2022-07-18 13:48:51','2022-07-19 10:49:30',NULL),(4,9,'MququjD7zVF6w4GB','CZ','{\"zip\": \"123\", \"city\": \"123\", \"state\": \"123\", \"address\": \"123\", \"last_name\": \"tester2\", \"first_name\": \"tester\"}',1,'2022-07-20 15:32:21','2022-07-20 15:33:57',NULL),(5,11,'Lo0Z57owxpr0UiZA','IL','{\"zip\": \"3849754\", \"city\": \"Hadera\", \"state\": \"He\", \"address\": \"Hashikma 17 th\", \"last_name\": \"Ben Harroch\", \"first_name\": \"Yaniv\"}',1,'2022-07-20 21:02:49','2022-07-20 21:02:50',NULL),(6,14,'rtK7eXF3EmcPKW2F','IL','{\"zip\": \"3849754\", \"city\": \"Hadera\", \"state\": \"He\", \"address\": \"Hashikma 17 th\", \"last_name\": \"Ben Harroch\", \"first_name\": \"Yaniv\"}',1,'2022-07-26 13:57:39','2022-07-26 13:58:01',NULL),(7,22,'VXBodOdNnXgXOzlC','VU','{\"zip\": \"sad\", \"city\": \"sd\", \"state\": \"sda\", \"address\": \"sd\", \"last_name\": \"sd\", \"first_name\": \"Ariana 🦋\"}',1,'2022-08-04 15:04:47','2022-08-04 15:05:22',NULL);
/*!40000 ALTER TABLE `verifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `votes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `poll_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `votes_poll_id_foreign` (`poll_id`),
  KEY `votes_user_id_foreign` (`user_id`),
  CONSTRAINT `votes_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE,
  CONSTRAINT `votes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votes`
--

LOCK TABLES `votes` WRITE;
/*!40000 ALTER TABLE `votes` DISABLE KEYS */;
INSERT INTO `votes` VALUES (1,2,1,NULL,NULL),(2,4,4,NULL,NULL),(3,3,1,NULL,NULL),(4,3,13,NULL,NULL),(5,4,13,NULL,NULL),(6,4,13,NULL,NULL),(7,4,8,NULL,NULL),(8,5,22,NULL,NULL),(9,8,22,NULL,NULL),(11,11,22,NULL,NULL),(12,14,22,NULL,NULL);
/*!40000 ALTER TABLE `votes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-10  5:54:57
