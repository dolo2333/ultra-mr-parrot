/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50644
Source Host           : localhost:3306
Source Database       : mypetstore

Target Server Type    : MYSQL
Target Server Version : 50644
File Encoding         : 65001

Date: 2020-04-11 17:39:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `userid` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `firstname` varchar(80) NOT NULL,
  `lastname` varchar(80) NOT NULL,
  `status` varchar(2) DEFAULT NULL,
  `addr1` varchar(80) NOT NULL,
  `addr2` varchar(40) DEFAULT NULL,
  `city` varchar(80) NOT NULL,
  `state` varchar(80) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `phone` varchar(80) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', '', '1', '1', null, '', '', '', '', '', '', '');
INSERT INTO `account` VALUES ('2', '22', '2', '2', null, '2', '2', '2', '2', '2', '2', '2');
INSERT INTO `account` VALUES ('a', 'a', 'a', 'a', null, 'a', 'a', 'aa', 'a', 'a', 'a', 'a');
INSERT INTO `account` VALUES ('ACID', 'acid@yourdomain.com', 'ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '555-555-5555');
INSERT INTO `account` VALUES ('b', 'b', 'b', 'b', null, 'b', 'b', 'b', 'b', 'b', 'b', 'b');
INSERT INTO `account` VALUES ('d', 'd', 'd', 'd', null, 'd', 'd', 'd', 'd', 'd', 'd', 'd');
INSERT INTO `account` VALUES ('j2ee', 'yourname@yourdomain.com', 'ABC', 'XYX', null, '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '555-555-5555');
INSERT INTO `account` VALUES ('je22', '', '', '', null, '', '', '', '', '', '', '');
INSERT INTO `account` VALUES ('q', 'q', 'q', 'q', null, 'q', 'q', 'q', 'q', 'q', 'q', 'q');
INSERT INTO `account` VALUES ('re', 're', 're', 're', null, 're', 're', 're', 're', 're', 're', 're');

-- ----------------------------
-- Table structure for `bannerdata`
-- ----------------------------
DROP TABLE IF EXISTS `bannerdata`;
CREATE TABLE `bannerdata` (
  `favcategory` varchar(80) NOT NULL,
  `bannername` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`favcategory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bannerdata
-- ----------------------------
INSERT INTO `bannerdata` VALUES ('BIRDS', '<image src=\"../images/banner_birds.gif\">');
INSERT INTO `bannerdata` VALUES ('CATS', '<image src=\"../images/banner_cats.gif\">');
INSERT INTO `bannerdata` VALUES ('DOGS', '<image src=\"../images/banner_dogs.gif\">');
INSERT INTO `bannerdata` VALUES ('FISH', '<image src=\"../images/banner_fish.gif\">');
INSERT INTO `bannerdata` VALUES ('REPTILES', '<image src=\"../images/banner_reptiles.gif\">');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `catid` varchar(10) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `descn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('BIRDS', 'Birds', '<image src=\"../images/birds_icon.gif\"><font size=\"5\" color=\"blue\"> Birds</font>');
INSERT INTO `category` VALUES ('CATS', 'Cats', '<image src=\"../images/cats_icon.gif\"><font size=\"5\" color=\"blue\"> Cats</font>');
INSERT INTO `category` VALUES ('DOGS', 'Dogs', '<image src=\"../images/dogs_icon.gif\"><font size=\"5\" color=\"blue\"> Dogs</font>');
INSERT INTO `category` VALUES ('FISH', 'Fish', '<image src=\"../images/fish_icon.gif\"><font size=\"5\" color=\"blue\"> Fish</font>');
INSERT INTO `category` VALUES ('REPTILES', 'Reptiles', '<image src=\"../images/reptiles_icon.gif\"><font size=\"5\" color=\"blue\"> Reptiles</font>');

-- ----------------------------
-- Table structure for `inventory`
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `itemid` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES ('EST-1', '10000');
INSERT INTO `inventory` VALUES ('EST-10', '10000');
INSERT INTO `inventory` VALUES ('EST-11', '10000');
INSERT INTO `inventory` VALUES ('EST-12', '10000');
INSERT INTO `inventory` VALUES ('EST-13', '10000');
INSERT INTO `inventory` VALUES ('EST-14', '10000');
INSERT INTO `inventory` VALUES ('EST-15', '10000');
INSERT INTO `inventory` VALUES ('EST-16', '10000');
INSERT INTO `inventory` VALUES ('EST-17', '10000');
INSERT INTO `inventory` VALUES ('EST-18', '9999');
INSERT INTO `inventory` VALUES ('EST-19', '10000');
INSERT INTO `inventory` VALUES ('EST-2', '10000');
INSERT INTO `inventory` VALUES ('EST-20', '10000');
INSERT INTO `inventory` VALUES ('EST-21', '10000');
INSERT INTO `inventory` VALUES ('EST-22', '10000');
INSERT INTO `inventory` VALUES ('EST-23', '10000');
INSERT INTO `inventory` VALUES ('EST-24', '10000');
INSERT INTO `inventory` VALUES ('EST-25', '10000');
INSERT INTO `inventory` VALUES ('EST-26', '10000');
INSERT INTO `inventory` VALUES ('EST-27', '10000');
INSERT INTO `inventory` VALUES ('EST-28', '10000');
INSERT INTO `inventory` VALUES ('EST-3', '10000');
INSERT INTO `inventory` VALUES ('EST-4', '10000');
INSERT INTO `inventory` VALUES ('EST-5', '10000');
INSERT INTO `inventory` VALUES ('EST-6', '10000');
INSERT INTO `inventory` VALUES ('EST-7', '10000');
INSERT INTO `inventory` VALUES ('EST-8', '10000');
INSERT INTO `inventory` VALUES ('EST-9', '10000');

-- ----------------------------
-- Table structure for `item`
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `itemid` varchar(10) NOT NULL,
  `productid` varchar(10) NOT NULL,
  `listprice` decimal(10,2) DEFAULT NULL,
  `unitcost` decimal(10,2) DEFAULT NULL,
  `supplier` int(11) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `attr1` varchar(80) DEFAULT NULL,
  `attr2` varchar(80) DEFAULT NULL,
  `attr3` varchar(80) DEFAULT NULL,
  `attr4` varchar(80) DEFAULT NULL,
  `attr5` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `fk_item_2` (`supplier`),
  KEY `itemProd` (`productid`),
  CONSTRAINT `fk_item_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`),
  CONSTRAINT `fk_item_2` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`suppid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('EST-1', 'FI-SW-01', '16.50', '10.00', '1', 'P', 'Large', null, null, null, null);
INSERT INTO `item` VALUES ('EST-10', 'K9-DL-01', '18.50', '12.00', '1', 'P', 'Spotted Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-11', 'RP-SN-01', '18.50', '12.00', '1', 'P', 'Venomless', null, null, null, null);
INSERT INTO `item` VALUES ('EST-12', 'RP-SN-01', '18.50', '12.00', '1', 'P', 'Rattleless', null, null, null, null);
INSERT INTO `item` VALUES ('EST-13', 'RP-LI-02', '18.50', '12.00', '1', 'P', 'Green Adult', null, null, null, null);
INSERT INTO `item` VALUES ('EST-14', 'FL-DSH-01', '58.50', '12.00', '1', 'P', 'Tailless', null, null, null, null);
INSERT INTO `item` VALUES ('EST-15', 'FL-DSH-01', '23.50', '12.00', '1', 'P', 'With tail', null, null, null, null);
INSERT INTO `item` VALUES ('EST-16', 'FL-DLH-02', '93.50', '12.00', '1', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-17', 'FL-DLH-02', '93.50', '12.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-18', 'AV-CB-01', '193.50', '92.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-19', 'AV-SB-02', '15.50', '2.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-2', 'FI-SW-01', '16.50', '10.00', '1', 'P', 'Small', null, null, null, null);
INSERT INTO `item` VALUES ('EST-20', 'FI-FW-02', '5.50', '2.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-21', 'FI-FW-02', '5.29', '1.00', '1', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-22', 'K9-RT-02', '135.50', '100.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-23', 'K9-RT-02', '145.49', '100.00', '1', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-24', 'K9-RT-02', '255.50', '92.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-25', 'K9-RT-02', '325.29', '90.00', '1', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-26', 'K9-CW-01', '125.50', '92.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-27', 'K9-CW-01', '155.29', '90.00', '1', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-28', 'K9-RT-01', '155.29', '90.00', '1', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-3', 'FI-SW-02', '18.50', '12.00', '1', 'P', 'Toothless', null, null, null, null);
INSERT INTO `item` VALUES ('EST-4', 'FI-FW-01', '18.50', '12.00', '1', 'P', 'Spotted', null, null, null, null);
INSERT INTO `item` VALUES ('EST-5', 'FI-FW-01', '18.50', '12.00', '1', 'P', 'Spotless', null, null, null, null);
INSERT INTO `item` VALUES ('EST-6', 'K9-BD-01', '18.50', '12.00', '1', 'P', 'Male Adult', null, null, null, null);
INSERT INTO `item` VALUES ('EST-7', 'K9-BD-01', '18.50', '12.00', '1', 'P', 'Female Puppy', null, null, null, null);
INSERT INTO `item` VALUES ('EST-8', 'K9-PO-02', '18.50', '12.00', '1', 'P', 'Male Puppy', null, null, null, null);
INSERT INTO `item` VALUES ('EST-9', 'K9-DL-01', '18.50', '12.00', '1', 'P', 'Spotless Male Puppy', null, null, null, null);

-- ----------------------------
-- Table structure for `lineitem`
-- ----------------------------
DROP TABLE IF EXISTS `lineitem`;
CREATE TABLE `lineitem` (
  `orderid` int(11) NOT NULL,
  `linenum` int(11) NOT NULL,
  `itemid` varchar(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitprice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`orderid`,`linenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lineitem
-- ----------------------------

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `logUserId` varchar(255) DEFAULT '',
  `loginfo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('j2ee', '2019-10-21 00:16:36     http://localhost:8080/mypetstore/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2019-10-21 00:18:53     http://localhost:8080/mypetstore/viewCategory?categoryId=FISH 跳转到商品种类 FISH');
INSERT INTO `log` VALUES ('j2ee', '2019-10-21 00:18:54     http://localhost:8080/mypetstore/viewProduct?productId=FI-FW-02 查看产品 Goldfish');
INSERT INTO `log` VALUES ('j2ee', '2019-10-21 00:18:56     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-20 (EST-20-null)数量+1 ');
INSERT INTO `log` VALUES ('j2ee', '2019-10-21 00:18:59     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-21 添加物品 (EST-21-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2019-10-21 00:19:02     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2019-10-21 00:19:06     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-20 (EST-20-null)数量+1 ');
INSERT INTO `log` VALUES ('j2ee', '2019-10-21 00:19:16     http://localhost:8080/mypetstore/viewCategory?categoryId=FISH 跳转到商品种类 FISH');
INSERT INTO `log` VALUES ('j2ee', '2019-10-24 10:09:09     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2019-10-24 10:13:39     http://localhost:8080/mypetstore/viewCategory?categoryId=FISH 跳转到商品种类 FISH');
INSERT INTO `log` VALUES ('j2ee', '2019-10-24 10:13:42     http://localhost:8080/mypetstore/viewProduct?productId=FI-FW-01 查看产品 Koi');
INSERT INTO `log` VALUES ('j2ee', '2019-10-24 10:13:44     http://localhost:8080/mypetstore/viewItem?itemId=EST-4 查看具体商品 (EST-4-null)');
INSERT INTO `log` VALUES ('j2ee', '2019-10-24 10:13:52     http://localhost:8080/mypetstore/viewProduct?productId=FI-FW-01 查看产品 Koi');
INSERT INTO `log` VALUES ('j2ee', '2019-10-24 10:48:56     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2019-10-24 10:48:58     http://localhost:8080/mypetstore/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2019-10-24 10:48:59     http://localhost:8080/mypetstore/viewProduct?productId=AV-SB-02 查看产品 Finch');
INSERT INTO `log` VALUES ('j2ee', '2019-10-24 11:43:25     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2019-10-24 11:43:27     http://localhost:8080/mypetstore/viewCategory?categoryId=FISH 跳转到商品种类 FISH');
INSERT INTO `log` VALUES ('j2ee', '2019-10-24 11:43:28     http://localhost:8080/mypetstore/viewProduct?productId=FI-FW-01 查看产品 Koi');
INSERT INTO `log` VALUES ('j2ee', '2019-10-24 11:43:44     http://localhost:8080/mypetstore/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@1e260c88');
INSERT INTO `log` VALUES ('j2ee', '2019-10-25 20:18:09     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2019-10-25 20:18:17     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('', '2019-10-26 10:57:51     http://localhost:8080/mypetstore/newAccount?null 注册账号，验证码错误');
INSERT INTO `log` VALUES (null, '2019-10-26 10:57:59     http://localhost:8080/mypetstore/newAccount?null 注册账号，验证码错误');
INSERT INTO `log` VALUES (null, '2019-10-26 10:58:01     http://localhost:8080/mypetstore/newAccount?null 注册账号，验证码错误');
INSERT INTO `log` VALUES (null, '2019-10-26 10:58:03     http://localhost:8080/mypetstore/newAccount?null 注册账号，验证码错误');
INSERT INTO `log` VALUES ('j2ee', '2019-10-26 18:41:45     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('je22', '2019-10-26 18:42:11     http://localhost:8080/mypetstore/newAccount?null 注册新账号');
INSERT INTO `log` VALUES ('je22', '2019-10-26 18:42:54     http://localhost:8080/mypetstore/newAccount?null 注册新账号');
INSERT INTO `log` VALUES ('je22', '2019-10-26 18:43:31     http://localhost:8080/mypetstore/newAccount?null 注册新账号');
INSERT INTO `log` VALUES ('je22', '2019-10-26 18:44:30     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('je22', '2019-10-26 18:44:35     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('s', '2019-10-27 23:53:12     http://localhost:8080/mypetstore/newAccount?null 注册账号，验证码错误');
INSERT INTO `log` VALUES ('s', '2019-10-27 23:53:24     http://localhost:8080/mypetstore/newAccount?null 注册新账号');
INSERT INTO `log` VALUES ('aa', '2019-10-28 00:45:00     http://localhost:8080/mypetstore/newAccount?null 注册账号，验证码错误');
INSERT INTO `log` VALUES ('j2ee', '2019-10-29 00:06:09     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2019-10-29 00:06:13     http://localhost:8080/mypetstore/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@57be5c50');
INSERT INTO `log` VALUES ('j2ee', '2019-10-29 00:06:17     http://localhost:8080/mypetstore/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2019-10-29 00:06:19     http://localhost:8080/mypetstore/viewProduct?productId=K9-BD-01 查看产品 Bulldog');
INSERT INTO `log` VALUES ('j2ee', '2019-10-29 00:06:20     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-6 添加物品 (EST-6-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2019-11-27 23:08:01     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2019-11-27 23:15:59     http://localhost:8080/mypetstore/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2019-11-27 23:16:12     http://localhost:8080/mypetstore/viewProduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('j2ee', '2019-11-27 23:16:15     http://localhost:8080/mypetstore/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2019-11-27 23:37:36     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2019-11-27 23:37:40     http://localhost:8080/mypetstore/signOff?null 退出账号');
INSERT INTO `log` VALUES ('j2ee', '2019-11-27 23:49:16     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2019-11-27 23:49:19     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2019-11-27 23:59:07     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2019-11-27 23:59:09     http://localhost:8080/mypetstore/viewListOrder?username=j2ee 查看订单 []');
INSERT INTO `log` VALUES ('j2ee', '2019-11-27 23:59:12     http://localhost:8080/mypetstore/signOff?null 退出账号');
INSERT INTO `log` VALUES ('j2ee', '2019-11-27 23:59:27     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2019-11-27 23:59:29     http://localhost:8080/mypetstore/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2019-11-27 23:59:30     http://localhost:8080/mypetstore/viewProduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('j2ee', '2019-11-27 23:59:32     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-18 (EST-18-null)数量+1 ');
INSERT INTO `log` VALUES ('j2ee', '2019-11-27 23:59:37     http://localhost:8080/mypetstore/viewItem?itemId=EST-18 查看具体商品 (EST-18-null)');
INSERT INTO `log` VALUES ('j2ee', '2019-11-27 23:59:39     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-18 (EST-18-null)数量+1 ');
INSERT INTO `log` VALUES ('j2ee', '2019-11-27 23:59:42     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2019-11-27 23:59:44     http://localhost:8080/mypetstore/viewListOrder?username=j2ee 查看订单 []');
INSERT INTO `log` VALUES ('j2ee', '2019-11-27 23:59:52     http://localhost:8080/mypetstore/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2019-11-27 23:59:53     http://localhost:8080/mypetstore/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('j2ee', '2019-11-27 23:59:56     http://localhost:8080/mypetstore/viewCategory?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('j2ee', '2019-11-27 23:59:57     http://localhost:8080/mypetstore/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 00:00:42     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 00:00:47     http://localhost:8080/mypetstore/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 00:00:49     http://localhost:8080/mypetstore/viewProduct?productId=AV-SB-02 查看产品 Finch');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 00:00:50     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-19 添加物品 (EST-19-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 00:00:55     http://localhost:8080/mypetstore/newOrderForm?itemId= 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 00:00:58     http://localhost:8080/mypetstore/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 00:01:01     http://localhost:8080/mypetstore/viewOrder?null 查看订单 org.csu.mypetstore.domain.Order@25d3cb23');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 00:01:06     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 00:01:07     http://localhost:8080/mypetstore/viewListOrder?username=j2ee 查看订单 [org.csu.mypetstore.domain.Order@2d4ba0c1]');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 00:08:02     http://localhost:8080/mypetstore/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 00:08:03     http://localhost:8080/mypetstore/viewProduct?productId=K9-CW-01 查看产品 Chihuahua');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 00:08:04     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-26 添加物品 (EST-26-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 00:25:39     http://localhost:8080/mypetstore/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@193b13d3');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 00:25:40     http://localhost:8080/mypetstore/newOrderForm?itemId= 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 00:33:03     http://localhost:8080/mypetstore/signOff?null 退出账号');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 00:39:33     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 00:39:34     http://localhost:8080/mypetstore/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 00:39:35     http://localhost:8080/mypetstore/viewProduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 00:39:36     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-18 添加物品 (EST-18-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 00:43:09     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 01:03:12     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 01:03:15     http://localhost:8080/mypetstore/signOff?null 退出账号');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 10:22:33     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 10:22:36     http://localhost:8080/mypetstore/viewCategory?categoryId=FISH 跳转到商品种类 FISH');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 10:22:37     http://localhost:8080/mypetstore/viewProduct?productId=FI-SW-01 查看产品 Angelfish');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 10:22:39     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-1 添加物品 (EST-1-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 10:22:40     http://localhost:8080/mypetstore/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@6b2bb7f1');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 10:22:41     http://localhost:8080/mypetstore/newOrderForm?itemId= 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 10:22:44     http://localhost:8080/mypetstore/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 10:22:46     http://localhost:8080/mypetstore/viewOrder?null 查看订单 org.csu.mypetstore.domain.Order@1d9c7759');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 10:22:52     http://localhost:8080/mypetstore/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@4de90563');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 10:22:55     http://localhost:8080/mypetstore/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 10:23:03     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 10:23:04     http://localhost:8080/mypetstore/viewListOrder?username=j2ee 查看订单 [org.csu.mypetstore.domain.Order@2aeb5700, org.csu.mypetstore.domain.Order@425bf302]');
INSERT INTO `log` VALUES ('j2ee', '2019-11-28 10:23:06     http://localhost:8080/mypetstore/signOff?null 退出账号');
INSERT INTO `log` VALUES ('j2ee', '2020-04-05 17:17:13     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-04-05 17:17:18     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2020-04-05 17:17:22     http://localhost:8080/mypetstore/viewListOrder?username=j2ee 查看订单 [org.csu.mypetstore.domain.Order@1b7f848f, org.csu.mypetstore.domain.Order@742088b4]');
INSERT INTO `log` VALUES ('j2ee', '2020-04-05 17:17:37     http://localhost:8080/mypetstore/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('j2ee', '2020-04-05 17:17:38     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2020-04-07 14:26:18     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-04-07 14:26:23     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2020-04-07 14:26:26     http://localhost:8080/mypetstore/viewListOrder?username=j2ee 查看订单 [org.csu.mypetstore.domain.Order@2df845cf, org.csu.mypetstore.domain.Order@31250896]');
INSERT INTO `log` VALUES ('j2ee', '2020-04-07 14:26:33     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2020-04-07 14:26:36     http://localhost:8080/mypetstore/signOff?null 退出账号');
INSERT INTO `log` VALUES ('j2ee', '2020-04-07 14:26:53     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-04-07 14:26:54     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2020-04-07 14:26:59     http://localhost:8080/mypetstore/viewListOrder?username=j2ee 查看订单 [org.csu.mypetstore.domain.Order@10f156ef, org.csu.mypetstore.domain.Order@3bd1e1fb]');
INSERT INTO `log` VALUES ('j2ee', '2020-04-07 14:27:04     http://localhost:8080/mypetstore/signOff?null 退出账号');
INSERT INTO `log` VALUES ('j2ee', '2020-04-07 14:27:18     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-04-07 14:27:22     http://localhost:8080/mypetstore/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@1ebc1412');
INSERT INTO `log` VALUES ('j2ee', '2020-04-07 14:27:23     http://localhost:8080/mypetstore/newOrderForm?itemId= 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2020-04-07 14:31:32     http://localhost:8080/mypetstore/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('j2ee', '2020-04-07 14:31:55     http://localhost:8080/mypetstore/viewOrder?null 查看订单 org.csu.mypetstore.domain.Order@7cd1e42c');
INSERT INTO `log` VALUES ('j2ee', '2020-04-07 14:32:01     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2020-04-07 14:32:04     http://localhost:8080/mypetstore/viewListOrder?username=j2ee 查看订单 [org.csu.mypetstore.domain.Order@b8c7a76, org.csu.mypetstore.domain.Order@3651aac, org.csu.mypetstore.domain.Order@65be0ee8]');
INSERT INTO `log` VALUES ('j2ee', '2020-04-07 14:32:06     http://localhost:8080/mypetstore/viewOrder?orderId=1002 查看订单 org.csu.mypetstore.domain.Order@7cd1e42c');
INSERT INTO `log` VALUES ('j2ee', '2020-04-07 14:32:27     http://localhost:8080/mypetstore/viewItem?itemId=EST-18 查看具体商品 (EST-18-null)');
INSERT INTO `log` VALUES ('j2ee', '2020-04-10 17:25:20     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2020-04-10 17:25:23     http://localhost:8080/mypetstore/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2020-04-10 17:25:24     http://localhost:8080/mypetstore/viewProduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('j2ee', '2020-04-10 17:25:25     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-18 添加物品 (EST-18-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-04-10 17:25:28     http://localhost:8080/mypetstore/newOrderForm?itemId= 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2020-04-10 17:25:43     http://localhost:8080/mypetstore/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('j2ee', '2020-04-10 17:26:14     http://localhost:8080/mypetstore/viewOrder?null 查看订单 org.csu.mypetstore.domain.Order@14df6aa8');
INSERT INTO `log` VALUES ('j2ee', '2020-04-10 17:26:25     http://localhost:8080/mypetstore/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@5ac1a926');
INSERT INTO `log` VALUES ('j2ee', '2020-04-10 17:26:27     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2020-04-10 17:26:36     http://localhost:8080/mypetstore/viewOrder?orderId=1002 查看订单 org.csu.mypetstore.domain.Order@14df6aa8');
INSERT INTO `log` VALUES ('j2ee', '2020-04-10 17:26:41     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2020-04-10 17:26:45     http://localhost:8080/mypetstore/viewOrder?orderId=1000 查看订单 org.csu.mypetstore.domain.Order@14df6aa8');
INSERT INTO `log` VALUES ('j2ee', '2020-04-10 17:26:53     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2020-04-10 17:26:56     http://localhost:8080/mypetstore/viewOrder?orderId=1001 查看订单 org.csu.mypetstore.domain.Order@14df6aa8');
INSERT INTO `log` VALUES ('j2ee', '2020-04-10 17:43:27     http://localhost:8080/mypetstore/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2020-04-10 17:43:28     http://localhost:8080/mypetstore/viewProduct?productId=K9-DL-01 查看产品 Dalmation');
INSERT INTO `log` VALUES ('j2ee', '2020-04-10 17:43:30     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-10 添加物品 (EST-10-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2020-04-10 17:43:31     http://localhost:8080/mypetstore/newOrderForm?itemId= 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2020-04-10 17:43:34     http://localhost:8080/mypetstore/conFirmOrderForm?null 确认生成订单 ');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(80) NOT NULL,
  `orderdate` date NOT NULL,
  `shipaddr1` varchar(80) NOT NULL,
  `shipaddr2` varchar(80) DEFAULT NULL,
  `shipcity` varchar(80) NOT NULL,
  `shipstate` varchar(80) NOT NULL,
  `shipzip` varchar(20) NOT NULL,
  `shipcountry` varchar(20) NOT NULL,
  `billaddr1` varchar(80) NOT NULL,
  `billaddr2` varchar(80) DEFAULT NULL,
  `billcity` varchar(80) NOT NULL,
  `billstate` varchar(80) NOT NULL,
  `billzip` varchar(20) NOT NULL,
  `billcountry` varchar(20) NOT NULL,
  `courier` varchar(80) NOT NULL,
  `totalprice` decimal(10,2) NOT NULL,
  `billtofirstname` varchar(80) NOT NULL,
  `billtolastname` varchar(80) NOT NULL,
  `shiptofirstname` varchar(80) NOT NULL,
  `shiptolastname` varchar(80) NOT NULL,
  `creditcard` varchar(80) NOT NULL,
  `exprdate` varchar(20) NOT NULL,
  `cardtype` varchar(80) NOT NULL,
  `locale` varchar(80) NOT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=10002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('10000', 'j2ee', '2020-04-10', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', '18.50', 'ABC', 'XYX', 'ABC', 'XYX', 'ss', '2020-04-01', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('10001', 'j2ee', '2020-04-10', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', '193.50', 'ABC', 'XYX', 'ABC', 'XYX', '99999999', '2020-04-01', 'Visa', 'CA');

-- ----------------------------
-- Table structure for `orderstatus`
-- ----------------------------
DROP TABLE IF EXISTS `orderstatus`;
CREATE TABLE `orderstatus` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `linenum` int(11) NOT NULL,
  `timestamp` date NOT NULL,
  `status` varchar(2) NOT NULL,
  PRIMARY KEY (`orderid`,`linenum`)
) ENGINE=InnoDB AUTO_INCREMENT=10002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderstatus
-- ----------------------------
INSERT INTO `orderstatus` VALUES ('10000', '0', '2020-04-10', 'P');
INSERT INTO `orderstatus` VALUES ('10001', '0', '2020-04-10', 'P');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `productid` varchar(10) NOT NULL,
  `category` varchar(10) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `descn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`productid`),
  KEY `productCat` (`category`),
  KEY `productName` (`name`),
  CONSTRAINT `fk_product_1` FOREIGN KEY (`category`) REFERENCES `category` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('AV-CB-01', 'BIRDS', 'Amazon Parrot', '<image src=\"images/bird2.gif\">Great companion for up to 75 years');
INSERT INTO `product` VALUES ('AV-SB-02', 'BIRDS', 'Finch', '<image src=\"images/bird1.gif\">Great stress reliever');
INSERT INTO `product` VALUES ('FI-FW-01', 'FISH', 'Koi', '<image src=\"images/fish3.gif\">Fresh Water fish from Japan');
INSERT INTO `product` VALUES ('FI-FW-02', 'FISH', 'Goldfish', '<image src=\"images/fish2.gif\">Fresh Water fish from China');
INSERT INTO `product` VALUES ('FI-SW-01', 'FISH', 'Angelfish', '<image src=\"images/fish1.gif\">Salt Water fish from Australia');
INSERT INTO `product` VALUES ('FI-SW-02', 'FISH', 'Tiger Shark', '<image src=\"images/fish4.gif\">Salt Water fish from Australia');
INSERT INTO `product` VALUES ('FL-DLH-02', 'CATS', 'Persian', '<image src=\"images/cat1.gif\">Friendly house cat, doubles as a princess');
INSERT INTO `product` VALUES ('FL-DSH-01', 'CATS', 'Manx', '<image src=\"images/cat2.gif\">Great for reducing mouse populations');
INSERT INTO `product` VALUES ('K9-BD-01', 'DOGS', 'Bulldog', '<image src=\"images/dog2.gif\">Friendly dog from England');
INSERT INTO `product` VALUES ('K9-CW-01', 'DOGS', 'Chihuahua', '<image src=\"images/dog4.gif\">Great companion dog');
INSERT INTO `product` VALUES ('K9-DL-01', 'DOGS', 'Dalmation', '<image src=\"images/dog5.gif\">Great dog for a Fire Station');
INSERT INTO `product` VALUES ('K9-PO-02', 'DOGS', 'Poodle', '<image src=\"images/dog6.gif\">Cute dog from France');
INSERT INTO `product` VALUES ('K9-RT-01', 'DOGS', 'Golden Retriever', '<image src=\"images/dog1.gif\">Great family dog');
INSERT INTO `product` VALUES ('K9-RT-02', 'DOGS', 'Labrador Retriever', '<image src=\"images/dog5.gif\">Great hunting dog');
INSERT INTO `product` VALUES ('RP-LI-02', 'REPTILES', 'Iguana', '<image src=\"images/lizard1.gif\">Friendly green friend');
INSERT INTO `product` VALUES ('RP-SN-01', 'REPTILES', 'Rattlesnake', '<image src=\"images/lizard1.gif\">Doubles as a watch dog');

-- ----------------------------
-- Table structure for `profile`
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `userid` varchar(80) NOT NULL,
  `langpref` varchar(80) NOT NULL,
  `favcategory` varchar(30) DEFAULT NULL,
  `mylistopt` tinyint(1) DEFAULT NULL,
  `banneropt` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES ('2', 'ENGLISH', 'FISH', null, null);
INSERT INTO `profile` VALUES ('a', 'ENGLISH', 'DOGS', null, null);
INSERT INTO `profile` VALUES ('ACID', 'english', 'CATS', '1', '1');
INSERT INTO `profile` VALUES ('j2ee', 'english', 'FISH', '1', '1');
INSERT INTO `profile` VALUES ('je22', 'english', 'DOGS', null, null);
INSERT INTO `profile` VALUES ('q', 'ENGLISH', 'FISH', null, null);
INSERT INTO `profile` VALUES ('re', 'ENGLISH', 'FISH', null, null);
INSERT INTO `profile` VALUES ('s', 'english', 'DOGS', null, null);

-- ----------------------------
-- Table structure for `sequence`
-- ----------------------------
DROP TABLE IF EXISTS `sequence`;
CREATE TABLE `sequence` (
  `name` varchar(30) NOT NULL,
  `nextid` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sequence
-- ----------------------------
INSERT INTO `sequence` VALUES ('linenum', '1000');
INSERT INTO `sequence` VALUES ('ordernum', '1008');

-- ----------------------------
-- Table structure for `signon`
-- ----------------------------
DROP TABLE IF EXISTS `signon`;
CREATE TABLE `signon` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of signon
-- ----------------------------
INSERT INTO `signon` VALUES ('1', '1');
INSERT INTO `signon` VALUES ('2', '2');
INSERT INTO `signon` VALUES ('a', 's');
INSERT INTO `signon` VALUES ('ACID', 'ACID');
INSERT INTO `signon` VALUES ('b', 'b');
INSERT INTO `signon` VALUES ('d', 'd');
INSERT INTO `signon` VALUES ('j2ee', 'j2ee');
INSERT INTO `signon` VALUES ('je22', '123');
INSERT INTO `signon` VALUES ('k', 'k');
INSERT INTO `signon` VALUES ('q', 'q');
INSERT INTO `signon` VALUES ('re', 're');
INSERT INTO `signon` VALUES ('s', 'a');

-- ----------------------------
-- Table structure for `supplier`
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `suppid` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `status` varchar(2) NOT NULL,
  `addr1` varchar(80) DEFAULT NULL,
  `addr2` varchar(80) DEFAULT NULL,
  `city` varchar(80) DEFAULT NULL,
  `state` varchar(80) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `phone` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`suppid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES ('1', 'XYZ Pets', 'AC', '600 Avon Way', '', 'Los Angeles', 'CA', '94024', '212-947-0797');
INSERT INTO `supplier` VALUES ('2', 'ABC Pets', 'AC', '700 Abalone Way', '', 'San Francisco ', 'CA', '94024', '415-947-0797');
