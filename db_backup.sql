-- MySQL dump 10.13  Distrib 8.0.22, for osx10.15 (x86_64)
--
-- Host: localhost    Database: temiyage
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
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
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` bigint unsigned DEFAULT NULL,
  `item_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `items_store_id_foreign` (`store_id`),
  CONSTRAINT `items_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (4,NULL,'マカロン6個詰合わせ','ピエール・エルメ・パリの代表アイテム、マカロン。人気の高い定番フレーバー6種を詰め合わせた6個入りギフトボックスです。どなたにも喜ばれる定番の詰め合わせ内容は、贈り物や手土産などのギフトとしても最適です。','https://www.pierreherme.co.jp/product/image/11095/004066.jpg',2808,'2021-01-14 05:50:54','2021-01-14 05:50:54'),(5,NULL,'キャレ ショコラ オ レ エルメ','カカオの醍醐味がダイレクトに味わえる、シンプルな薄い板タイプのチョコレート。ピエール・エルメ・パリの隠れた人気商品です。カカオ45%のまろやかな甘みのオリジナルミルクチョコレートは、どなたに贈っても喜ばれる一品です。','https://www.pierreherme.co.jp/product/image/12070/003853.jpg',2700,'2021-01-14 05:52:28','2021-01-14 05:52:28'),(6,NULL,'サブレ2種詰合わせ 秋冬限定','バターの香りが広がる「サブレ ヴィエノワ」と、アーモンドの歯ざわりが楽しい「サブレ アマンド」の詰合わせ。シックな赤のギフトBOXでお届けいたします。','https://www.pierreherme.co.jp/product/image/13089/005313.jpg',3024,'2021-01-14 05:53:16','2021-01-14 05:53:16'),(7,NULL,'マロングラッセ 12個詰合わせ','ほっこり優しい味わいの栗が、ピエール・エルメの手にかかるとまるでオートクチュールを纏ったように、珠玉の一品となります。シンプルなナチュールのほか、ビターチョコレートでコーティングした「ショコラ」、そして洋梨のオードヴィを含ませた芳醇な味わいの「ポワール」をご用意しました。','https://www.pierreherme.co.jp/product/image/13085/005274.jpg',7560,'2021-01-14 05:54:23','2021-01-14 05:54:23'),(8,NULL,'グランスタ東京店限定『マルコリーニ ビスキュイ 6枚入り』','カカオのインパクトを感じるオリジナルのクーベルチュールを、優しいジンジャー風味の ビスキュイでサンドした、上質なテイストの一品です。 軽い食感と、穏やかな甘さは男性にも喜ばれています。 お土産やギフトにも最適です。','https://gigaplus.makeshop.jp/pierremarco/01_img/page/shop/31/gransta_menu_img_6p_s.jpg',3564,'2021-01-14 05:57:20','2021-01-14 05:57:20'),(9,NULL,'パート ド　フリュイ 6個入り','果実のピューレをぎゅっと濃縮させた贅沢なゼリー菓子＜パート ド フリュイ＞ピエール マルコリーニのパート ド フリュイのレシピの秘密は、華やかな香りの果実を選ぶこと、果実本来の甘みを生かすために砂糖は控えめに、そしてオリジナルのホワイトチョコレートの薄い層でサンドしました。 口どけの良いホワイトチョコレートと濃厚で贅沢なフルーツの酸味のコントラストをお楽しみください。','https://makeshop-multi-images.akamaized.net/pierremarco/shopimages/59/04/1_000000000459.jpg?1609147900',2376,'2021-01-14 05:58:16','2021-01-14 05:58:16'),(10,NULL,'アイス&ソルベ6個入り(No.4)','WEBおすすめ!リッチな食感のアイスクリームと果実を丸ごと食べているかのようなソルベの詰め合わせ。 全フレーバー素材を厳選した、マルコリーニのこだわりが感じられる逸品です。','https://makeshop-multi-images.akamaized.net/pierremarco/shopimages/21/00/1_000000000021.jpg?1598242398',4104,'2021-01-14 05:59:11','2021-01-14 05:59:11'),(11,NULL,'マルゼルブ 70g缶','本店のあるパリの「マルゼルブ通り」を冠したブレンドは、パッションフルーツ、桃、野いちごやバラの鮮やかな彩りでパリの華やかさが感じられるフレーバー。(グリーンティー ベース)','https://makeshop-multi-images.akamaized.net/pierremarco/shopimages/62/00/1_000000000062.jpg?1592557835',1944,'2021-01-14 06:00:01','2021-01-14 06:00:01'),(12,NULL,'プーチキン 70g缶','レモン、オレンジの柑橘フルーツとベルガモットのさわやかな酸味と香りが大人気のフレーバー。(ブラックティー ベース)','https://makeshop-multi-images.akamaized.net/pierremarco/shopimages/64/00/1_000000000064.jpg?1592557944',2052,'2021-01-14 06:00:56','2021-01-14 06:00:56'),(13,NULL,'マルコリーニ　チョコレートケーキ','オリジナルクーベルチュールを使用したシンプルなチョコレートケーキ。 コンフィチュール、アイスクリームなどと合わせると新しい美味しさが生まれます。','https://makeshop-multi-images.akamaized.net/pierremarco/shopimages/10/00/1_000000000010.jpg?1592289791',1836,'2021-01-14 06:01:37','2021-01-14 06:01:37'),(14,NULL,'小形羊羹 5本入','小形羊羹「夜の梅」「おもかげ」「新緑」「はちみつ」「紅茶」各1点を詰め合わせました。','https://toraya-prd.s3.amazonaws.com/__/_products/toraya/item/101211_1.jpg?_=1610500132',1620,'2021-01-14 06:06:35','2021-01-14 06:06:35'),(15,NULL,'竹皮包羊羹 3本入','竹皮包羊羹「夜の梅」「おもかげ」「新緑」各1点を詰め合わせました。','https://toraya-prd.s3.amazonaws.com/__/_products/toraya/item/2_9_1.jpg?_=1610500132',9396,'2021-01-14 06:07:17','2021-01-14 06:07:17'),(16,NULL,'最中・残月詰合せ 1号','最中「御代の春 紅」「弥栄」「御代の春 白」各2点と、生姜入焼菓子「残月」5点を詰め合わせました。','https://toraya-prd.s3.amazonaws.com/__/_products/toraya/item/117351_1.jpg?_=1610500132',3046,'2021-01-14 06:08:26','2021-01-14 06:08:26');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2021_01_10_011819_create_items_table',1),(5,'2021_01_14_123827_create_stores_table',2),(6,'2021_01_14_131643_create_stores_table',3),(7,'2021_01_14_131854_create_items_table',4),(8,'2021_01_14_135254_create_items_table',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
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
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stores_store_name_unique` (`store_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (4,'ピエール・エルメ 日本橋三越','〒103-8001 東京都中央区日本橋室町1-4-1','https://www.pierreherme.co.jp/images/2018/02/nihonbashi-mitsukoshi01.jpg','2021-01-14 05:49:37','2021-01-14 05:49:37'),(5,'ピエールマルコリーニ グランスタ東京店','〒100-0005 東京都千代田区丸の内 1-9-1ＪＲ東日本東京駅構内Ｂ１Ｆ [ 銀の鈴広場横 ]','https://gigaplus.makeshop.jp/pierremarco/01_img/page/shop/27/shop_main.jpg','2021-01-14 05:56:33','2021-01-14 05:56:33'),(6,'TORAYA TOKYO','〒100-0005　東京都千代田区丸の内1-9-1 東京ステーションホテル2階','https://toraya-prd.s3.amazonaws.com/__/_shop/toraya/14_3.jpg?_=1610059543','2021-01-14 06:05:33','2021-01-14 06:05:33');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2021-01-15  2:06:49
