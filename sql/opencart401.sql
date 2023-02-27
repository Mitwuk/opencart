/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100427
Source Host           : localhost:3306
Source Database       : opencart401

Target Server Type    : MYSQL
Target Server Version : 100427
File Encoding         : 65001

Date: 2023-02-27 10:58:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for oc_address
-- ----------------------------
DROP TABLE IF EXISTS `oc_address`;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(60) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL,
  `default` tinyint(1) NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_address
-- ----------------------------

-- ----------------------------
-- Table structure for oc_address_format
-- ----------------------------
DROP TABLE IF EXISTS `oc_address_format`;
CREATE TABLE `oc_address_format` (
  `address_format_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `address_format` text NOT NULL,
  PRIMARY KEY (`address_format_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_address_format
-- ----------------------------
INSERT INTO `oc_address_format` VALUES ('1', 'Address Format', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}');

-- ----------------------------
-- Table structure for oc_api
-- ----------------------------
DROP TABLE IF EXISTS `oc_api`;
CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_api
-- ----------------------------
INSERT INTO `oc_api` VALUES ('1', 'Default', 'deecab6f647ccc814f8a2d156275bdba29d259ab305508953962cbfed53eeb2e9373b9ca45d3966af96b1785859d7ed849dac74981117ec7e4a581a579f2f7833f16e28f6cd7decf9580ec0fe5ea32c1c8d0e7808fc8410cb368790ceaf2df04a412b362287c30fae69653076861e0b099bae259d1b8c9c89a4417d2574f2839', '1', '2023-02-19 17:59:39', '2023-02-19 17:59:39');

-- ----------------------------
-- Table structure for oc_api_ip
-- ----------------------------
DROP TABLE IF EXISTS `oc_api_ip`;
CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_api_ip
-- ----------------------------

-- ----------------------------
-- Table structure for oc_api_session
-- ----------------------------
DROP TABLE IF EXISTS `oc_api_session`;
CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_api_session
-- ----------------------------

-- ----------------------------
-- Table structure for oc_attribute
-- ----------------------------
DROP TABLE IF EXISTS `oc_attribute`;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_attribute
-- ----------------------------
INSERT INTO `oc_attribute` VALUES ('1', '6', '1');
INSERT INTO `oc_attribute` VALUES ('2', '6', '5');
INSERT INTO `oc_attribute` VALUES ('3', '6', '3');
INSERT INTO `oc_attribute` VALUES ('4', '3', '1');
INSERT INTO `oc_attribute` VALUES ('5', '3', '2');
INSERT INTO `oc_attribute` VALUES ('6', '3', '3');
INSERT INTO `oc_attribute` VALUES ('7', '3', '4');
INSERT INTO `oc_attribute` VALUES ('8', '3', '5');
INSERT INTO `oc_attribute` VALUES ('9', '3', '6');
INSERT INTO `oc_attribute` VALUES ('10', '3', '7');
INSERT INTO `oc_attribute` VALUES ('11', '3', '8');

-- ----------------------------
-- Table structure for oc_attribute_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_attribute_description`;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_attribute_description
-- ----------------------------
INSERT INTO `oc_attribute_description` VALUES ('1', '1', 'Description');
INSERT INTO `oc_attribute_description` VALUES ('2', '1', 'No. of Cores');
INSERT INTO `oc_attribute_description` VALUES ('3', '1', 'Clockspeed');
INSERT INTO `oc_attribute_description` VALUES ('4', '1', 'test 1');
INSERT INTO `oc_attribute_description` VALUES ('5', '1', 'test 2');
INSERT INTO `oc_attribute_description` VALUES ('6', '1', 'test 3');
INSERT INTO `oc_attribute_description` VALUES ('7', '1', 'test 4');
INSERT INTO `oc_attribute_description` VALUES ('8', '1', 'test 5');
INSERT INTO `oc_attribute_description` VALUES ('9', '1', 'test 6');
INSERT INTO `oc_attribute_description` VALUES ('10', '1', 'test 7');
INSERT INTO `oc_attribute_description` VALUES ('11', '1', 'test 8');

-- ----------------------------
-- Table structure for oc_attribute_group
-- ----------------------------
DROP TABLE IF EXISTS `oc_attribute_group`;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_attribute_group
-- ----------------------------
INSERT INTO `oc_attribute_group` VALUES ('3', '2');
INSERT INTO `oc_attribute_group` VALUES ('4', '1');
INSERT INTO `oc_attribute_group` VALUES ('5', '3');
INSERT INTO `oc_attribute_group` VALUES ('6', '4');

-- ----------------------------
-- Table structure for oc_attribute_group_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_attribute_group_description`;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_attribute_group_description
-- ----------------------------
INSERT INTO `oc_attribute_group_description` VALUES ('3', '1', 'Memory');
INSERT INTO `oc_attribute_group_description` VALUES ('4', '1', 'Technical');
INSERT INTO `oc_attribute_group_description` VALUES ('5', '1', 'Motherboard');
INSERT INTO `oc_attribute_group_description` VALUES ('6', '1', 'Processor');

-- ----------------------------
-- Table structure for oc_banner
-- ----------------------------
DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_banner
-- ----------------------------
INSERT INTO `oc_banner` VALUES ('6', 'HP Products', '1');
INSERT INTO `oc_banner` VALUES ('7', 'Home Page Slideshow', '1');
INSERT INTO `oc_banner` VALUES ('8', 'Manufacturers', '1');

-- ----------------------------
-- Table structure for oc_banner_image
-- ----------------------------
DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`banner_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_banner_image
-- ----------------------------
INSERT INTO `oc_banner_image` VALUES ('87', '6', '1', 'HP Banner', 'index.php?route=product/manufacturer.info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', '0');
INSERT INTO `oc_banner_image` VALUES ('88', '8', '1', 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', '0');
INSERT INTO `oc_banner_image` VALUES ('89', '8', '1', 'Dell', '', 'catalog/demo/manufacturer/dell.png', '0');
INSERT INTO `oc_banner_image` VALUES ('90', '8', '1', 'Disney', '', 'catalog/demo/manufacturer/disney.png', '0');
INSERT INTO `oc_banner_image` VALUES ('91', '8', '1', 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', '0');
INSERT INTO `oc_banner_image` VALUES ('92', '8', '1', 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', '0');
INSERT INTO `oc_banner_image` VALUES ('93', '8', '1', 'Canon', '', 'catalog/demo/manufacturer/canon.png', '0');
INSERT INTO `oc_banner_image` VALUES ('94', '8', '1', 'NFL', '', 'catalog/demo/manufacturer/nfl.png', '0');
INSERT INTO `oc_banner_image` VALUES ('95', '8', '1', 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', '0');
INSERT INTO `oc_banner_image` VALUES ('96', '8', '1', 'Sony', '', 'catalog/demo/manufacturer/sony.png', '0');
INSERT INTO `oc_banner_image` VALUES ('97', '8', '1', 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', '0');
INSERT INTO `oc_banner_image` VALUES ('98', '8', '1', 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', '0');
INSERT INTO `oc_banner_image` VALUES ('101', '7', '1', 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', '0');
INSERT INTO `oc_banner_image` VALUES ('102', '7', '1', 'MacBookAir', 'index.php?route=product/product&amp;product_id=45', 'catalog/demo/banners/MacBookAir.jpg', '0');
INSERT INTO `oc_banner_image` VALUES ('103', '7', '1', 'HTC Touch HD', 'index.php?route=product/product&amp;product_id=28', 'catalog/demo/banners/infinity-468478.jpg', '0');

-- ----------------------------
-- Table structure for oc_cart
-- ----------------------------
DROP TABLE IF EXISTS `oc_cart`;
CREATE TABLE `oc_cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `subscription_plan_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`subscription_plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_cart
-- ----------------------------

-- ----------------------------
-- Table structure for oc_category
-- ----------------------------
DROP TABLE IF EXISTS `oc_category`;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_category
-- ----------------------------
INSERT INTO `oc_category` VALUES ('17', '', '0', '1', '1', '4', '1', '2009-01-03 21:08:57', '2011-05-30 12:15:11');
INSERT INTO `oc_category` VALUES ('18', 'catalog/demo/hp_2.jpg', '0', '1', '0', '2', '1', '2009-01-05 21:49:15', '2011-05-30 12:13:55');
INSERT INTO `oc_category` VALUES ('20', 'catalog/demo/compaq_presario.jpg', '0', '1', '1', '1', '1', '2009-01-05 21:49:43', '2011-07-16 02:14:42');
INSERT INTO `oc_category` VALUES ('24', '', '0', '1', '1', '5', '1', '2009-01-20 02:36:26', '2011-05-30 12:15:18');
INSERT INTO `oc_category` VALUES ('25', '', '0', '1', '1', '3', '1', '2009-01-31 01:04:25', '2011-05-30 12:14:55');
INSERT INTO `oc_category` VALUES ('26', '', '20', '0', '0', '1', '1', '2009-01-31 01:55:14', '2010-08-22 06:31:45');
INSERT INTO `oc_category` VALUES ('27', '', '20', '0', '0', '2', '1', '2009-01-31 01:55:34', '2010-08-22 06:32:15');
INSERT INTO `oc_category` VALUES ('28', '', '25', '0', '0', '1', '1', '2009-02-02 13:11:12', '2010-08-22 06:32:46');
INSERT INTO `oc_category` VALUES ('29', '', '25', '0', '0', '1', '1', '2009-02-02 13:11:37', '2010-08-22 06:32:39');
INSERT INTO `oc_category` VALUES ('30', '', '25', '0', '0', '1', '1', '2009-02-02 13:11:59', '2010-08-22 06:33:00');
INSERT INTO `oc_category` VALUES ('31', '', '25', '0', '0', '1', '1', '2009-02-03 14:17:24', '2010-08-22 06:33:06');
INSERT INTO `oc_category` VALUES ('32', '', '25', '0', '0', '1', '1', '2009-02-03 14:17:34', '2010-08-22 06:33:12');
INSERT INTO `oc_category` VALUES ('33', '', '0', '1', '1', '6', '1', '2009-02-03 14:17:55', '2011-05-30 12:15:25');
INSERT INTO `oc_category` VALUES ('34', 'catalog/demo/ipod_touch_4.jpg', '0', '1', '4', '7', '1', '2009-02-03 14:18:11', '2011-05-30 12:15:31');
INSERT INTO `oc_category` VALUES ('35', '', '28', '0', '0', '0', '1', '2010-09-17 10:06:48', '2010-09-18 14:02:42');
INSERT INTO `oc_category` VALUES ('36', '', '28', '0', '0', '0', '1', '2010-09-17 10:07:13', '2010-09-18 14:02:55');
INSERT INTO `oc_category` VALUES ('37', '', '34', '0', '0', '0', '1', '2010-09-18 14:03:39', '2011-04-22 01:55:08');
INSERT INTO `oc_category` VALUES ('38', '', '34', '0', '0', '0', '1', '2010-09-18 14:03:51', '2010-09-18 14:03:51');
INSERT INTO `oc_category` VALUES ('39', '', '34', '0', '0', '0', '1', '2010-09-18 14:04:17', '2011-04-22 01:55:20');
INSERT INTO `oc_category` VALUES ('40', '', '34', '0', '0', '0', '1', '2010-09-18 14:05:36', '2010-09-18 14:05:36');
INSERT INTO `oc_category` VALUES ('41', '', '34', '0', '0', '0', '1', '2010-09-18 14:05:49', '2011-04-22 01:55:30');
INSERT INTO `oc_category` VALUES ('42', '', '34', '0', '0', '0', '1', '2010-09-18 14:06:34', '2010-11-07 20:31:04');
INSERT INTO `oc_category` VALUES ('43', '', '34', '0', '0', '0', '1', '2010-09-18 14:06:49', '2011-04-22 01:55:40');
INSERT INTO `oc_category` VALUES ('44', '', '34', '0', '0', '0', '1', '2010-09-21 15:39:21', '2010-11-07 20:30:55');
INSERT INTO `oc_category` VALUES ('45', '', '18', '0', '0', '0', '1', '2010-09-24 18:29:16', '2011-04-26 08:52:11');
INSERT INTO `oc_category` VALUES ('46', '', '18', '0', '0', '0', '1', '2010-09-24 18:29:31', '2011-04-26 08:52:23');
INSERT INTO `oc_category` VALUES ('47', '', '34', '0', '0', '0', '1', '2010-11-07 11:13:16', '2010-11-07 11:13:16');
INSERT INTO `oc_category` VALUES ('48', '', '34', '0', '0', '0', '1', '2010-11-07 11:13:33', '2010-11-07 11:13:33');
INSERT INTO `oc_category` VALUES ('49', '', '34', '0', '0', '0', '1', '2010-11-07 11:14:04', '2010-11-07 11:14:04');
INSERT INTO `oc_category` VALUES ('50', '', '34', '0', '0', '0', '1', '2010-11-07 11:14:23', '2011-04-22 01:16:01');
INSERT INTO `oc_category` VALUES ('51', '', '34', '0', '0', '0', '1', '2010-11-07 11:14:38', '2011-04-22 01:16:13');
INSERT INTO `oc_category` VALUES ('52', '', '34', '0', '0', '0', '1', '2010-11-07 11:16:09', '2011-04-22 01:54:57');
INSERT INTO `oc_category` VALUES ('53', '', '34', '0', '0', '0', '1', '2010-11-07 11:28:53', '2011-04-22 01:14:36');
INSERT INTO `oc_category` VALUES ('54', '', '34', '0', '0', '0', '1', '2010-11-07 11:29:16', '2011-04-22 01:16:50');
INSERT INTO `oc_category` VALUES ('55', '', '34', '0', '0', '0', '1', '2010-11-08 10:31:32', '2010-11-08 10:31:32');
INSERT INTO `oc_category` VALUES ('56', '', '34', '0', '0', '0', '1', '2010-11-08 10:31:50', '2011-04-22 01:16:37');
INSERT INTO `oc_category` VALUES ('57', '', '0', '1', '1', '3', '1', '2011-04-26 08:53:16', '2011-05-30 12:15:05');
INSERT INTO `oc_category` VALUES ('58', '', '52', '0', '0', '0', '1', '2011-05-08 13:44:16', '2011-05-08 13:44:16');
INSERT INTO `oc_category` VALUES ('59', '', '0', '0', '1', '0', '1', '2023-02-25 07:38:47', '2023-02-25 07:38:47');

-- ----------------------------
-- Table structure for oc_category_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_description`;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_category_description
-- ----------------------------
INSERT INTO `oc_category_description` VALUES ('17', '1', 'Software', '', 'Software', '', '');
INSERT INTO `oc_category_description` VALUES ('18', '1', 'Laptops &amp; Notebooks', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'Laptops &amp; Notebooks', '', '');
INSERT INTO `oc_category_description` VALUES ('20', '1', 'Desktops', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n', 'Desktops', 'Example of category description', '');
INSERT INTO `oc_category_description` VALUES ('24', '1', 'Phones &amp; PDAs', '', 'Phones &amp; PDAs', '', '');
INSERT INTO `oc_category_description` VALUES ('25', '1', 'Components', '', 'Components', '', '');
INSERT INTO `oc_category_description` VALUES ('26', '1', 'PC', '', 'PC', '', '');
INSERT INTO `oc_category_description` VALUES ('27', '1', 'Mac', '', 'Mac', '', '');
INSERT INTO `oc_category_description` VALUES ('28', '1', 'Monitors', '', 'Monitors', '', '');
INSERT INTO `oc_category_description` VALUES ('29', '1', 'Mice and Trackballs', '', 'Mice and Trackballs', '', '');
INSERT INTO `oc_category_description` VALUES ('30', '1', 'Printers', '', 'Printers', '', '');
INSERT INTO `oc_category_description` VALUES ('31', '1', 'Scanners', '', 'Scanners', '', '');
INSERT INTO `oc_category_description` VALUES ('32', '1', 'Web Cameras', '', 'Web Cameras', '', '');
INSERT INTO `oc_category_description` VALUES ('33', '1', 'Cameras', '', 'Cameras', '', '');
INSERT INTO `oc_category_description` VALUES ('34', '1', 'MP3 Players', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'MP3 Players', '', '');
INSERT INTO `oc_category_description` VALUES ('35', '1', 'test 1', '', 'test 1', '', '');
INSERT INTO `oc_category_description` VALUES ('36', '1', 'test 2', '', 'test 2', '', '');
INSERT INTO `oc_category_description` VALUES ('37', '1', 'test 5', '', 'test 5', '', '');
INSERT INTO `oc_category_description` VALUES ('38', '1', 'test 4', '', 'test 4', '', '');
INSERT INTO `oc_category_description` VALUES ('39', '1', 'test 6', '', 'test 6', '', '');
INSERT INTO `oc_category_description` VALUES ('40', '1', 'test 7', '', 'test 7', '', '');
INSERT INTO `oc_category_description` VALUES ('41', '1', 'test 8', '', 'test 8', '', '');
INSERT INTO `oc_category_description` VALUES ('42', '1', 'test 9', '', 'test 9', '', '');
INSERT INTO `oc_category_description` VALUES ('43', '1', 'test 11', '', 'test 11', '', '');
INSERT INTO `oc_category_description` VALUES ('44', '1', 'test 12', '', 'test 12', '', '');
INSERT INTO `oc_category_description` VALUES ('45', '1', 'Windows', '', 'Windows', '', '');
INSERT INTO `oc_category_description` VALUES ('46', '1', 'Macs', '', 'Macs', '', '');
INSERT INTO `oc_category_description` VALUES ('47', '1', 'test 15', '', 'test 15', '', '');
INSERT INTO `oc_category_description` VALUES ('48', '1', 'test 16', '', 'test 16', '', '');
INSERT INTO `oc_category_description` VALUES ('49', '1', 'test 17', '', 'test 17', '', '');
INSERT INTO `oc_category_description` VALUES ('50', '1', 'test 18', '', 'test 18', '', '');
INSERT INTO `oc_category_description` VALUES ('51', '1', 'test 19', '', 'test 19', '', '');
INSERT INTO `oc_category_description` VALUES ('52', '1', 'test 20', '', 'test 20', '', '');
INSERT INTO `oc_category_description` VALUES ('53', '1', 'test 21', '', 'test 21', '', '');
INSERT INTO `oc_category_description` VALUES ('54', '1', 'test 22', '', 'test 22', '', '');
INSERT INTO `oc_category_description` VALUES ('55', '1', 'test 23', '', 'test 23', '', '');
INSERT INTO `oc_category_description` VALUES ('56', '1', 'test 24', '', 'test 24', '', '');
INSERT INTO `oc_category_description` VALUES ('57', '1', 'Tablets', '', 'Tablets', '', '');
INSERT INTO `oc_category_description` VALUES ('58', '1', 'test 25', '', 'test 25', '', '');
INSERT INTO `oc_category_description` VALUES ('59', '1', 'Shoe', '', 'Shoe', '', '');

-- ----------------------------
-- Table structure for oc_category_filter
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_filter`;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_category_filter
-- ----------------------------

-- ----------------------------
-- Table structure for oc_category_path
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_path`;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_category_path
-- ----------------------------
INSERT INTO `oc_category_path` VALUES ('17', '17', '0');
INSERT INTO `oc_category_path` VALUES ('18', '18', '0');
INSERT INTO `oc_category_path` VALUES ('20', '20', '0');
INSERT INTO `oc_category_path` VALUES ('24', '24', '0');
INSERT INTO `oc_category_path` VALUES ('25', '25', '0');
INSERT INTO `oc_category_path` VALUES ('26', '20', '0');
INSERT INTO `oc_category_path` VALUES ('26', '26', '1');
INSERT INTO `oc_category_path` VALUES ('27', '20', '0');
INSERT INTO `oc_category_path` VALUES ('27', '27', '1');
INSERT INTO `oc_category_path` VALUES ('28', '25', '0');
INSERT INTO `oc_category_path` VALUES ('28', '28', '1');
INSERT INTO `oc_category_path` VALUES ('29', '25', '0');
INSERT INTO `oc_category_path` VALUES ('29', '29', '1');
INSERT INTO `oc_category_path` VALUES ('30', '25', '0');
INSERT INTO `oc_category_path` VALUES ('30', '30', '1');
INSERT INTO `oc_category_path` VALUES ('31', '25', '0');
INSERT INTO `oc_category_path` VALUES ('31', '31', '1');
INSERT INTO `oc_category_path` VALUES ('32', '25', '0');
INSERT INTO `oc_category_path` VALUES ('32', '32', '1');
INSERT INTO `oc_category_path` VALUES ('33', '33', '0');
INSERT INTO `oc_category_path` VALUES ('34', '34', '0');
INSERT INTO `oc_category_path` VALUES ('35', '25', '0');
INSERT INTO `oc_category_path` VALUES ('35', '28', '1');
INSERT INTO `oc_category_path` VALUES ('35', '35', '2');
INSERT INTO `oc_category_path` VALUES ('36', '25', '0');
INSERT INTO `oc_category_path` VALUES ('36', '28', '1');
INSERT INTO `oc_category_path` VALUES ('36', '36', '2');
INSERT INTO `oc_category_path` VALUES ('37', '34', '0');
INSERT INTO `oc_category_path` VALUES ('37', '37', '1');
INSERT INTO `oc_category_path` VALUES ('38', '34', '0');
INSERT INTO `oc_category_path` VALUES ('38', '38', '1');
INSERT INTO `oc_category_path` VALUES ('39', '34', '0');
INSERT INTO `oc_category_path` VALUES ('39', '39', '1');
INSERT INTO `oc_category_path` VALUES ('40', '34', '0');
INSERT INTO `oc_category_path` VALUES ('40', '40', '1');
INSERT INTO `oc_category_path` VALUES ('41', '34', '0');
INSERT INTO `oc_category_path` VALUES ('41', '41', '1');
INSERT INTO `oc_category_path` VALUES ('42', '34', '0');
INSERT INTO `oc_category_path` VALUES ('42', '42', '1');
INSERT INTO `oc_category_path` VALUES ('43', '34', '0');
INSERT INTO `oc_category_path` VALUES ('43', '43', '1');
INSERT INTO `oc_category_path` VALUES ('44', '34', '0');
INSERT INTO `oc_category_path` VALUES ('44', '44', '1');
INSERT INTO `oc_category_path` VALUES ('45', '18', '0');
INSERT INTO `oc_category_path` VALUES ('45', '45', '1');
INSERT INTO `oc_category_path` VALUES ('46', '18', '0');
INSERT INTO `oc_category_path` VALUES ('46', '46', '1');
INSERT INTO `oc_category_path` VALUES ('47', '34', '0');
INSERT INTO `oc_category_path` VALUES ('47', '47', '1');
INSERT INTO `oc_category_path` VALUES ('48', '34', '0');
INSERT INTO `oc_category_path` VALUES ('48', '48', '1');
INSERT INTO `oc_category_path` VALUES ('49', '34', '0');
INSERT INTO `oc_category_path` VALUES ('49', '49', '1');
INSERT INTO `oc_category_path` VALUES ('50', '34', '0');
INSERT INTO `oc_category_path` VALUES ('50', '50', '1');
INSERT INTO `oc_category_path` VALUES ('51', '34', '0');
INSERT INTO `oc_category_path` VALUES ('51', '51', '1');
INSERT INTO `oc_category_path` VALUES ('52', '34', '0');
INSERT INTO `oc_category_path` VALUES ('52', '52', '1');
INSERT INTO `oc_category_path` VALUES ('53', '34', '0');
INSERT INTO `oc_category_path` VALUES ('53', '53', '1');
INSERT INTO `oc_category_path` VALUES ('54', '34', '0');
INSERT INTO `oc_category_path` VALUES ('54', '54', '1');
INSERT INTO `oc_category_path` VALUES ('55', '34', '0');
INSERT INTO `oc_category_path` VALUES ('55', '55', '1');
INSERT INTO `oc_category_path` VALUES ('56', '34', '0');
INSERT INTO `oc_category_path` VALUES ('56', '56', '1');
INSERT INTO `oc_category_path` VALUES ('57', '57', '0');
INSERT INTO `oc_category_path` VALUES ('58', '34', '0');
INSERT INTO `oc_category_path` VALUES ('58', '52', '1');
INSERT INTO `oc_category_path` VALUES ('58', '58', '2');
INSERT INTO `oc_category_path` VALUES ('59', '59', '0');

-- ----------------------------
-- Table structure for oc_category_to_layout
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_to_layout`;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_category_to_layout
-- ----------------------------
INSERT INTO `oc_category_to_layout` VALUES ('59', '0', '0');

-- ----------------------------
-- Table structure for oc_category_to_store
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_to_store`;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_category_to_store
-- ----------------------------
INSERT INTO `oc_category_to_store` VALUES ('17', '0');
INSERT INTO `oc_category_to_store` VALUES ('18', '0');
INSERT INTO `oc_category_to_store` VALUES ('20', '0');
INSERT INTO `oc_category_to_store` VALUES ('24', '0');
INSERT INTO `oc_category_to_store` VALUES ('25', '0');
INSERT INTO `oc_category_to_store` VALUES ('26', '0');
INSERT INTO `oc_category_to_store` VALUES ('27', '0');
INSERT INTO `oc_category_to_store` VALUES ('28', '0');
INSERT INTO `oc_category_to_store` VALUES ('29', '0');
INSERT INTO `oc_category_to_store` VALUES ('30', '0');
INSERT INTO `oc_category_to_store` VALUES ('31', '0');
INSERT INTO `oc_category_to_store` VALUES ('32', '0');
INSERT INTO `oc_category_to_store` VALUES ('33', '0');
INSERT INTO `oc_category_to_store` VALUES ('34', '0');
INSERT INTO `oc_category_to_store` VALUES ('35', '0');
INSERT INTO `oc_category_to_store` VALUES ('36', '0');
INSERT INTO `oc_category_to_store` VALUES ('37', '0');
INSERT INTO `oc_category_to_store` VALUES ('38', '0');
INSERT INTO `oc_category_to_store` VALUES ('39', '0');
INSERT INTO `oc_category_to_store` VALUES ('40', '0');
INSERT INTO `oc_category_to_store` VALUES ('41', '0');
INSERT INTO `oc_category_to_store` VALUES ('42', '0');
INSERT INTO `oc_category_to_store` VALUES ('43', '0');
INSERT INTO `oc_category_to_store` VALUES ('44', '0');
INSERT INTO `oc_category_to_store` VALUES ('45', '0');
INSERT INTO `oc_category_to_store` VALUES ('46', '0');
INSERT INTO `oc_category_to_store` VALUES ('47', '0');
INSERT INTO `oc_category_to_store` VALUES ('48', '0');
INSERT INTO `oc_category_to_store` VALUES ('49', '0');
INSERT INTO `oc_category_to_store` VALUES ('50', '0');
INSERT INTO `oc_category_to_store` VALUES ('51', '0');
INSERT INTO `oc_category_to_store` VALUES ('52', '0');
INSERT INTO `oc_category_to_store` VALUES ('53', '0');
INSERT INTO `oc_category_to_store` VALUES ('54', '0');
INSERT INTO `oc_category_to_store` VALUES ('55', '0');
INSERT INTO `oc_category_to_store` VALUES ('56', '0');
INSERT INTO `oc_category_to_store` VALUES ('57', '0');
INSERT INTO `oc_category_to_store` VALUES ('58', '0');
INSERT INTO `oc_category_to_store` VALUES ('59', '0');

-- ----------------------------
-- Table structure for oc_country
-- ----------------------------
DROP TABLE IF EXISTS `oc_country`;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format_id` int(11) NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_country
-- ----------------------------
INSERT INTO `oc_country` VALUES ('1', 'Afghanistan', 'AF', 'AFG', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('2', 'Albania', 'AL', 'ALB', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('3', 'Algeria', 'DZ', 'DZA', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('4', 'American Samoa', 'AS', 'ASM', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('5', 'Andorra', 'AD', 'AND', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('6', 'Angola', 'AO', 'AGO', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('7', 'Anguilla', 'AI', 'AIA', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('8', 'Antarctica', 'AQ', 'ATA', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('9', 'Antigua and Barbuda', 'AG', 'ATG', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('10', 'Argentina', 'AR', 'ARG', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('11', 'Armenia', 'AM', 'ARM', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('12', 'Aruba', 'AW', 'ABW', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('13', 'Australia', 'AU', 'AUS', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('14', 'Austria', 'AT', 'AUT', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('15', 'Azerbaijan', 'AZ', 'AZE', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('16', 'Bahamas', 'BS', 'BHS', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('17', 'Bahrain', 'BH', 'BHR', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('18', 'Bangladesh', 'BD', 'BGD', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('19', 'Barbados', 'BB', 'BRB', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('20', 'Belarus', 'BY', 'BLR', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('21', 'Belgium', 'BE', 'BEL', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('22', 'Belize', 'BZ', 'BLZ', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('23', 'Benin', 'BJ', 'BEN', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('24', 'Bermuda', 'BM', 'BMU', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('25', 'Bhutan', 'BT', 'BTN', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('26', 'Bolivia', 'BO', 'BOL', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('27', 'Bosnia and Herzegovina', 'BA', 'BIH', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('28', 'Botswana', 'BW', 'BWA', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('29', 'Bouvet Island', 'BV', 'BVT', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('30', 'Brazil', 'BR', 'BRA', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('31', 'British Indian Ocean Territory', 'IO', 'IOT', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('32', 'Brunei Darussalam', 'BN', 'BRN', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('33', 'Bulgaria', 'BG', 'BGR', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('34', 'Burkina Faso', 'BF', 'BFA', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('35', 'Burundi', 'BI', 'BDI', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('36', 'Cambodia', 'KH', 'KHM', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('37', 'Cameroon', 'CM', 'CMR', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('38', 'Canada', 'CA', 'CAN', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('39', 'Cape Verde', 'CV', 'CPV', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('40', 'Cayman Islands', 'KY', 'CYM', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('41', 'Central African Republic', 'CF', 'CAF', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('42', 'Chad', 'TD', 'TCD', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('43', 'Chile', 'CL', 'CHL', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('44', 'China', 'CN', 'CHN', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('45', 'Christmas Island', 'CX', 'CXR', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('46', 'Cocos (Keeling) Islands', 'CC', 'CCK', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('47', 'Colombia', 'CO', 'COL', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('48', 'Comoros', 'KM', 'COM', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('49', 'Congo', 'CG', 'COG', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('50', 'Cook Islands', 'CK', 'COK', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('51', 'Costa Rica', 'CR', 'CRI', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('52', 'Cote D\'Ivoire', 'CI', 'CIV', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('53', 'Croatia', 'HR', 'HRV', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('54', 'Cuba', 'CU', 'CUB', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('55', 'Cyprus', 'CY', 'CYP', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('56', 'Czech Republic', 'CZ', 'CZE', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('57', 'Denmark', 'DK', 'DNK', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('58', 'Djibouti', 'DJ', 'DJI', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('59', 'Dominica', 'DM', 'DMA', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('60', 'Dominican Republic', 'DO', 'DOM', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('61', 'East Timor', 'TL', 'TLS', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('62', 'Ecuador', 'EC', 'ECU', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('63', 'Egypt', 'EG', 'EGY', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('64', 'El Salvador', 'SV', 'SLV', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('65', 'Equatorial Guinea', 'GQ', 'GNQ', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('66', 'Eritrea', 'ER', 'ERI', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('67', 'Estonia', 'EE', 'EST', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('68', 'Ethiopia', 'ET', 'ETH', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('69', 'Falkland Islands (Malvinas)', 'FK', 'FLK', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('70', 'Faroe Islands', 'FO', 'FRO', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('71', 'Fiji', 'FJ', 'FJI', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('72', 'Finland', 'FI', 'FIN', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('74', 'France, Metropolitan', 'FR', 'FRA', '1', '1', '1');
INSERT INTO `oc_country` VALUES ('75', 'French Guiana', 'GF', 'GUF', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('76', 'French Polynesia', 'PF', 'PYF', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('77', 'French Southern Territories', 'TF', 'ATF', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('78', 'Gabon', 'GA', 'GAB', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('79', 'Gambia', 'GM', 'GMB', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('80', 'Georgia', 'GE', 'GEO', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('81', 'Germany', 'DE', 'DEU', '1', '1', '1');
INSERT INTO `oc_country` VALUES ('82', 'Ghana', 'GH', 'GHA', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('83', 'Gibraltar', 'GI', 'GIB', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('84', 'Greece', 'GR', 'GRC', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('85', 'Greenland', 'GL', 'GRL', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('86', 'Grenada', 'GD', 'GRD', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('87', 'Guadeloupe', 'GP', 'GLP', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('88', 'Guam', 'GU', 'GUM', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('89', 'Guatemala', 'GT', 'GTM', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('90', 'Guinea', 'GN', 'GIN', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('91', 'Guinea-Bissau', 'GW', 'GNB', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('92', 'Guyana', 'GY', 'GUY', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('93', 'Haiti', 'HT', 'HTI', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('94', 'Heard and Mc Donald Islands', 'HM', 'HMD', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('95', 'Honduras', 'HN', 'HND', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('96', 'Hong Kong', 'HK', 'HKG', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('97', 'Hungary', 'HU', 'HUN', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('98', 'Iceland', 'IS', 'ISL', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('99', 'India', 'IN', 'IND', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('100', 'Indonesia', 'ID', 'IDN', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('101', 'Iran (Islamic Republic of)', 'IR', 'IRN', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('102', 'Iraq', 'IQ', 'IRQ', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('103', 'Ireland', 'IE', 'IRL', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('104', 'Israel', 'IL', 'ISR', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('105', 'Italy', 'IT', 'ITA', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('106', 'Jamaica', 'JM', 'JAM', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('107', 'Japan', 'JP', 'JPN', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('108', 'Jordan', 'JO', 'JOR', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('109', 'Kazakhstan', 'KZ', 'KAZ', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('110', 'Kenya', 'KE', 'KEN', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('111', 'Kiribati', 'KI', 'KIR', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('112', 'North Korea', 'KP', 'PRK', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('113', 'South Korea', 'KR', 'KOR', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('114', 'Kuwait', 'KW', 'KWT', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('115', 'Kyrgyzstan', 'KG', 'KGZ', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('116', 'Lao People\'s Democratic Republic', 'LA', 'LAO', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('117', 'Latvia', 'LV', 'LVA', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('118', 'Lebanon', 'LB', 'LBN', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('119', 'Lesotho', 'LS', 'LSO', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('120', 'Liberia', 'LR', 'LBR', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('121', 'Libyan Arab Jamahiriya', 'LY', 'LBY', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('122', 'Liechtenstein', 'LI', 'LIE', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('123', 'Lithuania', 'LT', 'LTU', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('124', 'Luxembourg', 'LU', 'LUX', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('125', 'Macau', 'MO', 'MAC', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('126', 'FYROM', 'MK', 'MKD', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('127', 'Madagascar', 'MG', 'MDG', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('128', 'Malawi', 'MW', 'MWI', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('129', 'Malaysia', 'MY', 'MYS', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('130', 'Maldives', 'MV', 'MDV', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('131', 'Mali', 'ML', 'MLI', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('132', 'Malta', 'MT', 'MLT', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('133', 'Marshall Islands', 'MH', 'MHL', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('134', 'Martinique', 'MQ', 'MTQ', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('135', 'Mauritania', 'MR', 'MRT', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('136', 'Mauritius', 'MU', 'MUS', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('137', 'Mayotte', 'YT', 'MYT', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('138', 'Mexico', 'MX', 'MEX', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('139', 'Micronesia, Federated States of', 'FM', 'FSM', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('140', 'Moldova, Republic of', 'MD', 'MDA', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('141', 'Monaco', 'MC', 'MCO', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('142', 'Mongolia', 'MN', 'MNG', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('143', 'Montserrat', 'MS', 'MSR', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('144', 'Morocco', 'MA', 'MAR', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('145', 'Mozambique', 'MZ', 'MOZ', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('146', 'Myanmar', 'MM', 'MMR', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('147', 'Namibia', 'NA', 'NAM', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('148', 'Nauru', 'NR', 'NRU', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('149', 'Nepal', 'NP', 'NPL', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('150', 'Netherlands', 'NL', 'NLD', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('151', 'Netherlands Antilles', 'AN', 'ANT', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('152', 'New Caledonia', 'NC', 'NCL', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('153', 'New Zealand', 'NZ', 'NZL', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('154', 'Nicaragua', 'NI', 'NIC', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('155', 'Niger', 'NE', 'NER', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('156', 'Nigeria', 'NG', 'NGA', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('157', 'Niue', 'NU', 'NIU', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('158', 'Norfolk Island', 'NF', 'NFK', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('159', 'Northern Mariana Islands', 'MP', 'MNP', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('160', 'Norway', 'NO', 'NOR', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('161', 'Oman', 'OM', 'OMN', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('162', 'Pakistan', 'PK', 'PAK', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('163', 'Palau', 'PW', 'PLW', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('164', 'Panama', 'PA', 'PAN', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('165', 'Papua New Guinea', 'PG', 'PNG', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('166', 'Paraguay', 'PY', 'PRY', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('167', 'Peru', 'PE', 'PER', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('168', 'Philippines', 'PH', 'PHL', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('169', 'Pitcairn', 'PN', 'PCN', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('170', 'Poland', 'PL', 'POL', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('171', 'Portugal', 'PT', 'PRT', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('172', 'Puerto Rico', 'PR', 'PRI', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('173', 'Qatar', 'QA', 'QAT', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('174', 'Reunion', 'RE', 'REU', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('175', 'România', 'RO', 'ROM', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('176', 'Russian Federation', 'RU', 'RUS', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('177', 'Rwanda', 'RW', 'RWA', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('178', 'Saint Kitts and Nevis', 'KN', 'KNA', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('179', 'Saint Lucia', 'LC', 'LCA', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('180', 'Saint Vincent and the Grenadines', 'VC', 'VCT', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('181', 'Samoa', 'WS', 'WSM', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('182', 'San Marino', 'SM', 'SMR', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('183', 'Sao Tome and Principe', 'ST', 'STP', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('184', 'Saudi Arabia', 'SA', 'SAU', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('185', 'Senegal', 'SN', 'SEN', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('186', 'Seychelles', 'SC', 'SYC', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('187', 'Sierra Leone', 'SL', 'SLE', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('188', 'Singapore', 'SG', 'SGP', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('189', 'Slovak Republic', 'SK', 'SVK', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('190', 'Slovenia', 'SI', 'SVN', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('191', 'Solomon Islands', 'SB', 'SLB', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('192', 'Somalia', 'SO', 'SOM', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('193', 'South Africa', 'ZA', 'ZAF', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('194', 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('195', 'Spain', 'ES', 'ESP', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('196', 'Sri Lanka', 'LK', 'LKA', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('197', 'St. Helena', 'SH', 'SHN', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('198', 'St. Pierre and Miquelon', 'PM', 'SPM', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('199', 'Sudan', 'SD', 'SDN', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('200', 'Suriname', 'SR', 'SUR', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('201', 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('202', 'Swaziland', 'SZ', 'SWZ', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('203', 'Sweden', 'SE', 'SWE', '1', '1', '1');
INSERT INTO `oc_country` VALUES ('204', 'Switzerland', 'CH', 'CHE', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('205', 'Syrian Arab Republic', 'SY', 'SYR', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('206', 'Taiwan', 'TW', 'TWN', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('207', 'Tajikistan', 'TJ', 'TJK', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('208', 'Tanzania, United Republic of', 'TZ', 'TZA', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('209', 'Thailand', 'TH', 'THA', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('210', 'Togo', 'TG', 'TGO', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('211', 'Tokelau', 'TK', 'TKL', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('212', 'Tonga', 'TO', 'TON', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('213', 'Trinidad and Tobago', 'TT', 'TTO', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('214', 'Tunisia', 'TN', 'TUN', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('215', 'Turkey', 'TR', 'TUR', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('216', 'Turkmenistan', 'TM', 'TKM', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('217', 'Turks and Caicos Islands', 'TC', 'TCA', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('218', 'Tuvalu', 'TV', 'TUV', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('219', 'Uganda', 'UG', 'UGA', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('220', 'Ukraine', 'UA', 'UKR', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('221', 'United Arab Emirates', 'AE', 'ARE', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('222', 'United Kingdom', 'GB', 'GBR', '1', '1', '1');
INSERT INTO `oc_country` VALUES ('223', 'United States', 'US', 'USA', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('224', 'United States Minor Outlying Islands', 'UM', 'UMI', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('225', 'Uruguay', 'UY', 'URY', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('226', 'Uzbekistan', 'UZ', 'UZB', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('227', 'Vanuatu', 'VU', 'VUT', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('228', 'Vatican City State (Holy See)', 'VA', 'VAT', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('229', 'Venezuela', 'VE', 'VEN', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('230', 'Viet Nam', 'VN', 'VNM', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('231', 'Virgin Islands (British)', 'VG', 'VGB', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('232', 'Virgin Islands (U.S.)', 'VI', 'VIR', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('233', 'Wallis and Futuna Islands', 'WF', 'WLF', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('234', 'Western Sahara', 'EH', 'ESH', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('235', 'Yemen', 'YE', 'YEM', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('237', 'Democratic Republic of Congo', 'CD', 'COD', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('238', 'Zambia', 'ZM', 'ZMB', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('239', 'Zimbabwe', 'ZW', 'ZWE', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('242', 'Montenegro', 'ME', 'MNE', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('243', 'Serbia', 'RS', 'SRB', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('244', 'Aaland Islands', 'AX', 'ALA', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('245', 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('246', 'Curacao', 'CW', 'CUW', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('247', 'Palestinian Territory, Occupied', 'PS', 'PSE', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('248', 'South Sudan', 'SS', 'SSD', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('249', 'St. Barthelemy', 'BL', 'BLM', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('250', 'St. Martin (French part)', 'MF', 'MAF', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('251', 'Canary Islands', 'IC', 'ICA', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('252', 'Ascension Island (British)', 'AC', 'ASC', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('253', 'Kosovo, Republic of', 'XK', 'UNK', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('254', 'Isle of Man', 'IM', 'IMN', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('255', 'Tristan da Cunha', 'TA', 'SHN', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('256', 'Guernsey', 'GG', 'GGY', '1', '0', '1');
INSERT INTO `oc_country` VALUES ('257', 'Jersey', 'JE', 'JEY', '1', '0', '1');

-- ----------------------------
-- Table structure for oc_coupon
-- ----------------------------
DROP TABLE IF EXISTS `oc_coupon`;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `uses_total` int(11) NOT NULL,
  `uses_customer` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_coupon
-- ----------------------------
INSERT INTO `oc_coupon` VALUES ('4', '-10% Discount', '2222', 'P', '10.0000', '0', '0', '0.0000', '2014-01-01', '2020-01-01', '10', '10', '0', '2009-01-27 13:55:03');
INSERT INTO `oc_coupon` VALUES ('5', 'Free Shipping', '3333', 'P', '0.0000', '0', '1', '100.0000', '2014-01-01', '2014-02-01', '10', '10', '0', '2009-03-14 21:13:53');
INSERT INTO `oc_coupon` VALUES ('6', '-10.00 Discount', '1111', 'F', '10.0000', '0', '0', '10.0000', '2014-01-01', '2020-01-01', '100000', '10000', '0', '2009-03-14 21:15:18');

-- ----------------------------
-- Table structure for oc_coupon_category
-- ----------------------------
DROP TABLE IF EXISTS `oc_coupon_category`;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_coupon_category
-- ----------------------------

-- ----------------------------
-- Table structure for oc_coupon_history
-- ----------------------------
DROP TABLE IF EXISTS `oc_coupon_history`;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_coupon_history
-- ----------------------------

-- ----------------------------
-- Table structure for oc_coupon_product
-- ----------------------------
DROP TABLE IF EXISTS `oc_coupon_product`;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_coupon_product
-- ----------------------------

-- ----------------------------
-- Table structure for oc_cron
-- ----------------------------
DROP TABLE IF EXISTS `oc_cron`;
CREATE TABLE `oc_cron` (
  `cron_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `cycle` varchar(12) NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`cron_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_cron
-- ----------------------------
INSERT INTO `oc_cron` VALUES ('1', 'currency', '', 'day', 'cron/currency', '1', '2014-09-25 14:40:00', '2014-09-25 14:40:00');
INSERT INTO `oc_cron` VALUES ('2', 'gdpr', '', 'day', 'cron/gdpr', '1', '2014-09-25 14:40:00', '2014-09-25 14:40:00');
INSERT INTO `oc_cron` VALUES ('3', 'subscription', '', 'day', 'cron/subscription', '1', '2014-09-25 14:40:00', '2014-09-25 14:40:00');

-- ----------------------------
-- Table structure for oc_currency
-- ----------------------------
DROP TABLE IF EXISTS `oc_currency`;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` int(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_currency
-- ----------------------------
INSERT INTO `oc_currency` VALUES ('1', 'Pound Sterling', 'GBP', '£', '', '2', '0.83486282', '1', '2023-02-25 05:33:03');
INSERT INTO `oc_currency` VALUES ('2', 'US Dollar', 'USD', '$', '', '2', '1.00000000', '1', '2023-02-25 05:33:03');
INSERT INTO `oc_currency` VALUES ('3', 'Euro', 'EUR', '', '€', '2', '0.94607379', '1', '2023-02-25 05:33:03');
INSERT INTO `oc_currency` VALUES ('4', 'Hong Kong Dollar', 'HKD', 'HK$', '', '2', '7.84853359', '0', '2023-02-25 05:33:03');
INSERT INTO `oc_currency` VALUES ('5', 'Indian Rupee', 'INR', '₹', '', '2', '82.76679281', '0', '2023-02-25 05:33:03');
INSERT INTO `oc_currency` VALUES ('6', 'Russian Ruble', 'RUB', '', '₽', '2', '56.40360000', '0', '2018-02-16 12:00:00');
INSERT INTO `oc_currency` VALUES ('7', 'Chinese Yuan Renminbi', 'CNY', '¥', '', '2', '6.94399243', '0', '2023-02-25 05:33:03');
INSERT INTO `oc_currency` VALUES ('8', 'Australian Dollar', 'AUD', '$', '', '2', '1.48230842', '0', '2023-02-25 05:33:03');

-- ----------------------------
-- Table structure for oc_customer
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer`;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `custom_field` text NOT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT 0,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_customer
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_activity
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_activity`;
CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_customer_activity
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_affiliate
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_affiliate`;
CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(60) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT 0.00,
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_customer_affiliate
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_affiliate_report
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_affiliate_report`;
CREATE TABLE `oc_customer_affiliate_report` (
  `customer_affiliate_report_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `country` varchar(2) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_affiliate_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_customer_affiliate_report
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_approval
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_approval`;
CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_approval_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_customer_approval
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_group
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_group`;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_customer_group
-- ----------------------------
INSERT INTO `oc_customer_group` VALUES ('1', '0', '1');

-- ----------------------------
-- Table structure for oc_customer_group_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_group_description`;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_customer_group_description
-- ----------------------------
INSERT INTO `oc_customer_group_description` VALUES ('1', '1', 'Default', 'test');

-- ----------------------------
-- Table structure for oc_customer_history
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_history`;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_customer_history
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_ip
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_ip`;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `country` varchar(2) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_customer_ip
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_login
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_login`;
CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_customer_login
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_online
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_online`;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_customer_online
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_payment
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_payment`;
CREATE TABLE `oc_customer_payment` (
  `customer_payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` varchar(64) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `code` varchar(32) NOT NULL,
  `token` varchar(96) NOT NULL,
  `date_expire` date NOT NULL,
  `default` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_payment_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_customer_payment
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_reward
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_reward`;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_customer_reward
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_search
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_search`;
CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_search_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_customer_search
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_transaction
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_transaction`;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_customer_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for oc_customer_wishlist
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_wishlist`;
CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_customer_wishlist
-- ----------------------------

-- ----------------------------
-- Table structure for oc_custom_field
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field`;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_custom_field
-- ----------------------------
INSERT INTO `oc_custom_field` VALUES ('1', 'select', '', '', 'account', '0', '1');
INSERT INTO `oc_custom_field` VALUES ('2', 'radio', '', '', 'account', '0', '2');
INSERT INTO `oc_custom_field` VALUES ('3', 'checkbox', '', '', 'account', '0', '3');
INSERT INTO `oc_custom_field` VALUES ('4', 'text', '', '', 'account', '0', '4');
INSERT INTO `oc_custom_field` VALUES ('5', 'textarea', '', '', 'account', '0', '5');
INSERT INTO `oc_custom_field` VALUES ('6', 'file', '', '', 'account', '0', '6');
INSERT INTO `oc_custom_field` VALUES ('7', 'date', '', '', 'account', '0', '7');
INSERT INTO `oc_custom_field` VALUES ('8', 'time', '', '', 'account', '0', '8');
INSERT INTO `oc_custom_field` VALUES ('9', 'datetime', '', '', 'account', '0', '9');
INSERT INTO `oc_custom_field` VALUES ('11', 'checkbox', '', '', 'address', '0', '3');
INSERT INTO `oc_custom_field` VALUES ('12', 'time', '', '', 'address', '0', '8');
INSERT INTO `oc_custom_field` VALUES ('13', 'date', '', '', 'address', '0', '7');
INSERT INTO `oc_custom_field` VALUES ('14', 'datetime', '', '', 'address', '0', '9');
INSERT INTO `oc_custom_field` VALUES ('15', 'file', '', '', 'address', '0', '6');
INSERT INTO `oc_custom_field` VALUES ('16', 'radio', '', '', 'address', '0', '2');
INSERT INTO `oc_custom_field` VALUES ('17', 'select', '', '', 'address', '0', '1');
INSERT INTO `oc_custom_field` VALUES ('18', 'text', '', '', 'address', '0', '4');
INSERT INTO `oc_custom_field` VALUES ('19', 'textarea', '', '', 'address', '0', '5');
INSERT INTO `oc_custom_field` VALUES ('20', 'checkbox', '', '', 'affiliate', '0', '3');
INSERT INTO `oc_custom_field` VALUES ('21', 'date', '', '', 'affiliate', '0', '8');
INSERT INTO `oc_custom_field` VALUES ('22', 'datetime', '', '', 'affiliate', '0', '9');
INSERT INTO `oc_custom_field` VALUES ('23', 'file', '', '', 'affiliate', '0', '6');
INSERT INTO `oc_custom_field` VALUES ('24', 'radio', '', '', 'affiliate', '0', '2');
INSERT INTO `oc_custom_field` VALUES ('25', 'select', '', '', 'affiliate', '0', '1');
INSERT INTO `oc_custom_field` VALUES ('26', 'text', '', '', 'affiliate', '0', '4');
INSERT INTO `oc_custom_field` VALUES ('27', 'textarea', '', '', 'affiliate', '0', '5');
INSERT INTO `oc_custom_field` VALUES ('28', 'time', '', '', 'affiliate', '0', '8');

-- ----------------------------
-- Table structure for oc_custom_field_customer_group
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_custom_field_customer_group
-- ----------------------------
INSERT INTO `oc_custom_field_customer_group` VALUES ('1', '1', '1');
INSERT INTO `oc_custom_field_customer_group` VALUES ('2', '1', '1');
INSERT INTO `oc_custom_field_customer_group` VALUES ('3', '1', '1');
INSERT INTO `oc_custom_field_customer_group` VALUES ('4', '1', '1');
INSERT INTO `oc_custom_field_customer_group` VALUES ('5', '1', '1');
INSERT INTO `oc_custom_field_customer_group` VALUES ('6', '1', '1');
INSERT INTO `oc_custom_field_customer_group` VALUES ('7', '1', '1');
INSERT INTO `oc_custom_field_customer_group` VALUES ('8', '1', '1');
INSERT INTO `oc_custom_field_customer_group` VALUES ('9', '1', '1');
INSERT INTO `oc_custom_field_customer_group` VALUES ('11', '1', '1');
INSERT INTO `oc_custom_field_customer_group` VALUES ('12', '1', '1');
INSERT INTO `oc_custom_field_customer_group` VALUES ('13', '1', '1');
INSERT INTO `oc_custom_field_customer_group` VALUES ('14', '1', '1');
INSERT INTO `oc_custom_field_customer_group` VALUES ('15', '1', '1');
INSERT INTO `oc_custom_field_customer_group` VALUES ('16', '1', '1');
INSERT INTO `oc_custom_field_customer_group` VALUES ('17', '1', '1');
INSERT INTO `oc_custom_field_customer_group` VALUES ('18', '1', '1');
INSERT INTO `oc_custom_field_customer_group` VALUES ('19', '1', '1');
INSERT INTO `oc_custom_field_customer_group` VALUES ('20', '1', '1');
INSERT INTO `oc_custom_field_customer_group` VALUES ('21', '1', '1');
INSERT INTO `oc_custom_field_customer_group` VALUES ('22', '1', '1');
INSERT INTO `oc_custom_field_customer_group` VALUES ('23', '1', '1');
INSERT INTO `oc_custom_field_customer_group` VALUES ('24', '1', '1');
INSERT INTO `oc_custom_field_customer_group` VALUES ('25', '1', '1');
INSERT INTO `oc_custom_field_customer_group` VALUES ('26', '1', '1');
INSERT INTO `oc_custom_field_customer_group` VALUES ('27', '1', '1');
INSERT INTO `oc_custom_field_customer_group` VALUES ('28', '1', '1');

-- ----------------------------
-- Table structure for oc_custom_field_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field_description`;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_custom_field_description
-- ----------------------------
INSERT INTO `oc_custom_field_description` VALUES ('1', '1', 'Select');
INSERT INTO `oc_custom_field_description` VALUES ('2', '1', 'Radio');
INSERT INTO `oc_custom_field_description` VALUES ('3', '1', 'Checkbox');
INSERT INTO `oc_custom_field_description` VALUES ('4', '1', 'Text');
INSERT INTO `oc_custom_field_description` VALUES ('5', '1', 'Textarea');
INSERT INTO `oc_custom_field_description` VALUES ('6', '1', 'File');
INSERT INTO `oc_custom_field_description` VALUES ('7', '1', 'Date');
INSERT INTO `oc_custom_field_description` VALUES ('8', '1', 'Time');
INSERT INTO `oc_custom_field_description` VALUES ('9', '1', 'Date &amp; Time');
INSERT INTO `oc_custom_field_description` VALUES ('11', '1', 'Checkbox');
INSERT INTO `oc_custom_field_description` VALUES ('12', '1', 'Time');
INSERT INTO `oc_custom_field_description` VALUES ('13', '1', 'Date');
INSERT INTO `oc_custom_field_description` VALUES ('14', '1', 'Date &amp; Time');
INSERT INTO `oc_custom_field_description` VALUES ('15', '1', 'File');
INSERT INTO `oc_custom_field_description` VALUES ('16', '1', 'Radio');
INSERT INTO `oc_custom_field_description` VALUES ('17', '1', 'Select');
INSERT INTO `oc_custom_field_description` VALUES ('18', '1', 'Text');
INSERT INTO `oc_custom_field_description` VALUES ('19', '1', 'Textarea');
INSERT INTO `oc_custom_field_description` VALUES ('20', '1', 'Checkbox');
INSERT INTO `oc_custom_field_description` VALUES ('21', '1', 'Date');
INSERT INTO `oc_custom_field_description` VALUES ('22', '1', 'Date &amp; Time');
INSERT INTO `oc_custom_field_description` VALUES ('23', '1', 'File');
INSERT INTO `oc_custom_field_description` VALUES ('24', '1', 'Radio');
INSERT INTO `oc_custom_field_description` VALUES ('25', '1', 'Select');
INSERT INTO `oc_custom_field_description` VALUES ('26', '1', 'Text');
INSERT INTO `oc_custom_field_description` VALUES ('27', '1', 'Textarea');
INSERT INTO `oc_custom_field_description` VALUES ('28', '1', 'Time');

-- ----------------------------
-- Table structure for oc_custom_field_value
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field_value`;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_custom_field_value
-- ----------------------------
INSERT INTO `oc_custom_field_value` VALUES ('1', '1', '1');
INSERT INTO `oc_custom_field_value` VALUES ('2', '1', '2');
INSERT INTO `oc_custom_field_value` VALUES ('3', '1', '3');
INSERT INTO `oc_custom_field_value` VALUES ('4', '2', '1');
INSERT INTO `oc_custom_field_value` VALUES ('5', '2', '2');
INSERT INTO `oc_custom_field_value` VALUES ('6', '2', '3');
INSERT INTO `oc_custom_field_value` VALUES ('7', '3', '1');
INSERT INTO `oc_custom_field_value` VALUES ('8', '3', '2');
INSERT INTO `oc_custom_field_value` VALUES ('9', '3', '3');
INSERT INTO `oc_custom_field_value` VALUES ('20', '11', '1');
INSERT INTO `oc_custom_field_value` VALUES ('21', '11', '2');
INSERT INTO `oc_custom_field_value` VALUES ('22', '11', '3');
INSERT INTO `oc_custom_field_value` VALUES ('32', '16', '1');
INSERT INTO `oc_custom_field_value` VALUES ('33', '16', '2');
INSERT INTO `oc_custom_field_value` VALUES ('34', '16', '3');
INSERT INTO `oc_custom_field_value` VALUES ('35', '17', '1');
INSERT INTO `oc_custom_field_value` VALUES ('36', '17', '2');
INSERT INTO `oc_custom_field_value` VALUES ('37', '17', '3');
INSERT INTO `oc_custom_field_value` VALUES ('38', '20', '1');
INSERT INTO `oc_custom_field_value` VALUES ('39', '20', '2');
INSERT INTO `oc_custom_field_value` VALUES ('40', '20', '3');
INSERT INTO `oc_custom_field_value` VALUES ('41', '24', '1');
INSERT INTO `oc_custom_field_value` VALUES ('42', '24', '2');
INSERT INTO `oc_custom_field_value` VALUES ('43', '24', '3');
INSERT INTO `oc_custom_field_value` VALUES ('44', '25', '0');
INSERT INTO `oc_custom_field_value` VALUES ('45', '25', '0');
INSERT INTO `oc_custom_field_value` VALUES ('46', '25', '0');

-- ----------------------------
-- Table structure for oc_custom_field_value_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field_value_description`;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_custom_field_value_description
-- ----------------------------
INSERT INTO `oc_custom_field_value_description` VALUES ('1', '1', '1', 'Test 1');
INSERT INTO `oc_custom_field_value_description` VALUES ('2', '1', '1', 'test 2');
INSERT INTO `oc_custom_field_value_description` VALUES ('3', '1', '1', 'Test 3');
INSERT INTO `oc_custom_field_value_description` VALUES ('4', '1', '2', 'Test 1');
INSERT INTO `oc_custom_field_value_description` VALUES ('5', '1', '2', 'Test 2');
INSERT INTO `oc_custom_field_value_description` VALUES ('6', '1', '2', 'Test 3');
INSERT INTO `oc_custom_field_value_description` VALUES ('7', '1', '3', 'Test 1');
INSERT INTO `oc_custom_field_value_description` VALUES ('8', '1', '3', 'Test 2');
INSERT INTO `oc_custom_field_value_description` VALUES ('9', '1', '3', 'Test 3');
INSERT INTO `oc_custom_field_value_description` VALUES ('20', '1', '11', 'Test 1');
INSERT INTO `oc_custom_field_value_description` VALUES ('21', '1', '11', 'Test 2');
INSERT INTO `oc_custom_field_value_description` VALUES ('22', '1', '11', 'Test 3');
INSERT INTO `oc_custom_field_value_description` VALUES ('32', '1', '16', 'Test 1');
INSERT INTO `oc_custom_field_value_description` VALUES ('33', '1', '16', 'Test 2');
INSERT INTO `oc_custom_field_value_description` VALUES ('34', '1', '16', 'Test 3');
INSERT INTO `oc_custom_field_value_description` VALUES ('35', '1', '17', 'Test 1');
INSERT INTO `oc_custom_field_value_description` VALUES ('36', '1', '17', 'Test 2');
INSERT INTO `oc_custom_field_value_description` VALUES ('37', '1', '17', 'Test 3');
INSERT INTO `oc_custom_field_value_description` VALUES ('38', '1', '20', 'Test 1');
INSERT INTO `oc_custom_field_value_description` VALUES ('39', '1', '20', 'Test 2');
INSERT INTO `oc_custom_field_value_description` VALUES ('40', '1', '20', 'Test 3');
INSERT INTO `oc_custom_field_value_description` VALUES ('41', '1', '24', 'Test 1');
INSERT INTO `oc_custom_field_value_description` VALUES ('42', '1', '24', 'Test 2');
INSERT INTO `oc_custom_field_value_description` VALUES ('43', '1', '24', 'Test 3');
INSERT INTO `oc_custom_field_value_description` VALUES ('44', '1', '25', 'Test 1');
INSERT INTO `oc_custom_field_value_description` VALUES ('45', '1', '25', 'Test 2');
INSERT INTO `oc_custom_field_value_description` VALUES ('46', '1', '25', 'Test 3');

-- ----------------------------
-- Table structure for oc_download
-- ----------------------------
DROP TABLE IF EXISTS `oc_download`;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_download
-- ----------------------------

-- ----------------------------
-- Table structure for oc_download_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_download_description`;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_download_description
-- ----------------------------

-- ----------------------------
-- Table structure for oc_download_report
-- ----------------------------
DROP TABLE IF EXISTS `oc_download_report`;
CREATE TABLE `oc_download_report` (
  `download_report_id` int(11) NOT NULL AUTO_INCREMENT,
  `download_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `country` varchar(2) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_download_report
-- ----------------------------

-- ----------------------------
-- Table structure for oc_event
-- ----------------------------
DROP TABLE IF EXISTS `oc_event`;
CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` int(3) NOT NULL DEFAULT 1,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_event
-- ----------------------------
INSERT INTO `oc_event` VALUES ('1', 'activity_customer_add', '', 'catalog/model/account/customer/addCustomer/after', 'event/activity.addCustomer', '1', '1');
INSERT INTO `oc_event` VALUES ('2', 'activity_customer_edit', '', 'catalog/model/account/customer/editCustomer/after', 'event/activity.editCustomer', '1', '1');
INSERT INTO `oc_event` VALUES ('3', 'activity_customer_password', '', 'catalog/model/account/customer/editPassword/after', 'event/activity.editPassword', '1', '1');
INSERT INTO `oc_event` VALUES ('4', 'activity_customer_forgotten', '', 'catalog/model/account/customer/editCode/after', 'event/activity.forgotten', '1', '1');
INSERT INTO `oc_event` VALUES ('5', 'activity_customer_login', '', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity.login', '1', '1');
INSERT INTO `oc_event` VALUES ('6', 'activity_customer_transaction', '', 'catalog/model/account/customer/addTransaction/after', 'event/activity.addTransaction', '1', '1');
INSERT INTO `oc_event` VALUES ('7', 'activity_address_add', '', 'catalog/model/account/address/addAddress/after', 'event/activity.addAddress', '1', '1');
INSERT INTO `oc_event` VALUES ('8', 'activity_address_edit', '', 'catalog/model/account/address/editAddress/after', 'event/activity.editAddress', '1', '1');
INSERT INTO `oc_event` VALUES ('9', 'activity_address_delete', '', 'catalog/model/account/address/deleteAddress/after', 'event/activity.deleteAddress', '1', '1');
INSERT INTO `oc_event` VALUES ('10', 'activity_affiliate_add', '', 'catalog/model/account/affiliate/addAffiliate/after', 'event/activity.addAffiliate', '1', '1');
INSERT INTO `oc_event` VALUES ('11', 'activity_affiliate_edit', '', 'catalog/model/account/affiliate/editAffiliate/after', 'event/activity.editAffiliate', '1', '1');
INSERT INTO `oc_event` VALUES ('12', 'activity_order_add', '', 'catalog/model/checkout/order/addHistory/before', 'event/activity.addHistory', '1', '1');
INSERT INTO `oc_event` VALUES ('13', 'activity_return_add', '', 'catalog/model/account/returns/addReturn/after', 'event/activity.addReturn', '1', '1');
INSERT INTO `oc_event` VALUES ('14', 'mail_customer_transaction', '', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', '1', '1');
INSERT INTO `oc_event` VALUES ('15', 'mail_customer_forgotten', '', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', '1', '1');
INSERT INTO `oc_event` VALUES ('16', 'mail_customer_add', '', 'catalog/model/account/customer/addCustomer/after', 'mail/register', '1', '1');
INSERT INTO `oc_event` VALUES ('17', 'mail_customer_alert', '', 'catalog/model/account/customer/addCustomer/after', 'mail/register.alert', '1', '1');
INSERT INTO `oc_event` VALUES ('18', 'mail_affiliate_add', '', 'catalog/model/account/affiliate/addAffiliate/after', 'mail/affiliate', '1', '1');
INSERT INTO `oc_event` VALUES ('19', 'mail_affiliate_alert', '', 'catalog/model/account/affiliate/addAffiliate/after', 'mail/affiliate.alert', '1', '1');
INSERT INTO `oc_event` VALUES ('20', 'mail_order_alert', '', 'catalog/model/checkout/order/addHistory/before', 'mail/order.alert', '1', '1');
INSERT INTO `oc_event` VALUES ('21', 'mail_order_add', '', 'catalog/model/checkout/order/addHistory/before', 'mail/order', '1', '1');
INSERT INTO `oc_event` VALUES ('22', 'mail_gdpr', '', 'catalog/model/account/gdpr/addGdpr/after', 'mail/gdpr', '1', '1');
INSERT INTO `oc_event` VALUES ('23', 'mail_gdpr_delete', '', 'catalog/model/account/gdpr/editStatus/after', 'mail/gdpr.remove', '1', '1');
INSERT INTO `oc_event` VALUES ('24', 'mail_voucher', '', 'catalog/model/checkout/order/addHistory/after', 'mail/voucher', '1', '1');
INSERT INTO `oc_event` VALUES ('25', 'mail_review', '', 'catalog/model/catalog/review/addReview/after', 'mail/review', '1', '1');
INSERT INTO `oc_event` VALUES ('26', 'mail_subscription', '', 'catalog/model/checkout/subscription/addSubscription/after', 'mail/subscription', '1', '1');
INSERT INTO `oc_event` VALUES ('27', 'statistics_review_add', '', 'catalog/model/catalog/review/addReview/after', 'event/statistics.addReview', '1', '1');
INSERT INTO `oc_event` VALUES ('28', 'statistics_return_add', '', 'catalog/model/account/returns/addReturn/after', 'event/statistics.addReturn', '1', '1');
INSERT INTO `oc_event` VALUES ('29', 'statistics_return_delete', '', 'admin/model/sale/returns/deleteReturn/after', 'event/statistics.deleteReturn', '1', '1');
INSERT INTO `oc_event` VALUES ('30', 'statistics_order_history', '', 'catalog/model/checkout/order/addHistory/before', 'event/statistics.addHistory', '1', '1');
INSERT INTO `oc_event` VALUES ('31', 'admin_currency_add', '', 'admin/model/localisation/currency/addCurrency/after', 'event/currency', '1', '1');
INSERT INTO `oc_event` VALUES ('32', 'admin_currency_edit', '', 'admin/model/localisation/currency/editCurrency/after', 'event/currency', '1', '1');
INSERT INTO `oc_event` VALUES ('33', 'admin_currency_setting', '', 'admin/model/setting/setting/editSetting/after', 'event/currency', '1', '1');
INSERT INTO `oc_event` VALUES ('34', 'admin_mail_gdpr', '', 'admin/model/customer/gdpr/editStatus/after', 'mail/gdpr', '1', '1');
INSERT INTO `oc_event` VALUES ('35', 'admin_mail_affiliate_approve', '', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate.approve', '1', '1');
INSERT INTO `oc_event` VALUES ('36', 'admin_mail_affiliate_deny', '', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate.deny', '1', '1');
INSERT INTO `oc_event` VALUES ('37', 'admin_mail_customer_approve', '', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer.approve', '1', '1');
INSERT INTO `oc_event` VALUES ('38', 'admin_mail_customer_deny', '', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer.deny', '1', '1');
INSERT INTO `oc_event` VALUES ('39', 'admin_mail_customer_transaction', '', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', '1', '1');
INSERT INTO `oc_event` VALUES ('40', 'admin_mail_reward', '', 'admin/model/customer/customer/addReward/after', 'mail/reward', '1', '1');
INSERT INTO `oc_event` VALUES ('41', 'admin_mail_return', '', 'admin/model/sale/returns/addHistory/after', 'mail/returns', '1', '1');
INSERT INTO `oc_event` VALUES ('42', 'admin_mail_user_forgotten', '', 'admin/model/user/user/editCode/after', 'mail/forgotten', '1', '1');
INSERT INTO `oc_event` VALUES ('43', 'admin_mail_user_authorize', '', 'admin/controller/common/authorize.send/after', 'mail/authorize', '1', '1');
INSERT INTO `oc_event` VALUES ('44', 'admin_mail_user_authorize_reset', '', 'admin/model/user/user/editCode/after', 'mail/authorize.reset', '1', '1');

-- ----------------------------
-- Table structure for oc_extension
-- ----------------------------
DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension` varchar(255) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(128) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_extension
-- ----------------------------
INSERT INTO `oc_extension` VALUES ('1', 'opencart', 'payment', 'cod');
INSERT INTO `oc_extension` VALUES ('2', 'opencart', 'total', 'shipping');
INSERT INTO `oc_extension` VALUES ('3', 'opencart', 'total', 'sub_total');
INSERT INTO `oc_extension` VALUES ('4', 'opencart', 'total', 'tax');
INSERT INTO `oc_extension` VALUES ('5', 'opencart', 'total', 'total');
INSERT INTO `oc_extension` VALUES ('6', 'opencart', 'module', 'banner');
INSERT INTO `oc_extension` VALUES ('8', 'opencart', 'total', 'credit');
INSERT INTO `oc_extension` VALUES ('9', 'opencart', 'shipping', 'flat');
INSERT INTO `oc_extension` VALUES ('10', 'opencart', 'total', 'handling');
INSERT INTO `oc_extension` VALUES ('11', 'opencart', 'total', 'low_order_fee');
INSERT INTO `oc_extension` VALUES ('12', 'opencart', 'total', 'coupon');
INSERT INTO `oc_extension` VALUES ('13', 'opencart', 'module', 'category');
INSERT INTO `oc_extension` VALUES ('14', 'opencart', 'module', 'account');
INSERT INTO `oc_extension` VALUES ('15', 'opencart', 'total', 'reward');
INSERT INTO `oc_extension` VALUES ('16', 'opencart', 'total', 'voucher');
INSERT INTO `oc_extension` VALUES ('17', 'opencart', 'payment', 'free_checkout');
INSERT INTO `oc_extension` VALUES ('18', 'opencart', 'module', 'featured');
INSERT INTO `oc_extension` VALUES ('20', 'opencart', 'theme', 'basic');
INSERT INTO `oc_extension` VALUES ('21', 'opencart', 'dashboard', 'activity');
INSERT INTO `oc_extension` VALUES ('22', 'opencart', 'dashboard', 'sale');
INSERT INTO `oc_extension` VALUES ('23', 'opencart', 'dashboard', 'recent');
INSERT INTO `oc_extension` VALUES ('24', 'opencart', 'dashboard', 'order');
INSERT INTO `oc_extension` VALUES ('25', 'opencart', 'dashboard', 'online');
INSERT INTO `oc_extension` VALUES ('26', 'opencart', 'dashboard', 'map');
INSERT INTO `oc_extension` VALUES ('27', 'opencart', 'dashboard', 'customer');
INSERT INTO `oc_extension` VALUES ('28', 'opencart', 'dashboard', 'chart');
INSERT INTO `oc_extension` VALUES ('29', 'opencart', 'report', 'sale_coupon');
INSERT INTO `oc_extension` VALUES ('31', 'opencart', 'report', 'customer_search');
INSERT INTO `oc_extension` VALUES ('32', 'opencart', 'report', 'customer_transaction');
INSERT INTO `oc_extension` VALUES ('33', 'opencart', 'report', 'product_purchased');
INSERT INTO `oc_extension` VALUES ('34', 'opencart', 'report', 'product_viewed');
INSERT INTO `oc_extension` VALUES ('35', 'opencart', 'report', 'sale_return');
INSERT INTO `oc_extension` VALUES ('36', 'opencart', 'report', 'sale_order');
INSERT INTO `oc_extension` VALUES ('37', 'opencart', 'report', 'sale_shipping');
INSERT INTO `oc_extension` VALUES ('38', 'opencart', 'report', 'sale_tax');
INSERT INTO `oc_extension` VALUES ('39', 'opencart', 'report', 'customer_activity');
INSERT INTO `oc_extension` VALUES ('40', 'opencart', 'report', 'customer_order');
INSERT INTO `oc_extension` VALUES ('41', 'opencart', 'report', 'customer_reward');
INSERT INTO `oc_extension` VALUES ('42', 'opencart', 'currency', 'ecb');
INSERT INTO `oc_extension` VALUES ('43', 'opencart', 'report', 'marketing');
INSERT INTO `oc_extension` VALUES ('44', 'opencart', 'report', 'customer_subscription');

-- ----------------------------
-- Table structure for oc_extension_install
-- ----------------------------
DROP TABLE IF EXISTS `oc_extension_install`;
CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_install_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_extension_install
-- ----------------------------
INSERT INTO `oc_extension_install` VALUES ('1', '0', '0', 'OpenCart Default Extensions', 'opencart', '1.0', 'OpenCart Ltd', 'http://www.opencart.com', '1', '2020-08-29 15:35:39');

-- ----------------------------
-- Table structure for oc_extension_path
-- ----------------------------
DROP TABLE IF EXISTS `oc_extension_path`;
CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`extension_path_id`),
  KEY `path` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=364 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_extension_path
-- ----------------------------
INSERT INTO `oc_extension_path` VALUES ('1', '1', 'opencart');
INSERT INTO `oc_extension_path` VALUES ('2', '1', 'opencart/admin');
INSERT INTO `oc_extension_path` VALUES ('3', '1', 'opencart/admin/controller');
INSERT INTO `oc_extension_path` VALUES ('4', '1', 'opencart/admin/controller/analytics');
INSERT INTO `oc_extension_path` VALUES ('5', '1', 'opencart/admin/controller/analytics/index.html');
INSERT INTO `oc_extension_path` VALUES ('6', '1', 'opencart/admin/controller/captcha');
INSERT INTO `oc_extension_path` VALUES ('7', '1', 'opencart/admin/controller/captcha/basic.php');
INSERT INTO `oc_extension_path` VALUES ('8', '1', 'opencart/admin/controller/currency');
INSERT INTO `oc_extension_path` VALUES ('9', '1', 'opencart/admin/controller/currency/ecb.php');
INSERT INTO `oc_extension_path` VALUES ('10', '1', 'opencart/admin/controller/currency/fixer.php');
INSERT INTO `oc_extension_path` VALUES ('11', '1', 'opencart/admin/controller/dashboard');
INSERT INTO `oc_extension_path` VALUES ('12', '1', 'opencart/admin/controller/dashboard/activity.php');
INSERT INTO `oc_extension_path` VALUES ('13', '1', 'opencart/admin/controller/dashboard/chart.php');
INSERT INTO `oc_extension_path` VALUES ('14', '1', 'opencart/admin/controller/dashboard/customer.php');
INSERT INTO `oc_extension_path` VALUES ('15', '1', 'opencart/admin/controller/dashboard/map.php');
INSERT INTO `oc_extension_path` VALUES ('16', '1', 'opencart/admin/controller/dashboard/online.php');
INSERT INTO `oc_extension_path` VALUES ('17', '1', 'opencart/admin/controller/dashboard/order.php');
INSERT INTO `oc_extension_path` VALUES ('18', '1', 'opencart/admin/controller/dashboard/recent.php');
INSERT INTO `oc_extension_path` VALUES ('19', '1', 'opencart/admin/controller/dashboard/sale.php');
INSERT INTO `oc_extension_path` VALUES ('20', '1', 'opencart/admin/controller/feed');
INSERT INTO `oc_extension_path` VALUES ('21', '1', 'opencart/admin/controller/feed/index.html');
INSERT INTO `oc_extension_path` VALUES ('22', '1', 'opencart/admin/controller/fraud');
INSERT INTO `oc_extension_path` VALUES ('23', '1', 'opencart/admin/controller/fraud/ip.php');
INSERT INTO `oc_extension_path` VALUES ('24', '1', 'opencart/admin/controller/module');
INSERT INTO `oc_extension_path` VALUES ('25', '1', 'opencart/admin/controller/module/account.php');
INSERT INTO `oc_extension_path` VALUES ('26', '1', 'opencart/admin/controller/module/banner.php');
INSERT INTO `oc_extension_path` VALUES ('27', '1', 'opencart/admin/controller/module/bestseller.php');
INSERT INTO `oc_extension_path` VALUES ('28', '1', 'opencart/admin/controller/module/category.php');
INSERT INTO `oc_extension_path` VALUES ('29', '1', 'opencart/admin/controller/module/featured.php');
INSERT INTO `oc_extension_path` VALUES ('30', '1', 'opencart/admin/controller/module/filter.php');
INSERT INTO `oc_extension_path` VALUES ('31', '1', 'opencart/admin/controller/module/html.php');
INSERT INTO `oc_extension_path` VALUES ('32', '1', 'opencart/admin/controller/module/information.php');
INSERT INTO `oc_extension_path` VALUES ('33', '1', 'opencart/admin/controller/module/latest.php');
INSERT INTO `oc_extension_path` VALUES ('34', '1', 'opencart/admin/controller/module/special.php');
INSERT INTO `oc_extension_path` VALUES ('35', '1', 'opencart/admin/controller/module/store.php');
INSERT INTO `oc_extension_path` VALUES ('36', '1', 'opencart/admin/controller/payment');
INSERT INTO `oc_extension_path` VALUES ('37', '1', 'opencart/admin/controller/payment/bank_transfer.php');
INSERT INTO `oc_extension_path` VALUES ('38', '1', 'opencart/admin/controller/payment/cheque.php');
INSERT INTO `oc_extension_path` VALUES ('39', '1', 'opencart/admin/controller/payment/cod.php');
INSERT INTO `oc_extension_path` VALUES ('40', '1', 'opencart/admin/controller/payment/free_checkout.php');
INSERT INTO `oc_extension_path` VALUES ('41', '1', 'opencart/admin/controller/report');
INSERT INTO `oc_extension_path` VALUES ('42', '1', 'opencart/admin/controller/report/customer_activity.php');
INSERT INTO `oc_extension_path` VALUES ('43', '1', 'opencart/admin/controller/report/customer_order.php');
INSERT INTO `oc_extension_path` VALUES ('44', '1', 'opencart/admin/controller/report/customer_reward.php');
INSERT INTO `oc_extension_path` VALUES ('45', '1', 'opencart/admin/controller/report/customer_search.php');
INSERT INTO `oc_extension_path` VALUES ('46', '1', 'opencart/admin/controller/report/customer_transaction.php');
INSERT INTO `oc_extension_path` VALUES ('47', '1', 'opencart/admin/controller/report/customer_subscription.php');
INSERT INTO `oc_extension_path` VALUES ('48', '1', 'opencart/admin/controller/report/marketing.php');
INSERT INTO `oc_extension_path` VALUES ('49', '1', 'opencart/admin/controller/report/product_purchased.php');
INSERT INTO `oc_extension_path` VALUES ('50', '1', 'opencart/admin/controller/report/product_viewed.php');
INSERT INTO `oc_extension_path` VALUES ('51', '1', 'opencart/admin/controller/report/sale_coupon.php');
INSERT INTO `oc_extension_path` VALUES ('52', '1', 'opencart/admin/controller/report/sale_order.php');
INSERT INTO `oc_extension_path` VALUES ('53', '1', 'opencart/admin/controller/report/sale_return.php');
INSERT INTO `oc_extension_path` VALUES ('54', '1', 'opencart/admin/controller/report/sale_shipping.php');
INSERT INTO `oc_extension_path` VALUES ('55', '1', 'opencart/admin/controller/report/sale_tax.php');
INSERT INTO `oc_extension_path` VALUES ('56', '1', 'opencart/admin/controller/shipping');
INSERT INTO `oc_extension_path` VALUES ('57', '1', 'opencart/admin/controller/shipping/flat.php');
INSERT INTO `oc_extension_path` VALUES ('58', '1', 'opencart/admin/controller/shipping/free.php');
INSERT INTO `oc_extension_path` VALUES ('59', '1', 'opencart/admin/controller/shipping/item.php');
INSERT INTO `oc_extension_path` VALUES ('60', '1', 'opencart/admin/controller/shipping/pickup.php');
INSERT INTO `oc_extension_path` VALUES ('61', '1', 'opencart/admin/controller/shipping/weight.php');
INSERT INTO `oc_extension_path` VALUES ('62', '1', 'opencart/admin/controller/theme');
INSERT INTO `oc_extension_path` VALUES ('63', '1', 'opencart/admin/controller/theme/basic.php');
INSERT INTO `oc_extension_path` VALUES ('64', '1', 'opencart/admin/controller/total');
INSERT INTO `oc_extension_path` VALUES ('65', '1', 'opencart/admin/controller/total/coupon.php');
INSERT INTO `oc_extension_path` VALUES ('66', '1', 'opencart/admin/controller/total/credit.php');
INSERT INTO `oc_extension_path` VALUES ('67', '1', 'opencart/admin/controller/total/handling.php');
INSERT INTO `oc_extension_path` VALUES ('68', '1', 'opencart/admin/controller/total/low_order_fee.php');
INSERT INTO `oc_extension_path` VALUES ('69', '1', 'opencart/admin/controller/total/reward.php');
INSERT INTO `oc_extension_path` VALUES ('70', '1', 'opencart/admin/controller/total/shipping.php');
INSERT INTO `oc_extension_path` VALUES ('71', '1', 'opencart/admin/controller/total/sub_total.php');
INSERT INTO `oc_extension_path` VALUES ('72', '1', 'opencart/admin/controller/total/tax.php');
INSERT INTO `oc_extension_path` VALUES ('73', '1', 'opencart/admin/controller/total/total.php');
INSERT INTO `oc_extension_path` VALUES ('74', '1', 'opencart/admin/controller/total/voucher.php');
INSERT INTO `oc_extension_path` VALUES ('75', '1', 'opencart/admin/language');
INSERT INTO `oc_extension_path` VALUES ('76', '1', 'opencart/admin/language/en-gb');
INSERT INTO `oc_extension_path` VALUES ('77', '1', 'opencart/admin/language/en-gb/captcha');
INSERT INTO `oc_extension_path` VALUES ('78', '1', 'opencart/admin/language/en-gb/captcha/basic.php');
INSERT INTO `oc_extension_path` VALUES ('79', '1', 'opencart/admin/language/en-gb/currency');
INSERT INTO `oc_extension_path` VALUES ('80', '1', 'opencart/admin/language/en-gb/currency/ecb.php');
INSERT INTO `oc_extension_path` VALUES ('81', '1', 'opencart/admin/language/en-gb/currency/fixer.php');
INSERT INTO `oc_extension_path` VALUES ('82', '1', 'opencart/admin/language/en-gb/dashboard');
INSERT INTO `oc_extension_path` VALUES ('83', '1', 'opencart/admin/language/en-gb/dashboard/activity.php');
INSERT INTO `oc_extension_path` VALUES ('84', '1', 'opencart/admin/language/en-gb/dashboard/chart.php');
INSERT INTO `oc_extension_path` VALUES ('85', '1', 'opencart/admin/language/en-gb/dashboard/customer.php');
INSERT INTO `oc_extension_path` VALUES ('86', '1', 'opencart/admin/language/en-gb/dashboard/map.php');
INSERT INTO `oc_extension_path` VALUES ('87', '1', 'opencart/admin/language/en-gb/dashboard/online.php');
INSERT INTO `oc_extension_path` VALUES ('88', '1', 'opencart/admin/language/en-gb/dashboard/order.php');
INSERT INTO `oc_extension_path` VALUES ('89', '1', 'opencart/admin/language/en-gb/dashboard/recent.php');
INSERT INTO `oc_extension_path` VALUES ('90', '1', 'opencart/admin/language/en-gb/dashboard/sale.php');
INSERT INTO `oc_extension_path` VALUES ('91', '1', 'opencart/admin/language/en-gb/fraud');
INSERT INTO `oc_extension_path` VALUES ('92', '1', 'opencart/admin/language/en-gb/fraud/ip.php');
INSERT INTO `oc_extension_path` VALUES ('93', '1', 'opencart/admin/language/en-gb/module');
INSERT INTO `oc_extension_path` VALUES ('94', '1', 'opencart/admin/language/en-gb/module/account.php');
INSERT INTO `oc_extension_path` VALUES ('95', '1', 'opencart/admin/language/en-gb/module/banner.php');
INSERT INTO `oc_extension_path` VALUES ('96', '1', 'opencart/admin/language/en-gb/module/bestseller.php');
INSERT INTO `oc_extension_path` VALUES ('97', '1', 'opencart/admin/language/en-gb/module/category.php');
INSERT INTO `oc_extension_path` VALUES ('98', '1', 'opencart/admin/language/en-gb/module/featured.php');
INSERT INTO `oc_extension_path` VALUES ('99', '1', 'opencart/admin/language/en-gb/module/filter.php');
INSERT INTO `oc_extension_path` VALUES ('100', '1', 'opencart/admin/language/en-gb/module/html.php');
INSERT INTO `oc_extension_path` VALUES ('101', '1', 'opencart/admin/language/en-gb/module/information.php');
INSERT INTO `oc_extension_path` VALUES ('102', '1', 'opencart/admin/language/en-gb/module/latest.php');
INSERT INTO `oc_extension_path` VALUES ('103', '1', 'opencart/admin/language/en-gb/module/special.php');
INSERT INTO `oc_extension_path` VALUES ('104', '1', 'opencart/admin/language/en-gb/module/store.php');
INSERT INTO `oc_extension_path` VALUES ('105', '1', 'opencart/admin/language/en-gb/payment');
INSERT INTO `oc_extension_path` VALUES ('106', '1', 'opencart/admin/language/en-gb/payment/bank_transfer.php');
INSERT INTO `oc_extension_path` VALUES ('107', '1', 'opencart/admin/language/en-gb/payment/cheque.php');
INSERT INTO `oc_extension_path` VALUES ('108', '1', 'opencart/admin/language/en-gb/payment/cod.php');
INSERT INTO `oc_extension_path` VALUES ('109', '1', 'opencart/admin/language/en-gb/payment/free_checkout.php');
INSERT INTO `oc_extension_path` VALUES ('110', '1', 'opencart/admin/language/en-gb/report');
INSERT INTO `oc_extension_path` VALUES ('111', '1', 'opencart/admin/language/en-gb/report/customer_activity.php');
INSERT INTO `oc_extension_path` VALUES ('112', '1', 'opencart/admin/language/en-gb/report/customer_order.php');
INSERT INTO `oc_extension_path` VALUES ('113', '1', 'opencart/admin/language/en-gb/report/customer_reward.php');
INSERT INTO `oc_extension_path` VALUES ('114', '1', 'opencart/admin/language/en-gb/report/customer_search.php');
INSERT INTO `oc_extension_path` VALUES ('115', '1', 'opencart/admin/language/en-gb/report/customer_transaction.php');
INSERT INTO `oc_extension_path` VALUES ('116', '1', 'opencart/admin/language/en-gb/report/customer_subscription.php');
INSERT INTO `oc_extension_path` VALUES ('117', '1', 'opencart/admin/language/en-gb/report/marketing.php');
INSERT INTO `oc_extension_path` VALUES ('118', '1', 'opencart/admin/language/en-gb/report/product_purchased.php');
INSERT INTO `oc_extension_path` VALUES ('119', '1', 'opencart/admin/language/en-gb/report/product_viewed.php');
INSERT INTO `oc_extension_path` VALUES ('120', '1', 'opencart/admin/language/en-gb/report/sale_coupon.php');
INSERT INTO `oc_extension_path` VALUES ('121', '1', 'opencart/admin/language/en-gb/report/sale_order.php');
INSERT INTO `oc_extension_path` VALUES ('122', '1', 'opencart/admin/language/en-gb/report/sale_return.php');
INSERT INTO `oc_extension_path` VALUES ('123', '1', 'opencart/admin/language/en-gb/report/sale_shipping.php');
INSERT INTO `oc_extension_path` VALUES ('124', '1', 'opencart/admin/language/en-gb/report/sale_tax.php');
INSERT INTO `oc_extension_path` VALUES ('125', '1', 'opencart/admin/language/en-gb/shipping');
INSERT INTO `oc_extension_path` VALUES ('126', '1', 'opencart/admin/language/en-gb/shipping/flat.php');
INSERT INTO `oc_extension_path` VALUES ('127', '1', 'opencart/admin/language/en-gb/shipping/free.php');
INSERT INTO `oc_extension_path` VALUES ('128', '1', 'opencart/admin/language/en-gb/shipping/item.php');
INSERT INTO `oc_extension_path` VALUES ('129', '1', 'opencart/admin/language/en-gb/shipping/pickup.php');
INSERT INTO `oc_extension_path` VALUES ('130', '1', 'opencart/admin/language/en-gb/shipping/weight.php');
INSERT INTO `oc_extension_path` VALUES ('131', '1', 'opencart/admin/language/en-gb/theme');
INSERT INTO `oc_extension_path` VALUES ('132', '1', 'opencart/admin/language/en-gb/theme/basic.php');
INSERT INTO `oc_extension_path` VALUES ('133', '1', 'opencart/admin/language/en-gb/total');
INSERT INTO `oc_extension_path` VALUES ('134', '1', 'opencart/admin/language/en-gb/total/coupon.php');
INSERT INTO `oc_extension_path` VALUES ('135', '1', 'opencart/admin/language/en-gb/total/credit.php');
INSERT INTO `oc_extension_path` VALUES ('136', '1', 'opencart/admin/language/en-gb/total/handling.php');
INSERT INTO `oc_extension_path` VALUES ('137', '1', 'opencart/admin/language/en-gb/total/low_order_fee.php');
INSERT INTO `oc_extension_path` VALUES ('138', '1', 'opencart/admin/language/en-gb/total/reward.php');
INSERT INTO `oc_extension_path` VALUES ('139', '1', 'opencart/admin/language/en-gb/total/shipping.php');
INSERT INTO `oc_extension_path` VALUES ('140', '1', 'opencart/admin/language/en-gb/total/sub_total.php');
INSERT INTO `oc_extension_path` VALUES ('141', '1', 'opencart/admin/language/en-gb/total/tax.php');
INSERT INTO `oc_extension_path` VALUES ('142', '1', 'opencart/admin/language/en-gb/total/total.php');
INSERT INTO `oc_extension_path` VALUES ('143', '1', 'opencart/admin/language/en-gb/total/voucher.php');
INSERT INTO `oc_extension_path` VALUES ('144', '1', 'opencart/admin/model');
INSERT INTO `oc_extension_path` VALUES ('145', '1', 'opencart/admin/model/dashboard');
INSERT INTO `oc_extension_path` VALUES ('146', '1', 'opencart/admin/model/dashboard/map.php');
INSERT INTO `oc_extension_path` VALUES ('147', '1', 'opencart/admin/model/fraud');
INSERT INTO `oc_extension_path` VALUES ('148', '1', 'opencart/admin/model/fraud/ip.php');
INSERT INTO `oc_extension_path` VALUES ('149', '1', 'opencart/admin/model/payment');
INSERT INTO `oc_extension_path` VALUES ('150', '1', 'opencart/admin/model/report');
INSERT INTO `oc_extension_path` VALUES ('151', '1', 'opencart/admin/model/report/activity.php');
INSERT INTO `oc_extension_path` VALUES ('152', '1', 'opencart/admin/model/report/coupon.php');
INSERT INTO `oc_extension_path` VALUES ('153', '1', 'opencart/admin/model/report/customer.php');
INSERT INTO `oc_extension_path` VALUES ('154', '1', 'opencart/admin/model/report/customer_transaction.php');
INSERT INTO `oc_extension_path` VALUES ('155', '1', 'opencart/admin/model/report/marketing.php');
INSERT INTO `oc_extension_path` VALUES ('156', '1', 'opencart/admin/model/report/product.php');
INSERT INTO `oc_extension_path` VALUES ('157', '1', 'opencart/admin/model/report/returns.php');
INSERT INTO `oc_extension_path` VALUES ('158', '1', 'opencart/admin/model/report/sale.php');
INSERT INTO `oc_extension_path` VALUES ('159', '1', 'opencart/admin/view');
INSERT INTO `oc_extension_path` VALUES ('160', '1', 'opencart/admin/view/template');
INSERT INTO `oc_extension_path` VALUES ('161', '1', 'opencart/admin/view/template/captcha');
INSERT INTO `oc_extension_path` VALUES ('162', '1', 'opencart/admin/view/template/captcha/basic.twig');
INSERT INTO `oc_extension_path` VALUES ('163', '1', 'opencart/admin/view/template/currency');
INSERT INTO `oc_extension_path` VALUES ('164', '1', 'opencart/admin/view/template/currency/ecb.twig');
INSERT INTO `oc_extension_path` VALUES ('165', '1', 'opencart/admin/view/template/currency/fixer.twig');
INSERT INTO `oc_extension_path` VALUES ('166', '1', 'opencart/admin/view/template/dashboard');
INSERT INTO `oc_extension_path` VALUES ('167', '1', 'opencart/admin/view/template/dashboard/activity_form.twig');
INSERT INTO `oc_extension_path` VALUES ('168', '1', 'opencart/admin/view/template/dashboard/activity_info.twig');
INSERT INTO `oc_extension_path` VALUES ('169', '1', 'opencart/admin/view/template/dashboard/chart_form.twig');
INSERT INTO `oc_extension_path` VALUES ('170', '1', 'opencart/admin/view/template/dashboard/chart_info.twig');
INSERT INTO `oc_extension_path` VALUES ('171', '1', 'opencart/admin/view/template/dashboard/customer_form.twig');
INSERT INTO `oc_extension_path` VALUES ('172', '1', 'opencart/admin/view/template/dashboard/customer_info.twig');
INSERT INTO `oc_extension_path` VALUES ('173', '1', 'opencart/admin/view/template/dashboard/map_form.twig');
INSERT INTO `oc_extension_path` VALUES ('174', '1', 'opencart/admin/view/template/dashboard/map_info.twig');
INSERT INTO `oc_extension_path` VALUES ('175', '1', 'opencart/admin/view/template/dashboard/online_form.twig');
INSERT INTO `oc_extension_path` VALUES ('176', '1', 'opencart/admin/view/template/dashboard/online_info.twig');
INSERT INTO `oc_extension_path` VALUES ('177', '1', 'opencart/admin/view/template/dashboard/order_form.twig');
INSERT INTO `oc_extension_path` VALUES ('178', '1', 'opencart/admin/view/template/dashboard/order_info.twig');
INSERT INTO `oc_extension_path` VALUES ('179', '1', 'opencart/admin/view/template/dashboard/recent_form.twig');
INSERT INTO `oc_extension_path` VALUES ('180', '1', 'opencart/admin/view/template/dashboard/recent_info.twig');
INSERT INTO `oc_extension_path` VALUES ('181', '1', 'opencart/admin/view/template/dashboard/sale_form.twig');
INSERT INTO `oc_extension_path` VALUES ('182', '1', 'opencart/admin/view/template/dashboard/sale_info.twig');
INSERT INTO `oc_extension_path` VALUES ('183', '1', 'opencart/admin/view/template/fraud');
INSERT INTO `oc_extension_path` VALUES ('184', '1', 'opencart/admin/view/template/fraud/ip.twig');
INSERT INTO `oc_extension_path` VALUES ('185', '1', 'opencart/admin/view/template/fraud/ip_ip.twig');
INSERT INTO `oc_extension_path` VALUES ('186', '1', 'opencart/admin/view/template/module');
INSERT INTO `oc_extension_path` VALUES ('187', '1', 'opencart/admin/view/template/module/account.twig');
INSERT INTO `oc_extension_path` VALUES ('188', '1', 'opencart/admin/view/template/module/banner.twig');
INSERT INTO `oc_extension_path` VALUES ('189', '1', 'opencart/admin/view/template/module/bestseller.twig');
INSERT INTO `oc_extension_path` VALUES ('190', '1', 'opencart/admin/view/template/module/category.twig');
INSERT INTO `oc_extension_path` VALUES ('191', '1', 'opencart/admin/view/template/module/featured.twig');
INSERT INTO `oc_extension_path` VALUES ('192', '1', 'opencart/admin/view/template/module/filter.twig');
INSERT INTO `oc_extension_path` VALUES ('193', '1', 'opencart/admin/view/template/module/html.twig');
INSERT INTO `oc_extension_path` VALUES ('194', '1', 'opencart/admin/view/template/module/information.twig');
INSERT INTO `oc_extension_path` VALUES ('195', '1', 'opencart/admin/view/template/module/latest.twig');
INSERT INTO `oc_extension_path` VALUES ('196', '1', 'opencart/admin/view/template/module/special.twig');
INSERT INTO `oc_extension_path` VALUES ('197', '1', 'opencart/admin/view/template/module/store.twig');
INSERT INTO `oc_extension_path` VALUES ('198', '1', 'opencart/admin/view/template/payment');
INSERT INTO `oc_extension_path` VALUES ('199', '1', 'opencart/admin/view/template/payment/bank_transfer.twig');
INSERT INTO `oc_extension_path` VALUES ('200', '1', 'opencart/admin/view/template/payment/cheque.twig');
INSERT INTO `oc_extension_path` VALUES ('201', '1', 'opencart/admin/view/template/payment/cod.twig');
INSERT INTO `oc_extension_path` VALUES ('202', '1', 'opencart/admin/view/template/payment/free_checkout.twig');
INSERT INTO `oc_extension_path` VALUES ('203', '1', 'opencart/admin/view/template/report');
INSERT INTO `oc_extension_path` VALUES ('204', '1', 'opencart/admin/view/template/report/customer_activity.twig');
INSERT INTO `oc_extension_path` VALUES ('205', '1', 'opencart/admin/view/template/report/customer_activity_form.twig');
INSERT INTO `oc_extension_path` VALUES ('206', '1', 'opencart/admin/view/template/report/customer_order.twig');
INSERT INTO `oc_extension_path` VALUES ('207', '1', 'opencart/admin/view/template/report/customer_order_form.twig');
INSERT INTO `oc_extension_path` VALUES ('208', '1', 'opencart/admin/view/template/report/customer_reward.twig');
INSERT INTO `oc_extension_path` VALUES ('209', '1', 'opencart/admin/view/template/report/customer_reward_form.twig');
INSERT INTO `oc_extension_path` VALUES ('210', '1', 'opencart/admin/view/template/report/customer_search.twig');
INSERT INTO `oc_extension_path` VALUES ('211', '1', 'opencart/admin/view/template/report/customer_search_form.twig');
INSERT INTO `oc_extension_path` VALUES ('212', '1', 'opencart/admin/view/template/report/customer_transaction.twig');
INSERT INTO `oc_extension_path` VALUES ('213', '1', 'opencart/admin/view/template/report/customer_transaction_form.twig');
INSERT INTO `oc_extension_path` VALUES ('214', '1', 'opencart/admin/view/template/report/customer_subscription.twig');
INSERT INTO `oc_extension_path` VALUES ('215', '1', 'opencart/admin/view/template/report/customer_subscription_form.twig');
INSERT INTO `oc_extension_path` VALUES ('216', '1', 'opencart/admin/view/template/report/marketing.twig');
INSERT INTO `oc_extension_path` VALUES ('217', '1', 'opencart/admin/view/template/report/marketing_form.twig');
INSERT INTO `oc_extension_path` VALUES ('218', '1', 'opencart/admin/view/template/report/product_purchased.twig');
INSERT INTO `oc_extension_path` VALUES ('219', '1', 'opencart/admin/view/template/report/product_purchased_form.twig');
INSERT INTO `oc_extension_path` VALUES ('220', '1', 'opencart/admin/view/template/report/product_viewed.twig');
INSERT INTO `oc_extension_path` VALUES ('221', '1', 'opencart/admin/view/template/report/product_viewed_form.twig');
INSERT INTO `oc_extension_path` VALUES ('222', '1', 'opencart/admin/view/template/report/sale_coupon.twig');
INSERT INTO `oc_extension_path` VALUES ('223', '1', 'opencart/admin/view/template/report/sale_coupon_form.twig');
INSERT INTO `oc_extension_path` VALUES ('224', '1', 'opencart/admin/view/template/report/sale_order.twig');
INSERT INTO `oc_extension_path` VALUES ('225', '1', 'opencart/admin/view/template/report/sale_order_form.twig');
INSERT INTO `oc_extension_path` VALUES ('226', '1', 'opencart/admin/view/template/report/sale_return.twig');
INSERT INTO `oc_extension_path` VALUES ('227', '1', 'opencart/admin/view/template/report/sale_return_form.twig');
INSERT INTO `oc_extension_path` VALUES ('228', '1', 'opencart/admin/view/template/report/sale_shipping.twig');
INSERT INTO `oc_extension_path` VALUES ('229', '1', 'opencart/admin/view/template/report/sale_shipping_form.twig');
INSERT INTO `oc_extension_path` VALUES ('230', '1', 'opencart/admin/view/template/report/sale_tax.twig');
INSERT INTO `oc_extension_path` VALUES ('231', '1', 'opencart/admin/view/template/report/sale_tax_form.twig');
INSERT INTO `oc_extension_path` VALUES ('232', '1', 'opencart/admin/view/template/shipping');
INSERT INTO `oc_extension_path` VALUES ('233', '1', 'opencart/admin/view/template/shipping/flat.twig');
INSERT INTO `oc_extension_path` VALUES ('234', '1', 'opencart/admin/view/template/shipping/free.twig');
INSERT INTO `oc_extension_path` VALUES ('235', '1', 'opencart/admin/view/template/shipping/item.twig');
INSERT INTO `oc_extension_path` VALUES ('236', '1', 'opencart/admin/view/template/shipping/pickup.twig');
INSERT INTO `oc_extension_path` VALUES ('237', '1', 'opencart/admin/view/template/shipping/weight.twig');
INSERT INTO `oc_extension_path` VALUES ('238', '1', 'opencart/admin/view/template/theme');
INSERT INTO `oc_extension_path` VALUES ('239', '1', 'opencart/admin/view/template/theme/basic.twig');
INSERT INTO `oc_extension_path` VALUES ('240', '1', 'opencart/admin/view/template/total');
INSERT INTO `oc_extension_path` VALUES ('241', '1', 'opencart/admin/view/template/total/coupon.twig');
INSERT INTO `oc_extension_path` VALUES ('242', '1', 'opencart/admin/view/template/total/credit.twig');
INSERT INTO `oc_extension_path` VALUES ('243', '1', 'opencart/admin/view/template/total/handling.twig');
INSERT INTO `oc_extension_path` VALUES ('244', '1', 'opencart/admin/view/template/total/low_order_fee.twig');
INSERT INTO `oc_extension_path` VALUES ('245', '1', 'opencart/admin/view/template/total/reward.twig');
INSERT INTO `oc_extension_path` VALUES ('246', '1', 'opencart/admin/view/template/total/shipping.twig');
INSERT INTO `oc_extension_path` VALUES ('247', '1', 'opencart/admin/view/template/total/sub_total.twig');
INSERT INTO `oc_extension_path` VALUES ('248', '1', 'opencart/admin/view/template/total/tax.twig');
INSERT INTO `oc_extension_path` VALUES ('249', '1', 'opencart/admin/view/template/total/total.twig');
INSERT INTO `oc_extension_path` VALUES ('250', '1', 'opencart/admin/view/template/total/voucher.twig');
INSERT INTO `oc_extension_path` VALUES ('251', '1', 'opencart/catalog');
INSERT INTO `oc_extension_path` VALUES ('252', '1', 'opencart/catalog/controller');
INSERT INTO `oc_extension_path` VALUES ('253', '1', 'opencart/catalog/controller/captcha');
INSERT INTO `oc_extension_path` VALUES ('254', '1', 'opencart/catalog/controller/captcha/basic.php');
INSERT INTO `oc_extension_path` VALUES ('255', '1', 'opencart/catalog/controller/module');
INSERT INTO `oc_extension_path` VALUES ('256', '1', 'opencart/catalog/controller/module/account.php');
INSERT INTO `oc_extension_path` VALUES ('257', '1', 'opencart/catalog/controller/module/banner.php');
INSERT INTO `oc_extension_path` VALUES ('258', '1', 'opencart/catalog/controller/module/bestseller.php');
INSERT INTO `oc_extension_path` VALUES ('259', '1', 'opencart/catalog/controller/module/category.php');
INSERT INTO `oc_extension_path` VALUES ('260', '1', 'opencart/catalog/controller/module/featured.php');
INSERT INTO `oc_extension_path` VALUES ('261', '1', 'opencart/catalog/controller/module/filter.php');
INSERT INTO `oc_extension_path` VALUES ('262', '1', 'opencart/catalog/controller/module/html.php');
INSERT INTO `oc_extension_path` VALUES ('263', '1', 'opencart/catalog/controller/module/information.php');
INSERT INTO `oc_extension_path` VALUES ('264', '1', 'opencart/catalog/controller/module/latest.php');
INSERT INTO `oc_extension_path` VALUES ('265', '1', 'opencart/catalog/controller/module/special.php');
INSERT INTO `oc_extension_path` VALUES ('266', '1', 'opencart/catalog/controller/module/store.php');
INSERT INTO `oc_extension_path` VALUES ('267', '1', 'opencart/catalog/controller/payment');
INSERT INTO `oc_extension_path` VALUES ('268', '1', 'opencart/catalog/controller/payment/bank_transfer.php');
INSERT INTO `oc_extension_path` VALUES ('269', '1', 'opencart/catalog/controller/payment/cheque.php');
INSERT INTO `oc_extension_path` VALUES ('270', '1', 'opencart/catalog/controller/payment/cod.php');
INSERT INTO `oc_extension_path` VALUES ('271', '1', 'opencart/catalog/controller/payment/free_checkout.php');
INSERT INTO `oc_extension_path` VALUES ('272', '1', 'opencart/catalog/controller/total');
INSERT INTO `oc_extension_path` VALUES ('273', '1', 'opencart/catalog/controller/total/coupon.php');
INSERT INTO `oc_extension_path` VALUES ('274', '1', 'opencart/catalog/controller/total/reward.php');
INSERT INTO `oc_extension_path` VALUES ('275', '1', 'opencart/catalog/controller/total/shipping.php');
INSERT INTO `oc_extension_path` VALUES ('276', '1', 'opencart/catalog/controller/total/voucher.php');
INSERT INTO `oc_extension_path` VALUES ('277', '1', 'opencart/catalog/language');
INSERT INTO `oc_extension_path` VALUES ('278', '1', 'opencart/catalog/language/en-gb');
INSERT INTO `oc_extension_path` VALUES ('279', '1', 'opencart/catalog/language/en-gb/captcha');
INSERT INTO `oc_extension_path` VALUES ('280', '1', 'opencart/catalog/language/en-gb/captcha/basic.php');
INSERT INTO `oc_extension_path` VALUES ('281', '1', 'opencart/catalog/language/en-gb/module');
INSERT INTO `oc_extension_path` VALUES ('282', '1', 'opencart/catalog/language/en-gb/module/account.php');
INSERT INTO `oc_extension_path` VALUES ('283', '1', 'opencart/catalog/language/en-gb/module/bestseller.php');
INSERT INTO `oc_extension_path` VALUES ('284', '1', 'opencart/catalog/language/en-gb/module/category.php');
INSERT INTO `oc_extension_path` VALUES ('285', '1', 'opencart/catalog/language/en-gb/module/featured.php');
INSERT INTO `oc_extension_path` VALUES ('286', '1', 'opencart/catalog/language/en-gb/module/filter.php');
INSERT INTO `oc_extension_path` VALUES ('287', '1', 'opencart/catalog/language/en-gb/module/information.php');
INSERT INTO `oc_extension_path` VALUES ('288', '1', 'opencart/catalog/language/en-gb/module/latest.php');
INSERT INTO `oc_extension_path` VALUES ('289', '1', 'opencart/catalog/language/en-gb/module/special.php');
INSERT INTO `oc_extension_path` VALUES ('290', '1', 'opencart/catalog/language/en-gb/module/store.php');
INSERT INTO `oc_extension_path` VALUES ('291', '1', 'opencart/catalog/language/en-gb/payment');
INSERT INTO `oc_extension_path` VALUES ('292', '1', 'opencart/catalog/language/en-gb/payment/bank_transfer.php');
INSERT INTO `oc_extension_path` VALUES ('293', '1', 'opencart/catalog/language/en-gb/payment/cheque.php');
INSERT INTO `oc_extension_path` VALUES ('294', '1', 'opencart/catalog/language/en-gb/payment/cod.php');
INSERT INTO `oc_extension_path` VALUES ('295', '1', 'opencart/catalog/language/en-gb/payment/free_checkout.php');
INSERT INTO `oc_extension_path` VALUES ('296', '1', 'opencart/catalog/language/en-gb/shipping');
INSERT INTO `oc_extension_path` VALUES ('297', '1', 'opencart/catalog/language/en-gb/shipping/flat.php');
INSERT INTO `oc_extension_path` VALUES ('298', '1', 'opencart/catalog/language/en-gb/shipping/free.php');
INSERT INTO `oc_extension_path` VALUES ('299', '1', 'opencart/catalog/language/en-gb/shipping/item.php');
INSERT INTO `oc_extension_path` VALUES ('300', '1', 'opencart/catalog/language/en-gb/shipping/pickup.php');
INSERT INTO `oc_extension_path` VALUES ('301', '1', 'opencart/catalog/language/en-gb/shipping/weight.php');
INSERT INTO `oc_extension_path` VALUES ('302', '1', 'opencart/catalog/language/en-gb/total');
INSERT INTO `oc_extension_path` VALUES ('303', '1', 'opencart/catalog/language/en-gb/total/coupon.php');
INSERT INTO `oc_extension_path` VALUES ('304', '1', 'opencart/catalog/language/en-gb/total/credit.php');
INSERT INTO `oc_extension_path` VALUES ('305', '1', 'opencart/catalog/language/en-gb/total/handling.php');
INSERT INTO `oc_extension_path` VALUES ('306', '1', 'opencart/catalog/language/en-gb/total/low_order_fee.php');
INSERT INTO `oc_extension_path` VALUES ('307', '1', 'opencart/catalog/language/en-gb/total/reward.php');
INSERT INTO `oc_extension_path` VALUES ('308', '1', 'opencart/catalog/language/en-gb/total/shipping.php');
INSERT INTO `oc_extension_path` VALUES ('309', '1', 'opencart/catalog/language/en-gb/total/sub_total.php');
INSERT INTO `oc_extension_path` VALUES ('310', '1', 'opencart/catalog/language/en-gb/total/total.php');
INSERT INTO `oc_extension_path` VALUES ('311', '1', 'opencart/catalog/language/en-gb/total/voucher.php');
INSERT INTO `oc_extension_path` VALUES ('312', '1', 'opencart/catalog/model');
INSERT INTO `oc_extension_path` VALUES ('313', '1', 'opencart/catalog/model/fraud');
INSERT INTO `oc_extension_path` VALUES ('314', '1', 'opencart/catalog/model/fraud/ip.php');
INSERT INTO `oc_extension_path` VALUES ('315', '1', 'opencart/catalog/model/payment');
INSERT INTO `oc_extension_path` VALUES ('316', '1', 'opencart/catalog/model/payment/bank_transfer.php');
INSERT INTO `oc_extension_path` VALUES ('317', '1', 'opencart/catalog/model/payment/cheque.php');
INSERT INTO `oc_extension_path` VALUES ('318', '1', 'opencart/catalog/model/payment/cod.php');
INSERT INTO `oc_extension_path` VALUES ('319', '1', 'opencart/catalog/model/payment/free_checkout.php');
INSERT INTO `oc_extension_path` VALUES ('320', '1', 'opencart/catalog/model/shipping');
INSERT INTO `oc_extension_path` VALUES ('321', '1', 'opencart/catalog/model/shipping/flat.php');
INSERT INTO `oc_extension_path` VALUES ('322', '1', 'opencart/catalog/model/shipping/free.php');
INSERT INTO `oc_extension_path` VALUES ('323', '1', 'opencart/catalog/model/shipping/item.php');
INSERT INTO `oc_extension_path` VALUES ('324', '1', 'opencart/catalog/model/shipping/pickup.php');
INSERT INTO `oc_extension_path` VALUES ('325', '1', 'opencart/catalog/model/shipping/weight.php');
INSERT INTO `oc_extension_path` VALUES ('326', '1', 'opencart/catalog/model/total');
INSERT INTO `oc_extension_path` VALUES ('327', '1', 'opencart/catalog/model/total/coupon.php');
INSERT INTO `oc_extension_path` VALUES ('328', '1', 'opencart/catalog/model/total/credit.php');
INSERT INTO `oc_extension_path` VALUES ('329', '1', 'opencart/catalog/model/total/handling.php');
INSERT INTO `oc_extension_path` VALUES ('330', '1', 'opencart/catalog/model/total/low_order_fee.php');
INSERT INTO `oc_extension_path` VALUES ('331', '1', 'opencart/catalog/model/total/reward.php');
INSERT INTO `oc_extension_path` VALUES ('332', '1', 'opencart/catalog/model/total/shipping.php');
INSERT INTO `oc_extension_path` VALUES ('333', '1', 'opencart/catalog/model/total/sub_total.php');
INSERT INTO `oc_extension_path` VALUES ('334', '1', 'opencart/catalog/model/total/tax.php');
INSERT INTO `oc_extension_path` VALUES ('335', '1', 'opencart/catalog/model/total/total.php');
INSERT INTO `oc_extension_path` VALUES ('336', '1', 'opencart/catalog/model/total/voucher.php');
INSERT INTO `oc_extension_path` VALUES ('337', '1', 'opencart/catalog/view');
INSERT INTO `oc_extension_path` VALUES ('338', '1', 'opencart/catalog/view/template');
INSERT INTO `oc_extension_path` VALUES ('339', '1', 'opencart/catalog/view/template/captcha');
INSERT INTO `oc_extension_path` VALUES ('340', '1', 'opencart/catalog/view/template/captcha/basic.twig');
INSERT INTO `oc_extension_path` VALUES ('341', '1', 'opencart/catalog/view/template/module');
INSERT INTO `oc_extension_path` VALUES ('342', '1', 'opencart/catalog/view/template/module/account.twig');
INSERT INTO `oc_extension_path` VALUES ('343', '1', 'opencart/catalog/view/template/module/banner.twig');
INSERT INTO `oc_extension_path` VALUES ('344', '1', 'opencart/catalog/view/template/module/bestseller.twig');
INSERT INTO `oc_extension_path` VALUES ('345', '1', 'opencart/catalog/view/template/module/category.twig');
INSERT INTO `oc_extension_path` VALUES ('346', '1', 'opencart/catalog/view/template/module/featured.twig');
INSERT INTO `oc_extension_path` VALUES ('347', '1', 'opencart/catalog/view/template/module/filter.twig');
INSERT INTO `oc_extension_path` VALUES ('348', '1', 'opencart/catalog/view/template/module/html.twig');
INSERT INTO `oc_extension_path` VALUES ('349', '1', 'opencart/catalog/view/template/module/information.twig');
INSERT INTO `oc_extension_path` VALUES ('350', '1', 'opencart/catalog/view/template/module/latest.twig');
INSERT INTO `oc_extension_path` VALUES ('351', '1', 'opencart/catalog/view/template/module/special.twig');
INSERT INTO `oc_extension_path` VALUES ('352', '1', 'opencart/catalog/view/template/module/store.twig');
INSERT INTO `oc_extension_path` VALUES ('353', '1', 'opencart/catalog/view/template/payment');
INSERT INTO `oc_extension_path` VALUES ('354', '1', 'opencart/catalog/view/template/payment/bank_transfer.twig');
INSERT INTO `oc_extension_path` VALUES ('355', '1', 'opencart/catalog/view/template/payment/cheque.twig');
INSERT INTO `oc_extension_path` VALUES ('356', '1', 'opencart/catalog/view/template/payment/cod.twig');
INSERT INTO `oc_extension_path` VALUES ('357', '1', 'opencart/catalog/view/template/payment/free_checkout.twig');
INSERT INTO `oc_extension_path` VALUES ('358', '1', 'opencart/catalog/view/template/total');
INSERT INTO `oc_extension_path` VALUES ('359', '1', 'opencart/catalog/view/template/total/coupon.twig');
INSERT INTO `oc_extension_path` VALUES ('360', '1', 'opencart/catalog/view/template/total/reward.twig');
INSERT INTO `oc_extension_path` VALUES ('361', '1', 'opencart/catalog/view/template/total/shipping.twig');
INSERT INTO `oc_extension_path` VALUES ('362', '1', 'opencart/catalog/view/template/total/voucher.twig');
INSERT INTO `oc_extension_path` VALUES ('363', '1', 'opencart/install.json');

-- ----------------------------
-- Table structure for oc_filter
-- ----------------------------
DROP TABLE IF EXISTS `oc_filter`;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_filter
-- ----------------------------

-- ----------------------------
-- Table structure for oc_filter_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_filter_description`;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_filter_description
-- ----------------------------

-- ----------------------------
-- Table structure for oc_filter_group
-- ----------------------------
DROP TABLE IF EXISTS `oc_filter_group`;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_filter_group
-- ----------------------------

-- ----------------------------
-- Table structure for oc_filter_group_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_filter_group_description`;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_filter_group_description
-- ----------------------------

-- ----------------------------
-- Table structure for oc_gdpr
-- ----------------------------
DROP TABLE IF EXISTS `oc_gdpr`;
CREATE TABLE `oc_gdpr` (
  `gdpr_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `code` varchar(40) NOT NULL,
  `email` varchar(96) NOT NULL,
  `action` varchar(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`gdpr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_gdpr
-- ----------------------------

-- ----------------------------
-- Table structure for oc_geo_zone
-- ----------------------------
DROP TABLE IF EXISTS `oc_geo_zone`;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_geo_zone
-- ----------------------------
INSERT INTO `oc_geo_zone` VALUES ('3', 'UK VAT Zone', 'UK VAT', '2009-01-06 23:26:25', '2010-02-26 22:33:24');
INSERT INTO `oc_geo_zone` VALUES ('4', 'UK Shipping', 'UK Shipping Zones', '2009-06-23 01:14:53', '2010-12-15 15:18:13');

-- ----------------------------
-- Table structure for oc_information
-- ----------------------------
DROP TABLE IF EXISTS `oc_information`;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT 0,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`information_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_information
-- ----------------------------
INSERT INTO `oc_information` VALUES ('1', '1', '3', '1');
INSERT INTO `oc_information` VALUES ('2', '1', '1', '1');
INSERT INTO `oc_information` VALUES ('3', '1', '4', '1');
INSERT INTO `oc_information` VALUES ('4', '1', '2', '1');

-- ----------------------------
-- Table structure for oc_information_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_information_description`;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_information_description
-- ----------------------------
INSERT INTO `oc_information_description` VALUES ('1', '1', 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', '');
INSERT INTO `oc_information_description` VALUES ('2', '1', 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', '');
INSERT INTO `oc_information_description` VALUES ('3', '1', 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', '');
INSERT INTO `oc_information_description` VALUES ('4', '1', 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', '');

-- ----------------------------
-- Table structure for oc_information_to_layout
-- ----------------------------
DROP TABLE IF EXISTS `oc_information_to_layout`;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_information_to_layout
-- ----------------------------

-- ----------------------------
-- Table structure for oc_information_to_store
-- ----------------------------
DROP TABLE IF EXISTS `oc_information_to_store`;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_information_to_store
-- ----------------------------
INSERT INTO `oc_information_to_store` VALUES ('1', '0');
INSERT INTO `oc_information_to_store` VALUES ('2', '0');
INSERT INTO `oc_information_to_store` VALUES ('3', '0');
INSERT INTO `oc_information_to_store` VALUES ('4', '0');

-- ----------------------------
-- Table structure for oc_language
-- ----------------------------
DROP TABLE IF EXISTS `oc_language`;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_language
-- ----------------------------
INSERT INTO `oc_language` VALUES ('1', 'English', 'en-gb', 'en-gb,en', '', '1', '1');

-- ----------------------------
-- Table structure for oc_layout
-- ----------------------------
DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_layout
-- ----------------------------
INSERT INTO `oc_layout` VALUES ('1', 'Home');
INSERT INTO `oc_layout` VALUES ('2', 'Product');
INSERT INTO `oc_layout` VALUES ('3', 'Category');
INSERT INTO `oc_layout` VALUES ('4', 'Default');
INSERT INTO `oc_layout` VALUES ('5', 'Manufacturer');
INSERT INTO `oc_layout` VALUES ('6', 'Account');
INSERT INTO `oc_layout` VALUES ('7', 'Checkout');
INSERT INTO `oc_layout` VALUES ('8', 'Contact');
INSERT INTO `oc_layout` VALUES ('9', 'Sitemap');
INSERT INTO `oc_layout` VALUES ('10', 'Affiliate');
INSERT INTO `oc_layout` VALUES ('11', 'Information');
INSERT INTO `oc_layout` VALUES ('12', 'Compare');
INSERT INTO `oc_layout` VALUES ('13', 'Search');

-- ----------------------------
-- Table structure for oc_layout_module
-- ----------------------------
DROP TABLE IF EXISTS `oc_layout_module`;
CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_layout_module
-- ----------------------------
INSERT INTO `oc_layout_module` VALUES ('1', '10', 'opencart.account', 'column_right', '1');
INSERT INTO `oc_layout_module` VALUES ('2', '6', 'opencart.account', 'column_right', '1');
INSERT INTO `oc_layout_module` VALUES ('3', '1', 'opencart.banner.3', 'content_top', '1');
INSERT INTO `oc_layout_module` VALUES ('4', '1', 'opencart.featured.2', 'content_top', '2');
INSERT INTO `oc_layout_module` VALUES ('5', '1', 'opencart.banner.4', 'content_bottom', '1');
INSERT INTO `oc_layout_module` VALUES ('6', '3', 'opencart.category', 'column_left', '1');
INSERT INTO `oc_layout_module` VALUES ('7', '3', 'opencart.banner.1', 'column_left', '2');

-- ----------------------------
-- Table structure for oc_layout_route
-- ----------------------------
DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_layout_route
-- ----------------------------
INSERT INTO `oc_layout_route` VALUES ('1', '6', '0', 'account/%');
INSERT INTO `oc_layout_route` VALUES ('2', '6', '0', 'information/gdpr');
INSERT INTO `oc_layout_route` VALUES ('3', '10', '0', 'affiliate/%');
INSERT INTO `oc_layout_route` VALUES ('4', '3', '0', 'product/category');
INSERT INTO `oc_layout_route` VALUES ('5', '1', '0', 'common/home');
INSERT INTO `oc_layout_route` VALUES ('6', '2', '0', 'product/product');
INSERT INTO `oc_layout_route` VALUES ('7', '11', '0', 'information/information');
INSERT INTO `oc_layout_route` VALUES ('8', '7', '0', 'checkout/%');
INSERT INTO `oc_layout_route` VALUES ('9', '8', '0', 'information/contact');
INSERT INTO `oc_layout_route` VALUES ('10', '9', '0', 'information/sitemap');
INSERT INTO `oc_layout_route` VALUES ('11', '4', '0', '');
INSERT INTO `oc_layout_route` VALUES ('12', '5', '0', 'product/manufacturer');
INSERT INTO `oc_layout_route` VALUES ('13', '12', '0', 'product/compare');
INSERT INTO `oc_layout_route` VALUES ('14', '13', '0', 'product/search');

-- ----------------------------
-- Table structure for oc_length_class
-- ----------------------------
DROP TABLE IF EXISTS `oc_length_class`;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_length_class
-- ----------------------------
INSERT INTO `oc_length_class` VALUES ('1', '1.00000000');
INSERT INTO `oc_length_class` VALUES ('2', '10.00000000');
INSERT INTO `oc_length_class` VALUES ('3', '0.39370000');

-- ----------------------------
-- Table structure for oc_length_class_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_length_class_description`;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_length_class_description
-- ----------------------------
INSERT INTO `oc_length_class_description` VALUES ('1', '1', 'Centimeter', 'cm');
INSERT INTO `oc_length_class_description` VALUES ('2', '1', 'Millimeter', 'mm');
INSERT INTO `oc_length_class_description` VALUES ('3', '1', 'Inch', 'in');

-- ----------------------------
-- Table structure for oc_location
-- ----------------------------
DROP TABLE IF EXISTS `oc_location`;
CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) NOT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_location
-- ----------------------------

-- ----------------------------
-- Table structure for oc_manufacturer
-- ----------------------------
DROP TABLE IF EXISTS `oc_manufacturer`;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_manufacturer
-- ----------------------------
INSERT INTO `oc_manufacturer` VALUES ('5', 'HTC', 'catalog/demo/htc_logo.jpg', '0');
INSERT INTO `oc_manufacturer` VALUES ('6', 'Palm', 'catalog/demo/palm_logo.jpg', '0');
INSERT INTO `oc_manufacturer` VALUES ('7', 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', '0');
INSERT INTO `oc_manufacturer` VALUES ('8', 'Apple', 'catalog/demo/apple_logo.jpg', '0');
INSERT INTO `oc_manufacturer` VALUES ('9', 'Canon', 'catalog/demo/canon_logo.jpg', '0');
INSERT INTO `oc_manufacturer` VALUES ('10', 'Sony', 'catalog/demo/sony_logo.jpg', '0');

-- ----------------------------
-- Table structure for oc_manufacturer_to_layout
-- ----------------------------
DROP TABLE IF EXISTS `oc_manufacturer_to_layout`;
CREATE TABLE `oc_manufacturer_to_layout` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_manufacturer_to_layout
-- ----------------------------

-- ----------------------------
-- Table structure for oc_manufacturer_to_store
-- ----------------------------
DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_manufacturer_to_store
-- ----------------------------
INSERT INTO `oc_manufacturer_to_store` VALUES ('5', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('6', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('7', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('8', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('9', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('10', '0');

-- ----------------------------
-- Table structure for oc_marketing
-- ----------------------------
DROP TABLE IF EXISTS `oc_marketing`;
CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_marketing
-- ----------------------------

-- ----------------------------
-- Table structure for oc_marketing_report
-- ----------------------------
DROP TABLE IF EXISTS `oc_marketing_report`;
CREATE TABLE `oc_marketing_report` (
  `marketing_report_id` int(11) NOT NULL AUTO_INCREMENT,
  `marketing_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `country` varchar(2) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_marketing_report
-- ----------------------------

-- ----------------------------
-- Table structure for oc_module
-- ----------------------------
DROP TABLE IF EXISTS `oc_module`;
CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_module
-- ----------------------------
INSERT INTO `oc_module` VALUES ('1', 'Category Banner', 'opencart.banner', '{\"name\":\"Category Banner\",\"banner_id\":\"6\",\"effect\":\"fade\",\"items\":\"1\",\"controls\":\"0\",\"indicators\":\"0\",\"interval\":\"5000\",\"width\":\"200\",\"height\":\"180\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES ('2', 'Featured', 'opencart.featured', '{\"name\":\"Featured\",\"product\":[\"30\",\"28\",\"42\",\"47\",\"41\",\"31\",\"45\",\"29\"],\"axis\":\"horizontal\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\",\"module_id\":\"2\"}');
INSERT INTO `oc_module` VALUES ('3', 'Homepage Slideshow', 'opencart.banner', '{\"name\":\"Homepage Slideshow\",\"banner_id\":\"7\",\"effect\":\"slide\",\"items\":\"1\",\"controls\":\"1\",\"indicators\":\"1\",\"interval\":\"2500\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\",\"module_id\":\"3\"}');
INSERT INTO `oc_module` VALUES ('4', 'Homepage Manufacturers', 'opencart.banner', '{\"name\":\"Homepage Manufacturers\",\"banner_id\":\"8\",\"effect\":\"slide\",\"items\":\"5\",\"controls\":\"1\",\"indicators\":\"1\",\"interval\":\"5000\",\"width\":\"130\",\"height\":\"100\",\"status\":\"0\",\"module_id\":\"4\"}');

-- ----------------------------
-- Table structure for oc_notification
-- ----------------------------
DROP TABLE IF EXISTS `oc_notification`;
CREATE TABLE `oc_notification` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `status` tinyint(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_notification
-- ----------------------------

-- ----------------------------
-- Table structure for oc_option
-- ----------------------------
DROP TABLE IF EXISTS `oc_option`;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_option
-- ----------------------------
INSERT INTO `oc_option` VALUES ('1', 'radio', '1');
INSERT INTO `oc_option` VALUES ('2', 'checkbox', '2');
INSERT INTO `oc_option` VALUES ('4', 'text', '3');
INSERT INTO `oc_option` VALUES ('5', 'select', '4');
INSERT INTO `oc_option` VALUES ('6', 'textarea', '5');
INSERT INTO `oc_option` VALUES ('7', 'file', '6');
INSERT INTO `oc_option` VALUES ('8', 'date', '7');
INSERT INTO `oc_option` VALUES ('9', 'time', '8');
INSERT INTO `oc_option` VALUES ('10', 'datetime', '9');
INSERT INTO `oc_option` VALUES ('11', 'select', '10');
INSERT INTO `oc_option` VALUES ('12', 'date', '11');

-- ----------------------------
-- Table structure for oc_option_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_option_description`;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_option_description
-- ----------------------------
INSERT INTO `oc_option_description` VALUES ('1', '1', 'Radio');
INSERT INTO `oc_option_description` VALUES ('2', '1', 'Checkbox');
INSERT INTO `oc_option_description` VALUES ('4', '1', 'Text');
INSERT INTO `oc_option_description` VALUES ('5', '1', 'Select');
INSERT INTO `oc_option_description` VALUES ('6', '1', 'Textarea');
INSERT INTO `oc_option_description` VALUES ('7', '1', 'File');
INSERT INTO `oc_option_description` VALUES ('8', '1', 'Date');
INSERT INTO `oc_option_description` VALUES ('9', '1', 'Time');
INSERT INTO `oc_option_description` VALUES ('10', '1', 'Date &amp; Time');
INSERT INTO `oc_option_description` VALUES ('11', '1', 'Size');
INSERT INTO `oc_option_description` VALUES ('12', '1', 'Delivery Date');

-- ----------------------------
-- Table structure for oc_option_value
-- ----------------------------
DROP TABLE IF EXISTS `oc_option_value`;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_option_value
-- ----------------------------
INSERT INTO `oc_option_value` VALUES ('23', '2', '', '1');
INSERT INTO `oc_option_value` VALUES ('24', '2', '', '2');
INSERT INTO `oc_option_value` VALUES ('31', '1', '', '2');
INSERT INTO `oc_option_value` VALUES ('32', '1', '', '1');
INSERT INTO `oc_option_value` VALUES ('39', '5', '', '1');
INSERT INTO `oc_option_value` VALUES ('40', '5', '', '2');
INSERT INTO `oc_option_value` VALUES ('41', '5', '', '3');
INSERT INTO `oc_option_value` VALUES ('42', '5', '', '4');
INSERT INTO `oc_option_value` VALUES ('43', '1', '', '3');
INSERT INTO `oc_option_value` VALUES ('44', '2', '', '3');
INSERT INTO `oc_option_value` VALUES ('45', '2', '', '4');
INSERT INTO `oc_option_value` VALUES ('46', '11', '', '1');
INSERT INTO `oc_option_value` VALUES ('47', '11', '', '2');
INSERT INTO `oc_option_value` VALUES ('48', '11', '', '3');

-- ----------------------------
-- Table structure for oc_option_value_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_option_value_description`;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_option_value_description
-- ----------------------------
INSERT INTO `oc_option_value_description` VALUES ('23', '1', '2', 'Checkbox 1');
INSERT INTO `oc_option_value_description` VALUES ('24', '1', '2', 'Checkbox 2');
INSERT INTO `oc_option_value_description` VALUES ('31', '1', '1', 'Medium');
INSERT INTO `oc_option_value_description` VALUES ('32', '1', '1', 'Small');
INSERT INTO `oc_option_value_description` VALUES ('39', '1', '5', 'Red');
INSERT INTO `oc_option_value_description` VALUES ('40', '1', '5', 'Blue');
INSERT INTO `oc_option_value_description` VALUES ('41', '1', '5', 'Green');
INSERT INTO `oc_option_value_description` VALUES ('42', '1', '5', 'Yellow');
INSERT INTO `oc_option_value_description` VALUES ('43', '1', '1', 'Large');
INSERT INTO `oc_option_value_description` VALUES ('44', '1', '2', 'Checkbox 3');
INSERT INTO `oc_option_value_description` VALUES ('45', '1', '2', 'Checkbox 4');
INSERT INTO `oc_option_value_description` VALUES ('46', '1', '11', 'Small');
INSERT INTO `oc_option_value_description` VALUES ('47', '1', '11', 'Medium');
INSERT INTO `oc_option_value_description` VALUES ('48', '1', '11', 'Large');

-- ----------------------------
-- Table structure for oc_order
-- ----------------------------
DROP TABLE IF EXISTS `oc_order`;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `subscription_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT 0,
  `invoice_prefix` varchar(26) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(60) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `order_status_id` int(11) NOT NULL DEFAULT 0,
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `language_code` varchar(5) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT 1.00000000,
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_order
-- ----------------------------

-- ----------------------------
-- Table structure for oc_order_history
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_history`;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_order_history
-- ----------------------------

-- ----------------------------
-- Table structure for oc_order_option
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_option`;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_order_option
-- ----------------------------

-- ----------------------------
-- Table structure for oc_order_product
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_product`;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `tax` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_order_product
-- ----------------------------

-- ----------------------------
-- Table structure for oc_order_status
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_status`;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_order_status
-- ----------------------------
INSERT INTO `oc_order_status` VALUES ('1', '1', 'Pending');
INSERT INTO `oc_order_status` VALUES ('2', '1', 'Processing');
INSERT INTO `oc_order_status` VALUES ('3', '1', 'Shipped');
INSERT INTO `oc_order_status` VALUES ('5', '1', 'Complete');
INSERT INTO `oc_order_status` VALUES ('7', '1', 'Canceled');
INSERT INTO `oc_order_status` VALUES ('8', '1', 'Denied');
INSERT INTO `oc_order_status` VALUES ('9', '1', 'Canceled Reversal');
INSERT INTO `oc_order_status` VALUES ('10', '1', 'Failed');
INSERT INTO `oc_order_status` VALUES ('11', '1', 'Refunded');
INSERT INTO `oc_order_status` VALUES ('12', '1', 'Reversed');
INSERT INTO `oc_order_status` VALUES ('13', '1', 'Chargeback');
INSERT INTO `oc_order_status` VALUES ('14', '1', 'Expired');
INSERT INTO `oc_order_status` VALUES ('15', '1', 'Processed');
INSERT INTO `oc_order_status` VALUES ('16', '1', 'Voided');

-- ----------------------------
-- Table structure for oc_order_total
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_total`;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_order_total
-- ----------------------------

-- ----------------------------
-- Table structure for oc_order_voucher
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_voucher`;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_order_voucher
-- ----------------------------

-- ----------------------------
-- Table structure for oc_product
-- ----------------------------
DROP TABLE IF EXISTS `oc_product`;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `master_id` int(11) NOT NULL DEFAULT 0,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `variant` text NOT NULL DEFAULT '',
  `override` text NOT NULL DEFAULT '',
  `quantity` int(4) NOT NULL DEFAULT 0,
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `points` int(8) NOT NULL DEFAULT 0,
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL,
  `weight` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `weight_class_id` int(11) NOT NULL DEFAULT 0,
  `length` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `width` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `height` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `length_class_id` int(11) NOT NULL DEFAULT 0,
  `subtract` tinyint(1) NOT NULL DEFAULT 1,
  `minimum` int(11) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_product
-- ----------------------------
INSERT INTO `oc_product` VALUES ('28', '0', 'Product 1', '', '', '', '', '', '', '', '', '', '939', '7', 'catalog/demo/htc_touch_hd_1.jpg', '5', '1', '100.0000', '200', '9', '2009-02-03', '146.40000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '2009-02-03 16:06:50', '2011-09-30 01:05:39');
INSERT INTO `oc_product` VALUES ('29', '0', 'Product 2', '', '', '', '', '', '', '', '', '', '999', '6', 'catalog/demo/palm_treo_pro_1.jpg', '6', '1', '279.9900', '0', '9', '2009-02-03', '133.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '3', '1', '1', '0', '1', '2009-02-03 16:42:17', '2011-09-30 01:06:08');
INSERT INTO `oc_product` VALUES ('30', '0', 'Product 3', '', '', '', '', '', '', '', '', '', '7', '6', 'catalog/demo/canon_eos_5d_1.jpg', '9', '1', '100.0000', '0', '9', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '2009-02-03 16:59:00', '2011-09-30 01:05:23');
INSERT INTO `oc_product` VALUES ('31', '0', 'Product 4', '', '', '', '', '', '', '', '', '', '1000', '6', 'catalog/demo/nikon_d300_1.jpg', '0', '1', '80.0000', '0', '9', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '3', '1', '1', '0', '1', '2009-02-03 17:00:10', '2011-09-30 01:06:00');
INSERT INTO `oc_product` VALUES ('32', '0', 'Product 5', '', '', '', '', '', '', '', '', '', '999', '6', 'catalog/demo/ipod_touch_1.jpg', '8', '1', '100.0000', '0', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '2009-02-03 17:07:26', '2011-09-30 01:07:22');
INSERT INTO `oc_product` VALUES ('33', '0', 'Product 6', '', '', '', '', '', '', '', '', '', '1000', '6', 'catalog/demo/samsung_syncmaster_941bw.jpg', '0', '1', '200.0000', '0', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '2009-02-03 17:08:31', '2011-09-30 01:06:29');
INSERT INTO `oc_product` VALUES ('34', '0', 'Product 7', '', '', '', '', '', '', '', '', '', '1000', '6', 'catalog/demo/ipod_shuffle_1.jpg', '8', '1', '100.0000', '0', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '2009-02-03 18:07:54', '2011-09-30 01:07:17');
INSERT INTO `oc_product` VALUES ('35', '0', 'Product 8', '', '', '', '', '', '', '', '', '', '1000', '5', '', '0', '0', '100.0000', '0', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '2009-02-03 18:08:31', '2011-09-30 01:06:17');
INSERT INTO `oc_product` VALUES ('36', '0', 'Product 9', '', '', '', '', '', '', '', '', '', '994', '6', 'catalog/demo/ipod_nano_1.jpg', '8', '0', '100.0000', '100', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '2009-02-03 18:09:19', '2011-09-30 01:07:12');
INSERT INTO `oc_product` VALUES ('40', '0', 'product 11', '', '', '', '', '', '', '', '', '', '970', '5', 'catalog/demo/iphone_1.jpg', '8', '1', '101.0000', '0', '9', '2009-02-03', '10.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '2009-02-03 21:07:12', '2011-09-30 01:06:53');
INSERT INTO `oc_product` VALUES ('41', '0', 'Product 14', '', '', '', '', '', '', '', '', '', '977', '5', 'catalog/demo/imac_1.jpg', '8', '1', '100.0000', '0', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '2009-02-03 21:07:26', '2011-09-30 01:06:44');
INSERT INTO `oc_product` VALUES ('42', '0', 'Product 15', '', '', '', '', '', '', '', '', '', '990', '5', 'catalog/demo/apple_cinema_30.jpg', '8', '1', '100.0000', '400', '9', '2009-02-04', '12.50000000', '1', '1.00000000', '2.00000000', '3.00000000', '1', '1', '2', '0', '1', '2009-02-03 21:07:37', '2011-09-30 00:46:19');
INSERT INTO `oc_product` VALUES ('43', '0', 'Product 16', '', '', '', '', '', '', '', '', '', '929', '5', 'catalog/demo/macbook_1.jpg', '8', '0', '500.0000', '0', '9', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '2009-02-03 21:07:49', '2011-09-30 01:05:46');
INSERT INTO `oc_product` VALUES ('44', '0', 'Product 17', '', '', '', '', '', '', '', '', '', '1000', '5', 'catalog/demo/macbook_air_1.jpg', '8', '1', '1000.0000', '0', '9', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '2009-02-03 21:08:00', '2011-09-30 01:05:53');
INSERT INTO `oc_product` VALUES ('45', '0', 'Product 18', '', '', '', '', '', '', '', '', '', '998', '5', 'catalog/demo/macbook_pro_1.jpg', '8', '1', '2000.0000', '0', '100', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '2009-02-03 21:08:17', '2011-09-15 22:22:01');
INSERT INTO `oc_product` VALUES ('46', '0', 'Product 19', '', '', '', '', '', '', '', '', '', '1000', '5', 'catalog/demo/sony_vaio_1.jpg', '10', '1', '1000.0000', '0', '9', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '2009-02-03 21:08:29', '2011-09-30 01:06:39');
INSERT INTO `oc_product` VALUES ('47', '0', 'Product 21', '', '', '', '', '', '', '', '', '', '1000', '5', 'catalog/demo/hp_1.jpg', '7', '1', '100.0000', '400', '9', '2009-02-03', '1.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '0', '1', '0', '1', '2009-02-03 21:08:40', '2011-09-30 01:05:28');
INSERT INTO `oc_product` VALUES ('48', '0', 'product 20', 'test 1', '', '', '', '', '', 'test 2', '', '', '995', '5', 'catalog/demo/ipod_classic_1.jpg', '8', '1', '100.0000', '0', '9', '2009-02-08', '1.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '2009-02-08 17:21:51', '2011-09-30 01:07:06');
INSERT INTO `oc_product` VALUES ('49', '0', 'SAM1', '', '', '', '', '', '', '', '', '', '0', '8', 'catalog/demo/samsung_tab_1.jpg', '0', '1', '199.9900', '0', '9', '2011-04-25', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '2011-04-26 08:57:34', '2011-09-30 01:06:23');

-- ----------------------------
-- Table structure for oc_product_attribute
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_attribute`;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_product_attribute
-- ----------------------------
INSERT INTO `oc_product_attribute` VALUES ('42', '3', '1', '100mhz');
INSERT INTO `oc_product_attribute` VALUES ('43', '2', '1', '1');
INSERT INTO `oc_product_attribute` VALUES ('43', '4', '1', '8gb');
INSERT INTO `oc_product_attribute` VALUES ('47', '2', '1', '4');
INSERT INTO `oc_product_attribute` VALUES ('47', '4', '1', '16GB');

-- ----------------------------
-- Table structure for oc_product_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_description`;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_product_description
-- ----------------------------
INSERT INTO `oc_product_description` VALUES ('28', '1', 'HTC Touch HD', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '	 HTC Touch HD', '', '');
INSERT INTO `oc_product_description` VALUES ('29', '1', 'Palm Treo Pro', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Palm Treo Pro', '', '');
INSERT INTO `oc_product_description` VALUES ('30', '1', 'Canon EOS 5D', '&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', '', 'sdf', '', '');
INSERT INTO `oc_product_description` VALUES ('31', '1', 'Nikon D300', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Nikon D300', '', '');
INSERT INTO `oc_product_description` VALUES ('32', '1', 'iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', '	 iPod Touch', '', '');
INSERT INTO `oc_product_description` VALUES ('33', '1', 'Samsung SyncMaster 941BW', '&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n', '', 'Samsung SyncMaster 941BW', '', '');
INSERT INTO `oc_product_description` VALUES ('34', '1', 'iPod Shuffle', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Shuffle', '', '');
INSERT INTO `oc_product_description` VALUES ('35', '1', 'Product 8', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', '', 'Product 8', '', '');
INSERT INTO `oc_product_description` VALUES ('36', '1', 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Nano', '', '');
INSERT INTO `oc_product_description` VALUES ('40', '1', 'iPhone', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', '', 'iPhone', '', '');
INSERT INTO `oc_product_description` VALUES ('41', '1', 'iMac', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there&acute;s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife &acute;08, and it&acute;s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', 'iMac', '', '');
INSERT INTO `oc_product_description` VALUES ('42', '1', 'Apple Cinema 30&quot;', '&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Apple Cinema 30', '', '');
INSERT INTO `oc_product_description` VALUES ('43', '1', 'MacBook', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'MacBook', '', '');
INSERT INTO `oc_product_description` VALUES ('44', '1', 'MacBook Air', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', 'MacBook Air', '', '');
INSERT INTO `oc_product_description` VALUES ('45', '1', 'MacBook Pro', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'MacBook Pro', '', '');
INSERT INTO `oc_product_description` VALUES ('46', '1', 'Sony VAIO', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', 'Sony VAIO', '', '');
INSERT INTO `oc_product_description` VALUES ('47', '1', 'HP LP3065', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', 'HP LP3065', '', '');
INSERT INTO `oc_product_description` VALUES ('48', '1', 'iPod Classic', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'iPod Classic', '', '');
INSERT INTO `oc_product_description` VALUES ('49', '1', 'Samsung Galaxy Tab 10.1', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\r\n', '', 'Samsung Galaxy Tab 10.1', '', '');

-- ----------------------------
-- Table structure for oc_product_discount
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_discount`;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=441 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_product_discount
-- ----------------------------
INSERT INTO `oc_product_discount` VALUES ('438', '42', '1', '10', '1', '88.0000', '0000-00-00', '0000-00-00');
INSERT INTO `oc_product_discount` VALUES ('439', '42', '1', '20', '1', '77.0000', '0000-00-00', '0000-00-00');
INSERT INTO `oc_product_discount` VALUES ('440', '42', '1', '30', '1', '66.0000', '0000-00-00', '0000-00-00');

-- ----------------------------
-- Table structure for oc_product_filter
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_filter`;
CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_product_filter
-- ----------------------------

-- ----------------------------
-- Table structure for oc_product_image
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_image`;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2352 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_product_image
-- ----------------------------
INSERT INTO `oc_product_image` VALUES ('1968', '43', 'catalog/demo/macbook_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1969', '43', 'catalog/demo/macbook_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1970', '43', 'catalog/demo/macbook_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1971', '43', 'catalog/demo/macbook_5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1972', '44', 'catalog/demo/macbook_air_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1973', '44', 'catalog/demo/macbook_air_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1974', '44', 'catalog/demo/macbook_air_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1975', '45', 'catalog/demo/macbook_pro_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1976', '45', 'catalog/demo/macbook_pro_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1977', '45', 'catalog/demo/macbook_pro_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1978', '40', 'catalog/demo/iphone_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1979', '40', 'catalog/demo/iphone_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1980', '40', 'catalog/demo/iphone_5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1981', '40', 'catalog/demo/iphone_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1982', '40', 'catalog/demo/iphone_6.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1983', '31', 'catalog/demo/nikon_d300_5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1984', '31', 'catalog/demo/nikon_d300_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1985', '31', 'catalog/demo/nikon_d300_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1986', '31', 'catalog/demo/nikon_d300_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1987', '29', 'catalog/demo/palm_treo_pro_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1988', '29', 'catalog/demo/palm_treo_pro_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1989', '48', 'catalog/demo/ipod_classic_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1990', '48', 'catalog/demo/ipod_classic_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1991', '48', 'catalog/demo/ipod_classic_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1992', '46', 'catalog/demo/sony_vaio_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1993', '46', 'catalog/demo/sony_vaio_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1994', '46', 'catalog/demo/sony_vaio_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1995', '46', 'catalog/demo/sony_vaio_5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1998', '36', 'catalog/demo/ipod_nano_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('1999', '36', 'catalog/demo/ipod_nano_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2000', '36', 'catalog/demo/ipod_nano_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2001', '36', 'catalog/demo/ipod_nano_5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2002', '34', 'catalog/demo/ipod_shuffle_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2003', '34', 'catalog/demo/ipod_shuffle_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2004', '34', 'catalog/demo/ipod_shuffle_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2005', '34', 'catalog/demo/ipod_shuffle_5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2006', '32', 'catalog/demo/ipod_touch_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2007', '32', 'catalog/demo/ipod_touch_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2008', '32', 'catalog/demo/ipod_touch_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2009', '32', 'catalog/demo/ipod_touch_5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2010', '32', 'catalog/demo/ipod_touch_6.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2011', '32', 'catalog/demo/ipod_touch_7.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2034', '28', 'catalog/demo/htc_touch_hd_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2035', '28', 'catalog/demo/htc_touch_hd_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2313', '42', 'catalog/demo/canon_eos_5d_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2314', '42', 'catalog/demo/canon_eos_5d_1.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2315', '42', 'catalog/demo/compaq_presario.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2316', '42', 'catalog/demo/hp_1.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2317', '42', 'catalog/demo/canon_logo.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2320', '47', 'catalog/demo/hp_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2321', '47', 'catalog/demo/hp_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2322', '49', 'catalog/demo/samsung_tab_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2323', '49', 'catalog/demo/samsung_tab_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2324', '49', 'catalog/demo/samsung_tab_4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2325', '49', 'catalog/demo/samsung_tab_5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2326', '49', 'catalog/demo/samsung_tab_6.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2327', '49', 'catalog/demo/samsung_tab_7.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2344', '30', 'catalog/demo/canon_eos_5d_3.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2345', '30', 'catalog/demo/canon_eos_5d_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2350', '41', 'catalog/demo/imac_2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2351', '41', 'catalog/demo/imac_3.jpg', '0');

-- ----------------------------
-- Table structure for oc_product_option
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_option`;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_product_option
-- ----------------------------
INSERT INTO `oc_product_option` VALUES ('208', '42', '4', 'test', '1');
INSERT INTO `oc_product_option` VALUES ('209', '42', '6', '', '1');
INSERT INTO `oc_product_option` VALUES ('217', '42', '5', '', '1');
INSERT INTO `oc_product_option` VALUES ('218', '42', '1', '', '1');
INSERT INTO `oc_product_option` VALUES ('219', '42', '8', '2011-02-20', '1');
INSERT INTO `oc_product_option` VALUES ('220', '42', '10', '2011-02-20 22:25', '1');
INSERT INTO `oc_product_option` VALUES ('221', '42', '9', '22:25', '1');
INSERT INTO `oc_product_option` VALUES ('222', '42', '7', '', '1');
INSERT INTO `oc_product_option` VALUES ('223', '42', '2', '', '1');
INSERT INTO `oc_product_option` VALUES ('224', '35', '11', '', '1');
INSERT INTO `oc_product_option` VALUES ('225', '47', '12', '2011-04-22', '1');
INSERT INTO `oc_product_option` VALUES ('226', '30', '5', '', '1');

-- ----------------------------
-- Table structure for oc_product_option_value
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_option_value`;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_product_option_value
-- ----------------------------
INSERT INTO `oc_product_option_value` VALUES ('1', '217', '42', '5', '41', '100', '0', '1.0000', '+', '0', '+', '1.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('2', '217', '42', '5', '42', '200', '1', '2.0000', '+', '0', '+', '2.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('3', '217', '42', '5', '40', '300', '0', '3.0000', '+', '0', '+', '3.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('4', '217', '42', '5', '39', '92', '1', '4.0000', '+', '0', '+', '4.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('5', '218', '42', '1', '32', '96', '1', '10.0000', '+', '1', '+', '10.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('6', '218', '42', '1', '31', '146', '1', '20.0000', '+', '2', '-', '20.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('7', '218', '42', '1', '43', '300', '1', '30.0000', '+', '3', '+', '30.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('8', '223', '42', '2', '23', '48', '1', '10.0000', '+', '0', '+', '10.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('9', '223', '42', '2', '24', '194', '1', '20.0000', '+', '0', '+', '20.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('10', '223', '42', '2', '44', '2696', '1', '30.0000', '+', '0', '+', '30.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('11', '223', '42', '2', '45', '3998', '1', '40.0000', '+', '0', '+', '40.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('12', '224', '35', '11', '46', '0', '1', '5.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('13', '224', '35', '11', '47', '10', '1', '10.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('14', '224', '35', '11', '48', '15', '1', '15.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('15', '226', '30', '5', '39', '2', '1', '0.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('16', '226', '30', '5', '40', '5', '1', '0.0000', '+', '0', '+', '0.00000000', '+');

-- ----------------------------
-- Table structure for oc_product_related
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_related`;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_product_related
-- ----------------------------
INSERT INTO `oc_product_related` VALUES ('40', '42');
INSERT INTO `oc_product_related` VALUES ('41', '42');
INSERT INTO `oc_product_related` VALUES ('42', '40');
INSERT INTO `oc_product_related` VALUES ('42', '41');

-- ----------------------------
-- Table structure for oc_product_report
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_report`;
CREATE TABLE `oc_product_report` (
  `product_report_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(40) NOT NULL,
  `country` varchar(2) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`product_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_product_report
-- ----------------------------

-- ----------------------------
-- Table structure for oc_product_reward
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_reward`;
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `points` int(8) NOT NULL DEFAULT 0,
  PRIMARY KEY (`product_reward_id`)
) ENGINE=InnoDB AUTO_INCREMENT=546 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_product_reward
-- ----------------------------
INSERT INTO `oc_product_reward` VALUES ('329', '43', '1', '600');
INSERT INTO `oc_product_reward` VALUES ('331', '44', '1', '700');
INSERT INTO `oc_product_reward` VALUES ('333', '45', '1', '800');
INSERT INTO `oc_product_reward` VALUES ('335', '40', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('337', '31', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('339', '29', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('343', '48', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('345', '33', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('347', '46', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('351', '36', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('353', '34', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('355', '32', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('379', '28', '1', '400');
INSERT INTO `oc_product_reward` VALUES ('425', '35', '1', '0');
INSERT INTO `oc_product_reward` VALUES ('515', '42', '1', '100');
INSERT INTO `oc_product_reward` VALUES ('519', '47', '1', '300');
INSERT INTO `oc_product_reward` VALUES ('521', '49', '1', '1000');
INSERT INTO `oc_product_reward` VALUES ('539', '30', '1', '200');
INSERT INTO `oc_product_reward` VALUES ('545', '41', '1', '0');

-- ----------------------------
-- Table structure for oc_product_special
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_special`;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=440 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_product_special
-- ----------------------------
INSERT INTO `oc_product_special` VALUES ('419', '42', '1', '1', '90.0000', '0000-00-00', '0000-00-00');
INSERT INTO `oc_product_special` VALUES ('438', '30', '1', '1', '80.0000', '0000-00-00', '0000-00-00');
INSERT INTO `oc_product_special` VALUES ('439', '30', '1', '2', '90.0000', '0000-00-00', '0000-00-00');

-- ----------------------------
-- Table structure for oc_product_subscription
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_subscription`;
CREATE TABLE `oc_product_subscription` (
  `product_id` int(11) NOT NULL,
  `subscription_plan_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`subscription_plan_id`,`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_product_subscription
-- ----------------------------

-- ----------------------------
-- Table structure for oc_product_to_category
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_category`;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_product_to_category
-- ----------------------------
INSERT INTO `oc_product_to_category` VALUES ('28', '20');
INSERT INTO `oc_product_to_category` VALUES ('28', '24');
INSERT INTO `oc_product_to_category` VALUES ('29', '20');
INSERT INTO `oc_product_to_category` VALUES ('29', '24');
INSERT INTO `oc_product_to_category` VALUES ('30', '20');
INSERT INTO `oc_product_to_category` VALUES ('30', '33');
INSERT INTO `oc_product_to_category` VALUES ('31', '33');
INSERT INTO `oc_product_to_category` VALUES ('32', '34');
INSERT INTO `oc_product_to_category` VALUES ('33', '20');
INSERT INTO `oc_product_to_category` VALUES ('33', '28');
INSERT INTO `oc_product_to_category` VALUES ('34', '34');
INSERT INTO `oc_product_to_category` VALUES ('35', '20');
INSERT INTO `oc_product_to_category` VALUES ('36', '34');
INSERT INTO `oc_product_to_category` VALUES ('40', '20');
INSERT INTO `oc_product_to_category` VALUES ('40', '24');
INSERT INTO `oc_product_to_category` VALUES ('41', '27');
INSERT INTO `oc_product_to_category` VALUES ('42', '20');
INSERT INTO `oc_product_to_category` VALUES ('42', '28');
INSERT INTO `oc_product_to_category` VALUES ('43', '18');
INSERT INTO `oc_product_to_category` VALUES ('43', '20');
INSERT INTO `oc_product_to_category` VALUES ('44', '18');
INSERT INTO `oc_product_to_category` VALUES ('44', '20');
INSERT INTO `oc_product_to_category` VALUES ('45', '18');
INSERT INTO `oc_product_to_category` VALUES ('46', '18');
INSERT INTO `oc_product_to_category` VALUES ('46', '20');
INSERT INTO `oc_product_to_category` VALUES ('47', '18');
INSERT INTO `oc_product_to_category` VALUES ('47', '20');
INSERT INTO `oc_product_to_category` VALUES ('48', '20');
INSERT INTO `oc_product_to_category` VALUES ('48', '34');
INSERT INTO `oc_product_to_category` VALUES ('49', '57');

-- ----------------------------
-- Table structure for oc_product_to_download
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_download`;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_product_to_download
-- ----------------------------

-- ----------------------------
-- Table structure for oc_product_to_layout
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_layout`;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_product_to_layout
-- ----------------------------

-- ----------------------------
-- Table structure for oc_product_to_store
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_store`;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_product_to_store
-- ----------------------------
INSERT INTO `oc_product_to_store` VALUES ('28', '0');
INSERT INTO `oc_product_to_store` VALUES ('29', '0');
INSERT INTO `oc_product_to_store` VALUES ('30', '0');
INSERT INTO `oc_product_to_store` VALUES ('31', '0');
INSERT INTO `oc_product_to_store` VALUES ('32', '0');
INSERT INTO `oc_product_to_store` VALUES ('33', '0');
INSERT INTO `oc_product_to_store` VALUES ('34', '0');
INSERT INTO `oc_product_to_store` VALUES ('35', '0');
INSERT INTO `oc_product_to_store` VALUES ('36', '0');
INSERT INTO `oc_product_to_store` VALUES ('40', '0');
INSERT INTO `oc_product_to_store` VALUES ('41', '0');
INSERT INTO `oc_product_to_store` VALUES ('42', '0');
INSERT INTO `oc_product_to_store` VALUES ('43', '0');
INSERT INTO `oc_product_to_store` VALUES ('44', '0');
INSERT INTO `oc_product_to_store` VALUES ('45', '0');
INSERT INTO `oc_product_to_store` VALUES ('46', '0');
INSERT INTO `oc_product_to_store` VALUES ('47', '0');
INSERT INTO `oc_product_to_store` VALUES ('48', '0');
INSERT INTO `oc_product_to_store` VALUES ('49', '0');

-- ----------------------------
-- Table structure for oc_product_viewed
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_viewed`;
CREATE TABLE `oc_product_viewed` (
  `product_id` int(11) NOT NULL,
  `viewed` int(11) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_product_viewed
-- ----------------------------

-- ----------------------------
-- Table structure for oc_return
-- ----------------------------
DROP TABLE IF EXISTS `oc_return`;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_ordered` date NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_return
-- ----------------------------

-- ----------------------------
-- Table structure for oc_return_action
-- ----------------------------
DROP TABLE IF EXISTS `oc_return_action`;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_return_action
-- ----------------------------
INSERT INTO `oc_return_action` VALUES ('1', '1', 'Refunded');
INSERT INTO `oc_return_action` VALUES ('2', '1', 'Credit Issued');
INSERT INTO `oc_return_action` VALUES ('3', '1', 'Replacement Sent');

-- ----------------------------
-- Table structure for oc_return_history
-- ----------------------------
DROP TABLE IF EXISTS `oc_return_history`;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_return_history
-- ----------------------------

-- ----------------------------
-- Table structure for oc_return_reason
-- ----------------------------
DROP TABLE IF EXISTS `oc_return_reason`;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_return_reason
-- ----------------------------
INSERT INTO `oc_return_reason` VALUES ('1', '1', 'Dead On Arrival');
INSERT INTO `oc_return_reason` VALUES ('2', '1', 'Received Wrong Item');
INSERT INTO `oc_return_reason` VALUES ('3', '1', 'Order Error');
INSERT INTO `oc_return_reason` VALUES ('4', '1', 'Faulty, please supply details');
INSERT INTO `oc_return_reason` VALUES ('5', '1', 'Other, please supply details');

-- ----------------------------
-- Table structure for oc_return_status
-- ----------------------------
DROP TABLE IF EXISTS `oc_return_status`;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_return_status
-- ----------------------------
INSERT INTO `oc_return_status` VALUES ('1', '1', 'Pending');
INSERT INTO `oc_return_status` VALUES ('2', '1', 'Awaiting Products');
INSERT INTO `oc_return_status` VALUES ('3', '1', 'Complete');

-- ----------------------------
-- Table structure for oc_review
-- ----------------------------
DROP TABLE IF EXISTS `oc_review`;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_review
-- ----------------------------

-- ----------------------------
-- Table structure for oc_seo_url
-- ----------------------------
DROP TABLE IF EXISTS `oc_seo_url`;
CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`seo_url_id`),
  KEY `keyword` (`keyword`),
  KEY `query` (`key`,`value`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_seo_url
-- ----------------------------
INSERT INTO `oc_seo_url` VALUES ('1', '0', '1', 'product_id', '47', 'hp-lp3065', '1');
INSERT INTO `oc_seo_url` VALUES ('2', '0', '1', 'product_id', '48', 'ipod-classic', '1');
INSERT INTO `oc_seo_url` VALUES ('3', '0', '1', 'product_id', '28', 'htc-touch-hd', '1');
INSERT INTO `oc_seo_url` VALUES ('4', '0', '1', 'product_id', '43', 'macbook', '1');
INSERT INTO `oc_seo_url` VALUES ('5', '0', '1', 'product_id', '44', 'macbook-air', '1');
INSERT INTO `oc_seo_url` VALUES ('6', '0', '1', 'product_id', '45', 'macbook-pro', '1');
INSERT INTO `oc_seo_url` VALUES ('7', '0', '1', 'product_id', '30', 'canon-eos-5d', '1');
INSERT INTO `oc_seo_url` VALUES ('8', '0', '1', 'product_id', '31', 'nikon-d300', '1');
INSERT INTO `oc_seo_url` VALUES ('9', '0', '1', 'product_id', '29', 'palm-treo-pro', '1');
INSERT INTO `oc_seo_url` VALUES ('10', '0', '1', 'product_id', '35', 'product-8', '1');
INSERT INTO `oc_seo_url` VALUES ('11', '0', '1', 'product_id', '49', 'samsung-galaxy-tab-10-1', '1');
INSERT INTO `oc_seo_url` VALUES ('12', '0', '1', 'product_id', '33', 'samsung-syncmaster-941bw', '1');
INSERT INTO `oc_seo_url` VALUES ('13', '0', '1', 'product_id', '46', 'sony-vaio', '1');
INSERT INTO `oc_seo_url` VALUES ('14', '0', '1', 'product_id', '41', 'imac', '1');
INSERT INTO `oc_seo_url` VALUES ('15', '0', '1', 'product_id', '40', 'iphone', '1');
INSERT INTO `oc_seo_url` VALUES ('16', '0', '1', 'product_id', '36', 'ipod-nano', '1');
INSERT INTO `oc_seo_url` VALUES ('17', '0', '1', 'product_id', '34', 'ipod-shuffle', '1');
INSERT INTO `oc_seo_url` VALUES ('18', '0', '1', 'product_id', '32', 'ipod-touch', '1');
INSERT INTO `oc_seo_url` VALUES ('19', '0', '1', 'product_id', '50', 'apple-4', '1');
INSERT INTO `oc_seo_url` VALUES ('20', '0', '1', 'product_id', '42', 'apple-cinema', '1');
INSERT INTO `oc_seo_url` VALUES ('21', '0', '1', 'manufacturer_id', '5', 'htc', '0');
INSERT INTO `oc_seo_url` VALUES ('22', '0', '1', 'manufacturer_id', '7', 'hewlett-packard', '0');
INSERT INTO `oc_seo_url` VALUES ('23', '0', '1', 'manufacturer_id', '6', 'palm', '0');
INSERT INTO `oc_seo_url` VALUES ('24', '0', '1', 'manufacturer_id', '10', 'sony', '0');
INSERT INTO `oc_seo_url` VALUES ('25', '0', '1', 'manufacturer_id', '9', 'canon', '0');
INSERT INTO `oc_seo_url` VALUES ('26', '0', '1', 'manufacturer_id', '8', 'apple', '0');
INSERT INTO `oc_seo_url` VALUES ('27', '0', '1', 'path', '30', 'printer', '0');
INSERT INTO `oc_seo_url` VALUES ('28', '0', '1', 'path', '20_27', 'desktops/mac', '0');
INSERT INTO `oc_seo_url` VALUES ('29', '0', '1', 'path', '20_26', 'desktops/pc', '0');
INSERT INTO `oc_seo_url` VALUES ('30', '0', '1', 'path', '25', 'component', '0');
INSERT INTO `oc_seo_url` VALUES ('31', '0', '1', 'path', '25_29', 'component/mouse', '0');
INSERT INTO `oc_seo_url` VALUES ('32', '0', '1', 'path', '33', 'cameras', '0');
INSERT INTO `oc_seo_url` VALUES ('33', '0', '1', 'path', '25_28', 'component/monitor', '0');
INSERT INTO `oc_seo_url` VALUES ('34', '0', '1', 'path', '25_28_35', 'component/monitor/test-1', '0');
INSERT INTO `oc_seo_url` VALUES ('35', '0', '1', 'path', '25_28_36', 'component/monitor/test-2', '0');
INSERT INTO `oc_seo_url` VALUES ('36', '0', '1', 'path', '25_30', 'component/printers', '0');
INSERT INTO `oc_seo_url` VALUES ('37', '0', '1', 'path', '25_31', 'component/scanner', '0');
INSERT INTO `oc_seo_url` VALUES ('38', '0', '1', 'path', '25_32', 'component/web-camera', '0');
INSERT INTO `oc_seo_url` VALUES ('39', '0', '1', 'path', '20', 'desktops', '0');
INSERT INTO `oc_seo_url` VALUES ('40', '0', '1', 'path', '18', 'laptop-notebook', '0');
INSERT INTO `oc_seo_url` VALUES ('41', '0', '1', 'path', '18_46', 'laptop-notebook/macs', '0');
INSERT INTO `oc_seo_url` VALUES ('42', '0', '1', 'path', '18_45', 'laptop-notebook/windows', '0');
INSERT INTO `oc_seo_url` VALUES ('43', '0', '1', 'path', '34', 'mp3-players', '0');
INSERT INTO `oc_seo_url` VALUES ('44', '0', '1', 'path', '34_43', 'mp3-players/test-11', '0');
INSERT INTO `oc_seo_url` VALUES ('45', '0', '1', 'path', '34_44', 'mp3-players/test-12', '0');
INSERT INTO `oc_seo_url` VALUES ('46', '0', '1', 'path', '34_47', 'mp3-players/test-15', '0');
INSERT INTO `oc_seo_url` VALUES ('47', '0', '1', 'path', '34_48', 'mp3-players/test-16', '0');
INSERT INTO `oc_seo_url` VALUES ('48', '0', '1', 'path', '34_49', 'mp3-players/test-17', '0');
INSERT INTO `oc_seo_url` VALUES ('49', '0', '1', 'path', '34_50', 'mp3-players/test-18', '0');
INSERT INTO `oc_seo_url` VALUES ('50', '0', '1', 'path', '34_51', 'mp3-players/test-19', '0');
INSERT INTO `oc_seo_url` VALUES ('51', '0', '1', 'path', '34_52', 'mp3-players/test-20', '0');
INSERT INTO `oc_seo_url` VALUES ('52', '0', '1', 'path', '34_52_58', 'mp3-players/test-20/test-25', '0');
INSERT INTO `oc_seo_url` VALUES ('53', '0', '1', 'path', '34_53', 'mp3-players/test-21', '0');
INSERT INTO `oc_seo_url` VALUES ('54', '0', '1', 'path', '34_54', 'mp3-players/test-22', '0');
INSERT INTO `oc_seo_url` VALUES ('55', '0', '1', 'path', '34_55', 'mp3-players/test-23', '0');
INSERT INTO `oc_seo_url` VALUES ('56', '0', '1', 'path', '34_56', 'mp3-players/test-24', '0');
INSERT INTO `oc_seo_url` VALUES ('57', '0', '1', 'path', '34_38', 'mp3-players/test-4', '0');
INSERT INTO `oc_seo_url` VALUES ('58', '0', '1', 'path', '34_37', 'mp3-players/test-5', '0');
INSERT INTO `oc_seo_url` VALUES ('59', '0', '1', 'path', '34_39', 'mp3-players/test-6', '0');
INSERT INTO `oc_seo_url` VALUES ('60', '0', '1', 'path', '34_40', 'mp3-players/test-7', '0');
INSERT INTO `oc_seo_url` VALUES ('61', '0', '1', 'path', '34_41', 'mp3-players/test-8', '0');
INSERT INTO `oc_seo_url` VALUES ('62', '0', '1', 'path', '34_42', 'mp3-players/test-9', '0');
INSERT INTO `oc_seo_url` VALUES ('63', '0', '1', 'path', '24', 'smartphone', '0');
INSERT INTO `oc_seo_url` VALUES ('64', '0', '1', 'path', '17', 'software', '0');
INSERT INTO `oc_seo_url` VALUES ('65', '0', '1', 'path', '57', 'tablet', '0');
INSERT INTO `oc_seo_url` VALUES ('66', '0', '1', 'information_id', '1', 'about-us', '0');
INSERT INTO `oc_seo_url` VALUES ('67', '0', '1', 'information_id', '2', 'terms', '0');
INSERT INTO `oc_seo_url` VALUES ('68', '0', '1', 'information_id', '4', 'delivery', '0');
INSERT INTO `oc_seo_url` VALUES ('69', '0', '1', 'information_id', '3', 'privacy', '0');
INSERT INTO `oc_seo_url` VALUES ('70', '0', '1', 'language', 'en-gb', 'en-gb', '-2');
INSERT INTO `oc_seo_url` VALUES ('71', '0', '1', 'route', 'information/information.info', 'info', '0');
INSERT INTO `oc_seo_url` VALUES ('72', '0', '1', 'route', 'information/information', 'information', '-1');
INSERT INTO `oc_seo_url` VALUES ('73', '0', '1', 'route', 'product/product', 'product', '-1');
INSERT INTO `oc_seo_url` VALUES ('74', '0', '1', 'route', 'product/category', 'catalog', '-1');
INSERT INTO `oc_seo_url` VALUES ('75', '0', '1', 'route', 'product/manufacturer', 'brands', '-1');
INSERT INTO `oc_seo_url` VALUES ('76', '0', '1', 'path', '59', 'Shoe', '0');

-- ----------------------------
-- Table structure for oc_session
-- ----------------------------
DROP TABLE IF EXISTS `oc_session`;
CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_session
-- ----------------------------
INSERT INTO `oc_session` VALUES ('2dff42009b501488519a14d4ab', '{\"currency\":\"USD\"}', '2023-02-26 08:09:04');
INSERT INTO `oc_session` VALUES ('4f0026af29d58a9e7a50ba0cd3', '{\"user_id\":\"1\",\"user_token\":\"b48755d0af249a8bd7116f01511c78b5\"}', '2023-02-26 08:18:17');
INSERT INTO `oc_session` VALUES ('7b4b9bf0f97ad6c1b8cc621072', '{\"user_id\":\"1\",\"user_token\":\"e1bde0504a606ba43c331a48fbec0bcd\"}', '2023-02-26 08:24:09');
INSERT INTO `oc_session` VALUES ('b4efea69f4564a9f5c145e1fd4', '{\"currency\":\"USD\",\"review_token\":\"398d17f223d8a5d0396800a32a6c90bb\",\"user_id\":\"1\",\"user_token\":\"00218fe8ad47c630d98ed2990dba85b3\",\"return_token\":\"924d29d8805f47a5d4997df45b\",\"login_token\":\"0bb1e420b82cac8903d17e7f1950e6d6\"}', '2023-02-26 08:18:47');

-- ----------------------------
-- Table structure for oc_setting
-- ----------------------------
DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=975 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_setting
-- ----------------------------
INSERT INTO `oc_setting` VALUES ('122', '0', 'developer', 'developer_sass', '1', '0');
INSERT INTO `oc_setting` VALUES ('123', '0', 'currency_ecb', 'currency_ecb_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('124', '0', 'payment_free_checkout', 'payment_free_checkout_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('125', '0', 'payment_free_checkout', 'payment_free_checkout_order_status_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('126', '0', 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', '0');
INSERT INTO `oc_setting` VALUES ('127', '0', 'payment_cod', 'payment_cod_sort_order', '5', '0');
INSERT INTO `oc_setting` VALUES ('128', '0', 'payment_cod', 'payment_cod_total', '0.01', '0');
INSERT INTO `oc_setting` VALUES ('129', '0', 'payment_cod', 'payment_cod_order_status_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('130', '0', 'payment_cod', 'payment_cod_geo_zone_id', '0', '0');
INSERT INTO `oc_setting` VALUES ('131', '0', 'payment_cod', 'payment_cod_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('132', '0', 'shipping_flat', 'shipping_flat_sort_order', '1', '0');
INSERT INTO `oc_setting` VALUES ('133', '0', 'shipping_flat', 'shipping_flat_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('134', '0', 'shipping_flat', 'shipping_flat_geo_zone_id', '0', '0');
INSERT INTO `oc_setting` VALUES ('135', '0', 'shipping_flat', 'shipping_flat_tax_class_id', '9', '0');
INSERT INTO `oc_setting` VALUES ('136', '0', 'shipping_flat', 'shipping_flat_cost', '5.00', '0');
INSERT INTO `oc_setting` VALUES ('137', '0', 'total_shipping', 'total_shipping_sort_order', '3', '0');
INSERT INTO `oc_setting` VALUES ('138', '0', 'total_sub_total', 'total_sub_total_sort_order', '1', '0');
INSERT INTO `oc_setting` VALUES ('139', '0', 'total_sub_total', 'total_sub_total_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('140', '0', 'total_tax', 'total_tax_sort_order', '5', '0');
INSERT INTO `oc_setting` VALUES ('141', '0', 'total_tax', 'total_tax_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('142', '0', 'total_total', 'total_total_sort_order', '9', '0');
INSERT INTO `oc_setting` VALUES ('143', '0', 'total_total', 'total_total_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('144', '0', 'total_credit', 'total_credit_sort_order', '7', '0');
INSERT INTO `oc_setting` VALUES ('145', '0', 'total_credit', 'total_credit_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('146', '0', 'total_reward', 'total_reward_sort_order', '2', '0');
INSERT INTO `oc_setting` VALUES ('147', '0', 'total_reward', 'total_reward_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('148', '0', 'total_shipping', 'total_shipping_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('149', '0', 'total_shipping', 'total_shipping_estimator', '1', '0');
INSERT INTO `oc_setting` VALUES ('150', '0', 'total_coupon', 'total_coupon_sort_order', '4', '0');
INSERT INTO `oc_setting` VALUES ('151', '0', 'total_coupon', 'total_coupon_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('152', '0', 'total_voucher', 'total_voucher_sort_order', '8', '0');
INSERT INTO `oc_setting` VALUES ('153', '0', 'total_voucher', 'total_voucher_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('155', '0', 'module_account', 'module_account_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('156', '0', 'theme_basic', 'theme_basic_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('157', '0', 'dashboard_activity', 'dashboard_activity_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('158', '0', 'dashboard_activity', 'dashboard_activity_sort_order', '7', '0');
INSERT INTO `oc_setting` VALUES ('159', '0', 'dashboard_sale', 'dashboard_sale_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('160', '0', 'dashboard_sale', 'dashboard_sale_width', '3', '0');
INSERT INTO `oc_setting` VALUES ('161', '0', 'dashboard_chart', 'dashboard_chart_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('162', '0', 'dashboard_chart', 'dashboard_chart_width', '6', '0');
INSERT INTO `oc_setting` VALUES ('163', '0', 'dashboard_customer', 'dashboard_customer_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('164', '0', 'dashboard_customer', 'dashboard_customer_width', '3', '0');
INSERT INTO `oc_setting` VALUES ('165', '0', 'dashboard_map', 'dashboard_map_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('166', '0', 'dashboard_map', 'dashboard_map_width', '6', '0');
INSERT INTO `oc_setting` VALUES ('167', '0', 'dashboard_online', 'dashboard_online_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('168', '0', 'dashboard_online', 'dashboard_online_width', '3', '0');
INSERT INTO `oc_setting` VALUES ('169', '0', 'dashboard_order', 'dashboard_order_sort_order', '1', '0');
INSERT INTO `oc_setting` VALUES ('170', '0', 'dashboard_order', 'dashboard_order_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('171', '0', 'dashboard_order', 'dashboard_order_width', '3', '0');
INSERT INTO `oc_setting` VALUES ('172', '0', 'dashboard_sale', 'dashboard_sale_sort_order', '2', '0');
INSERT INTO `oc_setting` VALUES ('173', '0', 'dashboard_customer', 'dashboard_customer_sort_order', '3', '0');
INSERT INTO `oc_setting` VALUES ('174', '0', 'dashboard_online', 'dashboard_online_sort_order', '4', '0');
INSERT INTO `oc_setting` VALUES ('175', '0', 'dashboard_map', 'dashboard_map_sort_order', '5', '0');
INSERT INTO `oc_setting` VALUES ('176', '0', 'dashboard_chart', 'dashboard_chart_sort_order', '6', '0');
INSERT INTO `oc_setting` VALUES ('177', '0', 'dashboard_recent', 'dashboard_recent_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('178', '0', 'dashboard_recent', 'dashboard_recent_sort_order', '8', '0');
INSERT INTO `oc_setting` VALUES ('179', '0', 'dashboard_activity', 'dashboard_activity_width', '4', '0');
INSERT INTO `oc_setting` VALUES ('180', '0', 'dashboard_recent', 'dashboard_recent_width', '8', '0');
INSERT INTO `oc_setting` VALUES ('181', '0', 'report_customer_activity', 'report_customer_activity_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('182', '0', 'report_customer_activity', 'report_customer_activity_sort_order', '1', '0');
INSERT INTO `oc_setting` VALUES ('183', '0', 'report_customer_order', 'report_customer_order_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('184', '0', 'report_customer_order', 'report_customer_order_sort_order', '2', '0');
INSERT INTO `oc_setting` VALUES ('185', '0', 'report_customer_reward', 'report_customer_reward_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('186', '0', 'report_customer_reward', 'report_customer_reward_sort_order', '3', '0');
INSERT INTO `oc_setting` VALUES ('187', '0', 'report_customer_search', 'report_customer_search_sort_order', '3', '0');
INSERT INTO `oc_setting` VALUES ('188', '0', 'report_customer_search', 'report_customer_search_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('189', '0', 'report_customer_transaction', 'report_customer_transaction_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('190', '0', 'report_customer_transaction', 'report_customer_transaction_sort_order', '4', '0');
INSERT INTO `oc_setting` VALUES ('191', '0', 'report_sale_tax', 'report_sale_tax_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('192', '0', 'report_sale_tax', 'report_sale_tax_sort_order', '5', '0');
INSERT INTO `oc_setting` VALUES ('193', '0', 'report_sale_shipping', 'report_sale_shipping_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('194', '0', 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', '0');
INSERT INTO `oc_setting` VALUES ('195', '0', 'report_sale_return', 'report_sale_return_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('196', '0', 'report_sale_return', 'report_sale_return_sort_order', '7', '0');
INSERT INTO `oc_setting` VALUES ('197', '0', 'report_sale_order', 'report_sale_order_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('198', '0', 'report_sale_order', 'report_sale_order_sort_order', '8', '0');
INSERT INTO `oc_setting` VALUES ('199', '0', 'report_sale_coupon', 'report_sale_coupon_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('200', '0', 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', '0');
INSERT INTO `oc_setting` VALUES ('201', '0', 'report_product_viewed', 'report_product_viewed_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('202', '0', 'report_product_viewed', 'report_product_viewed_sort_order', '10', '0');
INSERT INTO `oc_setting` VALUES ('203', '0', 'report_product_purchased', 'report_product_purchased_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('204', '0', 'report_product_purchased', 'report_product_purchased_sort_order', '11', '0');
INSERT INTO `oc_setting` VALUES ('205', '0', 'report_marketing', 'report_marketing_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('206', '0', 'report_marketing', 'report_marketing_sort_order', '12', '0');
INSERT INTO `oc_setting` VALUES ('207', '0', 'report_customer_subscription', 'report_customer_subscription_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('208', '0', 'report_customer_subscription', 'report_customer_subscription_sort_order', '13', '0');
INSERT INTO `oc_setting` VALUES ('212', '0', 'module_category', 'module_category_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('848', '0', 'config', 'config_meta_title', 'Your Store', '0');
INSERT INTO `oc_setting` VALUES ('849', '0', 'config', 'config_meta_description', 'My Store', '0');
INSERT INTO `oc_setting` VALUES ('850', '0', 'config', 'config_meta_keyword', '', '0');
INSERT INTO `oc_setting` VALUES ('851', '0', 'config', 'config_logo', 'catalog/opencart-logo.png', '0');
INSERT INTO `oc_setting` VALUES ('852', '0', 'config', 'config_theme', 'basic', '0');
INSERT INTO `oc_setting` VALUES ('853', '0', 'config', 'config_layout_id', '4', '0');
INSERT INTO `oc_setting` VALUES ('854', '0', 'config', 'config_name', 'Your Store', '0');
INSERT INTO `oc_setting` VALUES ('855', '0', 'config', 'config_owner', 'Your Name', '0');
INSERT INTO `oc_setting` VALUES ('856', '0', 'config', 'config_address', 'Address 1', '0');
INSERT INTO `oc_setting` VALUES ('857', '0', 'config', 'config_geocode', '', '0');
INSERT INTO `oc_setting` VALUES ('858', '0', 'config', 'config_email', 'zita@wankay.com', '0');
INSERT INTO `oc_setting` VALUES ('859', '0', 'config', 'config_telephone', '123456789', '0');
INSERT INTO `oc_setting` VALUES ('860', '0', 'config', 'config_image', '', '0');
INSERT INTO `oc_setting` VALUES ('861', '0', 'config', 'config_open', '', '0');
INSERT INTO `oc_setting` VALUES ('862', '0', 'config', 'config_comment', '', '0');
INSERT INTO `oc_setting` VALUES ('863', '0', 'config', 'config_country_id', '222', '0');
INSERT INTO `oc_setting` VALUES ('864', '0', 'config', 'config_zone_id', '3563', '0');
INSERT INTO `oc_setting` VALUES ('865', '0', 'config', 'config_timezone', 'UTC', '0');
INSERT INTO `oc_setting` VALUES ('866', '0', 'config', 'config_language', 'en-gb', '0');
INSERT INTO `oc_setting` VALUES ('867', '0', 'config', 'config_language_admin', 'en-gb', '0');
INSERT INTO `oc_setting` VALUES ('868', '0', 'config', 'config_currency', 'USD', '0');
INSERT INTO `oc_setting` VALUES ('869', '0', 'config', 'config_currency_engine', 'ecb', '0');
INSERT INTO `oc_setting` VALUES ('870', '0', 'config', 'config_currency_auto', '1', '0');
INSERT INTO `oc_setting` VALUES ('871', '0', 'config', 'config_length_class_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('872', '0', 'config', 'config_weight_class_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('873', '0', 'config', 'config_product_description_length', '100', '0');
INSERT INTO `oc_setting` VALUES ('874', '0', 'config', 'config_pagination', '10', '0');
INSERT INTO `oc_setting` VALUES ('875', '0', 'config', 'config_product_count', '1', '0');
INSERT INTO `oc_setting` VALUES ('876', '0', 'config', 'config_pagination_admin', '10', '0');
INSERT INTO `oc_setting` VALUES ('877', '0', 'config', 'config_product_report_status', '0', '0');
INSERT INTO `oc_setting` VALUES ('878', '0', 'config', 'config_review_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('879', '0', 'config', 'config_review_purchased', '0', '0');
INSERT INTO `oc_setting` VALUES ('880', '0', 'config', 'config_review_guest', '1', '0');
INSERT INTO `oc_setting` VALUES ('881', '0', 'config', 'config_voucher_min', '1', '0');
INSERT INTO `oc_setting` VALUES ('882', '0', 'config', 'config_voucher_max', '1000', '0');
INSERT INTO `oc_setting` VALUES ('883', '0', 'config', 'config_cookie_id', '0', '0');
INSERT INTO `oc_setting` VALUES ('884', '0', 'config', 'config_gdpr_id', '0', '0');
INSERT INTO `oc_setting` VALUES ('885', '0', 'config', 'config_gdpr_limit', '180', '0');
INSERT INTO `oc_setting` VALUES ('886', '0', 'config', 'config_tax', '1', '0');
INSERT INTO `oc_setting` VALUES ('887', '0', 'config', 'config_tax_default', 'shipping', '0');
INSERT INTO `oc_setting` VALUES ('888', '0', 'config', 'config_tax_customer', 'shipping', '0');
INSERT INTO `oc_setting` VALUES ('889', '0', 'config', 'config_customer_online', '0', '0');
INSERT INTO `oc_setting` VALUES ('890', '0', 'config', 'config_customer_online_expire', '1', '0');
INSERT INTO `oc_setting` VALUES ('891', '0', 'config', 'config_customer_activity', '0', '0');
INSERT INTO `oc_setting` VALUES ('892', '0', 'config', 'config_customer_search', '0', '0');
INSERT INTO `oc_setting` VALUES ('893', '0', 'config', 'config_customer_group_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('894', '0', 'config', 'config_customer_group_display', '[\"1\"]', '1');
INSERT INTO `oc_setting` VALUES ('895', '0', 'config', 'config_customer_price', '0', '0');
INSERT INTO `oc_setting` VALUES ('896', '0', 'config', 'config_telephone_display', '0', '0');
INSERT INTO `oc_setting` VALUES ('897', '0', 'config', 'config_telephone_required', '0', '0');
INSERT INTO `oc_setting` VALUES ('898', '0', 'config', 'config_login_attempts', '5', '0');
INSERT INTO `oc_setting` VALUES ('899', '0', 'config', 'config_account_id', '3', '0');
INSERT INTO `oc_setting` VALUES ('900', '0', 'config', 'config_invoice_prefix', 'INV-2023-00', '0');
INSERT INTO `oc_setting` VALUES ('901', '0', 'config', 'config_cart_weight', '1', '0');
INSERT INTO `oc_setting` VALUES ('902', '0', 'config', 'config_checkout_guest', '1', '0');
INSERT INTO `oc_setting` VALUES ('903', '0', 'config', 'config_checkout_payment_address', '0', '0');
INSERT INTO `oc_setting` VALUES ('904', '0', 'config', 'config_checkout_shipping_address', '0', '0');
INSERT INTO `oc_setting` VALUES ('905', '0', 'config', 'config_checkout_id', '0', '0');
INSERT INTO `oc_setting` VALUES ('906', '0', 'config', 'config_order_status_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('907', '0', 'config', 'config_processing_status', '[\"5\",\"1\",\"2\",\"12\",\"3\"]', '1');
INSERT INTO `oc_setting` VALUES ('908', '0', 'config', 'config_complete_status', '[\"5\",\"3\"]', '1');
INSERT INTO `oc_setting` VALUES ('909', '0', 'config', 'config_fraud_status_id', '8', '0');
INSERT INTO `oc_setting` VALUES ('910', '0', 'config', 'config_api_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('911', '0', 'config', 'config_subscription_status_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('912', '0', 'config', 'config_subscription_active_status_id', '2', '0');
INSERT INTO `oc_setting` VALUES ('913', '0', 'config', 'config_subscription_expired_status_id', '6', '0');
INSERT INTO `oc_setting` VALUES ('914', '0', 'config', 'config_subscription_canceled_status_id', '4', '0');
INSERT INTO `oc_setting` VALUES ('915', '0', 'config', 'config_subscription_failed_status_id', '3', '0');
INSERT INTO `oc_setting` VALUES ('916', '0', 'config', 'config_subscription_denied_status_id', '5', '0');
INSERT INTO `oc_setting` VALUES ('917', '0', 'config', 'config_stock_display', '0', '0');
INSERT INTO `oc_setting` VALUES ('918', '0', 'config', 'config_stock_warning', '0', '0');
INSERT INTO `oc_setting` VALUES ('919', '0', 'config', 'config_stock_checkout', '0', '0');
INSERT INTO `oc_setting` VALUES ('920', '0', 'config', 'config_affiliate_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('921', '0', 'config', 'config_affiliate_group_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('922', '0', 'config', 'config_affiliate_approval', '0', '0');
INSERT INTO `oc_setting` VALUES ('923', '0', 'config', 'config_affiliate_auto', '0', '0');
INSERT INTO `oc_setting` VALUES ('924', '0', 'config', 'config_affiliate_commission', '5', '0');
INSERT INTO `oc_setting` VALUES ('925', '0', 'config', 'config_affiliate_expire', '0', '0');
INSERT INTO `oc_setting` VALUES ('926', '0', 'config', 'config_affiliate_id', '4', '0');
INSERT INTO `oc_setting` VALUES ('927', '0', 'config', 'config_return_status_id', '2', '0');
INSERT INTO `oc_setting` VALUES ('928', '0', 'config', 'config_return_id', '0', '0');
INSERT INTO `oc_setting` VALUES ('929', '0', 'config', 'config_captcha', '', '0');
INSERT INTO `oc_setting` VALUES ('930', '0', 'config', 'config_captcha_page', '[\"review\",\"contact\"]', '1');
INSERT INTO `oc_setting` VALUES ('931', '0', 'config', 'config_image_category_width', '80', '0');
INSERT INTO `oc_setting` VALUES ('932', '0', 'config', 'config_image_category_height', '80', '0');
INSERT INTO `oc_setting` VALUES ('933', '0', 'config', 'config_image_thumb_width', '500', '0');
INSERT INTO `oc_setting` VALUES ('934', '0', 'config', 'config_image_thumb_height', '500', '0');
INSERT INTO `oc_setting` VALUES ('935', '0', 'config', 'config_image_popup_width', '800', '0');
INSERT INTO `oc_setting` VALUES ('936', '0', 'config', 'config_image_popup_height', '800', '0');
INSERT INTO `oc_setting` VALUES ('937', '0', 'config', 'config_image_product_width', '250', '0');
INSERT INTO `oc_setting` VALUES ('938', '0', 'config', 'config_image_product_height', '250', '0');
INSERT INTO `oc_setting` VALUES ('939', '0', 'config', 'config_image_additional_width', '74', '0');
INSERT INTO `oc_setting` VALUES ('940', '0', 'config', 'config_image_additional_height', '74', '0');
INSERT INTO `oc_setting` VALUES ('941', '0', 'config', 'config_image_related_width', '250', '0');
INSERT INTO `oc_setting` VALUES ('942', '0', 'config', 'config_image_related_height', '250', '0');
INSERT INTO `oc_setting` VALUES ('943', '0', 'config', 'config_image_compare_width', '90', '0');
INSERT INTO `oc_setting` VALUES ('944', '0', 'config', 'config_image_compare_height', '90', '0');
INSERT INTO `oc_setting` VALUES ('945', '0', 'config', 'config_image_wishlist_width', '47', '0');
INSERT INTO `oc_setting` VALUES ('946', '0', 'config', 'config_image_wishlist_height', '47', '0');
INSERT INTO `oc_setting` VALUES ('947', '0', 'config', 'config_image_cart_width', '47', '0');
INSERT INTO `oc_setting` VALUES ('948', '0', 'config', 'config_image_cart_height', '47', '0');
INSERT INTO `oc_setting` VALUES ('949', '0', 'config', 'config_image_location_width', '268', '0');
INSERT INTO `oc_setting` VALUES ('950', '0', 'config', 'config_image_location_height', '50', '0');
INSERT INTO `oc_setting` VALUES ('951', '0', 'config', 'config_mail_engine', 'smtp', '0');
INSERT INTO `oc_setting` VALUES ('952', '0', 'config', 'config_mail_parameter', '', '0');
INSERT INTO `oc_setting` VALUES ('953', '0', 'config', 'config_mail_smtp_hostname', 'ssl://smtp.qq.com', '0');
INSERT INTO `oc_setting` VALUES ('954', '0', 'config', 'config_mail_smtp_username', '1258636566@qq.com', '0');
INSERT INTO `oc_setting` VALUES ('955', '0', 'config', 'config_mail_smtp_password', 'vfooggrlbkzziefc', '0');
INSERT INTO `oc_setting` VALUES ('956', '0', 'config', 'config_mail_smtp_port', '465', '0');
INSERT INTO `oc_setting` VALUES ('957', '0', 'config', 'config_mail_smtp_timeout', '5', '0');
INSERT INTO `oc_setting` VALUES ('958', '0', 'config', 'config_mail_alert', '[\"order\"]', '1');
INSERT INTO `oc_setting` VALUES ('959', '0', 'config', 'config_mail_alert_email', '', '0');
INSERT INTO `oc_setting` VALUES ('960', '0', 'config', 'config_maintenance', '0', '0');
INSERT INTO `oc_setting` VALUES ('961', '0', 'config', 'config_session_expire', '86400', '0');
INSERT INTO `oc_setting` VALUES ('962', '0', 'config', 'config_session_samesite', 'Strict', '0');
INSERT INTO `oc_setting` VALUES ('963', '0', 'config', 'config_seo_url', '0', '0');
INSERT INTO `oc_setting` VALUES ('964', '0', 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', '0');
INSERT INTO `oc_setting` VALUES ('965', '0', 'config', 'config_compression', '0', '0');
INSERT INTO `oc_setting` VALUES ('966', '0', 'config', 'config_security', '0', '0');
INSERT INTO `oc_setting` VALUES ('967', '0', 'config', 'config_shared', '0', '0');
INSERT INTO `oc_setting` VALUES ('968', '0', 'config', 'config_encryption', '2d3f7565c9de4dc6d462769c2d60bb9349a77ec54cf809fb5771308a887c0c371b952f8f943dfd2b9867467a5163bd0e64f93a0fc3b1edccc96458ba74fae4b3658bff82e75dda621e6be3622b551d6c144bb7dfb945cece1729dc9cc6d8206a295ad6a74f8a9b5f30f06761deaad3873bdcaaf79b014a38b001df84ce87d147b595637984d8fcfac03044e63cf0db7761fa5cfede7f2b9f06311319d6637e02aafbc605f09ca02461fdad9948df9d6dba42c408507d6204a8ed1a7a01865d96e990ba3d56d7d5dc80ea4b4415307b81445dd17d4e336b69e4cbf8da1a40bb2b547cab9259a4c09bf21c9366d20ef270108a9cfbecee797f8c46874c9087b738', '0');
INSERT INTO `oc_setting` VALUES ('969', '0', 'config', 'config_file_max_size', '20', '0');
INSERT INTO `oc_setting` VALUES ('970', '0', 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\nwebp\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nmp4\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', '0');
INSERT INTO `oc_setting` VALUES ('971', '0', 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/webp\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-zip\r\napplication/x-zip-compressed\r\napplication/rar\r\napplication/x-rar\r\napplication/x-rar-compressed\r\napplication/octet-stream\r\naudio/mpeg\r\nvideo/mp4\r\nvideo/quicktime\r\napplication/pdf', '0');
INSERT INTO `oc_setting` VALUES ('972', '0', 'config', 'config_error_display', '1', '0');
INSERT INTO `oc_setting` VALUES ('973', '0', 'config', 'config_error_log', '1', '0');
INSERT INTO `oc_setting` VALUES ('974', '0', 'config', 'config_error_filename', 'error.log', '0');

-- ----------------------------
-- Table structure for oc_startup
-- ----------------------------
DROP TABLE IF EXISTS `oc_startup`;
CREATE TABLE `oc_startup` (
  `startup_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`startup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_startup
-- ----------------------------

-- ----------------------------
-- Table structure for oc_statistics
-- ----------------------------
DROP TABLE IF EXISTS `oc_statistics`;
CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL,
  PRIMARY KEY (`statistics_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_statistics
-- ----------------------------
INSERT INTO `oc_statistics` VALUES ('1', 'order_sale', '0.0000');
INSERT INTO `oc_statistics` VALUES ('2', 'order_processing', '0.0000');
INSERT INTO `oc_statistics` VALUES ('3', 'order_complete', '0.0000');
INSERT INTO `oc_statistics` VALUES ('4', 'order_other', '0.0000');
INSERT INTO `oc_statistics` VALUES ('5', 'returns', '0.0000');
INSERT INTO `oc_statistics` VALUES ('6', 'product', '0.0000');
INSERT INTO `oc_statistics` VALUES ('7', 'review', '0.0000');

-- ----------------------------
-- Table structure for oc_stock_status
-- ----------------------------
DROP TABLE IF EXISTS `oc_stock_status`;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_stock_status
-- ----------------------------
INSERT INTO `oc_stock_status` VALUES ('5', '1', 'Out Of Stock');
INSERT INTO `oc_stock_status` VALUES ('6', '1', '2-3 Days');
INSERT INTO `oc_stock_status` VALUES ('7', '1', 'In Stock');
INSERT INTO `oc_stock_status` VALUES ('8', '1', 'Pre-Order');

-- ----------------------------
-- Table structure for oc_store
-- ----------------------------
DROP TABLE IF EXISTS `oc_store`;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_store
-- ----------------------------

-- ----------------------------
-- Table structure for oc_subscription
-- ----------------------------
DROP TABLE IF EXISTS `oc_subscription`;
CREATE TABLE `oc_subscription` (
  `subscription_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `payment_address_id` int(11) NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_address_id` int(11) NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL,
  `subscription_plan_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_remaining` smallint(6) NOT NULL,
  `trial_status` tinyint(1) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `cycle` smallint(6) NOT NULL,
  `duration` smallint(6) NOT NULL,
  `remaining` smallint(6) NOT NULL,
  `date_next` datetime NOT NULL,
  `comment` text NOT NULL,
  `subscription_status_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(10,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`subscription_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_subscription
-- ----------------------------

-- ----------------------------
-- Table structure for oc_subscription_history
-- ----------------------------
DROP TABLE IF EXISTS `oc_subscription_history`;
CREATE TABLE `oc_subscription_history` (
  `subscription_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `subscription_id` int(11) NOT NULL,
  `subscription_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`subscription_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_subscription_history
-- ----------------------------

-- ----------------------------
-- Table structure for oc_subscription_plan
-- ----------------------------
DROP TABLE IF EXISTS `oc_subscription_plan`;
CREATE TABLE `oc_subscription_plan` (
  `subscription_plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) NOT NULL,
  `trial_cycle` int(10) NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) NOT NULL,
  `cycle` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`subscription_plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_subscription_plan
-- ----------------------------
INSERT INTO `oc_subscription_plan` VALUES ('1', '10.0000', 'day', '10', '1', '1', '10.0000', 'day', '0', '1', '1', '0');
INSERT INTO `oc_subscription_plan` VALUES ('2', '11.0000', 'week', '11', '2', '1', '100.0000', 'month', '10', '1', '1', '0');
INSERT INTO `oc_subscription_plan` VALUES ('3', '0.0000', 'day', '0', '1', '0', '20.0000', 'day', '0', '1', '1', '0');

-- ----------------------------
-- Table structure for oc_subscription_plan_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_subscription_plan_description`;
CREATE TABLE `oc_subscription_plan_description` (
  `subscription_plan_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`subscription_plan_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_subscription_plan_description
-- ----------------------------
INSERT INTO `oc_subscription_plan_description` VALUES ('1', '1', 'Subscription Plan 1');
INSERT INTO `oc_subscription_plan_description` VALUES ('2', '1', 'Subscription Plan 2');
INSERT INTO `oc_subscription_plan_description` VALUES ('3', '1', 'Subscription Plan 3');

-- ----------------------------
-- Table structure for oc_subscription_status
-- ----------------------------
DROP TABLE IF EXISTS `oc_subscription_status`;
CREATE TABLE `oc_subscription_status` (
  `subscription_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`subscription_status_id`,`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_subscription_status
-- ----------------------------
INSERT INTO `oc_subscription_status` VALUES ('1', '1', 'Pending');
INSERT INTO `oc_subscription_status` VALUES ('2', '1', 'Active');
INSERT INTO `oc_subscription_status` VALUES ('3', '1', 'Failed');
INSERT INTO `oc_subscription_status` VALUES ('4', '1', 'Cancelled');
INSERT INTO `oc_subscription_status` VALUES ('5', '1', 'Denied');
INSERT INTO `oc_subscription_status` VALUES ('6', '1', 'Expired');

-- ----------------------------
-- Table structure for oc_tax_class
-- ----------------------------
DROP TABLE IF EXISTS `oc_tax_class`;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_tax_class
-- ----------------------------
INSERT INTO `oc_tax_class` VALUES ('9', 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50');
INSERT INTO `oc_tax_class` VALUES ('10', 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- ----------------------------
-- Table structure for oc_tax_rate
-- ----------------------------
DROP TABLE IF EXISTS `oc_tax_rate`;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_tax_rate
-- ----------------------------
INSERT INTO `oc_tax_rate` VALUES ('86', '3', 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29');
INSERT INTO `oc_tax_rate` VALUES ('87', '3', 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- ----------------------------
-- Table structure for oc_tax_rate_to_customer_group
-- ----------------------------
DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_tax_rate_to_customer_group
-- ----------------------------
INSERT INTO `oc_tax_rate_to_customer_group` VALUES ('86', '1');
INSERT INTO `oc_tax_rate_to_customer_group` VALUES ('87', '1');

-- ----------------------------
-- Table structure for oc_tax_rule
-- ----------------------------
DROP TABLE IF EXISTS `oc_tax_rule`;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1,
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_tax_rule
-- ----------------------------
INSERT INTO `oc_tax_rule` VALUES ('120', '10', '87', 'store', '0');
INSERT INTO `oc_tax_rule` VALUES ('121', '10', '86', 'payment', '1');
INSERT INTO `oc_tax_rule` VALUES ('127', '9', '87', 'shipping', '2');
INSERT INTO `oc_tax_rule` VALUES ('128', '9', '86', 'shipping', '1');

-- ----------------------------
-- Table structure for oc_theme
-- ----------------------------
DROP TABLE IF EXISTS `oc_theme`;
CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_theme
-- ----------------------------

-- ----------------------------
-- Table structure for oc_translation
-- ----------------------------
DROP TABLE IF EXISTS `oc_translation`;
CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`translation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_translation
-- ----------------------------

-- ----------------------------
-- Table structure for oc_upload
-- ----------------------------
DROP TABLE IF EXISTS `oc_upload`;
CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_upload
-- ----------------------------

-- ----------------------------
-- Table structure for oc_user
-- ----------------------------
DROP TABLE IF EXISTS `oc_user`;
CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `code` varchar(40) NOT NULL DEFAULT '',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_user
-- ----------------------------
INSERT INTO `oc_user` VALUES ('1', '1', 'admin', '$2y$10$OfOe0f9eIMiaCXci7AdDZ.XxpaGSa79Z4l7R82nwaJbQDryPvUGuy', 'John', 'Doe', '1209108465@qq.com', '', '', '::1', '1', '2023-02-19 17:59:38');

-- ----------------------------
-- Table structure for oc_user_authorize
-- ----------------------------
DROP TABLE IF EXISTS `oc_user_authorize`;
CREATE TABLE `oc_user_authorize` (
  `user_authorize_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(96) NOT NULL,
  `total` int(1) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_authorize_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_user_authorize
-- ----------------------------

-- ----------------------------
-- Table structure for oc_user_group
-- ----------------------------
DROP TABLE IF EXISTS `oc_user_group`;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_user_group
-- ----------------------------
INSERT INTO `oc_user_group` VALUES ('1', 'Administrator', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/review\",\"catalog\\/subscription_plan\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/pagination\",\"common\\/security\",\"cron\\/cron\",\"cron\\/currency\",\"cron\\/gdpr\",\"cron\\/subscription\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"customer\\/gdpr\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"error\\/exception\",\"extension\\/analytics\",\"extension\\/captcha\",\"extension\\/currency\",\"extension\\/dashboard\",\"extension\\/feed\",\"extension\\/fraud\",\"extension\\/language\",\"extension\\/module\",\"extension\\/other\",\"extension\\/payment\",\"extension\\/report\",\"extension\\/shipping\",\"extension\\/theme\",\"extension\\/total\",\"localisation\\/address_format\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/subscription_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/authorize\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/gdpr\",\"mail\\/returns\",\"mail\\/reward\",\"mail\\/subscription\",\"mail\\/transaction\",\"mail\\/voucher\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/cron\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/promotion\",\"marketplace\\/startup\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/returns\",\"sale\\/subscription\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/authorize\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/notification\",\"tool\\/upgrade\",\"tool\\/upload\",\"user\\/api\",\"user\\/profile\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/opencart\\/captcha\\/basic\",\"extension\\/opencart\\/currency\\/ecb\",\"extension\\/opencart\\/currency\\/fixer\",\"extension\\/opencart\\/dashboard\\/activity\",\"extension\\/opencart\\/dashboard\\/chart\",\"extension\\/opencart\\/dashboard\\/customer\",\"extension\\/opencart\\/dashboard\\/map\",\"extension\\/opencart\\/dashboard\\/online\",\"extension\\/opencart\\/dashboard\\/order\",\"extension\\/opencart\\/dashboard\\/recent\",\"extension\\/opencart\\/dashboard\\/sale\",\"extension\\/opencart\\/fraud\\/ip\",\"extension\\/opencart\\/module\\/account\",\"extension\\/opencart\\/module\\/banner\",\"extension\\/opencart\\/module\\/bestseller\",\"extension\\/opencart\\/module\\/category\",\"extension\\/opencart\\/module\\/featured\",\"extension\\/opencart\\/module\\/filter\",\"extension\\/opencart\\/module\\/html\",\"extension\\/opencart\\/module\\/information\",\"extension\\/opencart\\/module\\/latest\",\"extension\\/opencart\\/module\\/special\",\"extension\\/opencart\\/module\\/store\",\"extension\\/opencart\\/payment\\/bank_transfer\",\"extension\\/opencart\\/payment\\/cheque\",\"extension\\/opencart\\/payment\\/cod\",\"extension\\/opencart\\/payment\\/free_checkout\",\"extension\\/opencart\\/report\\/customer_activity\",\"extension\\/opencart\\/report\\/customer_order\",\"extension\\/opencart\\/report\\/customer_reward\",\"extension\\/opencart\\/report\\/customer_search\",\"extension\\/opencart\\/report\\/customer_transaction\",\"extension\\/opencart\\/report\\/customer_subscription\",\"extension\\/opencart\\/report\\/marketing\",\"extension\\/opencart\\/report\\/product_purchased\",\"extension\\/opencart\\/report\\/product_viewed\",\"extension\\/opencart\\/report\\/sale_coupon\",\"extension\\/opencart\\/report\\/sale_order\",\"extension\\/opencart\\/report\\/sale_return\",\"extension\\/opencart\\/report\\/sale_shipping\",\"extension\\/opencart\\/report\\/sale_tax\",\"extension\\/opencart\\/shipping\\/flat\",\"extension\\/opencart\\/shipping\\/free\",\"extension\\/opencart\\/shipping\\/item\",\"extension\\/opencart\\/shipping\\/pickup\",\"extension\\/opencart\\/shipping\\/weight\",\"extension\\/opencart\\/theme\\/basic\",\"extension\\/opencart\\/total\\/coupon\",\"extension\\/opencart\\/total\\/credit\",\"extension\\/opencart\\/total\\/handling\",\"extension\\/opencart\\/total\\/low_order_fee\",\"extension\\/opencart\\/total\\/reward\",\"extension\\/opencart\\/total\\/shipping\",\"extension\\/opencart\\/total\\/sub_total\",\"extension\\/opencart\\/total\\/tax\",\"extension\\/opencart\\/total\\/total\",\"extension\\/opencart\\/total\\/voucher\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/review\",\"catalog\\/subscription_plan\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/pagination\",\"common\\/security\",\"cron\\/cron\",\"cron\\/currency\",\"cron\\/gdpr\",\"cron\\/subscription\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"customer\\/gdpr\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"error\\/exception\",\"extension\\/analytics\",\"extension\\/captcha\",\"extension\\/currency\",\"extension\\/dashboard\",\"extension\\/feed\",\"extension\\/fraud\",\"extension\\/language\",\"extension\\/module\",\"extension\\/other\",\"extension\\/payment\",\"extension\\/report\",\"extension\\/shipping\",\"extension\\/theme\",\"extension\\/total\",\"localisation\\/address_format\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/subscription_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/authorize\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/gdpr\",\"mail\\/returns\",\"mail\\/reward\",\"mail\\/subscription\",\"mail\\/transaction\",\"mail\\/voucher\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/cron\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/promotion\",\"marketplace\\/startup\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/returns\",\"sale\\/subscription\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/authorize\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/notification\",\"tool\\/upgrade\",\"tool\\/upload\",\"user\\/api\",\"user\\/profile\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/opencart\\/captcha\\/basic\",\"extension\\/opencart\\/currency\\/ecb\",\"extension\\/opencart\\/currency\\/fixer\",\"extension\\/opencart\\/dashboard\\/activity\",\"extension\\/opencart\\/dashboard\\/chart\",\"extension\\/opencart\\/dashboard\\/customer\",\"extension\\/opencart\\/dashboard\\/map\",\"extension\\/opencart\\/dashboard\\/online\",\"extension\\/opencart\\/dashboard\\/order\",\"extension\\/opencart\\/dashboard\\/recent\",\"extension\\/opencart\\/dashboard\\/sale\",\"extension\\/opencart\\/fraud\\/ip\",\"extension\\/opencart\\/module\\/account\",\"extension\\/opencart\\/module\\/banner\",\"extension\\/opencart\\/module\\/bestseller\",\"extension\\/opencart\\/module\\/category\",\"extension\\/opencart\\/module\\/featured\",\"extension\\/opencart\\/module\\/filter\",\"extension\\/opencart\\/module\\/html\",\"extension\\/opencart\\/module\\/information\",\"extension\\/opencart\\/module\\/latest\",\"extension\\/opencart\\/module\\/special\",\"extension\\/opencart\\/module\\/store\",\"extension\\/opencart\\/payment\\/bank_transfer\",\"extension\\/opencart\\/payment\\/cheque\",\"extension\\/opencart\\/payment\\/cod\",\"extension\\/opencart\\/payment\\/free_checkout\",\"extension\\/opencart\\/report\\/customer_activity\",\"extension\\/opencart\\/report\\/customer_order\",\"extension\\/opencart\\/report\\/customer_reward\",\"extension\\/opencart\\/report\\/customer_search\",\"extension\\/opencart\\/report\\/customer_transaction\",\"extension\\/opencart\\/report\\/customer_subscription\",\"extension\\/opencart\\/report\\/marketing\",\"extension\\/opencart\\/report\\/product_purchased\",\"extension\\/opencart\\/report\\/product_viewed\",\"extension\\/opencart\\/report\\/sale_coupon\",\"extension\\/opencart\\/report\\/sale_order\",\"extension\\/opencart\\/report\\/sale_return\",\"extension\\/opencart\\/report\\/sale_shipping\",\"extension\\/opencart\\/report\\/sale_tax\",\"extension\\/opencart\\/shipping\\/flat\",\"extension\\/opencart\\/shipping\\/free\",\"extension\\/opencart\\/shipping\\/item\",\"extension\\/opencart\\/shipping\\/pickup\",\"extension\\/opencart\\/shipping\\/weight\",\"extension\\/opencart\\/theme\\/basic\",\"extension\\/opencart\\/total\\/coupon\",\"extension\\/opencart\\/total\\/credit\",\"extension\\/opencart\\/total\\/handling\",\"extension\\/opencart\\/total\\/low_order_fee\",\"extension\\/opencart\\/total\\/reward\",\"extension\\/opencart\\/total\\/shipping\",\"extension\\/opencart\\/total\\/sub_total\",\"extension\\/opencart\\/total\\/tax\",\"extension\\/opencart\\/total\\/total\",\"extension\\/opencart\\/total\\/voucher\"]}');
INSERT INTO `oc_user_group` VALUES ('2', 'Demonstration', '');

-- ----------------------------
-- Table structure for oc_user_login
-- ----------------------------
DROP TABLE IF EXISTS `oc_user_login`;
CREATE TABLE `oc_user_login` (
  `user_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_user_login
-- ----------------------------
INSERT INTO `oc_user_login` VALUES ('1', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-19 09:59:55');
INSERT INTO `oc_user_login` VALUES ('2', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-20 03:32:22');
INSERT INTO `oc_user_login` VALUES ('3', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-20 03:45:12');
INSERT INTO `oc_user_login` VALUES ('4', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-20 03:48:59');
INSERT INTO `oc_user_login` VALUES ('5', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-20 03:53:59');
INSERT INTO `oc_user_login` VALUES ('6', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-20 04:12:19');
INSERT INTO `oc_user_login` VALUES ('7', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-20 04:51:04');
INSERT INTO `oc_user_login` VALUES ('8', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-20 09:58:08');
INSERT INTO `oc_user_login` VALUES ('9', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-20 10:09:18');
INSERT INTO `oc_user_login` VALUES ('10', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-20 10:11:10');
INSERT INTO `oc_user_login` VALUES ('11', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-20 10:14:30');
INSERT INTO `oc_user_login` VALUES ('12', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-20 10:24:49');
INSERT INTO `oc_user_login` VALUES ('13', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-20 10:58:33');
INSERT INTO `oc_user_login` VALUES ('14', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-20 10:59:20');
INSERT INTO `oc_user_login` VALUES ('15', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-20 11:00:25');
INSERT INTO `oc_user_login` VALUES ('16', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-20 13:00:14');
INSERT INTO `oc_user_login` VALUES ('17', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-20 13:01:29');
INSERT INTO `oc_user_login` VALUES ('18', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-21 02:21:45');
INSERT INTO `oc_user_login` VALUES ('19', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-21 02:22:37');
INSERT INTO `oc_user_login` VALUES ('20', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-22 03:25:52');
INSERT INTO `oc_user_login` VALUES ('21', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-24 02:14:32');
INSERT INTO `oc_user_login` VALUES ('22', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-24 02:17:18');
INSERT INTO `oc_user_login` VALUES ('23', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-24 02:21:09');
INSERT INTO `oc_user_login` VALUES ('24', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-24 02:21:29');
INSERT INTO `oc_user_login` VALUES ('25', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-24 02:21:43');
INSERT INTO `oc_user_login` VALUES ('26', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-24 05:38:37');
INSERT INTO `oc_user_login` VALUES ('27', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-24 05:45:18');
INSERT INTO `oc_user_login` VALUES ('28', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-25 05:31:38');
INSERT INTO `oc_user_login` VALUES ('29', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-25 05:32:41');
INSERT INTO `oc_user_login` VALUES ('30', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-25 08:18:58');

-- ----------------------------
-- Table structure for oc_vendor
-- ----------------------------
DROP TABLE IF EXISTS `oc_vendor`;
CREATE TABLE `oc_vendor` (
  `vendor_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` text NOT NULL,
  `version` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_vendor
-- ----------------------------

-- ----------------------------
-- Table structure for oc_voucher
-- ----------------------------
DROP TABLE IF EXISTS `oc_voucher`;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_voucher
-- ----------------------------

-- ----------------------------
-- Table structure for oc_voucher_history
-- ----------------------------
DROP TABLE IF EXISTS `oc_voucher_history`;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_voucher_history
-- ----------------------------

-- ----------------------------
-- Table structure for oc_voucher_theme
-- ----------------------------
DROP TABLE IF EXISTS `oc_voucher_theme`;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_voucher_theme
-- ----------------------------
INSERT INTO `oc_voucher_theme` VALUES ('6', 'catalog/demo/apple_logo.jpg');
INSERT INTO `oc_voucher_theme` VALUES ('7', 'catalog/demo/gift-voucher-birthday.jpg');
INSERT INTO `oc_voucher_theme` VALUES ('8', 'catalog/demo/canon_eos_5d_2.jpg');

-- ----------------------------
-- Table structure for oc_voucher_theme_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_voucher_theme_description`;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_voucher_theme_description
-- ----------------------------
INSERT INTO `oc_voucher_theme_description` VALUES ('6', '1', 'Christmas');
INSERT INTO `oc_voucher_theme_description` VALUES ('7', '1', 'Birthday');
INSERT INTO `oc_voucher_theme_description` VALUES ('8', '1', 'General');

-- ----------------------------
-- Table structure for oc_weight_class
-- ----------------------------
DROP TABLE IF EXISTS `oc_weight_class`;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  PRIMARY KEY (`weight_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_weight_class
-- ----------------------------
INSERT INTO `oc_weight_class` VALUES ('1', '1.00000000');
INSERT INTO `oc_weight_class` VALUES ('2', '1000.00000000');
INSERT INTO `oc_weight_class` VALUES ('5', '2.20460000');
INSERT INTO `oc_weight_class` VALUES ('6', '35.27400000');

-- ----------------------------
-- Table structure for oc_weight_class_description
-- ----------------------------
DROP TABLE IF EXISTS `oc_weight_class_description`;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_weight_class_description
-- ----------------------------
INSERT INTO `oc_weight_class_description` VALUES ('1', '1', 'Kilogram', 'kg');
INSERT INTO `oc_weight_class_description` VALUES ('2', '1', 'Gram', 'g');
INSERT INTO `oc_weight_class_description` VALUES ('5', '1', 'Pound ', 'lb');
INSERT INTO `oc_weight_class_description` VALUES ('6', '1', 'Ounce', 'oz');

-- ----------------------------
-- Table structure for oc_zone
-- ----------------------------
DROP TABLE IF EXISTS `oc_zone`;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4344 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_zone
-- ----------------------------
INSERT INTO `oc_zone` VALUES ('1', '1', 'Badakhshan', 'BDS', '1');
INSERT INTO `oc_zone` VALUES ('2', '1', 'Badghis', 'BDG', '1');
INSERT INTO `oc_zone` VALUES ('3', '1', 'Baghlan', 'BGL', '1');
INSERT INTO `oc_zone` VALUES ('4', '1', 'Balkh', 'BAL', '1');
INSERT INTO `oc_zone` VALUES ('5', '1', 'Bamian', 'BAM', '1');
INSERT INTO `oc_zone` VALUES ('6', '1', 'Farah', 'FRA', '1');
INSERT INTO `oc_zone` VALUES ('7', '1', 'Faryab', 'FYB', '1');
INSERT INTO `oc_zone` VALUES ('8', '1', 'Ghazni', 'GHA', '1');
INSERT INTO `oc_zone` VALUES ('9', '1', 'Ghowr', 'GHO', '1');
INSERT INTO `oc_zone` VALUES ('10', '1', 'Helmand', 'HEL', '1');
INSERT INTO `oc_zone` VALUES ('11', '1', 'Herat', 'HER', '1');
INSERT INTO `oc_zone` VALUES ('12', '1', 'Jowzjan', 'JOW', '1');
INSERT INTO `oc_zone` VALUES ('13', '1', 'Kabul', 'KAB', '1');
INSERT INTO `oc_zone` VALUES ('14', '1', 'Kandahar', 'KAN', '1');
INSERT INTO `oc_zone` VALUES ('15', '1', 'Kapisa', 'KAP', '1');
INSERT INTO `oc_zone` VALUES ('16', '1', 'Khost', 'KHO', '1');
INSERT INTO `oc_zone` VALUES ('17', '1', 'Konar', 'KNR', '1');
INSERT INTO `oc_zone` VALUES ('18', '1', 'Kondoz', 'KDZ', '1');
INSERT INTO `oc_zone` VALUES ('19', '1', 'Laghman', 'LAG', '1');
INSERT INTO `oc_zone` VALUES ('20', '1', 'Lowgar', 'LOW', '1');
INSERT INTO `oc_zone` VALUES ('21', '1', 'Nangrahar', 'NAN', '1');
INSERT INTO `oc_zone` VALUES ('22', '1', 'Nimruz', 'NIM', '1');
INSERT INTO `oc_zone` VALUES ('23', '1', 'Nurestan', 'NUR', '1');
INSERT INTO `oc_zone` VALUES ('24', '1', 'Oruzgan', 'ORU', '1');
INSERT INTO `oc_zone` VALUES ('25', '1', 'Paktia', 'PIA', '1');
INSERT INTO `oc_zone` VALUES ('26', '1', 'Paktika', 'PKA', '1');
INSERT INTO `oc_zone` VALUES ('27', '1', 'Parwan', 'PAR', '1');
INSERT INTO `oc_zone` VALUES ('28', '1', 'Samangan', 'SAM', '1');
INSERT INTO `oc_zone` VALUES ('29', '1', 'Sar-e Pol', 'SAR', '1');
INSERT INTO `oc_zone` VALUES ('30', '1', 'Takhar', 'TAK', '1');
INSERT INTO `oc_zone` VALUES ('31', '1', 'Wardak', 'WAR', '1');
INSERT INTO `oc_zone` VALUES ('32', '1', 'Zabol', 'ZAB', '1');
INSERT INTO `oc_zone` VALUES ('33', '2', 'Berat', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('34', '2', 'Bulqize', 'BU', '1');
INSERT INTO `oc_zone` VALUES ('35', '2', 'Delvine', 'DL', '1');
INSERT INTO `oc_zone` VALUES ('36', '2', 'Devoll', 'DV', '1');
INSERT INTO `oc_zone` VALUES ('37', '2', 'Diber', 'DI', '1');
INSERT INTO `oc_zone` VALUES ('38', '2', 'Durres', 'DR', '1');
INSERT INTO `oc_zone` VALUES ('39', '2', 'Elbasan', 'EL', '1');
INSERT INTO `oc_zone` VALUES ('40', '2', 'Kolonje', 'ER', '1');
INSERT INTO `oc_zone` VALUES ('41', '2', 'Fier', 'FR', '1');
INSERT INTO `oc_zone` VALUES ('42', '2', 'Gjirokaster', 'GJ', '1');
INSERT INTO `oc_zone` VALUES ('43', '2', 'Gramsh', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('44', '2', 'Has', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('45', '2', 'Kavaje', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('46', '2', 'Kurbin', 'KB', '1');
INSERT INTO `oc_zone` VALUES ('47', '2', 'Kucove', 'KC', '1');
INSERT INTO `oc_zone` VALUES ('48', '2', 'Korce', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('49', '2', 'Kruje', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('50', '2', 'Kukes', 'KU', '1');
INSERT INTO `oc_zone` VALUES ('51', '2', 'Librazhd', 'LB', '1');
INSERT INTO `oc_zone` VALUES ('52', '2', 'Lezhe', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('53', '2', 'Lushnje', 'LU', '1');
INSERT INTO `oc_zone` VALUES ('54', '2', 'Malesi e Madhe', 'MM', '1');
INSERT INTO `oc_zone` VALUES ('55', '2', 'Mallakaster', 'MK', '1');
INSERT INTO `oc_zone` VALUES ('56', '2', 'Mat', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('57', '2', 'Mirdite', 'MR', '1');
INSERT INTO `oc_zone` VALUES ('58', '2', 'Peqin', 'PQ', '1');
INSERT INTO `oc_zone` VALUES ('59', '2', 'Permet', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('60', '2', 'Pogradec', 'PG', '1');
INSERT INTO `oc_zone` VALUES ('61', '2', 'Puke', 'PU', '1');
INSERT INTO `oc_zone` VALUES ('62', '2', 'Shkoder', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('63', '2', 'Skrapar', 'SK', '1');
INSERT INTO `oc_zone` VALUES ('64', '2', 'Sarande', 'SR', '1');
INSERT INTO `oc_zone` VALUES ('65', '2', 'Tepelene', 'TE', '1');
INSERT INTO `oc_zone` VALUES ('66', '2', 'Tropoje', 'TP', '1');
INSERT INTO `oc_zone` VALUES ('67', '2', 'Tirane', 'TR', '1');
INSERT INTO `oc_zone` VALUES ('68', '2', 'Vlore', 'VL', '1');
INSERT INTO `oc_zone` VALUES ('69', '3', 'Adrar', '01', '1');
INSERT INTO `oc_zone` VALUES ('70', '3', 'Ain Defla', '44', '1');
INSERT INTO `oc_zone` VALUES ('71', '3', 'Ain Temouchent', '46', '1');
INSERT INTO `oc_zone` VALUES ('72', '3', 'Alger', '16', '1');
INSERT INTO `oc_zone` VALUES ('73', '3', 'Annaba', '23', '1');
INSERT INTO `oc_zone` VALUES ('74', '3', 'Batna', '05', '1');
INSERT INTO `oc_zone` VALUES ('75', '3', 'Bechar', '08', '1');
INSERT INTO `oc_zone` VALUES ('76', '3', 'Bejaia', '06', '1');
INSERT INTO `oc_zone` VALUES ('77', '3', 'Biskra', '07', '1');
INSERT INTO `oc_zone` VALUES ('78', '3', 'Blida', '09', '1');
INSERT INTO `oc_zone` VALUES ('79', '3', 'Bordj Bou Arreridj', '34', '1');
INSERT INTO `oc_zone` VALUES ('80', '3', 'Bouira', '10', '1');
INSERT INTO `oc_zone` VALUES ('81', '3', 'Boumerdes', '35', '1');
INSERT INTO `oc_zone` VALUES ('82', '3', 'Chlef', '02', '1');
INSERT INTO `oc_zone` VALUES ('83', '3', 'Constantine', '26', '1');
INSERT INTO `oc_zone` VALUES ('84', '3', 'Djelfa', '17', '1');
INSERT INTO `oc_zone` VALUES ('85', '3', 'El Bayadh', '32', '1');
INSERT INTO `oc_zone` VALUES ('86', '3', 'El Oued', '39', '1');
INSERT INTO `oc_zone` VALUES ('87', '3', 'El Tarf', '36', '1');
INSERT INTO `oc_zone` VALUES ('88', '3', 'Ghardaia', '47', '1');
INSERT INTO `oc_zone` VALUES ('89', '3', 'Guelma', '24', '1');
INSERT INTO `oc_zone` VALUES ('90', '3', 'Illizi', '33', '1');
INSERT INTO `oc_zone` VALUES ('91', '3', 'Jijel', '18', '1');
INSERT INTO `oc_zone` VALUES ('92', '3', 'Khenchela', '40', '1');
INSERT INTO `oc_zone` VALUES ('93', '3', 'Laghouat', '03', '1');
INSERT INTO `oc_zone` VALUES ('94', '3', 'Mascara', '29', '1');
INSERT INTO `oc_zone` VALUES ('95', '3', 'Medea', '26', '1');
INSERT INTO `oc_zone` VALUES ('96', '3', 'Mila', '43', '1');
INSERT INTO `oc_zone` VALUES ('97', '3', 'Mostaganem', '27', '1');
INSERT INTO `oc_zone` VALUES ('98', '3', 'M\'Sila', '28', '1');
INSERT INTO `oc_zone` VALUES ('99', '3', 'Naama', '45', '1');
INSERT INTO `oc_zone` VALUES ('100', '3', 'Oran', '31', '1');
INSERT INTO `oc_zone` VALUES ('101', '3', 'Ouargla', '30', '1');
INSERT INTO `oc_zone` VALUES ('102', '3', 'Oum el-Bouaghi', '04', '1');
INSERT INTO `oc_zone` VALUES ('103', '3', 'Relizane', '48', '1');
INSERT INTO `oc_zone` VALUES ('104', '3', 'Saida', '20', '1');
INSERT INTO `oc_zone` VALUES ('105', '3', 'Setif', '19', '1');
INSERT INTO `oc_zone` VALUES ('106', '3', 'Sidi Bel Abbes', '22', '1');
INSERT INTO `oc_zone` VALUES ('107', '3', 'Skikda', '21', '1');
INSERT INTO `oc_zone` VALUES ('108', '3', 'Souk Ahras', '41', '1');
INSERT INTO `oc_zone` VALUES ('109', '3', 'Tamanrasset', '11', '1');
INSERT INTO `oc_zone` VALUES ('110', '3', 'Tebessa', '12', '1');
INSERT INTO `oc_zone` VALUES ('111', '3', 'Tiaret', '14', '1');
INSERT INTO `oc_zone` VALUES ('112', '3', 'Tindouf', '37', '1');
INSERT INTO `oc_zone` VALUES ('113', '3', 'Tipaza', '42', '1');
INSERT INTO `oc_zone` VALUES ('114', '3', 'Tissemsilt', '38', '1');
INSERT INTO `oc_zone` VALUES ('115', '3', 'Tizi Ouzou', '15', '1');
INSERT INTO `oc_zone` VALUES ('116', '3', 'Tlemcen', '13', '1');
INSERT INTO `oc_zone` VALUES ('117', '4', 'Eastern', 'E', '1');
INSERT INTO `oc_zone` VALUES ('118', '4', 'Manu\'a', 'M', '1');
INSERT INTO `oc_zone` VALUES ('119', '4', 'Rose Island', 'R', '1');
INSERT INTO `oc_zone` VALUES ('120', '4', 'Swains Island', 'S', '1');
INSERT INTO `oc_zone` VALUES ('121', '4', 'Western', 'W', '1');
INSERT INTO `oc_zone` VALUES ('122', '5', 'Andorra la Vella', 'ALV', '1');
INSERT INTO `oc_zone` VALUES ('123', '5', 'Canillo', 'CAN', '1');
INSERT INTO `oc_zone` VALUES ('124', '5', 'Encamp', 'ENC', '1');
INSERT INTO `oc_zone` VALUES ('125', '5', 'Escaldes-Engordany', 'ESE', '1');
INSERT INTO `oc_zone` VALUES ('126', '5', 'La Massana', 'LMA', '1');
INSERT INTO `oc_zone` VALUES ('127', '5', 'Ordino', 'ORD', '1');
INSERT INTO `oc_zone` VALUES ('128', '5', 'Sant Julia de Loria', 'SJL', '1');
INSERT INTO `oc_zone` VALUES ('129', '6', 'Bengo', 'BGO', '1');
INSERT INTO `oc_zone` VALUES ('130', '6', 'Benguela', 'BGU', '1');
INSERT INTO `oc_zone` VALUES ('131', '6', 'Bie', 'BIE', '1');
INSERT INTO `oc_zone` VALUES ('132', '6', 'Cabinda', 'CAB', '1');
INSERT INTO `oc_zone` VALUES ('133', '6', 'Cuando-Cubango', 'CCU', '1');
INSERT INTO `oc_zone` VALUES ('134', '6', 'Cuanza Norte', 'CNO', '1');
INSERT INTO `oc_zone` VALUES ('135', '6', 'Cuanza Sul', 'CUS', '1');
INSERT INTO `oc_zone` VALUES ('136', '6', 'Cunene', 'CNN', '1');
INSERT INTO `oc_zone` VALUES ('137', '6', 'Huambo', 'HUA', '1');
INSERT INTO `oc_zone` VALUES ('138', '6', 'Huila', 'HUI', '1');
INSERT INTO `oc_zone` VALUES ('139', '6', 'Luanda', 'LUA', '1');
INSERT INTO `oc_zone` VALUES ('140', '6', 'Lunda Norte', 'LNO', '1');
INSERT INTO `oc_zone` VALUES ('141', '6', 'Lunda Sul', 'LSU', '1');
INSERT INTO `oc_zone` VALUES ('142', '6', 'Malange', 'MAL', '1');
INSERT INTO `oc_zone` VALUES ('143', '6', 'Moxico', 'MOX', '1');
INSERT INTO `oc_zone` VALUES ('144', '6', 'Namibe', 'NAM', '1');
INSERT INTO `oc_zone` VALUES ('145', '6', 'Uige', 'UIG', '1');
INSERT INTO `oc_zone` VALUES ('146', '6', 'Zaire', 'ZAI', '1');
INSERT INTO `oc_zone` VALUES ('147', '9', 'Saint George', 'ASG', '1');
INSERT INTO `oc_zone` VALUES ('148', '9', 'Saint John', 'ASJ', '1');
INSERT INTO `oc_zone` VALUES ('149', '9', 'Saint Mary', 'ASM', '1');
INSERT INTO `oc_zone` VALUES ('150', '9', 'Saint Paul', 'ASL', '1');
INSERT INTO `oc_zone` VALUES ('151', '9', 'Saint Peter', 'ASR', '1');
INSERT INTO `oc_zone` VALUES ('152', '9', 'Saint Philip', 'ASH', '1');
INSERT INTO `oc_zone` VALUES ('153', '9', 'Barbuda', 'BAR', '1');
INSERT INTO `oc_zone` VALUES ('154', '9', 'Redonda', 'RED', '1');
INSERT INTO `oc_zone` VALUES ('155', '10', 'Antartida e Islas del Atlantico', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('156', '10', 'Buenos Aires', 'B', '1');
INSERT INTO `oc_zone` VALUES ('157', '10', 'Catamarca', 'K', '1');
INSERT INTO `oc_zone` VALUES ('158', '10', 'Chaco', 'H', '1');
INSERT INTO `oc_zone` VALUES ('159', '10', 'Chubut', 'U', '1');
INSERT INTO `oc_zone` VALUES ('160', '10', 'Cordoba', 'X', '1');
INSERT INTO `oc_zone` VALUES ('161', '10', 'Corrientes', 'W', '1');
INSERT INTO `oc_zone` VALUES ('162', '10', 'Ciudad Autónoma de Buenos Aires', 'C', '1');
INSERT INTO `oc_zone` VALUES ('163', '10', 'Entre Rios', 'E', '1');
INSERT INTO `oc_zone` VALUES ('164', '10', 'Formosa', 'P', '1');
INSERT INTO `oc_zone` VALUES ('165', '10', 'Jujuy', 'Y', '1');
INSERT INTO `oc_zone` VALUES ('166', '10', 'La Pampa', 'L', '1');
INSERT INTO `oc_zone` VALUES ('167', '10', 'La Rioja', 'F', '1');
INSERT INTO `oc_zone` VALUES ('168', '10', 'Mendoza', 'M', '1');
INSERT INTO `oc_zone` VALUES ('169', '10', 'Misiones', 'N', '1');
INSERT INTO `oc_zone` VALUES ('170', '10', 'Neuquen', 'Q', '1');
INSERT INTO `oc_zone` VALUES ('171', '10', 'Rio Negro', 'R', '1');
INSERT INTO `oc_zone` VALUES ('172', '10', 'Salta', 'A', '1');
INSERT INTO `oc_zone` VALUES ('173', '10', 'San Juan', 'J', '1');
INSERT INTO `oc_zone` VALUES ('174', '10', 'San Luis', 'D', '1');
INSERT INTO `oc_zone` VALUES ('175', '10', 'Santa Cruz', 'Z', '1');
INSERT INTO `oc_zone` VALUES ('176', '10', 'Santa Fe', 'S', '1');
INSERT INTO `oc_zone` VALUES ('177', '10', 'Santiago del Estero', 'G', '1');
INSERT INTO `oc_zone` VALUES ('178', '10', 'Tierra del Fuego', 'V', '1');
INSERT INTO `oc_zone` VALUES ('179', '10', 'Tucuman', 'T', '1');
INSERT INTO `oc_zone` VALUES ('180', '11', 'Aragatsotn', 'AGT', '1');
INSERT INTO `oc_zone` VALUES ('181', '11', 'Ararat', 'ARR', '1');
INSERT INTO `oc_zone` VALUES ('182', '11', 'Armavir', 'ARM', '1');
INSERT INTO `oc_zone` VALUES ('183', '11', 'Geghark\'unik\'', 'GEG', '1');
INSERT INTO `oc_zone` VALUES ('184', '11', 'Kotayk\'', 'KOT', '1');
INSERT INTO `oc_zone` VALUES ('185', '11', 'Lorri', 'LOR', '1');
INSERT INTO `oc_zone` VALUES ('186', '11', 'Shirak', 'SHI', '1');
INSERT INTO `oc_zone` VALUES ('187', '11', 'Syunik\'', 'SYU', '1');
INSERT INTO `oc_zone` VALUES ('188', '11', 'Tavush', 'TAV', '1');
INSERT INTO `oc_zone` VALUES ('189', '11', 'Vayots\' Dzor', 'VAY', '1');
INSERT INTO `oc_zone` VALUES ('190', '11', 'Yerevan', 'YER', '1');
INSERT INTO `oc_zone` VALUES ('191', '13', 'Australian Capital Territory', 'ACT', '1');
INSERT INTO `oc_zone` VALUES ('192', '13', 'New South Wales', 'NSW', '1');
INSERT INTO `oc_zone` VALUES ('193', '13', 'Northern Territory', 'NT', '1');
INSERT INTO `oc_zone` VALUES ('194', '13', 'Queensland', 'QLD', '1');
INSERT INTO `oc_zone` VALUES ('195', '13', 'South Australia', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('196', '13', 'Tasmania', 'TAS', '1');
INSERT INTO `oc_zone` VALUES ('197', '13', 'Victoria', 'VIC', '1');
INSERT INTO `oc_zone` VALUES ('198', '13', 'Western Australia', 'WA', '1');
INSERT INTO `oc_zone` VALUES ('199', '14', 'Burgenland', '1', '1');
INSERT INTO `oc_zone` VALUES ('200', '14', 'Kärnten', '2', '1');
INSERT INTO `oc_zone` VALUES ('201', '14', 'Niederösterreich', '3', '1');
INSERT INTO `oc_zone` VALUES ('202', '14', 'Oberösterreich', '4', '1');
INSERT INTO `oc_zone` VALUES ('203', '14', 'Salzburg', '5', '1');
INSERT INTO `oc_zone` VALUES ('204', '14', 'Steiermark', '6', '1');
INSERT INTO `oc_zone` VALUES ('205', '14', 'Tirol', '7', '1');
INSERT INTO `oc_zone` VALUES ('206', '14', 'Vorarlberg', '8', '1');
INSERT INTO `oc_zone` VALUES ('207', '14', 'Wien', '9', '1');
INSERT INTO `oc_zone` VALUES ('208', '15', 'Ali Bayramli', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('209', '15', 'Abseron', 'ABS', '1');
INSERT INTO `oc_zone` VALUES ('210', '15', 'AgcabAdi', 'AGC', '1');
INSERT INTO `oc_zone` VALUES ('211', '15', 'Agdam', 'AGM', '1');
INSERT INTO `oc_zone` VALUES ('212', '15', 'Agdas', 'AGS', '1');
INSERT INTO `oc_zone` VALUES ('213', '15', 'Agstafa', 'AGA', '1');
INSERT INTO `oc_zone` VALUES ('214', '15', 'Agsu', 'AGU', '1');
INSERT INTO `oc_zone` VALUES ('215', '15', 'Astara', 'AST', '1');
INSERT INTO `oc_zone` VALUES ('216', '15', 'Baki', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('217', '15', 'BabAk', 'BAB', '1');
INSERT INTO `oc_zone` VALUES ('218', '15', 'BalakAn', 'BAL', '1');
INSERT INTO `oc_zone` VALUES ('219', '15', 'BArdA', 'BAR', '1');
INSERT INTO `oc_zone` VALUES ('220', '15', 'Beylaqan', 'BEY', '1');
INSERT INTO `oc_zone` VALUES ('221', '15', 'Bilasuvar', 'BIL', '1');
INSERT INTO `oc_zone` VALUES ('222', '15', 'Cabrayil', 'CAB', '1');
INSERT INTO `oc_zone` VALUES ('223', '15', 'Calilabab', 'CAL', '1');
INSERT INTO `oc_zone` VALUES ('224', '15', 'Culfa', 'CUL', '1');
INSERT INTO `oc_zone` VALUES ('225', '15', 'Daskasan', 'DAS', '1');
INSERT INTO `oc_zone` VALUES ('226', '15', 'Davaci', 'DAV', '1');
INSERT INTO `oc_zone` VALUES ('227', '15', 'Fuzuli', 'FUZ', '1');
INSERT INTO `oc_zone` VALUES ('228', '15', 'Ganca', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('229', '15', 'Gadabay', 'GAD', '1');
INSERT INTO `oc_zone` VALUES ('230', '15', 'Goranboy', 'GOR', '1');
INSERT INTO `oc_zone` VALUES ('231', '15', 'Goycay', 'GOY', '1');
INSERT INTO `oc_zone` VALUES ('232', '15', 'Haciqabul', 'HAC', '1');
INSERT INTO `oc_zone` VALUES ('233', '15', 'Imisli', 'IMI', '1');
INSERT INTO `oc_zone` VALUES ('234', '15', 'Ismayilli', 'ISM', '1');
INSERT INTO `oc_zone` VALUES ('235', '15', 'Kalbacar', 'KAL', '1');
INSERT INTO `oc_zone` VALUES ('236', '15', 'Kurdamir', 'KUR', '1');
INSERT INTO `oc_zone` VALUES ('237', '15', 'Lankaran', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('238', '15', 'Lacin', 'LAC', '1');
INSERT INTO `oc_zone` VALUES ('239', '15', 'Lankaran', 'LAN', '1');
INSERT INTO `oc_zone` VALUES ('240', '15', 'Lerik', 'LER', '1');
INSERT INTO `oc_zone` VALUES ('241', '15', 'Masalli', 'MAS', '1');
INSERT INTO `oc_zone` VALUES ('242', '15', 'Mingacevir', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('243', '15', 'Naftalan', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('244', '15', 'Neftcala', 'NEF', '1');
INSERT INTO `oc_zone` VALUES ('245', '15', 'Oguz', 'OGU', '1');
INSERT INTO `oc_zone` VALUES ('246', '15', 'Ordubad', 'ORD', '1');
INSERT INTO `oc_zone` VALUES ('247', '15', 'Qabala', 'QAB', '1');
INSERT INTO `oc_zone` VALUES ('248', '15', 'Qax', 'QAX', '1');
INSERT INTO `oc_zone` VALUES ('249', '15', 'Qazax', 'QAZ', '1');
INSERT INTO `oc_zone` VALUES ('250', '15', 'Qobustan', 'QOB', '1');
INSERT INTO `oc_zone` VALUES ('251', '15', 'Quba', 'QBA', '1');
INSERT INTO `oc_zone` VALUES ('252', '15', 'Qubadli', 'QBI', '1');
INSERT INTO `oc_zone` VALUES ('253', '15', 'Qusar', 'QUS', '1');
INSERT INTO `oc_zone` VALUES ('254', '15', 'Saki', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('255', '15', 'Saatli', 'SAT', '1');
INSERT INTO `oc_zone` VALUES ('256', '15', 'Sabirabad', 'SAB', '1');
INSERT INTO `oc_zone` VALUES ('257', '15', 'Sadarak', 'SAD', '1');
INSERT INTO `oc_zone` VALUES ('258', '15', 'Sahbuz', 'SAH', '1');
INSERT INTO `oc_zone` VALUES ('259', '15', 'Saki', 'SAK', '1');
INSERT INTO `oc_zone` VALUES ('260', '15', 'Salyan', 'SAL', '1');
INSERT INTO `oc_zone` VALUES ('261', '15', 'Sumqayit', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('262', '15', 'Samaxi', 'SMI', '1');
INSERT INTO `oc_zone` VALUES ('263', '15', 'Samkir', 'SKR', '1');
INSERT INTO `oc_zone` VALUES ('264', '15', 'Samux', 'SMX', '1');
INSERT INTO `oc_zone` VALUES ('265', '15', 'Sarur', 'SAR', '1');
INSERT INTO `oc_zone` VALUES ('266', '15', 'Siyazan', 'SIY', '1');
INSERT INTO `oc_zone` VALUES ('267', '15', 'Susa', 'SS', '1');
INSERT INTO `oc_zone` VALUES ('268', '15', 'Susa', 'SUS', '1');
INSERT INTO `oc_zone` VALUES ('269', '15', 'Tartar', 'TAR', '1');
INSERT INTO `oc_zone` VALUES ('270', '15', 'Tovuz', 'TOV', '1');
INSERT INTO `oc_zone` VALUES ('271', '15', 'Ucar', 'UCA', '1');
INSERT INTO `oc_zone` VALUES ('272', '15', 'Xankandi', 'XA', '1');
INSERT INTO `oc_zone` VALUES ('273', '15', 'Xacmaz', 'XAC', '1');
INSERT INTO `oc_zone` VALUES ('274', '15', 'Xanlar', 'XAN', '1');
INSERT INTO `oc_zone` VALUES ('275', '15', 'Xizi', 'XIZ', '1');
INSERT INTO `oc_zone` VALUES ('276', '15', 'Xocali', 'XCI', '1');
INSERT INTO `oc_zone` VALUES ('277', '15', 'Xocavand', 'XVD', '1');
INSERT INTO `oc_zone` VALUES ('278', '15', 'Yardimli', 'YAR', '1');
INSERT INTO `oc_zone` VALUES ('279', '15', 'Yevlax', 'YEV', '1');
INSERT INTO `oc_zone` VALUES ('280', '15', 'Zangilan', 'ZAN', '1');
INSERT INTO `oc_zone` VALUES ('281', '15', 'Zaqatala', 'ZAQ', '1');
INSERT INTO `oc_zone` VALUES ('282', '15', 'Zardab', 'ZAR', '1');
INSERT INTO `oc_zone` VALUES ('283', '15', 'Naxcivan', 'NX', '1');
INSERT INTO `oc_zone` VALUES ('284', '16', 'Acklins', 'ACK', '1');
INSERT INTO `oc_zone` VALUES ('285', '16', 'Berry Islands', 'BER', '1');
INSERT INTO `oc_zone` VALUES ('286', '16', 'Bimini', 'BIM', '1');
INSERT INTO `oc_zone` VALUES ('287', '16', 'Black Point', 'BLK', '1');
INSERT INTO `oc_zone` VALUES ('288', '16', 'Cat Island', 'CAT', '1');
INSERT INTO `oc_zone` VALUES ('289', '16', 'Central Abaco', 'CAB', '1');
INSERT INTO `oc_zone` VALUES ('290', '16', 'Central Andros', 'CAN', '1');
INSERT INTO `oc_zone` VALUES ('291', '16', 'Central Eleuthera', 'CEL', '1');
INSERT INTO `oc_zone` VALUES ('292', '16', 'City of Freeport', 'FRE', '1');
INSERT INTO `oc_zone` VALUES ('293', '16', 'Crooked Island', 'CRO', '1');
INSERT INTO `oc_zone` VALUES ('294', '16', 'East Grand Bahama', 'EGB', '1');
INSERT INTO `oc_zone` VALUES ('295', '16', 'Exuma', 'EXU', '1');
INSERT INTO `oc_zone` VALUES ('296', '16', 'Grand Cay', 'GRD', '1');
INSERT INTO `oc_zone` VALUES ('297', '16', 'Harbour Island', 'HAR', '1');
INSERT INTO `oc_zone` VALUES ('298', '16', 'Hope Town', 'HOP', '1');
INSERT INTO `oc_zone` VALUES ('299', '16', 'Inagua', 'INA', '1');
INSERT INTO `oc_zone` VALUES ('300', '16', 'Long Island', 'LNG', '1');
INSERT INTO `oc_zone` VALUES ('301', '16', 'Mangrove Cay', 'MAN', '1');
INSERT INTO `oc_zone` VALUES ('302', '16', 'Mayaguana', 'MAY', '1');
INSERT INTO `oc_zone` VALUES ('303', '16', 'Moore\'s Island', 'MOO', '1');
INSERT INTO `oc_zone` VALUES ('304', '16', 'North Abaco', 'NAB', '1');
INSERT INTO `oc_zone` VALUES ('305', '16', 'North Andros', 'NAN', '1');
INSERT INTO `oc_zone` VALUES ('306', '16', 'North Eleuthera', 'NEL', '1');
INSERT INTO `oc_zone` VALUES ('307', '16', 'Ragged Island', 'RAG', '1');
INSERT INTO `oc_zone` VALUES ('308', '16', 'Rum Cay', 'RUM', '1');
INSERT INTO `oc_zone` VALUES ('309', '16', 'San Salvador', 'SAL', '1');
INSERT INTO `oc_zone` VALUES ('310', '16', 'South Abaco', 'SAB', '1');
INSERT INTO `oc_zone` VALUES ('311', '16', 'South Andros', 'SAN', '1');
INSERT INTO `oc_zone` VALUES ('312', '16', 'South Eleuthera', 'SEL', '1');
INSERT INTO `oc_zone` VALUES ('313', '16', 'Spanish Wells', 'SWE', '1');
INSERT INTO `oc_zone` VALUES ('314', '16', 'West Grand Bahama', 'WGB', '1');
INSERT INTO `oc_zone` VALUES ('315', '17', 'Capital', 'CAP', '1');
INSERT INTO `oc_zone` VALUES ('316', '17', 'Central', 'CEN', '1');
INSERT INTO `oc_zone` VALUES ('317', '17', 'Muharraq', 'MUH', '1');
INSERT INTO `oc_zone` VALUES ('318', '17', 'Northern', 'NOR', '1');
INSERT INTO `oc_zone` VALUES ('319', '17', 'Southern', 'SOU', '1');
INSERT INTO `oc_zone` VALUES ('320', '18', 'Barisal', 'BAR', '1');
INSERT INTO `oc_zone` VALUES ('321', '18', 'Chittagong', 'CHI', '1');
INSERT INTO `oc_zone` VALUES ('322', '18', 'Dhaka', 'DHA', '1');
INSERT INTO `oc_zone` VALUES ('323', '18', 'Khulna', 'KHU', '1');
INSERT INTO `oc_zone` VALUES ('324', '18', 'Rajshahi', 'RAJ', '1');
INSERT INTO `oc_zone` VALUES ('325', '18', 'Sylhet', 'SYL', '1');
INSERT INTO `oc_zone` VALUES ('326', '19', 'Christ Church', 'CC', '1');
INSERT INTO `oc_zone` VALUES ('327', '19', 'Saint Andrew', 'AND', '1');
INSERT INTO `oc_zone` VALUES ('328', '19', 'Saint George', 'GEO', '1');
INSERT INTO `oc_zone` VALUES ('329', '19', 'Saint James', 'JAM', '1');
INSERT INTO `oc_zone` VALUES ('330', '19', 'Saint John', 'JOH', '1');
INSERT INTO `oc_zone` VALUES ('331', '19', 'Saint Joseph', 'JOS', '1');
INSERT INTO `oc_zone` VALUES ('332', '19', 'Saint Lucy', 'LUC', '1');
INSERT INTO `oc_zone` VALUES ('333', '19', 'Saint Michael', 'MIC', '1');
INSERT INTO `oc_zone` VALUES ('334', '19', 'Saint Peter', 'PET', '1');
INSERT INTO `oc_zone` VALUES ('335', '19', 'Saint Philip', 'PHI', '1');
INSERT INTO `oc_zone` VALUES ('336', '19', 'Saint Thomas', 'THO', '1');
INSERT INTO `oc_zone` VALUES ('337', '20', 'Brestskaya (Brest)', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('338', '20', 'Homyel\'skaya (Homyel\')', 'HO', '1');
INSERT INTO `oc_zone` VALUES ('339', '20', 'Horad Minsk', 'HM', '1');
INSERT INTO `oc_zone` VALUES ('340', '20', 'Hrodzyenskaya (Hrodna)', 'HR', '1');
INSERT INTO `oc_zone` VALUES ('341', '20', 'Mahilyowskaya (Mahilyow)', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('342', '20', 'Minskaya', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('343', '20', 'Vitsyebskaya (Vitsyebsk)', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('344', '21', 'Antwerpen', 'VAN', '1');
INSERT INTO `oc_zone` VALUES ('345', '21', 'Brabant Wallon', 'WBR', '1');
INSERT INTO `oc_zone` VALUES ('346', '21', 'Hainaut', 'WHT', '1');
INSERT INTO `oc_zone` VALUES ('347', '21', 'Liège', 'WLG', '1');
INSERT INTO `oc_zone` VALUES ('348', '21', 'Limburg', 'VLI', '1');
INSERT INTO `oc_zone` VALUES ('349', '21', 'Luxembourg', 'WLX', '1');
INSERT INTO `oc_zone` VALUES ('350', '21', 'Namur', 'WNA', '1');
INSERT INTO `oc_zone` VALUES ('351', '21', 'Oost-Vlaanderen', 'VOV', '1');
INSERT INTO `oc_zone` VALUES ('352', '21', 'Vlaams Brabant', 'VBR', '1');
INSERT INTO `oc_zone` VALUES ('353', '21', 'West-Vlaanderen', 'VWV', '1');
INSERT INTO `oc_zone` VALUES ('354', '22', 'Belize', 'BZ', '1');
INSERT INTO `oc_zone` VALUES ('355', '22', 'Cayo', 'CY', '1');
INSERT INTO `oc_zone` VALUES ('356', '22', 'Corozal', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('357', '22', 'Orange Walk', 'OW', '1');
INSERT INTO `oc_zone` VALUES ('358', '22', 'Stann Creek', 'SC', '1');
INSERT INTO `oc_zone` VALUES ('359', '22', 'Toledo', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('360', '23', 'Alibori', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('361', '23', 'Atakora', 'AK', '1');
INSERT INTO `oc_zone` VALUES ('362', '23', 'Atlantique', 'AQ', '1');
INSERT INTO `oc_zone` VALUES ('363', '23', 'Borgou', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('364', '23', 'Collines', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('365', '23', 'Donga', 'DO', '1');
INSERT INTO `oc_zone` VALUES ('366', '23', 'Kouffo', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('367', '23', 'Littoral', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('368', '23', 'Mono', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('369', '23', 'Oueme', 'OU', '1');
INSERT INTO `oc_zone` VALUES ('370', '23', 'Plateau', 'PL', '1');
INSERT INTO `oc_zone` VALUES ('371', '23', 'Zou', 'ZO', '1');
INSERT INTO `oc_zone` VALUES ('372', '24', 'Devonshire', 'DS', '1');
INSERT INTO `oc_zone` VALUES ('373', '24', 'Hamilton City', 'HC', '1');
INSERT INTO `oc_zone` VALUES ('374', '24', 'Hamilton', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('375', '24', 'Paget', 'PG', '1');
INSERT INTO `oc_zone` VALUES ('376', '24', 'Pembroke', 'PB', '1');
INSERT INTO `oc_zone` VALUES ('377', '24', 'Saint George City', 'GC', '1');
INSERT INTO `oc_zone` VALUES ('378', '24', 'Saint George\'s', 'SG', '1');
INSERT INTO `oc_zone` VALUES ('379', '24', 'Sandys', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('380', '24', 'Smith\'s', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('381', '24', 'Southampton', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('382', '24', 'Warwick', 'WA', '1');
INSERT INTO `oc_zone` VALUES ('383', '25', 'Bumthang', 'BUM', '1');
INSERT INTO `oc_zone` VALUES ('384', '25', 'Chukha', 'CHU', '1');
INSERT INTO `oc_zone` VALUES ('385', '25', 'Dagana', 'DAG', '1');
INSERT INTO `oc_zone` VALUES ('386', '25', 'Gasa', 'GAS', '1');
INSERT INTO `oc_zone` VALUES ('387', '25', 'Haa', 'HAA', '1');
INSERT INTO `oc_zone` VALUES ('388', '25', 'Lhuntse', 'LHU', '1');
INSERT INTO `oc_zone` VALUES ('389', '25', 'Mongar', 'MON', '1');
INSERT INTO `oc_zone` VALUES ('390', '25', 'Paro', 'PAR', '1');
INSERT INTO `oc_zone` VALUES ('391', '25', 'Pemagatshel', 'PEM', '1');
INSERT INTO `oc_zone` VALUES ('392', '25', 'Punakha', 'PUN', '1');
INSERT INTO `oc_zone` VALUES ('393', '25', 'Samdrup Jongkhar', 'SJO', '1');
INSERT INTO `oc_zone` VALUES ('394', '25', 'Samtse', 'SAT', '1');
INSERT INTO `oc_zone` VALUES ('395', '25', 'Sarpang', 'SAR', '1');
INSERT INTO `oc_zone` VALUES ('396', '25', 'Thimphu', 'THI', '1');
INSERT INTO `oc_zone` VALUES ('397', '25', 'Trashigang', 'TRG', '1');
INSERT INTO `oc_zone` VALUES ('398', '25', 'Trashiyangste', 'TRY', '1');
INSERT INTO `oc_zone` VALUES ('399', '25', 'Trongsa', 'TRO', '1');
INSERT INTO `oc_zone` VALUES ('400', '25', 'Tsirang', 'TSI', '1');
INSERT INTO `oc_zone` VALUES ('401', '25', 'Wangdue Phodrang', 'WPH', '1');
INSERT INTO `oc_zone` VALUES ('402', '25', 'Zhemgang', 'ZHE', '1');
INSERT INTO `oc_zone` VALUES ('403', '26', 'Beni', 'BEN', '1');
INSERT INTO `oc_zone` VALUES ('404', '26', 'Chuquisaca', 'CHU', '1');
INSERT INTO `oc_zone` VALUES ('405', '26', 'Cochabamba', 'COC', '1');
INSERT INTO `oc_zone` VALUES ('406', '26', 'La Paz', 'LPZ', '1');
INSERT INTO `oc_zone` VALUES ('407', '26', 'Oruro', 'ORU', '1');
INSERT INTO `oc_zone` VALUES ('408', '26', 'Pando', 'PAN', '1');
INSERT INTO `oc_zone` VALUES ('409', '26', 'Potosi', 'POT', '1');
INSERT INTO `oc_zone` VALUES ('410', '26', 'Santa Cruz', 'SCZ', '1');
INSERT INTO `oc_zone` VALUES ('411', '26', 'Tarija', 'TAR', '1');
INSERT INTO `oc_zone` VALUES ('412', '27', 'Brcko district', 'BRO', '1');
INSERT INTO `oc_zone` VALUES ('413', '27', 'Unsko-Sanski Kanton', 'FUS', '1');
INSERT INTO `oc_zone` VALUES ('414', '27', 'Posavski Kanton', 'FPO', '1');
INSERT INTO `oc_zone` VALUES ('415', '27', 'Tuzlanski Kanton', 'FTU', '1');
INSERT INTO `oc_zone` VALUES ('416', '27', 'Zenicko-Dobojski Kanton', 'FZE', '1');
INSERT INTO `oc_zone` VALUES ('417', '27', 'Bosanskopodrinjski Kanton', 'FBP', '1');
INSERT INTO `oc_zone` VALUES ('418', '27', 'Srednjebosanski Kanton', 'FSB', '1');
INSERT INTO `oc_zone` VALUES ('419', '27', 'Hercegovacko-neretvanski Kanton', 'FHN', '1');
INSERT INTO `oc_zone` VALUES ('420', '27', 'Zapadnohercegovacka Zupanija', 'FZH', '1');
INSERT INTO `oc_zone` VALUES ('421', '27', 'Kanton Sarajevo', 'FSA', '1');
INSERT INTO `oc_zone` VALUES ('422', '27', 'Zapadnobosanska', 'FZA', '1');
INSERT INTO `oc_zone` VALUES ('423', '27', 'Banja Luka', 'SBL', '1');
INSERT INTO `oc_zone` VALUES ('424', '27', 'Doboj', 'SDO', '1');
INSERT INTO `oc_zone` VALUES ('425', '27', 'Bijeljina', 'SBI', '1');
INSERT INTO `oc_zone` VALUES ('426', '27', 'Vlasenica', 'SVL', '1');
INSERT INTO `oc_zone` VALUES ('427', '27', 'Sarajevo-Romanija or Sokolac', 'SSR', '1');
INSERT INTO `oc_zone` VALUES ('428', '27', 'Foca', 'SFO', '1');
INSERT INTO `oc_zone` VALUES ('429', '27', 'Trebinje', 'STR', '1');
INSERT INTO `oc_zone` VALUES ('430', '28', 'Central', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('431', '28', 'Ghanzi', 'GH', '1');
INSERT INTO `oc_zone` VALUES ('432', '28', 'Kgalagadi', 'KD', '1');
INSERT INTO `oc_zone` VALUES ('433', '28', 'Kgatleng', 'KT', '1');
INSERT INTO `oc_zone` VALUES ('434', '28', 'Kweneng', 'KW', '1');
INSERT INTO `oc_zone` VALUES ('435', '28', 'Ngamiland', 'NG', '1');
INSERT INTO `oc_zone` VALUES ('436', '28', 'North East', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('437', '28', 'North West', 'NW', '1');
INSERT INTO `oc_zone` VALUES ('438', '28', 'South East', 'SE', '1');
INSERT INTO `oc_zone` VALUES ('439', '28', 'Southern', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('440', '30', 'Acre', 'AC', '1');
INSERT INTO `oc_zone` VALUES ('441', '30', 'Alagoas', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('442', '30', 'Amapá', 'AP', '1');
INSERT INTO `oc_zone` VALUES ('443', '30', 'Amazonas', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('444', '30', 'Bahia', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('445', '30', 'Ceará', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('446', '30', 'Distrito Federal', 'DF', '1');
INSERT INTO `oc_zone` VALUES ('447', '30', 'Espírito Santo', 'ES', '1');
INSERT INTO `oc_zone` VALUES ('448', '30', 'Goiás', 'GO', '1');
INSERT INTO `oc_zone` VALUES ('449', '30', 'Maranhão', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('450', '30', 'Mato Grosso', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('451', '30', 'Mato Grosso do Sul', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('452', '30', 'Minas Gerais', 'MG', '1');
INSERT INTO `oc_zone` VALUES ('453', '30', 'Pará', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('454', '30', 'Paraíba', 'PB', '1');
INSERT INTO `oc_zone` VALUES ('455', '30', 'Paraná', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('456', '30', 'Pernambuco', 'PE', '1');
INSERT INTO `oc_zone` VALUES ('457', '30', 'Piauí', 'PI', '1');
INSERT INTO `oc_zone` VALUES ('458', '30', 'Rio de Janeiro', 'RJ', '1');
INSERT INTO `oc_zone` VALUES ('459', '30', 'Rio Grande do Norte', 'RN', '1');
INSERT INTO `oc_zone` VALUES ('460', '30', 'Rio Grande do Sul', 'RS', '1');
INSERT INTO `oc_zone` VALUES ('461', '30', 'Rondônia', 'RO', '1');
INSERT INTO `oc_zone` VALUES ('462', '30', 'Roraima', 'RR', '1');
INSERT INTO `oc_zone` VALUES ('463', '30', 'Santa Catarina', 'SC', '1');
INSERT INTO `oc_zone` VALUES ('464', '30', 'São Paulo', 'SP', '1');
INSERT INTO `oc_zone` VALUES ('465', '30', 'Sergipe', 'SE', '1');
INSERT INTO `oc_zone` VALUES ('466', '30', 'Tocantins', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('467', '31', 'Peros Banhos', 'PB', '1');
INSERT INTO `oc_zone` VALUES ('468', '31', 'Salomon Islands', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('469', '31', 'Nelsons Island', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('470', '31', 'Three Brothers', 'TB', '1');
INSERT INTO `oc_zone` VALUES ('471', '31', 'Eagle Islands', 'EA', '1');
INSERT INTO `oc_zone` VALUES ('472', '31', 'Danger Island', 'DI', '1');
INSERT INTO `oc_zone` VALUES ('473', '31', 'Egmont Islands', 'EG', '1');
INSERT INTO `oc_zone` VALUES ('474', '31', 'Diego Garcia', 'DG', '1');
INSERT INTO `oc_zone` VALUES ('475', '32', 'Belait', 'BEL', '1');
INSERT INTO `oc_zone` VALUES ('476', '32', 'Brunei and Muara', 'BRM', '1');
INSERT INTO `oc_zone` VALUES ('477', '32', 'Temburong', 'TEM', '1');
INSERT INTO `oc_zone` VALUES ('478', '32', 'Tutong', 'TUT', '1');
INSERT INTO `oc_zone` VALUES ('479', '33', 'Blagoevgrad', '', '1');
INSERT INTO `oc_zone` VALUES ('480', '33', 'Burgas', '', '1');
INSERT INTO `oc_zone` VALUES ('481', '33', 'Dobrich', '', '1');
INSERT INTO `oc_zone` VALUES ('482', '33', 'Gabrovo', '', '1');
INSERT INTO `oc_zone` VALUES ('483', '33', 'Haskovo', '', '1');
INSERT INTO `oc_zone` VALUES ('484', '33', 'Kardjali', '', '1');
INSERT INTO `oc_zone` VALUES ('485', '33', 'Kyustendil', '', '1');
INSERT INTO `oc_zone` VALUES ('486', '33', 'Lovech', '', '1');
INSERT INTO `oc_zone` VALUES ('487', '33', 'Montana', '', '1');
INSERT INTO `oc_zone` VALUES ('488', '33', 'Pazardjik', '', '1');
INSERT INTO `oc_zone` VALUES ('489', '33', 'Pernik', '', '1');
INSERT INTO `oc_zone` VALUES ('490', '33', 'Pleven', '', '1');
INSERT INTO `oc_zone` VALUES ('491', '33', 'Plovdiv', '', '1');
INSERT INTO `oc_zone` VALUES ('492', '33', 'Razgrad', '', '1');
INSERT INTO `oc_zone` VALUES ('493', '33', 'Shumen', '', '1');
INSERT INTO `oc_zone` VALUES ('494', '33', 'Silistra', '', '1');
INSERT INTO `oc_zone` VALUES ('495', '33', 'Sliven', '', '1');
INSERT INTO `oc_zone` VALUES ('496', '33', 'Smolyan', '', '1');
INSERT INTO `oc_zone` VALUES ('497', '33', 'Sofia', '', '1');
INSERT INTO `oc_zone` VALUES ('498', '33', 'Sofia - town', '', '1');
INSERT INTO `oc_zone` VALUES ('499', '33', 'Stara Zagora', '', '1');
INSERT INTO `oc_zone` VALUES ('500', '33', 'Targovishte', '', '1');
INSERT INTO `oc_zone` VALUES ('501', '33', 'Varna', '', '1');
INSERT INTO `oc_zone` VALUES ('502', '33', 'Veliko Tarnovo', '', '1');
INSERT INTO `oc_zone` VALUES ('503', '33', 'Vidin', '', '1');
INSERT INTO `oc_zone` VALUES ('504', '33', 'Vratza', '', '1');
INSERT INTO `oc_zone` VALUES ('505', '33', 'Yambol', '', '1');
INSERT INTO `oc_zone` VALUES ('506', '34', 'Bale', 'BAL', '1');
INSERT INTO `oc_zone` VALUES ('507', '34', 'Bam', 'BAM', '1');
INSERT INTO `oc_zone` VALUES ('508', '34', 'Banwa', 'BAN', '1');
INSERT INTO `oc_zone` VALUES ('509', '34', 'Bazega', 'BAZ', '1');
INSERT INTO `oc_zone` VALUES ('510', '34', 'Bougouriba', 'BOR', '1');
INSERT INTO `oc_zone` VALUES ('511', '34', 'Boulgou', 'BLG', '1');
INSERT INTO `oc_zone` VALUES ('512', '34', 'Boulkiemde', 'BOK', '1');
INSERT INTO `oc_zone` VALUES ('513', '34', 'Comoe', 'COM', '1');
INSERT INTO `oc_zone` VALUES ('514', '34', 'Ganzourgou', 'GAN', '1');
INSERT INTO `oc_zone` VALUES ('515', '34', 'Gnagna', 'GNA', '1');
INSERT INTO `oc_zone` VALUES ('516', '34', 'Gourma', 'GOU', '1');
INSERT INTO `oc_zone` VALUES ('517', '34', 'Houet', 'HOU', '1');
INSERT INTO `oc_zone` VALUES ('518', '34', 'Ioba', 'IOA', '1');
INSERT INTO `oc_zone` VALUES ('519', '34', 'Kadiogo', 'KAD', '1');
INSERT INTO `oc_zone` VALUES ('520', '34', 'Kenedougou', 'KEN', '1');
INSERT INTO `oc_zone` VALUES ('521', '34', 'Komondjari', 'KOD', '1');
INSERT INTO `oc_zone` VALUES ('522', '34', 'Kompienga', 'KOP', '1');
INSERT INTO `oc_zone` VALUES ('523', '34', 'Kossi', 'KOS', '1');
INSERT INTO `oc_zone` VALUES ('524', '34', 'Koulpelogo', 'KOL', '1');
INSERT INTO `oc_zone` VALUES ('525', '34', 'Kouritenga', 'KOT', '1');
INSERT INTO `oc_zone` VALUES ('526', '34', 'Kourweogo', 'KOW', '1');
INSERT INTO `oc_zone` VALUES ('527', '34', 'Leraba', 'LER', '1');
INSERT INTO `oc_zone` VALUES ('528', '34', 'Loroum', 'LOR', '1');
INSERT INTO `oc_zone` VALUES ('529', '34', 'Mouhoun', 'MOU', '1');
INSERT INTO `oc_zone` VALUES ('530', '34', 'Nahouri', 'NAH', '1');
INSERT INTO `oc_zone` VALUES ('531', '34', 'Namentenga', 'NAM', '1');
INSERT INTO `oc_zone` VALUES ('532', '34', 'Nayala', 'NAY', '1');
INSERT INTO `oc_zone` VALUES ('533', '34', 'Noumbiel', 'NOU', '1');
INSERT INTO `oc_zone` VALUES ('534', '34', 'Oubritenga', 'OUB', '1');
INSERT INTO `oc_zone` VALUES ('535', '34', 'Oudalan', 'OUD', '1');
INSERT INTO `oc_zone` VALUES ('536', '34', 'Passore', 'PAS', '1');
INSERT INTO `oc_zone` VALUES ('537', '34', 'Poni', 'PON', '1');
INSERT INTO `oc_zone` VALUES ('538', '34', 'Sanguie', 'SAG', '1');
INSERT INTO `oc_zone` VALUES ('539', '34', 'Sanmatenga', 'SAM', '1');
INSERT INTO `oc_zone` VALUES ('540', '34', 'Seno', 'SEN', '1');
INSERT INTO `oc_zone` VALUES ('541', '34', 'Sissili', 'SIS', '1');
INSERT INTO `oc_zone` VALUES ('542', '34', 'Soum', 'SOM', '1');
INSERT INTO `oc_zone` VALUES ('543', '34', 'Sourou', 'SOR', '1');
INSERT INTO `oc_zone` VALUES ('544', '34', 'Tapoa', 'TAP', '1');
INSERT INTO `oc_zone` VALUES ('545', '34', 'Tuy', 'TUY', '1');
INSERT INTO `oc_zone` VALUES ('546', '34', 'Yagha', 'YAG', '1');
INSERT INTO `oc_zone` VALUES ('547', '34', 'Yatenga', 'YAT', '1');
INSERT INTO `oc_zone` VALUES ('548', '34', 'Ziro', 'ZIR', '1');
INSERT INTO `oc_zone` VALUES ('549', '34', 'Zondoma', 'ZOD', '1');
INSERT INTO `oc_zone` VALUES ('550', '34', 'Zoundweogo', 'ZOW', '1');
INSERT INTO `oc_zone` VALUES ('551', '35', 'Bubanza', 'BB', '1');
INSERT INTO `oc_zone` VALUES ('552', '35', 'Bujumbura', 'BJ', '1');
INSERT INTO `oc_zone` VALUES ('553', '35', 'Bururi', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('554', '35', 'Cankuzo', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('555', '35', 'Cibitoke', 'CI', '1');
INSERT INTO `oc_zone` VALUES ('556', '35', 'Gitega', 'GI', '1');
INSERT INTO `oc_zone` VALUES ('557', '35', 'Karuzi', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('558', '35', 'Kayanza', 'KY', '1');
INSERT INTO `oc_zone` VALUES ('559', '35', 'Kirundo', 'KI', '1');
INSERT INTO `oc_zone` VALUES ('560', '35', 'Makamba', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('561', '35', 'Muramvya', 'MU', '1');
INSERT INTO `oc_zone` VALUES ('562', '35', 'Muyinga', 'MY', '1');
INSERT INTO `oc_zone` VALUES ('563', '35', 'Mwaro', 'MW', '1');
INSERT INTO `oc_zone` VALUES ('564', '35', 'Ngozi', 'NG', '1');
INSERT INTO `oc_zone` VALUES ('565', '35', 'Rutana', 'RT', '1');
INSERT INTO `oc_zone` VALUES ('566', '35', 'Ruyigi', 'RY', '1');
INSERT INTO `oc_zone` VALUES ('567', '36', 'Phnom Penh', 'PP', '1');
INSERT INTO `oc_zone` VALUES ('568', '36', 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', '1');
INSERT INTO `oc_zone` VALUES ('569', '36', 'Pailin', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('570', '36', 'Keb', 'KB', '1');
INSERT INTO `oc_zone` VALUES ('571', '36', 'Banteay Meanchey', 'BM', '1');
INSERT INTO `oc_zone` VALUES ('572', '36', 'Battambang', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('573', '36', 'Kampong Cham', 'KM', '1');
INSERT INTO `oc_zone` VALUES ('574', '36', 'Kampong Chhnang', 'KN', '1');
INSERT INTO `oc_zone` VALUES ('575', '36', 'Kampong Speu', 'KU', '1');
INSERT INTO `oc_zone` VALUES ('576', '36', 'Kampong Som', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('577', '36', 'Kampong Thom', 'KT', '1');
INSERT INTO `oc_zone` VALUES ('578', '36', 'Kampot', 'KP', '1');
INSERT INTO `oc_zone` VALUES ('579', '36', 'Kandal', 'KL', '1');
INSERT INTO `oc_zone` VALUES ('580', '36', 'Kaoh Kong', 'KK', '1');
INSERT INTO `oc_zone` VALUES ('581', '36', 'Kratie', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('582', '36', 'Mondul Kiri', 'MK', '1');
INSERT INTO `oc_zone` VALUES ('583', '36', 'Oddar Meancheay', 'OM', '1');
INSERT INTO `oc_zone` VALUES ('584', '36', 'Pursat', 'PU', '1');
INSERT INTO `oc_zone` VALUES ('585', '36', 'Preah Vihear', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('586', '36', 'Prey Veng', 'PG', '1');
INSERT INTO `oc_zone` VALUES ('587', '36', 'Ratanak Kiri', 'RK', '1');
INSERT INTO `oc_zone` VALUES ('588', '36', 'Siemreap', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('589', '36', 'Stung Treng', 'ST', '1');
INSERT INTO `oc_zone` VALUES ('590', '36', 'Svay Rieng', 'SR', '1');
INSERT INTO `oc_zone` VALUES ('591', '36', 'Takeo', 'TK', '1');
INSERT INTO `oc_zone` VALUES ('592', '37', 'Adamawa (Adamaoua)', 'ADA', '1');
INSERT INTO `oc_zone` VALUES ('593', '37', 'Centre', 'CEN', '1');
INSERT INTO `oc_zone` VALUES ('594', '37', 'East (Est)', 'EST', '1');
INSERT INTO `oc_zone` VALUES ('595', '37', 'Extreme North (Extreme-Nord)', 'EXN', '1');
INSERT INTO `oc_zone` VALUES ('596', '37', 'Littoral', 'LIT', '1');
INSERT INTO `oc_zone` VALUES ('597', '37', 'North (Nord)', 'NOR', '1');
INSERT INTO `oc_zone` VALUES ('598', '37', 'Northwest (Nord-Ouest)', 'NOT', '1');
INSERT INTO `oc_zone` VALUES ('599', '37', 'West (Ouest)', 'OUE', '1');
INSERT INTO `oc_zone` VALUES ('600', '37', 'South (Sud)', 'SUD', '1');
INSERT INTO `oc_zone` VALUES ('601', '37', 'Southwest (Sud-Ouest).', 'SOU', '1');
INSERT INTO `oc_zone` VALUES ('602', '38', 'Alberta', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('603', '38', 'British Columbia', 'BC', '1');
INSERT INTO `oc_zone` VALUES ('604', '38', 'Manitoba', 'MB', '1');
INSERT INTO `oc_zone` VALUES ('605', '38', 'New Brunswick', 'NB', '1');
INSERT INTO `oc_zone` VALUES ('606', '38', 'Newfoundland and Labrador', 'NL', '1');
INSERT INTO `oc_zone` VALUES ('607', '38', 'Northwest Territories', 'NT', '1');
INSERT INTO `oc_zone` VALUES ('608', '38', 'Nova Scotia', 'NS', '1');
INSERT INTO `oc_zone` VALUES ('609', '38', 'Nunavut', 'NU', '1');
INSERT INTO `oc_zone` VALUES ('610', '38', 'Ontario', 'ON', '1');
INSERT INTO `oc_zone` VALUES ('611', '38', 'Prince Edward Island', 'PE', '1');
INSERT INTO `oc_zone` VALUES ('612', '38', 'Qu&eacute;bec', 'QC', '1');
INSERT INTO `oc_zone` VALUES ('613', '38', 'Saskatchewan', 'SK', '1');
INSERT INTO `oc_zone` VALUES ('614', '38', 'Yukon Territory', 'YT', '1');
INSERT INTO `oc_zone` VALUES ('615', '39', 'Boa Vista', 'BV', '1');
INSERT INTO `oc_zone` VALUES ('616', '39', 'Brava', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('617', '39', 'Calheta de Sao Miguel', 'CS', '1');
INSERT INTO `oc_zone` VALUES ('618', '39', 'Maio', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('619', '39', 'Mosteiros', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('620', '39', 'Paul', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('621', '39', 'Porto Novo', 'PN', '1');
INSERT INTO `oc_zone` VALUES ('622', '39', 'Praia', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('623', '39', 'Ribeira Grande', 'RG', '1');
INSERT INTO `oc_zone` VALUES ('624', '39', 'Sal', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('625', '39', 'Santa Catarina', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('626', '39', 'Santa Cruz', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('627', '39', 'Sao Domingos', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('628', '39', 'Sao Filipe', 'SF', '1');
INSERT INTO `oc_zone` VALUES ('629', '39', 'Sao Nicolau', 'SN', '1');
INSERT INTO `oc_zone` VALUES ('630', '39', 'Sao Vicente', 'SV', '1');
INSERT INTO `oc_zone` VALUES ('631', '39', 'Tarrafal', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('632', '40', 'Creek', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('633', '40', 'Eastern', 'EA', '1');
INSERT INTO `oc_zone` VALUES ('634', '40', 'Midland', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('635', '40', 'South Town', 'ST', '1');
INSERT INTO `oc_zone` VALUES ('636', '40', 'Spot Bay', 'SP', '1');
INSERT INTO `oc_zone` VALUES ('637', '40', 'Stake Bay', 'SK', '1');
INSERT INTO `oc_zone` VALUES ('638', '40', 'West End', 'WD', '1');
INSERT INTO `oc_zone` VALUES ('639', '40', 'Western', 'WN', '1');
INSERT INTO `oc_zone` VALUES ('640', '41', 'Bamingui-Bangoran', 'BBA', '1');
INSERT INTO `oc_zone` VALUES ('641', '41', 'Basse-Kotto', 'BKO', '1');
INSERT INTO `oc_zone` VALUES ('642', '41', 'Haute-Kotto', 'HKO', '1');
INSERT INTO `oc_zone` VALUES ('643', '41', 'Haut-Mbomou', 'HMB', '1');
INSERT INTO `oc_zone` VALUES ('644', '41', 'Kemo', 'KEM', '1');
INSERT INTO `oc_zone` VALUES ('645', '41', 'Lobaye', 'LOB', '1');
INSERT INTO `oc_zone` VALUES ('646', '41', 'Mambere-KadeÔ', 'MKD', '1');
INSERT INTO `oc_zone` VALUES ('647', '41', 'Mbomou', 'MBO', '1');
INSERT INTO `oc_zone` VALUES ('648', '41', 'Nana-Mambere', 'NMM', '1');
INSERT INTO `oc_zone` VALUES ('649', '41', 'Ombella-M\'Poko', 'OMP', '1');
INSERT INTO `oc_zone` VALUES ('650', '41', 'Ouaka', 'OUK', '1');
INSERT INTO `oc_zone` VALUES ('651', '41', 'Ouham', 'OUH', '1');
INSERT INTO `oc_zone` VALUES ('652', '41', 'Ouham-Pende', 'OPE', '1');
INSERT INTO `oc_zone` VALUES ('653', '41', 'Vakaga', 'VAK', '1');
INSERT INTO `oc_zone` VALUES ('654', '41', 'Nana-Grebizi', 'NGR', '1');
INSERT INTO `oc_zone` VALUES ('655', '41', 'Sangha-Mbaere', 'SMB', '1');
INSERT INTO `oc_zone` VALUES ('656', '41', 'Bangui', 'BAN', '1');
INSERT INTO `oc_zone` VALUES ('657', '42', 'Batha', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('658', '42', 'Biltine', 'BI', '1');
INSERT INTO `oc_zone` VALUES ('659', '42', 'Borkou-Ennedi-Tibesti', 'BE', '1');
INSERT INTO `oc_zone` VALUES ('660', '42', 'Chari-Baguirmi', 'CB', '1');
INSERT INTO `oc_zone` VALUES ('661', '42', 'Guera', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('662', '42', 'Kanem', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('663', '42', 'Lac', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('664', '42', 'Logone Occidental', 'LC', '1');
INSERT INTO `oc_zone` VALUES ('665', '42', 'Logone Oriental', 'LR', '1');
INSERT INTO `oc_zone` VALUES ('666', '42', 'Mayo-Kebbi', 'MK', '1');
INSERT INTO `oc_zone` VALUES ('667', '42', 'Moyen-Chari', 'MC', '1');
INSERT INTO `oc_zone` VALUES ('668', '42', 'Ouaddai', 'OU', '1');
INSERT INTO `oc_zone` VALUES ('669', '42', 'Salamat', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('670', '42', 'Tandjile', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('671', '43', 'Aisen del General Carlos Ibanez', 'AI', '1');
INSERT INTO `oc_zone` VALUES ('672', '43', 'Antofagasta', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('673', '43', 'Araucania', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('674', '43', 'Atacama', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('675', '43', 'Bio-Bio', 'BI', '1');
INSERT INTO `oc_zone` VALUES ('676', '43', 'Coquimbo', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('677', '43', 'Libertador General Bernardo O\'Higgins', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('678', '43', 'Los Lagos', 'LL', '1');
INSERT INTO `oc_zone` VALUES ('679', '43', 'Magallanes y de la Antartica Chilena', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('680', '43', 'Maule', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('681', '43', 'Region Metropolitana', 'RM', '1');
INSERT INTO `oc_zone` VALUES ('682', '43', 'Tarapaca', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('683', '43', 'Valparaiso', 'VS', '1');
INSERT INTO `oc_zone` VALUES ('684', '44', 'Anhui', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('685', '44', 'Beijing', 'BE', '1');
INSERT INTO `oc_zone` VALUES ('686', '44', 'Chongqing', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('687', '44', 'Fujian', 'FU', '1');
INSERT INTO `oc_zone` VALUES ('688', '44', 'Gansu', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('689', '44', 'Guangdong', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('690', '44', 'Guangxi', 'GX', '1');
INSERT INTO `oc_zone` VALUES ('691', '44', 'Guizhou', 'GZ', '1');
INSERT INTO `oc_zone` VALUES ('692', '44', 'Hainan', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('693', '44', 'Hebei', 'HB', '1');
INSERT INTO `oc_zone` VALUES ('694', '44', 'Heilongjiang', 'HL', '1');
INSERT INTO `oc_zone` VALUES ('695', '44', 'Henan', 'HE', '1');
INSERT INTO `oc_zone` VALUES ('696', '44', 'Hong Kong', 'HK', '1');
INSERT INTO `oc_zone` VALUES ('697', '44', 'Hubei', 'HU', '1');
INSERT INTO `oc_zone` VALUES ('698', '44', 'Hunan', 'HN', '1');
INSERT INTO `oc_zone` VALUES ('699', '44', 'Inner Mongolia', 'IM', '1');
INSERT INTO `oc_zone` VALUES ('700', '44', 'Jiangsu', 'JI', '1');
INSERT INTO `oc_zone` VALUES ('701', '44', 'Jiangxi', 'JX', '1');
INSERT INTO `oc_zone` VALUES ('702', '44', 'Jilin', 'JL', '1');
INSERT INTO `oc_zone` VALUES ('703', '44', 'Liaoning', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('704', '44', 'Macau', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('705', '44', 'Ningxia', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('706', '44', 'Shaanxi', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('707', '44', 'Shandong', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('708', '44', 'Shanghai', 'SG', '1');
INSERT INTO `oc_zone` VALUES ('709', '44', 'Shanxi', 'SX', '1');
INSERT INTO `oc_zone` VALUES ('710', '44', 'Sichuan', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('711', '44', 'Tianjin', 'TI', '1');
INSERT INTO `oc_zone` VALUES ('712', '44', 'Xinjiang', 'XI', '1');
INSERT INTO `oc_zone` VALUES ('713', '44', 'Yunnan', 'YU', '1');
INSERT INTO `oc_zone` VALUES ('714', '44', 'Zhejiang', 'ZH', '1');
INSERT INTO `oc_zone` VALUES ('715', '46', 'Direction Island', 'D', '1');
INSERT INTO `oc_zone` VALUES ('716', '46', 'Home Island', 'H', '1');
INSERT INTO `oc_zone` VALUES ('717', '46', 'Horsburgh Island', 'O', '1');
INSERT INTO `oc_zone` VALUES ('718', '46', 'South Island', 'S', '1');
INSERT INTO `oc_zone` VALUES ('719', '46', 'West Island', 'W', '1');
INSERT INTO `oc_zone` VALUES ('720', '47', 'Amazonas', 'AMA', '1');
INSERT INTO `oc_zone` VALUES ('721', '47', 'Antioquia', 'ANT', '1');
INSERT INTO `oc_zone` VALUES ('722', '47', 'Arauca', 'ARA', '1');
INSERT INTO `oc_zone` VALUES ('723', '47', 'Atlantico', 'ATL', '1');
INSERT INTO `oc_zone` VALUES ('724', '47', 'Bogota D.C.', 'DC', '1');
INSERT INTO `oc_zone` VALUES ('725', '47', 'Bolivar', 'BOL', '1');
INSERT INTO `oc_zone` VALUES ('726', '47', 'Boyaca', 'BOY', '1');
INSERT INTO `oc_zone` VALUES ('727', '47', 'Caldas', 'CAL', '1');
INSERT INTO `oc_zone` VALUES ('728', '47', 'Caqueta', 'CAQ', '1');
INSERT INTO `oc_zone` VALUES ('729', '47', 'Casanare', 'CAS', '1');
INSERT INTO `oc_zone` VALUES ('730', '47', 'Cauca', 'CAU', '1');
INSERT INTO `oc_zone` VALUES ('731', '47', 'Cesar', 'CES', '1');
INSERT INTO `oc_zone` VALUES ('732', '47', 'Choco', 'CHO', '1');
INSERT INTO `oc_zone` VALUES ('733', '47', 'Cordoba', 'COR', '1');
INSERT INTO `oc_zone` VALUES ('734', '47', 'Cundinamarca', 'CUN', '1');
INSERT INTO `oc_zone` VALUES ('735', '47', 'Guainia', 'GNA', '1');
INSERT INTO `oc_zone` VALUES ('736', '47', 'Guajira', 'GJR', '1');
INSERT INTO `oc_zone` VALUES ('737', '47', 'Guaviare', 'GUV', '1');
INSERT INTO `oc_zone` VALUES ('738', '47', 'Huila', 'HUI', '1');
INSERT INTO `oc_zone` VALUES ('739', '47', 'Magdalena', 'MAG', '1');
INSERT INTO `oc_zone` VALUES ('740', '47', 'Meta', 'MET', '1');
INSERT INTO `oc_zone` VALUES ('741', '47', 'Narino', 'NAR', '1');
INSERT INTO `oc_zone` VALUES ('742', '47', 'Norte de Santander', 'NSA', '1');
INSERT INTO `oc_zone` VALUES ('743', '47', 'Putumayo', 'PUT', '1');
INSERT INTO `oc_zone` VALUES ('744', '47', 'Quindio', 'QUI', '1');
INSERT INTO `oc_zone` VALUES ('745', '47', 'Risaralda', 'RIS', '1');
INSERT INTO `oc_zone` VALUES ('746', '47', 'San Andres y Providencia', 'SAP', '1');
INSERT INTO `oc_zone` VALUES ('747', '47', 'Santander', 'SAN', '1');
INSERT INTO `oc_zone` VALUES ('748', '47', 'Sucre', 'SUC', '1');
INSERT INTO `oc_zone` VALUES ('749', '47', 'Tolima', 'TOL', '1');
INSERT INTO `oc_zone` VALUES ('750', '47', 'Valle del Cauca', 'VAC', '1');
INSERT INTO `oc_zone` VALUES ('751', '47', 'Vaupes', 'VAU', '1');
INSERT INTO `oc_zone` VALUES ('752', '47', 'Vichada', 'VID', '1');
INSERT INTO `oc_zone` VALUES ('753', '48', 'Grande Comore', 'G', '1');
INSERT INTO `oc_zone` VALUES ('754', '48', 'Anjouan', 'A', '1');
INSERT INTO `oc_zone` VALUES ('755', '48', 'Moheli', 'M', '1');
INSERT INTO `oc_zone` VALUES ('756', '49', 'Bouenza', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('757', '49', 'Brazzaville', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('758', '49', 'Cuvette', 'CU', '1');
INSERT INTO `oc_zone` VALUES ('759', '49', 'Cuvette-Ouest', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('760', '49', 'Kouilou', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('761', '49', 'Lekoumou', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('762', '49', 'Likouala', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('763', '49', 'Niari', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('764', '49', 'Plateaux', 'PL', '1');
INSERT INTO `oc_zone` VALUES ('765', '49', 'Pool', 'PO', '1');
INSERT INTO `oc_zone` VALUES ('766', '49', 'Sangha', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('767', '50', 'Pukapuka', 'PU', '1');
INSERT INTO `oc_zone` VALUES ('768', '50', 'Rakahanga', 'RK', '1');
INSERT INTO `oc_zone` VALUES ('769', '50', 'Manihiki', 'MK', '1');
INSERT INTO `oc_zone` VALUES ('770', '50', 'Penrhyn', 'PE', '1');
INSERT INTO `oc_zone` VALUES ('771', '50', 'Nassau Island', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('772', '50', 'Surwarrow', 'SU', '1');
INSERT INTO `oc_zone` VALUES ('773', '50', 'Palmerston', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('774', '50', 'Aitutaki', 'AI', '1');
INSERT INTO `oc_zone` VALUES ('775', '50', 'Manuae', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('776', '50', 'Takutea', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('777', '50', 'Mitiaro', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('778', '50', 'Atiu', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('779', '50', 'Mauke', 'MU', '1');
INSERT INTO `oc_zone` VALUES ('780', '50', 'Rarotonga', 'RR', '1');
INSERT INTO `oc_zone` VALUES ('781', '50', 'Mangaia', 'MG', '1');
INSERT INTO `oc_zone` VALUES ('782', '51', 'Alajuela', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('783', '51', 'Cartago', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('784', '51', 'Guanacaste', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('785', '51', 'Heredia', 'HE', '1');
INSERT INTO `oc_zone` VALUES ('786', '51', 'Limon', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('787', '51', 'Puntarenas', 'PU', '1');
INSERT INTO `oc_zone` VALUES ('788', '51', 'San Jose', 'SJ', '1');
INSERT INTO `oc_zone` VALUES ('789', '52', 'Abengourou', 'ABE', '1');
INSERT INTO `oc_zone` VALUES ('790', '52', 'Abidjan', 'ABI', '1');
INSERT INTO `oc_zone` VALUES ('791', '52', 'Aboisso', 'ABO', '1');
INSERT INTO `oc_zone` VALUES ('792', '52', 'Adiake', 'ADI', '1');
INSERT INTO `oc_zone` VALUES ('793', '52', 'Adzope', 'ADZ', '1');
INSERT INTO `oc_zone` VALUES ('794', '52', 'Agboville', 'AGB', '1');
INSERT INTO `oc_zone` VALUES ('795', '52', 'Agnibilekrou', 'AGN', '1');
INSERT INTO `oc_zone` VALUES ('796', '52', 'Alepe', 'ALE', '1');
INSERT INTO `oc_zone` VALUES ('797', '52', 'Bocanda', 'BOC', '1');
INSERT INTO `oc_zone` VALUES ('798', '52', 'Bangolo', 'BAN', '1');
INSERT INTO `oc_zone` VALUES ('799', '52', 'Beoumi', 'BEO', '1');
INSERT INTO `oc_zone` VALUES ('800', '52', 'Biankouma', 'BIA', '1');
INSERT INTO `oc_zone` VALUES ('801', '52', 'Bondoukou', 'BDK', '1');
INSERT INTO `oc_zone` VALUES ('802', '52', 'Bongouanou', 'BGN', '1');
INSERT INTO `oc_zone` VALUES ('803', '52', 'Bouafle', 'BFL', '1');
INSERT INTO `oc_zone` VALUES ('804', '52', 'Bouake', 'BKE', '1');
INSERT INTO `oc_zone` VALUES ('805', '52', 'Bouna', 'BNA', '1');
INSERT INTO `oc_zone` VALUES ('806', '52', 'Boundiali', 'BDL', '1');
INSERT INTO `oc_zone` VALUES ('807', '52', 'Dabakala', 'DKL', '1');
INSERT INTO `oc_zone` VALUES ('808', '52', 'Dabou', 'DBU', '1');
INSERT INTO `oc_zone` VALUES ('809', '52', 'Daloa', 'DAL', '1');
INSERT INTO `oc_zone` VALUES ('810', '52', 'Danane', 'DAN', '1');
INSERT INTO `oc_zone` VALUES ('811', '52', 'Daoukro', 'DAO', '1');
INSERT INTO `oc_zone` VALUES ('812', '52', 'Dimbokro', 'DIM', '1');
INSERT INTO `oc_zone` VALUES ('813', '52', 'Divo', 'DIV', '1');
INSERT INTO `oc_zone` VALUES ('814', '52', 'Duekoue', 'DUE', '1');
INSERT INTO `oc_zone` VALUES ('815', '52', 'Ferkessedougou', 'FER', '1');
INSERT INTO `oc_zone` VALUES ('816', '52', 'Gagnoa', 'GAG', '1');
INSERT INTO `oc_zone` VALUES ('817', '52', 'Grand-Bassam', 'GBA', '1');
INSERT INTO `oc_zone` VALUES ('818', '52', 'Grand-Lahou', 'GLA', '1');
INSERT INTO `oc_zone` VALUES ('819', '52', 'Guiglo', 'GUI', '1');
INSERT INTO `oc_zone` VALUES ('820', '52', 'Issia', 'ISS', '1');
INSERT INTO `oc_zone` VALUES ('821', '52', 'Jacqueville', 'JAC', '1');
INSERT INTO `oc_zone` VALUES ('822', '52', 'Katiola', 'KAT', '1');
INSERT INTO `oc_zone` VALUES ('823', '52', 'Korhogo', 'KOR', '1');
INSERT INTO `oc_zone` VALUES ('824', '52', 'Lakota', 'LAK', '1');
INSERT INTO `oc_zone` VALUES ('825', '52', 'Man', 'MAN', '1');
INSERT INTO `oc_zone` VALUES ('826', '52', 'Mankono', 'MKN', '1');
INSERT INTO `oc_zone` VALUES ('827', '52', 'Mbahiakro', 'MBA', '1');
INSERT INTO `oc_zone` VALUES ('828', '52', 'Odienne', 'ODI', '1');
INSERT INTO `oc_zone` VALUES ('829', '52', 'Oume', 'OUM', '1');
INSERT INTO `oc_zone` VALUES ('830', '52', 'Sakassou', 'SAK', '1');
INSERT INTO `oc_zone` VALUES ('831', '52', 'San-Pedro', 'SPE', '1');
INSERT INTO `oc_zone` VALUES ('832', '52', 'Sassandra', 'SAS', '1');
INSERT INTO `oc_zone` VALUES ('833', '52', 'Seguela', 'SEG', '1');
INSERT INTO `oc_zone` VALUES ('834', '52', 'Sinfra', 'SIN', '1');
INSERT INTO `oc_zone` VALUES ('835', '52', 'Soubre', 'SOU', '1');
INSERT INTO `oc_zone` VALUES ('836', '52', 'Tabou', 'TAB', '1');
INSERT INTO `oc_zone` VALUES ('837', '52', 'Tanda', 'TAN', '1');
INSERT INTO `oc_zone` VALUES ('838', '52', 'Tiebissou', 'TIE', '1');
INSERT INTO `oc_zone` VALUES ('839', '52', 'Tingrela', 'TIN', '1');
INSERT INTO `oc_zone` VALUES ('840', '52', 'Tiassale', 'TIA', '1');
INSERT INTO `oc_zone` VALUES ('841', '52', 'Touba', 'TBA', '1');
INSERT INTO `oc_zone` VALUES ('842', '52', 'Toulepleu', 'TLP', '1');
INSERT INTO `oc_zone` VALUES ('843', '52', 'Toumodi', 'TMD', '1');
INSERT INTO `oc_zone` VALUES ('844', '52', 'Vavoua', 'VAV', '1');
INSERT INTO `oc_zone` VALUES ('845', '52', 'Yamoussoukro', 'YAM', '1');
INSERT INTO `oc_zone` VALUES ('846', '52', 'Zuenoula', 'ZUE', '1');
INSERT INTO `oc_zone` VALUES ('847', '53', 'Bjelovarsko-bilogorska', 'BB', '1');
INSERT INTO `oc_zone` VALUES ('848', '53', 'Grad Zagreb', 'GZ', '1');
INSERT INTO `oc_zone` VALUES ('849', '53', 'Dubrovačko-neretvanska', 'DN', '1');
INSERT INTO `oc_zone` VALUES ('850', '53', 'Istarska', 'IS', '1');
INSERT INTO `oc_zone` VALUES ('851', '53', 'Karlovačka', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('852', '53', 'Koprivničko-križevačka', 'KK', '1');
INSERT INTO `oc_zone` VALUES ('853', '53', 'Krapinsko-zagorska', 'KZ', '1');
INSERT INTO `oc_zone` VALUES ('854', '53', 'Ličko-senjska', 'LS', '1');
INSERT INTO `oc_zone` VALUES ('855', '53', 'Međimurska', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('856', '53', 'Osječko-baranjska', 'OB', '1');
INSERT INTO `oc_zone` VALUES ('857', '53', 'Požeško-slavonska', 'PS', '1');
INSERT INTO `oc_zone` VALUES ('858', '53', 'Primorsko-goranska', 'PG', '1');
INSERT INTO `oc_zone` VALUES ('859', '53', 'Šibensko-kninska', 'SK', '1');
INSERT INTO `oc_zone` VALUES ('860', '53', 'Sisačko-moslavačka', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('861', '53', 'Brodsko-posavska', 'BP', '1');
INSERT INTO `oc_zone` VALUES ('862', '53', 'Splitsko-dalmatinska', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('863', '53', 'Varaždinska', 'VA', '1');
INSERT INTO `oc_zone` VALUES ('864', '53', 'Virovitičko-podravska', 'VP', '1');
INSERT INTO `oc_zone` VALUES ('865', '53', 'Vukovarsko-srijemska', 'VS', '1');
INSERT INTO `oc_zone` VALUES ('866', '53', 'Zadarska', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('867', '53', 'Zagrebačka', 'ZG', '1');
INSERT INTO `oc_zone` VALUES ('868', '54', 'Camaguey', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('869', '54', 'Ciego de Avila', 'CD', '1');
INSERT INTO `oc_zone` VALUES ('870', '54', 'Cienfuegos', 'CI', '1');
INSERT INTO `oc_zone` VALUES ('871', '54', 'Ciudad de La Habana', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('872', '54', 'Granma', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('873', '54', 'Guantanamo', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('874', '54', 'Holguin', 'HO', '1');
INSERT INTO `oc_zone` VALUES ('875', '54', 'Isla de la Juventud', 'IJ', '1');
INSERT INTO `oc_zone` VALUES ('876', '54', 'La Habana', 'LH', '1');
INSERT INTO `oc_zone` VALUES ('877', '54', 'Las Tunas', 'LT', '1');
INSERT INTO `oc_zone` VALUES ('878', '54', 'Matanzas', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('879', '54', 'Pinar del Rio', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('880', '54', 'Sancti Spiritus', 'SS', '1');
INSERT INTO `oc_zone` VALUES ('881', '54', 'Santiago de Cuba', 'SC', '1');
INSERT INTO `oc_zone` VALUES ('882', '54', 'Villa Clara', 'VC', '1');
INSERT INTO `oc_zone` VALUES ('883', '55', 'Famagusta', 'F', '1');
INSERT INTO `oc_zone` VALUES ('884', '55', 'Kyrenia', 'K', '1');
INSERT INTO `oc_zone` VALUES ('885', '55', 'Larnaca', 'A', '1');
INSERT INTO `oc_zone` VALUES ('886', '55', 'Limassol', 'I', '1');
INSERT INTO `oc_zone` VALUES ('887', '55', 'Nicosia', 'N', '1');
INSERT INTO `oc_zone` VALUES ('888', '55', 'Paphos', 'P', '1');
INSERT INTO `oc_zone` VALUES ('889', '56', 'Ústecký', 'U', '1');
INSERT INTO `oc_zone` VALUES ('890', '56', 'Jihočeský', 'C', '1');
INSERT INTO `oc_zone` VALUES ('891', '56', 'Jihomoravský', 'B', '1');
INSERT INTO `oc_zone` VALUES ('892', '56', 'Karlovarský', 'K', '1');
INSERT INTO `oc_zone` VALUES ('893', '56', 'Královehradecký', 'H', '1');
INSERT INTO `oc_zone` VALUES ('894', '56', 'Liberecký', 'L', '1');
INSERT INTO `oc_zone` VALUES ('895', '56', 'Moravskoslezský', 'T', '1');
INSERT INTO `oc_zone` VALUES ('896', '56', 'Olomoucký', 'M', '1');
INSERT INTO `oc_zone` VALUES ('897', '56', 'Pardubický', 'E', '1');
INSERT INTO `oc_zone` VALUES ('898', '56', 'Plzeňský', 'P', '1');
INSERT INTO `oc_zone` VALUES ('899', '56', 'Praha', 'A', '1');
INSERT INTO `oc_zone` VALUES ('900', '56', 'Středočeský', 'S', '1');
INSERT INTO `oc_zone` VALUES ('901', '56', 'Vysočina', 'J', '1');
INSERT INTO `oc_zone` VALUES ('902', '56', 'Zlínský', 'Z', '1');
INSERT INTO `oc_zone` VALUES ('903', '57', 'Nordjyland', '81', '1');
INSERT INTO `oc_zone` VALUES ('904', '57', 'Midtjylland', '82', '1');
INSERT INTO `oc_zone` VALUES ('905', '57', 'Syddanmark', '83', '1');
INSERT INTO `oc_zone` VALUES ('906', '57', 'Faroe Islands', 'FO', '1');
INSERT INTO `oc_zone` VALUES ('907', '57', 'Hovedstaden', '84', '1');
INSERT INTO `oc_zone` VALUES ('908', '57', 'Sjælland', '85', '1');
INSERT INTO `oc_zone` VALUES ('919', '58', '\'Ali Sabih', 'S', '1');
INSERT INTO `oc_zone` VALUES ('920', '58', 'Dikhil', 'K', '1');
INSERT INTO `oc_zone` VALUES ('921', '58', 'Djibouti', 'J', '1');
INSERT INTO `oc_zone` VALUES ('922', '58', 'Obock', 'O', '1');
INSERT INTO `oc_zone` VALUES ('923', '58', 'Tadjoura', 'T', '1');
INSERT INTO `oc_zone` VALUES ('924', '59', 'Saint Andrew Parish', 'AND', '1');
INSERT INTO `oc_zone` VALUES ('925', '59', 'Saint David Parish', 'DAV', '1');
INSERT INTO `oc_zone` VALUES ('926', '59', 'Saint George Parish', 'GEO', '1');
INSERT INTO `oc_zone` VALUES ('927', '59', 'Saint John Parish', 'JOH', '1');
INSERT INTO `oc_zone` VALUES ('928', '59', 'Saint Joseph Parish', 'JOS', '1');
INSERT INTO `oc_zone` VALUES ('929', '59', 'Saint Luke Parish', 'LUK', '1');
INSERT INTO `oc_zone` VALUES ('930', '59', 'Saint Mark Parish', 'MAR', '1');
INSERT INTO `oc_zone` VALUES ('931', '59', 'Saint Patrick Parish', 'PAT', '1');
INSERT INTO `oc_zone` VALUES ('932', '59', 'Saint Paul Parish', 'PAU', '1');
INSERT INTO `oc_zone` VALUES ('933', '59', 'Saint Peter Parish', 'PET', '1');
INSERT INTO `oc_zone` VALUES ('934', '60', 'Distrito Nacional', 'DN', '1');
INSERT INTO `oc_zone` VALUES ('935', '60', 'Azua', 'AZ', '1');
INSERT INTO `oc_zone` VALUES ('936', '60', 'Baoruco', 'BC', '1');
INSERT INTO `oc_zone` VALUES ('937', '60', 'Barahona', 'BH', '1');
INSERT INTO `oc_zone` VALUES ('938', '60', 'Dajabon', 'DJ', '1');
INSERT INTO `oc_zone` VALUES ('939', '60', 'Duarte', 'DU', '1');
INSERT INTO `oc_zone` VALUES ('940', '60', 'Elias Pina', 'EL', '1');
INSERT INTO `oc_zone` VALUES ('941', '60', 'El Seybo', 'SY', '1');
INSERT INTO `oc_zone` VALUES ('942', '60', 'Espaillat', 'ET', '1');
INSERT INTO `oc_zone` VALUES ('943', '60', 'Hato Mayor', 'HM', '1');
INSERT INTO `oc_zone` VALUES ('944', '60', 'Independencia', 'IN', '1');
INSERT INTO `oc_zone` VALUES ('945', '60', 'La Altagracia', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('946', '60', 'La Romana', 'RO', '1');
INSERT INTO `oc_zone` VALUES ('947', '60', 'La Vega', 'VE', '1');
INSERT INTO `oc_zone` VALUES ('948', '60', 'Maria Trinidad Sanchez', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('949', '60', 'Monsenor Nouel', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('950', '60', 'Monte Cristi', 'MC', '1');
INSERT INTO `oc_zone` VALUES ('951', '60', 'Monte Plata', 'MP', '1');
INSERT INTO `oc_zone` VALUES ('952', '60', 'Pedernales', 'PD', '1');
INSERT INTO `oc_zone` VALUES ('953', '60', 'Peravia (Bani)', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('954', '60', 'Puerto Plata', 'PP', '1');
INSERT INTO `oc_zone` VALUES ('955', '60', 'Salcedo', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('956', '60', 'Samana', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('957', '60', 'Sanchez Ramirez', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('958', '60', 'San Cristobal', 'SC', '1');
INSERT INTO `oc_zone` VALUES ('959', '60', 'San Jose de Ocoa', 'JO', '1');
INSERT INTO `oc_zone` VALUES ('960', '60', 'San Juan', 'SJ', '1');
INSERT INTO `oc_zone` VALUES ('961', '60', 'San Pedro de Macoris', 'PM', '1');
INSERT INTO `oc_zone` VALUES ('962', '60', 'Santiago', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('963', '60', 'Santiago Rodriguez', 'ST', '1');
INSERT INTO `oc_zone` VALUES ('964', '60', 'Santo Domingo', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('965', '60', 'Valverde', 'VA', '1');
INSERT INTO `oc_zone` VALUES ('966', '61', 'Aileu', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('967', '61', 'Ainaro', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('968', '61', 'Baucau', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('969', '61', 'Bobonaro', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('970', '61', 'Cova Lima', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('971', '61', 'Dili', 'DI', '1');
INSERT INTO `oc_zone` VALUES ('972', '61', 'Ermera', 'ER', '1');
INSERT INTO `oc_zone` VALUES ('973', '61', 'Lautem', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('974', '61', 'Liquica', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('975', '61', 'Manatuto', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('976', '61', 'Manufahi', 'MF', '1');
INSERT INTO `oc_zone` VALUES ('977', '61', 'Oecussi', 'OE', '1');
INSERT INTO `oc_zone` VALUES ('978', '61', 'Viqueque', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('979', '62', 'Azuay', 'AZU', '1');
INSERT INTO `oc_zone` VALUES ('980', '62', 'Bolivar', 'BOL', '1');
INSERT INTO `oc_zone` VALUES ('981', '62', 'Ca&ntilde;ar', 'CAN', '1');
INSERT INTO `oc_zone` VALUES ('982', '62', 'Carchi', 'CAR', '1');
INSERT INTO `oc_zone` VALUES ('983', '62', 'Chimborazo', 'CHI', '1');
INSERT INTO `oc_zone` VALUES ('984', '62', 'Cotopaxi', 'COT', '1');
INSERT INTO `oc_zone` VALUES ('985', '62', 'El Oro', 'EOR', '1');
INSERT INTO `oc_zone` VALUES ('986', '62', 'Esmeraldas', 'ESM', '1');
INSERT INTO `oc_zone` VALUES ('987', '62', 'Gal&aacute;pagos', 'GPS', '1');
INSERT INTO `oc_zone` VALUES ('988', '62', 'Guayas', 'GUA', '1');
INSERT INTO `oc_zone` VALUES ('989', '62', 'Imbabura', 'IMB', '1');
INSERT INTO `oc_zone` VALUES ('990', '62', 'Loja', 'LOJ', '1');
INSERT INTO `oc_zone` VALUES ('991', '62', 'Los Rios', 'LRO', '1');
INSERT INTO `oc_zone` VALUES ('992', '62', 'Manab&iacute;', 'MAN', '1');
INSERT INTO `oc_zone` VALUES ('993', '62', 'Morona Santiago', 'MSA', '1');
INSERT INTO `oc_zone` VALUES ('994', '62', 'Napo', 'NAP', '1');
INSERT INTO `oc_zone` VALUES ('995', '62', 'Orellana', 'ORE', '1');
INSERT INTO `oc_zone` VALUES ('996', '62', 'Pastaza', 'PAS', '1');
INSERT INTO `oc_zone` VALUES ('997', '62', 'Pichincha', 'PIC', '1');
INSERT INTO `oc_zone` VALUES ('998', '62', 'Sucumb&iacute;os', 'SUC', '1');
INSERT INTO `oc_zone` VALUES ('999', '62', 'Tungurahua', 'TUN', '1');
INSERT INTO `oc_zone` VALUES ('1000', '62', 'Zamora Chinchipe', 'ZCH', '1');
INSERT INTO `oc_zone` VALUES ('1001', '63', 'Ad Daqahliyah', 'DHY', '1');
INSERT INTO `oc_zone` VALUES ('1002', '63', 'Al Bahr al Ahmar', 'BAM', '1');
INSERT INTO `oc_zone` VALUES ('1003', '63', 'Al Buhayrah', 'BHY', '1');
INSERT INTO `oc_zone` VALUES ('1004', '63', 'Al Fayyum', 'FYM', '1');
INSERT INTO `oc_zone` VALUES ('1005', '63', 'Al Gharbiyah', 'GBY', '1');
INSERT INTO `oc_zone` VALUES ('1006', '63', 'Al Iskandariyah', 'IDR', '1');
INSERT INTO `oc_zone` VALUES ('1007', '63', 'Al Isma\'iliyah', 'IML', '1');
INSERT INTO `oc_zone` VALUES ('1008', '63', 'Al Jizah', 'JZH', '1');
INSERT INTO `oc_zone` VALUES ('1009', '63', 'Al Minufiyah', 'MFY', '1');
INSERT INTO `oc_zone` VALUES ('1010', '63', 'Al Minya', 'MNY', '1');
INSERT INTO `oc_zone` VALUES ('1011', '63', 'Al Qahirah', 'QHR', '1');
INSERT INTO `oc_zone` VALUES ('1012', '63', 'Al Qalyubiyah', 'QLY', '1');
INSERT INTO `oc_zone` VALUES ('1013', '63', 'Al Wadi al Jadid', 'WJD', '1');
INSERT INTO `oc_zone` VALUES ('1014', '63', 'Ash Sharqiyah', 'SHQ', '1');
INSERT INTO `oc_zone` VALUES ('1015', '63', 'As Suways', 'SWY', '1');
INSERT INTO `oc_zone` VALUES ('1016', '63', 'Aswan', 'ASW', '1');
INSERT INTO `oc_zone` VALUES ('1017', '63', 'Asyut', 'ASY', '1');
INSERT INTO `oc_zone` VALUES ('1018', '63', 'Bani Suwayf', 'BSW', '1');
INSERT INTO `oc_zone` VALUES ('1019', '63', 'Bur Sa\'id', 'BSD', '1');
INSERT INTO `oc_zone` VALUES ('1020', '63', 'Dumyat', 'DMY', '1');
INSERT INTO `oc_zone` VALUES ('1021', '63', 'Janub Sina\'', 'JNS', '1');
INSERT INTO `oc_zone` VALUES ('1022', '63', 'Kafr ash Shaykh', 'KSH', '1');
INSERT INTO `oc_zone` VALUES ('1023', '63', 'Matruh', 'MAT', '1');
INSERT INTO `oc_zone` VALUES ('1024', '63', 'Qina', 'QIN', '1');
INSERT INTO `oc_zone` VALUES ('1025', '63', 'Shamal Sina\'', 'SHS', '1');
INSERT INTO `oc_zone` VALUES ('1026', '63', 'Suhaj', 'SUH', '1');
INSERT INTO `oc_zone` VALUES ('1027', '64', 'Ahuachapan', 'AH', '1');
INSERT INTO `oc_zone` VALUES ('1028', '64', 'Cabanas', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('1029', '64', 'Chalatenango', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('1030', '64', 'Cuscatlan', 'CU', '1');
INSERT INTO `oc_zone` VALUES ('1031', '64', 'La Libertad', 'LB', '1');
INSERT INTO `oc_zone` VALUES ('1032', '64', 'La Paz', 'PZ', '1');
INSERT INTO `oc_zone` VALUES ('1033', '64', 'La Union', 'UN', '1');
INSERT INTO `oc_zone` VALUES ('1034', '64', 'Morazan', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('1035', '64', 'San Miguel', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('1036', '64', 'San Salvador', 'SS', '1');
INSERT INTO `oc_zone` VALUES ('1037', '64', 'San Vicente', 'SV', '1');
INSERT INTO `oc_zone` VALUES ('1038', '64', 'Santa Ana', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('1039', '64', 'Sonsonate', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('1040', '64', 'Usulutan', 'US', '1');
INSERT INTO `oc_zone` VALUES ('1041', '65', 'Provincia Annobon', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('1042', '65', 'Provincia Bioko Norte', 'BN', '1');
INSERT INTO `oc_zone` VALUES ('1043', '65', 'Provincia Bioko Sur', 'BS', '1');
INSERT INTO `oc_zone` VALUES ('1044', '65', 'Provincia Centro Sur', 'CS', '1');
INSERT INTO `oc_zone` VALUES ('1045', '65', 'Provincia Kie-Ntem', 'KN', '1');
INSERT INTO `oc_zone` VALUES ('1046', '65', 'Provincia Litoral', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('1047', '65', 'Provincia Wele-Nzas', 'WN', '1');
INSERT INTO `oc_zone` VALUES ('1048', '66', 'Central (Maekel)', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('1049', '66', 'Anseba (Keren)', 'KE', '1');
INSERT INTO `oc_zone` VALUES ('1050', '66', 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', '1');
INSERT INTO `oc_zone` VALUES ('1051', '66', 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', '1');
INSERT INTO `oc_zone` VALUES ('1052', '66', 'Southern (Debub)', 'DE', '1');
INSERT INTO `oc_zone` VALUES ('1053', '66', 'Gash-Barka (Barentu)', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('1054', '67', 'Harjumaa (Tallinn)', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('1055', '67', 'Hiiumaa (Kardla)', 'HI', '1');
INSERT INTO `oc_zone` VALUES ('1056', '67', 'Ida-Virumaa (Johvi)', 'IV', '1');
INSERT INTO `oc_zone` VALUES ('1057', '67', 'Jarvamaa (Paide)', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('1058', '67', 'Jogevamaa (Jogeva)', 'JO', '1');
INSERT INTO `oc_zone` VALUES ('1059', '67', 'Laane-Virumaa (Rakvere)', 'LV', '1');
INSERT INTO `oc_zone` VALUES ('1060', '67', 'Laanemaa (Haapsalu)', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('1061', '67', 'Parnumaa (Parnu)', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('1062', '67', 'Polvamaa (Polva)', 'PO', '1');
INSERT INTO `oc_zone` VALUES ('1063', '67', 'Raplamaa (Rapla)', 'RA', '1');
INSERT INTO `oc_zone` VALUES ('1064', '67', 'Saaremaa (Kuessaare)', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('1065', '67', 'Tartumaa (Tartu)', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('1066', '67', 'Valgamaa (Valga)', 'VA', '1');
INSERT INTO `oc_zone` VALUES ('1067', '67', 'Viljandimaa (Viljandi)', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('1068', '67', 'Vorumaa (Voru)', 'VO', '1');
INSERT INTO `oc_zone` VALUES ('1069', '68', 'Afar', 'AF', '1');
INSERT INTO `oc_zone` VALUES ('1070', '68', 'Amhara', 'AH', '1');
INSERT INTO `oc_zone` VALUES ('1071', '68', 'Benishangul-Gumaz', 'BG', '1');
INSERT INTO `oc_zone` VALUES ('1072', '68', 'Gambela', 'GB', '1');
INSERT INTO `oc_zone` VALUES ('1073', '68', 'Hariai', 'HR', '1');
INSERT INTO `oc_zone` VALUES ('1074', '68', 'Oromia', 'OR', '1');
INSERT INTO `oc_zone` VALUES ('1075', '68', 'Somali', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('1076', '68', 'Southern Nations - Nationalities and Peoples Region', 'SN', '1');
INSERT INTO `oc_zone` VALUES ('1077', '68', 'Tigray', 'TG', '1');
INSERT INTO `oc_zone` VALUES ('1078', '68', 'Addis Ababa', 'AA', '1');
INSERT INTO `oc_zone` VALUES ('1079', '68', 'Dire Dawa', 'DD', '1');
INSERT INTO `oc_zone` VALUES ('1080', '71', 'Central Division', 'C', '1');
INSERT INTO `oc_zone` VALUES ('1081', '71', 'Northern Division', 'N', '1');
INSERT INTO `oc_zone` VALUES ('1082', '71', 'Eastern Division', 'E', '1');
INSERT INTO `oc_zone` VALUES ('1083', '71', 'Western Division', 'W', '1');
INSERT INTO `oc_zone` VALUES ('1084', '71', 'Rotuma', 'R', '1');
INSERT INTO `oc_zone` VALUES ('1085', '72', 'Ahvenanmaan lääni', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('1086', '72', 'Etelä-Suomen lääni', 'ES', '1');
INSERT INTO `oc_zone` VALUES ('1087', '72', 'Itä-Suomen lääni', 'IS', '1');
INSERT INTO `oc_zone` VALUES ('1088', '72', 'Länsi-Suomen lääni', 'LS', '1');
INSERT INTO `oc_zone` VALUES ('1089', '72', 'Lapin lääni', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('1090', '72', 'Oulun lääni', 'OU', '1');
INSERT INTO `oc_zone` VALUES ('1114', '74', 'Ain', '01', '1');
INSERT INTO `oc_zone` VALUES ('1115', '74', 'Aisne', '02', '1');
INSERT INTO `oc_zone` VALUES ('1116', '74', 'Allier', '03', '1');
INSERT INTO `oc_zone` VALUES ('1117', '74', 'Alpes de Haute Provence', '04', '1');
INSERT INTO `oc_zone` VALUES ('1118', '74', 'Hautes-Alpes', '05', '1');
INSERT INTO `oc_zone` VALUES ('1119', '74', 'Alpes Maritimes', '06', '1');
INSERT INTO `oc_zone` VALUES ('1120', '74', 'Ard&egrave;che', '07', '1');
INSERT INTO `oc_zone` VALUES ('1121', '74', 'Ardennes', '08', '1');
INSERT INTO `oc_zone` VALUES ('1122', '74', 'Ari&egrave;ge', '09', '1');
INSERT INTO `oc_zone` VALUES ('1123', '74', 'Aube', '10', '1');
INSERT INTO `oc_zone` VALUES ('1124', '74', 'Aude', '11', '1');
INSERT INTO `oc_zone` VALUES ('1125', '74', 'Aveyron', '12', '1');
INSERT INTO `oc_zone` VALUES ('1126', '74', 'Bouches du Rh&ocirc;ne', '13', '1');
INSERT INTO `oc_zone` VALUES ('1127', '74', 'Calvados', '14', '1');
INSERT INTO `oc_zone` VALUES ('1128', '74', 'Cantal', '15', '1');
INSERT INTO `oc_zone` VALUES ('1129', '74', 'Charente', '16', '1');
INSERT INTO `oc_zone` VALUES ('1130', '74', 'Charente Maritime', '17', '1');
INSERT INTO `oc_zone` VALUES ('1131', '74', 'Cher', '18', '1');
INSERT INTO `oc_zone` VALUES ('1132', '74', 'Corr&egrave;ze', '19', '1');
INSERT INTO `oc_zone` VALUES ('1133', '74', 'Corse du Sud', '2A', '1');
INSERT INTO `oc_zone` VALUES ('1134', '74', 'Haute Corse', '2B', '1');
INSERT INTO `oc_zone` VALUES ('1135', '74', 'C&ocirc;te d&#039;or', '21', '1');
INSERT INTO `oc_zone` VALUES ('1136', '74', 'C&ocirc;tes d&#039;Armor', '22', '1');
INSERT INTO `oc_zone` VALUES ('1137', '74', 'Creuse', '23', '1');
INSERT INTO `oc_zone` VALUES ('1138', '74', 'Dordogne', '24', '1');
INSERT INTO `oc_zone` VALUES ('1139', '74', 'Doubs', '25', '1');
INSERT INTO `oc_zone` VALUES ('1140', '74', 'Dr&ocirc;me', '26', '1');
INSERT INTO `oc_zone` VALUES ('1141', '74', 'Eure', '27', '1');
INSERT INTO `oc_zone` VALUES ('1142', '74', 'Eure et Loir', '28', '1');
INSERT INTO `oc_zone` VALUES ('1143', '74', 'Finist&egrave;re', '29', '1');
INSERT INTO `oc_zone` VALUES ('1144', '74', 'Gard', '30', '1');
INSERT INTO `oc_zone` VALUES ('1145', '74', 'Haute Garonne', '31', '1');
INSERT INTO `oc_zone` VALUES ('1146', '74', 'Gers', '32', '1');
INSERT INTO `oc_zone` VALUES ('1147', '74', 'Gironde', '33', '1');
INSERT INTO `oc_zone` VALUES ('1148', '74', 'H&eacute;rault', '34', '1');
INSERT INTO `oc_zone` VALUES ('1149', '74', 'Ille et Vilaine', '35', '1');
INSERT INTO `oc_zone` VALUES ('1150', '74', 'Indre', '36', '1');
INSERT INTO `oc_zone` VALUES ('1151', '74', 'Indre et Loire', '37', '1');
INSERT INTO `oc_zone` VALUES ('1152', '74', 'Is&eacute;re', '38', '1');
INSERT INTO `oc_zone` VALUES ('1153', '74', 'Jura', '39', '1');
INSERT INTO `oc_zone` VALUES ('1154', '74', 'Landes', '40', '1');
INSERT INTO `oc_zone` VALUES ('1155', '74', 'Loir et Cher', '41', '1');
INSERT INTO `oc_zone` VALUES ('1156', '74', 'Loire', '42', '1');
INSERT INTO `oc_zone` VALUES ('1157', '74', 'Haute Loire', '43', '1');
INSERT INTO `oc_zone` VALUES ('1158', '74', 'Loire Atlantique', '44', '1');
INSERT INTO `oc_zone` VALUES ('1159', '74', 'Loiret', '45', '1');
INSERT INTO `oc_zone` VALUES ('1160', '74', 'Lot', '46', '1');
INSERT INTO `oc_zone` VALUES ('1161', '74', 'Lot et Garonne', '47', '1');
INSERT INTO `oc_zone` VALUES ('1162', '74', 'Loz&egrave;re', '48', '1');
INSERT INTO `oc_zone` VALUES ('1163', '74', 'Maine et Loire', '49', '1');
INSERT INTO `oc_zone` VALUES ('1164', '74', 'Manche', '50', '1');
INSERT INTO `oc_zone` VALUES ('1165', '74', 'Marne', '51', '1');
INSERT INTO `oc_zone` VALUES ('1166', '74', 'Haute Marne', '52', '1');
INSERT INTO `oc_zone` VALUES ('1167', '74', 'Mayenne', '53', '1');
INSERT INTO `oc_zone` VALUES ('1168', '74', 'Meurthe et Moselle', '54', '1');
INSERT INTO `oc_zone` VALUES ('1169', '74', 'Meuse', '55', '1');
INSERT INTO `oc_zone` VALUES ('1170', '74', 'Morbihan', '56', '1');
INSERT INTO `oc_zone` VALUES ('1171', '74', 'Moselle', '57', '1');
INSERT INTO `oc_zone` VALUES ('1172', '74', 'Ni&egrave;vre', '58', '1');
INSERT INTO `oc_zone` VALUES ('1173', '74', 'Nord', '59', '1');
INSERT INTO `oc_zone` VALUES ('1174', '74', 'Oise', '60', '1');
INSERT INTO `oc_zone` VALUES ('1175', '74', 'Orne', '61', '1');
INSERT INTO `oc_zone` VALUES ('1176', '74', 'Pas de Calais', '62', '1');
INSERT INTO `oc_zone` VALUES ('1177', '74', 'Puy de D&ocirc;me', '63', '1');
INSERT INTO `oc_zone` VALUES ('1178', '74', 'Pyr&eacute;n&eacute;es Atlantiques', '64', '1');
INSERT INTO `oc_zone` VALUES ('1179', '74', 'Hautes Pyr&eacute;n&eacute;es', '65', '1');
INSERT INTO `oc_zone` VALUES ('1180', '74', 'Pyr&eacute;n&eacute;es Orientales', '66', '1');
INSERT INTO `oc_zone` VALUES ('1181', '74', 'Bas Rhin', '67', '1');
INSERT INTO `oc_zone` VALUES ('1182', '74', 'Haut Rhin', '68', '1');
INSERT INTO `oc_zone` VALUES ('1183', '74', 'Rh&ocirc;ne', '69', '1');
INSERT INTO `oc_zone` VALUES ('1184', '74', 'Haute Sa&ocirc;ne', '70', '1');
INSERT INTO `oc_zone` VALUES ('1185', '74', 'Sa&ocirc;ne et Loire', '71', '1');
INSERT INTO `oc_zone` VALUES ('1186', '74', 'Sarthe', '72', '1');
INSERT INTO `oc_zone` VALUES ('1187', '74', 'Savoie', '73', '1');
INSERT INTO `oc_zone` VALUES ('1188', '74', 'Haute Savoie', '74', '1');
INSERT INTO `oc_zone` VALUES ('1189', '74', 'Paris', '75', '1');
INSERT INTO `oc_zone` VALUES ('1190', '74', 'Seine Maritime', '76', '1');
INSERT INTO `oc_zone` VALUES ('1191', '74', 'Seine et Marne', '77', '1');
INSERT INTO `oc_zone` VALUES ('1192', '74', 'Yvelines', '78', '1');
INSERT INTO `oc_zone` VALUES ('1193', '74', 'Deux S&egrave;vres', '79', '1');
INSERT INTO `oc_zone` VALUES ('1194', '74', 'Somme', '80', '1');
INSERT INTO `oc_zone` VALUES ('1195', '74', 'Tarn', '81', '1');
INSERT INTO `oc_zone` VALUES ('1196', '74', 'Tarn et Garonne', '82', '1');
INSERT INTO `oc_zone` VALUES ('1197', '74', 'Var', '83', '1');
INSERT INTO `oc_zone` VALUES ('1198', '74', 'Vaucluse', '84', '1');
INSERT INTO `oc_zone` VALUES ('1199', '74', 'Vend&eacute;e', '85', '1');
INSERT INTO `oc_zone` VALUES ('1200', '74', 'Vienne', '86', '1');
INSERT INTO `oc_zone` VALUES ('1201', '74', 'Haute Vienne', '87', '1');
INSERT INTO `oc_zone` VALUES ('1202', '74', 'Vosges', '88', '1');
INSERT INTO `oc_zone` VALUES ('1203', '74', 'Yonne', '89', '1');
INSERT INTO `oc_zone` VALUES ('1204', '74', 'Territoire de Belfort', '90', '1');
INSERT INTO `oc_zone` VALUES ('1205', '74', 'Essonne', '91', '1');
INSERT INTO `oc_zone` VALUES ('1206', '74', 'Hauts de Seine', '92', '1');
INSERT INTO `oc_zone` VALUES ('1207', '74', 'Seine St-Denis', '93', '1');
INSERT INTO `oc_zone` VALUES ('1208', '74', 'Val de Marne', '94', '1');
INSERT INTO `oc_zone` VALUES ('1209', '74', 'Val d\'Oise', '95', '1');
INSERT INTO `oc_zone` VALUES ('1210', '76', 'Archipel des Marquises', 'M', '1');
INSERT INTO `oc_zone` VALUES ('1211', '76', 'Archipel des Tuamotu', 'T', '1');
INSERT INTO `oc_zone` VALUES ('1212', '76', 'Archipel des Tubuai', 'I', '1');
INSERT INTO `oc_zone` VALUES ('1213', '76', 'Iles du Vent', 'V', '1');
INSERT INTO `oc_zone` VALUES ('1214', '76', 'Iles Sous-le-Vent', 'S', '1');
INSERT INTO `oc_zone` VALUES ('1215', '77', 'Iles Crozet', 'C', '1');
INSERT INTO `oc_zone` VALUES ('1216', '77', 'Iles Kerguelen', 'K', '1');
INSERT INTO `oc_zone` VALUES ('1217', '77', 'Ile Amsterdam', 'A', '1');
INSERT INTO `oc_zone` VALUES ('1218', '77', 'Ile Saint-Paul', 'P', '1');
INSERT INTO `oc_zone` VALUES ('1219', '77', 'Adelie Land', 'D', '1');
INSERT INTO `oc_zone` VALUES ('1220', '78', 'Estuaire', 'ES', '1');
INSERT INTO `oc_zone` VALUES ('1221', '78', 'Haut-Ogooue', 'HO', '1');
INSERT INTO `oc_zone` VALUES ('1222', '78', 'Moyen-Ogooue', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('1223', '78', 'Ngounie', 'NG', '1');
INSERT INTO `oc_zone` VALUES ('1224', '78', 'Nyanga', 'NY', '1');
INSERT INTO `oc_zone` VALUES ('1225', '78', 'Ogooue-Ivindo', 'OI', '1');
INSERT INTO `oc_zone` VALUES ('1226', '78', 'Ogooue-Lolo', 'OL', '1');
INSERT INTO `oc_zone` VALUES ('1227', '78', 'Ogooue-Maritime', 'OM', '1');
INSERT INTO `oc_zone` VALUES ('1228', '78', 'Woleu-Ntem', 'WN', '1');
INSERT INTO `oc_zone` VALUES ('1229', '79', 'Banjul', 'BJ', '1');
INSERT INTO `oc_zone` VALUES ('1230', '79', 'Basse', 'BS', '1');
INSERT INTO `oc_zone` VALUES ('1231', '79', 'Brikama', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('1232', '79', 'Janjangbure', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('1233', '79', 'Kanifeng', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('1234', '79', 'Kerewan', 'KE', '1');
INSERT INTO `oc_zone` VALUES ('1235', '79', 'Kuntaur', 'KU', '1');
INSERT INTO `oc_zone` VALUES ('1236', '79', 'Mansakonko', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('1237', '79', 'Lower River', 'LR', '1');
INSERT INTO `oc_zone` VALUES ('1238', '79', 'Central River', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('1239', '79', 'North Bank', 'NB', '1');
INSERT INTO `oc_zone` VALUES ('1240', '79', 'Upper River', 'UR', '1');
INSERT INTO `oc_zone` VALUES ('1241', '79', 'Western', 'WE', '1');
INSERT INTO `oc_zone` VALUES ('1242', '80', 'Abkhazia', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('1243', '80', 'Ajaria', 'AJ', '1');
INSERT INTO `oc_zone` VALUES ('1244', '80', 'Tbilisi', 'TB', '1');
INSERT INTO `oc_zone` VALUES ('1245', '80', 'Guria', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('1246', '80', 'Imereti', 'IM', '1');
INSERT INTO `oc_zone` VALUES ('1247', '80', 'Kakheti', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('1248', '80', 'Kvemo Kartli', 'KK', '1');
INSERT INTO `oc_zone` VALUES ('1249', '80', 'Mtskheta-Mtianeti', 'MM', '1');
INSERT INTO `oc_zone` VALUES ('1250', '80', 'Racha Lechkhumi and Kvemo Svanet', 'RL', '1');
INSERT INTO `oc_zone` VALUES ('1251', '80', 'Samegrelo-Zemo Svaneti', 'SZ', '1');
INSERT INTO `oc_zone` VALUES ('1252', '80', 'Samtskhe-Javakheti', 'SJ', '1');
INSERT INTO `oc_zone` VALUES ('1253', '80', 'Shida Kartli', 'SK', '1');
INSERT INTO `oc_zone` VALUES ('1254', '81', 'Baden-Württemberg', 'BW', '1');
INSERT INTO `oc_zone` VALUES ('1255', '81', 'Bayern', 'BY', '1');
INSERT INTO `oc_zone` VALUES ('1256', '81', 'Berlin', 'BE', '1');
INSERT INTO `oc_zone` VALUES ('1257', '81', 'Brandenburg', 'BB', '1');
INSERT INTO `oc_zone` VALUES ('1258', '81', 'Bremen', 'HB', '1');
INSERT INTO `oc_zone` VALUES ('1259', '81', 'Hamburg', 'HH', '1');
INSERT INTO `oc_zone` VALUES ('1260', '81', 'Hessen', 'HE', '1');
INSERT INTO `oc_zone` VALUES ('1261', '81', 'Mecklenburg-Vorpommern', 'MV', '1');
INSERT INTO `oc_zone` VALUES ('1262', '81', 'Niedersachsen', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('1263', '81', 'Nordrhein-Westfalen', 'NW', '1');
INSERT INTO `oc_zone` VALUES ('1264', '81', 'Rheinland-Pfalz', 'RP', '1');
INSERT INTO `oc_zone` VALUES ('1265', '81', 'Saarland', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('1266', '81', 'Sachsen', 'SN', '1');
INSERT INTO `oc_zone` VALUES ('1267', '81', 'Sachsen-Anhalt', 'ST', '1');
INSERT INTO `oc_zone` VALUES ('1268', '81', 'Schleswig-Holstein', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('1269', '81', 'Thüringen', 'TH', '1');
INSERT INTO `oc_zone` VALUES ('1270', '82', 'Ashanti Region', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('1271', '82', 'Brong-Ahafo Region', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('1272', '82', 'Central Region', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('1273', '82', 'Eastern Region', 'EA', '1');
INSERT INTO `oc_zone` VALUES ('1274', '82', 'Greater Accra Region', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('1275', '82', 'Northern Region', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('1276', '82', 'Upper East Region', 'UE', '1');
INSERT INTO `oc_zone` VALUES ('1277', '82', 'Upper West Region', 'UW', '1');
INSERT INTO `oc_zone` VALUES ('1278', '82', 'Volta Region', 'VO', '1');
INSERT INTO `oc_zone` VALUES ('1279', '82', 'Western Region', 'WE', '1');
INSERT INTO `oc_zone` VALUES ('1280', '84', 'Attica', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('1281', '84', 'Central Greece', 'CN', '1');
INSERT INTO `oc_zone` VALUES ('1282', '84', 'Central Macedonia', 'CM', '1');
INSERT INTO `oc_zone` VALUES ('1283', '84', 'Crete', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('1284', '84', 'East Macedonia and Thrace', 'EM', '1');
INSERT INTO `oc_zone` VALUES ('1285', '84', 'Epirus', 'EP', '1');
INSERT INTO `oc_zone` VALUES ('1286', '84', 'Ionian Islands', 'II', '1');
INSERT INTO `oc_zone` VALUES ('1287', '84', 'North Aegean', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('1288', '84', 'Peloponnesos', 'PP', '1');
INSERT INTO `oc_zone` VALUES ('1289', '84', 'South Aegean', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('1290', '84', 'Thessaly', 'TH', '1');
INSERT INTO `oc_zone` VALUES ('1291', '84', 'West Greece', 'WG', '1');
INSERT INTO `oc_zone` VALUES ('1292', '84', 'West Macedonia', 'WM', '1');
INSERT INTO `oc_zone` VALUES ('1293', '85', 'Avannaa', 'A', '1');
INSERT INTO `oc_zone` VALUES ('1294', '85', 'Tunu', 'T', '1');
INSERT INTO `oc_zone` VALUES ('1295', '85', 'Kitaa', 'K', '1');
INSERT INTO `oc_zone` VALUES ('1296', '86', 'Saint Andrew', 'A', '1');
INSERT INTO `oc_zone` VALUES ('1297', '86', 'Saint David', 'D', '1');
INSERT INTO `oc_zone` VALUES ('1298', '86', 'Saint George', 'G', '1');
INSERT INTO `oc_zone` VALUES ('1299', '86', 'Saint John', 'J', '1');
INSERT INTO `oc_zone` VALUES ('1300', '86', 'Saint Mark', 'M', '1');
INSERT INTO `oc_zone` VALUES ('1301', '86', 'Saint Patrick', 'P', '1');
INSERT INTO `oc_zone` VALUES ('1302', '86', 'Carriacou', 'C', '1');
INSERT INTO `oc_zone` VALUES ('1303', '86', 'Petit Martinique', 'Q', '1');
INSERT INTO `oc_zone` VALUES ('1304', '89', 'Alta Verapaz', 'AV', '1');
INSERT INTO `oc_zone` VALUES ('1305', '89', 'Baja Verapaz', 'BV', '1');
INSERT INTO `oc_zone` VALUES ('1306', '89', 'Chimaltenango', 'CM', '1');
INSERT INTO `oc_zone` VALUES ('1307', '89', 'Chiquimula', 'CQ', '1');
INSERT INTO `oc_zone` VALUES ('1308', '89', 'El Peten', 'PE', '1');
INSERT INTO `oc_zone` VALUES ('1309', '89', 'El Progreso', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('1310', '89', 'El Quiche', 'QC', '1');
INSERT INTO `oc_zone` VALUES ('1311', '89', 'Escuintla', 'ES', '1');
INSERT INTO `oc_zone` VALUES ('1312', '89', 'Guatemala', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('1313', '89', 'Huehuetenango', 'HU', '1');
INSERT INTO `oc_zone` VALUES ('1314', '89', 'Izabal', 'IZ', '1');
INSERT INTO `oc_zone` VALUES ('1315', '89', 'Jalapa', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('1316', '89', 'Jutiapa', 'JU', '1');
INSERT INTO `oc_zone` VALUES ('1317', '89', 'Quetzaltenango', 'QZ', '1');
INSERT INTO `oc_zone` VALUES ('1318', '89', 'Retalhuleu', 'RE', '1');
INSERT INTO `oc_zone` VALUES ('1319', '89', 'Sacatepequez', 'ST', '1');
INSERT INTO `oc_zone` VALUES ('1320', '89', 'San Marcos', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('1321', '89', 'Santa Rosa', 'SR', '1');
INSERT INTO `oc_zone` VALUES ('1322', '89', 'Solola', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('1323', '89', 'Suchitepequez', 'SU', '1');
INSERT INTO `oc_zone` VALUES ('1324', '89', 'Totonicapan', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('1325', '89', 'Zacapa', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('1326', '90', 'Conakry', 'CNK', '1');
INSERT INTO `oc_zone` VALUES ('1327', '90', 'Beyla', 'BYL', '1');
INSERT INTO `oc_zone` VALUES ('1328', '90', 'Boffa', 'BFA', '1');
INSERT INTO `oc_zone` VALUES ('1329', '90', 'Boke', 'BOK', '1');
INSERT INTO `oc_zone` VALUES ('1330', '90', 'Coyah', 'COY', '1');
INSERT INTO `oc_zone` VALUES ('1331', '90', 'Dabola', 'DBL', '1');
INSERT INTO `oc_zone` VALUES ('1332', '90', 'Dalaba', 'DLB', '1');
INSERT INTO `oc_zone` VALUES ('1333', '90', 'Dinguiraye', 'DGR', '1');
INSERT INTO `oc_zone` VALUES ('1334', '90', 'Dubreka', 'DBR', '1');
INSERT INTO `oc_zone` VALUES ('1335', '90', 'Faranah', 'FRN', '1');
INSERT INTO `oc_zone` VALUES ('1336', '90', 'Forecariah', 'FRC', '1');
INSERT INTO `oc_zone` VALUES ('1337', '90', 'Fria', 'FRI', '1');
INSERT INTO `oc_zone` VALUES ('1338', '90', 'Gaoual', 'GAO', '1');
INSERT INTO `oc_zone` VALUES ('1339', '90', 'Gueckedou', 'GCD', '1');
INSERT INTO `oc_zone` VALUES ('1340', '90', 'Kankan', 'KNK', '1');
INSERT INTO `oc_zone` VALUES ('1341', '90', 'Kerouane', 'KRN', '1');
INSERT INTO `oc_zone` VALUES ('1342', '90', 'Kindia', 'KND', '1');
INSERT INTO `oc_zone` VALUES ('1343', '90', 'Kissidougou', 'KSD', '1');
INSERT INTO `oc_zone` VALUES ('1344', '90', 'Koubia', 'KBA', '1');
INSERT INTO `oc_zone` VALUES ('1345', '90', 'Koundara', 'KDA', '1');
INSERT INTO `oc_zone` VALUES ('1346', '90', 'Kouroussa', 'KRA', '1');
INSERT INTO `oc_zone` VALUES ('1347', '90', 'Labe', 'LAB', '1');
INSERT INTO `oc_zone` VALUES ('1348', '90', 'Lelouma', 'LLM', '1');
INSERT INTO `oc_zone` VALUES ('1349', '90', 'Lola', 'LOL', '1');
INSERT INTO `oc_zone` VALUES ('1350', '90', 'Macenta', 'MCT', '1');
INSERT INTO `oc_zone` VALUES ('1351', '90', 'Mali', 'MAL', '1');
INSERT INTO `oc_zone` VALUES ('1352', '90', 'Mamou', 'MAM', '1');
INSERT INTO `oc_zone` VALUES ('1353', '90', 'Mandiana', 'MAN', '1');
INSERT INTO `oc_zone` VALUES ('1354', '90', 'Nzerekore', 'NZR', '1');
INSERT INTO `oc_zone` VALUES ('1355', '90', 'Pita', 'PIT', '1');
INSERT INTO `oc_zone` VALUES ('1356', '90', 'Siguiri', 'SIG', '1');
INSERT INTO `oc_zone` VALUES ('1357', '90', 'Telimele', 'TLM', '1');
INSERT INTO `oc_zone` VALUES ('1358', '90', 'Tougue', 'TOG', '1');
INSERT INTO `oc_zone` VALUES ('1359', '90', 'Yomou', 'YOM', '1');
INSERT INTO `oc_zone` VALUES ('1360', '91', 'Bafata Region', 'BF', '1');
INSERT INTO `oc_zone` VALUES ('1361', '91', 'Biombo Region', 'BB', '1');
INSERT INTO `oc_zone` VALUES ('1362', '91', 'Bissau Region', 'BS', '1');
INSERT INTO `oc_zone` VALUES ('1363', '91', 'Bolama Region', 'BL', '1');
INSERT INTO `oc_zone` VALUES ('1364', '91', 'Cacheu Region', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('1365', '91', 'Gabu Region', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('1366', '91', 'Oio Region', 'OI', '1');
INSERT INTO `oc_zone` VALUES ('1367', '91', 'Quinara Region', 'QU', '1');
INSERT INTO `oc_zone` VALUES ('1368', '91', 'Tombali Region', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('1369', '92', 'Barima-Waini', 'BW', '1');
INSERT INTO `oc_zone` VALUES ('1370', '92', 'Cuyuni-Mazaruni', 'CM', '1');
INSERT INTO `oc_zone` VALUES ('1371', '92', 'Demerara-Mahaica', 'DM', '1');
INSERT INTO `oc_zone` VALUES ('1372', '92', 'East Berbice-Corentyne', 'EC', '1');
INSERT INTO `oc_zone` VALUES ('1373', '92', 'Essequibo Islands-West Demerara', 'EW', '1');
INSERT INTO `oc_zone` VALUES ('1374', '92', 'Mahaica-Berbice', 'MB', '1');
INSERT INTO `oc_zone` VALUES ('1375', '92', 'Pomeroon-Supenaam', 'PM', '1');
INSERT INTO `oc_zone` VALUES ('1376', '92', 'Potaro-Siparuni', 'PI', '1');
INSERT INTO `oc_zone` VALUES ('1377', '92', 'Upper Demerara-Berbice', 'UD', '1');
INSERT INTO `oc_zone` VALUES ('1378', '92', 'Upper Takutu-Upper Essequibo', 'UT', '1');
INSERT INTO `oc_zone` VALUES ('1379', '93', 'Artibonite', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('1380', '93', 'Centre', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('1381', '93', 'Grand\'Anse', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('1382', '93', 'Nord', 'ND', '1');
INSERT INTO `oc_zone` VALUES ('1383', '93', 'Nord-Est', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('1384', '93', 'Nord-Ouest', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('1385', '93', 'Ouest', 'OU', '1');
INSERT INTO `oc_zone` VALUES ('1386', '93', 'Sud', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('1387', '93', 'Sud-Est', 'SE', '1');
INSERT INTO `oc_zone` VALUES ('1388', '94', 'Flat Island', 'F', '1');
INSERT INTO `oc_zone` VALUES ('1389', '94', 'McDonald Island', 'M', '1');
INSERT INTO `oc_zone` VALUES ('1390', '94', 'Shag Island', 'S', '1');
INSERT INTO `oc_zone` VALUES ('1391', '94', 'Heard Island', 'H', '1');
INSERT INTO `oc_zone` VALUES ('1392', '95', 'Atlantida', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('1393', '95', 'Choluteca', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('1394', '95', 'Colon', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('1395', '95', 'Comayagua', 'CM', '1');
INSERT INTO `oc_zone` VALUES ('1396', '95', 'Copan', 'CP', '1');
INSERT INTO `oc_zone` VALUES ('1397', '95', 'Cortes', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('1398', '95', 'El Paraiso', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('1399', '95', 'Francisco Morazan', 'FM', '1');
INSERT INTO `oc_zone` VALUES ('1400', '95', 'Gracias a Dios', 'GD', '1');
INSERT INTO `oc_zone` VALUES ('1401', '95', 'Intibuca', 'IN', '1');
INSERT INTO `oc_zone` VALUES ('1402', '95', 'Islas de la Bahia (Bay Islands)', 'IB', '1');
INSERT INTO `oc_zone` VALUES ('1403', '95', 'La Paz', 'PZ', '1');
INSERT INTO `oc_zone` VALUES ('1404', '95', 'Lempira', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('1405', '95', 'Ocotepeque', 'OC', '1');
INSERT INTO `oc_zone` VALUES ('1406', '95', 'Olancho', 'OL', '1');
INSERT INTO `oc_zone` VALUES ('1407', '95', 'Santa Barbara', 'SB', '1');
INSERT INTO `oc_zone` VALUES ('1408', '95', 'Valle', 'VA', '1');
INSERT INTO `oc_zone` VALUES ('1409', '95', 'Yoro', 'YO', '1');
INSERT INTO `oc_zone` VALUES ('1410', '96', 'Central and Western Hong Kong Island', 'HCW', '1');
INSERT INTO `oc_zone` VALUES ('1411', '96', 'Eastern Hong Kong Island', 'HEA', '1');
INSERT INTO `oc_zone` VALUES ('1412', '96', 'Southern Hong Kong Island', 'HSO', '1');
INSERT INTO `oc_zone` VALUES ('1413', '96', 'Wan Chai Hong Kong Island', 'HWC', '1');
INSERT INTO `oc_zone` VALUES ('1414', '96', 'Kowloon City Kowloon', 'KKC', '1');
INSERT INTO `oc_zone` VALUES ('1415', '96', 'Kwun Tong Kowloon', 'KKT', '1');
INSERT INTO `oc_zone` VALUES ('1416', '96', 'Sham Shui Po Kowloon', 'KSS', '1');
INSERT INTO `oc_zone` VALUES ('1417', '96', 'Wong Tai Sin Kowloon', 'KWT', '1');
INSERT INTO `oc_zone` VALUES ('1418', '96', 'Yau Tsim Mong Kowloon', 'KYT', '1');
INSERT INTO `oc_zone` VALUES ('1419', '96', 'Islands New Territories', 'NIS', '1');
INSERT INTO `oc_zone` VALUES ('1420', '96', 'Kwai Tsing New Territories', 'NKT', '1');
INSERT INTO `oc_zone` VALUES ('1421', '96', 'North New Territories', 'NNO', '1');
INSERT INTO `oc_zone` VALUES ('1422', '96', 'Sai Kung New Territories', 'NSK', '1');
INSERT INTO `oc_zone` VALUES ('1423', '96', 'Sha Tin New Territories', 'NST', '1');
INSERT INTO `oc_zone` VALUES ('1424', '96', 'Tai Po New Territories', 'NTP', '1');
INSERT INTO `oc_zone` VALUES ('1425', '96', 'Tsuen Wan New Territories', 'NTW', '1');
INSERT INTO `oc_zone` VALUES ('1426', '96', 'Tuen Mun New Territories', 'NTM', '1');
INSERT INTO `oc_zone` VALUES ('1427', '96', 'Yuen Long New Territories', 'NYL', '1');
INSERT INTO `oc_zone` VALUES ('1467', '98', 'Austurland', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('1468', '98', 'Hofuoborgarsvaeoi', 'HF', '1');
INSERT INTO `oc_zone` VALUES ('1469', '98', 'Norourland eystra', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('1470', '98', 'Norourland vestra', 'NV', '1');
INSERT INTO `oc_zone` VALUES ('1471', '98', 'Suourland', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('1472', '98', 'Suournes', 'SN', '1');
INSERT INTO `oc_zone` VALUES ('1473', '98', 'Vestfiroir', 'VF', '1');
INSERT INTO `oc_zone` VALUES ('1474', '98', 'Vesturland', 'VL', '1');
INSERT INTO `oc_zone` VALUES ('1475', '99', 'Andaman and Nicobar Islands', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('1476', '99', 'Andhra Pradesh', 'AP', '1');
INSERT INTO `oc_zone` VALUES ('1477', '99', 'Arunachal Pradesh', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('1478', '99', 'Assam', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('1479', '99', 'Bihar', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('1480', '99', 'Chandigarh', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('1481', '99', 'Dadra and Nagar Haveli and Davan and Diu', 'DH', '1');
INSERT INTO `oc_zone` VALUES ('1483', '99', 'Delhi', 'DL', '1');
INSERT INTO `oc_zone` VALUES ('1484', '99', 'Goa', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('1485', '99', 'Gujarat', 'GJ', '1');
INSERT INTO `oc_zone` VALUES ('1486', '99', 'Haryana', 'HR', '1');
INSERT INTO `oc_zone` VALUES ('1487', '99', 'Himachal Pradesh', 'HP', '1');
INSERT INTO `oc_zone` VALUES ('1488', '99', 'Jammu and Kashmir', 'JK', '1');
INSERT INTO `oc_zone` VALUES ('1489', '99', 'Karnataka', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('1490', '99', 'Kerala', 'KL', '1');
INSERT INTO `oc_zone` VALUES ('1491', '99', 'Lakshadweep', 'LD', '1');
INSERT INTO `oc_zone` VALUES ('1492', '99', 'Madhya Pradesh', 'MP', '1');
INSERT INTO `oc_zone` VALUES ('1493', '99', 'Maharashtra', 'MH', '1');
INSERT INTO `oc_zone` VALUES ('1494', '99', 'Manipur', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('1495', '99', 'Meghalaya', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('1496', '99', 'Mizoram', 'MZ', '1');
INSERT INTO `oc_zone` VALUES ('1497', '99', 'Nagaland', 'NL', '1');
INSERT INTO `oc_zone` VALUES ('1498', '99', 'Odisha', 'OR', '1');
INSERT INTO `oc_zone` VALUES ('1499', '99', 'Puducherry', 'PY', '1');
INSERT INTO `oc_zone` VALUES ('1500', '99', 'Punjab', 'PB', '1');
INSERT INTO `oc_zone` VALUES ('1501', '99', 'Rajasthan', 'RJ', '1');
INSERT INTO `oc_zone` VALUES ('1502', '99', 'Sikkim', 'SK', '1');
INSERT INTO `oc_zone` VALUES ('1503', '99', 'Tamil Nadu', 'TN', '1');
INSERT INTO `oc_zone` VALUES ('1504', '99', 'Tripura', 'TR', '1');
INSERT INTO `oc_zone` VALUES ('1505', '99', 'Uttar Pradesh', 'UP', '1');
INSERT INTO `oc_zone` VALUES ('1506', '99', 'West Bengal', 'WB', '1');
INSERT INTO `oc_zone` VALUES ('1507', '100', 'Aceh', 'AC', '1');
INSERT INTO `oc_zone` VALUES ('1508', '100', 'Bali', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('1509', '100', 'Banten', 'BT', '1');
INSERT INTO `oc_zone` VALUES ('1510', '100', 'Bengkulu', 'BE', '1');
INSERT INTO `oc_zone` VALUES ('1511', '100', 'Kalimantan Utara', 'BD', '1');
INSERT INTO `oc_zone` VALUES ('1512', '100', 'Gorontalo', 'GO', '1');
INSERT INTO `oc_zone` VALUES ('1513', '100', 'Jakarta', 'JK', '1');
INSERT INTO `oc_zone` VALUES ('1514', '100', 'Jambi', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('1515', '100', 'Jawa Barat', 'JB', '1');
INSERT INTO `oc_zone` VALUES ('1516', '100', 'Jawa Tengah', 'JT', '1');
INSERT INTO `oc_zone` VALUES ('1517', '100', 'Jawa Timur', 'JI', '1');
INSERT INTO `oc_zone` VALUES ('1518', '100', 'Kalimantan Barat', 'KB', '1');
INSERT INTO `oc_zone` VALUES ('1519', '100', 'Kalimantan Selatan', 'KS', '1');
INSERT INTO `oc_zone` VALUES ('1520', '100', 'Kalimantan Tengah', 'KT', '1');
INSERT INTO `oc_zone` VALUES ('1521', '100', 'Kalimantan Timur', 'KI', '1');
INSERT INTO `oc_zone` VALUES ('1522', '100', 'Kepulauan Bangka Belitung', 'BB', '1');
INSERT INTO `oc_zone` VALUES ('1523', '100', 'Lampung', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('1524', '100', 'Maluku', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('1525', '100', 'Maluku Utara', 'MU', '1');
INSERT INTO `oc_zone` VALUES ('1526', '100', 'Nusa Tenggara Barat', 'NB', '1');
INSERT INTO `oc_zone` VALUES ('1527', '100', 'Nusa Tenggara Timur', 'NT', '1');
INSERT INTO `oc_zone` VALUES ('1528', '100', 'Papua', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('1529', '100', 'Riau', 'RI', '1');
INSERT INTO `oc_zone` VALUES ('1530', '100', 'Sulawesi Selatan', 'SN', '1');
INSERT INTO `oc_zone` VALUES ('1531', '100', 'Sulawesi Tengah', 'ST', '1');
INSERT INTO `oc_zone` VALUES ('1532', '100', 'Sulawesi Tenggara', 'SG', '1');
INSERT INTO `oc_zone` VALUES ('1533', '100', 'Sulawesi Utara', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('1534', '100', 'Sumatera Barat', 'SB', '1');
INSERT INTO `oc_zone` VALUES ('1535', '100', 'Sumatera Selatan', 'SS', '1');
INSERT INTO `oc_zone` VALUES ('1536', '100', 'Sumatera Utara', 'SU', '1');
INSERT INTO `oc_zone` VALUES ('1537', '100', 'Yogyakarta', 'YO', '1');
INSERT INTO `oc_zone` VALUES ('1538', '101', 'Tehran', 'TEH', '1');
INSERT INTO `oc_zone` VALUES ('1539', '101', 'Qom', 'QOM', '1');
INSERT INTO `oc_zone` VALUES ('1540', '101', 'Markazi', 'MKZ', '1');
INSERT INTO `oc_zone` VALUES ('1541', '101', 'Qazvin', 'QAZ', '1');
INSERT INTO `oc_zone` VALUES ('1542', '101', 'Gilan', 'GIL', '1');
INSERT INTO `oc_zone` VALUES ('1543', '101', 'Ardabil', 'ARD', '1');
INSERT INTO `oc_zone` VALUES ('1544', '101', 'Zanjan', 'ZAN', '1');
INSERT INTO `oc_zone` VALUES ('1545', '101', 'East Azarbaijan', 'EAZ', '1');
INSERT INTO `oc_zone` VALUES ('1546', '101', 'West Azarbaijan', 'WEZ', '1');
INSERT INTO `oc_zone` VALUES ('1547', '101', 'Kurdistan', 'KRD', '1');
INSERT INTO `oc_zone` VALUES ('1548', '101', 'Hamadan', 'HMD', '1');
INSERT INTO `oc_zone` VALUES ('1549', '101', 'Kermanshah', 'KRM', '1');
INSERT INTO `oc_zone` VALUES ('1550', '101', 'Ilam', 'ILM', '1');
INSERT INTO `oc_zone` VALUES ('1551', '101', 'Lorestan', 'LRS', '1');
INSERT INTO `oc_zone` VALUES ('1552', '101', 'Khuzestan', 'KZT', '1');
INSERT INTO `oc_zone` VALUES ('1553', '101', 'Chahar Mahaal and Bakhtiari', 'CMB', '1');
INSERT INTO `oc_zone` VALUES ('1554', '101', 'Kohkiluyeh and Buyer Ahmad', 'KBA', '1');
INSERT INTO `oc_zone` VALUES ('1555', '101', 'Bushehr', 'BSH', '1');
INSERT INTO `oc_zone` VALUES ('1556', '101', 'Fars', 'FAR', '1');
INSERT INTO `oc_zone` VALUES ('1557', '101', 'Hormozgan', 'HRM', '1');
INSERT INTO `oc_zone` VALUES ('1558', '101', 'Sistan and Baluchistan', 'SBL', '1');
INSERT INTO `oc_zone` VALUES ('1559', '101', 'Kerman', 'KRB', '1');
INSERT INTO `oc_zone` VALUES ('1560', '101', 'Yazd', 'YZD', '1');
INSERT INTO `oc_zone` VALUES ('1561', '101', 'Esfahan', 'EFH', '1');
INSERT INTO `oc_zone` VALUES ('1562', '101', 'Semnan', 'SMN', '1');
INSERT INTO `oc_zone` VALUES ('1563', '101', 'Mazandaran', 'MZD', '1');
INSERT INTO `oc_zone` VALUES ('1564', '101', 'Golestan', 'GLS', '1');
INSERT INTO `oc_zone` VALUES ('1565', '101', 'North Khorasan', 'NKH', '1');
INSERT INTO `oc_zone` VALUES ('1566', '101', 'Razavi Khorasan', 'RKH', '1');
INSERT INTO `oc_zone` VALUES ('1567', '101', 'South Khorasan', 'SKH', '1');
INSERT INTO `oc_zone` VALUES ('1568', '102', 'Baghdad', 'BD', '1');
INSERT INTO `oc_zone` VALUES ('1569', '102', 'Salah ad Din', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('1570', '102', 'Diyala', 'DY', '1');
INSERT INTO `oc_zone` VALUES ('1571', '102', 'Wasit', 'WS', '1');
INSERT INTO `oc_zone` VALUES ('1572', '102', 'Maysan', 'MY', '1');
INSERT INTO `oc_zone` VALUES ('1573', '102', 'Al Basrah', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('1574', '102', 'Dhi Qar', 'DQ', '1');
INSERT INTO `oc_zone` VALUES ('1575', '102', 'Al Muthanna', 'MU', '1');
INSERT INTO `oc_zone` VALUES ('1576', '102', 'Al Qadisyah', 'QA', '1');
INSERT INTO `oc_zone` VALUES ('1577', '102', 'Babil', 'BB', '1');
INSERT INTO `oc_zone` VALUES ('1578', '102', 'Al Karbala', 'KB', '1');
INSERT INTO `oc_zone` VALUES ('1579', '102', 'An Najaf', 'NJ', '1');
INSERT INTO `oc_zone` VALUES ('1580', '102', 'Al Anbar', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('1581', '102', 'Ninawa', 'NN', '1');
INSERT INTO `oc_zone` VALUES ('1582', '102', 'Dahuk', 'DH', '1');
INSERT INTO `oc_zone` VALUES ('1583', '102', 'Arbil', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('1584', '102', 'Kirkuk', 'KI', '1');
INSERT INTO `oc_zone` VALUES ('1585', '102', 'As Sulaymaniyah', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('1586', '103', 'Carlow', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('1587', '103', 'Cavan', 'CV', '1');
INSERT INTO `oc_zone` VALUES ('1588', '103', 'Clare', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('1589', '103', 'Cork', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('1590', '103', 'Donegal', 'DO', '1');
INSERT INTO `oc_zone` VALUES ('1591', '103', 'Dublin', 'DU', '1');
INSERT INTO `oc_zone` VALUES ('1592', '103', 'Galway', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('1593', '103', 'Kerry', 'KE', '1');
INSERT INTO `oc_zone` VALUES ('1594', '103', 'Kildare', 'KI', '1');
INSERT INTO `oc_zone` VALUES ('1595', '103', 'Kilkenny', 'KL', '1');
INSERT INTO `oc_zone` VALUES ('1596', '103', 'Laois', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('1597', '103', 'Leitrim', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('1598', '103', 'Limerick', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('1599', '103', 'Longford', 'LO', '1');
INSERT INTO `oc_zone` VALUES ('1600', '103', 'Louth', 'LU', '1');
INSERT INTO `oc_zone` VALUES ('1601', '103', 'Mayo', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('1602', '103', 'Meath', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('1603', '103', 'Monaghan', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('1604', '103', 'Offaly', 'OF', '1');
INSERT INTO `oc_zone` VALUES ('1605', '103', 'Roscommon', 'RO', '1');
INSERT INTO `oc_zone` VALUES ('1606', '103', 'Sligo', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('1607', '103', 'Tipperary', 'TI', '1');
INSERT INTO `oc_zone` VALUES ('1608', '103', 'Waterford', 'WA', '1');
INSERT INTO `oc_zone` VALUES ('1609', '103', 'Westmeath', 'WE', '1');
INSERT INTO `oc_zone` VALUES ('1610', '103', 'Wexford', 'WX', '1');
INSERT INTO `oc_zone` VALUES ('1611', '103', 'Wicklow', 'WI', '1');
INSERT INTO `oc_zone` VALUES ('1612', '104', 'Be\'er Sheva', 'BS', '1');
INSERT INTO `oc_zone` VALUES ('1613', '104', 'Bika\'at Hayarden', 'BH', '1');
INSERT INTO `oc_zone` VALUES ('1614', '104', 'Eilat and Arava', 'EA', '1');
INSERT INTO `oc_zone` VALUES ('1615', '104', 'Galil', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('1616', '104', 'Haifa', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('1617', '104', 'Jehuda Mountains', 'JM', '1');
INSERT INTO `oc_zone` VALUES ('1618', '104', 'Jerusalem', 'JE', '1');
INSERT INTO `oc_zone` VALUES ('1619', '104', 'Negev', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('1620', '104', 'Semaria', 'SE', '1');
INSERT INTO `oc_zone` VALUES ('1621', '104', 'Sharon', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('1622', '104', 'Tel Aviv (Gosh Dan)', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('1643', '106', 'Clarendon Parish', 'CLA', '1');
INSERT INTO `oc_zone` VALUES ('1644', '106', 'Hanover Parish', 'HAN', '1');
INSERT INTO `oc_zone` VALUES ('1645', '106', 'Kingston Parish', 'KIN', '1');
INSERT INTO `oc_zone` VALUES ('1646', '106', 'Manchester Parish', 'MAN', '1');
INSERT INTO `oc_zone` VALUES ('1647', '106', 'Portland Parish', 'POR', '1');
INSERT INTO `oc_zone` VALUES ('1648', '106', 'Saint Andrew Parish', 'AND', '1');
INSERT INTO `oc_zone` VALUES ('1649', '106', 'Saint Ann Parish', 'ANN', '1');
INSERT INTO `oc_zone` VALUES ('1650', '106', 'Saint Catherine Parish', 'CAT', '1');
INSERT INTO `oc_zone` VALUES ('1651', '106', 'Saint Elizabeth Parish', 'ELI', '1');
INSERT INTO `oc_zone` VALUES ('1652', '106', 'Saint James Parish', 'JAM', '1');
INSERT INTO `oc_zone` VALUES ('1653', '106', 'Saint Mary Parish', 'MAR', '1');
INSERT INTO `oc_zone` VALUES ('1654', '106', 'Saint Thomas Parish', 'THO', '1');
INSERT INTO `oc_zone` VALUES ('1655', '106', 'Trelawny Parish', 'TRL', '1');
INSERT INTO `oc_zone` VALUES ('1656', '106', 'Westmoreland Parish', 'WML', '1');
INSERT INTO `oc_zone` VALUES ('1657', '107', 'Aichi', 'AI', '1');
INSERT INTO `oc_zone` VALUES ('1658', '107', 'Akita', 'AK', '1');
INSERT INTO `oc_zone` VALUES ('1659', '107', 'Aomori', 'AO', '1');
INSERT INTO `oc_zone` VALUES ('1660', '107', 'Chiba', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('1661', '107', 'Ehime', 'EH', '1');
INSERT INTO `oc_zone` VALUES ('1662', '107', 'Fukui', 'FK', '1');
INSERT INTO `oc_zone` VALUES ('1663', '107', 'Fukuoka', 'FU', '1');
INSERT INTO `oc_zone` VALUES ('1664', '107', 'Fukushima', 'FS', '1');
INSERT INTO `oc_zone` VALUES ('1665', '107', 'Gifu', 'GI', '1');
INSERT INTO `oc_zone` VALUES ('1666', '107', 'Gumma', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('1667', '107', 'Hiroshima', 'HI', '1');
INSERT INTO `oc_zone` VALUES ('1668', '107', 'Hokkaido', 'HO', '1');
INSERT INTO `oc_zone` VALUES ('1669', '107', 'Hyogo', 'HY', '1');
INSERT INTO `oc_zone` VALUES ('1670', '107', 'Ibaraki', 'IB', '1');
INSERT INTO `oc_zone` VALUES ('1671', '107', 'Ishikawa', 'IS', '1');
INSERT INTO `oc_zone` VALUES ('1672', '107', 'Iwate', 'IW', '1');
INSERT INTO `oc_zone` VALUES ('1673', '107', 'Kagawa', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('1674', '107', 'Kagoshima', 'KG', '1');
INSERT INTO `oc_zone` VALUES ('1675', '107', 'Kanagawa', 'KN', '1');
INSERT INTO `oc_zone` VALUES ('1676', '107', 'Kochi', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('1677', '107', 'Kumamoto', 'KU', '1');
INSERT INTO `oc_zone` VALUES ('1678', '107', 'Kyoto', 'KY', '1');
INSERT INTO `oc_zone` VALUES ('1679', '107', 'Mie', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('1680', '107', 'Miyagi', 'MY', '1');
INSERT INTO `oc_zone` VALUES ('1681', '107', 'Miyazaki', 'MZ', '1');
INSERT INTO `oc_zone` VALUES ('1682', '107', 'Nagano', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('1683', '107', 'Nagasaki', 'NG', '1');
INSERT INTO `oc_zone` VALUES ('1684', '107', 'Nara', 'NR', '1');
INSERT INTO `oc_zone` VALUES ('1685', '107', 'Niigata', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('1686', '107', 'Oita', 'OI', '1');
INSERT INTO `oc_zone` VALUES ('1687', '107', 'Okayama', 'OK', '1');
INSERT INTO `oc_zone` VALUES ('1688', '107', 'Okinawa', 'ON', '1');
INSERT INTO `oc_zone` VALUES ('1689', '107', 'Osaka', 'OS', '1');
INSERT INTO `oc_zone` VALUES ('1690', '107', 'Saga', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('1691', '107', 'Saitama', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('1692', '107', 'Shiga', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('1693', '107', 'Shimane', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('1694', '107', 'Shizuoka', 'SZ', '1');
INSERT INTO `oc_zone` VALUES ('1695', '107', 'Tochigi', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('1696', '107', 'Tokushima', 'TS', '1');
INSERT INTO `oc_zone` VALUES ('1697', '107', 'Tokyo', 'TK', '1');
INSERT INTO `oc_zone` VALUES ('1698', '107', 'Tottori', 'TT', '1');
INSERT INTO `oc_zone` VALUES ('1699', '107', 'Toyama', 'TY', '1');
INSERT INTO `oc_zone` VALUES ('1700', '107', 'Wakayama', 'WA', '1');
INSERT INTO `oc_zone` VALUES ('1701', '107', 'Yamagata', 'YA', '1');
INSERT INTO `oc_zone` VALUES ('1702', '107', 'Yamaguchi', 'YM', '1');
INSERT INTO `oc_zone` VALUES ('1703', '107', 'Yamanashi', 'YN', '1');
INSERT INTO `oc_zone` VALUES ('1704', '108', '\'Amman', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('1705', '108', 'Ajlun', 'AJ', '1');
INSERT INTO `oc_zone` VALUES ('1706', '108', 'Al \'Aqabah', 'AA', '1');
INSERT INTO `oc_zone` VALUES ('1707', '108', 'Al Balqa\'', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('1708', '108', 'Al Karak', 'AK', '1');
INSERT INTO `oc_zone` VALUES ('1709', '108', 'Al Mafraq', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('1710', '108', 'At Tafilah', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('1711', '108', 'Az Zarqa\'', 'AZ', '1');
INSERT INTO `oc_zone` VALUES ('1712', '108', 'Irbid', 'IR', '1');
INSERT INTO `oc_zone` VALUES ('1713', '108', 'Jarash', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('1714', '108', 'Ma\'an', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('1715', '108', 'Madaba', 'MD', '1');
INSERT INTO `oc_zone` VALUES ('1716', '109', 'Almaty', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('1717', '109', 'Almaty City', 'AC', '1');
INSERT INTO `oc_zone` VALUES ('1718', '109', 'Aqmola', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('1719', '109', 'Aqtobe', 'AQ', '1');
INSERT INTO `oc_zone` VALUES ('1720', '109', 'Astana City', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('1721', '109', 'Atyrau', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('1722', '109', 'Batys Qazaqstan', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('1723', '109', 'Bayqongyr City', 'BY', '1');
INSERT INTO `oc_zone` VALUES ('1724', '109', 'Mangghystau', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('1725', '109', 'Ongtustik Qazaqstan', 'ON', '1');
INSERT INTO `oc_zone` VALUES ('1726', '109', 'Pavlodar', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('1727', '109', 'Qaraghandy', 'QA', '1');
INSERT INTO `oc_zone` VALUES ('1728', '109', 'Qostanay', 'QO', '1');
INSERT INTO `oc_zone` VALUES ('1729', '109', 'Qyzylorda', 'QY', '1');
INSERT INTO `oc_zone` VALUES ('1730', '109', 'Shyghys Qazaqstan', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('1731', '109', 'Soltustik Qazaqstan', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('1732', '109', 'Zhambyl', 'ZH', '1');
INSERT INTO `oc_zone` VALUES ('1733', '110', 'Central', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('1734', '110', 'Coast', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('1735', '110', 'Eastern', 'EA', '1');
INSERT INTO `oc_zone` VALUES ('1736', '110', 'Nairobi Area', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('1737', '110', 'North Eastern', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('1738', '110', 'Nyanza', 'NY', '1');
INSERT INTO `oc_zone` VALUES ('1739', '110', 'Rift Valley', 'RV', '1');
INSERT INTO `oc_zone` VALUES ('1740', '110', 'Western', 'WE', '1');
INSERT INTO `oc_zone` VALUES ('1741', '111', 'Abaiang', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('1742', '111', 'Abemama', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('1743', '111', 'Aranuka', 'AK', '1');
INSERT INTO `oc_zone` VALUES ('1744', '111', 'Arorae', 'AO', '1');
INSERT INTO `oc_zone` VALUES ('1745', '111', 'Banaba', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('1746', '111', 'Beru', 'BE', '1');
INSERT INTO `oc_zone` VALUES ('1747', '111', 'Butaritari', 'bT', '1');
INSERT INTO `oc_zone` VALUES ('1748', '111', 'Kanton', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('1749', '111', 'Kiritimati', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('1750', '111', 'Kuria', 'KU', '1');
INSERT INTO `oc_zone` VALUES ('1751', '111', 'Maiana', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('1752', '111', 'Makin', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('1753', '111', 'Marakei', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('1754', '111', 'Nikunau', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('1755', '111', 'Nonouti', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('1756', '111', 'Onotoa', 'ON', '1');
INSERT INTO `oc_zone` VALUES ('1757', '111', 'Tabiteuea', 'TT', '1');
INSERT INTO `oc_zone` VALUES ('1758', '111', 'Tabuaeran', 'TR', '1');
INSERT INTO `oc_zone` VALUES ('1759', '111', 'Tamana', 'TM', '1');
INSERT INTO `oc_zone` VALUES ('1760', '111', 'Tarawa', 'TW', '1');
INSERT INTO `oc_zone` VALUES ('1761', '111', 'Teraina', 'TE', '1');
INSERT INTO `oc_zone` VALUES ('1762', '112', 'Chagang-do', 'CHA', '1');
INSERT INTO `oc_zone` VALUES ('1763', '112', 'Hamgyong-bukto', 'HAB', '1');
INSERT INTO `oc_zone` VALUES ('1764', '112', 'Hamgyong-namdo', 'HAN', '1');
INSERT INTO `oc_zone` VALUES ('1765', '112', 'Hwanghae-bukto', 'HWB', '1');
INSERT INTO `oc_zone` VALUES ('1766', '112', 'Hwanghae-namdo', 'HWN', '1');
INSERT INTO `oc_zone` VALUES ('1767', '112', 'Kangwon-do', 'KAN', '1');
INSERT INTO `oc_zone` VALUES ('1768', '112', 'P\'yongan-bukto', 'PYB', '1');
INSERT INTO `oc_zone` VALUES ('1769', '112', 'P\'yongan-namdo', 'PYN', '1');
INSERT INTO `oc_zone` VALUES ('1770', '112', 'Ryanggang-do (Yanggang-do)', 'YAN', '1');
INSERT INTO `oc_zone` VALUES ('1771', '112', 'Rason Directly Governed City', 'NAJ', '1');
INSERT INTO `oc_zone` VALUES ('1772', '112', 'P\'yongyang Special City', 'PYO', '1');
INSERT INTO `oc_zone` VALUES ('1788', '114', 'Al \'Asimah', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('1789', '114', 'Al Ahmadi', 'AA', '1');
INSERT INTO `oc_zone` VALUES ('1790', '114', 'Al Farwaniyah', 'AF', '1');
INSERT INTO `oc_zone` VALUES ('1791', '114', 'Al Jahra\'', 'AJ', '1');
INSERT INTO `oc_zone` VALUES ('1792', '114', 'Hawalli', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('1793', '115', 'Bishkek', 'GB', '1');
INSERT INTO `oc_zone` VALUES ('1794', '115', 'Batken', 'B', '1');
INSERT INTO `oc_zone` VALUES ('1795', '115', 'Chu', 'C', '1');
INSERT INTO `oc_zone` VALUES ('1796', '115', 'Jalal-Abad', 'J', '1');
INSERT INTO `oc_zone` VALUES ('1797', '115', 'Naryn', 'N', '1');
INSERT INTO `oc_zone` VALUES ('1798', '115', 'Osh', 'O', '1');
INSERT INTO `oc_zone` VALUES ('1799', '115', 'Talas', 'T', '1');
INSERT INTO `oc_zone` VALUES ('1800', '115', 'Ysyk-Kol', 'Y', '1');
INSERT INTO `oc_zone` VALUES ('1801', '116', 'Vientiane', 'VT', '1');
INSERT INTO `oc_zone` VALUES ('1802', '116', 'Attapu', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('1803', '116', 'Bokeo', 'BK', '1');
INSERT INTO `oc_zone` VALUES ('1804', '116', 'Bolikhamxai', 'BL', '1');
INSERT INTO `oc_zone` VALUES ('1805', '116', 'Champasak', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('1806', '116', 'Houaphan', 'HO', '1');
INSERT INTO `oc_zone` VALUES ('1807', '116', 'Khammouan', 'KH', '1');
INSERT INTO `oc_zone` VALUES ('1808', '116', 'Louang Namtha', 'LM', '1');
INSERT INTO `oc_zone` VALUES ('1809', '116', 'Louangphabang', 'LP', '1');
INSERT INTO `oc_zone` VALUES ('1810', '116', 'Oudomxai', 'OU', '1');
INSERT INTO `oc_zone` VALUES ('1811', '116', 'Phongsali', 'PH', '1');
INSERT INTO `oc_zone` VALUES ('1812', '116', 'Salavan', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('1813', '116', 'Savannakhet', 'SV', '1');
INSERT INTO `oc_zone` VALUES ('1814', '116', 'Vientiane', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('1815', '116', 'Xaignabouli', 'XA', '1');
INSERT INTO `oc_zone` VALUES ('1816', '116', 'Xekong', 'XE', '1');
INSERT INTO `oc_zone` VALUES ('1817', '116', 'Xiangkhoang', 'XI', '1');
INSERT INTO `oc_zone` VALUES ('1818', '116', 'Xaisomboun', 'XN', '1');
INSERT INTO `oc_zone` VALUES ('1852', '119', 'Berea', 'BE', '1');
INSERT INTO `oc_zone` VALUES ('1853', '119', 'Butha-Buthe', 'BB', '1');
INSERT INTO `oc_zone` VALUES ('1854', '119', 'Leribe', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('1855', '119', 'Mafeteng', 'MF', '1');
INSERT INTO `oc_zone` VALUES ('1856', '119', 'Maseru', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('1857', '119', 'Mohale\'s Hoek', 'MH', '1');
INSERT INTO `oc_zone` VALUES ('1858', '119', 'Mokhotlong', 'MK', '1');
INSERT INTO `oc_zone` VALUES ('1859', '119', 'Qacha\'s Nek', 'QN', '1');
INSERT INTO `oc_zone` VALUES ('1860', '119', 'Quthing', 'QT', '1');
INSERT INTO `oc_zone` VALUES ('1861', '119', 'Thaba-Tseka', 'TT', '1');
INSERT INTO `oc_zone` VALUES ('1862', '120', 'Bomi', 'BI', '1');
INSERT INTO `oc_zone` VALUES ('1863', '120', 'Bong', 'BG', '1');
INSERT INTO `oc_zone` VALUES ('1864', '120', 'Grand Bassa', 'GB', '1');
INSERT INTO `oc_zone` VALUES ('1865', '120', 'Grand Cape Mount', 'CM', '1');
INSERT INTO `oc_zone` VALUES ('1866', '120', 'Grand Gedeh', 'GG', '1');
INSERT INTO `oc_zone` VALUES ('1867', '120', 'Grand Kru', 'GK', '1');
INSERT INTO `oc_zone` VALUES ('1868', '120', 'Lofa', 'LO', '1');
INSERT INTO `oc_zone` VALUES ('1869', '120', 'Margibi', 'MG', '1');
INSERT INTO `oc_zone` VALUES ('1870', '120', 'Maryland', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('1871', '120', 'Montserrado', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('1872', '120', 'Nimba', 'NB', '1');
INSERT INTO `oc_zone` VALUES ('1873', '120', 'River Cess', 'RC', '1');
INSERT INTO `oc_zone` VALUES ('1874', '120', 'Sinoe', 'SN', '1');
INSERT INTO `oc_zone` VALUES ('1875', '121', 'Ajdabiya', 'AJ', '1');
INSERT INTO `oc_zone` VALUES ('1876', '121', 'Al \'Aziziyah', 'AZ', '1');
INSERT INTO `oc_zone` VALUES ('1877', '121', 'Al Fatih', 'FA', '1');
INSERT INTO `oc_zone` VALUES ('1878', '121', 'Al Jabal al Akhdar', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('1879', '121', 'Al Jufrah', 'JU', '1');
INSERT INTO `oc_zone` VALUES ('1880', '121', 'Al Khums', 'KH', '1');
INSERT INTO `oc_zone` VALUES ('1881', '121', 'Al Kufrah', 'KU', '1');
INSERT INTO `oc_zone` VALUES ('1882', '121', 'An Nuqat al Khams', 'NK', '1');
INSERT INTO `oc_zone` VALUES ('1883', '121', 'Ash Shati\'', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('1884', '121', 'Awbari', 'AW', '1');
INSERT INTO `oc_zone` VALUES ('1885', '121', 'Az Zawiyah', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('1886', '121', 'Banghazi', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('1887', '121', 'Darnah', 'DA', '1');
INSERT INTO `oc_zone` VALUES ('1888', '121', 'Ghadamis', 'GD', '1');
INSERT INTO `oc_zone` VALUES ('1889', '121', 'Gharyan', 'GY', '1');
INSERT INTO `oc_zone` VALUES ('1890', '121', 'Misratah', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('1891', '121', 'Murzuq', 'MZ', '1');
INSERT INTO `oc_zone` VALUES ('1892', '121', 'Sabha', 'SB', '1');
INSERT INTO `oc_zone` VALUES ('1893', '121', 'Sawfajjin', 'SW', '1');
INSERT INTO `oc_zone` VALUES ('1894', '121', 'Surt', 'SU', '1');
INSERT INTO `oc_zone` VALUES ('1895', '121', 'Tarabulus (Tripoli)', 'TL', '1');
INSERT INTO `oc_zone` VALUES ('1896', '121', 'Tarhunah', 'TH', '1');
INSERT INTO `oc_zone` VALUES ('1897', '121', 'Tubruq', 'TU', '1');
INSERT INTO `oc_zone` VALUES ('1898', '121', 'Yafran', 'YA', '1');
INSERT INTO `oc_zone` VALUES ('1899', '121', 'Zlitan', 'ZL', '1');
INSERT INTO `oc_zone` VALUES ('1900', '122', 'Vaduz', 'V', '1');
INSERT INTO `oc_zone` VALUES ('1901', '122', 'Schaan', 'A', '1');
INSERT INTO `oc_zone` VALUES ('1902', '122', 'Balzers', 'B', '1');
INSERT INTO `oc_zone` VALUES ('1903', '122', 'Triesen', 'N', '1');
INSERT INTO `oc_zone` VALUES ('1904', '122', 'Eschen', 'E', '1');
INSERT INTO `oc_zone` VALUES ('1905', '122', 'Mauren', 'M', '1');
INSERT INTO `oc_zone` VALUES ('1906', '122', 'Triesenberg', 'T', '1');
INSERT INTO `oc_zone` VALUES ('1907', '122', 'Ruggell', 'R', '1');
INSERT INTO `oc_zone` VALUES ('1908', '122', 'Gamprin', 'G', '1');
INSERT INTO `oc_zone` VALUES ('1909', '122', 'Schellenberg', 'L', '1');
INSERT INTO `oc_zone` VALUES ('1910', '122', 'Planken', 'P', '1');
INSERT INTO `oc_zone` VALUES ('1911', '123', 'Alytus', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('1912', '123', 'Kaunas', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('1913', '123', 'Klaipeda', 'KL', '1');
INSERT INTO `oc_zone` VALUES ('1914', '123', 'Marijampole', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('1915', '123', 'Panevezys', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('1916', '123', 'Siauliai', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('1917', '123', 'Taurage', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('1918', '123', 'Telsiai', 'TE', '1');
INSERT INTO `oc_zone` VALUES ('1919', '123', 'Utena', 'UT', '1');
INSERT INTO `oc_zone` VALUES ('1920', '123', 'Vilnius', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('1921', '124', 'Diekirch', 'DD', '1');
INSERT INTO `oc_zone` VALUES ('1922', '124', 'Clervaux', 'DC', '1');
INSERT INTO `oc_zone` VALUES ('1923', '124', 'Redange', 'DR', '1');
INSERT INTO `oc_zone` VALUES ('1924', '124', 'Vianden', 'DV', '1');
INSERT INTO `oc_zone` VALUES ('1925', '124', 'Wiltz', 'DW', '1');
INSERT INTO `oc_zone` VALUES ('1926', '124', 'Grevenmacher', 'GG', '1');
INSERT INTO `oc_zone` VALUES ('1927', '124', 'Echternach', 'GE', '1');
INSERT INTO `oc_zone` VALUES ('1928', '124', 'Remich', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('1929', '124', 'Luxembourg', 'LL', '1');
INSERT INTO `oc_zone` VALUES ('1930', '124', 'Capellen', 'LC', '1');
INSERT INTO `oc_zone` VALUES ('1931', '124', 'Esch-sur-Alzette', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('1932', '124', 'Mersch', 'LM', '1');
INSERT INTO `oc_zone` VALUES ('1933', '125', 'Our Lady Fatima Parish', 'OLF', '1');
INSERT INTO `oc_zone` VALUES ('1934', '125', 'St. Anthony Parish', 'ANT', '1');
INSERT INTO `oc_zone` VALUES ('1935', '125', 'St. Lazarus Parish', 'LAZ', '1');
INSERT INTO `oc_zone` VALUES ('1936', '125', 'Cathedral Parish', 'CAT', '1');
INSERT INTO `oc_zone` VALUES ('1937', '125', 'St. Lawrence Parish', 'LAW', '1');
INSERT INTO `oc_zone` VALUES ('1938', '127', 'Antananarivo', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('1939', '127', 'Antsiranana', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('1940', '127', 'Fianarantsoa', 'FN', '1');
INSERT INTO `oc_zone` VALUES ('1941', '127', 'Mahajanga', 'MJ', '1');
INSERT INTO `oc_zone` VALUES ('1942', '127', 'Toamasina', 'TM', '1');
INSERT INTO `oc_zone` VALUES ('1943', '127', 'Toliara', 'TL', '1');
INSERT INTO `oc_zone` VALUES ('1944', '128', 'Balaka', 'BLK', '1');
INSERT INTO `oc_zone` VALUES ('1945', '128', 'Blantyre', 'BLT', '1');
INSERT INTO `oc_zone` VALUES ('1946', '128', 'Chikwawa', 'CKW', '1');
INSERT INTO `oc_zone` VALUES ('1947', '128', 'Chiradzulu', 'CRD', '1');
INSERT INTO `oc_zone` VALUES ('1948', '128', 'Chitipa', 'CTP', '1');
INSERT INTO `oc_zone` VALUES ('1949', '128', 'Dedza', 'DDZ', '1');
INSERT INTO `oc_zone` VALUES ('1950', '128', 'Dowa', 'DWA', '1');
INSERT INTO `oc_zone` VALUES ('1951', '128', 'Karonga', 'KRG', '1');
INSERT INTO `oc_zone` VALUES ('1952', '128', 'Kasungu', 'KSG', '1');
INSERT INTO `oc_zone` VALUES ('1953', '128', 'Likoma', 'LKM', '1');
INSERT INTO `oc_zone` VALUES ('1954', '128', 'Lilongwe', 'LLG', '1');
INSERT INTO `oc_zone` VALUES ('1955', '128', 'Machinga', 'MCG', '1');
INSERT INTO `oc_zone` VALUES ('1956', '128', 'Mangochi', 'MGC', '1');
INSERT INTO `oc_zone` VALUES ('1957', '128', 'Mchinji', 'MCH', '1');
INSERT INTO `oc_zone` VALUES ('1958', '128', 'Mulanje', 'MLJ', '1');
INSERT INTO `oc_zone` VALUES ('1959', '128', 'Mwanza', 'MWZ', '1');
INSERT INTO `oc_zone` VALUES ('1960', '128', 'Mzimba', 'MZM', '1');
INSERT INTO `oc_zone` VALUES ('1961', '128', 'Ntcheu', 'NTU', '1');
INSERT INTO `oc_zone` VALUES ('1962', '128', 'Nkhata Bay', 'NKB', '1');
INSERT INTO `oc_zone` VALUES ('1963', '128', 'Nkhotakota', 'NKH', '1');
INSERT INTO `oc_zone` VALUES ('1964', '128', 'Nsanje', 'NSJ', '1');
INSERT INTO `oc_zone` VALUES ('1965', '128', 'Ntchisi', 'NTI', '1');
INSERT INTO `oc_zone` VALUES ('1966', '128', 'Phalombe', 'PHL', '1');
INSERT INTO `oc_zone` VALUES ('1967', '128', 'Rumphi', 'RMP', '1');
INSERT INTO `oc_zone` VALUES ('1968', '128', 'Salima', 'SLM', '1');
INSERT INTO `oc_zone` VALUES ('1969', '128', 'Thyolo', 'THY', '1');
INSERT INTO `oc_zone` VALUES ('1970', '128', 'Zomba', 'ZBA', '1');
INSERT INTO `oc_zone` VALUES ('1971', '129', 'Johor', 'MY-01', '1');
INSERT INTO `oc_zone` VALUES ('1972', '129', 'Kedah', 'MY-02', '1');
INSERT INTO `oc_zone` VALUES ('1973', '129', 'Kelantan', 'MY-03', '1');
INSERT INTO `oc_zone` VALUES ('1974', '129', 'Labuan', 'MY-15', '1');
INSERT INTO `oc_zone` VALUES ('1975', '129', 'Melaka', 'MY-04', '1');
INSERT INTO `oc_zone` VALUES ('1976', '129', 'Negeri Sembilan', 'MY-05', '1');
INSERT INTO `oc_zone` VALUES ('1977', '129', 'Pahang', 'MY-06', '1');
INSERT INTO `oc_zone` VALUES ('1978', '129', 'Perak', 'MY-08', '1');
INSERT INTO `oc_zone` VALUES ('1979', '129', 'Perlis', 'MY-09', '1');
INSERT INTO `oc_zone` VALUES ('1980', '129', 'Pulau Pinang', 'MY-07', '1');
INSERT INTO `oc_zone` VALUES ('1981', '129', 'Sabah', 'MY-12', '1');
INSERT INTO `oc_zone` VALUES ('1982', '129', 'Sarawak', 'MY-13', '1');
INSERT INTO `oc_zone` VALUES ('1983', '129', 'Selangor', 'MY-10', '1');
INSERT INTO `oc_zone` VALUES ('1984', '129', 'Terengganu', 'MY-11', '1');
INSERT INTO `oc_zone` VALUES ('1985', '129', 'Kuala Lumpur', 'MY-14', '1');
INSERT INTO `oc_zone` VALUES ('1986', '130', 'Thiladhunmathi Uthuru', 'THU', '1');
INSERT INTO `oc_zone` VALUES ('1987', '130', 'Thiladhunmathi Dhekunu', 'THD', '1');
INSERT INTO `oc_zone` VALUES ('1988', '130', 'Miladhunmadulu Uthuru', 'MLU', '1');
INSERT INTO `oc_zone` VALUES ('1989', '130', 'Miladhunmadulu Dhekunu', 'MLD', '1');
INSERT INTO `oc_zone` VALUES ('1990', '130', 'Maalhosmadulu Uthuru', 'MAU', '1');
INSERT INTO `oc_zone` VALUES ('1991', '130', 'Maalhosmadulu Dhekunu', 'MAD', '1');
INSERT INTO `oc_zone` VALUES ('1992', '130', 'Faadhippolhu', 'FAA', '1');
INSERT INTO `oc_zone` VALUES ('1993', '130', 'Male Atoll', 'MAA', '1');
INSERT INTO `oc_zone` VALUES ('1994', '130', 'Ari Atoll Uthuru', 'AAU', '1');
INSERT INTO `oc_zone` VALUES ('1995', '130', 'Ari Atoll Dheknu', 'AAD', '1');
INSERT INTO `oc_zone` VALUES ('1996', '130', 'Felidhe Atoll', 'FEA', '1');
INSERT INTO `oc_zone` VALUES ('1997', '130', 'Mulaku Atoll', 'MUA', '1');
INSERT INTO `oc_zone` VALUES ('1998', '130', 'Nilandhe Atoll Uthuru', 'NAU', '1');
INSERT INTO `oc_zone` VALUES ('1999', '130', 'Nilandhe Atoll Dhekunu', 'NAD', '1');
INSERT INTO `oc_zone` VALUES ('2000', '130', 'Kolhumadulu', 'KLH', '1');
INSERT INTO `oc_zone` VALUES ('2001', '130', 'Hadhdhunmathi', 'HDH', '1');
INSERT INTO `oc_zone` VALUES ('2002', '130', 'Huvadhu Atoll Uthuru', 'HAU', '1');
INSERT INTO `oc_zone` VALUES ('2003', '130', 'Huvadhu Atoll Dhekunu', 'HAD', '1');
INSERT INTO `oc_zone` VALUES ('2004', '130', 'Fua Mulaku', 'FMU', '1');
INSERT INTO `oc_zone` VALUES ('2005', '130', 'Addu', 'ADD', '1');
INSERT INTO `oc_zone` VALUES ('2006', '131', 'Gao', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('2007', '131', 'Kayes', 'KY', '1');
INSERT INTO `oc_zone` VALUES ('2008', '131', 'Kidal', 'KD', '1');
INSERT INTO `oc_zone` VALUES ('2009', '131', 'Koulikoro', 'KL', '1');
INSERT INTO `oc_zone` VALUES ('2010', '131', 'Mopti', 'MP', '1');
INSERT INTO `oc_zone` VALUES ('2011', '131', 'Segou', 'SG', '1');
INSERT INTO `oc_zone` VALUES ('2012', '131', 'Sikasso', 'SK', '1');
INSERT INTO `oc_zone` VALUES ('2013', '131', 'Tombouctou', 'TB', '1');
INSERT INTO `oc_zone` VALUES ('2014', '131', 'Bamako Capital District', 'CD', '1');
INSERT INTO `oc_zone` VALUES ('2015', '132', 'Attard', 'ATT', '1');
INSERT INTO `oc_zone` VALUES ('2016', '132', 'Balzan', 'BAL', '1');
INSERT INTO `oc_zone` VALUES ('2017', '132', 'Birgu', 'BGU', '1');
INSERT INTO `oc_zone` VALUES ('2018', '132', 'Birkirkara', 'BKK', '1');
INSERT INTO `oc_zone` VALUES ('2019', '132', 'Birzebbuga', 'BRZ', '1');
INSERT INTO `oc_zone` VALUES ('2020', '132', 'Bormla', 'BOR', '1');
INSERT INTO `oc_zone` VALUES ('2021', '132', 'Dingli', 'DIN', '1');
INSERT INTO `oc_zone` VALUES ('2022', '132', 'Fgura', 'FGU', '1');
INSERT INTO `oc_zone` VALUES ('2023', '132', 'Floriana', 'FLO', '1');
INSERT INTO `oc_zone` VALUES ('2024', '132', 'Gudja', 'GDJ', '1');
INSERT INTO `oc_zone` VALUES ('2025', '132', 'Gzira', 'GZR', '1');
INSERT INTO `oc_zone` VALUES ('2026', '132', 'Gargur', 'GRG', '1');
INSERT INTO `oc_zone` VALUES ('2027', '132', 'Gaxaq', 'GXQ', '1');
INSERT INTO `oc_zone` VALUES ('2028', '132', 'Hamrun', 'HMR', '1');
INSERT INTO `oc_zone` VALUES ('2029', '132', 'Iklin', 'IKL', '1');
INSERT INTO `oc_zone` VALUES ('2030', '132', 'Isla', 'ISL', '1');
INSERT INTO `oc_zone` VALUES ('2031', '132', 'Kalkara', 'KLK', '1');
INSERT INTO `oc_zone` VALUES ('2032', '132', 'Kirkop', 'KRK', '1');
INSERT INTO `oc_zone` VALUES ('2033', '132', 'Lija', 'LIJ', '1');
INSERT INTO `oc_zone` VALUES ('2034', '132', 'Luqa', 'LUQ', '1');
INSERT INTO `oc_zone` VALUES ('2035', '132', 'Marsa', 'MRS', '1');
INSERT INTO `oc_zone` VALUES ('2036', '132', 'Marsaskala', 'MKL', '1');
INSERT INTO `oc_zone` VALUES ('2037', '132', 'Marsaxlokk', 'MXL', '1');
INSERT INTO `oc_zone` VALUES ('2038', '132', 'Mdina', 'MDN', '1');
INSERT INTO `oc_zone` VALUES ('2039', '132', 'Melliea', 'MEL', '1');
INSERT INTO `oc_zone` VALUES ('2040', '132', 'Mgarr', 'MGR', '1');
INSERT INTO `oc_zone` VALUES ('2041', '132', 'Mosta', 'MST', '1');
INSERT INTO `oc_zone` VALUES ('2042', '132', 'Mqabba', 'MQA', '1');
INSERT INTO `oc_zone` VALUES ('2043', '132', 'Msida', 'MSI', '1');
INSERT INTO `oc_zone` VALUES ('2044', '132', 'Mtarfa', 'MTF', '1');
INSERT INTO `oc_zone` VALUES ('2045', '132', 'Naxxar', 'NAX', '1');
INSERT INTO `oc_zone` VALUES ('2046', '132', 'Paola', 'PAO', '1');
INSERT INTO `oc_zone` VALUES ('2047', '132', 'Pembroke', 'PEM', '1');
INSERT INTO `oc_zone` VALUES ('2048', '132', 'Pieta', 'PIE', '1');
INSERT INTO `oc_zone` VALUES ('2049', '132', 'Qormi', 'QOR', '1');
INSERT INTO `oc_zone` VALUES ('2050', '132', 'Qrendi', 'QRE', '1');
INSERT INTO `oc_zone` VALUES ('2051', '132', 'Rabat', 'RAB', '1');
INSERT INTO `oc_zone` VALUES ('2052', '132', 'Safi', 'SAF', '1');
INSERT INTO `oc_zone` VALUES ('2053', '132', 'San Giljan', 'SGI', '1');
INSERT INTO `oc_zone` VALUES ('2054', '132', 'Santa Lucija', 'SLU', '1');
INSERT INTO `oc_zone` VALUES ('2055', '132', 'San Pawl il-Bahar', 'SPB', '1');
INSERT INTO `oc_zone` VALUES ('2056', '132', 'San Gwann', 'SGW', '1');
INSERT INTO `oc_zone` VALUES ('2057', '132', 'Santa Venera', 'SVE', '1');
INSERT INTO `oc_zone` VALUES ('2058', '132', 'Siggiewi', 'SIG', '1');
INSERT INTO `oc_zone` VALUES ('2059', '132', 'Sliema', 'SLM', '1');
INSERT INTO `oc_zone` VALUES ('2060', '132', 'Swieqi', 'SWQ', '1');
INSERT INTO `oc_zone` VALUES ('2061', '132', 'Ta Xbiex', 'TXB', '1');
INSERT INTO `oc_zone` VALUES ('2062', '132', 'Tarxien', 'TRX', '1');
INSERT INTO `oc_zone` VALUES ('2063', '132', 'Valletta', 'VLT', '1');
INSERT INTO `oc_zone` VALUES ('2064', '132', 'Xgajra', 'XGJ', '1');
INSERT INTO `oc_zone` VALUES ('2065', '132', 'Zabbar', 'ZBR', '1');
INSERT INTO `oc_zone` VALUES ('2066', '132', 'Zebbug', 'ZBG', '1');
INSERT INTO `oc_zone` VALUES ('2067', '132', 'Zejtun', 'ZJT', '1');
INSERT INTO `oc_zone` VALUES ('2068', '132', 'Zurrieq', 'ZRQ', '1');
INSERT INTO `oc_zone` VALUES ('2069', '132', 'Fontana', 'FNT', '1');
INSERT INTO `oc_zone` VALUES ('2070', '132', 'Ghajnsielem', 'GHJ', '1');
INSERT INTO `oc_zone` VALUES ('2071', '132', 'Gharb', 'GHR', '1');
INSERT INTO `oc_zone` VALUES ('2072', '132', 'Ghasri', 'GHS', '1');
INSERT INTO `oc_zone` VALUES ('2073', '132', 'Kercem', 'KRC', '1');
INSERT INTO `oc_zone` VALUES ('2074', '132', 'Munxar', 'MUN', '1');
INSERT INTO `oc_zone` VALUES ('2075', '132', 'Nadur', 'NAD', '1');
INSERT INTO `oc_zone` VALUES ('2076', '132', 'Qala', 'QAL', '1');
INSERT INTO `oc_zone` VALUES ('2077', '132', 'Victoria', 'VIC', '1');
INSERT INTO `oc_zone` VALUES ('2078', '132', 'San Lawrenz', 'SLA', '1');
INSERT INTO `oc_zone` VALUES ('2079', '132', 'Sannat', 'SNT', '1');
INSERT INTO `oc_zone` VALUES ('2080', '132', 'Xagra', 'ZAG', '1');
INSERT INTO `oc_zone` VALUES ('2081', '132', 'Xewkija', 'XEW', '1');
INSERT INTO `oc_zone` VALUES ('2082', '132', 'Zebbug', 'ZEB', '1');
INSERT INTO `oc_zone` VALUES ('2083', '133', 'Ailinginae', 'ALG', '1');
INSERT INTO `oc_zone` VALUES ('2084', '133', 'Ailinglaplap', 'ALL', '1');
INSERT INTO `oc_zone` VALUES ('2085', '133', 'Ailuk', 'ALK', '1');
INSERT INTO `oc_zone` VALUES ('2086', '133', 'Arno', 'ARN', '1');
INSERT INTO `oc_zone` VALUES ('2087', '133', 'Aur', 'AUR', '1');
INSERT INTO `oc_zone` VALUES ('2088', '133', 'Bikar', 'BKR', '1');
INSERT INTO `oc_zone` VALUES ('2089', '133', 'Bikini', 'BKN', '1');
INSERT INTO `oc_zone` VALUES ('2090', '133', 'Bokak', 'BKK', '1');
INSERT INTO `oc_zone` VALUES ('2091', '133', 'Ebon', 'EBN', '1');
INSERT INTO `oc_zone` VALUES ('2092', '133', 'Enewetak', 'ENT', '1');
INSERT INTO `oc_zone` VALUES ('2093', '133', 'Erikub', 'EKB', '1');
INSERT INTO `oc_zone` VALUES ('2094', '133', 'Jabat', 'JBT', '1');
INSERT INTO `oc_zone` VALUES ('2095', '133', 'Jaluit', 'JLT', '1');
INSERT INTO `oc_zone` VALUES ('2096', '133', 'Jemo', 'JEM', '1');
INSERT INTO `oc_zone` VALUES ('2097', '133', 'Kili', 'KIL', '1');
INSERT INTO `oc_zone` VALUES ('2098', '133', 'Kwajalein', 'KWJ', '1');
INSERT INTO `oc_zone` VALUES ('2099', '133', 'Lae', 'LAE', '1');
INSERT INTO `oc_zone` VALUES ('2100', '133', 'Lib', 'LIB', '1');
INSERT INTO `oc_zone` VALUES ('2101', '133', 'Likiep', 'LKP', '1');
INSERT INTO `oc_zone` VALUES ('2102', '133', 'Majuro', 'MJR', '1');
INSERT INTO `oc_zone` VALUES ('2103', '133', 'Maloelap', 'MLP', '1');
INSERT INTO `oc_zone` VALUES ('2104', '133', 'Mejit', 'MJT', '1');
INSERT INTO `oc_zone` VALUES ('2105', '133', 'Mili', 'MIL', '1');
INSERT INTO `oc_zone` VALUES ('2106', '133', 'Namorik', 'NMK', '1');
INSERT INTO `oc_zone` VALUES ('2107', '133', 'Namu', 'NAM', '1');
INSERT INTO `oc_zone` VALUES ('2108', '133', 'Rongelap', 'RGL', '1');
INSERT INTO `oc_zone` VALUES ('2109', '133', 'Rongrik', 'RGK', '1');
INSERT INTO `oc_zone` VALUES ('2110', '133', 'Toke', 'TOK', '1');
INSERT INTO `oc_zone` VALUES ('2111', '133', 'Ujae', 'UJA', '1');
INSERT INTO `oc_zone` VALUES ('2112', '133', 'Ujelang', 'UJL', '1');
INSERT INTO `oc_zone` VALUES ('2113', '133', 'Utirik', 'UTK', '1');
INSERT INTO `oc_zone` VALUES ('2114', '133', 'Wotho', 'WTH', '1');
INSERT INTO `oc_zone` VALUES ('2115', '133', 'Wotje', 'WTJ', '1');
INSERT INTO `oc_zone` VALUES ('2116', '135', 'Adrar', 'AD', '1');
INSERT INTO `oc_zone` VALUES ('2117', '135', 'Assaba', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('2118', '135', 'Brakna', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('2119', '135', 'Dakhlet Nouadhibou', 'DN', '1');
INSERT INTO `oc_zone` VALUES ('2120', '135', 'Gorgol', 'GO', '1');
INSERT INTO `oc_zone` VALUES ('2121', '135', 'Guidimaka', 'GM', '1');
INSERT INTO `oc_zone` VALUES ('2122', '135', 'Hodh Ech Chargui', 'HC', '1');
INSERT INTO `oc_zone` VALUES ('2123', '135', 'Hodh El Gharbi', 'HG', '1');
INSERT INTO `oc_zone` VALUES ('2124', '135', 'Inchiri', 'IN', '1');
INSERT INTO `oc_zone` VALUES ('2125', '135', 'Tagant', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('2126', '135', 'Tiris Zemmour', 'TZ', '1');
INSERT INTO `oc_zone` VALUES ('2127', '135', 'Trarza', 'TR', '1');
INSERT INTO `oc_zone` VALUES ('2128', '135', 'Nouakchott', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('2129', '136', 'Beau Bassin-Rose Hill', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('2130', '136', 'Curepipe', 'CU', '1');
INSERT INTO `oc_zone` VALUES ('2131', '136', 'Port Louis', 'PU', '1');
INSERT INTO `oc_zone` VALUES ('2132', '136', 'Quatre Bornes', 'QB', '1');
INSERT INTO `oc_zone` VALUES ('2133', '136', 'Vacoas-Phoenix', 'VP', '1');
INSERT INTO `oc_zone` VALUES ('2134', '136', 'Agalega Islands', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('2135', '136', 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', '1');
INSERT INTO `oc_zone` VALUES ('2136', '136', 'Rodrigues', 'RO', '1');
INSERT INTO `oc_zone` VALUES ('2137', '136', 'Black River', 'BL', '1');
INSERT INTO `oc_zone` VALUES ('2138', '136', 'Flacq', 'FL', '1');
INSERT INTO `oc_zone` VALUES ('2139', '136', 'Grand Port', 'GP', '1');
INSERT INTO `oc_zone` VALUES ('2140', '136', 'Moka', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('2141', '136', 'Pamplemousses', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('2142', '136', 'Plaines Wilhems', 'PW', '1');
INSERT INTO `oc_zone` VALUES ('2143', '136', 'Port Louis', 'PL', '1');
INSERT INTO `oc_zone` VALUES ('2144', '136', 'Riviere du Rempart', 'RR', '1');
INSERT INTO `oc_zone` VALUES ('2145', '136', 'Savanne', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('2146', '138', 'Baja California', 'BCN', '1');
INSERT INTO `oc_zone` VALUES ('2147', '138', 'Baja California Sur', 'BCS', '1');
INSERT INTO `oc_zone` VALUES ('2148', '138', 'Campeche', 'CAM', '1');
INSERT INTO `oc_zone` VALUES ('2149', '138', 'Chiapas', 'CHP', '1');
INSERT INTO `oc_zone` VALUES ('2150', '138', 'Chihuahua', 'CHH', '1');
INSERT INTO `oc_zone` VALUES ('2151', '138', 'Coahuila de Zaragoza', 'COA', '1');
INSERT INTO `oc_zone` VALUES ('2152', '138', 'Colima', 'COL', '1');
INSERT INTO `oc_zone` VALUES ('2153', '138', 'Cuidad de Mexico', 'CMX', '1');
INSERT INTO `oc_zone` VALUES ('2154', '138', 'Durango', 'DUR', '1');
INSERT INTO `oc_zone` VALUES ('2155', '138', 'Guanajuato', 'GUA', '1');
INSERT INTO `oc_zone` VALUES ('2156', '138', 'Guerrero', 'GRO', '1');
INSERT INTO `oc_zone` VALUES ('2157', '138', 'Hidalgo', 'HID', '1');
INSERT INTO `oc_zone` VALUES ('2158', '138', 'Jalisco', 'JAL', '1');
INSERT INTO `oc_zone` VALUES ('2159', '138', 'Mexico', 'MEX', '1');
INSERT INTO `oc_zone` VALUES ('2160', '138', 'Michoacan de Ocampo', 'MIC', '1');
INSERT INTO `oc_zone` VALUES ('2161', '138', 'Morelos', 'MOR', '1');
INSERT INTO `oc_zone` VALUES ('2162', '138', 'Nayarit', 'NAY', '1');
INSERT INTO `oc_zone` VALUES ('2163', '138', 'Nuevo Leon', 'NLE', '1');
INSERT INTO `oc_zone` VALUES ('2164', '138', 'Oaxaca', 'OAX', '1');
INSERT INTO `oc_zone` VALUES ('2165', '138', 'Puebla', 'PUE', '1');
INSERT INTO `oc_zone` VALUES ('2166', '138', 'Queretaro', 'QUE', '1');
INSERT INTO `oc_zone` VALUES ('2167', '138', 'Quintana Roo', 'ROO', '1');
INSERT INTO `oc_zone` VALUES ('2168', '138', 'San Luis Potosi', 'SLP', '1');
INSERT INTO `oc_zone` VALUES ('2169', '138', 'Sinaloa', 'SIN', '1');
INSERT INTO `oc_zone` VALUES ('2170', '138', 'Sonora', 'SON', '1');
INSERT INTO `oc_zone` VALUES ('2171', '138', 'Tabasco', 'TAB', '1');
INSERT INTO `oc_zone` VALUES ('2172', '138', 'Tamaulipas', 'TAM', '1');
INSERT INTO `oc_zone` VALUES ('2173', '138', 'Tlaxcala', 'TLA', '1');
INSERT INTO `oc_zone` VALUES ('2174', '138', 'Veracruz de Ignacio de la Llave', 'VER', '1');
INSERT INTO `oc_zone` VALUES ('2175', '138', 'Yucatan', 'YUC', '1');
INSERT INTO `oc_zone` VALUES ('2176', '138', 'Zacatecas', 'ZAC', '1');
INSERT INTO `oc_zone` VALUES ('2177', '139', 'Chuuk', 'C', '1');
INSERT INTO `oc_zone` VALUES ('2178', '139', 'Kosrae', 'K', '1');
INSERT INTO `oc_zone` VALUES ('2179', '139', 'Pohnpei', 'P', '1');
INSERT INTO `oc_zone` VALUES ('2180', '139', 'Yap', 'Y', '1');
INSERT INTO `oc_zone` VALUES ('2181', '140', 'Gagauzia', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('2182', '140', 'Chisinau', 'CU', '1');
INSERT INTO `oc_zone` VALUES ('2183', '140', 'Balti', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('2184', '140', 'Cahul', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('2185', '140', 'Edinet', 'ED', '1');
INSERT INTO `oc_zone` VALUES ('2186', '140', 'Lapusna', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('2187', '140', 'Orhei', 'OR', '1');
INSERT INTO `oc_zone` VALUES ('2188', '140', 'Soroca', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('2189', '140', 'Tighina', 'TI', '1');
INSERT INTO `oc_zone` VALUES ('2190', '140', 'Ungheni', 'UN', '1');
INSERT INTO `oc_zone` VALUES ('2191', '140', 'St‚nga Nistrului', 'SN', '1');
INSERT INTO `oc_zone` VALUES ('2192', '141', 'Fontvieille', 'FV', '1');
INSERT INTO `oc_zone` VALUES ('2193', '141', 'La Condamine', 'LC', '1');
INSERT INTO `oc_zone` VALUES ('2194', '141', 'Monaco-Ville', 'MV', '1');
INSERT INTO `oc_zone` VALUES ('2195', '141', 'Monte-Carlo', 'MC', '1');
INSERT INTO `oc_zone` VALUES ('2196', '142', 'Ulanbaatar', '1', '1');
INSERT INTO `oc_zone` VALUES ('2197', '142', 'Orhon', '035', '1');
INSERT INTO `oc_zone` VALUES ('2198', '142', 'Darhan uul', '037', '1');
INSERT INTO `oc_zone` VALUES ('2199', '142', 'Hentiy', '039', '1');
INSERT INTO `oc_zone` VALUES ('2200', '142', 'Hovsgol', '041', '1');
INSERT INTO `oc_zone` VALUES ('2201', '142', 'Hovd', '043', '1');
INSERT INTO `oc_zone` VALUES ('2202', '142', 'Uvs', '046', '1');
INSERT INTO `oc_zone` VALUES ('2203', '142', 'Tov', '047', '1');
INSERT INTO `oc_zone` VALUES ('2204', '142', 'Selenge', '049', '1');
INSERT INTO `oc_zone` VALUES ('2205', '142', 'Suhbaatar', '051', '1');
INSERT INTO `oc_zone` VALUES ('2206', '142', 'Omnogovi', '053', '1');
INSERT INTO `oc_zone` VALUES ('2207', '142', 'Ovorhangay', '055', '1');
INSERT INTO `oc_zone` VALUES ('2208', '142', 'Dzavhan', '057', '1');
INSERT INTO `oc_zone` VALUES ('2209', '142', 'DundgovL', '059', '1');
INSERT INTO `oc_zone` VALUES ('2210', '142', 'Dornod', '061', '1');
INSERT INTO `oc_zone` VALUES ('2211', '142', 'Dornogov', '063', '1');
INSERT INTO `oc_zone` VALUES ('2212', '142', 'Govi-Sumber', '064', '1');
INSERT INTO `oc_zone` VALUES ('2213', '142', 'Govi-Altay', '065', '1');
INSERT INTO `oc_zone` VALUES ('2214', '142', 'Bulgan', '067', '1');
INSERT INTO `oc_zone` VALUES ('2215', '142', 'Bayanhongor', '069', '1');
INSERT INTO `oc_zone` VALUES ('2216', '142', 'Bayan-Olgiy', '071', '1');
INSERT INTO `oc_zone` VALUES ('2217', '142', 'Arhangay', '073', '1');
INSERT INTO `oc_zone` VALUES ('2218', '143', 'Saint Anthony', 'A', '1');
INSERT INTO `oc_zone` VALUES ('2219', '143', 'Saint Georges', 'G', '1');
INSERT INTO `oc_zone` VALUES ('2220', '143', 'Saint Peter', 'P', '1');
INSERT INTO `oc_zone` VALUES ('2221', '144', 'Agadir', 'AGD', '1');
INSERT INTO `oc_zone` VALUES ('2222', '144', 'Al Hoceima', 'HOC', '1');
INSERT INTO `oc_zone` VALUES ('2223', '144', 'Azilal', 'AZI', '1');
INSERT INTO `oc_zone` VALUES ('2224', '144', 'Beni Mellal', 'BME', '1');
INSERT INTO `oc_zone` VALUES ('2225', '144', 'Ben Slimane', 'BSL', '1');
INSERT INTO `oc_zone` VALUES ('2226', '144', 'Boulemane', 'BLM', '1');
INSERT INTO `oc_zone` VALUES ('2227', '144', 'Casablanca', 'CBL', '1');
INSERT INTO `oc_zone` VALUES ('2228', '144', 'Chaouen', 'CHA', '1');
INSERT INTO `oc_zone` VALUES ('2229', '144', 'El Jadida', 'EJA', '1');
INSERT INTO `oc_zone` VALUES ('2230', '144', 'El Kelaa des Sraghna', 'EKS', '1');
INSERT INTO `oc_zone` VALUES ('2231', '144', 'Er Rachidia', 'ERA', '1');
INSERT INTO `oc_zone` VALUES ('2232', '144', 'Essaouira', 'ESS', '1');
INSERT INTO `oc_zone` VALUES ('2233', '144', 'Fes', 'FES', '1');
INSERT INTO `oc_zone` VALUES ('2234', '144', 'Figuig', 'FIG', '1');
INSERT INTO `oc_zone` VALUES ('2235', '144', 'Guelmim', 'GLM', '1');
INSERT INTO `oc_zone` VALUES ('2236', '144', 'Ifrane', 'IFR', '1');
INSERT INTO `oc_zone` VALUES ('2237', '144', 'Kenitra', 'KEN', '1');
INSERT INTO `oc_zone` VALUES ('2238', '144', 'Khemisset', 'KHM', '1');
INSERT INTO `oc_zone` VALUES ('2239', '144', 'Khenifra', 'KHN', '1');
INSERT INTO `oc_zone` VALUES ('2240', '144', 'Khouribga', 'KHO', '1');
INSERT INTO `oc_zone` VALUES ('2241', '144', 'Laayoune', 'LYN', '1');
INSERT INTO `oc_zone` VALUES ('2242', '144', 'Larache', 'LAR', '1');
INSERT INTO `oc_zone` VALUES ('2243', '144', 'Marrakech', 'MRK', '1');
INSERT INTO `oc_zone` VALUES ('2244', '144', 'Meknes', 'MKN', '1');
INSERT INTO `oc_zone` VALUES ('2245', '144', 'Nador', 'NAD', '1');
INSERT INTO `oc_zone` VALUES ('2246', '144', 'Ouarzazate', 'ORZ', '1');
INSERT INTO `oc_zone` VALUES ('2247', '144', 'Oujda', 'OUJ', '1');
INSERT INTO `oc_zone` VALUES ('2248', '144', 'Rabat-Sale', 'RSA', '1');
INSERT INTO `oc_zone` VALUES ('2249', '144', 'Safi', 'SAF', '1');
INSERT INTO `oc_zone` VALUES ('2250', '144', 'Settat', 'SET', '1');
INSERT INTO `oc_zone` VALUES ('2251', '144', 'Sidi Kacem', 'SKA', '1');
INSERT INTO `oc_zone` VALUES ('2252', '144', 'Tangier', 'TGR', '1');
INSERT INTO `oc_zone` VALUES ('2253', '144', 'Tan-Tan', 'TAN', '1');
INSERT INTO `oc_zone` VALUES ('2254', '144', 'Taounate', 'TAO', '1');
INSERT INTO `oc_zone` VALUES ('2255', '144', 'Taroudannt', 'TRD', '1');
INSERT INTO `oc_zone` VALUES ('2256', '144', 'Tata', 'TAT', '1');
INSERT INTO `oc_zone` VALUES ('2257', '144', 'Taza', 'TAZ', '1');
INSERT INTO `oc_zone` VALUES ('2258', '144', 'Tetouan', 'TET', '1');
INSERT INTO `oc_zone` VALUES ('2259', '144', 'Tiznit', 'TIZ', '1');
INSERT INTO `oc_zone` VALUES ('2260', '144', 'Ad Dakhla', 'ADK', '1');
INSERT INTO `oc_zone` VALUES ('2261', '144', 'Boujdour', 'BJD', '1');
INSERT INTO `oc_zone` VALUES ('2262', '144', 'Es Smara', 'ESM', '1');
INSERT INTO `oc_zone` VALUES ('2263', '145', 'Cabo Delgado', 'CD', '1');
INSERT INTO `oc_zone` VALUES ('2264', '145', 'Gaza', 'GZ', '1');
INSERT INTO `oc_zone` VALUES ('2265', '145', 'Inhambane', 'IN', '1');
INSERT INTO `oc_zone` VALUES ('2266', '145', 'Manica', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('2267', '145', 'Maputo (city)', 'MC', '1');
INSERT INTO `oc_zone` VALUES ('2268', '145', 'Maputo', 'MP', '1');
INSERT INTO `oc_zone` VALUES ('2269', '145', 'Nampula', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('2270', '145', 'Niassa', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('2271', '145', 'Sofala', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('2272', '145', 'Tete', 'TE', '1');
INSERT INTO `oc_zone` VALUES ('2273', '145', 'Zambezia', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('2274', '146', 'Ayeyarwady', 'AY', '1');
INSERT INTO `oc_zone` VALUES ('2275', '146', 'Bago', 'BG', '1');
INSERT INTO `oc_zone` VALUES ('2276', '146', 'Magway', 'MG', '1');
INSERT INTO `oc_zone` VALUES ('2277', '146', 'Mandalay', 'MD', '1');
INSERT INTO `oc_zone` VALUES ('2278', '146', 'Sagaing', 'SG', '1');
INSERT INTO `oc_zone` VALUES ('2279', '146', 'Tanintharyi', 'TN', '1');
INSERT INTO `oc_zone` VALUES ('2280', '146', 'Yangon', 'YG', '1');
INSERT INTO `oc_zone` VALUES ('2281', '146', 'Chin State', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('2282', '146', 'Kachin State', 'KC', '1');
INSERT INTO `oc_zone` VALUES ('2283', '146', 'Kayah State', 'KH', '1');
INSERT INTO `oc_zone` VALUES ('2284', '146', 'Kayin State', 'KN', '1');
INSERT INTO `oc_zone` VALUES ('2285', '146', 'Mon State', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('2286', '146', 'Rakhine State', 'RK', '1');
INSERT INTO `oc_zone` VALUES ('2287', '146', 'Shan State', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('2288', '147', 'Caprivi', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('2289', '147', 'Erongo', 'ER', '1');
INSERT INTO `oc_zone` VALUES ('2290', '147', 'Hardap', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('2291', '147', 'Karas', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('2292', '147', 'Kavango', 'KV', '1');
INSERT INTO `oc_zone` VALUES ('2293', '147', 'Khomas', 'KH', '1');
INSERT INTO `oc_zone` VALUES ('2294', '147', 'Kunene', 'KU', '1');
INSERT INTO `oc_zone` VALUES ('2295', '147', 'Ohangwena', 'OW', '1');
INSERT INTO `oc_zone` VALUES ('2296', '147', 'Omaheke', 'OK', '1');
INSERT INTO `oc_zone` VALUES ('2297', '147', 'Omusati', 'OT', '1');
INSERT INTO `oc_zone` VALUES ('2298', '147', 'Oshana', 'ON', '1');
INSERT INTO `oc_zone` VALUES ('2299', '147', 'Oshikoto', 'OO', '1');
INSERT INTO `oc_zone` VALUES ('2300', '147', 'Otjozondjupa', 'OJ', '1');
INSERT INTO `oc_zone` VALUES ('2301', '148', 'Aiwo', 'AO', '1');
INSERT INTO `oc_zone` VALUES ('2302', '148', 'Anabar', 'AA', '1');
INSERT INTO `oc_zone` VALUES ('2303', '148', 'Anetan', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('2304', '148', 'Anibare', 'AI', '1');
INSERT INTO `oc_zone` VALUES ('2305', '148', 'Baiti', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('2306', '148', 'Boe', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('2307', '148', 'Buada', 'BU', '1');
INSERT INTO `oc_zone` VALUES ('2308', '148', 'Denigomodu', 'DE', '1');
INSERT INTO `oc_zone` VALUES ('2309', '148', 'Ewa', 'EW', '1');
INSERT INTO `oc_zone` VALUES ('2310', '148', 'Ijuw', 'IJ', '1');
INSERT INTO `oc_zone` VALUES ('2311', '148', 'Meneng', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('2312', '148', 'Nibok', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('2313', '148', 'Uaboe', 'UA', '1');
INSERT INTO `oc_zone` VALUES ('2314', '148', 'Yaren', 'YA', '1');
INSERT INTO `oc_zone` VALUES ('2315', '149', 'Bagmati', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('2316', '149', 'Bheri', 'BH', '1');
INSERT INTO `oc_zone` VALUES ('2317', '149', 'Dhawalagiri', 'DH', '1');
INSERT INTO `oc_zone` VALUES ('2318', '149', 'Gandaki', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('2319', '149', 'Janakpur', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('2320', '149', 'Karnali', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('2321', '149', 'Kosi', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('2322', '149', 'Lumbini', 'LU', '1');
INSERT INTO `oc_zone` VALUES ('2323', '149', 'Mahakali', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('2324', '149', 'Mechi', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('2325', '149', 'Narayani', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('2326', '149', 'Rapti', 'RA', '1');
INSERT INTO `oc_zone` VALUES ('2327', '149', 'Sagarmatha', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('2328', '149', 'Seti', 'SE', '1');
INSERT INTO `oc_zone` VALUES ('2329', '150', 'Drenthe', 'DR', '1');
INSERT INTO `oc_zone` VALUES ('2330', '150', 'Flevoland', 'FL', '1');
INSERT INTO `oc_zone` VALUES ('2331', '150', 'Friesland', 'FR', '1');
INSERT INTO `oc_zone` VALUES ('2332', '150', 'Gelderland', 'GE', '1');
INSERT INTO `oc_zone` VALUES ('2333', '150', 'Groningen', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('2334', '150', 'Limburg', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('2335', '150', 'Noord-Brabant', 'NB', '1');
INSERT INTO `oc_zone` VALUES ('2336', '150', 'Noord-Holland', 'NH', '1');
INSERT INTO `oc_zone` VALUES ('2337', '150', 'Overijssel', 'OV', '1');
INSERT INTO `oc_zone` VALUES ('2338', '150', 'Utrecht', 'UT', '1');
INSERT INTO `oc_zone` VALUES ('2339', '150', 'Zeeland', 'ZE', '1');
INSERT INTO `oc_zone` VALUES ('2340', '150', 'Zuid-Holland', 'ZH', '1');
INSERT INTO `oc_zone` VALUES ('2341', '152', 'Iles Loyaute', 'L', '1');
INSERT INTO `oc_zone` VALUES ('2342', '152', 'Nord', 'N', '1');
INSERT INTO `oc_zone` VALUES ('2343', '152', 'Sud', 'S', '1');
INSERT INTO `oc_zone` VALUES ('2344', '153', 'Auckland', 'AUK', '1');
INSERT INTO `oc_zone` VALUES ('2345', '153', 'Bay of Plenty', 'BOP', '1');
INSERT INTO `oc_zone` VALUES ('2346', '153', 'Canterbury', 'CAN', '1');
INSERT INTO `oc_zone` VALUES ('2347', '153', 'Coromandel', 'COR', '1');
INSERT INTO `oc_zone` VALUES ('2348', '153', 'Gisborne', 'GIS', '1');
INSERT INTO `oc_zone` VALUES ('2349', '153', 'Fiordland', 'FIO', '1');
INSERT INTO `oc_zone` VALUES ('2350', '153', 'Hawke\'s Bay', 'HKB', '1');
INSERT INTO `oc_zone` VALUES ('2351', '153', 'Marlborough', 'MBH', '1');
INSERT INTO `oc_zone` VALUES ('2352', '153', 'Manawatu-Wanganui', 'MWT', '1');
INSERT INTO `oc_zone` VALUES ('2353', '153', 'Mt Cook-Mackenzie', 'MCM', '1');
INSERT INTO `oc_zone` VALUES ('2354', '153', 'Nelson', 'NSN', '1');
INSERT INTO `oc_zone` VALUES ('2355', '153', 'Northland', 'NTL', '1');
INSERT INTO `oc_zone` VALUES ('2356', '153', 'Otago', 'OTA', '1');
INSERT INTO `oc_zone` VALUES ('2357', '153', 'Southland', 'STL', '1');
INSERT INTO `oc_zone` VALUES ('2358', '153', 'Taranaki', 'TKI', '1');
INSERT INTO `oc_zone` VALUES ('2359', '153', 'Wellington', 'WGN', '1');
INSERT INTO `oc_zone` VALUES ('2360', '153', 'Waikato', 'WKO', '1');
INSERT INTO `oc_zone` VALUES ('2361', '153', 'Wairarapa', 'WAI', '1');
INSERT INTO `oc_zone` VALUES ('2362', '153', 'West Coast', 'WTC', '1');
INSERT INTO `oc_zone` VALUES ('2363', '154', 'Atlantico Norte', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('2364', '154', 'Atlantico Sur', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('2365', '154', 'Boaco', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('2366', '154', 'Carazo', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('2367', '154', 'Chinandega', 'CI', '1');
INSERT INTO `oc_zone` VALUES ('2368', '154', 'Chontales', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('2369', '154', 'Esteli', 'ES', '1');
INSERT INTO `oc_zone` VALUES ('2370', '154', 'Granada', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('2371', '154', 'Jinotega', 'JI', '1');
INSERT INTO `oc_zone` VALUES ('2372', '154', 'Leon', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('2373', '154', 'Madriz', 'MD', '1');
INSERT INTO `oc_zone` VALUES ('2374', '154', 'Managua', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('2375', '154', 'Masaya', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('2376', '154', 'Matagalpa', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('2377', '154', 'Nuevo Segovia', 'NS', '1');
INSERT INTO `oc_zone` VALUES ('2378', '154', 'Rio San Juan', 'RS', '1');
INSERT INTO `oc_zone` VALUES ('2379', '154', 'Rivas', 'RI', '1');
INSERT INTO `oc_zone` VALUES ('2380', '155', 'Agadez', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('2381', '155', 'Diffa', 'DF', '1');
INSERT INTO `oc_zone` VALUES ('2382', '155', 'Dosso', 'DS', '1');
INSERT INTO `oc_zone` VALUES ('2383', '155', 'Maradi', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('2384', '155', 'Niamey', 'NM', '1');
INSERT INTO `oc_zone` VALUES ('2385', '155', 'Tahoua', 'TH', '1');
INSERT INTO `oc_zone` VALUES ('2386', '155', 'Tillaberi', 'TL', '1');
INSERT INTO `oc_zone` VALUES ('2387', '155', 'Zinder', 'ZD', '1');
INSERT INTO `oc_zone` VALUES ('2388', '156', 'Abia', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('2389', '156', 'Abuja Federal Capital Territory', 'CT', '1');
INSERT INTO `oc_zone` VALUES ('2390', '156', 'Adamawa', 'AD', '1');
INSERT INTO `oc_zone` VALUES ('2391', '156', 'Akwa Ibom', 'AK', '1');
INSERT INTO `oc_zone` VALUES ('2392', '156', 'Anambra', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('2393', '156', 'Bauchi', 'BC', '1');
INSERT INTO `oc_zone` VALUES ('2394', '156', 'Bayelsa', 'BY', '1');
INSERT INTO `oc_zone` VALUES ('2395', '156', 'Benue', 'BN', '1');
INSERT INTO `oc_zone` VALUES ('2396', '156', 'Borno', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('2397', '156', 'Cross River', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('2398', '156', 'Delta', 'DE', '1');
INSERT INTO `oc_zone` VALUES ('2399', '156', 'Ebonyi', 'EB', '1');
INSERT INTO `oc_zone` VALUES ('2400', '156', 'Edo', 'ED', '1');
INSERT INTO `oc_zone` VALUES ('2401', '156', 'Ekiti', 'EK', '1');
INSERT INTO `oc_zone` VALUES ('2402', '156', 'Enugu', 'EN', '1');
INSERT INTO `oc_zone` VALUES ('2403', '156', 'Gombe', 'GO', '1');
INSERT INTO `oc_zone` VALUES ('2404', '156', 'Imo', 'IM', '1');
INSERT INTO `oc_zone` VALUES ('2405', '156', 'Jigawa', 'JI', '1');
INSERT INTO `oc_zone` VALUES ('2406', '156', 'Kaduna', 'KD', '1');
INSERT INTO `oc_zone` VALUES ('2407', '156', 'Kano', 'KN', '1');
INSERT INTO `oc_zone` VALUES ('2408', '156', 'Katsina', 'KT', '1');
INSERT INTO `oc_zone` VALUES ('2409', '156', 'Kebbi', 'KE', '1');
INSERT INTO `oc_zone` VALUES ('2410', '156', 'Kogi', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('2411', '156', 'Kwara', 'KW', '1');
INSERT INTO `oc_zone` VALUES ('2412', '156', 'Lagos', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('2413', '156', 'Nassarawa', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('2414', '156', 'Niger', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('2415', '156', 'Ogun', 'OG', '1');
INSERT INTO `oc_zone` VALUES ('2416', '156', 'Ondo', 'ONG', '1');
INSERT INTO `oc_zone` VALUES ('2417', '156', 'Osun', 'OS', '1');
INSERT INTO `oc_zone` VALUES ('2418', '156', 'Oyo', 'OY', '1');
INSERT INTO `oc_zone` VALUES ('2419', '156', 'Plateau', 'PL', '1');
INSERT INTO `oc_zone` VALUES ('2420', '156', 'Rivers', 'RI', '1');
INSERT INTO `oc_zone` VALUES ('2421', '156', 'Sokoto', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('2422', '156', 'Taraba', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('2423', '156', 'Yobe', 'YO', '1');
INSERT INTO `oc_zone` VALUES ('2424', '156', 'Zamfara', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('2425', '159', 'Northern Islands', 'N', '1');
INSERT INTO `oc_zone` VALUES ('2426', '159', 'Rota', 'R', '1');
INSERT INTO `oc_zone` VALUES ('2427', '159', 'Saipan', 'S', '1');
INSERT INTO `oc_zone` VALUES ('2428', '159', 'Tinian', 'T', '1');
INSERT INTO `oc_zone` VALUES ('2429', '160', 'Akershus', 'AK', '1');
INSERT INTO `oc_zone` VALUES ('2430', '160', 'Aust-Agder', 'AA', '1');
INSERT INTO `oc_zone` VALUES ('2431', '160', 'Buskerud', 'BU', '1');
INSERT INTO `oc_zone` VALUES ('2432', '160', 'Finnmark', 'FM', '1');
INSERT INTO `oc_zone` VALUES ('2433', '160', 'Hedmark', 'HM', '1');
INSERT INTO `oc_zone` VALUES ('2434', '160', 'Hordaland', 'HL', '1');
INSERT INTO `oc_zone` VALUES ('2435', '160', 'More og Romdal', 'MR', '1');
INSERT INTO `oc_zone` VALUES ('2436', '160', 'Nord-Trondelag', 'NT', '1');
INSERT INTO `oc_zone` VALUES ('2437', '160', 'Nordland', 'NL', '1');
INSERT INTO `oc_zone` VALUES ('2438', '160', 'Ostfold', 'OF', '1');
INSERT INTO `oc_zone` VALUES ('2439', '160', 'Oppland', 'OP', '1');
INSERT INTO `oc_zone` VALUES ('2440', '160', 'Oslo', 'OL', '1');
INSERT INTO `oc_zone` VALUES ('2441', '160', 'Rogaland', 'RL', '1');
INSERT INTO `oc_zone` VALUES ('2442', '160', 'Sor-Trondelag', 'ST', '1');
INSERT INTO `oc_zone` VALUES ('2443', '160', 'Sogn og Fjordane', 'SJ', '1');
INSERT INTO `oc_zone` VALUES ('2444', '160', 'Svalbard', 'SV', '1');
INSERT INTO `oc_zone` VALUES ('2445', '160', 'Telemark', 'TM', '1');
INSERT INTO `oc_zone` VALUES ('2446', '160', 'Troms', 'TR', '1');
INSERT INTO `oc_zone` VALUES ('2447', '160', 'Vest-Agder', 'VA', '1');
INSERT INTO `oc_zone` VALUES ('2448', '160', 'Vestfold', 'VF', '1');
INSERT INTO `oc_zone` VALUES ('2449', '161', 'Ad Dakhiliyah', 'DA', '1');
INSERT INTO `oc_zone` VALUES ('2450', '161', 'Al Batinah', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('2451', '161', 'Al Wusta', 'WU', '1');
INSERT INTO `oc_zone` VALUES ('2452', '161', 'Ash Sharqiyah', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('2453', '161', 'Az Zahirah', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('2454', '161', 'Masqat', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('2455', '161', 'Musandam', 'MU', '1');
INSERT INTO `oc_zone` VALUES ('2456', '161', 'Zufar', 'ZU', '1');
INSERT INTO `oc_zone` VALUES ('2457', '162', 'Balochistan', 'B', '1');
INSERT INTO `oc_zone` VALUES ('2458', '162', 'Federally Administered Tribal Areas', 'T', '1');
INSERT INTO `oc_zone` VALUES ('2459', '162', 'Islamabad Capital Territory', 'I', '1');
INSERT INTO `oc_zone` VALUES ('2460', '162', 'North-West Frontier', 'N', '1');
INSERT INTO `oc_zone` VALUES ('2461', '162', 'Punjab', 'P', '1');
INSERT INTO `oc_zone` VALUES ('2462', '162', 'Sindh', 'S', '1');
INSERT INTO `oc_zone` VALUES ('2463', '163', 'Aimeliik', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('2464', '163', 'Airai', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('2465', '163', 'Angaur', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('2466', '163', 'Hatohobei', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('2467', '163', 'Kayangel', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('2468', '163', 'Koror', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('2469', '163', 'Melekeok', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('2470', '163', 'Ngaraard', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('2471', '163', 'Ngarchelong', 'NG', '1');
INSERT INTO `oc_zone` VALUES ('2472', '163', 'Ngardmau', 'ND', '1');
INSERT INTO `oc_zone` VALUES ('2473', '163', 'Ngatpang', 'NT', '1');
INSERT INTO `oc_zone` VALUES ('2474', '163', 'Ngchesar', 'NC', '1');
INSERT INTO `oc_zone` VALUES ('2475', '163', 'Ngeremlengui', 'NR', '1');
INSERT INTO `oc_zone` VALUES ('2476', '163', 'Ngiwal', 'NW', '1');
INSERT INTO `oc_zone` VALUES ('2477', '163', 'Peleliu', 'PE', '1');
INSERT INTO `oc_zone` VALUES ('2478', '163', 'Sonsorol', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('2479', '164', 'Bocas del Toro', 'BT', '1');
INSERT INTO `oc_zone` VALUES ('2480', '164', 'Chiriqui', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('2481', '164', 'Cocle', 'CC', '1');
INSERT INTO `oc_zone` VALUES ('2482', '164', 'Colon', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('2483', '164', 'Darien', 'DA', '1');
INSERT INTO `oc_zone` VALUES ('2484', '164', 'Herrera', 'HE', '1');
INSERT INTO `oc_zone` VALUES ('2485', '164', 'Los Santos', 'LS', '1');
INSERT INTO `oc_zone` VALUES ('2486', '164', 'Panama', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('2487', '164', 'San Blas', 'SB', '1');
INSERT INTO `oc_zone` VALUES ('2488', '164', 'Veraguas', 'VG', '1');
INSERT INTO `oc_zone` VALUES ('2489', '165', 'Bougainville', 'BV', '1');
INSERT INTO `oc_zone` VALUES ('2490', '165', 'Central', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('2491', '165', 'Chimbu', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('2492', '165', 'Eastern Highlands', 'EH', '1');
INSERT INTO `oc_zone` VALUES ('2493', '165', 'East New Britain', 'EB', '1');
INSERT INTO `oc_zone` VALUES ('2494', '165', 'East Sepik', 'ES', '1');
INSERT INTO `oc_zone` VALUES ('2495', '165', 'Enga', 'EN', '1');
INSERT INTO `oc_zone` VALUES ('2496', '165', 'Gulf', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('2497', '165', 'Madang', 'MD', '1');
INSERT INTO `oc_zone` VALUES ('2498', '165', 'Manus', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('2499', '165', 'Milne Bay', 'MB', '1');
INSERT INTO `oc_zone` VALUES ('2500', '165', 'Morobe', 'MR', '1');
INSERT INTO `oc_zone` VALUES ('2501', '165', 'National Capital', 'NC', '1');
INSERT INTO `oc_zone` VALUES ('2502', '165', 'New Ireland', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('2503', '165', 'Northern', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('2504', '165', 'Sandaun', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('2505', '165', 'Southern Highlands', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('2506', '165', 'Western', 'WE', '1');
INSERT INTO `oc_zone` VALUES ('2507', '165', 'Western Highlands', 'WH', '1');
INSERT INTO `oc_zone` VALUES ('2508', '165', 'West New Britain', 'WB', '1');
INSERT INTO `oc_zone` VALUES ('2509', '166', 'Alto Paraguay', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('2510', '166', 'Alto Parana', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('2511', '166', 'Amambay', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('2512', '166', 'Asuncion', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('2513', '166', 'Boqueron', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('2514', '166', 'Caaguazu', 'CG', '1');
INSERT INTO `oc_zone` VALUES ('2515', '166', 'Caazapa', 'CZ', '1');
INSERT INTO `oc_zone` VALUES ('2516', '166', 'Canindeyu', 'CN', '1');
INSERT INTO `oc_zone` VALUES ('2517', '166', 'Central', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('2518', '166', 'Concepcion', 'CC', '1');
INSERT INTO `oc_zone` VALUES ('2519', '166', 'Cordillera', 'CD', '1');
INSERT INTO `oc_zone` VALUES ('2520', '166', 'Guaira', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('2521', '166', 'Itapua', 'IT', '1');
INSERT INTO `oc_zone` VALUES ('2522', '166', 'Misiones', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('2523', '166', 'Neembucu', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('2524', '166', 'Paraguari', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('2525', '166', 'Presidente Hayes', 'PH', '1');
INSERT INTO `oc_zone` VALUES ('2526', '166', 'San Pedro', 'SP', '1');
INSERT INTO `oc_zone` VALUES ('2527', '167', 'Amazonas', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('2528', '167', 'Ancash', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('2529', '167', 'Apurimac', 'AP', '1');
INSERT INTO `oc_zone` VALUES ('2530', '167', 'Arequipa', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('2531', '167', 'Ayacucho', 'AY', '1');
INSERT INTO `oc_zone` VALUES ('2532', '167', 'Cajamarca', 'CJ', '1');
INSERT INTO `oc_zone` VALUES ('2533', '167', 'Callao', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('2534', '167', 'Cusco', 'CU', '1');
INSERT INTO `oc_zone` VALUES ('2535', '167', 'Huancavelica', 'HV', '1');
INSERT INTO `oc_zone` VALUES ('2536', '167', 'Huanuco', 'HO', '1');
INSERT INTO `oc_zone` VALUES ('2537', '167', 'Ica', 'IC', '1');
INSERT INTO `oc_zone` VALUES ('2538', '167', 'Junin', 'JU', '1');
INSERT INTO `oc_zone` VALUES ('2539', '167', 'La Libertad', 'LD', '1');
INSERT INTO `oc_zone` VALUES ('2540', '167', 'Lambayeque', 'LY', '1');
INSERT INTO `oc_zone` VALUES ('2541', '167', 'Lima', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('2542', '167', 'Loreto', 'LO', '1');
INSERT INTO `oc_zone` VALUES ('2543', '167', 'Madre de Dios', 'MD', '1');
INSERT INTO `oc_zone` VALUES ('2544', '167', 'Moquegua', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('2545', '167', 'Pasco', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('2546', '167', 'Piura', 'PI', '1');
INSERT INTO `oc_zone` VALUES ('2547', '167', 'Puno', 'PU', '1');
INSERT INTO `oc_zone` VALUES ('2548', '167', 'San Martin', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('2549', '167', 'Tacna', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('2550', '167', 'Tumbes', 'TU', '1');
INSERT INTO `oc_zone` VALUES ('2551', '167', 'Ucayali', 'UC', '1');
INSERT INTO `oc_zone` VALUES ('2552', '168', 'Abra', 'ABR', '1');
INSERT INTO `oc_zone` VALUES ('2553', '168', 'Agusan del Norte', 'ANO', '1');
INSERT INTO `oc_zone` VALUES ('2554', '168', 'Agusan del Sur', 'ASU', '1');
INSERT INTO `oc_zone` VALUES ('2555', '168', 'Aklan', 'AKL', '1');
INSERT INTO `oc_zone` VALUES ('2556', '168', 'Albay', 'ALB', '1');
INSERT INTO `oc_zone` VALUES ('2557', '168', 'Antique', 'ANT', '1');
INSERT INTO `oc_zone` VALUES ('2558', '168', 'Apayao', 'APY', '1');
INSERT INTO `oc_zone` VALUES ('2559', '168', 'Aurora', 'AUR', '1');
INSERT INTO `oc_zone` VALUES ('2560', '168', 'Basilan', 'BAS', '1');
INSERT INTO `oc_zone` VALUES ('2561', '168', 'Bataan', 'BTA', '1');
INSERT INTO `oc_zone` VALUES ('2562', '168', 'Batanes', 'BTE', '1');
INSERT INTO `oc_zone` VALUES ('2563', '168', 'Batangas', 'BTG', '1');
INSERT INTO `oc_zone` VALUES ('2564', '168', 'Biliran', 'BLR', '1');
INSERT INTO `oc_zone` VALUES ('2565', '168', 'Benguet', 'BEN', '1');
INSERT INTO `oc_zone` VALUES ('2566', '168', 'Bohol', 'BOL', '1');
INSERT INTO `oc_zone` VALUES ('2567', '168', 'Bukidnon', 'BUK', '1');
INSERT INTO `oc_zone` VALUES ('2568', '168', 'Bulacan', 'BUL', '1');
INSERT INTO `oc_zone` VALUES ('2569', '168', 'Cagayan', 'CAG', '1');
INSERT INTO `oc_zone` VALUES ('2570', '168', 'Camarines Norte', 'CNO', '1');
INSERT INTO `oc_zone` VALUES ('2571', '168', 'Camarines Sur', 'CSU', '1');
INSERT INTO `oc_zone` VALUES ('2572', '168', 'Camiguin', 'CAM', '1');
INSERT INTO `oc_zone` VALUES ('2573', '168', 'Capiz', 'CAP', '1');
INSERT INTO `oc_zone` VALUES ('2574', '168', 'Catanduanes', 'CAT', '1');
INSERT INTO `oc_zone` VALUES ('2575', '168', 'Cavite', 'CAV', '1');
INSERT INTO `oc_zone` VALUES ('2576', '168', 'Cebu', 'CEB', '1');
INSERT INTO `oc_zone` VALUES ('2577', '168', 'Compostela', 'CMP', '1');
INSERT INTO `oc_zone` VALUES ('2578', '168', 'Davao del Norte', 'DNO', '1');
INSERT INTO `oc_zone` VALUES ('2579', '168', 'Davao del Sur', 'DSU', '1');
INSERT INTO `oc_zone` VALUES ('2580', '168', 'Davao Oriental', 'DOR', '1');
INSERT INTO `oc_zone` VALUES ('2581', '168', 'Eastern Samar', 'ESA', '1');
INSERT INTO `oc_zone` VALUES ('2582', '168', 'Guimaras', 'GUI', '1');
INSERT INTO `oc_zone` VALUES ('2583', '168', 'Ifugao', 'IFU', '1');
INSERT INTO `oc_zone` VALUES ('2584', '168', 'Ilocos Norte', 'INO', '1');
INSERT INTO `oc_zone` VALUES ('2585', '168', 'Ilocos Sur', 'ISU', '1');
INSERT INTO `oc_zone` VALUES ('2586', '168', 'Iloilo', 'ILO', '1');
INSERT INTO `oc_zone` VALUES ('2587', '168', 'Isabela', 'ISA', '1');
INSERT INTO `oc_zone` VALUES ('2588', '168', 'Kalinga', 'KAL', '1');
INSERT INTO `oc_zone` VALUES ('2589', '168', 'Laguna', 'LAG', '1');
INSERT INTO `oc_zone` VALUES ('2590', '168', 'Lanao del Norte', 'LNO', '1');
INSERT INTO `oc_zone` VALUES ('2591', '168', 'Lanao del Sur', 'LSU', '1');
INSERT INTO `oc_zone` VALUES ('2592', '168', 'La Union', 'UNI', '1');
INSERT INTO `oc_zone` VALUES ('2593', '168', 'Leyte', 'LEY', '1');
INSERT INTO `oc_zone` VALUES ('2594', '168', 'Maguindanao', 'MAG', '1');
INSERT INTO `oc_zone` VALUES ('2595', '168', 'Marinduque', 'MRN', '1');
INSERT INTO `oc_zone` VALUES ('2596', '168', 'Masbate', 'MSB', '1');
INSERT INTO `oc_zone` VALUES ('2597', '168', 'Mindoro Occidental', 'MIC', '1');
INSERT INTO `oc_zone` VALUES ('2598', '168', 'Mindoro Oriental', 'MIR', '1');
INSERT INTO `oc_zone` VALUES ('2599', '168', 'Misamis Occidental', 'MSC', '1');
INSERT INTO `oc_zone` VALUES ('2600', '168', 'Misamis Oriental', 'MOR', '1');
INSERT INTO `oc_zone` VALUES ('2601', '168', 'Mountain', 'MOP', '1');
INSERT INTO `oc_zone` VALUES ('2602', '168', 'Negros Occidental', 'NOC', '1');
INSERT INTO `oc_zone` VALUES ('2603', '168', 'Negros Oriental', 'NOR', '1');
INSERT INTO `oc_zone` VALUES ('2604', '168', 'North Cotabato', 'NCT', '1');
INSERT INTO `oc_zone` VALUES ('2605', '168', 'Northern Samar', 'NSM', '1');
INSERT INTO `oc_zone` VALUES ('2606', '168', 'Nueva Ecija', 'NEC', '1');
INSERT INTO `oc_zone` VALUES ('2607', '168', 'Nueva Vizcaya', 'NVZ', '1');
INSERT INTO `oc_zone` VALUES ('2608', '168', 'Palawan', 'PLW', '1');
INSERT INTO `oc_zone` VALUES ('2609', '168', 'Pampanga', 'PMP', '1');
INSERT INTO `oc_zone` VALUES ('2610', '168', 'Pangasinan', 'PNG', '1');
INSERT INTO `oc_zone` VALUES ('2611', '168', 'Quezon', 'QZN', '1');
INSERT INTO `oc_zone` VALUES ('2612', '168', 'Quirino', 'QRN', '1');
INSERT INTO `oc_zone` VALUES ('2613', '168', 'Rizal', 'RIZ', '1');
INSERT INTO `oc_zone` VALUES ('2614', '168', 'Romblon', 'ROM', '1');
INSERT INTO `oc_zone` VALUES ('2615', '168', 'Samar', 'SMR', '1');
INSERT INTO `oc_zone` VALUES ('2616', '168', 'Sarangani', 'SRG', '1');
INSERT INTO `oc_zone` VALUES ('2617', '168', 'Siquijor', 'SQJ', '1');
INSERT INTO `oc_zone` VALUES ('2618', '168', 'Sorsogon', 'SRS', '1');
INSERT INTO `oc_zone` VALUES ('2619', '168', 'South Cotabato', 'SCO', '1');
INSERT INTO `oc_zone` VALUES ('2620', '168', 'Southern Leyte', 'SLE', '1');
INSERT INTO `oc_zone` VALUES ('2621', '168', 'Sultan Kudarat', 'SKU', '1');
INSERT INTO `oc_zone` VALUES ('2622', '168', 'Sulu', 'SLU', '1');
INSERT INTO `oc_zone` VALUES ('2623', '168', 'Surigao del Norte', 'SNO', '1');
INSERT INTO `oc_zone` VALUES ('2624', '168', 'Surigao del Sur', 'SSU', '1');
INSERT INTO `oc_zone` VALUES ('2625', '168', 'Tarlac', 'TAR', '1');
INSERT INTO `oc_zone` VALUES ('2626', '168', 'Tawi-Tawi', 'TAW', '1');
INSERT INTO `oc_zone` VALUES ('2627', '168', 'Zambales', 'ZBL', '1');
INSERT INTO `oc_zone` VALUES ('2628', '168', 'Zamboanga del Norte', 'ZNO', '1');
INSERT INTO `oc_zone` VALUES ('2629', '168', 'Zamboanga del Sur', 'ZSU', '1');
INSERT INTO `oc_zone` VALUES ('2630', '168', 'Zamboanga Sibugay', 'ZSI', '1');
INSERT INTO `oc_zone` VALUES ('2631', '170', 'Dolnoslaskie', 'DO', '1');
INSERT INTO `oc_zone` VALUES ('2632', '170', 'Kujawsko-Pomorskie', 'KP', '1');
INSERT INTO `oc_zone` VALUES ('2633', '170', 'Lodzkie', 'LO', '1');
INSERT INTO `oc_zone` VALUES ('2634', '170', 'Lubelskie', 'LL', '1');
INSERT INTO `oc_zone` VALUES ('2635', '170', 'Lubuskie', 'LU', '1');
INSERT INTO `oc_zone` VALUES ('2636', '170', 'Malopolskie', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('2637', '170', 'Mazowieckie', 'MZ', '1');
INSERT INTO `oc_zone` VALUES ('2638', '170', 'Opolskie', 'OP', '1');
INSERT INTO `oc_zone` VALUES ('2639', '170', 'Podkarpackie', 'PP', '1');
INSERT INTO `oc_zone` VALUES ('2640', '170', 'Podlaskie', 'PL', '1');
INSERT INTO `oc_zone` VALUES ('2641', '170', 'Pomorskie', 'PM', '1');
INSERT INTO `oc_zone` VALUES ('2642', '170', 'Slaskie', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('2643', '170', 'Swietokrzyskie', 'SW', '1');
INSERT INTO `oc_zone` VALUES ('2644', '170', 'Warminsko-Mazurskie', 'WM', '1');
INSERT INTO `oc_zone` VALUES ('2645', '170', 'Wielkopolskie', 'WP', '1');
INSERT INTO `oc_zone` VALUES ('2646', '170', 'Zachodniopomorskie', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('2647', '198', 'Saint Pierre', 'P', '1');
INSERT INTO `oc_zone` VALUES ('2648', '198', 'Miquelon', 'M', '1');
INSERT INTO `oc_zone` VALUES ('2649', '171', 'A&ccedil;ores', '20', '1');
INSERT INTO `oc_zone` VALUES ('2650', '171', 'Aveiro', '01', '1');
INSERT INTO `oc_zone` VALUES ('2651', '171', 'Beja', '02', '1');
INSERT INTO `oc_zone` VALUES ('2652', '171', 'Braga', '03', '1');
INSERT INTO `oc_zone` VALUES ('2653', '171', 'Bragan&ccedil;a', '04', '1');
INSERT INTO `oc_zone` VALUES ('2654', '171', 'Castelo Branco', '05', '1');
INSERT INTO `oc_zone` VALUES ('2655', '171', 'Coimbra', '06', '1');
INSERT INTO `oc_zone` VALUES ('2656', '171', '&Eacute;vora', '07', '1');
INSERT INTO `oc_zone` VALUES ('2657', '171', 'Faro', '08', '1');
INSERT INTO `oc_zone` VALUES ('2658', '171', 'Guarda', '09', '1');
INSERT INTO `oc_zone` VALUES ('2659', '171', 'Leiria', '10', '1');
INSERT INTO `oc_zone` VALUES ('2660', '171', 'Lisboa', '11', '1');
INSERT INTO `oc_zone` VALUES ('2661', '171', 'Madeira', '30', '1');
INSERT INTO `oc_zone` VALUES ('2662', '171', 'Portalegre', '12', '1');
INSERT INTO `oc_zone` VALUES ('2663', '171', 'Porto', '13', '1');
INSERT INTO `oc_zone` VALUES ('2664', '171', 'Santar&eacute;m', '14', '1');
INSERT INTO `oc_zone` VALUES ('2665', '171', 'Set&uacute;bal', '15', '1');
INSERT INTO `oc_zone` VALUES ('2666', '171', 'Viana do Castelo', '16', '1');
INSERT INTO `oc_zone` VALUES ('2667', '171', 'Vila Real', '17', '1');
INSERT INTO `oc_zone` VALUES ('2668', '171', 'Viseu', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('2669', '173', 'Ad Dawhah', 'DW', '1');
INSERT INTO `oc_zone` VALUES ('2670', '173', 'Al Ghuwayriyah', 'GW', '1');
INSERT INTO `oc_zone` VALUES ('2671', '173', 'Al Jumayliyah', 'JM', '1');
INSERT INTO `oc_zone` VALUES ('2672', '173', 'Al Khawr', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('2673', '173', 'Al Wakrah', 'WK', '1');
INSERT INTO `oc_zone` VALUES ('2674', '173', 'Ar Rayyan', 'RN', '1');
INSERT INTO `oc_zone` VALUES ('2675', '173', 'Jarayan al Batinah', 'JB', '1');
INSERT INTO `oc_zone` VALUES ('2676', '173', 'Madinat ash Shamal', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('2677', '173', 'Umm Sa\'id', 'UD', '1');
INSERT INTO `oc_zone` VALUES ('2678', '173', 'Umm Salal', 'UL', '1');
INSERT INTO `oc_zone` VALUES ('2679', '175', 'Alba', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('2680', '175', 'Arad', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('2681', '175', 'Argeș', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('2682', '175', 'Bacău', 'BC', '1');
INSERT INTO `oc_zone` VALUES ('2683', '175', 'Bihor', 'BH', '1');
INSERT INTO `oc_zone` VALUES ('2684', '175', 'Bistrița-Năsăud', 'BN', '1');
INSERT INTO `oc_zone` VALUES ('2685', '175', 'Botoșani', 'BT', '1');
INSERT INTO `oc_zone` VALUES ('2686', '175', 'Brașov', 'BV', '1');
INSERT INTO `oc_zone` VALUES ('2687', '175', 'Brăila', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('2688', '175', 'București', 'B', '1');
INSERT INTO `oc_zone` VALUES ('2689', '175', 'Buzău', 'BZ', '1');
INSERT INTO `oc_zone` VALUES ('2690', '175', 'Caraș-Severin', 'CS', '1');
INSERT INTO `oc_zone` VALUES ('2691', '175', 'Călărași', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('2692', '175', 'Cluj', 'CJ', '1');
INSERT INTO `oc_zone` VALUES ('2693', '175', 'Constanța', 'CT', '1');
INSERT INTO `oc_zone` VALUES ('2694', '175', 'Covasna', 'CV', '1');
INSERT INTO `oc_zone` VALUES ('2695', '175', 'Dâmbovița', 'DB', '1');
INSERT INTO `oc_zone` VALUES ('2696', '175', 'Dolj', 'DJ', '1');
INSERT INTO `oc_zone` VALUES ('2697', '175', 'Galați', 'GL', '1');
INSERT INTO `oc_zone` VALUES ('2698', '175', 'Giurgiu', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('2699', '175', 'Gorj', 'GJ', '1');
INSERT INTO `oc_zone` VALUES ('2700', '175', 'Harghita', 'HR', '1');
INSERT INTO `oc_zone` VALUES ('2701', '175', 'Hunedoara', 'HD', '1');
INSERT INTO `oc_zone` VALUES ('2702', '175', 'Ialomița', 'IL', '1');
INSERT INTO `oc_zone` VALUES ('2703', '175', 'Iași', 'IS', '1');
INSERT INTO `oc_zone` VALUES ('2704', '175', 'Ilfov', 'IF', '1');
INSERT INTO `oc_zone` VALUES ('2705', '175', 'Maramureș', 'MM', '1');
INSERT INTO `oc_zone` VALUES ('2706', '175', 'Mehedinți', 'MH', '1');
INSERT INTO `oc_zone` VALUES ('2707', '175', 'Mureș', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('2708', '175', 'Neamț', 'NT', '1');
INSERT INTO `oc_zone` VALUES ('2709', '175', 'Olt', 'OT', '1');
INSERT INTO `oc_zone` VALUES ('2710', '175', 'Prahova', 'PH', '1');
INSERT INTO `oc_zone` VALUES ('2711', '175', 'Satu-Mare', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('2712', '175', 'Sălaj', 'SJ', '1');
INSERT INTO `oc_zone` VALUES ('2713', '175', 'Sibiu', 'SB', '1');
INSERT INTO `oc_zone` VALUES ('2714', '175', 'Suceava', 'SV', '1');
INSERT INTO `oc_zone` VALUES ('2715', '175', 'Teleorman', 'TR', '1');
INSERT INTO `oc_zone` VALUES ('2716', '175', 'Timiș', 'TM', '1');
INSERT INTO `oc_zone` VALUES ('2717', '175', 'Tulcea', 'TL', '1');
INSERT INTO `oc_zone` VALUES ('2718', '175', 'Vaslui', 'VS', '1');
INSERT INTO `oc_zone` VALUES ('2719', '175', 'Vâlcea', 'VL', '1');
INSERT INTO `oc_zone` VALUES ('2720', '175', 'Vrancea', 'VN', '1');
INSERT INTO `oc_zone` VALUES ('2809', '177', 'Butare', 'BU', '1');
INSERT INTO `oc_zone` VALUES ('2810', '177', 'Byumba', 'BY', '1');
INSERT INTO `oc_zone` VALUES ('2811', '177', 'Cyangugu', 'CY', '1');
INSERT INTO `oc_zone` VALUES ('2812', '177', 'Gikongoro', 'GK', '1');
INSERT INTO `oc_zone` VALUES ('2813', '177', 'Gisenyi', 'GS', '1');
INSERT INTO `oc_zone` VALUES ('2814', '177', 'Gitarama', 'GT', '1');
INSERT INTO `oc_zone` VALUES ('2815', '177', 'Kibungo', 'KG', '1');
INSERT INTO `oc_zone` VALUES ('2816', '177', 'Kibuye', 'KY', '1');
INSERT INTO `oc_zone` VALUES ('2817', '177', 'Kigali Rurale', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('2818', '177', 'Kigali-ville', 'KV', '1');
INSERT INTO `oc_zone` VALUES ('2819', '177', 'Ruhengeri', 'RU', '1');
INSERT INTO `oc_zone` VALUES ('2820', '177', 'Umutara', 'UM', '1');
INSERT INTO `oc_zone` VALUES ('2821', '178', 'Christ Church Nichola Town', 'CCN', '1');
INSERT INTO `oc_zone` VALUES ('2822', '178', 'Saint Anne Sandy Point', 'SAS', '1');
INSERT INTO `oc_zone` VALUES ('2823', '178', 'Saint George Basseterre', 'SGB', '1');
INSERT INTO `oc_zone` VALUES ('2824', '178', 'Saint George Gingerland', 'SGG', '1');
INSERT INTO `oc_zone` VALUES ('2825', '178', 'Saint James Windward', 'SJW', '1');
INSERT INTO `oc_zone` VALUES ('2826', '178', 'Saint John Capesterre', 'SJC', '1');
INSERT INTO `oc_zone` VALUES ('2827', '178', 'Saint John Figtree', 'SJF', '1');
INSERT INTO `oc_zone` VALUES ('2828', '178', 'Saint Mary Cayon', 'SMC', '1');
INSERT INTO `oc_zone` VALUES ('2829', '178', 'Saint Paul Capesterre', 'CAP', '1');
INSERT INTO `oc_zone` VALUES ('2830', '178', 'Saint Paul Charlestown', 'CHA', '1');
INSERT INTO `oc_zone` VALUES ('2831', '178', 'Saint Peter Basseterre', 'SPB', '1');
INSERT INTO `oc_zone` VALUES ('2832', '178', 'Saint Thomas Lowland', 'STL', '1');
INSERT INTO `oc_zone` VALUES ('2833', '178', 'Saint Thomas Middle Island', 'STM', '1');
INSERT INTO `oc_zone` VALUES ('2834', '178', 'Trinity Palmetto Point', 'TPP', '1');
INSERT INTO `oc_zone` VALUES ('2835', '179', 'Anse-la-Raye', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('2836', '179', 'Castries', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('2837', '179', 'Choiseul', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('2838', '179', 'Dauphin', 'DA', '1');
INSERT INTO `oc_zone` VALUES ('2839', '179', 'Dennery', 'DE', '1');
INSERT INTO `oc_zone` VALUES ('2840', '179', 'Gros-Islet', 'GI', '1');
INSERT INTO `oc_zone` VALUES ('2841', '179', 'Laborie', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('2842', '179', 'Micoud', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('2843', '179', 'Praslin', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('2844', '179', 'Soufriere', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('2845', '179', 'Vieux-Fort', 'VF', '1');
INSERT INTO `oc_zone` VALUES ('2846', '180', 'Charlotte', 'C', '1');
INSERT INTO `oc_zone` VALUES ('2847', '180', 'Grenadines', 'R', '1');
INSERT INTO `oc_zone` VALUES ('2848', '180', 'Saint Andrew', 'A', '1');
INSERT INTO `oc_zone` VALUES ('2849', '180', 'Saint David', 'D', '1');
INSERT INTO `oc_zone` VALUES ('2850', '180', 'Saint George', 'G', '1');
INSERT INTO `oc_zone` VALUES ('2851', '180', 'Saint Patrick', 'P', '1');
INSERT INTO `oc_zone` VALUES ('2852', '181', 'A\'ana', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('2853', '181', 'Aiga-i-le-Tai', 'AI', '1');
INSERT INTO `oc_zone` VALUES ('2854', '181', 'Atua', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('2855', '181', 'Fa\'asaleleaga', 'FA', '1');
INSERT INTO `oc_zone` VALUES ('2856', '181', 'Gaga\'emauga', 'GE', '1');
INSERT INTO `oc_zone` VALUES ('2857', '181', 'Gagaifomauga', 'GF', '1');
INSERT INTO `oc_zone` VALUES ('2858', '181', 'Palauli', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('2859', '181', 'Satupa\'itea', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('2860', '181', 'Tuamasaga', 'TU', '1');
INSERT INTO `oc_zone` VALUES ('2861', '181', 'Va\'a-o-Fonoti', 'VF', '1');
INSERT INTO `oc_zone` VALUES ('2862', '181', 'Vaisigano', 'VS', '1');
INSERT INTO `oc_zone` VALUES ('2863', '182', 'Acquaviva', 'AC', '1');
INSERT INTO `oc_zone` VALUES ('2864', '182', 'Borgo Maggiore', 'BM', '1');
INSERT INTO `oc_zone` VALUES ('2865', '182', 'Chiesanuova', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('2866', '182', 'Domagnano', 'DO', '1');
INSERT INTO `oc_zone` VALUES ('2867', '182', 'Faetano', 'FA', '1');
INSERT INTO `oc_zone` VALUES ('2868', '182', 'Fiorentino', 'FI', '1');
INSERT INTO `oc_zone` VALUES ('2869', '182', 'Montegiardino', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('2870', '182', 'Citta di San Marino', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('2871', '182', 'Serravalle', 'SE', '1');
INSERT INTO `oc_zone` VALUES ('2872', '183', 'Sao Tome', 'S', '1');
INSERT INTO `oc_zone` VALUES ('2873', '183', 'Principe', 'P', '1');
INSERT INTO `oc_zone` VALUES ('2874', '184', 'Al Bahah', 'BH', '1');
INSERT INTO `oc_zone` VALUES ('2875', '184', 'Al Hudud ash Shamaliyah', 'HS', '1');
INSERT INTO `oc_zone` VALUES ('2876', '184', 'Al Jawf', 'JF', '1');
INSERT INTO `oc_zone` VALUES ('2877', '184', 'Al Madinah', 'MD', '1');
INSERT INTO `oc_zone` VALUES ('2878', '184', 'Al Qasim', 'QS', '1');
INSERT INTO `oc_zone` VALUES ('2879', '184', 'Ar Riyad', 'RD', '1');
INSERT INTO `oc_zone` VALUES ('2880', '184', 'Ash Sharqiyah (Eastern)', 'AQ', '1');
INSERT INTO `oc_zone` VALUES ('2881', '184', '\'Asir', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('2882', '184', 'Ha\'il', 'HL', '1');
INSERT INTO `oc_zone` VALUES ('2883', '184', 'Jizan', 'JZ', '1');
INSERT INTO `oc_zone` VALUES ('2884', '184', 'Makkah', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('2885', '184', 'Najran', 'NR', '1');
INSERT INTO `oc_zone` VALUES ('2886', '184', 'Tabuk', 'TB', '1');
INSERT INTO `oc_zone` VALUES ('2887', '185', 'Dakar', 'DA', '1');
INSERT INTO `oc_zone` VALUES ('2888', '185', 'Diourbel', 'DI', '1');
INSERT INTO `oc_zone` VALUES ('2889', '185', 'Fatick', 'FA', '1');
INSERT INTO `oc_zone` VALUES ('2890', '185', 'Kaolack', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('2891', '185', 'Kolda', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('2892', '185', 'Louga', 'LO', '1');
INSERT INTO `oc_zone` VALUES ('2893', '185', 'Matam', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('2894', '185', 'Saint-Louis', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('2895', '185', 'Tambacounda', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('2896', '185', 'Thies', 'TH', '1');
INSERT INTO `oc_zone` VALUES ('2897', '185', 'Ziguinchor', 'ZI', '1');
INSERT INTO `oc_zone` VALUES ('2898', '186', 'Anse aux Pins', 'AP', '1');
INSERT INTO `oc_zone` VALUES ('2899', '186', 'Anse Boileau', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('2900', '186', 'Anse Etoile', 'AE', '1');
INSERT INTO `oc_zone` VALUES ('2901', '186', 'Anse Louis', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('2902', '186', 'Anse Royale', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('2903', '186', 'Baie Lazare', 'BL', '1');
INSERT INTO `oc_zone` VALUES ('2904', '186', 'Baie Sainte Anne', 'BS', '1');
INSERT INTO `oc_zone` VALUES ('2905', '186', 'Beau Vallon', 'BV', '1');
INSERT INTO `oc_zone` VALUES ('2906', '186', 'Bel Air', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('2907', '186', 'Bel Ombre', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('2908', '186', 'Cascade', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('2909', '186', 'Glacis', 'GL', '1');
INSERT INTO `oc_zone` VALUES ('2910', '186', 'Grand\' Anse (on Mahe)', 'GM', '1');
INSERT INTO `oc_zone` VALUES ('2911', '186', 'Grand\' Anse (on Praslin)', 'GP', '1');
INSERT INTO `oc_zone` VALUES ('2912', '186', 'La Digue', 'DG', '1');
INSERT INTO `oc_zone` VALUES ('2913', '186', 'La Riviere Anglaise', 'RA', '1');
INSERT INTO `oc_zone` VALUES ('2914', '186', 'Mont Buxton', 'MB', '1');
INSERT INTO `oc_zone` VALUES ('2915', '186', 'Mont Fleuri', 'MF', '1');
INSERT INTO `oc_zone` VALUES ('2916', '186', 'Plaisance', 'PL', '1');
INSERT INTO `oc_zone` VALUES ('2917', '186', 'Pointe La Rue', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('2918', '186', 'Port Glaud', 'PG', '1');
INSERT INTO `oc_zone` VALUES ('2919', '186', 'Saint Louis', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('2920', '186', 'Takamaka', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('2921', '187', 'Eastern', 'E', '1');
INSERT INTO `oc_zone` VALUES ('2922', '187', 'Northern', 'N', '1');
INSERT INTO `oc_zone` VALUES ('2923', '187', 'Southern', 'S', '1');
INSERT INTO `oc_zone` VALUES ('2924', '187', 'Western', 'W', '1');
INSERT INTO `oc_zone` VALUES ('2925', '189', 'Banskobystrický', 'BC', '1');
INSERT INTO `oc_zone` VALUES ('2926', '189', 'Bratislavský', 'BL', '1');
INSERT INTO `oc_zone` VALUES ('2927', '189', 'Košický', 'KI', '1');
INSERT INTO `oc_zone` VALUES ('2928', '189', 'Nitriansky', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('2929', '189', 'Prešovský', 'PV', '1');
INSERT INTO `oc_zone` VALUES ('2930', '189', 'Trenčiansky', 'TC', '1');
INSERT INTO `oc_zone` VALUES ('2931', '189', 'Trnavský', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('2932', '189', 'Žilinský', 'ZI', '1');
INSERT INTO `oc_zone` VALUES ('2933', '191', 'Central', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('2934', '191', 'Choiseul', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('2935', '191', 'Guadalcanal', 'GC', '1');
INSERT INTO `oc_zone` VALUES ('2936', '191', 'Honiara', 'HO', '1');
INSERT INTO `oc_zone` VALUES ('2937', '191', 'Isabel', 'IS', '1');
INSERT INTO `oc_zone` VALUES ('2938', '191', 'Makira', 'MK', '1');
INSERT INTO `oc_zone` VALUES ('2939', '191', 'Malaita', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('2940', '191', 'Rennell and Bellona', 'RB', '1');
INSERT INTO `oc_zone` VALUES ('2941', '191', 'Temotu', 'TM', '1');
INSERT INTO `oc_zone` VALUES ('2942', '191', 'Western', 'WE', '1');
INSERT INTO `oc_zone` VALUES ('2943', '192', 'Awdal', 'AW', '1');
INSERT INTO `oc_zone` VALUES ('2944', '192', 'Bakool', 'BK', '1');
INSERT INTO `oc_zone` VALUES ('2945', '192', 'Banaadir', 'BN', '1');
INSERT INTO `oc_zone` VALUES ('2946', '192', 'Bari', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('2947', '192', 'Bay', 'BY', '1');
INSERT INTO `oc_zone` VALUES ('2948', '192', 'Galguduud', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('2949', '192', 'Gedo', 'GE', '1');
INSERT INTO `oc_zone` VALUES ('2950', '192', 'Hiiraan', 'HI', '1');
INSERT INTO `oc_zone` VALUES ('2951', '192', 'Jubbada Dhexe', 'JD', '1');
INSERT INTO `oc_zone` VALUES ('2952', '192', 'Jubbada Hoose', 'JH', '1');
INSERT INTO `oc_zone` VALUES ('2953', '192', 'Mudug', 'MU', '1');
INSERT INTO `oc_zone` VALUES ('2954', '192', 'Nugaal', 'NU', '1');
INSERT INTO `oc_zone` VALUES ('2955', '192', 'Sanaag', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('2956', '192', 'Shabeellaha Dhexe', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('2957', '192', 'Shabeellaha Hoose', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('2958', '192', 'Sool', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('2959', '192', 'Togdheer', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('2960', '192', 'Woqooyi Galbeed', 'WG', '1');
INSERT INTO `oc_zone` VALUES ('2961', '193', 'Eastern Cape', 'EC', '1');
INSERT INTO `oc_zone` VALUES ('2962', '193', 'Free State', 'FS', '1');
INSERT INTO `oc_zone` VALUES ('2963', '193', 'Gauteng', 'GP', '1');
INSERT INTO `oc_zone` VALUES ('2964', '193', 'KwaZulu-Natal', 'KZN', '1');
INSERT INTO `oc_zone` VALUES ('2965', '193', 'Limpopo', 'LP', '1');
INSERT INTO `oc_zone` VALUES ('2966', '193', 'Mpumalanga', 'MP', '1');
INSERT INTO `oc_zone` VALUES ('2967', '193', 'North West', 'NW', '1');
INSERT INTO `oc_zone` VALUES ('2968', '193', 'Northern Cape', 'NC', '1');
INSERT INTO `oc_zone` VALUES ('2969', '193', 'Western Cape', 'WC', '1');
INSERT INTO `oc_zone` VALUES ('2970', '195', 'La Coru&ntilde;a', 'C', '1');
INSERT INTO `oc_zone` VALUES ('2971', '195', '&Aacute;lava', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('2972', '195', 'Albacete', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('2973', '195', 'Alicante', 'A', '1');
INSERT INTO `oc_zone` VALUES ('2974', '195', 'Almeria', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('2975', '195', 'Asturias', 'O', '1');
INSERT INTO `oc_zone` VALUES ('2976', '195', '&Aacute;vila', 'AV', '1');
INSERT INTO `oc_zone` VALUES ('2977', '195', 'Badajoz', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('2978', '195', 'Baleares', 'IB', '1');
INSERT INTO `oc_zone` VALUES ('2979', '195', 'Barcelona', 'B', '1');
INSERT INTO `oc_zone` VALUES ('2980', '195', 'Burgos', 'BU', '1');
INSERT INTO `oc_zone` VALUES ('2981', '195', 'C&aacute;ceres', 'CC', '1');
INSERT INTO `oc_zone` VALUES ('2982', '195', 'C&aacute;diz', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('2983', '195', 'Cantabria', 'S', '1');
INSERT INTO `oc_zone` VALUES ('2984', '195', 'Castell&oacute;n', 'CS', '1');
INSERT INTO `oc_zone` VALUES ('2985', '195', 'Ceuta', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('2986', '195', 'Ciudad Real', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('2987', '195', 'C&oacute;rdoba', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('2988', '195', 'Cuenca', 'CU', '1');
INSERT INTO `oc_zone` VALUES ('2989', '195', 'Girona', 'GI', '1');
INSERT INTO `oc_zone` VALUES ('2990', '195', 'Granada', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('2991', '195', 'Guadalajara', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('2992', '195', 'Guip&uacute;zcoa', 'SS', '1');
INSERT INTO `oc_zone` VALUES ('2993', '195', 'Huelva', 'H', '1');
INSERT INTO `oc_zone` VALUES ('2994', '195', 'Huesca', 'HU', '1');
INSERT INTO `oc_zone` VALUES ('2995', '195', 'Ja&eacute;n', 'J', '1');
INSERT INTO `oc_zone` VALUES ('2996', '195', 'La Rioja', 'LO', '1');
INSERT INTO `oc_zone` VALUES ('2997', '195', 'Las Palmas', 'GC', '1');
INSERT INTO `oc_zone` VALUES ('2998', '195', 'Leon', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('2999', '195', 'Lleida', 'L', '1');
INSERT INTO `oc_zone` VALUES ('3000', '195', 'Lugo', 'LU', '1');
INSERT INTO `oc_zone` VALUES ('3001', '195', 'Madrid', 'M', '1');
INSERT INTO `oc_zone` VALUES ('3002', '195', 'Malaga', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('3003', '195', 'Melilla', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('3004', '195', 'Murcia', 'MU', '1');
INSERT INTO `oc_zone` VALUES ('3005', '195', 'Navarra', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('3006', '195', 'Ourense', 'OR', '1');
INSERT INTO `oc_zone` VALUES ('3007', '195', 'Palencia', 'P', '1');
INSERT INTO `oc_zone` VALUES ('3008', '195', 'Pontevedra', 'PO', '1');
INSERT INTO `oc_zone` VALUES ('3009', '195', 'Salamanca', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('3010', '195', 'Santa Cruz de Tenerife', 'TF', '1');
INSERT INTO `oc_zone` VALUES ('3011', '195', 'Segovia', 'SG', '1');
INSERT INTO `oc_zone` VALUES ('3012', '195', 'Sevilla', 'SE', '1');
INSERT INTO `oc_zone` VALUES ('3013', '195', 'Soria', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('3014', '195', 'Tarragona', 'T', '1');
INSERT INTO `oc_zone` VALUES ('3015', '195', 'Teruel', 'TE', '1');
INSERT INTO `oc_zone` VALUES ('3016', '195', 'Toledo', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('3017', '195', 'Valencia', 'V', '1');
INSERT INTO `oc_zone` VALUES ('3018', '195', 'Valladolid', 'VA', '1');
INSERT INTO `oc_zone` VALUES ('3019', '195', 'Bizkaia', 'BI', '1');
INSERT INTO `oc_zone` VALUES ('3020', '195', 'Zamora', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('3021', '195', 'Zaragoza', 'Z', '1');
INSERT INTO `oc_zone` VALUES ('3022', '196', 'Central', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('3023', '196', 'Eastern', 'EA', '1');
INSERT INTO `oc_zone` VALUES ('3024', '196', 'North Central', 'NC', '1');
INSERT INTO `oc_zone` VALUES ('3025', '196', 'Northern', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('3026', '196', 'North Western', 'NW', '1');
INSERT INTO `oc_zone` VALUES ('3027', '196', 'Sabaragamuwa', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('3028', '196', 'Southern', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('3029', '196', 'Uva', 'UV', '1');
INSERT INTO `oc_zone` VALUES ('3030', '196', 'Western', 'WE', '1');
INSERT INTO `oc_zone` VALUES ('3032', '197', 'Saint Helena', 'S', '1');
INSERT INTO `oc_zone` VALUES ('3034', '199', 'A\'ali an Nil', 'ANL', '1');
INSERT INTO `oc_zone` VALUES ('3035', '199', 'Al Bahr al Ahmar', 'BAM', '1');
INSERT INTO `oc_zone` VALUES ('3036', '199', 'Al Buhayrat', 'BRT', '1');
INSERT INTO `oc_zone` VALUES ('3037', '199', 'Al Jazirah', 'JZR', '1');
INSERT INTO `oc_zone` VALUES ('3038', '199', 'Al Khartum', 'KRT', '1');
INSERT INTO `oc_zone` VALUES ('3039', '199', 'Al Qadarif', 'QDR', '1');
INSERT INTO `oc_zone` VALUES ('3040', '199', 'Al Wahdah', 'WDH', '1');
INSERT INTO `oc_zone` VALUES ('3041', '199', 'An Nil al Abyad', 'ANB', '1');
INSERT INTO `oc_zone` VALUES ('3042', '199', 'An Nil al Azraq', 'ANZ', '1');
INSERT INTO `oc_zone` VALUES ('3043', '199', 'Ash Shamaliyah', 'ASH', '1');
INSERT INTO `oc_zone` VALUES ('3044', '199', 'Bahr al Jabal', 'BJA', '1');
INSERT INTO `oc_zone` VALUES ('3045', '199', 'Gharb al Istiwa\'iyah', 'GIS', '1');
INSERT INTO `oc_zone` VALUES ('3046', '199', 'Gharb Bahr al Ghazal', 'GBG', '1');
INSERT INTO `oc_zone` VALUES ('3047', '199', 'Gharb Darfur', 'GDA', '1');
INSERT INTO `oc_zone` VALUES ('3048', '199', 'Gharb Kurdufan', 'GKU', '1');
INSERT INTO `oc_zone` VALUES ('3049', '199', 'Janub Darfur', 'JDA', '1');
INSERT INTO `oc_zone` VALUES ('3050', '199', 'Janub Kurdufan', 'JKU', '1');
INSERT INTO `oc_zone` VALUES ('3051', '199', 'Junqali', 'JQL', '1');
INSERT INTO `oc_zone` VALUES ('3052', '199', 'Kassala', 'KSL', '1');
INSERT INTO `oc_zone` VALUES ('3053', '199', 'Nahr an Nil', 'NNL', '1');
INSERT INTO `oc_zone` VALUES ('3054', '199', 'Shamal Bahr al Ghazal', 'SBG', '1');
INSERT INTO `oc_zone` VALUES ('3055', '199', 'Shamal Darfur', 'SDA', '1');
INSERT INTO `oc_zone` VALUES ('3056', '199', 'Shamal Kurdufan', 'SKU', '1');
INSERT INTO `oc_zone` VALUES ('3057', '199', 'Sharq al Istiwa\'iyah', 'SIS', '1');
INSERT INTO `oc_zone` VALUES ('3058', '199', 'Sinnar', 'SNR', '1');
INSERT INTO `oc_zone` VALUES ('3059', '199', 'Warab', 'WRB', '1');
INSERT INTO `oc_zone` VALUES ('3060', '200', 'Brokopondo', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('3061', '200', 'Commewijne', 'CM', '1');
INSERT INTO `oc_zone` VALUES ('3062', '200', 'Coronie', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('3063', '200', 'Marowijne', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('3064', '200', 'Nickerie', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('3065', '200', 'Para', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('3066', '200', 'Paramaribo', 'PM', '1');
INSERT INTO `oc_zone` VALUES ('3067', '200', 'Saramacca', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('3068', '200', 'Sipaliwini', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('3069', '200', 'Wanica', 'WA', '1');
INSERT INTO `oc_zone` VALUES ('3070', '202', 'Hhohho', 'H', '1');
INSERT INTO `oc_zone` VALUES ('3071', '202', 'Lubombo', 'L', '1');
INSERT INTO `oc_zone` VALUES ('3072', '202', 'Manzini', 'M', '1');
INSERT INTO `oc_zone` VALUES ('3073', '202', 'Shishelweni', 'S', '1');
INSERT INTO `oc_zone` VALUES ('3074', '203', 'Blekinge', 'K', '1');
INSERT INTO `oc_zone` VALUES ('3075', '203', 'Dalarna', 'W', '1');
INSERT INTO `oc_zone` VALUES ('3076', '203', 'Gävleborg', 'X', '1');
INSERT INTO `oc_zone` VALUES ('3077', '203', 'Gotland', 'I', '1');
INSERT INTO `oc_zone` VALUES ('3078', '203', 'Halland', 'N', '1');
INSERT INTO `oc_zone` VALUES ('3079', '203', 'Jämtland', 'Z', '1');
INSERT INTO `oc_zone` VALUES ('3080', '203', 'Jönköping', 'F', '1');
INSERT INTO `oc_zone` VALUES ('3081', '203', 'Kalmar', 'H', '1');
INSERT INTO `oc_zone` VALUES ('3082', '203', 'Kronoberg', 'G', '1');
INSERT INTO `oc_zone` VALUES ('3083', '203', 'Norrbotten', 'BD', '1');
INSERT INTO `oc_zone` VALUES ('3084', '203', 'Örebro', 'T', '1');
INSERT INTO `oc_zone` VALUES ('3085', '203', 'Östergötland', 'E', '1');
INSERT INTO `oc_zone` VALUES ('3086', '203', 'Sk&aring;ne', 'M', '1');
INSERT INTO `oc_zone` VALUES ('3087', '203', 'Södermanland', 'D', '1');
INSERT INTO `oc_zone` VALUES ('3088', '203', 'Stockholm', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('3089', '203', 'Uppsala', 'C', '1');
INSERT INTO `oc_zone` VALUES ('3090', '203', 'Värmland', 'S', '1');
INSERT INTO `oc_zone` VALUES ('3091', '203', 'Västerbotten', 'AC', '1');
INSERT INTO `oc_zone` VALUES ('3092', '203', 'Västernorrland', 'Y', '1');
INSERT INTO `oc_zone` VALUES ('3093', '203', 'Västmanland', 'U', '1');
INSERT INTO `oc_zone` VALUES ('3094', '203', 'Västra Götaland', 'O', '1');
INSERT INTO `oc_zone` VALUES ('3095', '204', 'Aargau', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('3096', '204', 'Appenzell Ausserrhoden', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('3097', '204', 'Appenzell Innerrhoden', 'AI', '1');
INSERT INTO `oc_zone` VALUES ('3098', '204', 'Basel-Stadt', 'BS', '1');
INSERT INTO `oc_zone` VALUES ('3099', '204', 'Basel-Landschaft', 'BL', '1');
INSERT INTO `oc_zone` VALUES ('3100', '204', 'Bern', 'BE', '1');
INSERT INTO `oc_zone` VALUES ('3101', '204', 'Fribourg', 'FR', '1');
INSERT INTO `oc_zone` VALUES ('3102', '204', 'Gen&egrave;ve', 'GE', '1');
INSERT INTO `oc_zone` VALUES ('3103', '204', 'Glarus', 'GL', '1');
INSERT INTO `oc_zone` VALUES ('3104', '204', 'Graubünden', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('3105', '204', 'Jura', 'JU', '1');
INSERT INTO `oc_zone` VALUES ('3106', '204', 'Luzern', 'LU', '1');
INSERT INTO `oc_zone` VALUES ('3107', '204', 'Neuch&acirc;tel', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('3108', '204', 'Nidwald', 'NW', '1');
INSERT INTO `oc_zone` VALUES ('3109', '204', 'Obwald', 'OW', '1');
INSERT INTO `oc_zone` VALUES ('3110', '204', 'St. Gallen', 'SG', '1');
INSERT INTO `oc_zone` VALUES ('3111', '204', 'Schaffhausen', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('3112', '204', 'Schwyz', 'SZ', '1');
INSERT INTO `oc_zone` VALUES ('3113', '204', 'Solothurn', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('3114', '204', 'Thurgau', 'TG', '1');
INSERT INTO `oc_zone` VALUES ('3115', '204', 'Ticino', 'TI', '1');
INSERT INTO `oc_zone` VALUES ('3116', '204', 'Uri', 'UR', '1');
INSERT INTO `oc_zone` VALUES ('3117', '204', 'Valais', 'VS', '1');
INSERT INTO `oc_zone` VALUES ('3118', '204', 'Vaud', 'VD', '1');
INSERT INTO `oc_zone` VALUES ('3119', '204', 'Zug', 'ZG', '1');
INSERT INTO `oc_zone` VALUES ('3120', '204', 'Zürich', 'ZH', '1');
INSERT INTO `oc_zone` VALUES ('3121', '205', 'Al Hasakah', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('3122', '205', 'Al Ladhiqiyah', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('3123', '205', 'Al Qunaytirah', 'QU', '1');
INSERT INTO `oc_zone` VALUES ('3124', '205', 'Ar Raqqah', 'RQ', '1');
INSERT INTO `oc_zone` VALUES ('3125', '205', 'As Suwayda', 'SU', '1');
INSERT INTO `oc_zone` VALUES ('3126', '205', 'Dara', 'DA', '1');
INSERT INTO `oc_zone` VALUES ('3127', '205', 'Dayr az Zawr', 'DZ', '1');
INSERT INTO `oc_zone` VALUES ('3128', '205', 'Dimashq', 'DI', '1');
INSERT INTO `oc_zone` VALUES ('3129', '205', 'Halab', 'HL', '1');
INSERT INTO `oc_zone` VALUES ('3130', '205', 'Hamah', 'HM', '1');
INSERT INTO `oc_zone` VALUES ('3131', '205', 'Hims', 'HI', '1');
INSERT INTO `oc_zone` VALUES ('3132', '205', 'Idlib', 'ID', '1');
INSERT INTO `oc_zone` VALUES ('3133', '205', 'Rif Dimashq', 'RD', '1');
INSERT INTO `oc_zone` VALUES ('3134', '205', 'Tartus', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3135', '206', 'Chang-hua', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('3136', '206', 'Chia-i', 'CI', '1');
INSERT INTO `oc_zone` VALUES ('3137', '206', 'Hsin-chu', 'HS', '1');
INSERT INTO `oc_zone` VALUES ('3138', '206', 'Hua-lien', 'HL', '1');
INSERT INTO `oc_zone` VALUES ('3139', '206', 'I-lan', 'IL', '1');
INSERT INTO `oc_zone` VALUES ('3140', '206', 'Kao-hsiung county', 'KH', '1');
INSERT INTO `oc_zone` VALUES ('3141', '206', 'Kin-men', 'KM', '1');
INSERT INTO `oc_zone` VALUES ('3142', '206', 'Lien-chiang', 'LC', '1');
INSERT INTO `oc_zone` VALUES ('3143', '206', 'Miao-li', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('3144', '206', 'Nan-t\'ou', 'NT', '1');
INSERT INTO `oc_zone` VALUES ('3145', '206', 'P\'eng-hu', 'PH', '1');
INSERT INTO `oc_zone` VALUES ('3146', '206', 'P\'ing-tung', 'PT', '1');
INSERT INTO `oc_zone` VALUES ('3147', '206', 'T\'ai-chung', 'TG', '1');
INSERT INTO `oc_zone` VALUES ('3148', '206', 'T\'ai-nan', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3149', '206', 'T\'ai-pei county', 'TP', '1');
INSERT INTO `oc_zone` VALUES ('3150', '206', 'T\'ai-tung', 'TT', '1');
INSERT INTO `oc_zone` VALUES ('3151', '206', 'T\'ao-yuan', 'TY', '1');
INSERT INTO `oc_zone` VALUES ('3152', '206', 'Yun-lin', 'YL', '1');
INSERT INTO `oc_zone` VALUES ('3153', '206', 'Chia-i city', 'CC', '1');
INSERT INTO `oc_zone` VALUES ('3154', '206', 'Chi-lung', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('3155', '206', 'Hsin-chu', 'HC', '1');
INSERT INTO `oc_zone` VALUES ('3156', '206', 'T\'ai-chung', 'TH', '1');
INSERT INTO `oc_zone` VALUES ('3157', '206', 'T\'ai-nan', 'TN', '1');
INSERT INTO `oc_zone` VALUES ('3158', '206', 'Kao-hsiung city', 'KC', '1');
INSERT INTO `oc_zone` VALUES ('3159', '206', 'T\'ai-pei city', 'TC', '1');
INSERT INTO `oc_zone` VALUES ('3160', '207', 'Gorno-Badakhstan', 'GB', '1');
INSERT INTO `oc_zone` VALUES ('3161', '207', 'Khatlon', 'KT', '1');
INSERT INTO `oc_zone` VALUES ('3162', '207', 'Sughd', 'SU', '1');
INSERT INTO `oc_zone` VALUES ('3163', '208', 'Arusha', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('3164', '208', 'Dar es Salaam', 'DS', '1');
INSERT INTO `oc_zone` VALUES ('3165', '208', 'Dodoma', 'DO', '1');
INSERT INTO `oc_zone` VALUES ('3166', '208', 'Iringa', 'IR', '1');
INSERT INTO `oc_zone` VALUES ('3167', '208', 'Kagera', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('3168', '208', 'Kigoma', 'KI', '1');
INSERT INTO `oc_zone` VALUES ('3169', '208', 'Kilimanjaro', 'KJ', '1');
INSERT INTO `oc_zone` VALUES ('3170', '208', 'Lindi', 'LN', '1');
INSERT INTO `oc_zone` VALUES ('3171', '208', 'Manyara', 'MY', '1');
INSERT INTO `oc_zone` VALUES ('3172', '208', 'Mara', 'MR', '1');
INSERT INTO `oc_zone` VALUES ('3173', '208', 'Mbeya', 'MB', '1');
INSERT INTO `oc_zone` VALUES ('3174', '208', 'Morogoro', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('3175', '208', 'Mtwara', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('3176', '208', 'Mwanza', 'MW', '1');
INSERT INTO `oc_zone` VALUES ('3177', '208', 'Pemba North', 'PN', '1');
INSERT INTO `oc_zone` VALUES ('3178', '208', 'Pemba South', 'PS', '1');
INSERT INTO `oc_zone` VALUES ('3179', '208', 'Pwani', 'PW', '1');
INSERT INTO `oc_zone` VALUES ('3180', '208', 'Rukwa', 'RK', '1');
INSERT INTO `oc_zone` VALUES ('3181', '208', 'Ruvuma', 'RV', '1');
INSERT INTO `oc_zone` VALUES ('3182', '208', 'Shinyanga', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('3183', '208', 'Singida', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('3184', '208', 'Tabora', 'TB', '1');
INSERT INTO `oc_zone` VALUES ('3185', '208', 'Tanga', 'TN', '1');
INSERT INTO `oc_zone` VALUES ('3186', '208', 'Zanzibar Central/South', 'ZC', '1');
INSERT INTO `oc_zone` VALUES ('3187', '208', 'Zanzibar North', 'ZN', '1');
INSERT INTO `oc_zone` VALUES ('3188', '208', 'Zanzibar Urban/West', 'ZU', '1');
INSERT INTO `oc_zone` VALUES ('3189', '209', 'Amnat Charoen', '37', '1');
INSERT INTO `oc_zone` VALUES ('3190', '209', 'Ang Thong', '15', '1');
INSERT INTO `oc_zone` VALUES ('3192', '209', 'Bangkok', '10', '1');
INSERT INTO `oc_zone` VALUES ('3193', '209', 'Buri Ram', '31', '1');
INSERT INTO `oc_zone` VALUES ('3194', '209', 'Chachoengsao', '24', '1');
INSERT INTO `oc_zone` VALUES ('3195', '209', 'Chai Nat', '18', '1');
INSERT INTO `oc_zone` VALUES ('3196', '209', 'Chaiyaphum', '36', '1');
INSERT INTO `oc_zone` VALUES ('3197', '209', 'Chanthaburi', '22', '1');
INSERT INTO `oc_zone` VALUES ('3198', '209', 'Chiang Mai', '50', '1');
INSERT INTO `oc_zone` VALUES ('3199', '209', 'Chiang Rai', '57', '1');
INSERT INTO `oc_zone` VALUES ('3200', '209', 'Chon Buri', '20', '1');
INSERT INTO `oc_zone` VALUES ('3201', '209', 'Chumphon', '86', '1');
INSERT INTO `oc_zone` VALUES ('3202', '209', 'Kalasin', '46', '1');
INSERT INTO `oc_zone` VALUES ('3203', '209', 'Kamphaeng Phet', '62', '1');
INSERT INTO `oc_zone` VALUES ('3204', '209', 'Kanchanaburi', '71', '1');
INSERT INTO `oc_zone` VALUES ('3205', '209', 'Khon Kaen', '40', '1');
INSERT INTO `oc_zone` VALUES ('3206', '209', 'Krabi', '81', '1');
INSERT INTO `oc_zone` VALUES ('3207', '209', 'Lampang', '52', '1');
INSERT INTO `oc_zone` VALUES ('3208', '209', 'Lamphun', '51', '1');
INSERT INTO `oc_zone` VALUES ('3209', '209', 'Loei', '42', '1');
INSERT INTO `oc_zone` VALUES ('3210', '209', 'Lop Buri', '1', '1');
INSERT INTO `oc_zone` VALUES ('3211', '209', 'Mae Hong Son', '55', '1');
INSERT INTO `oc_zone` VALUES ('3212', '209', 'Maha Sarakham', '44', '1');
INSERT INTO `oc_zone` VALUES ('3213', '209', 'Mukdahan', '49', '1');
INSERT INTO `oc_zone` VALUES ('3214', '209', 'Nakhon Nayok', '26', '1');
INSERT INTO `oc_zone` VALUES ('3215', '209', 'Nakhon Pathom', '73', '1');
INSERT INTO `oc_zone` VALUES ('3216', '209', 'Nakhon Phanom', '48', '1');
INSERT INTO `oc_zone` VALUES ('3217', '209', 'Nakhon Ratchasima', '30', '1');
INSERT INTO `oc_zone` VALUES ('3218', '209', 'Nakhon Sawan', '60', '1');
INSERT INTO `oc_zone` VALUES ('3219', '209', 'Nakhon Si Thammarat', '80', '1');
INSERT INTO `oc_zone` VALUES ('3220', '209', 'Nan', '55', '1');
INSERT INTO `oc_zone` VALUES ('3221', '209', 'Narathiwat', '96', '1');
INSERT INTO `oc_zone` VALUES ('3222', '209', 'Nong Bua Lamphu', '39', '1');
INSERT INTO `oc_zone` VALUES ('3223', '209', 'Nong Khai', '43', '1');
INSERT INTO `oc_zone` VALUES ('3224', '209', 'Nonthaburi', '12', '1');
INSERT INTO `oc_zone` VALUES ('3225', '209', 'Pathum Thani', '13', '1');
INSERT INTO `oc_zone` VALUES ('3226', '209', 'Pattani', '94', '1');
INSERT INTO `oc_zone` VALUES ('3227', '209', 'Phangnga', '82', '1');
INSERT INTO `oc_zone` VALUES ('3228', '209', 'Phatthalung', '93', '1');
INSERT INTO `oc_zone` VALUES ('3229', '209', 'Phayao', 'Phayao', '1');
INSERT INTO `oc_zone` VALUES ('3230', '209', 'Phetchabun', '67', '1');
INSERT INTO `oc_zone` VALUES ('3231', '209', 'Phetchaburi', '76', '1');
INSERT INTO `oc_zone` VALUES ('3232', '209', 'Phichit', '66', '1');
INSERT INTO `oc_zone` VALUES ('3233', '209', 'Phitsanulok', '65', '1');
INSERT INTO `oc_zone` VALUES ('3234', '209', 'Phrae', '54', '1');
INSERT INTO `oc_zone` VALUES ('3235', '209', 'Phuket', '83', '1');
INSERT INTO `oc_zone` VALUES ('3236', '209', 'Prachin Buri', '25', '1');
INSERT INTO `oc_zone` VALUES ('3237', '209', 'Prachuap Khiri Khan', '77', '1');
INSERT INTO `oc_zone` VALUES ('3238', '209', 'Ranong', '21', '1');
INSERT INTO `oc_zone` VALUES ('3239', '209', 'Ratchaburi', '70', '1');
INSERT INTO `oc_zone` VALUES ('3240', '209', 'Rayong', '21', '1');
INSERT INTO `oc_zone` VALUES ('3241', '209', 'Roi Et', '45', '1');
INSERT INTO `oc_zone` VALUES ('3242', '209', 'Sa Kaeo', '27', '1');
INSERT INTO `oc_zone` VALUES ('3243', '209', 'Sakon Nakhon', '47', '1');
INSERT INTO `oc_zone` VALUES ('3244', '209', 'Samut Prakan', '11', '1');
INSERT INTO `oc_zone` VALUES ('3245', '209', 'Samut Sakhon', '74', '1');
INSERT INTO `oc_zone` VALUES ('3246', '209', 'Samut Songkhram', '75', '1');
INSERT INTO `oc_zone` VALUES ('3247', '209', 'Saraburi', '19', '1');
INSERT INTO `oc_zone` VALUES ('3248', '209', 'Satun', '91', '1');
INSERT INTO `oc_zone` VALUES ('3249', '209', 'Sing Buri', '17', '1');
INSERT INTO `oc_zone` VALUES ('3250', '209', 'Si Sa Ket', '33', '1');
INSERT INTO `oc_zone` VALUES ('3251', '209', 'Songkhla', '90', '1');
INSERT INTO `oc_zone` VALUES ('3252', '209', 'Sukhothai', '64', '1');
INSERT INTO `oc_zone` VALUES ('3253', '209', 'Suphan Buri', '72', '1');
INSERT INTO `oc_zone` VALUES ('3254', '209', 'Surat Thani', '84', '1');
INSERT INTO `oc_zone` VALUES ('3255', '209', 'Surin', '32', '1');
INSERT INTO `oc_zone` VALUES ('3256', '209', 'Tak', '63', '1');
INSERT INTO `oc_zone` VALUES ('3257', '209', 'Trang', '92', '1');
INSERT INTO `oc_zone` VALUES ('3258', '209', 'Trat', '23', '1');
INSERT INTO `oc_zone` VALUES ('3259', '209', 'Ubon Ratchathani', '34', '1');
INSERT INTO `oc_zone` VALUES ('3260', '209', 'Udon Thani', '41', '1');
INSERT INTO `oc_zone` VALUES ('3261', '209', 'Uthai Thani', '61', '1');
INSERT INTO `oc_zone` VALUES ('3262', '209', 'Uttaradit', '53', '1');
INSERT INTO `oc_zone` VALUES ('3263', '209', 'Yala', '95', '1');
INSERT INTO `oc_zone` VALUES ('3264', '209', 'Yasothon', '35', '1');
INSERT INTO `oc_zone` VALUES ('3265', '210', 'Kara', 'K', '1');
INSERT INTO `oc_zone` VALUES ('3266', '210', 'Plateaux', 'P', '1');
INSERT INTO `oc_zone` VALUES ('3267', '210', 'Savanes', 'S', '1');
INSERT INTO `oc_zone` VALUES ('3268', '210', 'Centrale', 'C', '1');
INSERT INTO `oc_zone` VALUES ('3269', '210', 'Maritime', 'M', '1');
INSERT INTO `oc_zone` VALUES ('3270', '211', 'Atafu', 'A', '1');
INSERT INTO `oc_zone` VALUES ('3271', '211', 'Fakaofo', 'F', '1');
INSERT INTO `oc_zone` VALUES ('3272', '211', 'Nukunonu', 'N', '1');
INSERT INTO `oc_zone` VALUES ('3273', '212', 'Ha\'apai', 'H', '1');
INSERT INTO `oc_zone` VALUES ('3274', '212', 'Tongatapu', 'T', '1');
INSERT INTO `oc_zone` VALUES ('3275', '212', 'Vava\'u', 'V', '1');
INSERT INTO `oc_zone` VALUES ('3276', '213', 'Couva/Tabaquite/Talparo', 'CT', '1');
INSERT INTO `oc_zone` VALUES ('3277', '213', 'Diego Martin', 'DM', '1');
INSERT INTO `oc_zone` VALUES ('3278', '213', 'Mayaro/Rio Claro', 'MR', '1');
INSERT INTO `oc_zone` VALUES ('3279', '213', 'Penal/Debe', 'PD', '1');
INSERT INTO `oc_zone` VALUES ('3280', '213', 'Princes Town', 'PT', '1');
INSERT INTO `oc_zone` VALUES ('3281', '213', 'Sangre Grande', 'SG', '1');
INSERT INTO `oc_zone` VALUES ('3282', '213', 'San Juan/Laventille', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('3283', '213', 'Siparia', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('3284', '213', 'Tunapuna/Piarco', 'TP', '1');
INSERT INTO `oc_zone` VALUES ('3285', '213', 'Port of Spain', 'PS', '1');
INSERT INTO `oc_zone` VALUES ('3286', '213', 'San Fernando', 'SF', '1');
INSERT INTO `oc_zone` VALUES ('3287', '213', 'Arima', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('3288', '213', 'Point Fortin', 'PF', '1');
INSERT INTO `oc_zone` VALUES ('3289', '213', 'Chaguanas', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('3290', '213', 'Tobago', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('3291', '214', 'Ariana', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('3292', '214', 'Beja', 'BJ', '1');
INSERT INTO `oc_zone` VALUES ('3293', '214', 'Ben Arous', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('3294', '214', 'Bizerte', 'BI', '1');
INSERT INTO `oc_zone` VALUES ('3295', '214', 'Gabes', 'GB', '1');
INSERT INTO `oc_zone` VALUES ('3296', '214', 'Gafsa', 'GF', '1');
INSERT INTO `oc_zone` VALUES ('3297', '214', 'Jendouba', 'JE', '1');
INSERT INTO `oc_zone` VALUES ('3298', '214', 'Kairouan', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('3299', '214', 'Kasserine', 'KS', '1');
INSERT INTO `oc_zone` VALUES ('3300', '214', 'Kebili', 'KB', '1');
INSERT INTO `oc_zone` VALUES ('3301', '214', 'Kef', 'KF', '1');
INSERT INTO `oc_zone` VALUES ('3302', '214', 'Mahdia', 'MH', '1');
INSERT INTO `oc_zone` VALUES ('3303', '214', 'Manouba', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('3304', '214', 'Medenine', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('3305', '214', 'Monastir', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('3306', '214', 'Nabeul', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('3307', '214', 'Sfax', 'SF', '1');
INSERT INTO `oc_zone` VALUES ('3308', '214', 'Sidi', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('3309', '214', 'Siliana', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('3310', '214', 'Sousse', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('3311', '214', 'Tataouine', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3312', '214', 'Tozeur', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('3313', '214', 'Tunis', 'TU', '1');
INSERT INTO `oc_zone` VALUES ('3314', '214', 'Zaghouan', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('3315', '215', 'Adana', 'TR-01', '1');
INSERT INTO `oc_zone` VALUES ('3316', '215', 'Adıyaman', 'TR-02', '1');
INSERT INTO `oc_zone` VALUES ('3317', '215', 'Afyonkarahisar', 'TR-03', '1');
INSERT INTO `oc_zone` VALUES ('3318', '215', 'Ağrı', 'TR-04', '1');
INSERT INTO `oc_zone` VALUES ('3319', '215', 'Aksaray', 'TR-68', '1');
INSERT INTO `oc_zone` VALUES ('3320', '215', 'Amasya', 'TR-05', '1');
INSERT INTO `oc_zone` VALUES ('3321', '215', 'Ankara', 'TR-06', '1');
INSERT INTO `oc_zone` VALUES ('3322', '215', 'Antalya', 'TR-07', '1');
INSERT INTO `oc_zone` VALUES ('3323', '215', 'Ardahan', 'TR-75', '1');
INSERT INTO `oc_zone` VALUES ('3324', '215', 'Artvin', 'TR-08', '1');
INSERT INTO `oc_zone` VALUES ('3325', '215', 'Aydın', 'TR-09', '1');
INSERT INTO `oc_zone` VALUES ('3326', '215', 'Balıkesir', 'TR-10', '1');
INSERT INTO `oc_zone` VALUES ('3327', '215', 'Bartın', 'TR-74', '1');
INSERT INTO `oc_zone` VALUES ('3328', '215', 'Batman', 'TR-72', '1');
INSERT INTO `oc_zone` VALUES ('3329', '215', 'Bayburt', 'TR-69', '1');
INSERT INTO `oc_zone` VALUES ('3330', '215', 'Bilecik', 'TR-11', '1');
INSERT INTO `oc_zone` VALUES ('3331', '215', 'Bingöl', 'TR-12', '1');
INSERT INTO `oc_zone` VALUES ('3332', '215', 'Bitlis', 'TR-13', '1');
INSERT INTO `oc_zone` VALUES ('3333', '215', 'Bolu', 'TR-14', '1');
INSERT INTO `oc_zone` VALUES ('3334', '215', 'Burdur', 'TR-15', '1');
INSERT INTO `oc_zone` VALUES ('3335', '215', 'Bursa', 'TR-16', '1');
INSERT INTO `oc_zone` VALUES ('3336', '215', 'Çanakkale', 'TR-17', '1');
INSERT INTO `oc_zone` VALUES ('3337', '215', 'Çankırı', 'TR-18', '1');
INSERT INTO `oc_zone` VALUES ('3338', '215', 'Çorum', 'TR-19', '1');
INSERT INTO `oc_zone` VALUES ('3339', '215', 'Denizli', 'TR-20', '1');
INSERT INTO `oc_zone` VALUES ('3340', '215', 'Diyarbakır', 'TR-21', '1');
INSERT INTO `oc_zone` VALUES ('3341', '215', 'Düzce', 'TR-81', '1');
INSERT INTO `oc_zone` VALUES ('3342', '215', 'Edirne', 'TR-22', '1');
INSERT INTO `oc_zone` VALUES ('3343', '215', 'Elazığ', 'TR-23', '1');
INSERT INTO `oc_zone` VALUES ('3344', '215', 'Erzincan', 'TR-24', '1');
INSERT INTO `oc_zone` VALUES ('3345', '215', 'Erzurum', 'TR-25', '1');
INSERT INTO `oc_zone` VALUES ('3346', '215', 'Eskişehir', 'TR-26', '1');
INSERT INTO `oc_zone` VALUES ('3347', '215', 'Gaziantep', 'TR-27', '1');
INSERT INTO `oc_zone` VALUES ('3348', '215', 'Giresun', 'TR-28', '1');
INSERT INTO `oc_zone` VALUES ('3349', '215', 'Gümüşhane', 'TR-29', '1');
INSERT INTO `oc_zone` VALUES ('3350', '215', 'Hakkari', 'TR-30', '1');
INSERT INTO `oc_zone` VALUES ('3351', '215', 'Hatay', 'TR-31', '1');
INSERT INTO `oc_zone` VALUES ('3352', '215', 'Iğdır', 'TR-76', '1');
INSERT INTO `oc_zone` VALUES ('3353', '215', 'Isparta', 'TR-32', '1');
INSERT INTO `oc_zone` VALUES ('3354', '215', 'İstanbul', 'TR-34', '1');
INSERT INTO `oc_zone` VALUES ('3355', '215', 'İzmir', 'TR-35', '1');
INSERT INTO `oc_zone` VALUES ('3356', '215', 'Kahramanmaraş', 'TR-46', '1');
INSERT INTO `oc_zone` VALUES ('3357', '215', 'Karabük', 'TR-78', '1');
INSERT INTO `oc_zone` VALUES ('3358', '215', 'Karaman', 'TR-70', '1');
INSERT INTO `oc_zone` VALUES ('3359', '215', 'Kars', 'TR-36', '1');
INSERT INTO `oc_zone` VALUES ('3360', '215', 'Kastamonu', 'TR-37', '1');
INSERT INTO `oc_zone` VALUES ('3361', '215', 'Kayseri', 'TR-38', '1');
INSERT INTO `oc_zone` VALUES ('3362', '215', 'Kilis', 'TR-79', '1');
INSERT INTO `oc_zone` VALUES ('3363', '215', 'Kırıkkale', 'TR-71', '1');
INSERT INTO `oc_zone` VALUES ('3364', '215', 'Kırklareli', 'TR-39', '1');
INSERT INTO `oc_zone` VALUES ('3365', '215', 'Kırşehir', 'TR-40', '1');
INSERT INTO `oc_zone` VALUES ('3366', '215', 'Kocaeli', 'TR-41', '1');
INSERT INTO `oc_zone` VALUES ('3367', '215', 'Konya', 'TR-42', '1');
INSERT INTO `oc_zone` VALUES ('3368', '215', 'Kütahya', 'TR-43', '1');
INSERT INTO `oc_zone` VALUES ('3369', '215', 'Malatya', 'TR-44', '1');
INSERT INTO `oc_zone` VALUES ('3370', '215', 'Manisa', 'TR-45', '1');
INSERT INTO `oc_zone` VALUES ('3371', '215', 'Mardin', 'TR-47', '1');
INSERT INTO `oc_zone` VALUES ('3372', '215', 'Mersin', 'TR-33', '1');
INSERT INTO `oc_zone` VALUES ('3373', '215', 'Muğla', 'TR-48', '1');
INSERT INTO `oc_zone` VALUES ('3374', '215', 'Muş', 'TR-49', '1');
INSERT INTO `oc_zone` VALUES ('3375', '215', 'Nevşehir', 'TR-50', '1');
INSERT INTO `oc_zone` VALUES ('3376', '215', 'Niğde', 'TR-51', '1');
INSERT INTO `oc_zone` VALUES ('3377', '215', 'Ordu', 'TR-52', '1');
INSERT INTO `oc_zone` VALUES ('3378', '215', 'Osmaniye', 'TR-80', '1');
INSERT INTO `oc_zone` VALUES ('3379', '215', 'Rize', 'TR-53', '1');
INSERT INTO `oc_zone` VALUES ('3380', '215', 'Sakarya', 'TR-54', '1');
INSERT INTO `oc_zone` VALUES ('3381', '215', 'Samsun', 'TR-55', '1');
INSERT INTO `oc_zone` VALUES ('3382', '215', 'Şanlıurfa', 'TR-63', '1');
INSERT INTO `oc_zone` VALUES ('3383', '215', 'Siirt', 'TR-56', '1');
INSERT INTO `oc_zone` VALUES ('3384', '215', 'Sinop', 'TR-57', '1');
INSERT INTO `oc_zone` VALUES ('3385', '215', 'Şırnak', 'TR-73', '1');
INSERT INTO `oc_zone` VALUES ('3386', '215', 'Sivas', 'TR-58', '1');
INSERT INTO `oc_zone` VALUES ('3387', '215', 'Tekirdağ', 'TR-59', '1');
INSERT INTO `oc_zone` VALUES ('3388', '215', 'Tokat', 'TR-60', '1');
INSERT INTO `oc_zone` VALUES ('3389', '215', 'Trabzon', 'TR-61', '1');
INSERT INTO `oc_zone` VALUES ('3390', '215', 'Tunceli', 'TR-62', '1');
INSERT INTO `oc_zone` VALUES ('3391', '215', 'Uşak', 'TR-64', '1');
INSERT INTO `oc_zone` VALUES ('3392', '215', 'Van', 'TR-65', '1');
INSERT INTO `oc_zone` VALUES ('3393', '215', 'Yalova', 'TR-77', '1');
INSERT INTO `oc_zone` VALUES ('3394', '215', 'Yozgat', 'TR-66', '1');
INSERT INTO `oc_zone` VALUES ('3395', '215', 'Zonguldak', 'TR-67', '1');
INSERT INTO `oc_zone` VALUES ('3396', '216', 'Ahal Welayaty', 'A', '1');
INSERT INTO `oc_zone` VALUES ('3397', '216', 'Balkan Welayaty', 'B', '1');
INSERT INTO `oc_zone` VALUES ('3398', '216', 'Dashhowuz Welayaty', 'D', '1');
INSERT INTO `oc_zone` VALUES ('3399', '216', 'Lebap Welayaty', 'L', '1');
INSERT INTO `oc_zone` VALUES ('3400', '216', 'Mary Welayaty', 'M', '1');
INSERT INTO `oc_zone` VALUES ('3401', '217', 'Ambergris Cays', 'AC', '1');
INSERT INTO `oc_zone` VALUES ('3402', '217', 'Dellis Cay', 'DC', '1');
INSERT INTO `oc_zone` VALUES ('3403', '217', 'French Cay', 'FC', '1');
INSERT INTO `oc_zone` VALUES ('3404', '217', 'Little Water Cay', 'LW', '1');
INSERT INTO `oc_zone` VALUES ('3405', '217', 'Parrot Cay', 'RC', '1');
INSERT INTO `oc_zone` VALUES ('3406', '217', 'Pine Cay', 'PN', '1');
INSERT INTO `oc_zone` VALUES ('3407', '217', 'Salt Cay', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('3408', '217', 'Grand Turk', 'GT', '1');
INSERT INTO `oc_zone` VALUES ('3409', '217', 'South Caicos', 'SC', '1');
INSERT INTO `oc_zone` VALUES ('3410', '217', 'East Caicos', 'EC', '1');
INSERT INTO `oc_zone` VALUES ('3411', '217', 'Middle Caicos', 'MC', '1');
INSERT INTO `oc_zone` VALUES ('3412', '217', 'North Caicos', 'NC', '1');
INSERT INTO `oc_zone` VALUES ('3413', '217', 'Providenciales', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('3414', '217', 'West Caicos', 'WC', '1');
INSERT INTO `oc_zone` VALUES ('3415', '218', 'Nanumanga', 'NMG', '1');
INSERT INTO `oc_zone` VALUES ('3416', '218', 'Niulakita', 'NLK', '1');
INSERT INTO `oc_zone` VALUES ('3417', '218', 'Niutao', 'NTO', '1');
INSERT INTO `oc_zone` VALUES ('3418', '218', 'Funafuti', 'FUN', '1');
INSERT INTO `oc_zone` VALUES ('3419', '218', 'Nanumea', 'NME', '1');
INSERT INTO `oc_zone` VALUES ('3420', '218', 'Nui', 'NUI', '1');
INSERT INTO `oc_zone` VALUES ('3421', '218', 'Nukufetau', 'NFT', '1');
INSERT INTO `oc_zone` VALUES ('3422', '218', 'Nukulaelae', 'NLL', '1');
INSERT INTO `oc_zone` VALUES ('3423', '218', 'Vaitupu', 'VAI', '1');
INSERT INTO `oc_zone` VALUES ('3424', '219', 'Kalangala', 'KAL', '1');
INSERT INTO `oc_zone` VALUES ('3425', '219', 'Kampala', 'KMP', '1');
INSERT INTO `oc_zone` VALUES ('3426', '219', 'Kayunga', 'KAY', '1');
INSERT INTO `oc_zone` VALUES ('3427', '219', 'Kiboga', 'KIB', '1');
INSERT INTO `oc_zone` VALUES ('3428', '219', 'Luwero', 'LUW', '1');
INSERT INTO `oc_zone` VALUES ('3429', '219', 'Masaka', 'MAS', '1');
INSERT INTO `oc_zone` VALUES ('3430', '219', 'Mpigi', 'MPI', '1');
INSERT INTO `oc_zone` VALUES ('3431', '219', 'Mubende', 'MUB', '1');
INSERT INTO `oc_zone` VALUES ('3432', '219', 'Mukono', 'MUK', '1');
INSERT INTO `oc_zone` VALUES ('3433', '219', 'Nakasongola', 'NKS', '1');
INSERT INTO `oc_zone` VALUES ('3434', '219', 'Rakai', 'RAK', '1');
INSERT INTO `oc_zone` VALUES ('3435', '219', 'Sembabule', 'SEM', '1');
INSERT INTO `oc_zone` VALUES ('3436', '219', 'Wakiso', 'WAK', '1');
INSERT INTO `oc_zone` VALUES ('3437', '219', 'Bugiri', 'BUG', '1');
INSERT INTO `oc_zone` VALUES ('3438', '219', 'Busia', 'BUS', '1');
INSERT INTO `oc_zone` VALUES ('3439', '219', 'Iganga', 'IGA', '1');
INSERT INTO `oc_zone` VALUES ('3440', '219', 'Jinja', 'JIN', '1');
INSERT INTO `oc_zone` VALUES ('3441', '219', 'Kaberamaido', 'KAB', '1');
INSERT INTO `oc_zone` VALUES ('3442', '219', 'Kamuli', 'KML', '1');
INSERT INTO `oc_zone` VALUES ('3443', '219', 'Kapchorwa', 'KPC', '1');
INSERT INTO `oc_zone` VALUES ('3444', '219', 'Katakwi', 'KTK', '1');
INSERT INTO `oc_zone` VALUES ('3445', '219', 'Kumi', 'KUM', '1');
INSERT INTO `oc_zone` VALUES ('3446', '219', 'Mayuge', 'MAY', '1');
INSERT INTO `oc_zone` VALUES ('3447', '219', 'Mbale', 'MBA', '1');
INSERT INTO `oc_zone` VALUES ('3448', '219', 'Pallisa', 'PAL', '1');
INSERT INTO `oc_zone` VALUES ('3449', '219', 'Sironko', 'SIR', '1');
INSERT INTO `oc_zone` VALUES ('3450', '219', 'Soroti', 'SOR', '1');
INSERT INTO `oc_zone` VALUES ('3451', '219', 'Tororo', 'TOR', '1');
INSERT INTO `oc_zone` VALUES ('3452', '219', 'Adjumani', 'ADJ', '1');
INSERT INTO `oc_zone` VALUES ('3453', '219', 'Apac', 'APC', '1');
INSERT INTO `oc_zone` VALUES ('3454', '219', 'Arua', 'ARU', '1');
INSERT INTO `oc_zone` VALUES ('3455', '219', 'Gulu', 'GUL', '1');
INSERT INTO `oc_zone` VALUES ('3456', '219', 'Kitgum', 'KIT', '1');
INSERT INTO `oc_zone` VALUES ('3457', '219', 'Kotido', 'KOT', '1');
INSERT INTO `oc_zone` VALUES ('3458', '219', 'Lira', 'LIR', '1');
INSERT INTO `oc_zone` VALUES ('3459', '219', 'Moroto', 'MRT', '1');
INSERT INTO `oc_zone` VALUES ('3460', '219', 'Moyo', 'MOY', '1');
INSERT INTO `oc_zone` VALUES ('3461', '219', 'Nakapiripirit', 'NAK', '1');
INSERT INTO `oc_zone` VALUES ('3462', '219', 'Nebbi', 'NEB', '1');
INSERT INTO `oc_zone` VALUES ('3463', '219', 'Pader', 'PAD', '1');
INSERT INTO `oc_zone` VALUES ('3464', '219', 'Yumbe', 'YUM', '1');
INSERT INTO `oc_zone` VALUES ('3465', '219', 'Bundibugyo', 'BUN', '1');
INSERT INTO `oc_zone` VALUES ('3466', '219', 'Bushenyi', 'BSH', '1');
INSERT INTO `oc_zone` VALUES ('3467', '219', 'Hoima', 'HOI', '1');
INSERT INTO `oc_zone` VALUES ('3468', '219', 'Kabale', 'KBL', '1');
INSERT INTO `oc_zone` VALUES ('3469', '219', 'Kabarole', 'KAR', '1');
INSERT INTO `oc_zone` VALUES ('3470', '219', 'Kamwenge', 'KAM', '1');
INSERT INTO `oc_zone` VALUES ('3471', '219', 'Kanungu', 'KAN', '1');
INSERT INTO `oc_zone` VALUES ('3472', '219', 'Kasese', 'KAS', '1');
INSERT INTO `oc_zone` VALUES ('3473', '219', 'Kibaale', 'KBA', '1');
INSERT INTO `oc_zone` VALUES ('3474', '219', 'Kisoro', 'KIS', '1');
INSERT INTO `oc_zone` VALUES ('3475', '219', 'Kyenjojo', 'KYE', '1');
INSERT INTO `oc_zone` VALUES ('3476', '219', 'Masindi', 'MSN', '1');
INSERT INTO `oc_zone` VALUES ('3477', '219', 'Mbarara', 'MBR', '1');
INSERT INTO `oc_zone` VALUES ('3478', '219', 'Ntungamo', 'NTU', '1');
INSERT INTO `oc_zone` VALUES ('3479', '219', 'Rukungiri', 'RUK', '1');
INSERT INTO `oc_zone` VALUES ('3480', '220', 'Cherkaska', '23', '1');
INSERT INTO `oc_zone` VALUES ('3481', '220', 'Chernihivska', '25', '1');
INSERT INTO `oc_zone` VALUES ('3482', '220', 'Chernivetska', '24', '1');
INSERT INTO `oc_zone` VALUES ('3483', '220', 'Avtonomna Respublika Krym', '27', '1');
INSERT INTO `oc_zone` VALUES ('3484', '220', 'Dnipropetrovska', '04', '1');
INSERT INTO `oc_zone` VALUES ('3485', '220', 'Donetska', '05', '1');
INSERT INTO `oc_zone` VALUES ('3486', '220', 'Ivano-Frankivska', '09', '1');
INSERT INTO `oc_zone` VALUES ('3487', '220', 'Khersonska', '21', '1');
INSERT INTO `oc_zone` VALUES ('3488', '220', 'Khmelnytska', '22', '1');
INSERT INTO `oc_zone` VALUES ('3489', '220', 'Kirovohradska', '35', '1');
INSERT INTO `oc_zone` VALUES ('3490', '220', 'Kyiv', '26', '1');
INSERT INTO `oc_zone` VALUES ('3491', '220', 'Kyivska', '10', '1');
INSERT INTO `oc_zone` VALUES ('3492', '220', 'Luhanska', '12', '1');
INSERT INTO `oc_zone` VALUES ('3493', '220', 'Lvivska', '13', '1');
INSERT INTO `oc_zone` VALUES ('3494', '220', 'Mykolaivska', '14', '1');
INSERT INTO `oc_zone` VALUES ('3495', '220', 'Odeska', '15', '1');
INSERT INTO `oc_zone` VALUES ('3496', '220', 'Poltavska', '16', '1');
INSERT INTO `oc_zone` VALUES ('3497', '220', 'Rivnenska', '17', '1');
INSERT INTO `oc_zone` VALUES ('3498', '220', 'Sevastopol', '28', '1');
INSERT INTO `oc_zone` VALUES ('3499', '220', 'Sumska', '18', '1');
INSERT INTO `oc_zone` VALUES ('3500', '220', 'Ternopilska', '19', '1');
INSERT INTO `oc_zone` VALUES ('3501', '220', 'Vinnytska', '02', '1');
INSERT INTO `oc_zone` VALUES ('3502', '220', 'Volynska', '03', '1');
INSERT INTO `oc_zone` VALUES ('3503', '220', 'Zakarpatska', '07', '1');
INSERT INTO `oc_zone` VALUES ('3504', '220', 'Zaporizka', '08', '1');
INSERT INTO `oc_zone` VALUES ('3505', '220', 'Zhytomyrskа', '06', '1');
INSERT INTO `oc_zone` VALUES ('3506', '221', 'Abu Dhabi', 'ADH', '1');
INSERT INTO `oc_zone` VALUES ('3507', '221', '\'Ajman', 'AJ', '1');
INSERT INTO `oc_zone` VALUES ('3508', '221', 'Al Fujayrah', 'FU', '1');
INSERT INTO `oc_zone` VALUES ('3509', '221', 'Ash Shāriqah', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('3510', '221', 'Dubai', 'DU', '1');
INSERT INTO `oc_zone` VALUES ('3511', '221', 'Ra’s al Khaymah', 'RK', '1');
INSERT INTO `oc_zone` VALUES ('3512', '221', 'Umm al Qaywayn', 'UQ', '1');
INSERT INTO `oc_zone` VALUES ('3513', '222', 'Aberdeen', 'ABN', '1');
INSERT INTO `oc_zone` VALUES ('3514', '222', 'Aberdeenshire', 'ABNS', '1');
INSERT INTO `oc_zone` VALUES ('3515', '222', 'Anglesey', 'ANG', '1');
INSERT INTO `oc_zone` VALUES ('3516', '222', 'Angus', 'AGS', '1');
INSERT INTO `oc_zone` VALUES ('3517', '222', 'Argyll and Bute', 'ARY', '1');
INSERT INTO `oc_zone` VALUES ('3518', '222', 'Bedfordshire', 'BEDS', '1');
INSERT INTO `oc_zone` VALUES ('3519', '222', 'Berkshire', 'BERKS', '1');
INSERT INTO `oc_zone` VALUES ('3520', '222', 'Blaenau Gwent', 'BLA', '1');
INSERT INTO `oc_zone` VALUES ('3521', '222', 'Bridgend', 'BRI', '1');
INSERT INTO `oc_zone` VALUES ('3522', '222', 'Bristol', 'BSTL', '1');
INSERT INTO `oc_zone` VALUES ('3523', '222', 'Buckinghamshire', 'BUCKS', '1');
INSERT INTO `oc_zone` VALUES ('3524', '222', 'Caerphilly', 'CAE', '1');
INSERT INTO `oc_zone` VALUES ('3525', '222', 'Cambridgeshire', 'CAMBS', '1');
INSERT INTO `oc_zone` VALUES ('3526', '222', 'Cardiff', 'CDF', '1');
INSERT INTO `oc_zone` VALUES ('3527', '222', 'Carmarthenshire', 'CARM', '1');
INSERT INTO `oc_zone` VALUES ('3528', '222', 'Ceredigion', 'CDGN', '1');
INSERT INTO `oc_zone` VALUES ('3529', '222', 'Cheshire', 'CHES', '1');
INSERT INTO `oc_zone` VALUES ('3530', '222', 'Clackmannanshire', 'CLACK', '1');
INSERT INTO `oc_zone` VALUES ('3531', '222', 'Conwy', 'CON', '1');
INSERT INTO `oc_zone` VALUES ('3532', '222', 'Cornwall', 'CORN', '1');
INSERT INTO `oc_zone` VALUES ('3533', '222', 'Denbighshire', 'DNBG', '1');
INSERT INTO `oc_zone` VALUES ('3534', '222', 'Derbyshire', 'DERBY', '1');
INSERT INTO `oc_zone` VALUES ('3535', '222', 'Devon', 'DVN', '1');
INSERT INTO `oc_zone` VALUES ('3536', '222', 'Dorset', 'DOR', '1');
INSERT INTO `oc_zone` VALUES ('3537', '222', 'Dumfries and Galloway', 'DGL', '1');
INSERT INTO `oc_zone` VALUES ('3538', '222', 'Dundee', 'DUND', '1');
INSERT INTO `oc_zone` VALUES ('3539', '222', 'Durham', 'DHM', '1');
INSERT INTO `oc_zone` VALUES ('3540', '222', 'East Ayrshire', 'ARYE', '1');
INSERT INTO `oc_zone` VALUES ('3541', '222', 'East Dunbartonshire', 'DUNBE', '1');
INSERT INTO `oc_zone` VALUES ('3542', '222', 'East Lothian', 'LOTE', '1');
INSERT INTO `oc_zone` VALUES ('3543', '222', 'East Renfrewshire', 'RENE', '1');
INSERT INTO `oc_zone` VALUES ('3544', '222', 'East Riding of Yorkshire', 'ERYS', '1');
INSERT INTO `oc_zone` VALUES ('3545', '222', 'East Sussex', 'SXE', '1');
INSERT INTO `oc_zone` VALUES ('3546', '222', 'Edinburgh', 'EDIN', '1');
INSERT INTO `oc_zone` VALUES ('3547', '222', 'Essex', 'ESX', '1');
INSERT INTO `oc_zone` VALUES ('3548', '222', 'Falkirk', 'FALK', '1');
INSERT INTO `oc_zone` VALUES ('3549', '222', 'Fife', 'FFE', '1');
INSERT INTO `oc_zone` VALUES ('3550', '222', 'Flintshire', 'FLINT', '1');
INSERT INTO `oc_zone` VALUES ('3551', '222', 'Glasgow', 'GLAS', '1');
INSERT INTO `oc_zone` VALUES ('3552', '222', 'Gloucestershire', 'GLOS', '1');
INSERT INTO `oc_zone` VALUES ('3553', '222', 'Greater London', 'LDN', '1');
INSERT INTO `oc_zone` VALUES ('3554', '222', 'Greater Manchester', 'MCH', '1');
INSERT INTO `oc_zone` VALUES ('3555', '222', 'Gwynedd', 'GDD', '1');
INSERT INTO `oc_zone` VALUES ('3556', '222', 'Hampshire', 'HANTS', '1');
INSERT INTO `oc_zone` VALUES ('3557', '222', 'Herefordshire', 'HWR', '1');
INSERT INTO `oc_zone` VALUES ('3558', '222', 'Hertfordshire', 'HERTS', '1');
INSERT INTO `oc_zone` VALUES ('3559', '222', 'Highlands', 'HLD', '1');
INSERT INTO `oc_zone` VALUES ('3560', '222', 'Inverclyde', 'IVER', '1');
INSERT INTO `oc_zone` VALUES ('3561', '222', 'Isle of Wight', 'IOW', '1');
INSERT INTO `oc_zone` VALUES ('3562', '222', 'Kent', 'KNT', '1');
INSERT INTO `oc_zone` VALUES ('3563', '222', 'Lancashire', 'LANCS', '1');
INSERT INTO `oc_zone` VALUES ('3564', '222', 'Leicestershire', 'LEICS', '1');
INSERT INTO `oc_zone` VALUES ('3565', '222', 'Lincolnshire', 'LINCS', '1');
INSERT INTO `oc_zone` VALUES ('3566', '222', 'Merseyside', 'MSY', '1');
INSERT INTO `oc_zone` VALUES ('3567', '222', 'Merthyr Tydfil', 'MERT', '1');
INSERT INTO `oc_zone` VALUES ('3568', '222', 'Midlothian', 'MLOT', '1');
INSERT INTO `oc_zone` VALUES ('3569', '222', 'Monmouthshire', 'MMOUTH', '1');
INSERT INTO `oc_zone` VALUES ('3570', '222', 'Moray', 'MORAY', '1');
INSERT INTO `oc_zone` VALUES ('3571', '222', 'Neath Port Talbot', 'NPRTAL', '1');
INSERT INTO `oc_zone` VALUES ('3572', '222', 'Newport', 'NEWPT', '1');
INSERT INTO `oc_zone` VALUES ('3573', '222', 'Norfolk', 'NOR', '1');
INSERT INTO `oc_zone` VALUES ('3574', '222', 'North Ayrshire', 'ARYN', '1');
INSERT INTO `oc_zone` VALUES ('3575', '222', 'North Lanarkshire', 'LANN', '1');
INSERT INTO `oc_zone` VALUES ('3576', '222', 'North Yorkshire', 'YSN', '1');
INSERT INTO `oc_zone` VALUES ('3577', '222', 'Northamptonshire', 'NHM', '1');
INSERT INTO `oc_zone` VALUES ('3578', '222', 'Northumberland', 'NLD', '1');
INSERT INTO `oc_zone` VALUES ('3579', '222', 'Nottinghamshire', 'NOT', '1');
INSERT INTO `oc_zone` VALUES ('3580', '222', 'Orkney Islands', 'ORK', '1');
INSERT INTO `oc_zone` VALUES ('3581', '222', 'Oxfordshire', 'OFE', '1');
INSERT INTO `oc_zone` VALUES ('3582', '222', 'Pembrokeshire', 'PEM', '1');
INSERT INTO `oc_zone` VALUES ('3583', '222', 'Perth and Kinross', 'PERTH', '1');
INSERT INTO `oc_zone` VALUES ('3584', '222', 'Powys', 'PWS', '1');
INSERT INTO `oc_zone` VALUES ('3585', '222', 'Renfrewshire', 'REN', '1');
INSERT INTO `oc_zone` VALUES ('3586', '222', 'Rhondda Cynon Taff', 'RHON', '1');
INSERT INTO `oc_zone` VALUES ('3587', '222', 'Rutland', 'RUT', '1');
INSERT INTO `oc_zone` VALUES ('3588', '222', 'Scottish Borders', 'BOR', '1');
INSERT INTO `oc_zone` VALUES ('3589', '222', 'Shetland Islands', 'SHET', '1');
INSERT INTO `oc_zone` VALUES ('3590', '222', 'Shropshire', 'SPE', '1');
INSERT INTO `oc_zone` VALUES ('3591', '222', 'Somerset', 'SOM', '1');
INSERT INTO `oc_zone` VALUES ('3592', '222', 'South Ayrshire', 'ARYS', '1');
INSERT INTO `oc_zone` VALUES ('3593', '222', 'South Lanarkshire', 'LANS', '1');
INSERT INTO `oc_zone` VALUES ('3594', '222', 'South Yorkshire', 'YSS', '1');
INSERT INTO `oc_zone` VALUES ('3595', '222', 'Staffordshire', 'SFD', '1');
INSERT INTO `oc_zone` VALUES ('3596', '222', 'Stirling', 'STIR', '1');
INSERT INTO `oc_zone` VALUES ('3597', '222', 'Suffolk', 'SFK', '1');
INSERT INTO `oc_zone` VALUES ('3598', '222', 'Surrey', 'SRY', '1');
INSERT INTO `oc_zone` VALUES ('3599', '222', 'Swansea', 'SWAN', '1');
INSERT INTO `oc_zone` VALUES ('3600', '222', 'Torfaen', 'TORF', '1');
INSERT INTO `oc_zone` VALUES ('3601', '222', 'Tyne and Wear', 'TWR', '1');
INSERT INTO `oc_zone` VALUES ('3602', '222', 'Vale of Glamorgan', 'VGLAM', '1');
INSERT INTO `oc_zone` VALUES ('3603', '222', 'Warwickshire', 'WARKS', '1');
INSERT INTO `oc_zone` VALUES ('3604', '222', 'West Dunbartonshire', 'WDUN', '1');
INSERT INTO `oc_zone` VALUES ('3605', '222', 'West Lothian', 'WLOT', '1');
INSERT INTO `oc_zone` VALUES ('3606', '222', 'West Midlands', 'WMD', '1');
INSERT INTO `oc_zone` VALUES ('3607', '222', 'West Sussex', 'SXW', '1');
INSERT INTO `oc_zone` VALUES ('3608', '222', 'West Yorkshire', 'YSW', '1');
INSERT INTO `oc_zone` VALUES ('3609', '222', 'Western Isles', 'WIL', '1');
INSERT INTO `oc_zone` VALUES ('3610', '222', 'Wiltshire', 'WLT', '1');
INSERT INTO `oc_zone` VALUES ('3611', '222', 'Worcestershire', 'WORCS', '1');
INSERT INTO `oc_zone` VALUES ('3612', '222', 'Wrexham', 'WRX', '1');
INSERT INTO `oc_zone` VALUES ('3613', '223', 'Alabama', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('3614', '223', 'Alaska', 'AK', '1');
INSERT INTO `oc_zone` VALUES ('3615', '223', 'American Samoa', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('3616', '223', 'Arizona', 'AZ', '1');
INSERT INTO `oc_zone` VALUES ('3617', '223', 'Arkansas', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('3618', '223', 'Armed Forces Africa', 'AF', '1');
INSERT INTO `oc_zone` VALUES ('3619', '223', 'Armed Forces Americas', 'AA', '1');
INSERT INTO `oc_zone` VALUES ('3620', '223', 'Armed Forces Canada', 'AC', '1');
INSERT INTO `oc_zone` VALUES ('3621', '223', 'Armed Forces Europe', 'AE', '1');
INSERT INTO `oc_zone` VALUES ('3622', '223', 'Armed Forces Middle East', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('3623', '223', 'Armed Forces Pacific', 'AP', '1');
INSERT INTO `oc_zone` VALUES ('3624', '223', 'California', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('3625', '223', 'Colorado', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('3626', '223', 'Connecticut', 'CT', '1');
INSERT INTO `oc_zone` VALUES ('3627', '223', 'Delaware', 'DE', '1');
INSERT INTO `oc_zone` VALUES ('3628', '223', 'District of Columbia', 'DC', '1');
INSERT INTO `oc_zone` VALUES ('3629', '223', 'Federated States Of Micronesia', 'FM', '1');
INSERT INTO `oc_zone` VALUES ('3630', '223', 'Florida', 'FL', '1');
INSERT INTO `oc_zone` VALUES ('3631', '223', 'Georgia', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('3632', '223', 'Guam', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('3633', '223', 'Hawaii', 'HI', '1');
INSERT INTO `oc_zone` VALUES ('3634', '223', 'Idaho', 'ID', '1');
INSERT INTO `oc_zone` VALUES ('3635', '223', 'Illinois', 'IL', '1');
INSERT INTO `oc_zone` VALUES ('3636', '223', 'Indiana', 'IN', '1');
INSERT INTO `oc_zone` VALUES ('3637', '223', 'Iowa', 'IA', '1');
INSERT INTO `oc_zone` VALUES ('3638', '223', 'Kansas', 'KS', '1');
INSERT INTO `oc_zone` VALUES ('3639', '223', 'Kentucky', 'KY', '1');
INSERT INTO `oc_zone` VALUES ('3640', '223', 'Louisiana', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('3641', '223', 'Maine', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('3642', '223', 'Marshall Islands', 'MH', '1');
INSERT INTO `oc_zone` VALUES ('3643', '223', 'Maryland', 'MD', '1');
INSERT INTO `oc_zone` VALUES ('3644', '223', 'Massachusetts', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('3645', '223', 'Michigan', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('3646', '223', 'Minnesota', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('3647', '223', 'Mississippi', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('3648', '223', 'Missouri', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('3649', '223', 'Montana', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('3650', '223', 'Nebraska', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('3651', '223', 'Nevada', 'NV', '1');
INSERT INTO `oc_zone` VALUES ('3652', '223', 'New Hampshire', 'NH', '1');
INSERT INTO `oc_zone` VALUES ('3653', '223', 'New Jersey', 'NJ', '1');
INSERT INTO `oc_zone` VALUES ('3654', '223', 'New Mexico', 'NM', '1');
INSERT INTO `oc_zone` VALUES ('3655', '223', 'New York', 'NY', '1');
INSERT INTO `oc_zone` VALUES ('3656', '223', 'North Carolina', 'NC', '1');
INSERT INTO `oc_zone` VALUES ('3657', '223', 'North Dakota', 'ND', '1');
INSERT INTO `oc_zone` VALUES ('3658', '223', 'Northern Mariana Islands', 'MP', '1');
INSERT INTO `oc_zone` VALUES ('3659', '223', 'Ohio', 'OH', '1');
INSERT INTO `oc_zone` VALUES ('3660', '223', 'Oklahoma', 'OK', '1');
INSERT INTO `oc_zone` VALUES ('3661', '223', 'Oregon', 'OR', '1');
INSERT INTO `oc_zone` VALUES ('3662', '223', 'Palau', 'PW', '1');
INSERT INTO `oc_zone` VALUES ('3663', '223', 'Pennsylvania', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('3664', '223', 'Puerto Rico', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('3665', '223', 'Rhode Island', 'RI', '1');
INSERT INTO `oc_zone` VALUES ('3666', '223', 'South Carolina', 'SC', '1');
INSERT INTO `oc_zone` VALUES ('3667', '223', 'South Dakota', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('3668', '223', 'Tennessee', 'TN', '1');
INSERT INTO `oc_zone` VALUES ('3669', '223', 'Texas', 'TX', '1');
INSERT INTO `oc_zone` VALUES ('3670', '223', 'Utah', 'UT', '1');
INSERT INTO `oc_zone` VALUES ('3671', '223', 'Vermont', 'VT', '1');
INSERT INTO `oc_zone` VALUES ('3672', '223', 'Virgin Islands', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('3673', '223', 'Virginia', 'VA', '1');
INSERT INTO `oc_zone` VALUES ('3674', '223', 'Washington', 'WA', '1');
INSERT INTO `oc_zone` VALUES ('3675', '223', 'West Virginia', 'WV', '1');
INSERT INTO `oc_zone` VALUES ('3676', '223', 'Wisconsin', 'WI', '1');
INSERT INTO `oc_zone` VALUES ('3677', '223', 'Wyoming', 'WY', '1');
INSERT INTO `oc_zone` VALUES ('3678', '224', 'Baker Island', 'BI', '1');
INSERT INTO `oc_zone` VALUES ('3679', '224', 'Howland Island', 'HI', '1');
INSERT INTO `oc_zone` VALUES ('3680', '224', 'Jarvis Island', 'JI', '1');
INSERT INTO `oc_zone` VALUES ('3681', '224', 'Johnston Atoll', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('3682', '224', 'Kingman Reef', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('3683', '224', 'Midway Atoll', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('3684', '224', 'Navassa Island', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('3685', '224', 'Palmyra Atoll', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('3686', '224', 'Wake Island', 'WI', '1');
INSERT INTO `oc_zone` VALUES ('3687', '225', 'Artigas', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('3688', '225', 'Canelones', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('3689', '225', 'Cerro Largo', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('3690', '225', 'Colonia', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('3691', '225', 'Durazno', 'DU', '1');
INSERT INTO `oc_zone` VALUES ('3692', '225', 'Flores', 'FS', '1');
INSERT INTO `oc_zone` VALUES ('3693', '225', 'Florida', 'FA', '1');
INSERT INTO `oc_zone` VALUES ('3694', '225', 'Lavalleja', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('3695', '225', 'Maldonado', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('3696', '225', 'Montevideo', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('3697', '225', 'Paysandu', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('3698', '225', 'Rio Negro', 'RN', '1');
INSERT INTO `oc_zone` VALUES ('3699', '225', 'Rivera', 'RV', '1');
INSERT INTO `oc_zone` VALUES ('3700', '225', 'Rocha', 'RO', '1');
INSERT INTO `oc_zone` VALUES ('3701', '225', 'Salto', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('3702', '225', 'San Jose', 'SJ', '1');
INSERT INTO `oc_zone` VALUES ('3703', '225', 'Soriano', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('3704', '225', 'Tacuarembo', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3705', '225', 'Treinta y Tres', 'TT', '1');
INSERT INTO `oc_zone` VALUES ('3706', '226', 'Andijon', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('3707', '226', 'Buxoro', 'BU', '1');
INSERT INTO `oc_zone` VALUES ('3708', '226', 'Farg\'ona', 'FA', '1');
INSERT INTO `oc_zone` VALUES ('3709', '226', 'Jizzax', 'JI', '1');
INSERT INTO `oc_zone` VALUES ('3710', '226', 'Namangan', 'NG', '1');
INSERT INTO `oc_zone` VALUES ('3711', '226', 'Navoiy', 'NW', '1');
INSERT INTO `oc_zone` VALUES ('3712', '226', 'Qashqadaryo', 'QA', '1');
INSERT INTO `oc_zone` VALUES ('3713', '226', 'Qoraqalpog\'iston Republikasi', 'QR', '1');
INSERT INTO `oc_zone` VALUES ('3714', '226', 'Samarqand', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('3715', '226', 'Sirdaryo', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('3716', '226', 'Surxondaryo', 'SU', '1');
INSERT INTO `oc_zone` VALUES ('3717', '226', 'Toshkent City', 'TK', '1');
INSERT INTO `oc_zone` VALUES ('3718', '226', 'Toshkent Region', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('3719', '226', 'Xorazm', 'XO', '1');
INSERT INTO `oc_zone` VALUES ('3720', '227', 'Malampa', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('3721', '227', 'Penama', 'PE', '1');
INSERT INTO `oc_zone` VALUES ('3722', '227', 'Sanma', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('3723', '227', 'Shefa', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('3724', '227', 'Tafea', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3725', '227', 'Torba', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('3726', '229', 'Amazonas', 'Z', '1');
INSERT INTO `oc_zone` VALUES ('3727', '229', 'Anzoategui', 'B', '1');
INSERT INTO `oc_zone` VALUES ('3728', '229', 'Apure', 'C', '1');
INSERT INTO `oc_zone` VALUES ('3729', '229', 'Aragua', 'D', '1');
INSERT INTO `oc_zone` VALUES ('3730', '229', 'Barinas', 'E', '1');
INSERT INTO `oc_zone` VALUES ('3731', '229', 'Bolivar', 'F', '1');
INSERT INTO `oc_zone` VALUES ('3732', '229', 'Carabobo', 'G', '1');
INSERT INTO `oc_zone` VALUES ('3733', '229', 'Cojedes', 'H', '1');
INSERT INTO `oc_zone` VALUES ('3734', '229', 'Delta Amacuro', 'Y', '1');
INSERT INTO `oc_zone` VALUES ('3735', '229', 'Dependencias Federales', 'W', '1');
INSERT INTO `oc_zone` VALUES ('3736', '229', 'Distrito Capital', 'A', '1');
INSERT INTO `oc_zone` VALUES ('3737', '229', 'Falcon', 'I', '1');
INSERT INTO `oc_zone` VALUES ('3738', '229', 'Guarico', 'J', '1');
INSERT INTO `oc_zone` VALUES ('3739', '229', 'Lara', 'K', '1');
INSERT INTO `oc_zone` VALUES ('3740', '229', 'Merida', 'L', '1');
INSERT INTO `oc_zone` VALUES ('3741', '229', 'Miranda', 'M', '1');
INSERT INTO `oc_zone` VALUES ('3742', '229', 'Monagas', 'N', '1');
INSERT INTO `oc_zone` VALUES ('3743', '229', 'Nueva Esparta', 'O', '1');
INSERT INTO `oc_zone` VALUES ('3744', '229', 'Portuguesa', 'P', '1');
INSERT INTO `oc_zone` VALUES ('3745', '229', 'Sucre', 'R', '1');
INSERT INTO `oc_zone` VALUES ('3746', '229', 'Tachira', 'S', '1');
INSERT INTO `oc_zone` VALUES ('3747', '229', 'Trujillo', 'T', '1');
INSERT INTO `oc_zone` VALUES ('3748', '229', 'Vargas', 'X', '1');
INSERT INTO `oc_zone` VALUES ('3749', '229', 'Yaracuy', 'U', '1');
INSERT INTO `oc_zone` VALUES ('3750', '229', 'Zulia', 'V', '1');
INSERT INTO `oc_zone` VALUES ('3751', '230', 'An Giang', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('3752', '230', 'Bac Giang', 'BG', '1');
INSERT INTO `oc_zone` VALUES ('3753', '230', 'Bac Kan', 'BK', '1');
INSERT INTO `oc_zone` VALUES ('3754', '230', 'Bac Lieu', 'BL', '1');
INSERT INTO `oc_zone` VALUES ('3755', '230', 'Bac Ninh', 'BC', '1');
INSERT INTO `oc_zone` VALUES ('3756', '230', 'Ba Ria-Vung Tau', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('3757', '230', 'Ben Tre', 'BN', '1');
INSERT INTO `oc_zone` VALUES ('3758', '230', 'Binh Dinh', 'BH', '1');
INSERT INTO `oc_zone` VALUES ('3759', '230', 'Binh Duong', 'BU', '1');
INSERT INTO `oc_zone` VALUES ('3760', '230', 'Binh Phuoc', 'BP', '1');
INSERT INTO `oc_zone` VALUES ('3761', '230', 'Binh Thuan', 'BT', '1');
INSERT INTO `oc_zone` VALUES ('3762', '230', 'Ca Mau', 'CM', '1');
INSERT INTO `oc_zone` VALUES ('3763', '230', 'Can Tho', 'CT', '1');
INSERT INTO `oc_zone` VALUES ('3764', '230', 'Cao Bang', 'CB', '1');
INSERT INTO `oc_zone` VALUES ('3765', '230', 'Dak Lak', 'DL', '1');
INSERT INTO `oc_zone` VALUES ('3766', '230', 'Dak Nong', 'DG', '1');
INSERT INTO `oc_zone` VALUES ('3767', '230', 'Da Nang', 'DN', '1');
INSERT INTO `oc_zone` VALUES ('3768', '230', 'Dien Bien', 'DB', '1');
INSERT INTO `oc_zone` VALUES ('3769', '230', 'Dong Nai', 'DI', '1');
INSERT INTO `oc_zone` VALUES ('3770', '230', 'Dong Thap', 'DT', '1');
INSERT INTO `oc_zone` VALUES ('3771', '230', 'Gia Lai', 'GL', '1');
INSERT INTO `oc_zone` VALUES ('3772', '230', 'Ha Giang', 'HG', '1');
INSERT INTO `oc_zone` VALUES ('3773', '230', 'Hai Duong', 'HD', '1');
INSERT INTO `oc_zone` VALUES ('3774', '230', 'Hai Phong', 'HP', '1');
INSERT INTO `oc_zone` VALUES ('3775', '230', 'Ha Nam', 'HM', '1');
INSERT INTO `oc_zone` VALUES ('3776', '230', 'Ha Noi', 'HI', '1');
INSERT INTO `oc_zone` VALUES ('3777', '230', 'Ha Tay', 'HT', '1');
INSERT INTO `oc_zone` VALUES ('3778', '230', 'Ha Tinh', 'HH', '1');
INSERT INTO `oc_zone` VALUES ('3779', '230', 'Hoa Binh', 'HB', '1');
INSERT INTO `oc_zone` VALUES ('3780', '230', 'Ho Chi Minh City', 'HC', '1');
INSERT INTO `oc_zone` VALUES ('3781', '230', 'Hau Giang', 'HU', '1');
INSERT INTO `oc_zone` VALUES ('3782', '230', 'Hung Yen', 'HY', '1');
INSERT INTO `oc_zone` VALUES ('3783', '232', 'Saint Croix', 'C', '1');
INSERT INTO `oc_zone` VALUES ('3784', '232', 'Saint John', 'J', '1');
INSERT INTO `oc_zone` VALUES ('3785', '232', 'Saint Thomas', 'T', '1');
INSERT INTO `oc_zone` VALUES ('3786', '233', 'Alo', 'A', '1');
INSERT INTO `oc_zone` VALUES ('3787', '233', 'Sigave', 'S', '1');
INSERT INTO `oc_zone` VALUES ('3788', '233', 'Wallis', 'W', '1');
INSERT INTO `oc_zone` VALUES ('3789', '235', 'Abyan', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('3790', '235', 'Adan', 'AD', '1');
INSERT INTO `oc_zone` VALUES ('3791', '235', 'Amran', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('3792', '235', 'Al Bayda', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('3793', '235', 'Ad Dali', 'DA', '1');
INSERT INTO `oc_zone` VALUES ('3794', '235', 'Dhamar', 'DH', '1');
INSERT INTO `oc_zone` VALUES ('3795', '235', 'Hadramawt', 'HD', '1');
INSERT INTO `oc_zone` VALUES ('3796', '235', 'Hajjah', 'HJ', '1');
INSERT INTO `oc_zone` VALUES ('3797', '235', 'Al Hudaydah', 'HU', '1');
INSERT INTO `oc_zone` VALUES ('3798', '235', 'Ibb', 'IB', '1');
INSERT INTO `oc_zone` VALUES ('3799', '235', 'Al Jawf', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('3800', '235', 'Lahij', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('3801', '235', 'Ma\'rib', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('3802', '235', 'Al Mahrah', 'MR', '1');
INSERT INTO `oc_zone` VALUES ('3803', '235', 'Al Mahwit', 'MW', '1');
INSERT INTO `oc_zone` VALUES ('3804', '235', 'Sa\'dah', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('3805', '235', 'San\'a', 'SN', '1');
INSERT INTO `oc_zone` VALUES ('3806', '235', 'Shabwah', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('3807', '235', 'Ta\'izz', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3812', '237', 'Bas-Congo', 'BC', '1');
INSERT INTO `oc_zone` VALUES ('3813', '237', 'Bandundu', 'BN', '1');
INSERT INTO `oc_zone` VALUES ('3814', '237', 'Equateur', 'EQ', '1');
INSERT INTO `oc_zone` VALUES ('3815', '237', 'Katanga', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('3816', '237', 'Kasai-Oriental', 'KE', '1');
INSERT INTO `oc_zone` VALUES ('3817', '237', 'Kinshasa', 'KN', '1');
INSERT INTO `oc_zone` VALUES ('3818', '237', 'Kasai-Occidental', 'KW', '1');
INSERT INTO `oc_zone` VALUES ('3819', '237', 'Maniema', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('3820', '237', 'Nord-Kivu', 'NK', '1');
INSERT INTO `oc_zone` VALUES ('3821', '237', 'Orientale', 'OR', '1');
INSERT INTO `oc_zone` VALUES ('3822', '237', 'Sud-Kivu', 'SK', '1');
INSERT INTO `oc_zone` VALUES ('3823', '238', 'Central', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('3824', '238', 'Copperbelt', 'CB', '1');
INSERT INTO `oc_zone` VALUES ('3825', '238', 'Eastern', 'EA', '1');
INSERT INTO `oc_zone` VALUES ('3826', '238', 'Luapula', 'LP', '1');
INSERT INTO `oc_zone` VALUES ('3827', '238', 'Lusaka', 'LK', '1');
INSERT INTO `oc_zone` VALUES ('3828', '238', 'Northern', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('3829', '238', 'North-Western', 'NW', '1');
INSERT INTO `oc_zone` VALUES ('3830', '238', 'Southern', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('3831', '238', 'Western', 'WE', '1');
INSERT INTO `oc_zone` VALUES ('3832', '239', 'Bulawayo', 'BU', '1');
INSERT INTO `oc_zone` VALUES ('3833', '239', 'Harare', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('3834', '239', 'Manicaland', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('3835', '239', 'Mashonaland Central', 'MC', '1');
INSERT INTO `oc_zone` VALUES ('3836', '239', 'Mashonaland East', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('3837', '239', 'Mashonaland West', 'MW', '1');
INSERT INTO `oc_zone` VALUES ('3838', '239', 'Masvingo', 'MV', '1');
INSERT INTO `oc_zone` VALUES ('3839', '239', 'Matabeleland North', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('3840', '239', 'Matabeleland South', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('3841', '239', 'Midlands', 'MD', '1');
INSERT INTO `oc_zone` VALUES ('3842', '105', 'Agrigento', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('3843', '105', 'Alessandria', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('3844', '105', 'Ancona', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('3845', '105', 'Aosta', 'AO', '1');
INSERT INTO `oc_zone` VALUES ('3846', '105', 'Arezzo', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('3847', '105', 'Ascoli Piceno', 'AP', '1');
INSERT INTO `oc_zone` VALUES ('3848', '105', 'Asti', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('3849', '105', 'Avellino', 'AV', '1');
INSERT INTO `oc_zone` VALUES ('3850', '105', 'Bari', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('3851', '105', 'Belluno', 'BL', '1');
INSERT INTO `oc_zone` VALUES ('3852', '105', 'Benevento', 'BN', '1');
INSERT INTO `oc_zone` VALUES ('3853', '105', 'Bergamo', 'BG', '1');
INSERT INTO `oc_zone` VALUES ('3854', '105', 'Biella', 'BI', '1');
INSERT INTO `oc_zone` VALUES ('3855', '105', 'Bologna', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('3856', '105', 'Bolzano', 'BZ', '1');
INSERT INTO `oc_zone` VALUES ('3857', '105', 'Brescia', 'BS', '1');
INSERT INTO `oc_zone` VALUES ('3858', '105', 'Brindisi', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('3859', '105', 'Cagliari', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('3860', '105', 'Caltanissetta', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('3861', '105', 'Campobasso', 'CB', '1');
INSERT INTO `oc_zone` VALUES ('3863', '105', 'Caserta', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('3864', '105', 'Catania', 'CT', '1');
INSERT INTO `oc_zone` VALUES ('3865', '105', 'Catanzaro', 'CZ', '1');
INSERT INTO `oc_zone` VALUES ('3866', '105', 'Chieti', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('3867', '105', 'Como', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('3868', '105', 'Cosenza', 'CS', '1');
INSERT INTO `oc_zone` VALUES ('3869', '105', 'Cremona', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('3870', '105', 'Crotone', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('3871', '105', 'Cuneo', 'CN', '1');
INSERT INTO `oc_zone` VALUES ('3872', '105', 'Enna', 'EN', '1');
INSERT INTO `oc_zone` VALUES ('3873', '105', 'Ferrara', 'FE', '1');
INSERT INTO `oc_zone` VALUES ('3874', '105', 'Firenze', 'FI', '1');
INSERT INTO `oc_zone` VALUES ('3875', '105', 'Foggia', 'FG', '1');
INSERT INTO `oc_zone` VALUES ('3876', '105', 'Forli-Cesena', 'FC', '1');
INSERT INTO `oc_zone` VALUES ('3877', '105', 'Frosinone', 'FR', '1');
INSERT INTO `oc_zone` VALUES ('3878', '105', 'Genova', 'GE', '1');
INSERT INTO `oc_zone` VALUES ('3879', '105', 'Gorizia', 'GO', '1');
INSERT INTO `oc_zone` VALUES ('3880', '105', 'Grosseto', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('3881', '105', 'Imperia', 'IM', '1');
INSERT INTO `oc_zone` VALUES ('3882', '105', 'Isernia', 'IS', '1');
INSERT INTO `oc_zone` VALUES ('3883', '105', 'L&#39;Aquila', 'AQ', '1');
INSERT INTO `oc_zone` VALUES ('3884', '105', 'La Spezia', 'SP', '1');
INSERT INTO `oc_zone` VALUES ('3885', '105', 'Latina', 'LT', '1');
INSERT INTO `oc_zone` VALUES ('3886', '105', 'Lecce', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('3887', '105', 'Lecco', 'LC', '1');
INSERT INTO `oc_zone` VALUES ('3888', '105', 'Livorno', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('3889', '105', 'Lodi', 'LO', '1');
INSERT INTO `oc_zone` VALUES ('3890', '105', 'Lucca', 'LU', '1');
INSERT INTO `oc_zone` VALUES ('3891', '105', 'Macerata', 'MC', '1');
INSERT INTO `oc_zone` VALUES ('3892', '105', 'Mantova', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('3893', '105', 'Massa-Carrara', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('3894', '105', 'Matera', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('3896', '105', 'Messina', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('3897', '105', 'Milano', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('3898', '105', 'Modena', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('3899', '105', 'Napoli', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('3900', '105', 'Novara', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('3901', '105', 'Nuoro', 'NU', '1');
INSERT INTO `oc_zone` VALUES ('3904', '105', 'Oristano', 'OR', '1');
INSERT INTO `oc_zone` VALUES ('3905', '105', 'Padova', 'PD', '1');
INSERT INTO `oc_zone` VALUES ('3906', '105', 'Palermo', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('3907', '105', 'Parma', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('3908', '105', 'Pavia', 'PV', '1');
INSERT INTO `oc_zone` VALUES ('3909', '105', 'Perugia', 'PG', '1');
INSERT INTO `oc_zone` VALUES ('3910', '105', 'Pesaro e Urbino', 'PU', '1');
INSERT INTO `oc_zone` VALUES ('3911', '105', 'Pescara', 'PE', '1');
INSERT INTO `oc_zone` VALUES ('3912', '105', 'Piacenza', 'PC', '1');
INSERT INTO `oc_zone` VALUES ('3913', '105', 'Pisa', 'PI', '1');
INSERT INTO `oc_zone` VALUES ('3914', '105', 'Pistoia', 'PT', '1');
INSERT INTO `oc_zone` VALUES ('3915', '105', 'Pordenone', 'PN', '1');
INSERT INTO `oc_zone` VALUES ('3916', '105', 'Potenza', 'PZ', '1');
INSERT INTO `oc_zone` VALUES ('3917', '105', 'Prato', 'PO', '1');
INSERT INTO `oc_zone` VALUES ('3918', '105', 'Ragusa', 'RG', '1');
INSERT INTO `oc_zone` VALUES ('3919', '105', 'Ravenna', 'RA', '1');
INSERT INTO `oc_zone` VALUES ('3920', '105', 'Reggio Calabria', 'RC', '1');
INSERT INTO `oc_zone` VALUES ('3921', '105', 'Reggio Emilia', 'RE', '1');
INSERT INTO `oc_zone` VALUES ('3922', '105', 'Rieti', 'RI', '1');
INSERT INTO `oc_zone` VALUES ('3923', '105', 'Rimini', 'RN', '1');
INSERT INTO `oc_zone` VALUES ('3924', '105', 'Roma', 'RM', '1');
INSERT INTO `oc_zone` VALUES ('3925', '105', 'Rovigo', 'RO', '1');
INSERT INTO `oc_zone` VALUES ('3926', '105', 'Salerno', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('3927', '105', 'Sassari', 'SS', '1');
INSERT INTO `oc_zone` VALUES ('3928', '105', 'Savona', 'SV', '1');
INSERT INTO `oc_zone` VALUES ('3929', '105', 'Siena', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('3930', '105', 'Siracusa', 'SR', '1');
INSERT INTO `oc_zone` VALUES ('3931', '105', 'Sondrio', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('3932', '105', 'Taranto', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3933', '105', 'Teramo', 'TE', '1');
INSERT INTO `oc_zone` VALUES ('3934', '105', 'Terni', 'TR', '1');
INSERT INTO `oc_zone` VALUES ('3935', '105', 'Torino', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('3936', '105', 'Trapani', 'TP', '1');
INSERT INTO `oc_zone` VALUES ('3937', '105', 'Trento', 'TN', '1');
INSERT INTO `oc_zone` VALUES ('3938', '105', 'Treviso', 'TV', '1');
INSERT INTO `oc_zone` VALUES ('3939', '105', 'Trieste', 'TS', '1');
INSERT INTO `oc_zone` VALUES ('3940', '105', 'Udine', 'UD', '1');
INSERT INTO `oc_zone` VALUES ('3941', '105', 'Varese', 'VA', '1');
INSERT INTO `oc_zone` VALUES ('3942', '105', 'Venezia', 'VE', '1');
INSERT INTO `oc_zone` VALUES ('3943', '105', 'Verbano-Cusio-Ossola', 'VB', '1');
INSERT INTO `oc_zone` VALUES ('3944', '105', 'Vercelli', 'VC', '1');
INSERT INTO `oc_zone` VALUES ('3945', '105', 'Verona', 'VR', '1');
INSERT INTO `oc_zone` VALUES ('3946', '105', 'Vibo Valentia', 'VV', '1');
INSERT INTO `oc_zone` VALUES ('3947', '105', 'Vicenza', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('3948', '105', 'Viterbo', 'VT', '1');
INSERT INTO `oc_zone` VALUES ('3949', '222', 'County Antrim', 'ANT', '1');
INSERT INTO `oc_zone` VALUES ('3950', '222', 'County Armagh', 'ARM', '1');
INSERT INTO `oc_zone` VALUES ('3951', '222', 'County Down', 'DOW', '1');
INSERT INTO `oc_zone` VALUES ('3952', '222', 'County Fermanagh', 'FER', '1');
INSERT INTO `oc_zone` VALUES ('3953', '222', 'County Londonderry', 'LDY', '1');
INSERT INTO `oc_zone` VALUES ('3954', '222', 'County Tyrone', 'TYR', '1');
INSERT INTO `oc_zone` VALUES ('3955', '222', 'Cumbria', 'CMA', '1');
INSERT INTO `oc_zone` VALUES ('3956', '190', 'Pomurska', '1', '1');
INSERT INTO `oc_zone` VALUES ('3957', '190', 'Podravska', '2', '1');
INSERT INTO `oc_zone` VALUES ('3958', '190', 'Koroška', '3', '1');
INSERT INTO `oc_zone` VALUES ('3959', '190', 'Savinjska', '4', '1');
INSERT INTO `oc_zone` VALUES ('3960', '190', 'Zasavska', '5', '1');
INSERT INTO `oc_zone` VALUES ('3961', '190', 'Spodnjeposavska', '6', '1');
INSERT INTO `oc_zone` VALUES ('3962', '190', 'Jugovzhodna Slovenija', '7', '1');
INSERT INTO `oc_zone` VALUES ('3963', '190', 'Osrednjeslovenska', '8', '1');
INSERT INTO `oc_zone` VALUES ('3964', '190', 'Gorenjska', '9', '1');
INSERT INTO `oc_zone` VALUES ('3965', '190', 'Notranjsko-kraška', '10', '1');
INSERT INTO `oc_zone` VALUES ('3966', '190', 'Goriška', '11', '1');
INSERT INTO `oc_zone` VALUES ('3967', '190', 'Obalno-kraška', '12', '1');
INSERT INTO `oc_zone` VALUES ('3968', '33', 'Ruse', '', '1');
INSERT INTO `oc_zone` VALUES ('3969', '101', 'Alborz', 'ALB', '1');
INSERT INTO `oc_zone` VALUES ('3970', '21', 'Brussels-Capital Region', 'BRU', '1');
INSERT INTO `oc_zone` VALUES ('3971', '138', 'Aguascalientes', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('3973', '242', 'Andrijevica', '01', '1');
INSERT INTO `oc_zone` VALUES ('3974', '242', 'Bar', '02', '1');
INSERT INTO `oc_zone` VALUES ('3975', '242', 'Berane', '03', '1');
INSERT INTO `oc_zone` VALUES ('3976', '242', 'Bijelo Polje', '04', '1');
INSERT INTO `oc_zone` VALUES ('3977', '242', 'Budva', '05', '1');
INSERT INTO `oc_zone` VALUES ('3978', '242', 'Cetinje', '06', '1');
INSERT INTO `oc_zone` VALUES ('3979', '242', 'Danilovgrad', '07', '1');
INSERT INTO `oc_zone` VALUES ('3980', '242', 'Herceg-Novi', '08', '1');
INSERT INTO `oc_zone` VALUES ('3981', '242', 'Kolašin', '09', '1');
INSERT INTO `oc_zone` VALUES ('3982', '242', 'Kotor', '10', '1');
INSERT INTO `oc_zone` VALUES ('3983', '242', 'Mojkovac', '11', '1');
INSERT INTO `oc_zone` VALUES ('3984', '242', 'Nikšić', '12', '1');
INSERT INTO `oc_zone` VALUES ('3985', '242', 'Plav', '13', '1');
INSERT INTO `oc_zone` VALUES ('3986', '242', 'Pljevlja', '14', '1');
INSERT INTO `oc_zone` VALUES ('3987', '242', 'Plužine', '15', '1');
INSERT INTO `oc_zone` VALUES ('3988', '242', 'Podgorica', '16', '1');
INSERT INTO `oc_zone` VALUES ('3989', '242', 'Rožaje', '17', '1');
INSERT INTO `oc_zone` VALUES ('3990', '242', 'Šavnik', '18', '1');
INSERT INTO `oc_zone` VALUES ('3991', '242', 'Tivat', '19', '1');
INSERT INTO `oc_zone` VALUES ('3992', '242', 'Ulcinj', '20', '1');
INSERT INTO `oc_zone` VALUES ('3993', '242', 'Žabljak', '21', '1');
INSERT INTO `oc_zone` VALUES ('3994', '243', 'Belgrade', '00', '1');
INSERT INTO `oc_zone` VALUES ('3995', '243', 'North Bačka', '01', '1');
INSERT INTO `oc_zone` VALUES ('3996', '243', 'Central Banat', '02', '1');
INSERT INTO `oc_zone` VALUES ('3997', '243', 'North Banat', '03', '1');
INSERT INTO `oc_zone` VALUES ('3998', '243', 'South Banat', '04', '1');
INSERT INTO `oc_zone` VALUES ('3999', '243', 'West Bačka', '05', '1');
INSERT INTO `oc_zone` VALUES ('4000', '243', 'South Bačka', '06', '1');
INSERT INTO `oc_zone` VALUES ('4001', '243', 'Srem', '07', '1');
INSERT INTO `oc_zone` VALUES ('4002', '243', 'Mačva', '08', '1');
INSERT INTO `oc_zone` VALUES ('4003', '243', 'Kolubara', '09', '1');
INSERT INTO `oc_zone` VALUES ('4004', '243', 'Podunavlje', '10', '1');
INSERT INTO `oc_zone` VALUES ('4005', '243', 'Braničevo', '11', '1');
INSERT INTO `oc_zone` VALUES ('4006', '243', 'Šumadija', '12', '1');
INSERT INTO `oc_zone` VALUES ('4007', '243', 'Pomoravlje', '13', '1');
INSERT INTO `oc_zone` VALUES ('4008', '243', 'Bor', '14', '1');
INSERT INTO `oc_zone` VALUES ('4009', '243', 'Zaječar', '15', '1');
INSERT INTO `oc_zone` VALUES ('4010', '243', 'Zlatibor', '16', '1');
INSERT INTO `oc_zone` VALUES ('4011', '243', 'Moravica', '17', '1');
INSERT INTO `oc_zone` VALUES ('4012', '243', 'Raška', '18', '1');
INSERT INTO `oc_zone` VALUES ('4013', '243', 'Rasina', '19', '1');
INSERT INTO `oc_zone` VALUES ('4014', '243', 'Nišava', '20', '1');
INSERT INTO `oc_zone` VALUES ('4015', '243', 'Toplica', '21', '1');
INSERT INTO `oc_zone` VALUES ('4016', '243', 'Pirot', '22', '1');
INSERT INTO `oc_zone` VALUES ('4017', '243', 'Jablanica', '23', '1');
INSERT INTO `oc_zone` VALUES ('4018', '243', 'Pčinja', '24', '1');
INSERT INTO `oc_zone` VALUES ('4020', '245', 'Bonaire', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('4021', '245', 'Saba', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('4022', '245', 'Sint Eustatius', 'SE', '1');
INSERT INTO `oc_zone` VALUES ('4023', '248', 'Central Equatoria', 'EC', '1');
INSERT INTO `oc_zone` VALUES ('4024', '248', 'Eastern Equatoria', 'EE', '1');
INSERT INTO `oc_zone` VALUES ('4025', '248', 'Jonglei', 'JG', '1');
INSERT INTO `oc_zone` VALUES ('4026', '248', 'Lakes', 'LK', '1');
INSERT INTO `oc_zone` VALUES ('4027', '248', 'Northern Bahr el-Ghazal', 'BN', '1');
INSERT INTO `oc_zone` VALUES ('4028', '248', 'Unity', 'UY', '1');
INSERT INTO `oc_zone` VALUES ('4029', '248', 'Upper Nile', 'NU', '1');
INSERT INTO `oc_zone` VALUES ('4030', '248', 'Warrap', 'WR', '1');
INSERT INTO `oc_zone` VALUES ('4031', '248', 'Western Bahr el-Ghazal', 'BW', '1');
INSERT INTO `oc_zone` VALUES ('4032', '248', 'Western Equatoria', 'EW', '1');
INSERT INTO `oc_zone` VALUES ('4035', '129', 'Putrajaya', 'MY-16', '1');
INSERT INTO `oc_zone` VALUES ('4038', '117', 'Aizkraukles novads', '002', '1');
INSERT INTO `oc_zone` VALUES ('4040', '117', 'Aizputes novads', '003', '1');
INSERT INTO `oc_zone` VALUES ('4042', '117', 'Aknīstes novads', '004', '1');
INSERT INTO `oc_zone` VALUES ('4044', '117', 'Alojas novads', '005', '1');
INSERT INTO `oc_zone` VALUES ('4045', '117', 'Alsungas novads', '006', '1');
INSERT INTO `oc_zone` VALUES ('4047', '117', 'Alūksnes novads', '007', '1');
INSERT INTO `oc_zone` VALUES ('4048', '117', 'Amatas novads', '008', '1');
INSERT INTO `oc_zone` VALUES ('4050', '117', 'Apes novads', '008', '1');
INSERT INTO `oc_zone` VALUES ('4052', '117', 'Auces novads', '010', '1');
INSERT INTO `oc_zone` VALUES ('4053', '117', 'Ādažu novads', '011', '1');
INSERT INTO `oc_zone` VALUES ('4054', '117', 'Babītes novads', '012', '1');
INSERT INTO `oc_zone` VALUES ('4056', '117', 'Baldones novads', '013', '1');
INSERT INTO `oc_zone` VALUES ('4058', '117', 'Baltinavas novads', '014', '1');
INSERT INTO `oc_zone` VALUES ('4060', '117', 'Balvu novads', '015', '1');
INSERT INTO `oc_zone` VALUES ('4062', '117', 'Bauskas novads', '016', '1');
INSERT INTO `oc_zone` VALUES ('4063', '117', 'Beverīnas novads', '017', '1');
INSERT INTO `oc_zone` VALUES ('4065', '117', 'Brocēnu novads', '018', '1');
INSERT INTO `oc_zone` VALUES ('4066', '117', 'Burtnieku novads', '019', '1');
INSERT INTO `oc_zone` VALUES ('4067', '117', 'Carnikavas novads', '020', '1');
INSERT INTO `oc_zone` VALUES ('4069', '117', 'Cesvaines novads', '021', '1');
INSERT INTO `oc_zone` VALUES ('4071', '117', 'Cēsu novads', '022', '1');
INSERT INTO `oc_zone` VALUES ('4072', '117', 'Ciblas novads', '023', '1');
INSERT INTO `oc_zone` VALUES ('4074', '117', 'Dagdas novads', '024', '1');
INSERT INTO `oc_zone` VALUES ('4075', '117', 'Daugavpils', 'DGV', '1');
INSERT INTO `oc_zone` VALUES ('4076', '117', 'Daugavpils novads', '025', '1');
INSERT INTO `oc_zone` VALUES ('4078', '117', 'Dobeles novads', '026', '1');
INSERT INTO `oc_zone` VALUES ('4079', '117', 'Dundagas novads', '027', '1');
INSERT INTO `oc_zone` VALUES ('4081', '117', 'Durbes novads', '028', '1');
INSERT INTO `oc_zone` VALUES ('4082', '117', 'Engures novads', '029', '1');
INSERT INTO `oc_zone` VALUES ('4083', '117', 'Ērgļu novads', '030', '1');
INSERT INTO `oc_zone` VALUES ('4084', '117', 'Garkalnes novads', '031', '1');
INSERT INTO `oc_zone` VALUES ('4086', '117', 'Grobiņas novads', '032', '1');
INSERT INTO `oc_zone` VALUES ('4088', '117', 'Gulbenes novads', '033', '1');
INSERT INTO `oc_zone` VALUES ('4089', '117', 'Iecavas novads', '034', '1');
INSERT INTO `oc_zone` VALUES ('4091', '117', 'Ikšķiles novads', '035', '1');
INSERT INTO `oc_zone` VALUES ('4093', '117', 'Ilūkstes novads', '036', '1');
INSERT INTO `oc_zone` VALUES ('4094', '117', 'Inčukalna novads', '037', '1');
INSERT INTO `oc_zone` VALUES ('4096', '117', 'Jaunjelgavas novads', '038', '1');
INSERT INTO `oc_zone` VALUES ('4097', '117', 'Jaunpiebalgas novads', '039', '1');
INSERT INTO `oc_zone` VALUES ('4098', '117', 'Jaunpils novads', '040', '1');
INSERT INTO `oc_zone` VALUES ('4099', '117', 'Jelgava', 'JEL', '1');
INSERT INTO `oc_zone` VALUES ('4100', '117', 'Jelgavas novads', '041', '1');
INSERT INTO `oc_zone` VALUES ('4101', '117', 'Jēkabpils', 'JKB', '1');
INSERT INTO `oc_zone` VALUES ('4102', '117', 'Jēkabpils novads', '042', '1');
INSERT INTO `oc_zone` VALUES ('4103', '117', 'Jūrmala', 'JUR', '1');
INSERT INTO `oc_zone` VALUES ('4106', '117', 'Kandavas novads', '043', '1');
INSERT INTO `oc_zone` VALUES ('4108', '117', 'Kārsavas novads', '044', '1');
INSERT INTO `oc_zone` VALUES ('4110', '117', 'Kokneses novads', '046', '1');
INSERT INTO `oc_zone` VALUES ('4112', '117', 'Krāslavas novads', '047', '1');
INSERT INTO `oc_zone` VALUES ('4113', '117', 'Krimuldas novads', '048', '1');
INSERT INTO `oc_zone` VALUES ('4114', '117', 'Krustpils novads', '049', '1');
INSERT INTO `oc_zone` VALUES ('4116', '117', 'Kuldīgas novads', '050', '1');
INSERT INTO `oc_zone` VALUES ('4117', '117', 'Ķeguma novads', '051', '1');
INSERT INTO `oc_zone` VALUES ('4119', '117', 'Ķekavas novads', '052', '1');
INSERT INTO `oc_zone` VALUES ('4121', '117', 'Lielvārdes novads', '053', '1');
INSERT INTO `oc_zone` VALUES ('4122', '117', 'Liepāja', 'LPX', '1');
INSERT INTO `oc_zone` VALUES ('4124', '117', 'Limbažu novads', '054', '1');
INSERT INTO `oc_zone` VALUES ('4126', '117', 'Līgatnes novads', '055', '1');
INSERT INTO `oc_zone` VALUES ('4128', '117', 'Līvānu novads', '056', '1');
INSERT INTO `oc_zone` VALUES ('4130', '117', 'Lubānas novads', '057', '1');
INSERT INTO `oc_zone` VALUES ('4132', '117', 'Ludzas novads', '058', '1');
INSERT INTO `oc_zone` VALUES ('4134', '117', 'Madonas novads', '059', '1');
INSERT INTO `oc_zone` VALUES ('4136', '117', 'Mazsalacas novads', '060', '1');
INSERT INTO `oc_zone` VALUES ('4137', '117', 'Mālpils novads', '061', '1');
INSERT INTO `oc_zone` VALUES ('4138', '117', 'Mārupes novads', '062', '1');
INSERT INTO `oc_zone` VALUES ('4139', '117', 'Mērsraga novads', '063', '1');
INSERT INTO `oc_zone` VALUES ('4140', '117', 'Naukšēnu novads', '064', '1');
INSERT INTO `oc_zone` VALUES ('4141', '117', 'Neretas novads', '065', '1');
INSERT INTO `oc_zone` VALUES ('4142', '117', 'Nīcas novads', '066', '1');
INSERT INTO `oc_zone` VALUES ('4144', '117', 'Ogres novads', '067', '1');
INSERT INTO `oc_zone` VALUES ('4146', '117', 'Olaines novads', '068', '1');
INSERT INTO `oc_zone` VALUES ('4147', '117', 'Ozolnieku novads', '069', '1');
INSERT INTO `oc_zone` VALUES ('4148', '117', 'Pārgaujas novads', '070', '1');
INSERT INTO `oc_zone` VALUES ('4150', '117', 'Pāvilostas novads', '071', '1');
INSERT INTO `oc_zone` VALUES ('4153', '117', 'Pļaviņu novads', '072', '1');
INSERT INTO `oc_zone` VALUES ('4155', '117', 'Preiļu novads', '073', '1');
INSERT INTO `oc_zone` VALUES ('4157', '117', 'Priekules novads', '074', '1');
INSERT INTO `oc_zone` VALUES ('4158', '117', 'Priekuļu novads', '075', '1');
INSERT INTO `oc_zone` VALUES ('4159', '117', 'Raunas novads', '076', '1');
INSERT INTO `oc_zone` VALUES ('4160', '117', 'Rēzekne', 'REZ', '1');
INSERT INTO `oc_zone` VALUES ('4161', '117', 'Rēzeknes novads', '077', '1');
INSERT INTO `oc_zone` VALUES ('4162', '117', 'Riebiņu novads', '078', '1');
INSERT INTO `oc_zone` VALUES ('4163', '117', 'Rīga', 'RIX', '1');
INSERT INTO `oc_zone` VALUES ('4164', '117', 'Rojas novads', '079', '1');
INSERT INTO `oc_zone` VALUES ('4165', '117', 'Ropažu novads', '080', '1');
INSERT INTO `oc_zone` VALUES ('4166', '117', 'Rucavas novads', '081', '1');
INSERT INTO `oc_zone` VALUES ('4167', '117', 'Rugāju novads', '082', '1');
INSERT INTO `oc_zone` VALUES ('4168', '117', 'Rundāles novads', '083', '1');
INSERT INTO `oc_zone` VALUES ('4170', '117', 'Rūjienas novads', '084', '1');
INSERT INTO `oc_zone` VALUES ('4173', '117', 'Salacgrīvas novads', '086', '1');
INSERT INTO `oc_zone` VALUES ('4174', '117', 'Salas novads', '085', '1');
INSERT INTO `oc_zone` VALUES ('4175', '117', 'Salaspils novads', '087', '1');
INSERT INTO `oc_zone` VALUES ('4177', '117', 'Saldus novads', '088', '1');
INSERT INTO `oc_zone` VALUES ('4178', '117', 'Saldus, Saldus novads', '0840201', '1');
INSERT INTO `oc_zone` VALUES ('4180', '117', 'Saulkrastu novads', '089', '1');
INSERT INTO `oc_zone` VALUES ('4182', '117', 'Sējas novads', '090', '1');
INSERT INTO `oc_zone` VALUES ('4184', '117', 'Siguldas novads', '091', '1');
INSERT INTO `oc_zone` VALUES ('4185', '117', 'Skrīveru novads', '092', '1');
INSERT INTO `oc_zone` VALUES ('4187', '117', 'Skrundas novads', '093', '1');
INSERT INTO `oc_zone` VALUES ('4189', '117', 'Smiltenes novads', '094', '1');
INSERT INTO `oc_zone` VALUES ('4192', '117', 'Stopiņu novads', '095', '1');
INSERT INTO `oc_zone` VALUES ('4194', '117', 'Strenču novads', '096', '1');
INSERT INTO `oc_zone` VALUES ('4197', '117', 'Talsu novads', '097', '1');
INSERT INTO `oc_zone` VALUES ('4198', '117', 'Tērvetes novads', '098', '1');
INSERT INTO `oc_zone` VALUES ('4199', '117', 'Tukuma novads', '099', '1');
INSERT INTO `oc_zone` VALUES ('4201', '117', 'Vaiņodes novads', '100', '1');
INSERT INTO `oc_zone` VALUES ('4204', '117', 'Valkas novads', '101', '1');
INSERT INTO `oc_zone` VALUES ('4205', '117', 'Valmiera', 'VMR', '1');
INSERT INTO `oc_zone` VALUES ('4208', '117', 'Varakļānu novads', '102', '1');
INSERT INTO `oc_zone` VALUES ('4209', '117', 'Vārkavas novads', '103', '1');
INSERT INTO `oc_zone` VALUES ('4210', '117', 'Vecpiebalgas novads', '104', '1');
INSERT INTO `oc_zone` VALUES ('4211', '117', 'Vecumnieku novads', '105', '1');
INSERT INTO `oc_zone` VALUES ('4212', '117', 'Ventspils', 'VEN', '1');
INSERT INTO `oc_zone` VALUES ('4213', '117', 'Ventspils novads', '106', '1');
INSERT INTO `oc_zone` VALUES ('4215', '117', 'Viesītes novads', '107', '1');
INSERT INTO `oc_zone` VALUES ('4217', '117', 'Viļakas novads', '108', '1');
INSERT INTO `oc_zone` VALUES ('4219', '117', 'Viļānu novads', '109', '1');
INSERT INTO `oc_zone` VALUES ('4221', '117', 'Zilupes novads', '110', '1');
INSERT INTO `oc_zone` VALUES ('4222', '43', 'Arica y Parinacota', 'AP', '1');
INSERT INTO `oc_zone` VALUES ('4223', '43', 'Los Rios', 'LR', '1');
INSERT INTO `oc_zone` VALUES ('4224', '220', 'Kharkivs\'ka Oblast\'', '63', '1');
INSERT INTO `oc_zone` VALUES ('4225', '118', 'Beirut', 'LB-BR', '1');
INSERT INTO `oc_zone` VALUES ('4226', '118', 'Bekaa', 'LB-BE', '1');
INSERT INTO `oc_zone` VALUES ('4227', '118', 'Mount Lebanon', 'LB-ML', '1');
INSERT INTO `oc_zone` VALUES ('4228', '118', 'Nabatieh', 'LB-NB', '1');
INSERT INTO `oc_zone` VALUES ('4229', '118', 'North', 'LB-NR', '1');
INSERT INTO `oc_zone` VALUES ('4230', '118', 'South', 'LB-ST', '1');
INSERT INTO `oc_zone` VALUES ('4231', '99', 'Telangana', 'TS', '1');
INSERT INTO `oc_zone` VALUES ('4232', '44', 'Qinghai', 'QH', '1');
INSERT INTO `oc_zone` VALUES ('4233', '100', 'Papua Barat', 'PB', '1');
INSERT INTO `oc_zone` VALUES ('4234', '100', 'Sulawesi Barat', 'SR', '1');
INSERT INTO `oc_zone` VALUES ('4235', '100', 'Kepulauan Riau', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('4236', '105', 'Barletta-Andria-Trani', 'BT', '1');
INSERT INTO `oc_zone` VALUES ('4237', '105', 'Fermo', 'FM', '1');
INSERT INTO `oc_zone` VALUES ('4238', '105', 'Monza Brianza', 'MB', '1');
INSERT INTO `oc_zone` VALUES ('4239', '113', 'Seoul-teukbyeolsi', '11', '1');
INSERT INTO `oc_zone` VALUES ('4240', '113', 'Busan-gwangyeoksi', '26', '1');
INSERT INTO `oc_zone` VALUES ('4241', '113', 'Daegu-gwangyeoksi', '27', '1');
INSERT INTO `oc_zone` VALUES ('4242', '113', 'Daejeon-gwangyeoksi', '30', '1');
INSERT INTO `oc_zone` VALUES ('4243', '113', 'Gwangju-gwangyeoksi', '29', '1');
INSERT INTO `oc_zone` VALUES ('4244', '113', 'Incheon-gwangyeoksi', '28', '1');
INSERT INTO `oc_zone` VALUES ('4245', '113', 'Ulsan-gwangyeoksi', '31', '1');
INSERT INTO `oc_zone` VALUES ('4246', '113', 'Chungcheongbuk-do', '43', '1');
INSERT INTO `oc_zone` VALUES ('4247', '113', 'Chungcheongnam-do', '44', '1');
INSERT INTO `oc_zone` VALUES ('4248', '113', 'Gangwon-do', '42', '1');
INSERT INTO `oc_zone` VALUES ('4249', '113', 'Gyeonggi-do', '41', '1');
INSERT INTO `oc_zone` VALUES ('4250', '113', 'Gyeongsangbuk-do', '47', '1');
INSERT INTO `oc_zone` VALUES ('4251', '113', 'Gyeongsangnam-do', '48', '1');
INSERT INTO `oc_zone` VALUES ('4252', '113', 'Jeollabuk-do', '45', '1');
INSERT INTO `oc_zone` VALUES ('4253', '113', 'Jeollanam-do', '46', '1');
INSERT INTO `oc_zone` VALUES ('4254', '113', 'Jeju-teukbyeoljachido', '49', '1');
INSERT INTO `oc_zone` VALUES ('4255', '113', 'Sejong-teukbyeoljachisi', '50', '1');
INSERT INTO `oc_zone` VALUES ('4256', '209', 'Phra Nakhon Si Ayutthaya', '14', '1');
INSERT INTO `oc_zone` VALUES ('4257', '176', 'Adygea, Republic of', 'RU-AD', '1');
INSERT INTO `oc_zone` VALUES ('4258', '176', 'Bashkortostan, Republic of', 'RU-BA', '1');
INSERT INTO `oc_zone` VALUES ('4259', '176', 'Buryatia, Republic of', 'RU-BU', '1');
INSERT INTO `oc_zone` VALUES ('4260', '176', 'Altai Republic', 'RU-AL', '1');
INSERT INTO `oc_zone` VALUES ('4261', '176', 'Dagestan, Republic of', 'RU-DA', '1');
INSERT INTO `oc_zone` VALUES ('4262', '176', 'Ingushetia, Republic of', 'RU-IN', '1');
INSERT INTO `oc_zone` VALUES ('4263', '176', 'Kabardino-Balkar Republic', 'RU-KB', '1');
INSERT INTO `oc_zone` VALUES ('4264', '176', 'Kalmykia, Republic of', 'RU-KL', '1');
INSERT INTO `oc_zone` VALUES ('4265', '176', 'Karachay-Cherkess Republic', 'RU-KC', '1');
INSERT INTO `oc_zone` VALUES ('4266', '176', 'Karelia, Republic of', 'RU-KR', '1');
INSERT INTO `oc_zone` VALUES ('4267', '176', 'Komi Republic', 'RU-KO', '1');
INSERT INTO `oc_zone` VALUES ('4268', '176', 'Mari El Republic', 'RU-ME', '1');
INSERT INTO `oc_zone` VALUES ('4269', '176', 'Mordovia, Republic of', 'RU-MO', '1');
INSERT INTO `oc_zone` VALUES ('4270', '176', 'Sakha (Yakutia) Republic', 'RU-SA', '1');
INSERT INTO `oc_zone` VALUES ('4271', '176', 'North Ossetia-Alania, Republic of', 'RU-SE', '1');
INSERT INTO `oc_zone` VALUES ('4272', '176', 'Tatarstan, Republic of', 'RU-TA', '1');
INSERT INTO `oc_zone` VALUES ('4273', '176', 'Tuva Republic', 'RU-TY', '1');
INSERT INTO `oc_zone` VALUES ('4274', '176', 'Udmurt Republic', 'RU-UD', '1');
INSERT INTO `oc_zone` VALUES ('4275', '176', 'Khakassia, Republic of', 'RU-KK', '1');
INSERT INTO `oc_zone` VALUES ('4276', '176', 'Chechen Republic', 'RU-CE', '1');
INSERT INTO `oc_zone` VALUES ('4277', '176', 'Chuvash Republic', 'RU-CU', '1');
INSERT INTO `oc_zone` VALUES ('4278', '176', 'Altai Krai', 'RU-ALT', '1');
INSERT INTO `oc_zone` VALUES ('4279', '176', 'Krasnodar Krai', 'RU-KDA', '1');
INSERT INTO `oc_zone` VALUES ('4280', '176', 'Krasnoyarsk Krai', 'RU-KYA', '1');
INSERT INTO `oc_zone` VALUES ('4281', '176', 'Primorsky Krai', 'RU-PRI', '1');
INSERT INTO `oc_zone` VALUES ('4282', '176', 'Stavropol Krai', 'RU-STA', '1');
INSERT INTO `oc_zone` VALUES ('4283', '176', 'Khabarovsk Krai', 'RU-KHA', '1');
INSERT INTO `oc_zone` VALUES ('4284', '176', 'Amur Oblast', 'RU-AMU', '1');
INSERT INTO `oc_zone` VALUES ('4285', '176', 'Arkhangelsk Oblast', 'RU-ARK', '1');
INSERT INTO `oc_zone` VALUES ('4286', '176', 'Astrakhan Oblast', 'RU-AST', '1');
INSERT INTO `oc_zone` VALUES ('4287', '176', 'Belgorod Oblast', 'RU-BEL', '1');
INSERT INTO `oc_zone` VALUES ('4288', '176', 'Bryansk Oblast', 'RU-BRY', '1');
INSERT INTO `oc_zone` VALUES ('4289', '176', 'Vladimir Oblast', 'RU-VLA', '1');
INSERT INTO `oc_zone` VALUES ('4290', '176', 'Volgograd Oblast', 'RU-VGG', '1');
INSERT INTO `oc_zone` VALUES ('4291', '176', 'Vologda Oblast', 'RU-VLG', '1');
INSERT INTO `oc_zone` VALUES ('4292', '176', 'Voronezh Oblast', 'RU-VOR', '1');
INSERT INTO `oc_zone` VALUES ('4293', '176', 'Ivanovo Oblast', 'RU-IVA', '1');
INSERT INTO `oc_zone` VALUES ('4294', '176', 'Irkutsk Oblast', 'RU-IRK', '1');
INSERT INTO `oc_zone` VALUES ('4295', '176', 'Kaliningrad Oblast', 'RU-KGD', '1');
INSERT INTO `oc_zone` VALUES ('4296', '176', 'Kaluga Oblast', 'RU-KLU', '1');
INSERT INTO `oc_zone` VALUES ('4297', '176', 'Kamchatka Krai', 'RU-KAM', '1');
INSERT INTO `oc_zone` VALUES ('4298', '176', 'Kemerovo Oblast', 'RU-KEM', '1');
INSERT INTO `oc_zone` VALUES ('4299', '176', 'Kirov Oblast', 'RU-KIR', '1');
INSERT INTO `oc_zone` VALUES ('4300', '176', 'Kostroma Oblast', 'RU-KOS', '1');
INSERT INTO `oc_zone` VALUES ('4301', '176', 'Kurgan Oblast', 'RU-KGN', '1');
INSERT INTO `oc_zone` VALUES ('4302', '176', 'Kursk Oblast', 'RU-KRS', '1');
INSERT INTO `oc_zone` VALUES ('4303', '176', 'Leningrad Oblast', 'RU-LEN', '1');
INSERT INTO `oc_zone` VALUES ('4304', '176', 'Lipetsk Oblast', 'RU-LIP', '1');
INSERT INTO `oc_zone` VALUES ('4305', '176', 'Magadan Oblast', 'RU-MAG', '1');
INSERT INTO `oc_zone` VALUES ('4306', '176', 'Moscow Oblast', 'RU-MOS', '1');
INSERT INTO `oc_zone` VALUES ('4307', '176', 'Murmansk Oblast', 'RU-MUR', '1');
INSERT INTO `oc_zone` VALUES ('4308', '176', 'Nizhny Novgorod Oblast', 'RU-NIZ', '1');
INSERT INTO `oc_zone` VALUES ('4309', '176', 'Novgorod Oblast', 'RU-NGR', '1');
INSERT INTO `oc_zone` VALUES ('4310', '176', 'Novosibirsk Oblast', 'RU-NVS', '1');
INSERT INTO `oc_zone` VALUES ('4311', '176', 'Omsk Oblast', 'RU-OMS', '1');
INSERT INTO `oc_zone` VALUES ('4312', '176', 'Orenburg Oblast', 'RU-ORE', '1');
INSERT INTO `oc_zone` VALUES ('4313', '176', 'Oryol Oblast', 'RU-ORL', '1');
INSERT INTO `oc_zone` VALUES ('4314', '176', 'Penza Oblast', 'RU-PNZ', '1');
INSERT INTO `oc_zone` VALUES ('4315', '176', 'Perm Krai', 'RU-PER', '1');
INSERT INTO `oc_zone` VALUES ('4316', '176', 'Pskov Oblast', 'RU-PSK', '1');
INSERT INTO `oc_zone` VALUES ('4317', '176', 'Rostov Oblast', 'RU-ROS', '1');
INSERT INTO `oc_zone` VALUES ('4318', '176', 'Ryazan Oblast', 'RU-RYA', '1');
INSERT INTO `oc_zone` VALUES ('4319', '176', 'Samara Oblast', 'RU-SAM', '1');
INSERT INTO `oc_zone` VALUES ('4320', '176', 'Saratov Oblast', 'RU-SAR', '1');
INSERT INTO `oc_zone` VALUES ('4321', '176', 'Sakhalin Oblast', 'RU-SAK', '1');
INSERT INTO `oc_zone` VALUES ('4322', '176', 'Sverdlovsk Oblast', 'RU-SVE', '1');
INSERT INTO `oc_zone` VALUES ('4323', '176', 'Smolensk Oblast', 'RU-SMO', '1');
INSERT INTO `oc_zone` VALUES ('4324', '176', 'Tambov Oblast', 'RU-TAM', '1');
INSERT INTO `oc_zone` VALUES ('4325', '176', 'Tver Oblast', 'RU-TVE', '1');
INSERT INTO `oc_zone` VALUES ('4326', '176', 'Tomsk Oblast', 'RU-TOM', '1');
INSERT INTO `oc_zone` VALUES ('4327', '176', 'Tula Oblast', 'RU-TUL', '1');
INSERT INTO `oc_zone` VALUES ('4328', '176', 'Tyumen Oblast', 'RU-TYU', '1');
INSERT INTO `oc_zone` VALUES ('4329', '176', 'Ulyanovsk Oblast', 'RU-ULY', '1');
INSERT INTO `oc_zone` VALUES ('4330', '176', 'Chelyabinsk Oblast', 'RU-CHE', '1');
INSERT INTO `oc_zone` VALUES ('4331', '176', 'Zabaykalsky Krai', 'RU-ZAB', '1');
INSERT INTO `oc_zone` VALUES ('4332', '176', 'Yaroslavl Oblast', 'RU-YAR', '1');
INSERT INTO `oc_zone` VALUES ('4333', '176', 'Moscow', 'RU-MOW', '1');
INSERT INTO `oc_zone` VALUES ('4334', '176', 'Saint Petersburg', 'RU-SPE', '1');
INSERT INTO `oc_zone` VALUES ('4335', '176', 'Jewish Autonomous Oblast', 'RU-YEV', '1');
INSERT INTO `oc_zone` VALUES ('4336', '176', 'Nenets Autonomous Okrug', 'RU-NEN', '1');
INSERT INTO `oc_zone` VALUES ('4337', '176', 'Khanty–Mansi Autonomous Okrug – Yugra', 'RU-KHM', '1');
INSERT INTO `oc_zone` VALUES ('4338', '176', 'Chukotka Autonomous Okrug', 'RU-CHU', '1');
INSERT INTO `oc_zone` VALUES ('4339', '176', 'Yamalo-Nenets Autonomous Okrug', 'RU-YAN', '1');
INSERT INTO `oc_zone` VALUES ('4340', '117', 'Aglonas novads', '001', '1');
INSERT INTO `oc_zone` VALUES ('4341', '99', 'Chhattisgarh', 'CT', '1');
INSERT INTO `oc_zone` VALUES ('4342', '99', 'Ladakh', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('4343', '99', 'Uttarakhand', 'UT', '1');

-- ----------------------------
-- Table structure for oc_zone_to_geo_zone
-- ----------------------------
DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oc_zone_to_geo_zone
-- ----------------------------
INSERT INTO `oc_zone_to_geo_zone` VALUES ('1', '222', '0', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('2', '222', '3513', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('3', '222', '3514', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('4', '222', '3515', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('5', '222', '3516', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('6', '222', '3517', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('7', '222', '3518', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('8', '222', '3519', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('9', '222', '3520', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('10', '222', '3521', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('11', '222', '3522', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('12', '222', '3523', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('13', '222', '3524', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('14', '222', '3525', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('15', '222', '3526', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('16', '222', '3527', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('17', '222', '3528', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('18', '222', '3529', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('19', '222', '3530', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('20', '222', '3531', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('21', '222', '3532', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('22', '222', '3533', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('23', '222', '3534', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('24', '222', '3535', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('25', '222', '3536', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('26', '222', '3537', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('27', '222', '3538', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('28', '222', '3539', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('29', '222', '3540', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('30', '222', '3541', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('31', '222', '3542', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('32', '222', '3543', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('33', '222', '3544', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('34', '222', '3545', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('35', '222', '3546', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('36', '222', '3547', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('37', '222', '3548', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('38', '222', '3549', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('39', '222', '3550', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('40', '222', '3551', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('41', '222', '3552', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('42', '222', '3553', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('43', '222', '3554', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('44', '222', '3555', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('45', '222', '3556', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('46', '222', '3557', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('47', '222', '3558', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('48', '222', '3559', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('49', '222', '3560', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('50', '222', '3561', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('51', '222', '3562', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('52', '222', '3563', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('53', '222', '3564', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('54', '222', '3565', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('55', '222', '3566', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('56', '222', '3567', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('57', '222', '3568', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('58', '222', '3569', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('59', '222', '3570', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('60', '222', '3571', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('61', '222', '3572', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('62', '222', '3573', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('63', '222', '3574', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('64', '222', '3575', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('65', '222', '3576', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('66', '222', '3577', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('67', '222', '3578', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('68', '222', '3579', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('69', '222', '3580', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('70', '222', '3581', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('71', '222', '3582', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('72', '222', '3583', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('73', '222', '3584', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('74', '222', '3585', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('75', '222', '3586', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('76', '222', '3587', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('77', '222', '3588', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('78', '222', '3589', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('79', '222', '3590', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('80', '222', '3591', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('81', '222', '3592', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('82', '222', '3593', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('83', '222', '3594', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('84', '222', '3595', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('85', '222', '3596', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('86', '222', '3597', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('87', '222', '3598', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('88', '222', '3599', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('89', '222', '3600', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('90', '222', '3601', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('91', '222', '3602', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('92', '222', '3603', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('93', '222', '3604', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('94', '222', '3605', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('95', '222', '3606', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('96', '222', '3607', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('97', '222', '3608', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('98', '222', '3609', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('99', '222', '3610', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('100', '222', '3611', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('101', '222', '3612', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('102', '222', '3949', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('103', '222', '3950', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('104', '222', '3951', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('105', '222', '3952', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('106', '222', '3953', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('107', '222', '3954', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('108', '222', '3955', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
SET FOREIGN_KEY_CHECKS=1;
