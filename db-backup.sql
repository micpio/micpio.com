-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: micpio.mysql.pythonanywhere-services.com    Database: micpio$booksread
-- ------------------------------------------------------
-- Server version	5.7.41-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add group',1,'add_group'),(2,'Can change group',1,'change_group'),(3,'Can delete group',1,'delete_group'),(4,'Can view group',1,'view_group'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add user',3,'add_user'),(10,'Can change user',3,'change_user'),(11,'Can delete user',3,'delete_user'),(12,'Can view user',3,'view_user'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add post',5,'add_post'),(18,'Can change post',5,'change_post'),(19,'Can delete post',5,'delete_post'),(20,'Can view post',5,'view_post'),(21,'Can add mybooksread',6,'add_mybooksread'),(22,'Can change mybooksread',6,'change_mybooksread'),(23,'Can delete mybooksread',6,'delete_mybooksread'),(24,'Can view mybooksread',6,'view_mybooksread'),(25,'Can add news',7,'add_news'),(26,'Can change news',7,'change_news'),(27,'Can delete news',7,'delete_news'),(28,'Can view news',7,'view_news'),(29,'Can add log entry',8,'add_logentry'),(30,'Can change log entry',8,'change_logentry'),(31,'Can delete log entry',8,'delete_logentry'),(32,'Can view log entry',8,'view_logentry'),(33,'Can add session',9,'add_session'),(34,'Can change session',9,'change_session'),(35,'Can delete session',9,'delete_session'),(36,'Can view session',9,'view_session'),(37,'Can add home',10,'add_home'),(38,'Can change home',10,'change_home'),(39,'Can delete home',10,'delete_home'),(40,'Can add bandsongs',11,'add_bandsongs'),(41,'Can change bandsongs',11,'change_bandsongs'),(42,'Can delete bandsongs',11,'delete_bandsongs'),(43,'Can add post',12,'add_post'),(44,'Can change post',12,'change_post'),(45,'Can delete post',12,'delete_post'),(46,'Can view post',12,'view_post'),(47,'Can add more',14,'add_more'),(48,'Can change more',14,'change_more'),(49,'Can delete more',14,'delete_more'),(50,'Can view more',14,'view_more'),(51,'Can add photos',13,'add_photos'),(52,'Can change photos',13,'change_photos'),(53,'Can delete photos',13,'delete_photos'),(54,'Can view photos',13,'view_photos'),(55,'Can add stories',15,'add_stories'),(56,'Can change stories',15,'change_stories'),(57,'Can delete stories',15,'delete_stories'),(58,'Can view stories',15,'view_stories'),(59,'Can add todo',16,'add_todo'),(60,'Can change todo',16,'change_todo'),(61,'Can delete todo',16,'delete_todo'),(62,'Can view todo',16,'view_todo'),(63,'Can add question',17,'add_question'),(64,'Can change question',17,'change_question'),(65,'Can delete question',17,'delete_question'),(66,'Can view question',17,'view_question'),(67,'Can add choice',18,'add_choice'),(68,'Can change choice',18,'change_choice'),(69,'Can delete choice',18,'delete_choice'),(70,'Can view choice',18,'view_choice'),(71,'Can add horailroad',20,'add_horailroad'),(72,'Can change horailroad',20,'change_horailroad'),(73,'Can delete horailroad',20,'delete_horailroad'),(74,'Can view horailroad',20,'view_horailroad'),(75,'Can add railroad',19,'add_railroad'),(76,'Can change railroad',19,'change_railroad'),(77,'Can delete railroad',19,'delete_railroad'),(78,'Can view railroad',19,'view_railroad'),(79,'Can add river',21,'add_river'),(80,'Can change river',21,'change_river'),(81,'Can delete river',21,'delete_river'),(82,'Can view river',21,'view_river'),(83,'Can add paintings',22,'add_paintings'),(84,'Can change paintings',22,'change_paintings'),(85,'Can delete paintings',22,'delete_paintings'),(86,'Can view paintings',22,'view_paintings');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$WDvzVJOa3WQw$geLdK93gyFnBt3mco9ETuH+benK/DAadZ1twug9Zikc=','2022-12-09 16:28:23.157165',1,'micpio','','','mickpiontek@gmail.com',1,1,'2019-02-03 18:28:37.251130'),(2,'pbkdf2_sha256$36000$RjAhbGI9urLg$yfFLnKayczfPTbgwVxyP4TXUPR9xs5Qv8ueuF6YeOIM=','2020-02-06 22:16:47.435375',0,'marypio','','','',1,1,'2020-02-06 22:11:25.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (1,2,37);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bandsongs`
--

DROP TABLE IF EXISTS `bandsongs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bandsongs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `artist` varchar(50) NOT NULL,
  `group` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bandsongs`
--

LOCK TABLES `bandsongs` WRITE;
/*!40000 ALTER TABLE `bandsongs` DISABLE KEYS */;
INSERT INTO `bandsongs` VALUES (1,'Louie Louie','Kingsmen','Pentagons'),(2,'Last train to Clarksville','Monkeys','Pentagons'),(3,'Walking the dog','Rufus Thomas','Pentagons'),(4,'House of the rising sun','The Animals','Pentagons'),(5,'Summertime','Gershwin','Pentagons'),(6,'Michelle','The Beatles','Pentagons'),(8,'Sittin by the dock of the bay','Otis Redding','Pentagons'),(9,'Time is on my side','Rolling Stones','Pentagons'),(10,'For your Love','Yardbirds','Pentagons'),(11,'Wild Thing','The Trogs','Pentagons'),(12,'Good Lovin','Greatful Spoonfull','Pentagons'),(13,'Hanky Panky','Tommy James and the Shondels','Pentagons'),(14,'Just like Me','Paul Revere and the Raiders','Pentagons'),(15,'Land of 1000 dances','Canibal and the Headhunters','Pentagons'),(16,'Kind of a Drag','Buckinghams','Pentagons'),(17,'That Girl','The Beatles','Pentagons'),(18,'Get off of my cloud','Rolling Stones','Pentagons'),(19,'Monie Monie','Tommy James and the Shondels','Pentagons'),(20,'Money','The Beatles','Pentagons'),(21,'Mustang Sally','Wilson Picket','Pentagons'),(22,'I\'m Henery the Eight','Hermans Hermits','Pentagons'),(23,'Donna','Buddy Holley','Pentagons'),(24,'Unchained Melody','Rightious Brothers','Pentagons'),(27,'Good Lovin','Rascals','Pentagons'),(28,'Don\'t let the Sun Catch You Crying','Jerry and the Pacemakers','Pentagons'),(29,'Game of Love','Wayne Fontana','Pentagons'),(30,'Can\'t get no satisfaction','Stones','Pentagons'),(31,'Light My Fire','The Doors','Pentagons'),(32,'Turn Turn','The Byrds','Pentagons'),(33,'Tamborine Man','The Byrds','Pentagons'),(34,'Pushin Too Hard','The Seeds','Pentagons'),(35,'All of the day and all of the night','Kinks','Pentagons');
/*!40000 ALTER TABLE `bandsongs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post`
--

DROP TABLE IF EXISTS `blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `text` longtext NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `published_date` datetime(6) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_post_author_id_dd7a8485_fk_auth_user_id` (`author_id`),
  CONSTRAINT `blog_post_author_id_dd7a8485_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post`
--

LOCK TABLES `blog_post` WRITE;
/*!40000 ALTER TABLE `blog_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
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
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=425 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-02-03 18:30:44.185744','1','The Catcher in the Rye J D Salenger  novel',1,'[{\"added\": {}}]',6,1),(2,'2019-02-06 17:15:07.804421','1','Deploy Django I\'ve learned a lot',1,'[{\"added\": {}}]',10,1),(3,'2019-02-06 17:37:16.065633','1','SOTU speech a home run 2019',1,'[{\"added\": {}}]',7,1),(4,'2019-02-08 15:45:07.525402','2','Use of personal opinion (my style)',1,'[{\"added\": {}}]',10,1),(5,'2019-02-08 17:09:22.634774','2','Use of personal opinion (my style)',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(6,'2019-02-08 17:13:00.553169','2','Use of personal opinion (my style)',2,'[]',10,1),(7,'2019-02-08 17:16:22.570039','2','Use of personal opinion (my style)',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(8,'2019-02-08 17:17:46.095712','2','Use of personal opinion (my style)',2,'[]',10,1),(9,'2019-02-08 18:41:41.916277','77','Catcher in the Rye J D Salenger  classics',1,'[{\"added\": {}}]',6,1),(10,'2019-02-08 18:43:30.569980','2','Use of personal opinion (my style)',2,'[]',10,1),(11,'2019-02-09 21:05:01.969496','2','My take on the present time',1,'[{\"added\": {}}]',7,1),(12,'2019-02-10 03:38:45.503590','78','Zen and the Art of Motorcycle Maintenance Robert Persig  novel',1,'[{\"added\": {}}]',6,1),(13,'2019-02-10 03:39:26.219743','79','Heart of Darkness Joseph Conrad  novel',1,'[{\"added\": {}}]',6,1),(14,'2019-02-10 03:39:56.432357','80','Catch 22 Joseeph Heller  novel',1,'[{\"added\": {}}]',6,1),(15,'2019-02-10 18:44:10.575530','2','My take on the present time',2,'[{\"changed\": {\"fields\": [\"story\"]}}]',7,1),(16,'2019-02-11 03:28:53.085372','2','Use of personal opinion (my style)',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(17,'2019-02-11 03:37:58.206764','2','Use of personal opinion (my style)',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(18,'2019-02-11 03:58:05.254110','3','additional sentences',1,'[{\"added\": {}}]',10,1),(19,'2019-02-11 03:58:58.523611','3','Tiny living space fantasies',2,'[{\"changed\": {\"fields\": [\"lesson\"]}}]',10,1),(20,'2019-02-11 04:43:17.344555','3','Tiny living space fantasies',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(21,'2019-02-11 13:59:37.719088','81','A Place of my Own the architecture of daydreams Michael Pollan  novel',1,'[{\"added\": {}}]',6,1),(22,'2019-02-12 15:27:03.747084','3','Tiny living space fantasies',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(23,'2019-02-12 18:52:10.204778','2','Use of personal opinion (my style)',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(24,'2019-02-13 01:40:56.468530','80','Catch 22 Joseph Heller  novel',2,'[{\"changed\": {\"fields\": [\"authors\"]}}]',6,1),(25,'2019-02-13 15:41:54.958925','1','The Wall the novel by Sherry Rice released',1,'[{\"added\": {}}]',5,1),(26,'2019-03-01 23:33:50.189010','82','Emacs bantam press  text_book',1,'[{\"added\": {}}]',6,1),(27,'2019-04-06 23:46:32.998880','1','Deploy Django I\'ve learned a lot',3,'',10,1),(28,'2019-04-06 23:46:33.018607','3','Tiny living space fantasies',3,'',10,1),(29,'2019-04-06 23:46:33.038604','2','Use of personal opinion (my style)',3,'',10,1),(30,'2019-04-06 23:47:44.705678','4','stream of conscience',1,'[{\"added\": {}}]',10,1),(31,'2019-04-19 15:01:39.661510','83','Finding a Form William Gass  text_book',1,'[{\"added\": {}}]',6,1),(32,'2019-04-19 15:02:18.349899','84','Shell Game Sarah Paretsky  mystery',1,'[{\"added\": {}}]',6,1),(33,'2019-04-19 15:03:09.465783','85','Beyond Modernity George Rutler  classics',1,'[{\"added\": {}}]',6,1),(34,'2019-04-19 15:04:14.865829','86','Learning EMacs James Elliot  text_book',1,'[{\"added\": {}}]',6,1),(35,'2019-04-26 18:27:37.176705','4','stream of conscience',3,'',10,1),(36,'2019-04-26 18:29:30.603410','5','satire',1,'[{\"added\": {}}]',10,1),(37,'2019-04-26 18:38:45.631051','6','satire 2',1,'[{\"added\": {}}]',10,1),(38,'2019-04-26 18:40:39.920565','5','satire',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(39,'2019-04-26 18:41:41.318969','5','satire',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(40,'2019-04-26 22:42:20.067263','7','Tony Tony',1,'[{\"added\": {}}]',10,1),(41,'2019-04-26 22:54:46.714011','1','The Wall the novel by Mick Piontek released',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',5,1),(42,'2019-04-26 23:10:43.317235','2','Calm in Caos',1,'[{\"added\": {}}]',5,1),(43,'2019-04-26 23:14:14.678674','1','The Wall the novel by Mick Piontek released',2,'[{\"changed\": {\"fields\": [\"created_date\", \"published_date\"]}}]',5,1),(44,'2019-04-29 12:42:51.929466','1','The Wall the novel by Mick Piontek coming soon',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',5,1),(45,'2019-04-30 14:36:31.157890','5','choice',2,'[{\"changed\": {\"fields\": [\"lesson\"]}}]',10,1),(46,'2019-04-30 14:37:09.262434','6','wings for all (satire)',2,'[{\"changed\": {\"fields\": [\"lesson\"]}}]',10,1),(47,'2019-04-30 14:37:38.132503','5','choice (satire)',2,'[{\"changed\": {\"fields\": [\"lesson\"]}}]',10,1),(48,'2019-04-30 14:38:10.634689','7','Tony Tony (political)',2,'[{\"changed\": {\"fields\": [\"lesson\"]}}]',10,1),(49,'2019-05-21 22:06:23.034640','1','Louie Louie Kingsmen  Pentagons',1,'[{\"added\": {}}]',11,1),(50,'2019-05-21 22:07:18.386422','2','test test  Pentagons',1,'[{\"added\": {}}]',11,1),(51,'2019-05-21 23:19:02.352963','2','Last train to Clarksville Monkeys  Pentagons',2,'[{\"changed\": {\"fields\": [\"title\", \"artist\"]}}]',11,1),(52,'2019-05-21 23:20:26.874960','3','Walking the dog t  Pentagons',1,'[{\"added\": {}}]',11,1),(53,'2019-05-21 23:20:53.526925','4','House of the rising sun The Animals  Pentagons',1,'[{\"added\": {}}]',11,1),(54,'2019-05-21 23:21:16.993591','5','Summertime Gershwin  Pentagons',1,'[{\"added\": {}}]',11,1),(55,'2019-05-21 23:21:49.108477','6','Michelle The Beatles  Pentagons',1,'[{\"added\": {}}]',11,1),(56,'2019-05-21 23:22:19.637074','7','Sittin by the dock of the bay Otis Redding  Pentagons',1,'[{\"added\": {}}]',11,1),(57,'2019-05-21 23:22:20.023594','8','Sittin by the dock of the bay Otis Redding  Pentagons',1,'[{\"added\": {}}]',11,1),(58,'2019-05-21 23:32:52.085649','7','Sittin by the dock of the bay Otis Redding  Pentagons',3,'',11,1),(59,'2019-05-21 23:36:41.109990','3','Walking the dog Rufus Thomas  Pentagons',2,'[{\"changed\": {\"fields\": [\"artist\"]}}]',11,1),(60,'2019-05-22 15:32:02.446576','9','Time is on my side Rolling Stones  Pentagons',1,'[{\"added\": {}}]',11,1),(61,'2019-05-22 15:32:38.396942','10','For your Love Yardbirds  Pentagons',1,'[{\"added\": {}}]',11,1),(62,'2019-05-22 15:33:20.302620','11','Wild Thing unknown for now  Pentagons',1,'[{\"added\": {}}]',11,1),(63,'2019-05-22 15:34:01.112469','12','Good Lovin Greatful Spoonfull  Pentagons',1,'[{\"added\": {}}]',11,1),(64,'2019-05-22 15:34:31.689985','13','Hanky Panky unknown for now  Pentagons',1,'[{\"added\": {}}]',11,1),(65,'2019-05-22 15:35:06.624774','14','Just like Me unknown for now  Pentagons',1,'[{\"added\": {}}]',11,1),(66,'2019-05-22 15:35:35.337281','15','Land of 1000 dances unknown for now  Pentagons',1,'[{\"added\": {}}]',11,1),(67,'2019-05-22 15:36:06.362743','16','Kind of a Drag unknown for now  Pentagons',1,'[{\"added\": {}}]',11,1),(68,'2019-05-22 15:36:40.867629','17','That Girl The Beatles  Pentagons',1,'[{\"added\": {}}]',11,1),(69,'2019-05-22 15:37:57.380754','18','Na Na Nanana unknown for now  Pentagons',1,'[{\"added\": {}}]',11,1),(70,'2019-05-23 03:22:13.642933','14','Just like Me Paul Revere and the raiders  Pentagons',2,'[{\"changed\": {\"fields\": [\"artist\"]}}]',11,1),(71,'2019-05-23 03:22:39.531719','18','Na Na Nanana Wilson Picket  Pentagons',2,'[{\"changed\": {\"fields\": [\"artist\"]}}]',11,1),(72,'2019-05-23 03:23:54.808619','16','Kind of a Drag Buckinghams  Pentagons',2,'[{\"changed\": {\"fields\": [\"artist\"]}}]',11,1),(73,'2019-05-23 03:23:55.365474','16','Kind of a Drag Buckinghams  Pentagons',2,'[]',11,1),(74,'2019-05-23 03:25:08.119316','13','Hanky Panky Tommy James and the Shondels  Pentagons',2,'[{\"changed\": {\"fields\": [\"artist\"]}}]',11,1),(75,'2019-05-23 03:26:00.251686','11','Wild Thing The Trogs  Pentagons',2,'[{\"changed\": {\"fields\": [\"artist\"]}}]',11,1),(76,'2019-05-23 03:26:49.540669','15','Land of 1000 dances Canibal and the Headhunters  Pentagons',2,'[{\"changed\": {\"fields\": [\"artist\"]}}]',11,1),(77,'2019-05-23 13:45:24.336878','87','Sailing Alone Around the World Joshua Slocum  novel',1,'[{\"added\": {}}]',6,1),(78,'2019-05-24 21:57:19.402440','19','Monie Monie Tommy James and the Shondels  Pentagons',1,'[{\"added\": {}}]',11,1),(79,'2019-05-24 21:57:39.641383','20','Money The Beatles  Pentagons',1,'[{\"added\": {}}]',11,1),(80,'2019-05-24 21:59:36.372407','14','Just like Me Paul Revere and the Raiders  Pentagons',2,'[{\"changed\": {\"fields\": [\"artist\"]}}]',11,1),(81,'2019-05-24 22:06:20.273777','21','Mustang Sally Wilson Picket  Pentagons',1,'[{\"added\": {}}]',11,1),(82,'2019-05-24 22:07:06.869651','22','I\'m Henery the Eight Hermans Hermits  Pentagons',1,'[{\"added\": {}}]',11,1),(83,'2019-05-25 13:20:14.167444','88','Moby Dick Herman Mellvile  novel',1,'[{\"added\": {}}]',6,1),(84,'2019-05-25 13:21:32.220765','23','Donna Buddy Holley  Pentagons',1,'[{\"added\": {}}]',11,1),(85,'2019-05-25 13:23:22.707828','24','Unchained Melody Rightious Brothers  Pentagons',1,'[{\"added\": {}}]',11,1),(86,'2019-05-25 14:17:31.336955','25','test test  Pentagons',1,'[{\"added\": {}}]',11,1),(87,'2019-05-25 15:36:23.074320','25','test test  Pentagons',3,'',11,1),(88,'2019-05-25 15:45:34.912312','26','test test  Pentagons',1,'[{\"added\": {}}]',11,1),(89,'2019-05-26 17:20:16.903630','26','test test  Pentagons',3,'',11,1),(90,'2019-05-26 17:27:42.256097','27','test test  Pentagons',1,'[{\"added\": {}}]',11,1),(91,'2019-06-03 12:57:31.241466','27','Good Lovin Rascals  Pentagons',2,'[{\"changed\": {\"fields\": [\"title\", \"artist\"]}}]',11,1),(92,'2019-06-03 12:59:12.217767','28','Don\'t let the Sun Catch You Crying Jerry and the Pacemakers  Pentagons',1,'[{\"added\": {}}]',11,1),(93,'2019-06-03 13:01:12.257109','29','Game of Love Wayne Fontana  Pentagons',1,'[{\"added\": {}}]',11,1),(94,'2019-06-04 02:24:31.005378','89','The Janson Directive Robert Ludlum  novel',1,'[{\"added\": {}}]',6,1),(95,'2019-06-18 20:16:07.004787','18','Get off of my cloud Rolling Stones  Pentagons',2,'[{\"changed\": {\"fields\": [\"title\", \"artist\"]}}]',11,1),(96,'2019-06-18 20:17:52.548460','30','Can\'t get no satisfaction Stones  Pentagons',1,'[{\"added\": {}}]',11,1),(97,'2019-06-24 13:41:11.052119','90','Die Trying Lee Child  novel',1,'[{\"added\": {}}]',6,1),(98,'2019-06-30 02:02:14.303712','91','Make Me Lee Child  novel',1,'[{\"added\": {}}]',6,1),(99,'2019-06-30 02:15:44.041714','92','Night School Lee Child  novel',1,'[{\"added\": {}}]',6,1),(100,'2019-07-03 19:59:30.543786','93','Personal Lee Childs  novel',1,'[{\"added\": {}}]',6,1),(101,'2019-07-03 19:59:31.226915','94','Personal Lee Childs  novel',1,'[{\"added\": {}}]',6,1),(102,'2019-07-03 20:00:23.911980','94','Personal Lee Childs  novel',3,'',6,1),(103,'2019-07-25 20:11:15.729705','95','Never Go Back Lee Childs  novel',1,'[{\"added\": {}}]',6,1),(104,'2019-08-02 13:20:47.039731','96','A wanted Man Lee Childs  novel',1,'[{\"added\": {}}]',6,1),(105,'2019-08-02 13:21:48.847524','96','A Wanted Man Lee Child  novel',2,'[{\"changed\": {\"fields\": [\"book_title\", \"authors\"]}}]',6,1),(106,'2019-08-02 13:21:49.448969','96','A Wanted Man Lee Child  novel',2,'[]',6,1),(107,'2019-08-02 13:22:16.523464','93','Personal Lee Child  novel',2,'[{\"changed\": {\"fields\": [\"authors\"]}}]',6,1),(108,'2019-08-02 13:22:40.299445','95','Never Go Back Lee Child  novel',2,'[{\"changed\": {\"fields\": [\"authors\"]}}]',6,1),(109,'2019-08-11 00:56:55.783706','97','The Hard Way Lee Child  novel',1,'[{\"added\": {}}]',6,1),(110,'2019-08-26 16:54:16.595255','98','The Enemy Lee Child  novel',1,'[{\"added\": {}}]',6,1),(111,'2019-08-26 16:56:09.680236','99','One Shot Lee Child  novel',1,'[{\"added\": {}}]',6,1),(112,'2019-09-07 15:01:44.634131','100','12 rules of life Jordan Peterson  text_book',1,'[{\"added\": {}}]',6,1),(113,'2019-09-09 23:57:31.159817','101','Gone Tomorrow Lee Childs  novel',1,'[{\"added\": {}}]',6,1),(114,'2019-09-10 13:51:49.985436','102','No Middle Name Lee Child  novel',1,'[{\"added\": {}}]',6,1),(115,'2019-10-02 14:01:37.126049','31','Light My Fire The Doors  Pentagons',1,'[{\"added\": {}}]',11,1),(116,'2019-10-02 14:02:15.376933','32','Turn Turn The Byrds  Pentagons',1,'[{\"added\": {}}]',11,1),(117,'2019-10-02 14:03:45.930837','33','Tamborine Man The Byrds  Pentagons',1,'[{\"added\": {}}]',11,1),(118,'2019-10-02 14:05:25.698832','103','Nano Michael Crieghton  novel',1,'[{\"added\": {}}]',6,1),(119,'2019-10-02 14:07:28.919265','104','Sphere Michael Crichton  novel',1,'[{\"added\": {}}]',6,1),(120,'2019-10-02 14:09:44.220843','103','Nano Michael Crieghton  novel',3,'',6,1),(121,'2019-10-02 14:10:24.184100','105','congo Michael Crichton  novel',1,'[{\"added\": {}}]',6,1),(122,'2019-10-02 14:10:55.166047','106','Nano Michael Crichton  novel',1,'[{\"added\": {}}]',6,1),(123,'2019-10-02 14:11:59.394016','107','Disclosure Michael Crichton  novel',1,'[{\"added\": {}}]',6,1),(124,'2019-10-02 14:12:43.237505','108','Timeline Michael Crichton  novel',1,'[{\"added\": {}}]',6,1),(125,'2019-10-02 14:13:00.590532','109','Prey Michael Crichton  novel',1,'[{\"added\": {}}]',6,1),(126,'2019-10-02 14:13:55.002052','110','Next Michael Crichton  novel',1,'[{\"added\": {}}]',6,1),(127,'2019-10-02 14:14:31.742202','111','State of Fear Michael Crichton  novel',1,'[{\"added\": {}}]',6,1),(128,'2019-10-02 14:14:56.807512','112','Micro Michael Crichton  novel',1,'[{\"added\": {}}]',6,1),(129,'2019-10-02 14:15:39.566603','113','Airframe Michael Crichton  novel',1,'[{\"added\": {}}]',6,1),(130,'2019-10-02 14:16:11.378144','114','The Lost World Michael Crichton  novel',1,'[{\"added\": {}}]',6,1),(131,'2019-10-02 14:17:48.643467','115','Rising Sun Michael Crichton  novel',1,'[{\"added\": {}}]',6,1),(132,'2019-10-02 14:20:51.549211','116','12      Rules for Life Jordan B Peterson  text_book',1,'[{\"added\": {}}]',6,1),(133,'2019-10-02 14:21:43.378008','100','12 rules of life Jordan Peterson  text_book',3,'',6,1),(134,'2019-10-06 17:45:54.208907','34','Pushin Too Hard The Seeds  Pentagons',1,'[{\"added\": {}}]',11,1),(135,'2019-10-29 12:48:16.216624','117','61 Hours Lee Childs  novel',1,'[{\"added\": {}}]',6,1),(136,'2019-10-29 12:49:44.503117','117','61 Hours Lee Child  novel',2,'[{\"changed\": {\"fields\": [\"authors\"]}}]',6,1),(137,'2019-10-29 12:50:13.412022','117','61 Hours Lee Child  novel',2,'[]',6,1),(138,'2019-10-29 12:50:39.856047','101','Gone Tomorrow Lee Child  novel',2,'[{\"changed\": {\"fields\": [\"authors\"]}}]',6,1),(139,'2019-10-29 13:06:18.808624','35','All of the day and all of the night Kinks  Pentagons',1,'[{\"added\": {}}]',11,1),(140,'2019-11-03 14:14:19.000230','118','Persuader Lee Child  novel',1,'[{\"added\": {}}]',6,1),(141,'2019-11-29 18:12:24.915079','119','Midnight Line Lee Child  novel',1,'[{\"added\": {}}]',6,1),(142,'2019-12-18 16:43:48.513495','120','Bad Luck Trouble Lee Child  novel',1,'[{\"added\": {}}]',6,1),(143,'2019-12-19 16:44:28.635710','6','wings for all (satire)',2,'[]',10,1),(144,'2019-12-19 17:05:42.192622','8','Orange Not Peach',1,'[{\"added\": {}}]',10,1),(145,'2019-12-19 17:10:08.431427','8','Orange Not Peach',2,'[]',10,1),(146,'2019-12-19 17:30:17.029070','8','Orange Not Peach',2,'[]',10,1),(147,'2019-12-20 15:11:43.944497','8','Orange Not Peach',2,'[]',10,1),(148,'2019-12-20 15:12:38.482199','8','Orange Not Peach(opine)',2,'[{\"changed\": {\"fields\": [\"lesson\"]}}]',10,1),(149,'2019-12-21 18:49:34.971744','8','Orange Not Peach(opine)',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(150,'2019-12-23 14:05:37.277028','9','Tom',1,'[{\"added\": {}}]',10,1),(151,'2019-12-24 03:49:20.056228','9','Tom',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(152,'2019-12-25 14:49:16.344673','9','Tom',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(153,'2019-12-25 23:39:17.967373','3','Jack Reacher series',1,'[{\"added\": {}}]',5,1),(154,'2019-12-26 00:05:49.590232','7','Tony Tony (political)',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(155,'2019-12-26 17:56:04.316726','2','My take on the present time',3,'',7,1),(156,'2019-12-26 18:09:50.327290','1','SOTU speech a home run 2019',2,'[{\"changed\": {\"fields\": [\"story\"]}}]',7,1),(157,'2020-01-03 14:12:30.679500','10','Losing my mind',1,'[{\"added\": {}}]',10,1),(158,'2020-01-03 14:14:16.744888','3','I think about you!',1,'[{\"added\": {}}]',7,1),(159,'2020-01-03 14:20:13.169241','3','I think about you!',3,'',7,1),(160,'2020-01-03 14:32:02.901397','10','Losing my mind (lyrics)',2,'[{\"changed\": {\"fields\": [\"lesson\"]}}]',10,1),(161,'2020-01-03 14:34:32.775832','9','Tom (memories)',2,'[{\"changed\": {\"fields\": [\"lesson\"]}}]',10,1),(162,'2020-01-03 14:35:04.678384','9','Tom (memories)',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(163,'2020-01-03 18:48:45.783765','10','Losing my mind (lyrics)',3,'',10,1),(164,'2020-01-08 15:58:45.317597','121','Worth Dying For Lee Child  novel',1,'[{\"added\": {}}]',6,1),(165,'2020-01-20 21:26:53.664673','11','portrait',1,'[{\"added\": {}}]',10,1),(166,'2020-01-21 04:25:46.554091','11','portrait',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(167,'2020-01-24 21:02:52.218890','11','portrait in courage new',2,'[{\"changed\": {\"fields\": [\"lesson\"]}}]',10,1),(168,'2020-01-28 01:06:31.096031','122','The Affair Lee Child  novel',1,'[{\"added\": {}}]',6,1),(169,'2020-01-28 01:15:00.296705','12','Young',1,'[{\"added\": {}}]',10,1),(170,'2020-01-28 02:27:57.335952','12','Young',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(171,'2020-01-28 16:41:00.866084','12','Young',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(172,'2020-01-29 15:18:34.854734','12','Young',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(173,'2020-02-02 18:39:12.526146','4','Schiff /Nadler duel scheduled',1,'[{\"added\": {}}]',7,1),(174,'2020-02-02 21:56:52.843991','4','Schiff /Nadler duel scheduled',2,'[{\"changed\": {\"fields\": [\"story\"]}}]',7,1),(175,'2020-02-03 17:08:14.987600','13','Scout Motto',1,'[{\"added\": {}}]',10,1),(176,'2020-02-04 03:18:23.176818','13','Scout oath',2,'[{\"changed\": {\"fields\": [\"lesson\", \"exercise\"]}}]',10,1),(177,'2020-02-04 03:20:49.137853','13','Scout law',2,'[{\"changed\": {\"fields\": [\"lesson\", \"exercise\"]}}]',10,1),(178,'2020-02-04 22:43:56.904512','12','Young',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(179,'2020-02-06 22:07:19.085589','2','marypio',1,'[{\"added\": {}}]',3,1),(180,'2020-02-06 22:11:36.772634','2','marypio',2,'[{\"changed\": {\"fields\": [\"user_permissions\", \"last_login\", \"date_joined\"]}}]',3,1),(181,'2020-02-06 22:15:55.074227','2','marypio',2,'[{\"changed\": {\"fields\": [\"is_staff\"]}}]',3,1),(182,'2020-02-06 22:18:36.428589','14','Polosi',1,'[{\"added\": {}}]',10,2),(183,'2020-02-08 15:43:53.129400','13','Scout law',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(184,'2020-02-08 16:04:01.760240','14','Polosi the ripper',2,'[{\"changed\": {\"fields\": [\"lesson\", \"exercise\"]}}]',10,1),(185,'2020-02-08 16:07:03.979914','5','Polosi The  Ripper',1,'[{\"added\": {}}]',7,1),(186,'2020-02-08 16:07:52.840937','14','Polosi the ripper',3,'',10,1),(187,'2020-02-08 17:55:08.352284','5','Polosi The  Ripper',2,'[{\"changed\": {\"fields\": [\"story\"]}}]',7,1),(188,'2020-02-17 04:11:10.172822','123','The Hero Lee Child  novel',1,'[{\"added\": {}}]',6,1),(189,'2020-02-29 14:25:37.310019','11','portrait in courage new',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(190,'2020-03-02 22:24:34.248728','124','The Fallen David Baldacci  mystery',1,'[{\"added\": {}}]',6,1),(191,'2020-03-02 22:26:43.541582','125','Before Bethlehem James Flerltag  novel',1,'[{\"added\": {}}]',6,1),(192,'2020-03-06 15:21:30.474360','126','Without Fail Lee Child  thriller',1,'[{\"added\": {}}]',6,1),(193,'2020-04-07 21:58:47.634112','7','Base of the Mountain',2,'[{\"changed\": {\"fields\": [\"lesson\", \"exercise\"]}}]',10,1),(194,'2020-05-20 01:19:51.437385','1','Article by Stephan Miller',2,'[{\"changed\": {\"fields\": [\"title\", \"text\"]}}]',12,1),(195,'2020-05-20 20:40:57.358032','1','Impeach!',2,'[{\"changed\": {\"fields\": [\"title\", \"text\"]}}]',12,1),(196,'2020-05-20 20:41:28.573612','1','Impeach!',2,'[]',12,1),(197,'2020-05-20 20:44:05.456769','6','impeach impeach',1,'[{\"added\": {}}]',7,1),(198,'2020-05-20 20:45:21.404385','1','Impeach!',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',12,1),(199,'2020-05-20 20:46:52.308572','3','Young!',1,'[{\"added\": {}}]',12,1),(200,'2020-05-20 20:48:23.971925','4','Tom',1,'[{\"added\": {}}]',12,1),(201,'2020-05-20 20:54:04.150785','5','Rivers Edge',1,'[{\"added\": {}}]',12,1),(202,'2020-05-24 18:42:44.645433','6','impeach impeach',2,'[{\"changed\": {\"fields\": [\"story\"]}}]',7,1),(203,'2020-05-29 20:58:45.579294','5','Rivers Edge',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',12,1),(204,'2020-06-07 12:23:58.170594','128','The Giver Lois Lowry  novel',1,'[{\"added\": {}}]',6,1),(205,'2020-06-07 12:24:47.169980','129','The Fix David Baldachi  novel',1,'[{\"added\": {}}]',6,1),(206,'2020-06-07 23:11:44.650569','1','Sf Agustine',1,'[{\"added\": {}}]',13,1),(207,'2020-06-08 13:11:39.403245','1','Young',1,'[{\"added\": {}}]',12,1),(208,'2020-06-08 14:25:02.587048','1','Blast from the future',2,'[{\"changed\": {\"fields\": [\"story\", \"bi_line\"]}}]',7,1),(209,'2020-06-08 14:27:01.490610','1','Blast from the future',2,'[{\"changed\": {\"fields\": [\"journalist\"]}}]',7,1),(210,'2020-06-08 14:28:00.463678','1','Blast from the future',2,'[{\"changed\": {\"fields\": [\"journalist\"]}}]',7,1),(211,'2020-06-08 16:22:03.452540','1','Young',3,'',12,1),(212,'2020-06-09 14:29:18.538874','1','St.  Bernard Church Green  Bay Wi.',2,'[{\"changed\": {\"fields\": [\"description\", \"image\"]}}]',13,1),(213,'2020-06-09 14:31:33.569661','2','St. Phillips Church  Green Bay Wi.',1,'[{\"added\": {}}]',13,1),(214,'2020-06-09 14:44:13.135297','1','Automobile Gallery',1,'[{\"added\": {}}]',14,1),(215,'2020-06-09 14:46:24.646750','2','Krolls East',1,'[{\"added\": {}}]',14,1),(216,'2020-06-11 22:05:12.637140','6','impeach impeach',3,'',7,1),(217,'2020-06-11 22:05:12.645811','5','Polosi The  Ripper',3,'',7,1),(218,'2020-06-11 22:05:12.652961','4','Schiff /Nadler duel scheduled',3,'',7,1),(219,'2020-06-17 02:20:56.794506','1','Skull Dilemma',1,'[{\"added\": {}}]',15,1),(220,'2020-06-17 02:21:48.560877','2','Blast from the Past',1,'[{\"added\": {}}]',15,1),(221,'2020-06-17 02:23:25.631621','3','Base of the Mountain',1,'[{\"added\": {}}]',15,1),(222,'2020-06-17 02:24:34.804395','4','Rivers Edge Journal',1,'[{\"added\": {}}]',15,1),(223,'2020-06-17 02:43:36.495948','3','Bark Chapel Heritage Hill State Park',1,'[{\"added\": {}}]',13,1),(224,'2020-06-17 02:44:55.897288','4','St  Willebord Church',1,'[{\"added\": {}}]',13,1),(225,'2020-06-17 14:11:49.808727','1','Skull Dilemma',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(226,'2020-06-17 14:15:00.258616','1','Skull Dilemma',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(227,'2020-06-23 21:10:46.425531','5','Moravian church at Heritage Hill',1,'[{\"added\": {}}]',13,1),(228,'2020-06-23 21:12:35.981309','3','Cornr Pine and Cherry',1,'[{\"added\": {}}]',14,1),(229,'2020-06-23 21:14:55.475747','4','New stockade structure Heritage  Hill',1,'[{\"added\": {}}]',14,1),(230,'2020-06-23 21:16:50.852926','5','Flats on the Fox',1,'[{\"added\": {}}]',14,1),(231,'2020-06-23 21:19:10.610883','3','Zestys',2,'[{\"changed\": {\"fields\": [\"description\", \"image\"]}}]',14,1),(232,'2020-06-23 23:47:43.064082','4','Rivers Edge Journal',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(233,'2020-06-26 18:45:14.626258','132','The Gemini Contenders Robert Ludlum  novel',1,'[{\"added\": {}}]',6,1),(234,'2020-06-30 20:50:24.237533','3','Base of the Mountain',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(235,'2020-07-09 16:56:06.957144','133','Lords Corruption Kyle Mills  novel',2,'[{\"changed\": {\"fields\": [\"book_title\"]}}]',6,1),(236,'2020-07-17 12:28:43.964651','7','The Berks',1,'[{\"added\": {}}]',7,1),(237,'2020-07-17 12:28:59.031124','1','Blast from the future',3,'',7,1),(238,'2020-07-17 15:06:55.190114','135','The Bourne Deception Robert Ludlum  thriller',1,'[{\"added\": {}}]',6,1),(239,'2020-07-17 15:09:04.331759','1','Presidential Election 2020',1,'[{\"added\": {}}]',17,1),(240,'2020-07-17 15:10:18.835155','1','Donald Trump',1,'[{\"added\": {}}]',18,1),(241,'2020-07-17 15:11:46.991427','2','Joe Biden',1,'[{\"added\": {}}]',18,1),(242,'2020-07-19 15:18:18.707877','7','The Berks',3,'',7,1),(243,'2020-07-19 15:19:41.067495','8','Wear your MAGA hats',1,'[{\"added\": {}}]',7,1),(244,'2020-07-19 15:20:58.383626','8','Wear your MAGA hats',2,'[{\"changed\": {\"fields\": [\"journalist\"]}}]',7,1),(245,'2020-07-19 15:47:08.798481','9','The Wall',1,'[{\"added\": {}}]',7,1),(246,'2020-07-19 15:48:28.709771','5','Young',1,'[{\"added\": {}}]',15,1),(247,'2020-07-19 20:53:06.145745','9','The Wall',2,'[{\"changed\": {\"fields\": [\"story\"]}}]',7,1),(248,'2020-07-19 21:01:50.099217','10','Orange is My Favorite Color',1,'[{\"added\": {}}]',7,1),(249,'2020-07-19 21:04:52.646211','10','Orange is My Favorite Color',2,'[{\"changed\": {\"fields\": [\"story\"]}}]',7,1),(250,'2020-08-26 15:14:20.144318','6','Altar in Bark Chapel',1,'[{\"added\": {}}]',13,1),(251,'2020-08-26 15:14:50.516928','6','Altar in Bark Chapel',2,'[]',13,1),(252,'2020-08-26 15:15:38.349157','5','Moravian church at Heritage Hill',3,'',13,1),(253,'2020-08-26 15:15:38.357301','4','St  Willebord Church',3,'',13,1),(254,'2020-08-26 15:16:50.275353','7','Saint Phillips Church',1,'[{\"added\": {}}]',13,1),(255,'2020-08-26 15:17:09.906541','7','Saint Phillips Church',3,'',13,1),(256,'2020-08-26 15:18:59.945941','8','Moravian Church Heritage Hill',1,'[{\"added\": {}}]',13,1),(257,'2020-08-26 15:20:22.422458','9','Mother of Good Help shrine',1,'[{\"added\": {}}]',13,1),(258,'2020-09-01 20:18:20.793860','82','Emacs bantam press  text_book',2,'[{\"changed\": {\"fields\": [\"comment\", \"image\"]}}]',6,1),(259,'2020-09-02 01:39:54.726179','139','Yarns Tristen Jones  novel',2,'[{\"changed\": {\"fields\": [\"comment\", \"image\"]}}]',6,1),(260,'2020-09-02 01:40:59.676770','136','The Incredible Voyage Tristen Jones  novel',2,'[{\"changed\": {\"fields\": [\"comment\", \"image\"]}}]',6,1),(261,'2020-09-02 01:48:16.890117','64','Lancelot Walker Percy  novel',2,'[{\"changed\": {\"fields\": [\"comment\", \"image\"]}}]',6,1),(262,'2020-09-02 01:48:17.725901','64','Lancelot Walker Percy  novel',2,'[{\"changed\": {\"fields\": [\"comment\", \"image\"]}}]',6,1),(263,'2020-09-02 01:50:43.698863','64','Lancelot Walker Percy  novel',2,'[]',6,1),(264,'2020-09-02 01:51:28.549962','63','Love in the Ruins Walker Percy  novel',2,'[{\"changed\": {\"fields\": [\"comment\", \"image\"]}}]',6,1),(265,'2020-09-02 12:09:26.621060','6','Slow Train',1,'[{\"added\": {}}]',15,1),(266,'2020-09-02 12:10:20.284562','7','Serve Somebody',1,'[{\"added\": {}}]',15,1),(267,'2020-09-02 12:16:00.457049','7','Serve Somebody lyrics',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',15,1),(268,'2020-09-02 12:16:22.135617','6','Slow Train lyrics',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',15,1),(269,'2020-09-02 12:16:52.069556','5','Young lyrics',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',15,1),(270,'2020-09-03 14:02:19.365500','8','It\'s ok NOT!',1,'[{\"added\": {}}]',15,1),(271,'2020-09-03 14:03:32.856894','9','Catholics??',1,'[{\"added\": {}}]',15,1),(272,'2020-09-03 23:23:02.865641','64','Lancelot Walker Percy  novel',2,'[]',6,1),(273,'2020-09-18 15:11:59.385111','141','Running Blind Lee Child  novel',1,'[{\"added\": {}}]',6,1),(274,'2020-09-29 16:58:30.114322','137','To Venture Futher Tris  novel',3,'',6,1),(275,'2020-09-29 16:58:54.884500','64','Lancelot Walker Percy  novel',2,'[]',6,1),(276,'2020-09-29 17:00:27.022680','60','The Last Gentleman Walker Percy  novel',2,'[{\"changed\": {\"fields\": [\"comment\", \"image\"]}}]',6,1),(277,'2020-09-29 17:00:47.023477','60','The Last Gentleman Walker Percy  novel',2,'[]',6,1),(278,'2020-09-29 17:00:50.473089','60','The Last Gentleman Walker Percy  novel',2,'[]',6,1),(279,'2020-09-29 17:00:55.076546','60','The Last Gentleman Walker Percy  novel',2,'[]',6,1),(280,'2020-09-29 17:01:51.600702','62','The Moviegoer Walker Percy  novel',2,'[{\"changed\": {\"fields\": [\"comment\", \"image\"]}}]',6,1),(281,'2020-10-01 11:00:34.644715','10','Spartacus',1,'[{\"added\": {}}]',15,1),(282,'2020-10-03 12:56:58.556774','142','Dead Land Sarah Paretski  novel',1,'[{\"added\": {}}]',6,1),(283,'2020-10-03 13:02:00.783070','142','Dead Land Sarah Paretski  novel',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',6,1),(284,'2020-10-03 13:34:00.824378','11','Blackshirts',1,'[{\"added\": {}}]',15,1),(285,'2020-10-04 01:26:14.253263','1','Todo object (1)',1,'[{\"added\": {}}]',16,1),(286,'2020-10-05 15:55:45.425026','12','I knew it!!!!!!',1,'[{\"added\": {}}]',15,1),(287,'2020-10-09 13:25:32.655464','13','Dog faced pony rider',1,'[{\"added\": {}}]',15,1),(288,'2020-10-09 13:27:40.226125','13','Dog faced pony soldier',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',15,1),(289,'2020-10-14 12:58:40.053426','10','Brush Back Sarah Paretsky  mystery',2,'[{\"changed\": {\"fields\": [\"comment\", \"image\"]}}]',6,1),(290,'2020-10-14 13:00:29.574224','142','Dead Land Sarah Paretski  novel',2,'[{\"changed\": {\"fields\": [\"comment\", \"image\"]}}]',6,1),(291,'2020-10-14 13:01:40.293519','10','Brush Back Sarah Paretsky  mystery',2,'[{\"changed\": {\"fields\": [\"comment\"]}}]',6,1),(292,'2020-10-14 13:02:38.756442','68','Bitter Medicine Sarah Paretsky  mystery',2,'[{\"changed\": {\"fields\": [\"comment\", \"image\"]}}]',6,1),(293,'2020-10-14 13:04:01.801351','70','Blacklist Sarah Paretsky  mystery',2,'[{\"changed\": {\"fields\": [\"comment\"]}}]',6,1),(294,'2020-10-14 13:04:32.304420','67','Body Work Sarah Paretsky  mystery',2,'[{\"changed\": {\"fields\": [\"comment\", \"image\"]}}]',6,1),(295,'2020-10-14 13:05:09.448534','22','Breakdown Sarah Paretsky  mystery',2,'[{\"changed\": {\"fields\": [\"comment\", \"image\"]}}]',6,1),(296,'2020-10-16 20:16:33.463365','14','You got him!!!',1,'[{\"added\": {}}]',15,1),(297,'2020-10-23 16:24:48.497261','15','Corn Pops Script',1,'[{\"added\": {}}]',15,1),(298,'2020-10-23 16:31:31.750373','15','Corn Pops Script',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(299,'2020-10-27 13:39:02.217080','10','Orange is My Favorite Color',2,'[{\"changed\": {\"fields\": [\"story\"]}}]',7,1),(300,'2020-10-28 14:40:01.251672','11','Packers to change name',1,'[{\"added\": {}}]',7,1),(301,'2020-10-28 14:41:27.407198','11','Packers to change name',2,'[{\"changed\": {\"fields\": [\"story\"]}}]',7,1),(302,'2020-10-28 14:44:08.251507','11','Packers to change name',2,'[{\"changed\": {\"fields\": [\"story\"]}}]',7,1),(303,'2020-10-28 22:47:25.187310','11','Packers to change name',2,'[{\"changed\": {\"fields\": [\"story\"]}}]',7,1),(304,'2020-10-28 22:48:14.854676','12','Schumer',1,'[{\"added\": {}}]',7,1),(305,'2020-10-28 23:06:20.964086','9','The Wall',2,'[{\"changed\": {\"fields\": [\"story\"]}}]',7,1),(306,'2020-10-28 23:10:08.214507','9','The Wall',2,'[{\"changed\": {\"fields\": [\"story\"]}}]',7,1),(307,'2020-10-28 23:15:11.854780','11','Packers to change name',2,'[{\"changed\": {\"fields\": [\"story\"]}}]',7,1),(308,'2020-11-01 16:45:16.183646','13','Justice Barret',1,'[{\"added\": {}}]',7,1),(309,'2020-11-01 17:29:15.362312','14','The Choice',1,'[{\"added\": {}}]',7,1),(310,'2020-11-01 17:30:29.155770','15','The Choice',1,'[{\"added\": {}}]',7,1),(311,'2020-11-01 17:31:27.630451','14','The Choice',3,'',7,1),(312,'2020-11-01 18:05:06.448326','15','The Choice',2,'[{\"changed\": {\"fields\": [\"story\"]}}]',7,1),(313,'2020-11-03 11:46:30.307871','15','Corn Pops Script',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(314,'2020-11-03 11:47:41.088323','3','Base of the Mountain',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(315,'2020-11-03 13:21:08.529946','16','\"Prop him up\"',1,'[{\"added\": {}}]',7,1),(316,'2020-11-03 13:23:04.062713','17','Blast from the Past',1,'[{\"added\": {}}]',7,1),(317,'2020-11-03 13:26:15.171391','11','Packers to change name',2,'[{\"changed\": {\"fields\": [\"story\"]}}]',7,1),(318,'2020-11-03 13:32:32.880462','18','Corn Pops',1,'[{\"added\": {}}]',7,1),(319,'2020-11-07 13:40:43.560846','134','Finding the Dragon Lady Monique Brinson Demery  novel',2,'[{\"changed\": {\"fields\": [\"comment\", \"image\"]}}]',6,1),(320,'2020-11-09 00:19:19.598379','82','Emacs bantam press  text_book',3,'',6,1),(321,'2020-11-09 00:20:29.700317','117','61 Hours Lee Child  novel',2,'[{\"changed\": {\"fields\": [\"comment\", \"image\"]}}]',6,1),(322,'2020-11-10 14:48:19.135420','16','Whoa!!!!!!!',1,'[{\"added\": {}}]',15,1),(323,'2020-11-10 14:50:40.541968','6','Bandstand Saint James Park',1,'[{\"added\": {}}]',14,1),(324,'2020-11-10 14:50:44.289312','7','Bandstand Saint James Park',1,'[{\"added\": {}}]',14,1),(325,'2020-11-10 14:51:23.926039','7','Bandstand Saint James Park',3,'',14,1),(326,'2020-11-10 14:53:11.495552','8','Lake View porch',1,'[{\"added\": {}}]',14,1),(327,'2020-11-13 00:42:51.624748','9','Security wall around Bay Beach park',1,'[{\"added\": {}}]',14,1),(328,'2020-11-13 13:42:18.193377','10','Chapel Heritage Hill Belgian Farm',1,'[{\"added\": {}}]',13,1),(329,'2020-11-13 14:18:38.882878','10','Chapel Heritage Hill Belgian Farm',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',13,1),(330,'2020-11-13 18:09:06.640446','1','The Pullium Plant',1,'[{\"added\": {}}]',19,1),(331,'2020-11-13 18:11:12.087576','2','Transportation Intersection',1,'[{\"added\": {}}]',19,1),(332,'2020-11-13 18:22:43.241325','3','5417',1,'[{\"added\": {}}]',19,1),(333,'2020-11-13 18:22:46.098841','4','5417',1,'[{\"added\": {}}]',19,1),(334,'2020-11-13 18:23:58.466007','5','Grafiti number one',1,'[{\"added\": {}}]',19,1),(335,'2020-11-13 18:27:42.922155','6','Graffiti number two',1,'[{\"added\": {}}]',19,1),(336,'2020-11-13 18:29:44.980238','4','5417',3,'',19,1),(337,'2020-11-13 18:30:53.892520','7','Graffiti number five',1,'[{\"added\": {}}]',19,1),(338,'2020-11-13 18:30:57.231626','8','Graffiti number five',1,'[{\"added\": {}}]',19,1),(339,'2020-11-13 18:31:30.871228','6','Graffiti number two',2,'[]',19,1),(340,'2020-11-13 18:31:40.323970','5','Grafiti number one',2,'[]',19,1),(341,'2020-11-13 18:33:32.105565','8','Graffiti number five',3,'',19,1),(342,'2020-11-13 18:34:29.053013','7','Graffiti number five',3,'',19,1),(343,'2020-11-13 18:35:33.856849','9','Graffiti number six',1,'[{\"added\": {}}]',19,1),(344,'2020-11-14 00:01:51.337656','1','Grain elevators',1,'[{\"added\": {}}]',20,1),(345,'2020-11-14 00:03:50.126646','2','Vintage Passenger car',1,'[{\"added\": {}}]',20,1),(346,'2020-11-14 00:05:17.191190','3','Quarry',1,'[{\"added\": {}}]',20,1),(347,'2020-11-14 17:33:11.525385','1','Automobile Gallery',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',14,1),(348,'2020-11-14 17:36:09.684290','5','Old Library across from Courthouse',2,'[{\"changed\": {\"fields\": [\"description\", \"image\"]}}]',14,1),(349,'2020-11-14 17:39:03.525734','2','Beautiful home in Astor Neighborhood',2,'[{\"changed\": {\"fields\": [\"description\", \"image\"]}}]',14,1),(350,'2020-11-14 17:45:18.752029','4','Industrial area',1,'[{\"added\": {}}]',20,1),(351,'2020-11-14 17:46:23.289245','5','old town',1,'[{\"added\": {}}]',20,1),(352,'2020-11-14 17:47:23.730192','6','Fill her up',1,'[{\"added\": {}}]',20,1),(353,'2020-11-14 17:48:18.740889','7','Trainmaster',1,'[{\"added\": {}}]',20,1),(354,'2020-11-14 18:21:06.515943','8','Diner',1,'[{\"added\": {}}]',20,1),(355,'2020-11-14 21:02:03.057767','1','tug',1,'[{\"added\": {}}]',21,1),(356,'2020-11-14 21:04:14.623209','2','river work',1,'[{\"added\": {}}]',21,1),(357,'2020-11-14 21:04:16.726108','3','river work',1,'[{\"added\": {}}]',21,1),(358,'2020-11-14 21:05:05.395586','4','shipping lane',1,'[{\"added\": {}}]',21,1),(359,'2020-11-14 21:06:39.792114','5','boating for Trump',1,'[{\"added\": {}}]',21,1),(360,'2020-11-14 21:08:05.792373','6','night work',1,'[{\"added\": {}}]',21,1),(361,'2020-11-14 21:09:21.913914','7','work now finished',1,'[{\"added\": {}}]',21,1),(362,'2020-11-14 21:12:22.362329','8','fly over',1,'[{\"added\": {}}]',21,1),(363,'2020-11-14 21:14:12.631865','3','river work',3,'',21,1),(364,'2020-11-14 21:16:03.436132','7','snow tree',2,'[{\"changed\": {\"fields\": [\"description\", \"image\"]}}]',21,1),(365,'2020-11-14 23:05:49.332858','19','MAGA march',1,'[{\"added\": {}}]',7,1),(366,'2021-01-15 22:51:06.697022','10','Bike Rider',1,'[{\"added\": {}}]',14,1),(367,'2021-01-15 23:10:20.948196','143','Dead Land Sarah Paretsky  novel',1,'[{\"added\": {}}]',6,1),(368,'2021-01-15 23:11:43.012554','143','Dead Land Sarah Paretsky  novel',3,'',6,1),(369,'2021-01-30 13:08:25.988232','17','Grandma\'s farm',1,'[{\"added\": {}}]',15,1),(370,'2021-02-17 13:45:02.678293','144','All Things Bright and Beautiful James Herriot  classics',1,'[{\"added\": {}}]',6,1),(371,'2021-02-17 13:47:27.538762','145','All Creatures Great and Small James Herriot  classics',1,'[{\"added\": {}}]',6,1),(372,'2021-02-17 13:50:42.192027','146','All things Wise and Wonderful James Herriot  novel',1,'[{\"added\": {}}]',6,1),(373,'2021-03-11 03:41:38.141856','1','Modigliani',1,'[{\"added\": {}}]',22,1),(374,'2021-03-12 17:20:20.861700','1','Modigliani',3,'',22,1),(375,'2021-03-12 17:21:30.404199','2','group',1,'[{\"added\": {}}]',22,1),(376,'2021-03-12 17:22:54.474483','3','The Diver',1,'[{\"added\": {}}]',22,1),(377,'2021-03-12 17:23:40.498322','4','Cal on ice',1,'[{\"added\": {}}]',22,1),(378,'2021-03-12 17:25:03.527424','5','Mr Big',1,'[{\"added\": {}}]',22,1),(379,'2021-03-12 17:25:59.627154','6','Friend',1,'[{\"added\": {}}]',22,1),(380,'2021-03-12 17:29:38.375304','6','Hi Neighbor',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',22,1),(381,'2021-03-22 14:04:27.816056','147','The Sentinel Lee Child  novel',1,'[{\"added\": {}}]',6,1),(382,'2021-04-28 23:21:58.961015','148','Crossers Phillip Caputo  novel',1,'[{\"added\": {}}]',6,1),(383,'2021-04-28 23:23:41.936722','149','Invisible Andrew Grant  novel',1,'[{\"added\": {}}]',6,1),(384,'2021-04-28 23:26:18.785109','150','Painting Portraits and Figures in Watercolor Mary Whyte  text_book',1,'[{\"added\": {}}]',6,1),(385,'2021-04-28 23:27:44.844764','151','Pen and Ink Drawing: A Simple Guide Alphonso Dunn  text_book',1,'[{\"added\": {}}]',6,1),(386,'2021-05-21 19:55:37.133418','152','The Voyage Phillip Caputo  novel',1,'[{\"added\": {}}]',6,1),(387,'2021-07-03 11:23:55.086631','153','The Secret Messenger Mandy Robotham  novel',1,'[{\"added\": {}}]',6,1),(388,'2021-08-05 11:49:40.865751','7','Girl',1,'[{\"added\": {}}]',22,1),(389,'2021-08-08 00:16:44.459560','7','Girl',3,'',22,1),(390,'2021-08-08 00:16:44.471701','6','Hi Neighbor',3,'',22,1),(391,'2021-08-08 00:16:44.480369','2','group',3,'',22,1),(392,'2021-08-08 00:18:23.853777','8','young boy',1,'[{\"added\": {}}]',22,1),(393,'2021-08-08 00:19:44.033309','9','young woman',1,'[{\"added\": {}}]',22,1),(394,'2021-08-08 00:21:29.236106','10','Vietnam woman',1,'[{\"added\": {}}]',22,1),(395,'2021-08-17 18:11:48.947350','154','The Secret Messenger Mandy Robotham  novel',1,'[{\"added\": {}}]',6,1),(396,'2021-08-17 18:14:12.427054','153','The Secret Messenger Mandy Robotham  novel',3,'',6,1),(397,'2021-10-23 22:42:38.648411','155','Nobel Beginnings L.T. Ryan  novel',1,'[{\"added\": {}}]',6,1),(398,'2021-11-17 12:30:01.354054','2','Blast from the Past',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(399,'2021-11-17 21:55:54.892701','2','Blast from the Past',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(400,'2021-11-22 22:09:33.680099','2','Blast from the Past',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(401,'2021-11-23 13:12:19.253109','2','Blast from the Past',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(402,'2021-11-29 23:50:43.407541','3','The Diver',3,'',22,1),(403,'2021-11-29 23:52:26.359860','11','Characters of \"Blast from the Past\"',1,'[{\"added\": {}}]',22,1),(404,'2021-12-03 02:27:38.557078','2','Blast from the Past',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(405,'2021-12-07 14:13:39.347989','2','Blast from the Past',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(406,'2021-12-12 17:13:32.414075','3','Base of the Mountain',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(407,'2021-12-12 17:18:14.042157','3','Base of the Mountain',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(408,'2022-01-03 13:55:25.515086','156','American Assasin Vince Flynn  thriller',1,'[{\"added\": {}}]',6,1),(409,'2022-01-27 22:27:02.770236','157','The Third Option Vince Flynn  novel',1,'[{\"added\": {}}]',6,1),(410,'2022-01-27 22:28:32.088728','158','Kill Shot Vince Flynn  novel',1,'[{\"added\": {}}]',6,1),(411,'2022-01-27 22:29:23.349332','159','Transfer of Power Vince Flynn  novel',1,'[{\"added\": {}}]',6,1),(412,'2022-02-12 16:23:52.128512','12','Nice shady spot',1,'[{\"added\": {}}]',22,1),(413,'2022-02-12 16:31:01.252900','12','Nice shady spot',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',22,1),(414,'2022-02-12 16:34:38.526954','12','Nice shady spot',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',22,1),(415,'2022-02-12 16:39:35.093423','12','Nice shady spot',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',22,1),(416,'2022-02-12 16:42:26.735686','12','Nice shady spot',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',22,1),(417,'2022-02-12 16:43:25.099445','12','Nice shady spot',3,'',22,1),(418,'2022-02-13 00:13:11.228464','13','nice and shady',1,'[{\"added\": {}}]',22,1),(419,'2022-04-03 11:53:26.942449','2','Blast from the Past',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(420,'2022-10-19 13:59:53.321687','160','Vanished \"Nick Heller\" Joseph Finder  novel',1,'[{\"added\": {}}]',6,1),(421,'2022-11-07 22:18:00.691370','161','Buried Secrets Joseph Finder  mystery',1,'[{\"added\": {}}]',6,1),(422,'2022-11-22 23:32:03.299097','162','Guilty Minds Joseph Finder  novel',1,'[{\"added\": {}}]',6,1),(423,'2022-11-22 23:32:52.660403','163','House on Fire Joseph Finder  novel',1,'[{\"added\": {}}]',6,1),(424,'2022-12-09 16:30:13.586889','164','The Fixer Joseph Finder  novel',1,'[{\"added\": {}}]',6,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (8,'admin','logentry'),(1,'auth','group'),(2,'auth','permission'),(3,'auth','user'),(11,'band','bandsongs'),(5,'blog','blog_post'),(12,'blog','post'),(6,'book','mybooksread'),(4,'contenttypes','contenttype'),(10,'home','home'),(20,'horailroad','horailroad'),(14,'more','more'),(7,'news','news'),(22,'paintings','paintings'),(13,'photos','photos'),(18,'polls','choice'),(17,'polls','question'),(19,'railroad','railroad'),(21,'river','river'),(9,'sessions','session'),(15,'stories','stories'),(16,'todo','todo');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'book','0001_initial','2019-02-03 03:31:54.237599'),(2,'book','0002_newsstory','2019-02-03 03:31:55.509433'),(3,'book','0003_delete_newsstory','2019-02-03 03:31:55.562790'),(4,'contenttypes','0001_initial','2019-02-03 03:32:35.977634'),(5,'auth','0001_initial','2019-02-03 03:32:44.099975'),(6,'blog','0001_initial','2019-02-03 03:32:46.459193'),(7,'blog','0002_auto_20190116_2041','2019-02-03 03:32:46.634946'),(8,'news','0001_initial','2019-02-03 03:33:07.760743'),(9,'news','0002_auto_20190119_2145','2019-02-03 03:33:07.796925'),(10,'admin','0001_initial','2019-02-03 03:43:34.669747'),(11,'admin','0002_logentry_remove_auto_add','2019-02-03 03:43:34.688440'),(12,'admin','0003_logentry_add_action_flag_choices','2019-02-03 03:43:34.705811'),(13,'contenttypes','0002_remove_content_type_name','2019-02-03 03:43:34.861947'),(14,'auth','0002_alter_permission_name_max_length','2019-02-03 03:43:34.911800'),(15,'auth','0003_alter_user_email_max_length','2019-02-03 03:43:35.000689'),(16,'auth','0004_alter_user_username_opts','2019-02-03 03:43:35.019813'),(17,'auth','0005_alter_user_last_login_null','2019-02-03 03:43:35.069449'),(18,'auth','0006_require_contenttypes_0002','2019-02-03 03:43:35.076339'),(19,'auth','0007_alter_validators_add_error_messages','2019-02-03 03:43:35.092643'),(20,'auth','0008_alter_user_username_max_length','2019-02-03 03:43:35.144266'),(21,'auth','0009_alter_user_last_name_max_length','2019-02-03 03:43:35.196085'),(22,'sessions','0001_initial','2019-02-03 03:43:36.136311'),(23,'home','0001_initial','2019-02-06 16:52:33.987907'),(24,'book','0004_auto_20190520_1223','2019-05-20 17:24:07.332812'),(25,'band','0001_initial','2019-05-20 18:03:39.967613'),(26,'auth','0010_alter_group_name_max_length','2020-05-14 20:34:52.401122'),(27,'auth','0011_update_proxy_permissions','2020-05-14 20:34:52.421075'),(28,'blog','0002_auto_20200321_2000','2020-05-14 20:34:52.444341'),(29,'blog','0003_auto_20200514_1819','2020-05-14 23:20:00.209808'),(30,'blog','0004_auto_20200515_0956','2020-05-15 14:57:34.525723'),(31,'blog','0003_auto_20200514_2242','2020-06-07 22:16:15.392433'),(32,'blog','0004_auto_20200602_0031','2020-06-07 22:16:23.711189'),(33,'blog','0005_merge_20200607_1715','2020-06-07 22:16:23.761889'),(34,'more','0001_initial','2020-06-07 22:16:27.070979'),(35,'more','0002_auto_20200522_2306','2020-06-07 22:16:30.226049'),(36,'more','0003_auto_20200530_2245','2020-06-07 22:16:30.282980'),(37,'more','0004_auto_20200602_0031','2020-06-07 22:16:30.366645'),(38,'more','0005_remove_more_published_date','2020-06-07 22:16:30.487194'),(39,'photos','0001_initial','2020-06-07 22:16:35.168844'),(40,'photos','0002_remove_photos_published_date','2020-06-07 22:16:35.213609'),(41,'blog','0006_auto_20200616_2314','2020-06-16 23:15:26.905050'),(42,'stories','0001_initial','2020-06-17 02:15:03.780767'),(43,'stories','0002_auto_20200613_2123','2020-06-17 02:15:03.831666'),(44,'blog','0006_auto_20200617_2203','2020-07-17 14:53:53.859197'),(45,'blog','0007_merge_20200717_1453','2020-07-17 14:53:53.866387'),(46,'news','0003_auto_20200618_1902','2020-07-17 14:53:53.939352'),(47,'news','0004_auto_20200618_1949','2020-07-17 14:53:53.947715'),(48,'polls','0001_initial','2020-07-17 15:01:42.284632'),(49,'todo','0001_initial','2020-07-17 15:03:10.917573'),(50,'book','0002_mybooksread_image','2020-08-31 22:06:31.582896'),(51,'book','0003_auto_20200813_1150','2020-08-31 22:06:32.937720'),(52,'book','0004_auto_20200813_1803','2020-08-31 22:06:33.035808'),(53,'book','0005_auto_20200813_2336','2020-08-31 22:06:33.138052'),(54,'book','0006_auto_20200814_0026','2020-08-31 22:06:33.349575'),(55,'railroad','0001_initial','2020-11-13 17:03:48.666034'),(56,'horailroad','0001_initial','2020-11-13 23:57:33.429666'),(57,'river','0001_initial','2020-11-14 20:59:36.141084'),(58,'paintings','0001_initial','2021-03-10 20:26:25.760841');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0aazebn7mzmank1aslq3aku6za541emy','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-01-14 14:25:21.811459'),('0gxho98ru7a0aezs37fkszy0pp4nrsro','ZjEyMjEwODRjYjJhNWYyNDFmMTFjNWU2YmMyZTIwN2M5ZmViMjUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWM3ZmQ2N2I0YWFjZGRlMWI3OTQwMTdhODllYjU2MzBiYmEwMzcwIn0=','2020-10-17 12:54:35.463609'),('0tjahuhquo7tg842i5p85dr0mb09x0b6','ZjEyMjEwODRjYjJhNWYyNDFmMTFjNWU2YmMyZTIwN2M5ZmViMjUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWM3ZmQ2N2I0YWFjZGRlMWI3OTQwMTdhODllYjU2MzBiYmEwMzcwIn0=','2021-08-19 11:32:22.973397'),('1mdm4p1zh07pv5lhpx1dc8zuhlyhyl1u','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-01-03 15:06:12.692191'),('1ot3c6cjyioyujem3bsa23k98lssqn1r','ZjEyMjEwODRjYjJhNWYyNDFmMTFjNWU2YmMyZTIwN2M5ZmViMjUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWM3ZmQ2N2I0YWFjZGRlMWI3OTQwMTdhODllYjU2MzBiYmEwMzcwIn0=','2022-11-02 13:58:03.553711'),('1xzi128vl451xk0hnogmz7udznewlrxy','ZjEyMjEwODRjYjJhNWYyNDFmMTFjNWU2YmMyZTIwN2M5ZmViMjUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWM3ZmQ2N2I0YWFjZGRlMWI3OTQwMTdhODllYjU2MzBiYmEwMzcwIn0=','2020-09-09 15:11:23.094734'),('21izh6yyqlujft8xvlsec1vc6023yej6','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-03-02 04:10:34.838109'),('24hizktkzerhrj7u17o9skoankjap7xg','ZjEyMjEwODRjYjJhNWYyNDFmMTFjNWU2YmMyZTIwN2M5ZmViMjUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWM3ZmQ2N2I0YWFjZGRlMWI3OTQwMTdhODllYjU2MzBiYmEwMzcwIn0=','2020-10-30 20:14:24.398461'),('278ebzcqwe5cs6shdf24t68dpdnn3f2j','Zjk1MzZmODkwOGVkNDllNmYzZmZjYTQxMzE0YTJlMDdkMWE1MTNkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MzExMDJjODhlZWJlYjEwOTI5ZjVhYmQ2Njg4NzYxOTRiZGVlMmIwIn0=','2020-06-01 21:44:25.879146'),('2c82q9p2cyqu6le5dbuxl4cxxot1p1wu','ODNlNDY2YjdhMGNkMzg5OWVhZmM0MDI3MGZiMTdlN2YyYzU1NjU1NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQyNzU0MmRhYmU1YTgzOWZkZGE3NzU4MmEwMDQxNGMzNjdiYTc0ODUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2020-02-20 22:16:47.442829'),('2ejphffc26kdywjbpjgh5u4iffdqftiv','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-02-26 18:49:48.636668'),('332mhdtxx749gwgy49rcuc3ohrq8p7pt','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-11-17 14:13:11.450804'),('3a0fyenedkabi7fizzesa0a4xl7f5886','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-11-12 12:46:23.889936'),('3td6efl8fp3pdk3oo0l7ykarjxdvkf9v','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-08-25 00:56:10.631115'),('4j0h3dffvfh0ujv37hx9eqsvbn75kw0a','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-01-02 16:39:55.820633'),('4jrohhf88jx358fq3q6ftyuvqej0l4p3','ZjEyMjEwODRjYjJhNWYyNDFmMTFjNWU2YmMyZTIwN2M5ZmViMjUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWM3ZmQ2N2I0YWFjZGRlMWI3OTQwMTdhODllYjU2MzBiYmEwMzcwIn0=','2022-11-21 22:15:55.640509'),('4vb4yq7qa9xtkcnt96xaogn5ihj012ns','ZjEyMjEwODRjYjJhNWYyNDFmMTFjNWU2YmMyZTIwN2M5ZmViMjUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWM3ZmQ2N2I0YWFjZGRlMWI3OTQwMTdhODllYjU2MzBiYmEwMzcwIn0=','2021-03-25 03:39:39.186186'),('5l173itjy0luwzaeam3kipuol67m3bq5','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-04-20 23:45:05.362009'),('5p2bela1vubbuos8osop8g3m7issbca1','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-02-07 21:01:29.290351'),('5ywk6kkoz5cmlak5vn6q00lvczgbibg9','Zjk1MzZmODkwOGVkNDllNmYzZmZjYTQxMzE0YTJlMDdkMWE1MTNkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MzExMDJjODhlZWJlYjEwOTI5ZjVhYmQ2Njg4NzYxOTRiZGVlMmIwIn0=','2020-06-01 19:22:42.633886'),('6v8jov6iwuqz35fyn97rvcnce4yi8ojc','ZjEyMjEwODRjYjJhNWYyNDFmMTFjNWU2YmMyZTIwN2M5ZmViMjUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWM3ZmQ2N2I0YWFjZGRlMWI3OTQwMTdhODllYjU2MzBiYmEwMzcwIn0=','2021-02-13 13:06:28.716208'),('785muxpkn76bd014g3i0rfjadplkydgj','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-03-15 23:32:44.207357'),('7giadnbx6jdi68bsg8rl5y1gxgw3apm7','ZGM0Y2Y0YWM1NmYzODhkZmUyMzcwZmE0N2MwZmU1MDMzYWU1NDI0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NzNhY2UxMWNmYzRlMDJjOTczMTliYWFjOTYyNjcxNjk4NjRjMGNjIn0=','2020-07-14 20:47:44.539324'),('7ozb34onmrjqzsx3lacah6vck5x4ft93','ODNlNDY2YjdhMGNkMzg5OWVhZmM0MDI3MGZiMTdlN2YyYzU1NjU1NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQyNzU0MmRhYmU1YTgzOWZkZGE3NzU4MmEwMDQxNGMzNjdiYTc0ODUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2020-02-20 22:16:36.421259'),('8gjkb465y0mgzklt7l7skgao0qmq809r','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-01-01 16:42:49.011255'),('8l9wlfv0neage2cy6im65v6urpu8fvj9','Zjk1MzZmODkwOGVkNDllNmYzZmZjYTQxMzE0YTJlMDdkMWE1MTNkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MzExMDJjODhlZWJlYjEwOTI5ZjVhYmQ2Njg4NzYxOTRiZGVlMmIwIn0=','2020-05-29 16:14:57.193198'),('8tbts7wvd0m0kk01z2lag04qb5dikwdc','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-03-20 15:19:44.584388'),('8xo1ijmouqj4wqa05cgx5sx29mn7cprl','Zjk1MzZmODkwOGVkNDllNmYzZmZjYTQxMzE0YTJlMDdkMWE1MTNkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MzExMDJjODhlZWJlYjEwOTI5ZjVhYmQ2Njg4NzYxOTRiZGVlMmIwIn0=','2020-06-03 20:39:16.621822'),('9581lxlmhql78zx2invntexlo13mdjd3','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-07-02 20:14:46.321251'),('9us6p2p1iqnnygprw8r1rp2n7uvnlgp5','ZjEyMjEwODRjYjJhNWYyNDFmMTFjNWU2YmMyZTIwN2M5ZmViMjUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWM3ZmQ2N2I0YWFjZGRlMWI3OTQwMTdhODllYjU2MzBiYmEwMzcwIn0=','2021-11-06 22:40:39.162617'),('a1rj2704skpqxcctamb62i6uxe73b38i','ZGM0Y2Y0YWM1NmYzODhkZmUyMzcwZmE0N2MwZmU1MDMzYWU1NDI0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NzNhY2UxMWNmYzRlMDJjOTczMTliYWFjOTYyNjcxNjk4NjRjMGNjIn0=','2020-07-14 20:47:44.395457'),('ahbyxfrup8caok9t31f65vhaxtj9pjh9','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-09-09 16:53:35.929269'),('apthofdyf6dlrtxjy0hd989tgnlsa18y','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-02-11 16:38:24.103881'),('bb4oj17q3d0e2o0to6ohb69beutkmhq7','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-01-17 18:48:20.902057'),('bw2zlgoh8cqnoc6a5mnldyty7yv1angm','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-10-16 14:00:26.340010'),('c8mztt88rcqzr7jtyoytz8sbu1ffb9u0','ZjEyMjEwODRjYjJhNWYyNDFmMTFjNWU2YmMyZTIwN2M5ZmViMjUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWM3ZmQ2N2I0YWFjZGRlMWI3OTQwMTdhODllYjU2MzBiYmEwMzcwIn0=','2020-07-23 16:53:54.999104'),('dhxlcfkv1dz5sryd9056z25c9hbc46ed','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-05-10 22:33:24.201714'),('dlluytluxx5qwut7dev0rjepb4pl2z4b','ZjEyMjEwODRjYjJhNWYyNDFmMTFjNWU2YmMyZTIwN2M5ZmViMjUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWM3ZmQ2N2I0YWFjZGRlMWI3OTQwMTdhODllYjU2MzBiYmEwMzcwIn0=','2021-07-17 11:20:15.869183'),('dqqdjggysgxqgo6sim6vil9c6940fv28','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-02-20 20:27:43.927755'),('ewe7t0orm2ufbfjhdy2je4ahp9quxhvf','ZGM0Y2Y0YWM1NmYzODhkZmUyMzcwZmE0N2MwZmU1MDMzYWU1NDI0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NzNhY2UxMWNmYzRlMDJjOTczMTliYWFjOTYyNjcxNjk4NjRjMGNjIn0=','2020-07-07 21:08:28.252716'),('f1fkkejwlbvb7eijtkln198xslel63jm','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-09-24 13:51:10.369179'),('fz5hh1xkxj4jewxge7vy6rn4hlhtigg4','ZjEyMjEwODRjYjJhNWYyNDFmMTFjNWU2YmMyZTIwN2M5ZmViMjUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWM3ZmQ2N2I0YWFjZGRlMWI3OTQwMTdhODllYjU2MzBiYmEwMzcwIn0=','2022-12-23 16:28:23.167162'),('gy1ayernwx7vqjs4oenphqmw3u4cwffc','ZjEyMjEwODRjYjJhNWYyNDFmMTFjNWU2YmMyZTIwN2M5ZmViMjUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWM3ZmQ2N2I0YWFjZGRlMWI3OTQwMTdhODllYjU2MzBiYmEwMzcwIn0=','2022-02-26 16:22:22.872107'),('i0fo8s8yb1vj70ljgawq4d48hm83ao26','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-07-17 19:58:34.391685'),('j52cq4bua51zuij5ilvzhai164logmwh','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-03-16 22:18:55.396114'),('jjlc1ligkfe8mwi81a41zffn2iwjh1b9','ZjEyMjEwODRjYjJhNWYyNDFmMTFjNWU2YmMyZTIwN2M5ZmViMjUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWM3ZmQ2N2I0YWFjZGRlMWI3OTQwMTdhODllYjU2MzBiYmEwMzcwIn0=','2022-01-17 13:53:05.908164'),('jnrrr1ceyj6b67n3w02ksqk2saez0aig','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-02-23 21:03:41.087974'),('k19rrpwjnpjxgdazwvij54cz99knyqp0','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-12-13 18:08:18.336097'),('lg7tqxe3jh6yhspenqy84e3391e1r8dd','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-11-06 14:48:16.296490'),('llok8iyh2laatiutu2izwejtn4cvd8zx','ZjEyMjEwODRjYjJhNWYyNDFmMTFjNWU2YmMyZTIwN2M5ZmViMjUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWM3ZmQ2N2I0YWFjZGRlMWI3OTQwMTdhODllYjU2MzBiYmEwMzcwIn0=','2022-02-10 22:25:59.404285'),('m99tgemy6ke5tfw7bwe6wmm6wf9lw6n6','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-10-20 17:44:48.179296'),('mbk5col9ze3vll9ayi7vfrwo483aejpx','ZjEyMjEwODRjYjJhNWYyNDFmMTFjNWU2YmMyZTIwN2M5ZmViMjUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWM3ZmQ2N2I0YWFjZGRlMWI3OTQwMTdhODllYjU2MzBiYmEwMzcwIn0=','2020-11-16 23:12:13.496813'),('mlbop2id44lyyidu1bdnia1jp8d6c2zn','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-04-21 21:56:38.228947'),('n11nn3u0ol1wz5dvqvn61ko5ws7fisdy','ZjEyMjEwODRjYjJhNWYyNDFmMTFjNWU2YmMyZTIwN2M5ZmViMjUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWM3ZmQ2N2I0YWFjZGRlMWI3OTQwMTdhODllYjU2MzBiYmEwMzcwIn0=','2022-04-17 11:51:21.086105'),('nbm9dvoctgx3mzt0189j6d645ohm46m2','ZjEyMjEwODRjYjJhNWYyNDFmMTFjNWU2YmMyZTIwN2M5ZmViMjUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWM3ZmQ2N2I0YWFjZGRlMWI3OTQwMTdhODllYjU2MzBiYmEwMzcwIn0=','2021-03-03 13:43:06.012436'),('nwkgc98c1clzc6y9ba3iy4wm4jvpbkke','ZjEyMjEwODRjYjJhNWYyNDFmMTFjNWU2YmMyZTIwN2M5ZmViMjUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWM3ZmQ2N2I0YWFjZGRlMWI3OTQwMTdhODllYjU2MzBiYmEwMzcwIn0=','2022-12-06 23:29:34.973896'),('put5xkrddhez1xcv66ikus7wzov565iw','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-07-14 02:01:25.332960'),('qbs4qafaabnx0gxt6e2xg9pqey46ez5g','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-09-21 15:00:44.142314'),('qurgz4sih3roq9xrtalykv9xkf57gdwb','ZjEyMjEwODRjYjJhNWYyNDFmMTFjNWU2YmMyZTIwN2M5ZmViMjUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWM3ZmQ2N2I0YWFjZGRlMWI3OTQwMTdhODllYjU2MzBiYmEwMzcwIn0=','2021-12-01 12:29:05.928270'),('revqelvnyb2t63xrckqb41qhlgll39p6','ZjEyMjEwODRjYjJhNWYyNDFmMTFjNWU2YmMyZTIwN2M5ZmViMjUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWM3ZmQ2N2I0YWFjZGRlMWI3OTQwMTdhODllYjU2MzBiYmEwMzcwIn0=','2021-05-12 23:20:37.188605'),('rjk3wrt9phu8xmah6t0jv6qmru3xp163','Zjk1MzZmODkwOGVkNDllNmYzZmZjYTQxMzE0YTJlMDdkMWE1MTNkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MzExMDJjODhlZWJlYjEwOTI5ZjVhYmQ2Njg4NzYxOTRiZGVlMmIwIn0=','2020-06-22 14:21:30.237869'),('sa2oe9aql7xv38bdwezxqmxy3h9jys9r','Zjk1MzZmODkwOGVkNDllNmYzZmZjYTQxMzE0YTJlMDdkMWE1MTNkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MzExMDJjODhlZWJlYjEwOTI5ZjVhYmQ2Njg4NzYxOTRiZGVlMmIwIn0=','2020-06-23 00:20:50.849565'),('sncmo7ufygw6hbrc8rqeor8vmtfs2bjt','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-09-23 23:48:59.374761'),('t68suwd5ybfpw3bfu6lnl6qnyk026s3m','ZGM0Y2Y0YWM1NmYzODhkZmUyMzcwZmE0N2MwZmU1MDMzYWU1NDI0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NzNhY2UxMWNmYzRlMDJjOTczMTliYWFjOTYyNjcxNjk4NjRjMGNjIn0=','2020-07-01 02:18:38.629674'),('tukms6uop9skmeoazdb7acpt1tz20urm','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-02-04 04:22:38.119383'),('u4pwgkti3nnflwtsm9xj1mttl0a5ofye','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-08-08 20:10:00.901586'),('uw14dw4iwukua9r2ubsd1e3tidikjiic','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-06-04 22:05:38.540509'),('uzd37iamdeoh3yzgbzhmxpio7lm8zyzq','ZjEyMjEwODRjYjJhNWYyNDFmMTFjNWU2YmMyZTIwN2M5ZmViMjUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWM3ZmQ2N2I0YWFjZGRlMWI3OTQwMTdhODllYjU2MzBiYmEwMzcwIn0=','2020-10-15 10:59:11.749199'),('vpi8h8djqnofftq84pddgvwg1ipeau4k','ZjEyMjEwODRjYjJhNWYyNDFmMTFjNWU2YmMyZTIwN2M5ZmViMjUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWM3ZmQ2N2I0YWFjZGRlMWI3OTQwMTdhODllYjU2MzBiYmEwMzcwIn0=','2021-12-17 02:26:19.437575'),('w64y58oo0v9lz9omyh4rm7ihylywej7h','Zjk1MzZmODkwOGVkNDllNmYzZmZjYTQxMzE0YTJlMDdkMWE1MTNkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MzExMDJjODhlZWJlYjEwOTI5ZjVhYmQ2Njg4NzYxOTRiZGVlMmIwIn0=','2020-06-07 18:38:04.969451'),('xa28u9fyhmm92mj3wram2qty4xm1dnak','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-05-03 15:00:08.539795'),('xcb45rf2q1n148d2fw3tn5w3b5lvvvoi','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-06-08 13:19:18.384705'),('xe9xz7sofru0opkzkvp7vp1n3kq1gfxy','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-02-11 01:05:42.776072'),('xn3khlpmn8h5k2yl0caxgpf3wbyatcyo','ZjEyMjEwODRjYjJhNWYyNDFmMTFjNWU2YmMyZTIwN2M5ZmViMjUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWM3ZmQ2N2I0YWFjZGRlMWI3OTQwMTdhODllYjU2MzBiYmEwMzcwIn0=','2021-12-01 03:47:34.072754'),('xv6o1ygazfxkk9kqjrty60jq1gua8t8w','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-03-14 01:59:56.978449'),('xylr7acexjpmbylm6o3kr0g4mb9tvv6m','Zjk1MzZmODkwOGVkNDllNmYzZmZjYTQxMzE0YTJlMDdkMWE1MTNkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MzExMDJjODhlZWJlYjEwOTI5ZjVhYmQ2Njg4NzYxOTRiZGVlMmIwIn0=','2020-06-15 16:50:54.655382'),('xz43ekjlyhol5eopxksbnfkagb1j8yi8','ZjEyMjEwODRjYjJhNWYyNDFmMTFjNWU2YmMyZTIwN2M5ZmViMjUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWM3ZmQ2N2I0YWFjZGRlMWI3OTQwMTdhODllYjU2MzBiYmEwMzcwIn0=','2021-06-04 19:54:39.836280'),('yfjqn5gf5qm06h1zhhi630aa2r37ysln','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-02-22 15:10:19.715391'),('ykbceo1v6drp5aexvh3fcx09j9mc4ku7','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-02-03 21:25:44.067624'),('z9sfknxoix0x0qd48eh5l472rpdorl2n','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-07-08 13:40:07.330072');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home`
--

DROP TABLE IF EXISTS `home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lesson` varchar(40) NOT NULL,
  `exercise` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home`
--

LOCK TABLES `home` WRITE;
/*!40000 ALTER TABLE `home` DISABLE KEYS */;
INSERT INTO `home` VALUES (5,'choice (satire)','In our brave new world communication is our number one priority. Woops I forgot\r\n my I Phone on the kitchen table..wait that wont happen I\'ve had it surgically\r\n implanted under my skin on my left arm sure it hurt at first and somewhat when I\r\n take a shower but so worth it. I made the choice to have the surgery and while\r\n my doctor advised against it local state and federal law was on my side. with\r\n the appointment of Kavanagh who knows how long that will last. Any way this is\r\n how the new I Phone 27.786 works: you simply say or think \"computer\" nice retro\r\n touch don\'t you agree? and the device takes you to safari (the internet) and all\r\n your questions will be answered in the order they are received hell you can even\r\n make a phone call with the dammed thing. The reason I mention this is that now\r\n you don\'t have to say a word to communicate you never did in the first place but\r\n \"who knew\" a simple hand jester or repulse motion like when \"Creepy Joe\" tries\r\n to smell your hair and \"presto\" your communicating. This is very important because it\r\n lets all people make choices even those in the early stage of life an embryo can\r\n simply jester NO! by moving away from the prodding of a mini vacuum nozzle. So in conclusion I\r\n can state that I am unequivocally 100% pro choice but choice by the one who has\r\n the most to loose. \"Sorry my arm is throbbing I have to take this call.\"'),(6,'wings for all (satire)','How did these chicken wars start anyway. I prefer buffalo wings my self but I\r\n keep seeing stories about the extreme right and extreme left wing faction of our\r\n political parties even the Buffalo\'s get caught up in this bazaar ping pong\r\n game.\"Brietbart an extreme right news aggregator\" says the Huff Post an extreme\r\n left news aggregator. My son deliberately photo shopped the \"B Strong patch\" and\r\n Brietbart logo pin off my hat because he felt it was too far right for our\r\n family photograph.\"Chick Fill A\" a chicken specialist is faced with selling\r\n right or left wings in their wing baskets. One time the left wing basket had a\r\n right wing mixed in by accident..It was noticed and there was hell to be paid.\r\n the resturant was forced to close all day Sunday. Mean while the President \"an\r\n extreme right winger\"continues undaunted rebuilding the courts and doing the\r\n peoples business while extreme left wingers continue pecking on anything that\r\n moves. Please pass the ranch dressing .'),(7,'Base of the Mountain','I live at the base of a mountain. It is small mountain compared to the other\r\nmountains that surround, divided by a river it is truly a beautiful place. I\r\nhike often usually along the base and only to the very edge as my stamina is\r\nnot what it used to be. There is a wonderful place on the second plateau where\r\nthere is a spring, it is clearly marked by a sign I have seen often, simply \"Spring\".\r\nThis land is enchanted in many special ways.The people who live here , the light\r\nthat plays off the ranges and mountains and the sounds of life all around me.There\r\n are two trails along side the river. From the edge of my mountain its simply\r\n several steps to the first trail that connects the two bridges spanning the river.\r\nTe second trail on the opposite bank requires the use of either bridge and is much longer.\r\nIf you traverse it to the south, approximately four miles you will come to a minor falls \r\nand a small community.'),(8,'Orange Not Peach(opine)','Well the left has finally fallen into the trap,Yesterday Dec 18 2019 the small (thank God) group of fanatics moved to impeach the President. \r\nwith their own scenarios of how things went and a deep belief in the validity of their story telling . Committees and panels wasted a great deal of\r\ntheir valuable vacation time and our money and patience. The vote which reflects the party membership rolls of congress looks for all intents\r\nand purposes a we against them last stand before the left is out the door in 2020.In Battle Creek Michigan last night President Trump (nice ring to it)\r\ncalmly destroyed their position and the \"deplorable\"reacted not so calmly. A great time was had by all!'),(9,'Tom (memories)','Tom my Friend died on Christmas eve. He had been battling M S for too many years and the disease overcame his once strong body. I believe his strength has been\r\nrestored. Our relationship goes back over fifty years to a time when soul mates children and family responsibility were our main concerns. Our future wives\r\n(soulmates) best friends and classmates at Mercy Nursing School Oshkosh Wisconsin required we visit them on a regular basis. The ride sharing suggestion initiated\r\nTom and my lifelong friendship I am a car nut and when he picked Me up that first time in his 60\'s Ford Thunderbird i was blown away! I had a sixty three\r\nStudebaker a nice car for a young man but that t bird was tops even though it left us stranded when it broke in Oshkosh granting us more quality time with our\r\nfuture nurses. Tom and I discussed the many happy adventures we had during the nursing era but family times were ahead and memories of those times are great.\r\nDespite our obligations we shared many adventures together camping, picnics, children events. As our children got older we became involved in Marriage Encounter I\r\nremember suggesting it to Tom and Nancy. Well after their M E weekend they T and N became very active and super leaders in the program I am very proud of them.\r\nskipping ahead as empty Nester\'s T and N were the first to downsize living space and revisit the renting scene and we M and M visited their apartments often. When\r\nthey moved to Rivers Edge apts in downtown Green Bay I was very envious and Tom was very persistent that we follow suit and move in so our ride home after our\r\nevening of \"Scrabble\", conversations, and dessert would be short indeed. Lastly Tom and I became very interested in politics we have strong leanings toward the\r\nconservative side. I fondly remember our meet ups in the community center of our building to watch the \"Five At Four\" on Fox channel we had many laughs and ate a\r\nlot of chocolate during those visits. I will miss you Tom please put in a good word for us.  Love Mick'),(11,'portrait in courage new','As our Wisconsin\'s air temperature gets colder our cute VietNam neighbor \"Co\" \r\nlayers on another sweater and will not open the outer doors of our apartment \r\nbuilding without an additional Winter coat wrapped around her petite frame.\r\nToday I met her in the hallway wearing a warm parka with wolf type fur around \r\nthe hood prompting me to think of \"Nanak of the North\" a title I was given when\r\nI wore my Air Force surplus parka when I was her age. My wife has a coat like  \r\nCo\'s and rarely complains of the cold temps'),(12,'Young','You make me feel so young....\r\nYou make me feel there are songs to be sung\r\nbells to be rung  and a wonderful day to be won....\r\nand when I\'m feeling sad and blue..\r\nyou make me feel  brand new.....\r\n\r\nGreat lyrics, nice feelings, rare encounters. \r\nLike old and new friends, it\'s the friend part that matters.'),(13,'Scout law','\"A scout is Trustworthy.. Loyal .. Helpful.. Friendly.. Courteous.. Kind .. \r\nObedient.. Cheerful.. Thrifty.. Brave.. Clean .. Reverent\".... I wake up in the \r\nmiddle of thee night and find thoughts like this rattling around in my mind. It \r\ntook me a long time to memorize the Boy Scout Motto so I could earn the rank of \r\n\"Tenderfoot\". The ranks name speaks for itself. We (the troop) met once a week \r\nin a dinghy room in the basement of our school. I wonder why we didn\'t merit a \r\nbetter club room but the student population at that time allotted sixty plus\r\nstudents to a teacher and resources were stretched to the breaking point. My \r\nmemory of Scouting is mixed at best but leaning towards \"liking\" enough to \r\nenroll my two sons and try to make the experience better for them.I found out \r\nquickly what was ahead when I was made Scoutmaster. Fortunately there was \r\nsupport from the office and fellow parents. The laws  rings true  this \r\nday.');
/*!40000 ALTER TABLE `home` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horailroad`
--

DROP TABLE IF EXISTS `horailroad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horailroad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(40) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horailroad`
--

LOCK TABLES `horailroad` WRITE;
/*!40000 ALTER TABLE `horailroad` DISABLE KEYS */;
INSERT INTO `horailroad` VALUES (1,'Grain elevators','elevators.JPG'),(2,'Vintage Passenger car','oldpass2.JPG'),(3,'Quarry','quary2.JPG'),(4,'Industrial area','tireco.JPG'),(5,'old town','town.JPG'),(6,'Fill her up','fueling.JPG'),(7,'Trainmaster','mick.JPG'),(8,'Diner','diner.JPG');
/*!40000 ALTER TABLE `horailroad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `more`
--

DROP TABLE IF EXISTS `more`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `more` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(40) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `more`
--

LOCK TABLES `more` WRITE;
/*!40000 ALTER TABLE `more` DISABLE KEYS */;
INSERT INTO `more` VALUES (1,'Automobile Gallery','mycad.jpg'),(2,'Beautiful home in Astor Neighborhood','homebest.jpg'),(3,'Zestys','zestynight.jpeg'),(4,'New stockade structure Heritage  Hill','flag_folding_hh.jpeg'),(5,'Old Library across from Courthouse','oldlibrary.jpg'),(6,'Bandstand Saint James Park','bestband.JPG'),(8,'Lake View porch','sunsetrocker.jpg'),(9,'Security wall around Bay Beach park','wall_gyYMXoE.jpeg'),(10,'Bike Rider','biker.jpg');
/*!40000 ALTER TABLE `more` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mybooksread`
--

DROP TABLE IF EXISTS `mybooksread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mybooksread` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_title` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `authors` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `category` varchar(15) COLLATE utf8_bin NOT NULL,
  `image` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `comment` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mybooksread`
--

LOCK TABLES `mybooksread` WRITE;
/*!40000 ALTER TABLE `mybooksread` DISABLE KEYS */;
INSERT INTO `mybooksread` VALUES (1,'Borne Identity','Robert Ludlum','thriller','True',NULL),(2,'The Geneva Strategy','Robert Ludlum','thriller','True',NULL),(3,'Pillers and Bulwark','Marcus Grodi','novel','True',NULL),(4,'Righteous Indignation','Andrew Brietbart','novel','True',NULL),(5,'The Altman Code','Robert Ludlum','thriller','True',NULL),(6,'The Secreat Sharer','Joseph Conrad','classics','True',NULL),(7,'Strangers in a Strange Land','Bishop Charles Chaput','classics','True',NULL),(8,'The Dawn of All','Robert Hugh Benson','classics','True',NULL),(9,'Democracy in America','Alexis DeTocqueville','text_book','True',NULL),(10,'Brush Back','Sarah Paretsky','mystery','media/sarahbrush.jpeg','You feel your right there in Chicago! Wrigley Field'),(11,'Glidepath','Andrew Watts','thriller','True',NULL),(12,'Lord of the World','Robert Hugh Benson','classics','True',NULL),(13,'Smarter way to learn css html','Mark Meyer','text_book','True',NULL),(14,'Mastering Python','Michael  White','text_book','True',NULL),(15,'Fade','Kyle Mills','thriller','True',NULL),(16,'Free Fall','Kyle Mills','thriller','True',NULL),(17,'How Trump Won','Joel Pollak','text_book','True',NULL),(18,'How to speak correctly','Joseph Devin','text_book','True',NULL),(19,'War and Peace','Leo Tolstoy','classics','True',NULL),(20,'Cross Currents','Christine King','mystery','True',NULL),(21,'Surface Tension','Christine King','mystery','True',NULL),(22,'Breakdown','Sarah Paretsky','mystery','media/sarahp_QvbuUgB.jpeg','\"Captivating\"'),(23,'Fall Out','Sarah Paretsky','mystery','True',NULL),(24,'Fire Sale','Sarah Paretsky','mystery','True',NULL),(25,'The Mysterious Island','Jules Verne','classics','True',NULL),(58,'Lord Jim','Joseph Conrad','classics','True',NULL),(59,'Calm in Chaos','George Rutler','classics','True',NULL),(60,'The Last Gentleman','Walker Percy','novel','media/percy_ATDjNzT.jpeg','Insights into insanity'),(61,'The Second Comming','Walker Percy','novel','True',NULL),(62,'The Moviegoer','Walker Percy','novel','media/percy_qlmHgEu.jpeg','1950'),(63,'Love in the Ruins','Walker Percy','novel','media/percy_gydiw6d.jpeg','\"unbelievable\"'),(64,'Lancelot','Walker Percy','novel','media/percy_xEUe3xf.jpeg','\"unbelievable\"'),(65,'Critical Mass','Sarah Paretsky','mystery','True',NULL),(66,'Indemnity Only','Sarah Paretsky','mystery','True',NULL),(67,'Body Work','Sarah Paretsky','mystery','media/sarahp_bHHtvRu.jpeg','\"unbelievable\"'),(68,'Bitter Medicine','Sarah Paretsky','mystery','media/sarahp.jpeg','Chicago Hospital'),(69,'Hard Ball','Sarah Paretsky','mystery','True',NULL),(70,'Blacklist','Sarah Paretsky','mystery','True','Northern Illinois'),(71,'Gardian Angel','Sarah Paretsky','mystery','True',NULL),(72,'Hard Time','Sarah Paretsky','mystery','True',NULL),(73,'Killing Orders','Sarah Paretsky','mystery','True',NULL),(74,'Burn Marks','Sarah Paretsky','mystery','True',NULL),(75,'Total Recall','Sarah Paretsky','mystery','True',NULL),(76,'Tunnel Vision','Sarah Paretsky','mystery','True',NULL),(77,'Catcher in the Rye','J D Salenger','classics','True',NULL),(78,'Zen and the Art of Motorcycle Maintenance','Robert Persig','novel','True',NULL),(79,'Heart of Darkness','Joseph Conrad','novel','True',NULL),(80,'Catch 22','Joseph Heller','novel','True',NULL),(81,'A Place of my Own the architecture of daydreams','Michael Pollan','novel','True',NULL),(83,'Finding a Form','William Gass','text_book','True',NULL),(84,'Shell Game','Sarah Paretsky','mystery','True',NULL),(85,'Beyond Modernity','George Rutler','classics','True',NULL),(86,'Learning EMacs','James Elliot','text_book','True',NULL),(87,'Sailing Alone Around the World','Joshua Slocum','novel','True',NULL),(88,'Moby Dick','Herman Mellvile','novel','True',NULL),(89,'The Janson Directive','Robert Ludlum','novel','True',NULL),(90,'Die Trying','Lee Child','novel','True',NULL),(91,'Make Me','Lee Child','novel','True',NULL),(92,'Night School','Lee Child','novel','True',NULL),(93,'Personal','Lee Child','novel','True',NULL),(95,'Never Go Back','Lee Child','novel','True',NULL),(96,'A Wanted Man','Lee Child','novel','True',NULL),(97,'The Hard Way','Lee Child','novel','True',NULL),(98,'The Enemy','Lee Child','novel','True',NULL),(99,'One Shot','Lee Child','novel','True',NULL),(101,'Gone Tomorrow','Lee Child','novel','True',NULL),(102,'No Middle Name','Lee Child','novel','True',NULL),(104,'Sphere','Michael Crichton','novel','True',NULL),(105,'congo','Michael Crichton','novel','True',NULL),(106,'Nano','Michael Crichton','novel','True',NULL),(107,'Disclosure','Michael Crichton','novel','True',NULL),(108,'Timeline','Michael Crichton','novel','True',NULL),(109,'Prey','Michael Crichton','novel','True',NULL),(110,'Next','Michael Crichton','novel','True',NULL),(111,'State of Fear','Michael Crichton','novel','True',NULL),(112,'Micro','Michael Crichton','novel','True',NULL),(113,'Airframe','Michael Crichton','novel','True',NULL),(114,'The Lost World','Michael Crichton','novel','True',NULL),(115,'Rising Sun','Michael Crichton','novel','True',NULL),(116,'12      Rules for Life','Jordan B Peterson','text_book','True',NULL),(117,'61 Hours','Lee Child','novel','media/child.jpeg','\"Captivating\"'),(118,'Persuader','Lee Child','novel','True',NULL),(119,'Midnight Line','Lee Child','novel','True',NULL),(120,'Bad Luck Trouble','Lee Child','novel','True',NULL),(121,'Worth Dying For','Lee Child','novel','True',NULL),(122,'The Affair','Lee Child','novel','True',NULL),(123,'The Hero','Lee Child','novel','True',NULL),(124,'The Fallen','David Baldacci','mystery','True',NULL),(125,'Before Bethlehem','James Flerltag','novel','True',NULL),(126,'Without Fail','Lee Child','thriller','True',NULL),(127,'Chancellor Manuscript','Robert Ludlum','novel','True',NULL),(128,'The Giver','Lois Lowry','novel','True',NULL),(129,'The Fix','David Baldachi','novel','True',NULL),(130,'Memory Man','David Baldachi','novel','True',NULL),(131,'Last Mile','David Baldachi','novel','True',NULL),(132,'The Gemini Contenders','Robert Ludlum','novel','True',NULL),(133,'Lords Corruption','Kyle Mills','novel','True',NULL),(134,'Finding the Dragon Lady','Monique Brinson Demery','novel','media/nhu_mArWCk2.jpeg','After finding Madam Nhu in Paris Monique slowly persuades her to tell her story. Great read! fills in a lot of historical details'),(135,'The Bourne Deception','Robert Ludlum','thriller','True',NULL),(136,'The Incredible Voyage','Tristen Jones','novel','media/incred.jpeg','\"unbelievable\"'),(138,'To Venture Further','Tristen Jones','novel','True',NULL),(139,'Yarns','Tristen Jones','novel','media/jones.jpeg','\"unbelievable\"'),(140,'A Rumor of War','Phillip Caputo','text_book','True',NULL),(141,'Running Blind','Lee Child','novel','media/reacherbooks.jpeg','serial killer'),(142,'Dead Land','Sarah Paretski','novel','media/sarahdland.jpeg','Again Interesting 47th and Lakeshore'),(144,'All Things Bright and Beautiful','James Herriot','classics','','Classic'),(145,'All Creatures Great and Small','James Herriot','classics','','classic'),(146,'All things Wise and Wonderful','James Herriot','novel','','Classic'),(147,'The Sentinel','Lee Child','novel','','latest 2020'),(148,'Crossers','Phillip Caputo','novel','','Wonderful Writer'),(149,'Invisible','Andrew Grant','novel','','son of Lee Childs'),(150,'Painting Portraits and Figures in Watercolor','Mary Whyte','text_book','','Classic'),(151,'Pen and Ink Drawing: A Simple Guide','Alphonso Dunn','text_book','','Wonderful artist'),(152,'The Voyage','Phillip Caputo','novel','','\"Captivating\"'),(154,'The Secret Messenger','Mandy Robotham','novel','','amassing and  well written'),(155,'Nobel Beginnings','L.T. Ryan','novel','','Jack Nobel thriller'),(156,'American Assasin','Vince Flynn','thriller','','Bourn and Reacher style'),(157,'The Third Option','Vince Flynn','novel','','thrilling'),(158,'Kill Shot','Vince Flynn','novel','','thrilling'),(159,'Transfer of Power','Vince Flynn','novel','','thrilling'),(160,'Vanished \"Nick Heller\"','Joseph Finder','novel','','\"Captivating\"'),(161,'Buried Secrets','Joseph Finder','mystery','','Nick Heller book'),(162,'Guilty Minds','Joseph Finder','novel','','good one'),(163,'House on Fire','Joseph Finder','novel','','great'),(164,'The Fixer','Joseph Finder','novel','','great');
/*!40000 ALTER TABLE `mybooksread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journalist` varchar(40) NOT NULL,
  `story` varchar(100) NOT NULL,
  `bi_line` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (8,'Mick Piontek','collection/duel_wt0e0j2.pdf','Wear your MAGA hats'),(9,'Mick Piontek','collection/wall_N51xeSI.pdf','The Wall'),(10,'Mick Piontek','collection/orange_vlquyj2.pdf','Orange is My Favorite Color'),(11,'Greg Gutfield','collection/Balancers_hFyNTu2.pdf','Packers to change name'),(12,'Mick Piontek','collection/schumer.pdf','Schumer'),(13,'Mick Piontek','collection/hiposcotus.png','Justice Barret'),(15,'Mick Piontek','collection/choice_z8pXCi1.pdf','The Choice'),(16,'Mick Piontek','collection/bidenflag_IKwWsHz.jpg','\"Prop him up\"'),(17,'Mick Piontek','collection/Blast_from_the_Pastf_l0s5WXM.pdf','Blast from the Past'),(18,'Mick Piontek','collection/Democrat_script_uGFhwo1.pdf','Corn Pops'),(19,'Mick Piontek','collection/MAGA__march.pdf','MAGA march');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paintings`
--

DROP TABLE IF EXISTS `paintings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paintings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(40) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paintings`
--

LOCK TABLES `paintings` WRITE;
/*!40000 ALTER TABLE `paintings` DISABLE KEYS */;
INSERT INTO `paintings` VALUES (4,'Cal on ice','_IGP0355.JPG'),(5,'Mr Big','_IGP0351.JPG'),(8,'young boy','_IGP0372.JPG'),(9,'young woman','_IGP0366_NWPccxj.JPG'),(10,'Vietnam woman','_IGP0368.JPG'),(11,'Characters of \"Blast from the Past\"','BLAST_CAST.png'),(13,'nice and shady','MICK_9ds8cJV.png');
/*!40000 ALTER TABLE `paintings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(40) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,'St.  Bernard Church Green  Bay Wi.','st_bernards.jpg'),(2,'St. Phillips Church  Green Bay Wi.','st_phillips.jpg'),(3,'Bark Chapel Heritage Hill State Park','bark_chapel.jpg'),(6,'Altar in Bark Chapel','altar_in_bark_chapel.JPG'),(8,'Moravian Church Heritage Hill','heritage_hill_moravian_church_v1.jpg'),(9,'Mother of Good Help shrine','shrine.jpeg'),(10,'Chapel Heritage Hill Belgian Farm','farmch.jpg');
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_choice`
--

DROP TABLE IF EXISTS `polls_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls_choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `choice_text` varchar(200) NOT NULL,
  `votes` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_choice_question_id_c5b4b260_fk_polls_question_id` (`question_id`),
  CONSTRAINT `polls_choice_question_id_c5b4b260_fk_polls_question_id` FOREIGN KEY (`question_id`) REFERENCES `polls_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_choice`
--

LOCK TABLES `polls_choice` WRITE;
/*!40000 ALTER TABLE `polls_choice` DISABLE KEYS */;
INSERT INTO `polls_choice` VALUES (1,'Donald Trump',33,1),(2,'Joe Biden',0,1);
/*!40000 ALTER TABLE `polls_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_question`
--

DROP TABLE IF EXISTS `polls_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_text` varchar(200) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_question`
--

LOCK TABLES `polls_question` WRITE;
/*!40000 ALTER TABLE `polls_question` DISABLE KEYS */;
INSERT INTO `polls_question` VALUES (1,'Presidential Election 2020','2020-07-17 15:09:03.000000');
/*!40000 ALTER TABLE `polls_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `railroad`
--

DROP TABLE IF EXISTS `railroad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `railroad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(40) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `railroad`
--

LOCK TABLES `railroad` WRITE;
/*!40000 ALTER TABLE `railroad` DISABLE KEYS */;
INSERT INTO `railroad` VALUES (1,'The Pullium Plant','pullplant.jpeg'),(2,'Transportation Intersection','bustrain.jpg'),(3,'5417','cn5417.JPG'),(5,'Grafiti number one','grafiti1.JPG'),(6,'Graffiti number two','grafiti2.JPG'),(9,'Graffiti number six','grafiti6.JPG');
/*!40000 ALTER TABLE `railroad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `river`
--

DROP TABLE IF EXISTS `river`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `river` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(40) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `river`
--

LOCK TABLES `river` WRITE;
/*!40000 ALTER TABLE `river` DISABLE KEYS */;
INSERT INTO `river` VALUES (1,'tug','tug.jpg'),(2,'river work','barge2.JPG'),(4,'shipping lane','paradestart_oCTUeEt.JPG'),(5,'boating for Trump','_IGP0313.JPG'),(6,'night work','bargenight4.JPG'),(7,'snow tree','snowtree.JPG'),(8,'fly over','swisssalps.jpeg');
/*!40000 ALTER TABLE `river` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stories`
--

DROP TABLE IF EXISTS `stories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(40) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stories`
--

LOCK TABLES `stories` WRITE;
/*!40000 ALTER TABLE `stories` DISABLE KEYS */;
INSERT INTO `stories` VALUES (1,'Skull Dilemma','collection/agustine1.pdf'),(2,'Blast from the Past','collection/Blast_from_the_Pastf_YUm52Rn.pdf'),(3,'Base of the Mountain','collection/Base_of_the_Mountain_1.pdf'),(4,'Rivers Edge Journal','collection/edgejournal_ohPuxxW.pdf'),(5,'Young lyrics','collection/Young.pdf'),(6,'Slow Train lyrics','collection/Slow_train_coming_round_the_bend.pdf'),(7,'Serve Somebody lyrics','collection/servesombody.pdf'),(8,'It\'s ok NOT!','collection/Its_ok.pdf'),(9,'Catholics??','collection/catholics.pdf'),(10,'Spartacus','collection/sparticus.pdf'),(11,'Blackshirts','collection/blackshirts.pdf'),(12,'I knew it!!!!!!','collection/biden.png'),(13,'Dog faced pony soldier','collection/pony.jpeg'),(14,'You got him!!!','collection/bidenflag.jpg'),(15,'Corn Pops Script','collection/Democrat_script_Pn6TbDP.pdf'),(16,'Whoa!!!!!!!','collection/carthorse.jpg'),(17,'Grandma\'s farm','collection/farm.pdf');
/*!40000 ALTER TABLE `stories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todo_todo`
--

DROP TABLE IF EXISTS `todo_todo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todo_todo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL,
  `description` longtext NOT NULL,
  `completed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo_todo`
--

LOCK TABLES `todo_todo` WRITE;
/*!40000 ALTER TABLE `todo_todo` DISABLE KEYS */;
INSERT INTO `todo_todo` VALUES (1,'continue to improve','perseverance',0);
/*!40000 ALTER TABLE `todo_todo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-09 12:22:57
