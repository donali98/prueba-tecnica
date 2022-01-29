-- MariaDB dump 10.19  Distrib 10.4.22-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: ecommerce
-- ------------------------------------------------------
-- Server version	10.4.22-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2019_12_14_000001_create_personal_access_tokens_table',1),(2,'2022_01_29_084041_create_products_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `barcode` bigint(20) NOT NULL,
  `name` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(7000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) unsigned NOT NULL,
  `description` varchar(7000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`barcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (166513290090,'facilis nostrum','https://via.placeholder.com/640x480.png/00ff44?text=iure',2636.66,'Tempora dolores sit quo voluptas.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(183416677889,'ut repellendus','https://via.placeholder.com/640x480.png/009955?text=sit',4848.98,'Tempore culpa quos sit odit cum suscipit.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(263710863390,'est maiores','https://via.placeholder.com/640x480.png/009944?text=dignissimos',598.13,'Ad est vero dolores vel dolorem recusandae cupiditate.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(295551139495,'et rem','https://via.placeholder.com/640x480.png/0088ff?text=cupiditate',4848.76,'Earum sit voluptatem neque et ducimus architecto.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(519328045568,'temporibus molestias','https://via.placeholder.com/640x480.png/00ee33?text=omnis',8181.02,'Repudiandae in quos architecto molestiae rerum quod.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(788166398093,'et consequatur','https://via.placeholder.com/640x480.png/00bb33?text=earum',3709.66,'Incidunt qui occaecati repudiandae possimus quis perspiciatis.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(1167931777834,'perspiciatis natus','https://via.placeholder.com/640x480.png/007777?text=dolores',8228.92,'Vel rerum magni officia commodi.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(1249000019769,'dolore deserunt','https://via.placeholder.com/640x480.png/001177?text=nesciunt',1869.09,'Et veniam laboriosam perferendis.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(1537212927553,'dolor aut','https://via.placeholder.com/640x480.png/000055?text=sequi',2016.81,'Consequatur officiis adipisci quia dolor reprehenderit.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(1708291889654,'sed quidem','https://via.placeholder.com/640x480.png/007799?text=nulla',9353.50,'Veritatis magni ut vel beatae hic eum sequi doloremque.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(2241213100158,'et dolorum','https://via.placeholder.com/640x480.png/0088dd?text=illo',9058.08,'Perferendis necessitatibus tempora nisi exercitationem molestias qui voluptate.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(2352502201767,'eveniet animi','https://via.placeholder.com/640x480.png/0044ff?text=aut',9595.69,'Optio eum sint atque.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(2435654372674,'sint minus','https://via.placeholder.com/640x480.png/004488?text=eligendi',828.77,'Reiciendis nemo aut deserunt consequuntur.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(2478021102979,'consequuntur enim','https://via.placeholder.com/640x480.png/00dd55?text=dolorem',4059.27,'Consequatur officiis architecto veritatis et ipsum vel.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(2659038498921,'reiciendis soluta','https://via.placeholder.com/640x480.png/006699?text=suscipit',3899.62,'Sapiente suscipit quam blanditiis ut aspernatur recusandae aut.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(2668546823156,'quasi ullam','https://via.placeholder.com/640x480.png/00dd33?text=corporis',7817.25,'Ut vero culpa voluptatum recusandae qui deserunt officiis.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(2734537614444,'voluptas voluptatibus','https://via.placeholder.com/640x480.png/00eeff?text=harum',4088.78,'Maxime tempore et omnis ut neque omnis.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(3094516992161,'et sit','https://via.placeholder.com/640x480.png/00dddd?text=omnis',1538.94,'Nobis reiciendis autem enim.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(3116077118061,'enim ex','https://via.placeholder.com/640x480.png/00ee11?text=ut',7043.77,'Accusamus libero quia aliquid et minima ipsa cum.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(3123515318273,'ut ut','https://via.placeholder.com/640x480.png/009944?text=maiores',2558.92,'Illo eum quia vitae laborum enim.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(3135797340132,'esse cupiditate','https://via.placeholder.com/640x480.png/005555?text=necessitatibus',4301.90,'Error ut est et et ullam ut.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(3805913410550,'at a','https://via.placeholder.com/640x480.png/0022ee?text=officia',9415.12,'Vel perspiciatis voluptatem fugiat dignissimos dolores itaque quam.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(4565166852673,'natus debitis','https://via.placeholder.com/640x480.png/0022bb?text=dignissimos',1866.85,'Quos dolorum reprehenderit sequi magni eaque est.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(5105418213167,'cupiditate enim','https://via.placeholder.com/640x480.png/002266?text=dolorem',5253.91,'Aperiam et ea et nulla.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(5139975017623,'magni reprehenderit','https://via.placeholder.com/640x480.png/0044ff?text=voluptatem',4313.42,'Qui temporibus sapiente distinctio est sit nesciunt.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(5198605488820,'suscipit odit','https://via.placeholder.com/640x480.png/00ffcc?text=soluta',1013.93,'Quidem incidunt voluptatibus qui deleniti repellendus error est quas.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(5490203173123,'quia sit','https://via.placeholder.com/640x480.png/0044cc?text=ea',1015.38,'Quia pariatur facilis vel quaerat pariatur.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(5590904359649,'recusandae molestias','https://via.placeholder.com/640x480.png/0022aa?text=soluta',3467.38,'Necessitatibus dolorem dicta tempora et voluptatem nostrum ab.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(5645995323830,'aut fugit','https://via.placeholder.com/640x480.png/007755?text=numquam',4994.47,'Nesciunt ratione nostrum reiciendis expedita.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(5659992833797,'vitae voluptates','https://via.placeholder.com/640x480.png/0066cc?text=occaecati',8619.37,'Voluptatem qui dignissimos inventore fuga esse.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(5662771301325,'corrupti dolor','https://via.placeholder.com/640x480.png/0055dd?text=perspiciatis',1909.35,'Vel omnis laborum repellat suscipit consequatur harum temporibus dolorem.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(5696623225187,'voluptatibus et','https://via.placeholder.com/640x480.png/000044?text=error',5730.26,'Iure eius assumenda quo delectus iusto.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(6261975341619,'perferendis voluptates','https://via.placeholder.com/640x480.png/00bbff?text=accusamus',5236.24,'Enim qui quae esse quo et.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(6301580039393,'corporis iste','https://via.placeholder.com/640x480.png/00aa33?text=et',1984.85,'Repellat et neque exercitationem impedit ullam dolorem voluptatem.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(6466020400994,'sequi perspiciatis','https://via.placeholder.com/640x480.png/009944?text=libero',6126.09,'Non repudiandae ea cum voluptate.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(6656539008938,'inventore illo','https://via.placeholder.com/640x480.png/002288?text=consequatur',6309.40,'Sit eligendi animi exercitationem hic ut.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(6764480988589,'eos quo','https://via.placeholder.com/640x480.png/009977?text=consequatur',9706.92,'Cum natus occaecati qui.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(7147768932006,'numquam incidunt','https://via.placeholder.com/640x480.png/00aa88?text=exercitationem',5741.56,'Aperiam eum illum modi atque.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(7211019765825,'perspiciatis consequatur','https://via.placeholder.com/640x480.png/009977?text=illum',2632.64,'Consequatur aspernatur consequatur iste molestiae et est quia.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(7215011879108,'dignissimos recusandae','https://via.placeholder.com/640x480.png/0077bb?text=eligendi',6445.29,'Officia ea et rerum qui fuga eum.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(7250329675912,'illum vitae','https://via.placeholder.com/640x480.png/008855?text=debitis',3851.96,'Fugiat eos velit doloribus animi ea.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(7317073365503,'quidem eum','https://via.placeholder.com/640x480.png/0077dd?text=numquam',5896.69,'Ipsam fugit qui animi eos quia suscipit dolores.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(7556380036151,'reiciendis quia','https://via.placeholder.com/640x480.png/0099bb?text=placeat',3347.03,'Distinctio ut vel assumenda id.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(8049935996905,'voluptatem voluptates','https://via.placeholder.com/640x480.png/0077aa?text=autem',5053.24,'Nemo deleniti eaque quisquam incidunt.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(8578439792220,'saepe veritatis','https://via.placeholder.com/640x480.png/0055ff?text=eum',3299.97,'Ut quos voluptatibus sint voluptatum et vel qui.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(8644821459924,'et dolores','https://via.placeholder.com/640x480.png/001155?text=qui',2556.29,'Placeat voluptate asperiores et nam omnis voluptates fugiat.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(8805625997467,'dolore molestiae','https://via.placeholder.com/640x480.png/00aa55?text=aut',9042.36,'Voluptas dolorem ducimus qui consequuntur dolore sequi.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(8923798606907,'tempore assumenda','https://via.placeholder.com/640x480.png/009944?text=aut',3465.15,'Distinctio eos unde ipsa molestias repellendus sed.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(9527654736457,'modi dicta','https://via.placeholder.com/640x480.png/00dd00?text=sequi',5466.05,'Quae odit sequi suscipit quis sit.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL),(9918357252953,'rerum molestiae','https://via.placeholder.com/640x480.png/00bb77?text=non',7592.36,'Dolore magni molestiae quisquam quis laboriosam.','2022-01-30 01:10:56','2022-01-30 01:10:56',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-29 13:33:44
