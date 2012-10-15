# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.24)
# Database: buddy_development
# Generation Time: 2012-10-15 02:44:09 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table refinery_events
# ------------------------------------------------------------

DROP TABLE IF EXISTS `refinery_events`;

CREATE TABLE `refinery_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `begin_at` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `content` text,
  `photo_id` int(11) DEFAULT NULL,
  `select_show` tinyint(1) DEFAULT NULL,
  `event_end` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `refinery_events` WRITE;
/*!40000 ALTER TABLE `refinery_events` DISABLE KEYS */;

INSERT INTO `refinery_events` (`id`, `title`, `begin_at`, `address`, `category`, `content`, `photo_id`, `select_show`, `event_end`, `position`, `created_at`, `updated_at`)
VALUES
	(2,'石库门里的舞会 第二期','2012-09-11','上海市石库门','老友乐相伴','<p>旨在吸引青年人／爱心人士／机构进入社区，与智障人士、残障人士、失能老人一起聊天、手工、电影欣赏、运动、做点心等等⋯⋯</p>',9,0,0,0,'2012-09-11 03:14:05','2012-09-11 03:14:05'),
	(3,'聆听“421”家庭结构变迁声音','2012-09-11','上海市石库门','老友乐相伴','<p>聆听“421”家庭结构变迁声音</p>',10,0,0,1,'2012-09-11 03:15:17','2012-09-11 03:15:17'),
	(4,'旅游日公益陪伴助老活动 ','2012-09-11','上海市石库门','老友乐相伴','<p>老友乐相伴</p>',11,0,0,2,'2012-09-11 03:16:04','2012-09-11 03:16:04'),
	(5,'世界卫生日“清爽助洁”活动','2012-09-11','安徽','活动','<p>世界卫生日“清爽助洁”活动</p>',12,0,0,3,'2012-09-11 03:16:36','2012-09-11 03:16:36'),
	(6,'石库门里地舞会','2012-09-11','上海市石库门','活动','<p>石库门里地舞会</p>',13,0,0,4,'2012-09-11 03:17:24','2012-09-19 05:42:49'),
	(7,'测试 ','2012-09-19','安徽','老友乐相伴','<p>fdafdsafdafdafdasfdasf</p>',6,1,0,5,'2012-09-19 05:43:37','2012-09-27 08:28:28');

/*!40000 ALTER TABLE `refinery_events` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table refinery_images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `refinery_images`;

CREATE TABLE `refinery_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_mime_type` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_size` int(11) DEFAULT NULL,
  `image_width` int(11) DEFAULT NULL,
  `image_height` int(11) DEFAULT NULL,
  `image_uid` varchar(255) DEFAULT NULL,
  `image_ext` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `refinery_images` WRITE;
/*!40000 ALTER TABLE `refinery_images` DISABLE KEYS */;

INSERT INTO `refinery_images` (`id`, `image_mime_type`, `image_name`, `image_size`, `image_width`, `image_height`, `image_uid`, `image_ext`, `created_at`, `updated_at`)
VALUES
	(1,'image/jpeg','banner1.jpg',51047,155,155,'2012/09/11/11_06_57_388_banner1.jpg',NULL,'2012-09-11 03:06:57','2012-09-11 03:06:57'),
	(2,'image/jpeg','banner2.jpg',50904,155,155,'2012/09/11/11_07_16_530_banner2.jpg',NULL,'2012-09-11 03:07:16','2012-09-11 03:07:16'),
	(3,'image/jpeg','banner3.jpg',46383,155,155,'2012/09/11/11_07_37_288_banner3.jpg',NULL,'2012-09-11 03:07:37','2012-09-11 03:07:37'),
	(4,'image/jpeg','banner4.jpg',39611,155,155,'2012/09/11/11_07_56_506_banner4.jpg',NULL,'2012-09-11 03:07:56','2012-09-11 03:07:56'),
	(5,'image/jpeg','banner5.jpg',35372,155,155,'2012/09/11/11_08_18_966_banner5.jpg',NULL,'2012-09-11 03:08:18','2012-09-11 03:08:18'),
	(6,'image/jpeg','banner6.jpg',47628,155,155,'2012/09/11/11_08_45_52_banner6.jpg',NULL,'2012-09-11 03:08:45','2012-09-11 03:08:45'),
	(7,'image/jpeg','banner7.jpg',43338,155,155,'2012/09/11/11_09_07_181_banner7.jpg',NULL,'2012-09-11 03:09:07','2012-09-11 03:09:07'),
	(8,'image/jpeg','banner8.jpg',38224,155,155,'2012/09/11/11_09_30_701_banner8.jpg',NULL,'2012-09-11 03:09:30','2012-09-11 03:09:30'),
	(9,'image/gif','origin_pic3.gif',40565,300,215,'2012/09/11/11_13_53_131_origin_pic3.gif',NULL,'2012-09-11 03:13:53','2012-09-11 03:13:53'),
	(10,'image/gif','act_pic7.gif',21070,190,140,'2012/09/11/11_15_11_904_act_pic7.gif',NULL,'2012-09-11 03:15:11','2012-09-11 03:15:11'),
	(11,'image/gif','act_pic8.gif',20673,190,140,'2012/09/11/11_15_59_309_act_pic8.gif',NULL,'2012-09-11 03:15:59','2012-09-11 03:15:59'),
	(12,'image/gif','act_pic9.gif',12929,190,140,'2012/09/11/11_16_32_208_act_pic9.gif',NULL,'2012-09-11 03:16:32','2012-09-11 03:16:32'),
	(13,'image/gif','act_pic10.gif',23245,190,140,'2012/09/11/11_17_15_758_act_pic10.gif',NULL,'2012-09-11 03:17:15','2012-09-11 03:17:15'),
	(14,'image/gif','share_pic4.gif',32135,170,195,'2012/09/11/11_21_12_987_share_pic4.gif',NULL,'2012-09-11 03:21:12','2012-09-11 03:21:12');

/*!40000 ALTER TABLE `refinery_images` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table refinery_interviews
# ------------------------------------------------------------

DROP TABLE IF EXISTS `refinery_interviews`;

CREATE TABLE `refinery_interviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `people_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `content` text,
  `photo_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `refinery_interviews` WRITE;
/*!40000 ALTER TABLE `refinery_interviews` DISABLE KEYS */;

INSERT INTO `refinery_interviews` (`id`, `people_name`, `title`, `time`, `content`, `photo_id`, `position`, `created_at`, `updated_at`)
VALUES
	(1,'sadf','fsa','2012-09-11','<p>“4月7日我们参加了一个世界卫生日公益日的公益活动，主要是帮老人做清洁，我感受到比起物质上的需求，老人们需要家人的陪伴和沟通交流。如果有人能够平时多去看望他们，不让他们感到空虚，觉得自己是家里的负担，这是对老人最大的安慰”——志愿者华理吴晓清参加老友计划“清爽助洁”活动的感言<br />⋯⋯</p>',14,0,'2012-09-11 02:19:53','2012-09-11 03:21:17');

/*!40000 ALTER TABLE `refinery_interviews` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table refinery_page_part_translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `refinery_page_part_translations`;

CREATE TABLE `refinery_page_part_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_page_part_id` int(11) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `body` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_f9716c4215584edbca2557e32706a5ae084a15ef` (`refinery_page_part_id`),
  KEY `index_refinery_page_part_translations_on_locale` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `refinery_page_part_translations` WRITE;
/*!40000 ALTER TABLE `refinery_page_part_translations` DISABLE KEYS */;

INSERT INTO `refinery_page_part_translations` (`id`, `refinery_page_part_id`, `locale`, `body`, `created_at`, `updated_at`)
VALUES
	(3,3,'en','<div class=\"top\">\r\n<div class=\"top_con\">\r\n<div class=\"logo\"><img src=\"images/logo.gif\" width=\"102\" height=\"111\" /></div>\r\n<div class=\"menu\">\r\n<ul class=\"m1\">\r\n<li><a href=\"/homes\">首 页</a>\r\n</li>\r\n<li><a href=\"/origin\" class=\"current\">起 源</a>\r\n</li>\r\n<li><a href=\"/events\">活 动</a>\r\n</li>\r\n<li><a href=\"/particopate\">参 与</a>\r\n</li> \r\n<li><a href=\"/shares\">分 享</a>\r\n</li>\r\n \r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"content\">\r\n<div class=\"prompt\"><div class=\"pro_con\">您现在的位置：<a href=\"/homes\">首页</a> &gt; <span>起源</span>\r\n</div></div>\r\n\r\n<div class=\"subpage_con\">\r\n<div class=\"subc_top\"></div>\r\n\r\n<div class=\"subc_center\">\r\n<div class=\"sc_title\">起源——倾听社区的声音，我们发现需求。</div>\r\n\r\n<div class=\"scc_top\">\r\n<div class=\"sct_img\"><img src=\"images/origin_pic3.gif\" width=\"300\" height=\"215\" /></div>\r\n<div class=\"sct_text\">\r\n<span class=\"st_1\">“老友计划”是一个非盈利的公益行动，旨在建立弱势人群与社会人士的友谊，改变对弱势人群的态度和观念，消除沟通障碍，唤起平等真挚的社会交往，提升弱势人群的素养和参与社会交往的能力，促进社会共融。</span>\r\n<span class=\"st_2\">服务人群</span>\r\n<span>孤寡老人——特别是年迈的住在老式弄堂社区的孤寡、失能老人。<br />残障人士——特别是需要社会关爱和支持的残障、智障人士。</span>\r\n</div>\r\n\r\n</div>\r\n\r\n<div class=\"scc_top\">\r\n<div class=\"sct_text2\">\r\n\r\n<span class=\"st_4\">活动计划</span>\r\n<span class=\"st_3\">【老友乐相伴】——吸引青年人/爱心人士/机构进入社区，与目标服务人群一起聊天、手工、电影欣赏、运动、做点心等等，提供弱势人群精神康复和参与社会的有益活动。</span>\r\n<span class=\"st_3\">【老友影像坊】——号召摄影或者摄像爱好者拿出自己的相机和技术来为那些原本没有机会拍照或者拍短片的目标服务人群留下影像记录和温情瞬间，更广泛的传播唤起全社会对此弱势人群的持续关注和关爱行动。</span>\r\n<span class=\"st_3\">【老友访谈录】——号召社会上的年轻人去深	入目标服务人群的精神世界，倾听和记录他们的人生故事以及生活感悟，也提升和丰富自我的价值观和人生观，提倡代际沟通的无障碍。</span>\r\n\r\n</div>\r\n<div class=\"sct_img2\"><img src=\"images/origin_pic4.gif\" width=\"300\" height=\"215\" /></div>\r\n</div>\r\n\r\n</div>\r\n\r\n\r\n\r\n<div class=\"subc_bottom\"></div>\r\n\r\n</div>\r\n\r\n</div>\r\n','2012-09-11 02:16:14','2012-09-19 08:31:57'),
	(4,4,'en','','2012-09-11 02:16:14','2012-09-11 02:16:14'),
	(11,3,'zh-CN','<div class=\"content\">\r\n<div class=\"prompt\"><div class=\"pro_con\">您现在的位置：<a href=\"/homes\">首页</a> &gt; <span>起源</span>\r\n</div></div>\r\n\r\n<div class=\"subpage_con\">\r\n<div class=\"subc_top\"></div>\r\n\r\n<div class=\"subc_center\">\r\n<div class=\"sc_title\">起源——倾听社区的声音，我们发现需求。</div>\r\n\r\n<div class=\"scc_top\">\r\n<div class=\"sct_img\"><img src=\"images/origin_pic3.gif\" width=\"300\" height=\"215\" /></div>\r\n<div class=\"sct_text\">\r\n<span class=\"st_1\">“老友计划”是一个非盈利的公益行动，旨在建立弱势人群与社会人士的友谊，改变对弱势人群的态度和观念，消除沟通障碍，唤起平等真挚的社会交往，提升弱势人群的素养和参与社会交往的能力，促进社会共融。</span>\r\n<span class=\"st_2\">服务人群</span>\r\n<span>孤寡老人——特别是年迈的住在老式弄堂社区的孤寡、失能老人。<br />残障人士——特别是需要社会关爱和支持的残障、智障人士。</span>\r\n</div>\r\n\r\n</div>\r\n\r\n<div class=\"scc_top\">\r\n<div class=\"sct_text2\">\r\n\r\n<span class=\"st_4\">活动计划</span>\r\n<span class=\"st_3\">【老友乐相伴】——吸引青年人/爱心人士/机构进入社区，与目标服务人群一起聊天、手工、电影欣赏、运动、做点心等等，提供弱势人群精神康复和参与社会的有益活动。</span>\r\n<span class=\"st_3\">【老友影像坊】——号召摄影或者摄像爱好者拿出自己的相机和技术来为那些原本没有机会拍照或者拍短片的目标服务人群留下影像记录和温情瞬间，更广泛的传播唤起全社会对此弱势人群的持续关注和关爱行动。</span>\r\n<span class=\"st_3\">【老友访谈录】——号召社会上的年轻人去深	入目标服务人群的精神世界，倾听和记录他们的人生故事以及生活感悟，也提升和丰富自我的价值观和人生观，提倡代际沟通的无障碍。</span>\r\n\r\n</div>\r\n<div class=\"sct_img2\"><img src=\"images/origin_pic4.gif\" width=\"300\" height=\"215\" /></div>\r\n</div>\r\n\r\n</div>\r\n\r\n\r\n\r\n<div class=\"subc_bottom\"></div>\r\n\r\n</div>\r\n\r\n</div>','2012-09-11 03:43:26','2012-09-11 03:44:41'),
	(12,4,'zh-CN','','2012-09-11 03:43:26','2012-09-11 03:43:26'),
	(31,25,'en','<p>Welcome to our site. This is just a place holder page while we gather our content.</p>','2012-09-19 02:28:30','2012-09-19 02:28:30'),
	(32,26,'en','<p>This is another block of content over here.</p>','2012-09-19 02:28:30','2012-09-19 02:28:30'),
	(33,27,'en','<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=\'/\'>Return to the home page</a></p>','2012-09-19 02:28:30','2012-09-19 02:28:30'),
	(38,25,'zh-CN','<p>Welcome to our site. This is just a place holder page while we gather our content.</p>','2012-09-19 02:36:43','2012-09-19 02:36:43'),
	(39,26,'zh-CN','<p>This is another block of content over here.</p>','2012-09-19 02:36:43','2012-09-19 02:36:43'),
	(44,32,'en','<p>页面内容添加。。。。</p>','2012-09-27 03:59:02','2012-09-27 03:59:02'),
	(45,33,'en','','2012-09-27 03:59:02','2012-09-27 03:59:02'),
	(46,34,'en','<p>关于新途内容</p>','2012-09-27 04:00:24','2012-09-27 04:00:24'),
	(47,35,'en','','2012-09-27 04:00:24','2012-09-27 04:00:24'),
	(48,36,'en','<p>联系我们内容。。。</p>','2012-09-27 04:00:56','2012-09-27 04:00:56'),
	(49,37,'en','','2012-09-27 04:00:56','2012-09-27 04:00:56'),
	(50,38,'en','<p>媒体报道内容。。。</p>','2012-09-27 04:01:26','2012-09-27 04:01:26'),
	(51,39,'en','','2012-09-27 04:01:26','2012-09-27 04:01:26'),
	(52,40,'en','<p>免费声明内容。。。</p>','2012-09-27 04:02:01','2012-09-27 04:02:01'),
	(53,41,'en','','2012-09-27 04:02:01','2012-09-27 04:02:01');

/*!40000 ALTER TABLE `refinery_page_part_translations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table refinery_page_parts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `refinery_page_parts`;

CREATE TABLE `refinery_page_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_page_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_page_parts_on_id` (`id`),
  KEY `index_refinery_page_parts_on_refinery_page_id` (`refinery_page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `refinery_page_parts` WRITE;
/*!40000 ALTER TABLE `refinery_page_parts` DISABLE KEYS */;

INSERT INTO `refinery_page_parts` (`id`, `refinery_page_id`, `title`, `body`, `position`, `created_at`, `updated_at`)
VALUES
	(3,2,'Body','<div class=\"top\">\r\n<div class=\"top_con\">\r\n<div class=\"logo\"><img src=\"images/logo.gif\" width=\"102\" height=\"111\" /></div>\r\n<div class=\"menu\">\r\n<ul class=\"m1\">\r\n<li><a href=\"/homes\">首 页</a>\r\n</li>\r\n<li><a href=\"/origin\" class=\"current\">起 源</a>\r\n</li>\r\n<li><a href=\"/events\">活 动</a>\r\n</li>\r\n<li><a href=\"/particopate\">参 与</a>\r\n</li> \r\n<li><a href=\"/shares\">分 享</a>\r\n</li>\r\n \r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"content\">\r\n<div class=\"prompt\"><div class=\"pro_con\">您现在的位置：<a href=\"/homes\">首页</a> &gt; <span>起源</span>\r\n</div></div>\r\n\r\n<div class=\"subpage_con\">\r\n<div class=\"subc_top\"></div>\r\n\r\n<div class=\"subc_center\">\r\n<div class=\"sc_title\">起源——倾听社区的声音，我们发现需求。</div>\r\n\r\n<div class=\"scc_top\">\r\n<div class=\"sct_img\"><img src=\"images/origin_pic3.gif\" width=\"300\" height=\"215\" /></div>\r\n<div class=\"sct_text\">\r\n<span class=\"st_1\">“老友计划”是一个非盈利的公益行动，旨在建立弱势人群与社会人士的友谊，改变对弱势人群的态度和观念，消除沟通障碍，唤起平等真挚的社会交往，提升弱势人群的素养和参与社会交往的能力，促进社会共融。</span>\r\n<span class=\"st_2\">服务人群</span>\r\n<span>孤寡老人——特别是年迈的住在老式弄堂社区的孤寡、失能老人。<br />残障人士——特别是需要社会关爱和支持的残障、智障人士。</span>\r\n</div>\r\n\r\n</div>\r\n\r\n<div class=\"scc_top\">\r\n<div class=\"sct_text2\">\r\n\r\n<span class=\"st_4\">活动计划</span>\r\n<span class=\"st_3\">【老友乐相伴】——吸引青年人/爱心人士/机构进入社区，与目标服务人群一起聊天、手工、电影欣赏、运动、做点心等等，提供弱势人群精神康复和参与社会的有益活动。</span>\r\n<span class=\"st_3\">【老友影像坊】——号召摄影或者摄像爱好者拿出自己的相机和技术来为那些原本没有机会拍照或者拍短片的目标服务人群留下影像记录和温情瞬间，更广泛的传播唤起全社会对此弱势人群的持续关注和关爱行动。</span>\r\n<span class=\"st_3\">【老友访谈录】——号召社会上的年轻人去深	入目标服务人群的精神世界，倾听和记录他们的人生故事以及生活感悟，也提升和丰富自我的价值观和人生观，提倡代际沟通的无障碍。</span>\r\n\r\n</div>\r\n<div class=\"sct_img2\"><img src=\"images/origin_pic4.gif\" width=\"300\" height=\"215\" /></div>\r\n</div>\r\n\r\n</div>\r\n\r\n\r\n\r\n<div class=\"subc_bottom\"></div>\r\n\r\n</div>\r\n\r\n</div>\r\n',0,'2012-09-11 02:16:14','2012-09-19 08:31:57'),
	(4,2,'Side Body','',1,'2012-09-11 02:16:14','2012-09-19 08:31:57'),
	(25,13,'Body','<p>Welcome to our site. This is just a place holder page while we gather our content.</p>',0,'2012-09-19 02:28:30','2012-09-19 02:36:43'),
	(26,13,'Side Body','<p>This is another block of content over here.</p>',1,'2012-09-19 02:28:30','2012-09-19 02:36:43'),
	(27,14,'Body','<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=\'/\'>Return to the home page</a></p>',0,'2012-09-19 02:28:30','2012-09-19 02:28:30'),
	(32,17,'Body','<p>页面内容添加。。。。</p>',0,'2012-09-27 03:59:02','2012-09-27 04:36:38'),
	(33,17,'Side Body','',1,'2012-09-27 03:59:02','2012-09-27 04:36:38'),
	(34,18,'Body','<p>关于新途内容</p>',0,'2012-09-27 04:00:24','2012-10-15 02:06:11'),
	(35,18,'Side Body','',1,'2012-09-27 04:00:24','2012-10-15 02:06:11'),
	(36,19,'Body','<p>联系我们内容。。。</p>',0,'2012-09-27 04:00:56','2012-09-27 06:06:47'),
	(37,19,'Side Body','',1,'2012-09-27 04:00:56','2012-09-27 06:06:47'),
	(38,20,'Body','<p>媒体报道内容。。。</p>',0,'2012-09-27 04:01:26','2012-09-27 04:01:26'),
	(39,20,'Side Body','',1,'2012-09-27 04:01:26','2012-09-27 04:01:26'),
	(40,21,'Body','<p>免费声明内容。。。</p>',0,'2012-09-27 04:02:01','2012-09-27 04:02:01'),
	(41,21,'Side Body','',1,'2012-09-27 04:02:01','2012-09-27 04:02:01');

/*!40000 ALTER TABLE `refinery_page_parts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table refinery_page_translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `refinery_page_translations`;

CREATE TABLE `refinery_page_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_page_id` int(11) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `custom_slug` varchar(255) DEFAULT NULL,
  `menu_title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_d079468f88bff1c6ea81573a0d019ba8bf5c2902` (`refinery_page_id`),
  KEY `index_refinery_page_translations_on_locale` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `refinery_page_translations` WRITE;
/*!40000 ALTER TABLE `refinery_page_translations` DISABLE KEYS */;

INSERT INTO `refinery_page_translations` (`id`, `refinery_page_id`, `locale`, `title`, `custom_slug`, `menu_title`, `slug`, `created_at`, `updated_at`)
VALUES
	(2,2,'en','origins',NULL,'','origins','2012-09-11 02:16:14','2012-09-11 02:16:14'),
	(6,2,'zh-CN','origins',NULL,'',NULL,'2012-09-11 03:43:26','2012-09-11 03:43:26'),
	(17,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(18,13,'en','Home',NULL,NULL,'home','2012-09-19 02:28:30','2012-09-19 02:28:30'),
	(19,14,'en','Page not found',NULL,NULL,'page-not-found','2012-09-19 02:28:30','2012-09-19 02:28:30'),
	(22,13,'zh-CN','Home',NULL,'',NULL,'2012-09-19 02:36:43','2012-09-19 02:36:43'),
	(25,17,'en','static',NULL,'','static','2012-09-27 03:59:02','2012-09-27 04:36:38'),
	(26,18,'en','关于新途',NULL,'','关于新途','2012-09-27 04:00:24','2012-09-27 04:00:24'),
	(27,19,'en','联系我们',NULL,'','联系我们','2012-09-27 04:00:56','2012-09-27 04:00:56'),
	(28,20,'en','媒体报道',NULL,'','媒体报道','2012-09-27 04:01:26','2012-09-27 04:01:26'),
	(29,21,'en','免费声明',NULL,'','免费声明','2012-09-27 04:02:01','2012-09-27 04:02:01');

/*!40000 ALTER TABLE `refinery_page_translations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table refinery_pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `refinery_pages`;

CREATE TABLE `refinery_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `show_in_menu` tinyint(1) DEFAULT '1',
  `link_url` varchar(255) DEFAULT NULL,
  `menu_match` varchar(255) DEFAULT NULL,
  `deletable` tinyint(1) DEFAULT '1',
  `draft` tinyint(1) DEFAULT '0',
  `skip_to_first_child` tinyint(1) DEFAULT '0',
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `view_template` varchar(255) DEFAULT NULL,
  `layout_template` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_pages_on_depth` (`depth`),
  KEY `index_refinery_pages_on_id` (`id`),
  KEY `index_refinery_pages_on_lft` (`lft`),
  KEY `index_refinery_pages_on_parent_id` (`parent_id`),
  KEY `index_refinery_pages_on_rgt` (`rgt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `refinery_pages` WRITE;
/*!40000 ALTER TABLE `refinery_pages` DISABLE KEYS */;

INSERT INTO `refinery_pages` (`id`, `parent_id`, `path`, `slug`, `show_in_menu`, `link_url`, `menu_match`, `deletable`, `draft`, `skip_to_first_child`, `lft`, `rgt`, `depth`, `view_template`, `layout_template`, `created_at`, `updated_at`)
VALUES
	(2,NULL,NULL,'origins',1,'',NULL,1,0,0,1,2,0,NULL,NULL,'2012-09-11 02:16:14','2012-09-19 08:31:57'),
	(13,NULL,NULL,'home',1,'/','^/$',0,0,0,3,6,0,NULL,NULL,'2012-09-19 02:28:30','2012-09-19 02:36:43'),
	(14,13,NULL,'page-not-found',0,NULL,'^/404$',0,0,0,4,5,1,NULL,NULL,'2012-09-19 02:28:30','2012-09-19 02:28:30'),
	(17,NULL,NULL,'static',1,'',NULL,1,0,0,7,16,0,NULL,NULL,'2012-09-27 03:59:02','2012-09-27 04:36:38'),
	(18,17,NULL,'关于新途',1,'http://localhost:3000/interviews',NULL,1,0,0,8,9,1,NULL,NULL,'2012-09-27 04:00:24','2012-10-15 02:06:11'),
	(19,17,NULL,'联系我们',1,'',NULL,1,0,0,10,11,1,NULL,NULL,'2012-09-27 04:00:56','2012-09-27 06:06:47'),
	(20,17,NULL,'媒体报道',1,'',NULL,1,0,0,12,13,1,NULL,NULL,'2012-09-27 04:01:26','2012-09-27 04:01:26'),
	(21,17,NULL,'免费声明',1,'',NULL,1,0,0,14,15,1,NULL,NULL,'2012-09-27 04:02:01','2012-09-27 04:02:01');

/*!40000 ALTER TABLE `refinery_pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table refinery_pictures
# ------------------------------------------------------------

DROP TABLE IF EXISTS `refinery_pictures`;

CREATE TABLE `refinery_pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `refinery_pictures` WRITE;
/*!40000 ALTER TABLE `refinery_pictures` DISABLE KEYS */;

INSERT INTO `refinery_pictures` (`id`, `title`, `url`, `photo_id`, `position`, `created_at`, `updated_at`)
VALUES
	(1,'picture 1','/events',1,1,'2012-09-11 03:07:01','2012-09-11 03:53:14'),
	(2,'picture 2','/origins',2,2,'2012-09-11 03:07:19','2012-09-11 03:53:14'),
	(3,'picture 3','/interviews',3,0,'2012-09-11 03:07:40','2012-09-11 03:53:14'),
	(4,'picture 4','/events',4,3,'2012-09-11 03:08:00','2012-09-11 03:08:00'),
	(5,'picture 5','/origins',5,4,'2012-09-11 03:08:22','2012-09-11 03:08:22'),
	(6,'picture 6','/origins',6,5,'2012-09-11 03:08:48','2012-09-11 03:08:48'),
	(7,'picture 7','/interviews',7,6,'2012-09-11 03:09:10','2012-09-11 03:09:10'),
	(8,'picture 8','/origins',8,7,'2012-09-11 03:09:34','2012-09-11 03:09:34');

/*!40000 ALTER TABLE `refinery_pictures` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table refinery_resources
# ------------------------------------------------------------

DROP TABLE IF EXISTS `refinery_resources`;

CREATE TABLE `refinery_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_mime_type` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `file_uid` varchar(255) DEFAULT NULL,
  `file_ext` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table refinery_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `refinery_roles`;

CREATE TABLE `refinery_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `refinery_roles` WRITE;
/*!40000 ALTER TABLE `refinery_roles` DISABLE KEYS */;

INSERT INTO `refinery_roles` (`id`, `title`)
VALUES
	(1,'Refinery'),
	(2,'Superuser');

/*!40000 ALTER TABLE `refinery_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table refinery_roles_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `refinery_roles_users`;

CREATE TABLE `refinery_roles_users` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `index_refinery_roles_users_on_role_id_and_user_id` (`role_id`,`user_id`),
  KEY `index_refinery_roles_users_on_user_id_and_role_id` (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `refinery_roles_users` WRITE;
/*!40000 ALTER TABLE `refinery_roles_users` DISABLE KEYS */;

INSERT INTO `refinery_roles_users` (`user_id`, `role_id`)
VALUES
	(1,1),
	(1,2);

/*!40000 ALTER TABLE `refinery_roles_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table refinery_shares
# ------------------------------------------------------------

DROP TABLE IF EXISTS `refinery_shares`;

CREATE TABLE `refinery_shares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `people_name` varchar(255) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `content` text,
  `select_show` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `refinery_shares` WRITE;
/*!40000 ALTER TABLE `refinery_shares` DISABLE KEYS */;

INSERT INTO `refinery_shares` (`id`, `title`, `people_name`, `time`, `content`, `select_show`, `position`, `created_at`, `updated_at`)
VALUES
	(1,'活动感言','vickwold','2012-09-11','<p>4月7日我们参加了一个世界卫生日公益日的公益活动，主要是帮老人做清洁，我感受到比起物质上的需求，老人们需要家人的陪伴和沟通交流。如果有人能够平时多去看望他们，不让他们感到空虚，觉得自己是家里的负担，这是对老人最大的安慰”——志愿者华理吴晓清参加老友计划“清爽助洁”活动的感言</p>',0,0,'2012-09-11 03:18:15','2012-09-11 03:18:15'),
	(2,'fasd','aaa','2012-09-11','<p>4月7日我们参加了一个世界卫生日公益日的公益活动，主要是帮老人做清洁，我感受到比起物质上的需求，老人们需要家人的陪伴和沟通交流。如果有人能够平时多去看望他们，不让他们感到空虚，觉得自己是家里的负担，这是对老人最大的安慰”——志愿者华理吴晓清参加老友计划“清爽助洁”活动的感言</p>',0,1,'2012-09-11 03:18:34','2012-09-11 03:18:34'),
	(3,'活动感言1','新share','2012-09-11','<p>4月7日我们参加了一个世界卫生日公益日的公益活动，主要是帮老人做清洁，我感受到比起物质上的需求，老人们需要家人的陪伴和沟通交流。如果有人能够平时多去看望他们，不让他们感到空虚，觉得自己是家里的负担，这是对老人最大的安慰”——志愿者华理吴晓清参加老友计划“清爽助洁”活动的感言</p>',0,2,'2012-09-11 03:18:55','2012-09-11 03:18:55'),
	(4,'fasd1','新share','2012-09-11','<p>4月7日我们参加了一个世界卫生日公益日的公益活动，主要是帮老人做清洁，我感受到比起物质上的需求，老人们需要家人的陪伴和沟通交流。如果有人能够平时多去看望他们，不让他们感到空虚，觉得自己是家里的负担，这是对老人最大的安慰”——志愿者华理吴晓清参加老友计划“清爽助洁”活动的感言</p>',1,3,'2012-09-11 03:19:18','2012-09-11 03:19:18'),
	(5,'dfs','xiao','2012-09-11','<p>4月7日我们参加了一个世界卫生日公益日的公益活动，主要是帮老人做清洁，我感受到比起物质上的需求，老人们需要家人的陪伴和沟通交流。如果有人能够平时多去看望他们，不让他们感到空虚，觉得自己是家里的负担，这是对老人最大的安慰”——志愿者华理吴晓清参加老友计划“清爽助洁”活动的感言</p>',1,4,'2012-09-11 03:19:40','2012-09-11 03:19:40');

/*!40000 ALTER TABLE `refinery_shares` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table refinery_user_plugins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `refinery_user_plugins`;

CREATE TABLE `refinery_user_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_refinery_user_plugins_on_user_id_and_name` (`user_id`,`name`),
  KEY `index_refinery_user_plugins_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `refinery_user_plugins` WRITE;
/*!40000 ALTER TABLE `refinery_user_plugins` DISABLE KEYS */;

INSERT INTO `refinery_user_plugins` (`id`, `user_id`, `name`, `position`)
VALUES
	(1,1,'refinery_users',0),
	(2,1,'refinery_dashboard',1),
	(3,1,'refinery_images',2),
	(4,1,'refinery_files',3),
	(5,1,'refinery_pages',4),
	(6,1,'events',5),
	(7,1,'interviews',6),
	(8,1,'shares',7),
	(9,1,'pictures',8);

/*!40000 ALTER TABLE `refinery_user_plugins` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table refinery_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `refinery_users`;

CREATE TABLE `refinery_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `encrypted_password` varchar(255) NOT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_users_on_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `refinery_users` WRITE;
/*!40000 ALTER TABLE `refinery_users` DISABLE KEYS */;

INSERT INTO `refinery_users` (`id`, `username`, `email`, `encrypted_password`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `sign_in_count`, `remember_created_at`, `reset_password_token`, `reset_password_sent_at`, `created_at`, `updated_at`)
VALUES
	(1,'admin','1096243005@qq.com','$2a$10$x.WpC/W74XcGaOLtAwsckOmI4oXU.6JlnWBZclw1S0M4OYrU6jf1u','2012-10-15 02:05:16','2012-09-27 08:56:56','127.0.0.1','127.0.0.1',25,NULL,NULL,NULL,'2012-09-11 02:15:09','2012-10-15 02:05:16');

/*!40000 ALTER TABLE `refinery_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;

INSERT INTO `schema_migrations` (`version`)
VALUES
	('20120911014159'),
	('20120911014160'),
	('20120911014161'),
	('20120911014162'),
	('20120911014163'),
	('20120911014703'),
	('20120911015021'),
	('20120911015312'),
	('20120911015553');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table seo_meta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `seo_meta`;

CREATE TABLE `seo_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seo_meta_id` int(11) DEFAULT NULL,
  `seo_meta_type` varchar(255) DEFAULT NULL,
  `browser_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_seo_meta_on_id` (`id`),
  KEY `index_seo_meta_on_seo_meta_id_and_seo_meta_type` (`seo_meta_id`,`seo_meta_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `seo_meta` WRITE;
/*!40000 ALTER TABLE `seo_meta` DISABLE KEYS */;

INSERT INTO `seo_meta` (`id`, `seo_meta_id`, `seo_meta_type`, `browser_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`)
VALUES
	(2,2,'Refinery::Page::Translation','','','','2012-09-11 02:16:14','2012-09-11 02:16:14'),
	(6,6,'Refinery::Page::Translation','','','','2012-09-11 03:43:26','2012-09-11 03:43:26'),
	(7,7,'Refinery::Page::Translation',NULL,NULL,NULL,'2012-09-11 03:44:41','2012-09-11 03:44:41'),
	(17,18,'Refinery::Page::Translation',NULL,NULL,NULL,'2012-09-19 02:28:30','2012-09-19 02:28:30'),
	(18,19,'Refinery::Page::Translation',NULL,NULL,NULL,'2012-09-19 02:28:30','2012-09-19 02:28:30'),
	(21,22,'Refinery::Page::Translation','','','','2012-09-19 02:36:43','2012-09-19 02:36:43'),
	(24,25,'Refinery::Page::Translation','','','','2012-09-27 03:59:02','2012-09-27 03:59:02'),
	(25,26,'Refinery::Page::Translation','','','','2012-09-27 04:00:24','2012-09-27 04:00:24'),
	(26,27,'Refinery::Page::Translation','','','','2012-09-27 04:00:56','2012-09-27 04:00:56'),
	(27,28,'Refinery::Page::Translation','','','','2012-09-27 04:01:26','2012-09-27 04:01:26'),
	(28,29,'Refinery::Page::Translation','','','','2012-09-27 04:02:01','2012-09-27 04:02:01');

/*!40000 ALTER TABLE `seo_meta` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
