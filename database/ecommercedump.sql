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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `barcode` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `products` VALUES ('0034250566535','sunt voluptatem','https://via.placeholder.com/640x480.png/00dd55?text=eum',6461.19,'Fugiat aspernatur similique consequatur quo beatae quia quia.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('0068622793786','necessitatibus ipsa','https://via.placeholder.com/640x480.png/008855?text=amet',3154.47,'Tempore dolor cupiditate ea dicta.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('0279688406095','sed consequuntur','https://via.placeholder.com/640x480.png/0033bb?text=earum',2212.07,'Quia earum quod sunt et quaerat laboriosam.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('0487695620490','consectetur consequatur','https://via.placeholder.com/640x480.png/006655?text=quam',4952.31,'Harum porro modi atque id et mollitia deserunt.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('0680853261522','unde cumque','https://via.placeholder.com/640x480.png/0055bb?text=illo',6016.97,'Vel perferendis odit ipsam libero ratione quisquam est.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('1375716889010','voluptates officiis','https://via.placeholder.com/640x480.png/00aa66?text=perspiciatis',2120.18,'In quasi ut sunt rerum minus.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('1914244241763','nihil minima','https://via.placeholder.com/640x480.png/002211?text=tenetur',4200.82,'Hic sequi fugit ullam alias cum nobis quasi.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('2021251323364','rem velit','https://via.placeholder.com/640x480.png/00dd00?text=omnis',2098.22,'Odio harum ipsam veritatis consequuntur eos blanditiis maxime.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('2038603750686','est quia','https://via.placeholder.com/640x480.png/00ee11?text=qui',8253.75,'Et magnam excepturi in maxime necessitatibus quas.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('2041420923256','corporis sint','https://via.placeholder.com/640x480.png/00dd44?text=reiciendis',5798.13,'Eligendi atque et dolor illum omnis sunt voluptatem.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('2249058902760','tenetur maiores','https://via.placeholder.com/640x480.png/004444?text=atque',2381.45,'Accusantium corrupti quas maxime et voluptates cumque temporibus reiciendis.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('2367141533438','facere est','https://via.placeholder.com/640x480.png/002200?text=debitis',6981.37,'Iure voluptas ipsam consequatur maxime porro eos esse.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('2646360784716','consequuntur omnis','https://via.placeholder.com/640x480.png/0077ee?text=quaerat',611.12,'Sit deserunt totam ut delectus vitae eligendi.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('2679706580604','cupiditate nobis','https://via.placeholder.com/640x480.png/007744?text=illo',5137.59,'Doloribus qui aut tempore aut nemo neque dolor.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('2778909905594','blanditiis et','https://via.placeholder.com/640x480.png/0066ee?text=dolore',876.44,'Qui quas deserunt tenetur accusamus ea asperiores sunt.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('3023247238538','blanditiis officia','https://via.placeholder.com/640x480.png/00ddee?text=sed',572.16,'Ut ratione pariatur ex.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('3620675752034','nam perspiciatis','https://via.placeholder.com/640x480.png/00ee66?text=quos',9885.26,'Maiores provident iste laudantium voluptatem placeat minima.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('3661657041357','omnis blanditiis','https://via.placeholder.com/640x480.png/004422?text=magnam',1303.37,'Quod eaque facilis sit rerum nisi ea fugit maiores.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('3681635657707','aut quo','https://via.placeholder.com/640x480.png/007766?text=vero',6274.02,'Libero ea ut sapiente vel qui.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('4125596515625','nihil repellendus','https://via.placeholder.com/640x480.png/006655?text=adipisci',5576.42,'Repellat vel minus voluptas et pariatur eum.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('4143621036686','molestias vel','https://via.placeholder.com/640x480.png/00ddcc?text=iste',9233.54,'Animi assumenda animi magnam dolor libero.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('4188412456939','officiis aut','https://via.placeholder.com/640x480.png/00aadd?text=et',8785.77,'Quam temporibus molestias et quas illum ratione neque.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('4389272234440','sed facilis','https://via.placeholder.com/640x480.png/009900?text=esse',341.70,'Qui nihil ut est eum dolor tenetur aut.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('4756760587225','quae esse','https://via.placeholder.com/640x480.png/0077dd?text=eos',6367.02,'Voluptates pariatur aperiam error accusantium.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('4942328987655','nostrum aut','https://via.placeholder.com/640x480.png/00ee55?text=dicta',7126.24,'Quo tempora excepturi ipsa labore culpa.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('5029729249151','pariatur ducimus','https://via.placeholder.com/640x480.png/004488?text=ea',6502.24,'Laboriosam sit dignissimos accusantium molestiae.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('5090874769078','est sunt','https://via.placeholder.com/640x480.png/0066bb?text=reiciendis',325.31,'Vel facere nostrum error autem maiores.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('5171139038792','velit dolor','https://via.placeholder.com/640x480.png/0011bb?text=labore',8686.89,'Necessitatibus nisi dolores sequi nostrum et.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('5551434662487','et qui','https://via.placeholder.com/640x480.png/00ddcc?text=molestiae',8789.95,'Odio mollitia alias dolor dolor delectus harum incidunt.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('5793199493269','quia culpa','https://via.placeholder.com/640x480.png/00ee99?text=ut',2478.04,'Porro blanditiis et tempore sit dolor est minus.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('5869131487426','magni et','https://via.placeholder.com/640x480.png/00ee99?text=unde',6326.83,'Maxime esse expedita eos eos.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('6164853071755','est quo','https://via.placeholder.com/640x480.png/00dd33?text=et',3028.54,'Consequatur cum fugit ab quod nihil eos voluptatem.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('6263772777684','error ea','https://via.placeholder.com/640x480.png/0044ee?text=iusto',1864.44,'Ea ut libero culpa qui fugiat aperiam.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('6316319587830','ut soluta','https://via.placeholder.com/640x480.png/00dd11?text=illum',238.89,'Et amet molestiae quam dolorum harum laudantium.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('6937840473715','soluta natus','https://via.placeholder.com/640x480.png/00aacc?text=quis',4500.12,'Ut explicabo laboriosam sit qui placeat qui.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('6974970177458','ut exercitationem','https://via.placeholder.com/640x480.png/000066?text=mollitia',1170.94,'Nostrum unde est et nam.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('6979119928946','est neque','https://via.placeholder.com/640x480.png/004433?text=minima',1736.27,'Qui numquam tempore praesentium earum consequatur eum nihil.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('7460264811904','rem voluptate','https://via.placeholder.com/640x480.png/00aacc?text=sed',8377.86,'Ut quis nisi magnam dolorum sequi error.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('7559341253161','occaecati harum','https://via.placeholder.com/640x480.png/00eeff?text=numquam',8032.08,'Atque est rerum aut qui voluptatibus et.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('7618329332547','iusto ab','https://via.placeholder.com/640x480.png/00ee33?text=fuga',3313.34,'Sapiente reiciendis itaque voluptatem maxime velit officiis atque.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('7817559916781','et eos','https://via.placeholder.com/640x480.png/0011bb?text=ea',62.72,'Asperiores rerum quae ut culpa voluptatem.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('8274799629915','eaque blanditiis','https://via.placeholder.com/640x480.png/0066ee?text=aut',9051.81,'Ipsa at necessitatibus amet accusamus.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('8436988219592','impedit vel','https://via.placeholder.com/640x480.png/0088ee?text=cumque',4278.51,'Praesentium debitis nisi sed perferendis molestias est quibusdam tenetur.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('8704366102676','saepe beatae','https://via.placeholder.com/640x480.png/000055?text=cupiditate',3803.75,'Sapiente aut nam excepturi.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('8931706885368','veniam ipsam','https://via.placeholder.com/640x480.png/00cc44?text=voluptas',6978.86,'Qui et at quia minima quae omnis quis.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('9162745901033','aut rerum','https://via.placeholder.com/640x480.png/007700?text=minima',1465.44,'Dolores impedit quo est laboriosam.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('9684917837594','nisi quia','https://via.placeholder.com/640x480.png/005544?text=aut',779.07,'Et sit rerum quam.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('9707245182287','deserunt error','https://via.placeholder.com/640x480.png/003300?text=harum',5996.28,'Sit reprehenderit dolor et possimus voluptatum consequatur libero.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('9747417158788','laudantium dolores','https://via.placeholder.com/640x480.png/0011aa?text=rerum',5770.31,'Voluptas ipsum non ipsa est nihil officia reprehenderit.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL),('9973338470405','possimus veniam','https://via.placeholder.com/640x480.png/0099ee?text=possimus',98.88,'Animi dolorum voluptas fugiat animi aut consequatur tempore.','2022-01-29 20:47:54','2022-01-29 20:47:54',NULL);
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

-- Dump completed on 2022-01-29  8:48:52
