/*
Navicat MySQL Data Transfer

Source Server         : laitaiyu
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : bs_user

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2021-04-18 15:57:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `addressid` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `province` varchar(64) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `region` varchar(64) DEFAULT NULL,
  `detailaddresss` varchar(128) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `ifstatus` int(1) DEFAULT '1',
  PRIMARY KEY (`addressid`),
  KEY `address_userid` (`userid`),
  CONSTRAINT `address_userid` FOREIGN KEY (`userid`) REFERENCES `cuser` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '7', '赖泰宇', '代风', '代风', '代风', '代风', '12345678910', '1');
INSERT INTO `address` VALUES ('2', '7', '赖泰宇', '代风', '代风', '代风', '代风', '12345678910', '1');
INSERT INTO `address` VALUES ('3', '8', '赖泰宇', '天津市', '市辖区', '河东区', '小爱的是', '12345678910', '1');
INSERT INTO `address` VALUES ('4', '13', '小傻瓜b', '广东省', '深圳市', '福田区', '凯丽花园11栋', '18316607694', '1');
INSERT INTO `address` VALUES ('5', '13', '小jb', '广东省', '深圳市', '南山区', '凯丽护院', '18316607694', '1');
INSERT INTO `address` VALUES ('6', '13', '小鲨鱼', '广东省', '深圳市', '南山区', '四大实打实的环境', '18316607694', '1');
INSERT INTO `address` VALUES ('7', '8', '四大', '吉林省', '吉林市', '昌邑区', '撒旦撒', '18316607694', '1');

-- ----------------------------
-- Table structure for `auser`
-- ----------------------------
DROP TABLE IF EXISTS `auser`;
CREATE TABLE `auser` (
  `auserid` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `createtime` timestamp NULL DEFAULT NULL,
  `htime` timestamp NULL DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`auserid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of auser
-- ----------------------------
INSERT INTO `auser` VALUES ('1', '001', '001', '管理员', '2021-04-08 17:17:00', null, '1');

-- ----------------------------
-- Table structure for `concern`
-- ----------------------------
DROP TABLE IF EXISTS `concern`;
CREATE TABLE `concern` (
  `concernid` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) DEFAULT NULL,
  `byuserid` bigint(20) DEFAULT NULL,
  `createtime` timestamp NULL DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`concernid`),
  UNIQUE KEY `un_userid_byuserid` (`userid`,`byuserid`) USING BTREE,
  KEY `no_userid_createtime_byuserid` (`userid`,`createtime`,`byuserid`) USING BTREE,
  KEY `concern_byuser` (`byuserid`,`userid`) USING BTREE,
  CONSTRAINT `concern_byuser` FOREIGN KEY (`byuserid`) REFERENCES `cuser` (`userid`),
  CONSTRAINT `concern_user` FOREIGN KEY (`userid`) REFERENCES `cuser` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of concern
-- ----------------------------
INSERT INTO `concern` VALUES ('1', '7', '1', '2021-01-21 21:44:04', '1');
INSERT INTO `concern` VALUES ('2', '7', '8', '2021-02-17 21:31:55', '1');
INSERT INTO `concern` VALUES ('3', '8', '7', '2021-02-17 21:35:02', '1');
INSERT INTO `concern` VALUES ('4', '8', '9', '2021-02-17 23:20:55', '1');
INSERT INTO `concern` VALUES ('5', '8', '10', '2021-02-18 16:11:33', '0');
INSERT INTO `concern` VALUES ('6', '7', '10', '2021-02-18 16:13:11', '1');
INSERT INTO `concern` VALUES ('7', '10', '7', '2021-02-18 16:13:38', '1');
INSERT INTO `concern` VALUES ('8', '10', '11', '2021-02-18 16:13:58', '1');
INSERT INTO `concern` VALUES ('9', '8', '13', '2021-04-03 21:48:15', '0');
INSERT INTO `concern` VALUES ('10', '13', '8', '2021-04-14 18:01:03', '1');

-- ----------------------------
-- Table structure for `cuser`
-- ----------------------------
DROP TABLE IF EXISTS `cuser`;
CREATE TABLE `cuser` (
  `userid` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `createtime` timestamp NULL DEFAULT NULL,
  `gender` int(1) DEFAULT '0',
  `xingyongfen` int(11) DEFAULT '0',
  `status` int(1) DEFAULT '0',
  `city` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `user_que` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cuser
-- ----------------------------
INSERT INTO `cuser` VALUES ('1', '1111111', '1111111', 'ii', '12345678910', null, '2021-03-01 17:18:14', '0', '0', '0', '北京市/市辖区/东城区');
INSERT INTO `cuser` VALUES ('2', '2222222', '2222222', 'bb', '12345678910', null, '2021-03-01 17:18:21', '0', '0', '0', '北京市/市辖区/东城区');
INSERT INTO `cuser` VALUES ('3', '3333333', '3333333', 'aa', '12345678910', null, '2021-02-01 17:18:26', '0', '0', '0', '北京市/市辖区/东城区');
INSERT INTO `cuser` VALUES ('4', '4444444', '4444444', 'vv', '12345678910', null, '2021-02-02 17:18:31', '0', '0', '0', '北京市/市辖区/东城区');
INSERT INTO `cuser` VALUES ('5', '5555555', '5555555', 'ss', '12345678910', null, '2021-02-01 17:18:38', '0', '0', '0', '北京市/市辖区/东城区');
INSERT INTO `cuser` VALUES ('6', '6666666', '6666666', 'ww', '12345678910', null, '2021-03-10 17:18:46', '0', '0', '0', '北京市/市辖区/东城区');
INSERT INTO `cuser` VALUES ('7', '0000001', '0000001', '赖泰宇', '12345678910', 'cee50fc8-b4b1-49da-9345-b08cb952054e.jpg', '2021-02-17 19:19:52', '0', '0', '0', '北京市/市辖区/东城区');
INSERT INTO `cuser` VALUES ('8', 'a0000002', 'a0000002', '张撒旦撒', '18316607694', '40d5d6c1-fe6a-489a-b461-15f44c7f1fe2.jpg', '2021-02-17 21:29:11', '0', '0', '0', '广东省/深圳市/南山区');
INSERT INTO `cuser` VALUES ('9', '0000003', '0000003', 'ggg', '12345678910', null, '2021-02-17 23:20:25', '0', '0', '0', '北京市/市辖区/东城区');
INSERT INTO `cuser` VALUES ('10', '00000010', '00000010', 'jj', '12345678910', null, '2021-02-18 16:08:22', '0', '0', '0', '北京市/市辖区/东城区');
INSERT INTO `cuser` VALUES ('11', '00000011', '00000011', 'wewa', '12345678910', null, '2021-02-18 16:08:29', '0', '0', '0', '北京市/市辖区/东城区');
INSERT INTO `cuser` VALUES ('12', '00000012', '00000012', 'aaa', '12345678910', null, '2021-02-18 16:08:48', '0', '0', '0', '北京市/市辖区/东城区');
INSERT INTO `cuser` VALUES ('13', 'a666666', 'a666666', '小盆友', '18316607694', 'adafa635-f124-45a1-b574-fb40da3e2890.jpg', '2021-03-11 13:51:42', '1', '20', '0', '北京市/市辖区/东城区');
INSERT INTO `cuser` VALUES ('14', 'aa123455', 'aa123455', 'adad', '12345678910', null, '2021-03-13 22:05:11', '0', '0', '0', '北京市/市辖区/东城区');

-- ----------------------------
-- Table structure for `gx`
-- ----------------------------
DROP TABLE IF EXISTS `gx`;
CREATE TABLE `gx` (
  `gxid` bigint(20) NOT NULL AUTO_INCREMENT,
  `auserid` bigint(20) DEFAULT NULL,
  `juesheid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`gxid`),
  KEY `gx_auser` (`auserid`),
  KEY `gx_jueshe` (`juesheid`),
  CONSTRAINT `gx_auser` FOREIGN KEY (`auserid`) REFERENCES `auser` (`auserid`),
  CONSTRAINT `gx_jueshe` FOREIGN KEY (`juesheid`) REFERENCES `jueshe` (`juesheid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of gx
-- ----------------------------

-- ----------------------------
-- Table structure for `info`
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `infoid` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) DEFAULT NULL,
  `consumeamount` decimal(10,2) DEFAULT '0.00',
  `huodeamount` decimal(10,2) DEFAULT '0.00',
  `attendcount` int(11) DEFAULT '0',
  `fanscount` int(11) DEFAULT '0',
  `productcount` int(11) DEFAULT '0',
  `byproductcount` int(11) DEFAULT '0',
  PRIMARY KEY (`infoid`),
  KEY `info_user` (`userid`),
  CONSTRAINT `info_user` FOREIGN KEY (`userid`) REFERENCES `cuser` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of info
-- ----------------------------

-- ----------------------------
-- Table structure for `jueshe`
-- ----------------------------
DROP TABLE IF EXISTS `jueshe`;
CREATE TABLE `jueshe` (
  `juesheid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `createtime` timestamp NULL DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`juesheid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of jueshe
-- ----------------------------
