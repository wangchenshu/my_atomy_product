# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.28)
# Database: my_atomy
# Generation Time: 2019-12-22 08:52:55 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `point` int(100) unsigned DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `name`, `price`, `point`, `updated_at`)
VALUES
	(1,'艾多美 艾不釋手經典系列','13670',250000,'2019-12-22 08:52:08'),
	(2,'艾多美 托特包','246',0,'2019-12-22 08:52:08'),
	(3,'艾多美 物理性防曬膏','380',5000,'2019-12-22 08:52:08'),
	(4,'艾多美 新春紅包袋','20',450,'2019-12-22 08:52:08'),
	(5,'艾多美 輕柔棉18cm','72',24700,'2019-12-22 08:52:08'),
	(6,'艾多美 水嫩亮白組','1399',11700,'2019-12-22 08:52:08'),
	(7,'艾多美 經典營養霜','688',12480,'2019-12-22 08:52:08'),
	(8,'艾多美 經典乳液','730',8800,'2019-12-22 08:52:08'),
	(9,'艾多美 經典精華液','699',23400,'2019-12-22 08:52:08'),
	(10,'艾多美 經典眼霜','388',19600,'2019-12-22 08:52:08'),
	(11,'艾多美 經典化妝水','1499',3000,'2019-12-22 08:52:08'),
	(12,'艾多美 雙色空氣粉餅 No.21','1390',5200,'2019-12-22 08:52:08'),
	(13,'艾多美 月桂保濕噴霧','520',2000,'2019-12-22 08:52:08'),
	(14,'艾多美 膠囊葉黃素30','370',6750,'2019-12-22 08:52:08'),
	(15,'艾多美 柔護寶貝三件組','320',1100,'2019-12-22 08:52:08'),
	(16,'艾多美 銀離子柔濕巾','525',360,'2019-12-22 08:52:08'),
	(17,'艾多美 養髮液','250',4700,'2019-12-22 08:52:08'),
	(18,'艾多美 好纖果乾-芒果綜合','1280',250000,'2019-12-22 08:52:08'),
	(19,'艾多美 凝萃煥髮洗髮乳','88',0,'2019-12-22 08:52:08'),
	(20,'艾多美 兒童薄膜口罩','350',5000,'2019-12-22 08:52:08'),
	(21,'艾多美 凝萃煥白精華液','13670',450,'2019-12-22 08:52:08'),
	(22,'艾多美 抽取式廚房紙巾','246',24700,'2019-12-22 08:52:08'),
	(23,'艾多美 凝萃煥髮護髮霜','380',11700,'2019-12-22 08:52:08'),
	(24,'艾多美 馬克杯組','20',12480,'2019-12-22 08:52:08'),
	(25,'Hi Atomy','72',8800,'2019-12-22 08:52:08'),
	(26,'艾多美 凝萃煥髪三部曲','1399',23400,'2019-12-22 08:52:08'),
	(27,'艾多美 香烤海苔(大片裝)','688',19600,'2019-12-22 08:52:08'),
	(28,'艾多美 凝萃煥膚防曬乳','730',3000,'2019-12-22 08:52:08'),
	(29,'艾多美 長效睫毛膏','699',5200,'2019-12-22 08:52:08'),
	(30,'艾多美 Daily沁涼舒緩面膜','388',2000,'2019-12-22 08:52:08'),
	(31,'艾多美 Daily亮白水嫩面膜','1499',6750,'2019-12-22 08:52:08'),
	(32,'艾多美 Daily緊緻保濕面膜','1390',1100,'2019-12-22 08:52:08'),
	(33,'艾多美 氣墊粉撲','520',360,'2019-12-22 08:52:08'),
	(34,'艾多美 經典保養五件組','370',4700,'2019-12-22 08:52:08'),
	(35,'艾多美 深層卸妝油','320',18200,'2019-12-22 08:52:08'),
	(36,'艾多美 蜂蜜飲(Atomy HemoHIM) 4組','525',1300,'2019-12-22 08:52:08'),
	(37,'艾多美 蜂蜜飲(Atomy HemoHIM) 1組','250',4560,'2019-12-22 08:52:08'),
	(38,'艾多美 夾心海苔燒(2盒裝)','1280',5160,'2019-12-22 08:52:08'),
	(39,'艾多美 維他命C粉','88',4200,'2019-12-22 08:52:08'),
	(40,'艾多美 空汙防護口罩','350',600,'2019-12-22 08:52:08'),
	(41,'艾多美 幸福堅果','55',57200,'2019-12-22 08:52:08'),
	(42,'艾多美 凝萃煥膚六部曲','1360',6800,'2019-12-22 08:52:08'),
	(43,'艾多美 潤色護唇膏','216',198000,'2019-12-22 08:52:08'),
	(44,'艾多美 隨行袖珍包','355',54600,'2019-12-22 08:52:08'),
	(45,'艾多美 珠光隔離乳','326',8000,'2019-12-22 08:52:08'),
	(46,'艾多美 保溫隨行杯','80',8400,'2019-12-22 08:52:08'),
	(47,'艾多美 阿拉比卡三合一即溶咖啡50入','3188',4500,'2019-12-22 08:52:08'),
	(48,'艾多美 抽取式洗碗布','11280',130000,'2019-12-22 08:52:08'),
	(49,'艾多美 即溶普洱茶','3260',4920,'2019-12-22 08:52:08'),
	(50,'艾多美 螺旋藻膠囊 100%','900',250,'2019-12-22 08:52:08'),
	(51,'艾多美 304不鏽鋼絲球','680',980,'2019-12-22 08:52:08'),
	(52,'艾多美 乳膠手套(M)','480',18200,'2019-12-22 08:52:08'),
	(53,'艾多美 洋薊膠囊','1350',1300,'2019-12-22 08:52:08'),
	(54,'艾多美 凝萃煥膚 營養霜','6800',4560,'2019-12-22 08:52:08'),
	(55,'艾多美 凝萃煥膚 眼霜','385',5160,'2019-12-22 08:52:08'),
	(56,'艾多美 凝萃煥膚 乳液','488',4200,'2019-12-22 08:52:08'),
	(57,'艾多美 凝萃煥膚 精華液','650',600,'2019-12-22 08:52:08'),
	(58,'艾多美 凝萃煥膚 化妝水','280',57200,'2019-12-22 08:52:08'),
	(59,'艾多美 鳳梨綜合酵素粉','120',6800,'2019-12-22 08:52:08'),
	(60,'艾多美 凝萃煥膚 安瓶','55',198000,'2019-12-22 08:52:08'),
	(61,'艾多美 精油 貼布 1盒(10包*5片)','1360',54600,'2019-12-22 08:52:08'),
	(62,'艾多美 花漾口紅-粉紅絲絨','216',8000,'2019-12-22 08:52:08'),
	(63,'艾多美 頭皮舒爽洗髮露','355',8400,'2019-12-22 08:52:08'),
	(64,'艾多美 男士精華液 1瓶','326',4500,'2019-12-22 08:52:08'),
	(65,'艾多美 男士乳液 1瓶','80',130000,'2019-12-22 08:52:08'),
	(66,'艾多美 男士化妝水 1瓶','3188',4920,'2019-12-22 08:52:08'),
	(67,'艾多美 316不鏽鋼湯鍋5.5公升','11280',250,'2019-12-22 08:52:08'),
	(68,'艾多美 316不鏽鋼湯鍋3.3公升','3260',980,'2019-12-22 08:52:08'),
	(69,'艾多美 316不鏽鋼湯鍋2.2公升','900',11000,'2019-12-22 08:52:08'),
	(70,'艾多美 316不鏽鋼單柄鍋1.8公升','680',750,'2019-12-22 08:52:08'),
	(71,'艾多美 柔護寶貝洗髮沐浴露','480',9000,'2019-12-22 08:52:08'),
	(72,'艾多美 柔護寶貝保濕乳霜','1350',20800,'2019-12-22 08:52:08'),
	(73,'艾多美 柔護寶貝潤膚乳','6800',26000,'2019-12-22 08:52:08'),
	(74,'艾多美 香烤海苔(小片裝) 1箱 (1箱4盒)','385',10000,'2019-12-22 08:52:08'),
	(75,'艾多美 輕柔棉28cm','488',6100,'2019-12-22 08:52:08'),
	(76,'艾多美 輕柔棉24cm','650',5600,'2019-12-22 08:52:08'),
	(77,'艾多美 溫和潔面慕斯','280',3750,'2019-12-22 08:52:08'),
	(78,'艾多美 洗手乳','120',4300,'2019-12-22 08:52:08'),
	(79,'艾多美 小麥馬鈴薯杯麵','920',82000,'2019-12-22 08:52:08'),
	(80,'艾多美 蜂膠牙膏50g 1組(4條)','780',70000,'2019-12-22 08:52:08'),
	(81,'艾多美 牙刷(小型刷頭) 1組 (8支)','85',57000,'2019-12-22 08:52:08'),
	(82,'艾多美 牙刷(大型刷頭) 1組 (8支)','150',51000,'2019-12-22 08:52:08'),
	(83,'艾多美 蜂膠牙膏200g(5條)','1080',6200,'2019-12-22 08:52:08'),
	(84,'艾多美 溫和卸妝水','1125',6500,'2019-12-22 08:52:08'),
	(85,'艾多美 水嫩潤唇膏','1265',11000,'2019-12-22 08:52:08'),
	(86,'艾多美 潤絲乳','1365',750,'2019-12-22 08:52:08'),
	(87,'艾多美 身體乳液 1瓶','460',9000,'2019-12-22 08:52:08'),
	(88,'艾多美 沐浴乳','425',20800,'2019-12-22 08:52:08'),
	(89,'艾多美 洗髮乳','430',26000,'2019-12-22 08:52:08'),
	(90,'艾多美 愛丹','420',10000,'2019-12-22 08:52:08'),
	(91,'艾多美 氣墊粉底 NO.23 SPF50+ PA+++','5480',6100,'2019-12-22 08:52:08'),
	(92,'艾多美 氣墊粉底 NO.21 SPF50+ PA+++','5200',5600,'2019-12-22 08:52:08'),
	(93,'艾多美 阿拉比卡即溶黑咖啡','4520',3750,'2019-12-22 08:52:08'),
	(94,'艾多美 阿拉比卡三合一即溶咖啡','3820',4300,'2019-12-22 08:52:08'),
	(95,'艾多美 濃縮衣物洗潔液','920',82000,'2019-12-22 08:52:08'),
	(96,'艾多美 濃縮洗衣粉','780',70000,'2019-12-22 08:52:08'),
	(97,'艾多美 碗盤蔬果洗潔液','85',57000,'2019-12-22 08:52:08'),
	(98,'艾多美 清潔護膚旅行組 1組','150',51000,'2019-12-22 08:52:08'),
	(99,'艾多美 肌膚保養旅行組 1組','1080',6200,'2019-12-22 08:52:08'),
	(100,'艾多美 護手霜四件組 1組(4條)','1125',6500,'2019-12-22 08:52:08'),
	(101,'艾多美 清潔護膚四件組','1265',6900,'2019-12-22 08:52:08'),
	(102,'艾多美 炸醬麵*1箱(16包)','1365',6000,'2019-12-22 08:52:08'),
	(103,'艾多美 濃縮衣物柔軟精','460',1800,'2019-12-22 08:52:08'),
	(104,'艾多美 貢布黑胡椒粒','425',1500,'2019-12-22 08:52:08'),
	(105,'艾多美 馬鈴薯蔬菜拉麵*1箱','430',1000,'2019-12-22 08:52:08'),
	(106,'艾多美 316不鏽鋼炒鍋5.4公升','420',3100,'2019-12-22 08:52:08'),
	(107,'艾多美 卸妝乳','5480',3900,'2019-12-22 08:52:08'),
	(108,'艾多美 洗面乳','5200',3250,'2019-12-22 08:52:08'),
	(109,'艾多美 玫瑰舒緩噴霧 1瓶','4520',6300,'2019-12-22 08:52:08'),
	(110,'艾多美 防曬霜(裸膚)','3820',2200,'2019-12-22 08:52:08'),
	(111,'艾多美 防曬霜(白皙)','998',3200,'2019-12-22 08:52:08'),
	(112,'艾多美 BB霜','238',15600,'2019-12-22 08:52:08'),
	(113,'艾多美 護髮油','188',4400,'2019-12-22 08:52:08'),
	(114,'艾多美7Solutions水凝膠面膜','288',3600,'2019-12-22 08:52:08'),
	(115,'艾多美 剝離式面膜','145',6900,'2019-12-22 08:52:08'),
	(116,'艾多美 去角質凝膠','980',6000,'2019-12-22 08:52:08'),
	(117,'艾多美 攜帶式口腔保健組 1組 (4個)','260',1800,'2019-12-22 08:52:08'),
	(118,'艾多美口腔護理禮盒','485',1500,'2019-12-22 08:52:08'),
	(119,'艾多美 綜合穀物飲','200',1000,'2019-12-22 08:52:08'),
	(120,'艾多美 舒緩修護三件組','335',3100,'2019-12-22 08:52:08'),
	(121,'艾多美 控油調理三件組','285',3900,'2019-12-22 08:52:08'),
	(122,'艾多美 舒緩修護乳液','270',3250,'2019-12-22 08:52:08'),
	(123,'艾多美 控油調理乳液','178',6300,'2019-12-22 08:52:08'),
	(124,'艾多美 控油調理精華','880',2200,'2019-12-22 08:52:08'),
	(125,'艾多美 舒緩修護精華','390',3200,'2019-12-22 08:52:08'),
	(126,'艾多美 修護化妝水','998',15600,'2019-12-22 08:52:08'),
	(127,'艾多美 環保衛生紙','238',4400,'2019-12-22 08:52:08'),
	(128,'艾多美 益生菌(Probiotics10+)','188',3600,'2019-12-22 08:52:08'),
	(129,'艾多美 葉黃素膠囊','288',3500,'2019-12-22 08:52:08'),
	(130,'艾多美 高濃度魚油膠囊','145',13000,'2019-12-22 08:52:08'),
	(131,'艾多美 男士保養三件組','980',3400,'2019-12-22 08:52:08'),
	(132,'會員加入申請書1ea','260',87000,'2019-12-22 08:52:08'),
	(133,'艾多美 產品介紹摺頁(10張)','485',2500,'2019-12-22 08:52:08'),
	(134,'艾多美產品型錄*1本','200',12600,'2019-12-22 08:52:08'),
	(135,'塑膠購物袋(大)*10個','335',6250,'2019-12-22 08:52:08'),
	(136,'塑膠購物袋(大)*1個','285',14300,'2019-12-22 08:52:08'),
	(137,'紙購物袋 *10個','270',29000,'2019-12-22 08:52:08'),
	(138,'紙購物袋 *1個','178',3500,'2019-12-22 08:52:08'),
	(139,'艾多美 紅蔘 1盒','880',13000,'2019-12-22 08:52:08');

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
