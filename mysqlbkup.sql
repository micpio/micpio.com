-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: micpio.mysql.pythonanywhere-services.com    Database: micpio$booksread
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
  `name` varchar(80) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add group',1,'add_group'),(2,'Can change group',1,'change_group'),(3,'Can delete group',1,'delete_group'),(4,'Can view group',1,'view_group'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add user',3,'add_user'),(10,'Can change user',3,'change_user'),(11,'Can delete user',3,'delete_user'),(12,'Can view user',3,'view_user'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add post',5,'add_post'),(18,'Can change post',5,'change_post'),(19,'Can delete post',5,'delete_post'),(20,'Can view post',5,'view_post'),(21,'Can add mybooksread',6,'add_mybooksread'),(22,'Can change mybooksread',6,'change_mybooksread'),(23,'Can delete mybooksread',6,'delete_mybooksread'),(24,'Can view mybooksread',6,'view_mybooksread'),(25,'Can add news',7,'add_news'),(26,'Can change news',7,'change_news'),(27,'Can delete news',7,'delete_news'),(28,'Can view news',7,'view_news'),(29,'Can add log entry',8,'add_logentry'),(30,'Can change log entry',8,'change_logentry'),(31,'Can delete log entry',8,'delete_logentry'),(32,'Can view log entry',8,'view_logentry'),(33,'Can add session',9,'add_session'),(34,'Can change session',9,'change_session'),(35,'Can delete session',9,'delete_session'),(36,'Can view session',9,'view_session'),(37,'Can add home',10,'add_home'),(38,'Can change home',10,'change_home'),(39,'Can delete home',10,'delete_home'),(40,'Can add bandsongs',11,'add_bandsongs'),(41,'Can change bandsongs',11,'change_bandsongs'),(42,'Can delete bandsongs',11,'delete_bandsongs');
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
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$mvhC03M8SsT0$P1ix+3uN7mL1YxSi/OwerVW4Q3GQnGI9vTHyDQrTMSc=','2020-03-06 15:19:44.576363',1,'micpio','','','mickpiontek@gmail.com',1,1,'2019-02-03 18:28:37.251130'),(2,'pbkdf2_sha256$36000$RjAhbGI9urLg$yfFLnKayczfPTbgwVxyP4TXUPR9xs5Qv8ueuF6YeOIM=','2020-02-06 22:16:47.435375',0,'marypio','','','',1,1,'2020-02-06 22:11:25.000000');
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
  `author` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post`
--

LOCK TABLES `blog_post` WRITE;
/*!40000 ALTER TABLE `blog_post` DISABLE KEYS */;
INSERT INTO `blog_post` VALUES (1,'The Wall the novel by Mick Piontek coming soon','He squinted as he looked down highway 45 the sun setting low in the western sky . Mick had been waiting for almost an hour for the silhouette of the truck to appear on the horizon. Just then his cell phone buzzed like the sound of an angry wasp. Mick answered \"talk to me\" he snapped. The truck an orange colored eighteen wheeler was dispatched from Washington DC on Friday making the two thousand mile trip without incident so far. Congress had approved the allocation of one point three billion dollars to fund the wall along the southern border of the United States and this truck carried the first installment mostly in blocks of ten and twenty dollar bills.','2019-04-26 00:50:33.000000','2019-04-26 13:27:42.000000','Michael Piontek'),(2,'Calm in Caos','Calm in Chaos is a pleasure to read . George Rutler a very intelligent priest and pastor in \"hells kitchen\"  New York City reflects on contemporary City morals and failings and will challenge your vocabulary skills  making  his case. His humor and references to quotes will tickle your sense of humor','2019-04-26 22:55:08.000000',NULL,'George Rutler'),(3,'Jack Reacher series','I have started reading the Jack Reacher books in July 2019  and have read 12 and counting the older books are readily available thru the library and the newer can be purchased (amazon or apple) or put on hold while you read the available books. Child\'s attention to details ,short sentences  and excitement balance make these novels easy to read and hard to put down','2019-12-25 23:29:59.000000','2019-12-25 23:39:14.000000','Lee Child');
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
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-02-03 18:30:44.185744','1','The Catcher in the Rye J D Salenger  novel',1,'[{\"added\": {}}]',6,1),(2,'2019-02-06 17:15:07.804421','1','Deploy Django I\'ve learned a lot',1,'[{\"added\": {}}]',10,1),(3,'2019-02-06 17:37:16.065633','1','SOTU speech a home run 2019',1,'[{\"added\": {}}]',7,1),(4,'2019-02-08 15:45:07.525402','2','Use of personal opinion (my style)',1,'[{\"added\": {}}]',10,1),(5,'2019-02-08 17:09:22.634774','2','Use of personal opinion (my style)',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(6,'2019-02-08 17:13:00.553169','2','Use of personal opinion (my style)',2,'[]',10,1),(7,'2019-02-08 17:16:22.570039','2','Use of personal opinion (my style)',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(8,'2019-02-08 17:17:46.095712','2','Use of personal opinion (my style)',2,'[]',10,1),(9,'2019-02-08 18:41:41.916277','77','Catcher in the Rye J D Salenger  classics',1,'[{\"added\": {}}]',6,1),(10,'2019-02-08 18:43:30.569980','2','Use of personal opinion (my style)',2,'[]',10,1),(11,'2019-02-09 21:05:01.969496','2','My take on the present time',1,'[{\"added\": {}}]',7,1),(12,'2019-02-10 03:38:45.503590','78','Zen and the Art of Motorcycle Maintenance Robert Persig  novel',1,'[{\"added\": {}}]',6,1),(13,'2019-02-10 03:39:26.219743','79','Heart of Darkness Joseph Conrad  novel',1,'[{\"added\": {}}]',6,1),(14,'2019-02-10 03:39:56.432357','80','Catch 22 Joseeph Heller  novel',1,'[{\"added\": {}}]',6,1),(15,'2019-02-10 18:44:10.575530','2','My take on the present time',2,'[{\"changed\": {\"fields\": [\"story\"]}}]',7,1),(16,'2019-02-11 03:28:53.085372','2','Use of personal opinion (my style)',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(17,'2019-02-11 03:37:58.206764','2','Use of personal opinion (my style)',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(18,'2019-02-11 03:58:05.254110','3','additional sentences',1,'[{\"added\": {}}]',10,1),(19,'2019-02-11 03:58:58.523611','3','Tiny living space fantasies',2,'[{\"changed\": {\"fields\": [\"lesson\"]}}]',10,1),(20,'2019-02-11 04:43:17.344555','3','Tiny living space fantasies',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(21,'2019-02-11 13:59:37.719088','81','A Place of my Own the architecture of daydreams Michael Pollan  novel',1,'[{\"added\": {}}]',6,1),(22,'2019-02-12 15:27:03.747084','3','Tiny living space fantasies',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(23,'2019-02-12 18:52:10.204778','2','Use of personal opinion (my style)',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(24,'2019-02-13 01:40:56.468530','80','Catch 22 Joseph Heller  novel',2,'[{\"changed\": {\"fields\": [\"authors\"]}}]',6,1),(25,'2019-02-13 15:41:54.958925','1','The Wall the novel by Sherry Rice released',1,'[{\"added\": {}}]',5,1),(26,'2019-03-01 23:33:50.189010','82','Emacs bantam press  text_book',1,'[{\"added\": {}}]',6,1),(27,'2019-04-06 23:46:32.998880','1','Deploy Django I\'ve learned a lot',3,'',10,1),(28,'2019-04-06 23:46:33.018607','3','Tiny living space fantasies',3,'',10,1),(29,'2019-04-06 23:46:33.038604','2','Use of personal opinion (my style)',3,'',10,1),(30,'2019-04-06 23:47:44.705678','4','stream of conscience',1,'[{\"added\": {}}]',10,1),(31,'2019-04-19 15:01:39.661510','83','Finding a Form William Gass  text_book',1,'[{\"added\": {}}]',6,1),(32,'2019-04-19 15:02:18.349899','84','Shell Game Sarah Paretsky  mystery',1,'[{\"added\": {}}]',6,1),(33,'2019-04-19 15:03:09.465783','85','Beyond Modernity George Rutler  classics',1,'[{\"added\": {}}]',6,1),(34,'2019-04-19 15:04:14.865829','86','Learning EMacs James Elliot  text_book',1,'[{\"added\": {}}]',6,1),(35,'2019-04-26 18:27:37.176705','4','stream of conscience',3,'',10,1),(36,'2019-04-26 18:29:30.603410','5','satire',1,'[{\"added\": {}}]',10,1),(37,'2019-04-26 18:38:45.631051','6','satire 2',1,'[{\"added\": {}}]',10,1),(38,'2019-04-26 18:40:39.920565','5','satire',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(39,'2019-04-26 18:41:41.318969','5','satire',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(40,'2019-04-26 22:42:20.067263','7','Tony Tony',1,'[{\"added\": {}}]',10,1),(41,'2019-04-26 22:54:46.714011','1','The Wall the novel by Mick Piontek released',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',5,1),(42,'2019-04-26 23:10:43.317235','2','Calm in Caos',1,'[{\"added\": {}}]',5,1),(43,'2019-04-26 23:14:14.678674','1','The Wall the novel by Mick Piontek released',2,'[{\"changed\": {\"fields\": [\"created_date\", \"published_date\"]}}]',5,1),(44,'2019-04-29 12:42:51.929466','1','The Wall the novel by Mick Piontek coming soon',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',5,1),(45,'2019-04-30 14:36:31.157890','5','choice',2,'[{\"changed\": {\"fields\": [\"lesson\"]}}]',10,1),(46,'2019-04-30 14:37:09.262434','6','wings for all (satire)',2,'[{\"changed\": {\"fields\": [\"lesson\"]}}]',10,1),(47,'2019-04-30 14:37:38.132503','5','choice (satire)',2,'[{\"changed\": {\"fields\": [\"lesson\"]}}]',10,1),(48,'2019-04-30 14:38:10.634689','7','Tony Tony (political)',2,'[{\"changed\": {\"fields\": [\"lesson\"]}}]',10,1),(49,'2019-05-21 22:06:23.034640','1','Louie Louie Kingsmen  Pentagons',1,'[{\"added\": {}}]',11,1),(50,'2019-05-21 22:07:18.386422','2','test test  Pentagons',1,'[{\"added\": {}}]',11,1),(51,'2019-05-21 23:19:02.352963','2','Last train to Clarksville Monkeys  Pentagons',2,'[{\"changed\": {\"fields\": [\"title\", \"artist\"]}}]',11,1),(52,'2019-05-21 23:20:26.874960','3','Walking the dog t  Pentagons',1,'[{\"added\": {}}]',11,1),(53,'2019-05-21 23:20:53.526925','4','House of the rising sun The Animals  Pentagons',1,'[{\"added\": {}}]',11,1),(54,'2019-05-21 23:21:16.993591','5','Summertime Gershwin  Pentagons',1,'[{\"added\": {}}]',11,1),(55,'2019-05-21 23:21:49.108477','6','Michelle The Beatles  Pentagons',1,'[{\"added\": {}}]',11,1),(56,'2019-05-21 23:22:19.637074','7','Sittin by the dock of the bay Otis Redding  Pentagons',1,'[{\"added\": {}}]',11,1),(57,'2019-05-21 23:22:20.023594','8','Sittin by the dock of the bay Otis Redding  Pentagons',1,'[{\"added\": {}}]',11,1),(58,'2019-05-21 23:32:52.085649','7','Sittin by the dock of the bay Otis Redding  Pentagons',3,'',11,1),(59,'2019-05-21 23:36:41.109990','3','Walking the dog Rufus Thomas  Pentagons',2,'[{\"changed\": {\"fields\": [\"artist\"]}}]',11,1),(60,'2019-05-22 15:32:02.446576','9','Time is on my side Rolling Stones  Pentagons',1,'[{\"added\": {}}]',11,1),(61,'2019-05-22 15:32:38.396942','10','For your Love Yardbirds  Pentagons',1,'[{\"added\": {}}]',11,1),(62,'2019-05-22 15:33:20.302620','11','Wild Thing unknown for now  Pentagons',1,'[{\"added\": {}}]',11,1),(63,'2019-05-22 15:34:01.112469','12','Good Lovin Greatful Spoonfull  Pentagons',1,'[{\"added\": {}}]',11,1),(64,'2019-05-22 15:34:31.689985','13','Hanky Panky unknown for now  Pentagons',1,'[{\"added\": {}}]',11,1),(65,'2019-05-22 15:35:06.624774','14','Just like Me unknown for now  Pentagons',1,'[{\"added\": {}}]',11,1),(66,'2019-05-22 15:35:35.337281','15','Land of 1000 dances unknown for now  Pentagons',1,'[{\"added\": {}}]',11,1),(67,'2019-05-22 15:36:06.362743','16','Kind of a Drag unknown for now  Pentagons',1,'[{\"added\": {}}]',11,1),(68,'2019-05-22 15:36:40.867629','17','That Girl The Beatles  Pentagons',1,'[{\"added\": {}}]',11,1),(69,'2019-05-22 15:37:57.380754','18','Na Na Nanana unknown for now  Pentagons',1,'[{\"added\": {}}]',11,1),(70,'2019-05-23 03:22:13.642933','14','Just like Me Paul Revere and the raiders  Pentagons',2,'[{\"changed\": {\"fields\": [\"artist\"]}}]',11,1),(71,'2019-05-23 03:22:39.531719','18','Na Na Nanana Wilson Picket  Pentagons',2,'[{\"changed\": {\"fields\": [\"artist\"]}}]',11,1),(72,'2019-05-23 03:23:54.808619','16','Kind of a Drag Buckinghams  Pentagons',2,'[{\"changed\": {\"fields\": [\"artist\"]}}]',11,1),(73,'2019-05-23 03:23:55.365474','16','Kind of a Drag Buckinghams  Pentagons',2,'[]',11,1),(74,'2019-05-23 03:25:08.119316','13','Hanky Panky Tommy James and the Shondels  Pentagons',2,'[{\"changed\": {\"fields\": [\"artist\"]}}]',11,1),(75,'2019-05-23 03:26:00.251686','11','Wild Thing The Trogs  Pentagons',2,'[{\"changed\": {\"fields\": [\"artist\"]}}]',11,1),(76,'2019-05-23 03:26:49.540669','15','Land of 1000 dances Canibal and the Headhunters  Pentagons',2,'[{\"changed\": {\"fields\": [\"artist\"]}}]',11,1),(77,'2019-05-23 13:45:24.336878','87','Sailing Alone Around the World Joshua Slocum  novel',1,'[{\"added\": {}}]',6,1),(78,'2019-05-24 21:57:19.402440','19','Monie Monie Tommy James and the Shondels  Pentagons',1,'[{\"added\": {}}]',11,1),(79,'2019-05-24 21:57:39.641383','20','Money The Beatles  Pentagons',1,'[{\"added\": {}}]',11,1),(80,'2019-05-24 21:59:36.372407','14','Just like Me Paul Revere and the Raiders  Pentagons',2,'[{\"changed\": {\"fields\": [\"artist\"]}}]',11,1),(81,'2019-05-24 22:06:20.273777','21','Mustang Sally Wilson Picket  Pentagons',1,'[{\"added\": {}}]',11,1),(82,'2019-05-24 22:07:06.869651','22','I\'m Henery the Eight Hermans Hermits  Pentagons',1,'[{\"added\": {}}]',11,1),(83,'2019-05-25 13:20:14.167444','88','Moby Dick Herman Mellvile  novel',1,'[{\"added\": {}}]',6,1),(84,'2019-05-25 13:21:32.220765','23','Donna Buddy Holley  Pentagons',1,'[{\"added\": {}}]',11,1),(85,'2019-05-25 13:23:22.707828','24','Unchained Melody Rightious Brothers  Pentagons',1,'[{\"added\": {}}]',11,1),(86,'2019-05-25 14:17:31.336955','25','test test  Pentagons',1,'[{\"added\": {}}]',11,1),(87,'2019-05-25 15:36:23.074320','25','test test  Pentagons',3,'',11,1),(88,'2019-05-25 15:45:34.912312','26','test test  Pentagons',1,'[{\"added\": {}}]',11,1),(89,'2019-05-26 17:20:16.903630','26','test test  Pentagons',3,'',11,1),(90,'2019-05-26 17:27:42.256097','27','test test  Pentagons',1,'[{\"added\": {}}]',11,1),(91,'2019-06-03 12:57:31.241466','27','Good Lovin Rascals  Pentagons',2,'[{\"changed\": {\"fields\": [\"title\", \"artist\"]}}]',11,1),(92,'2019-06-03 12:59:12.217767','28','Don\'t let the Sun Catch You Crying Jerry and the Pacemakers  Pentagons',1,'[{\"added\": {}}]',11,1),(93,'2019-06-03 13:01:12.257109','29','Game of Love Wayne Fontana  Pentagons',1,'[{\"added\": {}}]',11,1),(94,'2019-06-04 02:24:31.005378','89','The Janson Directive Robert Ludlum  novel',1,'[{\"added\": {}}]',6,1),(95,'2019-06-18 20:16:07.004787','18','Get off of my cloud Rolling Stones  Pentagons',2,'[{\"changed\": {\"fields\": [\"title\", \"artist\"]}}]',11,1),(96,'2019-06-18 20:17:52.548460','30','Can\'t get no satisfaction Stones  Pentagons',1,'[{\"added\": {}}]',11,1),(97,'2019-06-24 13:41:11.052119','90','Die Trying Lee Child  novel',1,'[{\"added\": {}}]',6,1),(98,'2019-06-30 02:02:14.303712','91','Make Me Lee Child  novel',1,'[{\"added\": {}}]',6,1),(99,'2019-06-30 02:15:44.041714','92','Night School Lee Child  novel',1,'[{\"added\": {}}]',6,1),(100,'2019-07-03 19:59:30.543786','93','Personal Lee Childs  novel',1,'[{\"added\": {}}]',6,1),(101,'2019-07-03 19:59:31.226915','94','Personal Lee Childs  novel',1,'[{\"added\": {}}]',6,1),(102,'2019-07-03 20:00:23.911980','94','Personal Lee Childs  novel',3,'',6,1),(103,'2019-07-25 20:11:15.729705','95','Never Go Back Lee Childs  novel',1,'[{\"added\": {}}]',6,1),(104,'2019-08-02 13:20:47.039731','96','A wanted Man Lee Childs  novel',1,'[{\"added\": {}}]',6,1),(105,'2019-08-02 13:21:48.847524','96','A Wanted Man Lee Child  novel',2,'[{\"changed\": {\"fields\": [\"book_title\", \"authors\"]}}]',6,1),(106,'2019-08-02 13:21:49.448969','96','A Wanted Man Lee Child  novel',2,'[]',6,1),(107,'2019-08-02 13:22:16.523464','93','Personal Lee Child  novel',2,'[{\"changed\": {\"fields\": [\"authors\"]}}]',6,1),(108,'2019-08-02 13:22:40.299445','95','Never Go Back Lee Child  novel',2,'[{\"changed\": {\"fields\": [\"authors\"]}}]',6,1),(109,'2019-08-11 00:56:55.783706','97','The Hard Way Lee Child  novel',1,'[{\"added\": {}}]',6,1),(110,'2019-08-26 16:54:16.595255','98','The Enemy Lee Child  novel',1,'[{\"added\": {}}]',6,1),(111,'2019-08-26 16:56:09.680236','99','One Shot Lee Child  novel',1,'[{\"added\": {}}]',6,1),(112,'2019-09-07 15:01:44.634131','100','12 rules of life Jordan Peterson  text_book',1,'[{\"added\": {}}]',6,1),(113,'2019-09-09 23:57:31.159817','101','Gone Tomorrow Lee Childs  novel',1,'[{\"added\": {}}]',6,1),(114,'2019-09-10 13:51:49.985436','102','No Middle Name Lee Child  novel',1,'[{\"added\": {}}]',6,1),(115,'2019-10-02 14:01:37.126049','31','Light My Fire The Doors  Pentagons',1,'[{\"added\": {}}]',11,1),(116,'2019-10-02 14:02:15.376933','32','Turn Turn The Byrds  Pentagons',1,'[{\"added\": {}}]',11,1),(117,'2019-10-02 14:03:45.930837','33','Tamborine Man The Byrds  Pentagons',1,'[{\"added\": {}}]',11,1),(118,'2019-10-02 14:05:25.698832','103','Nano Michael Crieghton  novel',1,'[{\"added\": {}}]',6,1),(119,'2019-10-02 14:07:28.919265','104','Sphere Michael Crichton  novel',1,'[{\"added\": {}}]',6,1),(120,'2019-10-02 14:09:44.220843','103','Nano Michael Crieghton  novel',3,'',6,1),(121,'2019-10-02 14:10:24.184100','105','congo Michael Crichton  novel',1,'[{\"added\": {}}]',6,1),(122,'2019-10-02 14:10:55.166047','106','Nano Michael Crichton  novel',1,'[{\"added\": {}}]',6,1),(123,'2019-10-02 14:11:59.394016','107','Disclosure Michael Crichton  novel',1,'[{\"added\": {}}]',6,1),(124,'2019-10-02 14:12:43.237505','108','Timeline Michael Crichton  novel',1,'[{\"added\": {}}]',6,1),(125,'2019-10-02 14:13:00.590532','109','Prey Michael Crichton  novel',1,'[{\"added\": {}}]',6,1),(126,'2019-10-02 14:13:55.002052','110','Next Michael Crichton  novel',1,'[{\"added\": {}}]',6,1),(127,'2019-10-02 14:14:31.742202','111','State of Fear Michael Crichton  novel',1,'[{\"added\": {}}]',6,1),(128,'2019-10-02 14:14:56.807512','112','Micro Michael Crichton  novel',1,'[{\"added\": {}}]',6,1),(129,'2019-10-02 14:15:39.566603','113','Airframe Michael Crichton  novel',1,'[{\"added\": {}}]',6,1),(130,'2019-10-02 14:16:11.378144','114','The Lost World Michael Crichton  novel',1,'[{\"added\": {}}]',6,1),(131,'2019-10-02 14:17:48.643467','115','Rising Sun Michael Crichton  novel',1,'[{\"added\": {}}]',6,1),(132,'2019-10-02 14:20:51.549211','116','12      Rules for Life Jordan B Peterson  text_book',1,'[{\"added\": {}}]',6,1),(133,'2019-10-02 14:21:43.378008','100','12 rules of life Jordan Peterson  text_book',3,'',6,1),(134,'2019-10-06 17:45:54.208907','34','Pushin Too Hard The Seeds  Pentagons',1,'[{\"added\": {}}]',11,1),(135,'2019-10-29 12:48:16.216624','117','61 Hours Lee Childs  novel',1,'[{\"added\": {}}]',6,1),(136,'2019-10-29 12:49:44.503117','117','61 Hours Lee Child  novel',2,'[{\"changed\": {\"fields\": [\"authors\"]}}]',6,1),(137,'2019-10-29 12:50:13.412022','117','61 Hours Lee Child  novel',2,'[]',6,1),(138,'2019-10-29 12:50:39.856047','101','Gone Tomorrow Lee Child  novel',2,'[{\"changed\": {\"fields\": [\"authors\"]}}]',6,1),(139,'2019-10-29 13:06:18.808624','35','All of the day and all of the night Kinks  Pentagons',1,'[{\"added\": {}}]',11,1),(140,'2019-11-03 14:14:19.000230','118','Persuader Lee Child  novel',1,'[{\"added\": {}}]',6,1),(141,'2019-11-29 18:12:24.915079','119','Midnight Line Lee Child  novel',1,'[{\"added\": {}}]',6,1),(142,'2019-12-18 16:43:48.513495','120','Bad Luck Trouble Lee Child  novel',1,'[{\"added\": {}}]',6,1),(143,'2019-12-19 16:44:28.635710','6','wings for all (satire)',2,'[]',10,1),(144,'2019-12-19 17:05:42.192622','8','Orange Not Peach',1,'[{\"added\": {}}]',10,1),(145,'2019-12-19 17:10:08.431427','8','Orange Not Peach',2,'[]',10,1),(146,'2019-12-19 17:30:17.029070','8','Orange Not Peach',2,'[]',10,1),(147,'2019-12-20 15:11:43.944497','8','Orange Not Peach',2,'[]',10,1),(148,'2019-12-20 15:12:38.482199','8','Orange Not Peach(opine)',2,'[{\"changed\": {\"fields\": [\"lesson\"]}}]',10,1),(149,'2019-12-21 18:49:34.971744','8','Orange Not Peach(opine)',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(150,'2019-12-23 14:05:37.277028','9','Tom',1,'[{\"added\": {}}]',10,1),(151,'2019-12-24 03:49:20.056228','9','Tom',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(152,'2019-12-25 14:49:16.344673','9','Tom',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(153,'2019-12-25 23:39:17.967373','3','Jack Reacher series',1,'[{\"added\": {}}]',5,1),(154,'2019-12-26 00:05:49.590232','7','Tony Tony (political)',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(155,'2019-12-26 17:56:04.316726','2','My take on the present time',3,'',7,1),(156,'2019-12-26 18:09:50.327290','1','SOTU speech a home run 2019',2,'[{\"changed\": {\"fields\": [\"story\"]}}]',7,1),(157,'2020-01-03 14:12:30.679500','10','Losing my mind',1,'[{\"added\": {}}]',10,1),(158,'2020-01-03 14:14:16.744888','3','I think about you!',1,'[{\"added\": {}}]',7,1),(159,'2020-01-03 14:20:13.169241','3','I think about you!',3,'',7,1),(160,'2020-01-03 14:32:02.901397','10','Losing my mind (lyrics)',2,'[{\"changed\": {\"fields\": [\"lesson\"]}}]',10,1),(161,'2020-01-03 14:34:32.775832','9','Tom (memories)',2,'[{\"changed\": {\"fields\": [\"lesson\"]}}]',10,1),(162,'2020-01-03 14:35:04.678384','9','Tom (memories)',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(163,'2020-01-03 18:48:45.783765','10','Losing my mind (lyrics)',3,'',10,1),(164,'2020-01-08 15:58:45.317597','121','Worth Dying For Lee Child  novel',1,'[{\"added\": {}}]',6,1),(165,'2020-01-20 21:26:53.664673','11','portrait',1,'[{\"added\": {}}]',10,1),(166,'2020-01-21 04:25:46.554091','11','portrait',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(167,'2020-01-24 21:02:52.218890','11','portrait in courage new',2,'[{\"changed\": {\"fields\": [\"lesson\"]}}]',10,1),(168,'2020-01-28 01:06:31.096031','122','The Affair Lee Child  novel',1,'[{\"added\": {}}]',6,1),(169,'2020-01-28 01:15:00.296705','12','Young',1,'[{\"added\": {}}]',10,1),(170,'2020-01-28 02:27:57.335952','12','Young',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(171,'2020-01-28 16:41:00.866084','12','Young',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(172,'2020-01-29 15:18:34.854734','12','Young',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(173,'2020-02-02 18:39:12.526146','4','Schiff /Nadler duel scheduled',1,'[{\"added\": {}}]',7,1),(174,'2020-02-02 21:56:52.843991','4','Schiff /Nadler duel scheduled',2,'[{\"changed\": {\"fields\": [\"story\"]}}]',7,1),(175,'2020-02-03 17:08:14.987600','13','Scout Motto',1,'[{\"added\": {}}]',10,1),(176,'2020-02-04 03:18:23.176818','13','Scout oath',2,'[{\"changed\": {\"fields\": [\"lesson\", \"exercise\"]}}]',10,1),(177,'2020-02-04 03:20:49.137853','13','Scout law',2,'[{\"changed\": {\"fields\": [\"lesson\", \"exercise\"]}}]',10,1),(178,'2020-02-04 22:43:56.904512','12','Young',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(179,'2020-02-06 22:07:19.085589','2','marypio',1,'[{\"added\": {}}]',3,1),(180,'2020-02-06 22:11:36.772634','2','marypio',2,'[{\"changed\": {\"fields\": [\"user_permissions\", \"last_login\", \"date_joined\"]}}]',3,1),(181,'2020-02-06 22:15:55.074227','2','marypio',2,'[{\"changed\": {\"fields\": [\"is_staff\"]}}]',3,1),(182,'2020-02-06 22:18:36.428589','14','Polosi',1,'[{\"added\": {}}]',10,2),(183,'2020-02-08 15:43:53.129400','13','Scout law',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(184,'2020-02-08 16:04:01.760240','14','Polosi the ripper',2,'[{\"changed\": {\"fields\": [\"lesson\", \"exercise\"]}}]',10,1),(185,'2020-02-08 16:07:03.979914','5','Polosi The  Ripper',1,'[{\"added\": {}}]',7,1),(186,'2020-02-08 16:07:52.840937','14','Polosi the ripper',3,'',10,1),(187,'2020-02-08 17:55:08.352284','5','Polosi The  Ripper',2,'[{\"changed\": {\"fields\": [\"story\"]}}]',7,1),(188,'2020-02-17 04:11:10.172822','123','The Hero Lee Child  novel',1,'[{\"added\": {}}]',6,1),(189,'2020-02-29 14:25:37.310019','11','portrait in courage new',2,'[{\"changed\": {\"fields\": [\"exercise\"]}}]',10,1),(190,'2020-03-02 22:24:34.248728','124','The Fallen David Baldacci  mystery',1,'[{\"added\": {}}]',6,1),(191,'2020-03-02 22:26:43.541582','125','Before Bethlehem James Flerltag  novel',1,'[{\"added\": {}}]',6,1),(192,'2020-03-06 15:21:30.474360','126','Without Fail Lee Child  thriller',1,'[{\"added\": {}}]',6,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (8,'admin','logentry'),(1,'auth','group'),(2,'auth','permission'),(3,'auth','user'),(11,'band','bandsongs'),(5,'blog','post'),(6,'book','mybooksread'),(4,'contenttypes','contenttype'),(10,'home','home'),(7,'news','news'),(9,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'book','0001_initial','2019-02-03 03:31:54.237599'),(2,'book','0002_newsstory','2019-02-03 03:31:55.509433'),(3,'book','0003_delete_newsstory','2019-02-03 03:31:55.562790'),(4,'contenttypes','0001_initial','2019-02-03 03:32:35.977634'),(5,'auth','0001_initial','2019-02-03 03:32:44.099975'),(6,'blog','0001_initial','2019-02-03 03:32:46.459193'),(7,'blog','0002_auto_20190116_2041','2019-02-03 03:32:46.634946'),(8,'news','0001_initial','2019-02-03 03:33:07.760743'),(9,'news','0002_auto_20190119_2145','2019-02-03 03:33:07.796925'),(10,'admin','0001_initial','2019-02-03 03:43:34.669747'),(11,'admin','0002_logentry_remove_auto_add','2019-02-03 03:43:34.688440'),(12,'admin','0003_logentry_add_action_flag_choices','2019-02-03 03:43:34.705811'),(13,'contenttypes','0002_remove_content_type_name','2019-02-03 03:43:34.861947'),(14,'auth','0002_alter_permission_name_max_length','2019-02-03 03:43:34.911800'),(15,'auth','0003_alter_user_email_max_length','2019-02-03 03:43:35.000689'),(16,'auth','0004_alter_user_username_opts','2019-02-03 03:43:35.019813'),(17,'auth','0005_alter_user_last_login_null','2019-02-03 03:43:35.069449'),(18,'auth','0006_require_contenttypes_0002','2019-02-03 03:43:35.076339'),(19,'auth','0007_alter_validators_add_error_messages','2019-02-03 03:43:35.092643'),(20,'auth','0008_alter_user_username_max_length','2019-02-03 03:43:35.144266'),(21,'auth','0009_alter_user_last_name_max_length','2019-02-03 03:43:35.196085'),(22,'sessions','0001_initial','2019-02-03 03:43:36.136311'),(23,'home','0001_initial','2019-02-06 16:52:33.987907'),(24,'book','0004_auto_20190520_1223','2019-05-20 17:24:07.332812'),(25,'band','0001_initial','2019-05-20 18:03:39.967613');
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
INSERT INTO `django_session` VALUES ('0aazebn7mzmank1aslq3aku6za541emy','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-01-14 14:25:21.811459'),('1mdm4p1zh07pv5lhpx1dc8zuhlyhyl1u','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-01-03 15:06:12.692191'),('21izh6yyqlujft8xvlsec1vc6023yej6','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-03-02 04:10:34.838109'),('2c82q9p2cyqu6le5dbuxl4cxxot1p1wu','ODNlNDY2YjdhMGNkMzg5OWVhZmM0MDI3MGZiMTdlN2YyYzU1NjU1NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQyNzU0MmRhYmU1YTgzOWZkZGE3NzU4MmEwMDQxNGMzNjdiYTc0ODUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2020-02-20 22:16:47.442829'),('2ejphffc26kdywjbpjgh5u4iffdqftiv','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-02-26 18:49:48.636668'),('332mhdtxx749gwgy49rcuc3ohrq8p7pt','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-11-17 14:13:11.450804'),('3a0fyenedkabi7fizzesa0a4xl7f5886','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-11-12 12:46:23.889936'),('3td6efl8fp3pdk3oo0l7ykarjxdvkf9v','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-08-25 00:56:10.631115'),('4j0h3dffvfh0ujv37hx9eqsvbn75kw0a','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-01-02 16:39:55.820633'),('5l173itjy0luwzaeam3kipuol67m3bq5','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-04-20 23:45:05.362009'),('5p2bela1vubbuos8osop8g3m7issbca1','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-02-07 21:01:29.290351'),('785muxpkn76bd014g3i0rfjadplkydgj','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-03-15 23:32:44.207357'),('7ozb34onmrjqzsx3lacah6vck5x4ft93','ODNlNDY2YjdhMGNkMzg5OWVhZmM0MDI3MGZiMTdlN2YyYzU1NjU1NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQyNzU0MmRhYmU1YTgzOWZkZGE3NzU4MmEwMDQxNGMzNjdiYTc0ODUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2020-02-20 22:16:36.421259'),('8gjkb465y0mgzklt7l7skgao0qmq809r','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-01-01 16:42:49.011255'),('8tbts7wvd0m0kk01z2lag04qb5dikwdc','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-03-20 15:19:44.584388'),('9581lxlmhql78zx2invntexlo13mdjd3','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-07-02 20:14:46.321251'),('ahbyxfrup8caok9t31f65vhaxtj9pjh9','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-09-09 16:53:35.929269'),('apthofdyf6dlrtxjy0hd989tgnlsa18y','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-02-11 16:38:24.103881'),('bb4oj17q3d0e2o0to6ohb69beutkmhq7','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-01-17 18:48:20.902057'),('bw2zlgoh8cqnoc6a5mnldyty7yv1angm','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-10-16 14:00:26.340010'),('dhxlcfkv1dz5sryd9056z25c9hbc46ed','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-05-10 22:33:24.201714'),('dqqdjggysgxqgo6sim6vil9c6940fv28','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-02-20 20:27:43.927755'),('f1fkkejwlbvb7eijtkln198xslel63jm','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-09-24 13:51:10.369179'),('i0fo8s8yb1vj70ljgawq4d48hm83ao26','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-07-17 19:58:34.391685'),('j52cq4bua51zuij5ilvzhai164logmwh','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-03-16 22:18:55.396114'),('jnrrr1ceyj6b67n3w02ksqk2saez0aig','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-02-23 21:03:41.087974'),('k19rrpwjnpjxgdazwvij54cz99knyqp0','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-12-13 18:08:18.336097'),('lg7tqxe3jh6yhspenqy84e3391e1r8dd','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-11-06 14:48:16.296490'),('m99tgemy6ke5tfw7bwe6wmm6wf9lw6n6','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-10-20 17:44:48.179296'),('put5xkrddhez1xcv66ikus7wzov565iw','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-07-14 02:01:25.332960'),('qbs4qafaabnx0gxt6e2xg9pqey46ez5g','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-09-21 15:00:44.142314'),('sncmo7ufygw6hbrc8rqeor8vmtfs2bjt','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-09-23 23:48:59.374761'),('tukms6uop9skmeoazdb7acpt1tz20urm','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-02-04 04:22:38.119383'),('u4pwgkti3nnflwtsm9xj1mttl0a5ofye','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-08-08 20:10:00.901586'),('uw14dw4iwukua9r2ubsd1e3tidikjiic','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-06-04 22:05:38.540509'),('xa28u9fyhmm92mj3wram2qty4xm1dnak','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-05-03 15:00:08.539795'),('xcb45rf2q1n148d2fw3tn5w3b5lvvvoi','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-06-08 13:19:18.384705'),('xe9xz7sofru0opkzkvp7vp1n3kq1gfxy','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-02-11 01:05:42.776072'),('xv6o1ygazfxkk9kqjrty60jq1gua8t8w','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-03-14 01:59:56.978449'),('yfjqn5gf5qm06h1zhhi630aa2r37ysln','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-02-22 15:10:19.715391'),('ykbceo1v6drp5aexvh3fcx09j9mc4ku7','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2020-02-03 21:25:44.067624'),('z9sfknxoix0x0qd48eh5l472rpdorl2n','ODc5OTBmYWJlM2QxMjI2NDIwMzVkNzM1OTRhNmM1YjFjN2YxOGE3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1M2Y3ZWM2Zjc0OGYyODZhOGRkYjA0OTExNGRjNGM5NzQzODhmNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-07-08 13:40:07.330072');
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
INSERT INTO `home` VALUES (5,'choice (satire)','In our brave new world communication is our number one priority. Woops I forgot\r\n my I Phone on the kitchen table..wait that wont happen I\'ve had it surgically\r\n implanted under my skin on my left arm sure it hurt at first and somewhat when I\r\n take a shower but so worth it. I made the choice to have the surgery and while\r\n my doctor advised against it local state and federal law was on my side. with\r\n the appointment of Kavanagh who knows how long that will last. Any way this is\r\n how the new I Phone 27.786 works: you simply say or think \"computer\" nice retro\r\n touch don\'t you agree? and the device takes you to safari (the internet) and all\r\n your questions will be answered in the order they are received hell you can even\r\n make a phone call with the dammed thing. The reason I mention this is that now\r\n you don\'t have to say a word to communicate you never did in the first place but\r\n \"who knew\" a simple hand jester or repulse motion like when \"Creepy Joe\" tries\r\n to smell your hair and \"presto\" your communicating. This is very important because it\r\n lets all people make choices even those in the early stage of life an embryo can\r\n simply jester NO! by moving away from the prodding of a mini vacuum nozzle. So in conclusion I\r\n can state that I am unequivocally 100% pro choice but choice by the one who has\r\n the most to loose. \"Sorry my arm is throbbing I have to take this call.\"'),(6,'wings for all (satire)','How did these chicken wars start anyway. I prefer buffalo wings my self but I\r\n keep seeing stories about the extreme right and extreme left wing faction of our\r\n political parties even the Buffalo\'s get caught up in this bazaar ping pong\r\n game.\"Brietbart an extreme right news aggregator\" says the Huff Post an extreme\r\n left news aggregator. My son deliberately photo shopped the \"B Strong patch\" and\r\n Brietbart logo pin off my hat because he felt it was too far right for our\r\n family photograph.\"Chick Fill A\" a chicken specialist is faced with selling\r\n right or left wings in their wing baskets. One time the left wing basket had a\r\n right wing mixed in by accident..It was noticed and there was hell to be paid.\r\n the resturant was forced to close all day Sunday. Mean while the President \"an\r\n extreme right winger\"continues undaunted rebuilding the courts and doing the\r\n peoples business while extreme left wingers continue pecking on anything that\r\n moves. Please pass the ranch dressing .'),(7,'Tony Tony (political)','Madison; Governor Evers who won the election by a very slim margin thinks\r\nhe has a mandate to represent all the people of Wisconsin. I am referring to a\r\nmovement to join other radical states to decrease the census totals through late\r\nterm abortion. Now you would think Tony\'s position would be in the opposite\r\ndirection what with his love of children and teachers and right and wrong also\r\nthe golden rule \"do onto others as you would have them do onto you\". \"pay no\r\nattention to the man behind the curtain\" but we see you and do not like what we\r\nsee! I am not sure which constituency he is representing but it is very small\r\nindeed. Like it or not it doesn\'t matter about walls, taxes, coal,\r\nglobal warming, soda straws,parking meters,college degree or drivers license if\r\nwe don\'t allow the first and last breath of our family. There is a word going\r\naround \"retire..no,renaissance..no, RESIST!! that\'s it!! Who knew that word would\r\nbe so usefull.'),(8,'Orange Not Peach(opine)','Well the left has finally fallen into the trap,Yesterday Dec 18 2019 the small (thank God) group of fanatics moved to impeach the President. \r\nwith their own scenarios of how things went and a deep belief in the validity of their story telling . Committees and panels wasted a great deal of\r\ntheir valuable vacation time and our money and patience. The vote which reflects the party membership rolls of congress looks for all intents\r\nand purposes a we against them last stand before the left is out the door in 2020.In Battle Creek Michigan last night President Trump (nice ring to it)\r\ncalmly destroyed their position and the \"deplorable\"reacted not so calmly. A great time was had by all!'),(9,'Tom (memories)','Tom my Friend died on Christmas eve. He had been battling M S for too many years and the disease overcame his once strong body. I believe his strength has been\r\nrestored. Our relationship goes back over fifty years to a time when soul mates children and family responsibility were our main concerns. Our future wives\r\n(soulmates) best friends and classmates at Mercy Nursing School Oshkosh Wisconsin required we visit them on a regular basis. The ride sharing suggestion initiated\r\nTom and my lifelong friendship I am a car nut and when he picked Me up that first time in his 60\'s Ford Thunderbird i was blown away! I had a sixty three\r\nStudebaker a nice car for a young man but that t bird was tops even though it left us stranded when it broke in Oshkosh granting us more quality time with our\r\nfuture nurses. Tom and I discussed the many happy adventures we had during the nursing era but family times were ahead and memories of those times are great.\r\nDespite our obligations we shared many adventures together camping, picnics, children events. As our children got older we became involved in Marriage Encounter I\r\nremember suggesting it to Tom and Nancy. Well after their M E weekend they T and N became very active and super leaders in the program I am very proud of them.\r\nskipping ahead as empty Nester\'s T and N were the first to downsize living space and revisit the renting scene and we M and M visited their apartments often. When\r\nthey moved to Rivers Edge apts in downtown Green Bay I was very envious and Tom was very persistent that we follow suit and move in so our ride home after our\r\nevening of \"Scrabble\", conversations, and dessert would be short indeed. Lastly Tom and I became very interested in politics we have strong leanings toward the\r\nconservative side. I fondly remember our meet ups in the community center of our building to watch the \"Five At Four\" on Fox channel we had many laughs and ate a\r\nlot of chocolate during those visits. I will miss you Tom please put in a good word for us.  Love Mick'),(11,'portrait in courage new','As our Wisconsin\'s air temperature gets colder our cute VietNam neighbor \"Co\" \r\nlayers on another sweater and will not open the outer doors of our apartment \r\nbuilding without an additional Winter coat wrapped around her petite frame.\r\nToday I met her in the hallway wearing a warm parka with wolf type fur around \r\nthe hood prompting me to think of \"Nanak of the North\" a title I was given when\r\nI wore my Air Force surplus parka when I was her age. My wife has a coat like  \r\nCo\'s and rarely complains of the cold temps'),(12,'Young','You make me feel so young....\r\nYou make me feel there are songs to be sung\r\nbells to be rung  and a wonderful day to be won....\r\nand when I\'m feeling sad and blue..\r\nyou make me feel  brand new.....\r\n\r\nGreat lyrics, nice feelings, rare encounters. \r\nLike old and new friends, it\'s the friend part that matters.'),(13,'Scout law','\"A scout is Trustworthy.. Loyal .. Helpful.. Friendly.. Courteous.. Kind .. \r\nObedient.. Cheerful.. Thrifty.. Brave.. Clean .. Reverent\".... I wake up in the \r\nmiddle of thee night and find thoughts like this rattling around in my mind. It \r\ntook me a long time to memorize the Boy Scout Motto so I could earn the rank of \r\n\"Tenderfoot\". The ranks name speaks for itself. We (the troop) met once a week \r\nin a dinghy room in the basement of our school. I wonder why we didn\'t merit a \r\nbetter club room but the student population at that time allotted sixty plus\r\nstudents to a teacher and resources were stretched to the breaking point. My \r\nmemory of Scouting is mixed at best but leaning towards \"liking\" enough to \r\nenroll my two sons and try to make the experience better for them.I found out \r\nquickly what was ahead when I was made Scoutmaster. Fortunately there was \r\nsupport from the office and fellow parents. The laws  rings true  this \r\nday.');
/*!40000 ALTER TABLE `home` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mybooksread`
--

DROP TABLE IF EXISTS `mybooksread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mybooksread` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_title` varchar(50) COLLATE utf8_bin NOT NULL,
  `authors` varchar(50) COLLATE utf8_bin NOT NULL,
  `category` varchar(15) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mybooksread`
--

LOCK TABLES `mybooksread` WRITE;
/*!40000 ALTER TABLE `mybooksread` DISABLE KEYS */;
INSERT INTO `mybooksread` VALUES (1,'Borne Identity','Robert Ludlum','thriller'),(2,'The Geneva Strategy','Robert Ludlum','thriller'),(3,'Pillers and Bulwark','Marcus Grodi','novel'),(4,'Righteous Indignation','Andrew Brietbart','novel'),(5,'The Altman Code','Robert Ludlum','thriller'),(6,'The Secreat Sharer','Joseph Conrad','classics'),(7,'Strangers in a Strange Land','Bishop Charles Chaput','classics'),(8,'The Dawn of All','Robert Hugh Benson','classics'),(9,'Democracy in America','Alexis DeTocqueville','text_book'),(10,'Brush Back','Sarah Paretsky','mystery'),(11,'Glidepath','Andrew Watts','thriller'),(12,'Lord of the World','Robert Hugh Benson','classics'),(13,'Smarter way to learn css html','Mark Meyer','text_book'),(14,'Mastering Python','Michael  White','text_book'),(15,'Fade','Kyle Mills','thriller'),(16,'Free Fall','Kyle Mills','thriller'),(17,'How Trump Won','Joel Pollak','text_book'),(18,'How to speak correctly','Joseph Devin','text_book'),(19,'War and Peace','Leo Tolstoy','classics'),(20,'Cross Currents','Christine King','mystery'),(21,'Surface Tension','Christine King','mystery'),(22,'Breakdown','Sarah Paretsky','mystery'),(23,'Fall Out','Sarah Paretsky','mystery'),(24,'Fire Sale','Sarah Paretsky','mystery'),(25,'The Mysterious Island','Jules Verne','classics'),(58,'Lord Jim','Joseph Conrad','classics'),(59,'Calm in Chaos','George Rutler','classics'),(60,'The Last Gentleman','Walker Percy','novel'),(61,'The Second Comming','Walker Percy','novel'),(62,'The Moviegoer','Walker Percy','novel'),(63,'Love in the Ruins','Walker Percy','novel'),(64,'Lancelot','Walker Percy','novel'),(65,'Critical Mass','Sarah Paretsky','mystery'),(66,'Indemnity Only','Sarah Paretsky','mystery'),(67,'Body Work','Sarah Paretsky','mystery'),(68,'Bitter Medicine','Sarah Paretsky','mystery'),(69,'Hard Ball','Sarah Paretsky','mystery'),(70,'Blacklist','Sarah Paretsky','mystery'),(71,'Gardian Angel','Sarah Paretsky','mystery'),(72,'Hard Time','Sarah Paretsky','mystery'),(73,'Killing Orders','Sarah Paretsky','mystery'),(74,'Burn Marks','Sarah Paretsky','mystery'),(75,'Total Recall','Sarah Paretsky','mystery'),(76,'Tunnel Vision','Sarah Paretsky','mystery'),(77,'Catcher in the Rye','J D Salenger','classics'),(78,'Zen and the Art of Motorcycle Maintenance','Robert Persig','novel'),(79,'Heart of Darkness','Joseph Conrad','novel'),(80,'Catch 22','Joseph Heller','novel'),(81,'A Place of my Own the architecture of daydreams','Michael Pollan','novel'),(82,'Emacs','bantam press','text_book'),(83,'Finding a Form','William Gass','text_book'),(84,'Shell Game','Sarah Paretsky','mystery'),(85,'Beyond Modernity','George Rutler','classics'),(86,'Learning EMacs','James Elliot','text_book'),(87,'Sailing Alone Around the World','Joshua Slocum','novel'),(88,'Moby Dick','Herman Mellvile','novel'),(89,'The Janson Directive','Robert Ludlum','novel'),(90,'Die Trying','Lee Child','novel'),(91,'Make Me','Lee Child','novel'),(92,'Night School','Lee Child','novel'),(93,'Personal','Lee Child','novel'),(95,'Never Go Back','Lee Child','novel'),(96,'A Wanted Man','Lee Child','novel'),(97,'The Hard Way','Lee Child','novel'),(98,'The Enemy','Lee Child','novel'),(99,'One Shot','Lee Child','novel'),(101,'Gone Tomorrow','Lee Child','novel'),(102,'No Middle Name','Lee Child','novel'),(104,'Sphere','Michael Crichton','novel'),(105,'congo','Michael Crichton','novel'),(106,'Nano','Michael Crichton','novel'),(107,'Disclosure','Michael Crichton','novel'),(108,'Timeline','Michael Crichton','novel'),(109,'Prey','Michael Crichton','novel'),(110,'Next','Michael Crichton','novel'),(111,'State of Fear','Michael Crichton','novel'),(112,'Micro','Michael Crichton','novel'),(113,'Airframe','Michael Crichton','novel'),(114,'The Lost World','Michael Crichton','novel'),(115,'Rising Sun','Michael Crichton','novel'),(116,'12      Rules for Life','Jordan B Peterson','text_book'),(117,'61 Hours','Lee Child','novel'),(118,'Persuader','Lee Child','novel'),(119,'Midnight Line','Lee Child','novel'),(120,'Bad Luck Trouble','Lee Child','novel'),(121,'Worth Dying For','Lee Child','novel'),(122,'The Affair','Lee Child','novel'),(123,'The Hero','Lee Child','novel'),(124,'The Fallen','David Baldacci','mystery'),(125,'Before Bethlehem','James Flerltag','novel'),(126,'Without Fail','Lee Child','thriller');
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
  `story` longtext NOT NULL,
  `bi_line` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Michael Piontek','The address to the nation 2019 delivered by President Trump provided great  accomplishments and concerns for issues not yet resolved.I came away with  satisfaction and hope like never before. I can\'t understand why some of our citizens can\'t comprehend anything positive and must pick at any small defect to cloud the success surrounding this outstanding administration. It was good to see that congress provided babysitting services the children looked so nice in their white uniforms.','SOTU speech a home run 2019'),(4,'Micpio','Disparaged congressmen Adam Schiff and Jerry Nadler apparently have scheduled a \r\nduel for Wed Feb 3 before the 2020 state of the union address. The contest \r\nresults from a battle as to who would present the final argument in the Senate \r\nimpeachment trial of revered president Donnald Trump. Schiff was quoted as \r\nsaying \"this is what Hamilton and Burr would do and our nations traditions are \r\nat stake\" Shift has devoted three years in a desperate attempt to oust the \r\npresident and vowed to continue if he survives the duel with Nadler. For this \r\nreason the Congressmen have agreed in a last minute meeting to use custom made \r\nmuskets firing rubber suction cupped darts \"so no one gets hurt\". Wear your MAGA \r\nhats if you plan to attend.','Schiff /Nadler duel scheduled'),(5,'Mick','Nancy Polosi arrested as she leaves congress hall! Apparently ripping up a government document is  against the law, public documents must be shredded. Fines run to $5000 per page and community service. The service part will be the hard part for Polosi. Staff interviewed at the day care center where she lives when she is in California said \"she is a very strong willed person\". requiring lots of discipline.. \"she spends a lot of time sitting in the corner\".  She admitted the speech was spot on and her behavior was abhorrent and she was deeply sorry','Polosi The  Ripper');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-09 23:49:03
