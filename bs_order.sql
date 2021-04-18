/*
Navicat MySQL Data Transfer

Source Server         : laitaiyu
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : bs_order

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2021-04-18 15:57:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `byorder`
-- ----------------------------
DROP TABLE IF EXISTS `byorder`;
CREATE TABLE `byorder` (
  `byorderid` bigint(20) NOT NULL AUTO_INCREMENT,
  `sn` varchar(64) DEFAULT NULL,
  `yunprice` decimal(10,2) DEFAULT NULL,
  `methon` int(1) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  `addressname` varchar(64) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `province` varchar(64) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `region` varchar(64) DEFAULT NULL,
  `detailaddresss` varchar(128) DEFAULT NULL,
  `tijiaotime` timestamp NULL DEFAULT NULL,
  `fahuotime` timestamp NULL DEFAULT NULL,
  `sohuotime` timestamp NULL DEFAULT NULL,
  `delectstatus` int(1) DEFAULT '1',
  `orderid` bigint(20) DEFAULT NULL,
  `tuihuotext` varchar(100) DEFAULT NULL,
  `kuidihao` varchar(30) DEFAULT NULL,
  `kuidi` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`byorderid`),
  KEY `dfsfd` (`orderid`),
  CONSTRAINT `dfsfd` FOREIGN KEY (`orderid`) REFERENCES `order` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of byorder
-- ----------------------------
INSERT INTO `byorder` VALUES ('1', '23ecead6-43fb-4870-b329-e19d7197e99a', '0.00', '1', '3', '赖泰宇', '12345678910', '吉林省', '吉林市', '昌邑区', '代风', '2021-03-04 19:15:22', '2021-03-04 21:34:15', '2021-03-04 22:34:20', '1', '4', '质量问题', 'sf0123456789', '顺丰快递');
INSERT INTO `byorder` VALUES ('2', 'fb19a0d8-8973-42be-ba15-1b9451262673', '0.00', '1', '3', '四大', '18316607694', '吉林省', '吉林市', '昌邑区', '撒旦撒', '2021-03-29 15:14:14', '2021-03-30 19:52:54', '2021-03-30 20:07:37', '1', '23', '不好看', 'sf121212', '顺丰快递');
INSERT INTO `byorder` VALUES ('3', '287fa86d-8f88-4ae8-8ef0-d39f568f33cd', '1.00', '0', '2', '四大', '18316607694', '吉林省', '吉林市', '昌邑区', '撒旦撒', '2021-04-14 01:11:13', '2021-04-14 01:18:37', null, '1', '25', '执行·', 'sf100000', '顺丰快递');
INSERT INTO `byorder` VALUES ('4', 'b0a00582-3dde-443c-933c-03dcc5a75084', '0.00', '0', '1', '赖泰宇', '12345678910', '天津市', '市辖区', '河东区', '小爱的是', '2021-04-14 01:14:09', null, null, '1', '26', '不好', null, null);
INSERT INTO `byorder` VALUES ('5', 'a95215d8-4602-4e84-9345-564d3ebb556c', '0.00', '0', '1', '赖泰宇', '12345678910', '天津市', '市辖区', '河东区', '小爱的是', '2021-04-14 11:44:43', null, null, '1', '27', '不好看', null, null);
INSERT INTO `byorder` VALUES ('6', '57ccf8d7-7701-4e29-9c3e-f64ece2ef6be', '1.00', '0', '4', null, null, null, null, null, null, '2021-04-15 22:59:24', null, null, '1', '30', '坏了', null, null);
INSERT INTO `byorder` VALUES ('7', '56347c42-bc19-45dd-99c7-acdea5712ba2', '0.00', '1', '4', null, null, null, null, null, null, '2021-04-16 16:24:42', null, null, '1', '31', '不好用', null, null);
INSERT INTO `byorder` VALUES ('8', '6cfeade6-8a5e-4e15-8b55-10f81d0805fa', '0.00', '0', '4', null, null, null, null, null, null, '2021-04-16 17:01:34', null, null, '1', '29', '不好看', null, null);

-- ----------------------------
-- Table structure for `ck`
-- ----------------------------
DROP TABLE IF EXISTS `ck`;
CREATE TABLE `ck` (
  `ckid` bigint(20) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL,
  `orderid` bigint(20) DEFAULT NULL,
  `cx` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `userid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ckid`),
  KEY `cks` (`orderid`),
  CONSTRAINT `cks` FOREIGN KEY (`orderid`) REFERENCES `order` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ck
-- ----------------------------
INSERT INTO `ck` VALUES ('1', '太久不发货', '10', '0', '1', '8');
INSERT INTO `ck` VALUES ('2', '太久不发货', '10', '0', '2', '8');
INSERT INTO `ck` VALUES ('3', '实验', '9', '1', '0', '8');
INSERT INTO `ck` VALUES ('4', 'shiyan2', '8', '0', '0', '8');
INSERT INTO `ck` VALUES ('5', '实验', '30', '1', '0', '13');

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `orderid` bigint(20) NOT NULL AUTO_INCREMENT,
  `productid` bigint(20) DEFAULT NULL,
  `userid` bigint(20) DEFAULT NULL,
  `sn` varchar(64) DEFAULT NULL,
  `baoyouprice` decimal(10,2) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `productname` varchar(64) DEFAULT NULL,
  `producticon` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  `method` int(1) DEFAULT NULL,
  `addressname` varchar(64) DEFAULT NULL,
  `province` varchar(64) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `region` varchar(64) DEFAULT NULL,
  `detailaddresss` varchar(128) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `tijiaotime` timestamp NULL DEFAULT NULL,
  `zhifutime` timestamp NULL DEFAULT NULL,
  `fahuotime` timestamp NULL DEFAULT NULL,
  `sohuotime` timestamp NULL DEFAULT NULL,
  `delectstatus` int(1) DEFAULT '1',
  `kuidihao` varchar(30) DEFAULT NULL,
  `byuserid` bigint(20) DEFAULT NULL,
  `kuidi` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('1', '1', '1', null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null);
INSERT INTO `order` VALUES ('2', '1', '8', 'facc88c9-a8ab-47fe-95fd-304be3300682', '20.00', '300.50', '小米10', ';3b8e7273-dbb3-4dc9-9a7a-eafc967ada5d.jpg;2e296c02-bebf-497d-ad22-c2f1bf7dbf17.jpg', '5', '0', '赖泰宇', '广东省', '深圳市', '南山区', '代风', '12345678910', '2021-02-28 16:02:14', '2021-03-01 15:14:43', '2021-03-01 16:40:34', '2021-03-01 18:27:04', '1', 'sf0123456789', '7', '顺丰快递');
INSERT INTO `order` VALUES ('3', '4', '7', 'd40f0978-82df-40ce-934a-e56e71896d48', '20.00', '400.00', '小米13', ';c3186b75-84a0-4284-8d26-bc06a18835eb.jpg;3537df23-d6d8-4bd5-a382-3b042b5dbc02.jpg', '5', '0', '赖泰宇', '广东省', '深圳市', '南山区', '代风', '12345678910', '2021-03-01 19:50:09', '2021-03-01 20:19:09', '2021-03-01 20:56:50', '2021-03-01 20:57:40', '1', 'sf0123456756', '8', '顺丰快递');
INSERT INTO `order` VALUES ('4', '5', '8', '23ecead6-43fb-4870-b329-e19d7197e99a', '20.00', '400.00', '飞机米', ';2d8fae5c-42dc-4406-a617-66d051e23768.jpg;7151bc87-6556-4e13-a11a-4524963c2feb.jpg', '6', '0', '赖泰宇', '广东省', '深圳市', '南山区', '代风', '12345678910', '2021-03-04 17:44:08', '2021-03-04 17:48:39', '2021-03-04 17:51:13', null, '1', 'sf012345689', '7', '顺丰快递');
INSERT INTO `order` VALUES ('5', '5', '8', '8f238a6a-f61e-4af8-8415-bf167f004be6', '20.00', '400.00', '飞机米', ';2d8fae5c-42dc-4406-a617-66d051e23768.jpg;7151bc87-6556-4e13-a11a-4524963c2feb.jpg', '4', '0', '赖泰宇', '广东省', '深圳市', '南山区', '代风', '12345678910', '2021-03-06 17:40:52', null, null, null, '1', null, '7', null);
INSERT INTO `order` VALUES ('6', '5', '8', '6d054820-8ee7-4727-8a26-fbd41bfd0f7c', '20.00', '400.00', '飞机米', ';2d8fae5c-42dc-4406-a617-66d051e23768.jpg;7151bc87-6556-4e13-a11a-4524963c2feb.jpg', '4', '0', '赖泰宇', '广东省', '深圳市', '南山区', '代风', '12345678910', '2021-03-06 18:04:51', null, null, null, '1', null, '7', null);
INSERT INTO `order` VALUES ('7', '5', '8', '5d6aa9ca-14b2-437f-a2e9-92ac5564f360', '20.00', '400.00', '飞机米', ';2d8fae5c-42dc-4406-a617-66d051e23768.jpg;7151bc87-6556-4e13-a11a-4524963c2feb.jpg', '4', '0', '赖泰宇', '广东省', '深圳市', '南山区', '代风', '12345678910', '2021-03-06 18:09:36', null, null, null, '1', null, '7', null);
INSERT INTO `order` VALUES ('8', '5', '8', '80ced6a0-238c-488e-8f13-4671cf2e7dc0', '20.00', '400.00', '飞机米', ';2d8fae5c-42dc-4406-a617-66d051e23768.jpg;7151bc87-6556-4e13-a11a-4524963c2feb.jpg', '4', '0', '赖泰宇', '广东省', '深圳市', '南山区', '代风', '12345678910', '2021-03-06 18:40:13', null, null, null, '1', null, '7', null);
INSERT INTO `order` VALUES ('9', '5', '8', '8e3ac564-ca6a-4173-be76-ad6cbae74c0d', '20.00', '400.00', '飞机米', ';2d8fae5c-42dc-4406-a617-66d051e23768.jpg;7151bc87-6556-4e13-a11a-4524963c2feb.jpg', '4', '0', '赖泰宇', '广东省', '深圳市', '南山区', '代风', '12345678910', '2021-03-06 18:43:29', null, null, null, '1', null, '7', null);
INSERT INTO `order` VALUES ('10', '5', '8', '6d3bf64d-c491-41ed-a467-6a7e1c225bac', '20.00', '400.00', '飞机米', ';2d8fae5c-42dc-4406-a617-66d051e23768.jpg;7151bc87-6556-4e13-a11a-4524963c2feb.jpg', '1', '0', '赖泰宇', '广东省', '深圳市', '南山区', '代风', '12345678910', '2021-03-06 19:08:57', '2021-03-06 19:09:18', null, null, '1', null, '7', null);
INSERT INTO `order` VALUES ('11', '3', '13', '360aabcf-26ba-4f09-82b1-deca9b642a69', '20.00', '300.50', '小米10，8g不讲究', ';8cbfa6fd-2b3f-433d-8c48-9eb17455567f.jpg;6dd555aa-fae0-4037-83f9-7e858507d9c5.jpg', '4', '0', '小傻瓜', '广东省', '深圳市', '南山区', '凯丽护院', '18316607694', '2021-03-16 21:30:56', null, null, null, '1', null, '8', null);
INSERT INTO `order` VALUES ('12', '3', '13', 'fb2c5233-9106-4ebb-a105-2cd2c5859c8a', '20.00', '300.50', '小米10，8g不讲究', ';8cbfa6fd-2b3f-433d-8c48-9eb17455567f.jpg;6dd555aa-fae0-4037-83f9-7e858507d9c5.jpg', '4', '0', '小傻瓜', '广东省', '深圳市', '南山区', '凯丽护院', '18316607694', '2021-03-16 21:35:36', null, null, null, '1', null, '8', null);
INSERT INTO `order` VALUES ('13', '3', '13', '133ff85b-d246-4bca-8ea9-32a829f5b0c3', '20.00', '300.50', '小米10，8g不讲究', ';8cbfa6fd-2b3f-433d-8c48-9eb17455567f.jpg;6dd555aa-fae0-4037-83f9-7e858507d9c5.jpg', '4', '0', '小鲨鱼', '广东省', '深圳市', '南山区', '四大实打实的环境', '18316607694', '2021-03-17 12:43:04', null, null, null, '1', null, '8', null);
INSERT INTO `order` VALUES ('14', '2', '13', '493872f8-251d-4491-a8f6-9e7498e26a7b', '20.00', '301.50', '小米9，小不点', ';95a27d30-6d35-42bc-ab02-e8e9843e3827.jpg', '4', '2', '小傻瓜b', '广东省', '深圳市', '福田区', '凯丽花园11栋', '18316607694', '2021-03-17 13:55:04', null, null, null, '1', null, '8', null);
INSERT INTO `order` VALUES ('15', '3', '13', 'f8ae9920-2cee-4398-82a5-08f511e133bf', '20.00', '300.50', '小米10，8g不讲究', ';8cbfa6fd-2b3f-433d-8c48-9eb17455567f.jpg;6dd555aa-fae0-4037-83f9-7e858507d9c5.jpg', '4', '0', '小傻瓜b', '广东省', '深圳市', '福田区', '凯丽花园11栋', '18316607694', '2021-03-17 13:58:00', null, null, null, '1', null, '8', null);
INSERT INTO `order` VALUES ('16', '2', '13', '031ca356-7352-4882-a6f6-8e1a3c2829a4', '20.00', '301.50', '小米9，小不点', ';95a27d30-6d35-42bc-ab02-e8e9843e3827.jpg', '4', '2', '小jb', '广东省', '深圳市', '南山区', '凯丽护院', '18316607694', '2021-03-17 14:07:01', null, null, null, '1', null, '8', null);
INSERT INTO `order` VALUES ('17', '9', '13', '7065f4a1-5912-4e8b-abea-69a375247e75', '1.00', '6.00', '小阿松大小阿松大d', ';69c545ea-ac3a-415a-b904-6ac42d7124b1.jpg', '4', '3', '小鲨鱼', '广东省', '深圳市', '南山区', '四大实打实的环境', '18316607694', '2021-03-23 15:22:23', null, null, null, '1', null, '8', null);
INSERT INTO `order` VALUES ('18', '6', '13', '28aa2de3-d2a0-43a3-9a9b-c10f1b8a9d6a', '0.00', '6000.00', '小米撒大苏打', ';8044ec8a-7f77-4446-8788-77794a302fde.jpg', '4', '1', '小鲨鱼', '广东省', '深圳市', '南山区', '四大实打实的环境', '18316607694', '2021-03-27 15:18:58', null, null, null, '1', null, '8', null);
INSERT INTO `order` VALUES ('19', '2', '13', '68f5375d-8184-4607-b426-8b3d591902aa', '20.00', '301.50', '小米9，小不点', ';95a27d30-6d35-42bc-ab02-e8e9843e3827.jpg', '1', '2', '小鲨鱼', '广东省', '深圳市', '南山区', '四大实打实的环境', '18316607694', '2021-03-27 15:36:22', '2021-03-27 15:36:29', null, null, '1', null, '8', null);
INSERT INTO `order` VALUES ('20', '19', '13', 'e4dbb3a4-1445-47e3-ba92-7013bb62f2d0', '0.00', '6.00', '华为8g号', ';e7eeef6a-4eea-41af-ad08-c0c92efe3223.jpg', '5', '1', '小jb', '广东省', '深圳市', '南山区', '凯丽护院', '18316607694', '2021-03-27 15:39:57', '2021-03-27 15:40:02', '2021-03-28 15:01:04', '2021-03-28 15:42:07', '1', '顺丰快递', '8', 'sf121212');
INSERT INTO `order` VALUES ('21', '18', '13', 'a5149291-c27b-4a9b-ab54-1488f64d199a', '0.00', '1.00', '下凹阿松大的撒', ';535bf4d5-9af5-4567-8011-8a97652b8c19.jpg', '5', '1', '小鲨鱼', '广东省', '深圳市', '南山区', '四大实打实的环境', '18316607694', '2021-03-28 21:33:33', '2021-03-28 21:33:36', '2021-03-29 13:39:15', '2021-04-17 18:56:13', '1', '顺丰12121212', '8', '顺丰快递');
INSERT INTO `order` VALUES ('22', '15', '13', '17546c78-2877-45b5-89fb-d6451cecf7d6', '0.00', '1.00', 'dasdasdas', ';8d7cd7f4-04f1-4095-bcec-e02eb4fd32bf.jpg', '5', '1', '小鲨鱼', '广东省', '深圳市', '南山区', '四大实打实的环境', '18316607694', '2021-03-29 13:42:42', '2021-03-29 13:42:51', '2021-03-29 13:43:37', '2021-03-29 19:40:20', '1', 'sf343234324', '8', '顺丰快递');
INSERT INTO `order` VALUES ('23', '17', '13', 'fb19a0d8-8973-42be-ba15-1b9451262673', '0.00', '6.00', '小米1000', ';0dbebeb8-6b4c-48c2-b76f-d4632c236865.jpg', '6', '1', '小jb', '广东省', '深圳市', '南山区', '凯丽护院', '18316607694', '2021-03-29 13:44:33', '2021-03-29 13:44:35', '2021-03-29 13:45:21', null, '1', 'sf121212', '8', '顺丰快递');
INSERT INTO `order` VALUES ('24', '16', '13', 'b6018f48-a1bc-469e-974e-fd7bddcc0930', '0.00', '5.00', '好处的海外', ';431daf5d-e641-4292-8334-340ce2b8aea9.jpg;782f4b43-4dfd-41ed-88d8-e476632fa398.jpg', '1', '2', '小jb', '广东省', '深圳市', '南山区', '凯丽护院', '18316607694', '2021-03-30 19:43:16', '2021-03-30 19:43:19', null, null, '1', null, '8', null);
INSERT INTO `order` VALUES ('25', '3', '13', '287fa86d-8f88-4ae8-8ef0-d39f568f33cd', '20.00', '300.50', '小米10，8g不讲究', ';8cbfa6fd-2b3f-433d-8c48-9eb17455567f.jpg;6dd555aa-fae0-4037-83f9-7e858507d9c5.jpg', '6', '0', '小jb', '广东省', '深圳市', '南山区', '凯丽护院', '18316607694', '2021-03-30 19:43:40', '2021-03-30 19:43:42', '2021-03-30 19:47:36', null, '1', 'sf121111', '8', '顺丰快递');
INSERT INTO `order` VALUES ('26', '21', '13', 'b0a00582-3dde-443c-933c-03dcc5a75084', '0.00', '3.00', '天机1000', ';61021684-ad35-4e61-9a3b-69cc3f4944db.jpg', '6', '0', '小jb', '广东省', '深圳市', '南山区', '凯丽护院', '18316607694', '2021-04-05 18:44:36', '2021-04-05 18:44:55', '2021-04-14 01:13:36', null, '1', 'sf1220', '8', '顺丰快递');
INSERT INTO `order` VALUES ('27', '17', '13', 'a95215d8-4602-4e84-9345-564d3ebb556c', '0.00', '6.00', '小米1000', ';0dbebeb8-6b4c-48c2-b76f-d4632c236865.jpg', '6', '1', '小jb', '广东省', '深圳市', '南山区', '凯丽护院', '18316607694', '2021-04-14 11:43:40', '2021-04-14 11:43:44', '2021-04-14 11:44:19', null, '1', 'sf3232aa', '8', '顺丰快递');
INSERT INTO `order` VALUES ('28', '25', '13', '3195b7ff-fdb5-4965-8606-2b7b20dddb3c', '0.00', '13121.00', '天机1555', ';bd21e8cf-b58a-4e83-b5a3-ab2eb0488114.jpg', '7', '1', '小jb', '广东省', '深圳市', '南山区', '凯丽护院', '18316607694', '2021-04-14 17:29:14', '2021-04-14 17:29:16', null, null, '1', null, '8', null);
INSERT INTO `order` VALUES ('29', '24', '13', '6cfeade6-8a5e-4e15-8b55-10f81d0805fa', '0.00', '3.00', '小米222', ';25776556-3f03-4d47-b26c-05ca8fe6e5e2.jpg', '5', '1', '小jb', '广东省', '深圳市', '南山区', '凯丽护院', '18316607694', '2021-04-14 17:29:32', '2021-04-14 17:29:35', '2021-04-16 17:00:55', '2021-04-17 18:34:23', '1', 'sf2000000', '8', '顺丰快递');
INSERT INTO `order` VALUES ('30', '6', '13', '57ccf8d7-7701-4e29-9c3e-f64ece2ef6be', '0.00', '6000.00', '小米撒大苏打', ';8044ec8a-7f77-4446-8788-77794a302fde.jpg', '5', '1', '小jb', '广东省', '深圳市', '南山区', '凯丽护院', '18316607694', '2021-04-14 17:30:08', '2021-04-14 17:30:09', '2021-04-15 22:58:34', '2021-04-16 16:18:25', '1', 'sf100000', '8', '顺丰快递');
INSERT INTO `order` VALUES ('31', '27', '8', '56347c42-bc19-45dd-99c7-acdea5712ba2', '0.00', '6.00', 'faasd', ';265fde6c-2b16-4204-bff3-18dd2b4a4d9a.jpg', '5', '1', '赖泰宇', '天津市', '市辖区', '河东区', '小爱的是', '12345678910', '2021-04-16 16:23:05', '2021-04-16 16:23:13', '2021-04-16 16:24:02', '2021-04-16 16:27:41', '1', 'sf10024400', '13', '顺丰垮堤');

-- ----------------------------
-- Table structure for `order_operate`
-- ----------------------------
DROP TABLE IF EXISTS `order_operate`;
CREATE TABLE `order_operate` (
  `order_operate_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderid` bigint(20) DEFAULT NULL,
  `operateman` int(11) DEFAULT NULL COMMENT '0系统，1买家，2卖家，3管理员',
  `oprate` int(11) DEFAULT NULL COMMENT '0取消订单，1超时付款取消订单，3超时发货取消订单，4买家申请退款，5系统退款，6买家因物流未签收申请退款',
  `time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ifs` int(11) DEFAULT NULL COMMENT '0待定，1同意，2同意',
  `text` varchar(100) DEFAULT NULL,
  `iftext` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_operate_id`),
  KEY `xxcz` (`orderid`),
  CONSTRAINT `xxcz` FOREIGN KEY (`orderid`) REFERENCES `order` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_operate
-- ----------------------------
