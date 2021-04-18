/*
Navicat MySQL Data Transfer

Source Server         : laitaiyu
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : bs_product

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2021-04-18 15:57:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bycomment`
-- ----------------------------
DROP TABLE IF EXISTS `bycomment`;
CREATE TABLE `bycomment` (
  `bycommentid` bigint(20) NOT NULL AUTO_INCREMENT,
  `commentid` bigint(20) DEFAULT NULL,
  `userid` bigint(20) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `text` varchar(500) DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `byuserid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`bycommentid`),
  KEY `bycomment_comment` (`commentid`),
  CONSTRAINT `bycomment_comment` FOREIGN KEY (`commentid`) REFERENCES `comment` (`commentid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of bycomment
-- ----------------------------
INSERT INTO `bycomment` VALUES ('1', '3', '8', '张撒旦撒', 'cee50fc8-b4b1-49da-9345-b08cb952054e.jpg', '真尼玛帅', '2021-02-22 20:24:56', '1', '8');
INSERT INTO `bycomment` VALUES ('2', '3', '8', '张撒旦撒', '40d5d6c1-fe6a-489a-b461-15f44c7f1fe2.jpg', '不好', '2021-04-16 21:28:43', '1', '8');
INSERT INTO `bycomment` VALUES ('3', '3', '8', '张撒旦撒', '40d5d6c1-fe6a-489a-b461-15f44c7f1fe2.jpg', '这样好吗', '2021-04-16 21:41:32', '1', '8');
INSERT INTO `bycomment` VALUES ('4', '3', '8', '张撒旦撒', '40d5d6c1-fe6a-489a-b461-15f44c7f1fe2.jpg', '这样好吗', '2021-04-16 21:41:35', '1', '8');
INSERT INTO `bycomment` VALUES ('5', '3', '8', '张撒旦撒', '40d5d6c1-fe6a-489a-b461-15f44c7f1fe2.jpg', '这样好吗', '2021-04-16 21:41:44', '1', '8');
INSERT INTO `bycomment` VALUES ('6', '3', '8', '张撒旦撒', '40d5d6c1-fe6a-489a-b461-15f44c7f1fe2.jpg', '是', '2021-04-16 21:49:11', '1', '8');
INSERT INTO `bycomment` VALUES ('7', '4', '13', '小盆友', 'adafa635-f124-45a1-b574-fb40da3e2890.jpg', '不好', '2021-04-16 21:54:21', '1', '8');
INSERT INTO `bycomment` VALUES ('8', '7', '13', '小盆友', 'adafa635-f124-45a1-b574-fb40da3e2890.jpg', '这样好吗', '2021-04-17 21:20:43', '1', '13');
INSERT INTO `bycomment` VALUES ('9', '7', '13', '小盆友', 'adafa635-f124-45a1-b574-fb40da3e2890.jpg', '米好', '2021-04-17 21:21:37', '1', '13');
INSERT INTO `bycomment` VALUES ('10', '8', '13', '小盆友', 'adafa635-f124-45a1-b574-fb40da3e2890.jpg', '好', '2021-04-17 21:22:16', '1', '13');
INSERT INTO `bycomment` VALUES ('11', '8', '13', '小盆友', 'adafa635-f124-45a1-b574-fb40da3e2890.jpg', '好', '2021-04-17 21:25:03', '1', '13');
INSERT INTO `bycomment` VALUES ('12', '8', '13', '小盆友', 'adafa635-f124-45a1-b574-fb40da3e2890.jpg', '这', '2021-04-17 21:25:17', '1', '13');
INSERT INTO `bycomment` VALUES ('13', '8', '13', '小盆友', 'adafa635-f124-45a1-b574-fb40da3e2890.jpg', '不阿红', '2021-04-17 21:25:29', '1', '13');
INSERT INTO `bycomment` VALUES ('14', '9', '13', '小盆友', 'adafa635-f124-45a1-b574-fb40da3e2890.jpg', '这', '2021-04-17 21:25:42', '1', '13');
INSERT INTO `bycomment` VALUES ('15', '10', '13', '小盆友', 'adafa635-f124-45a1-b574-fb40da3e2890.jpg', '你好', '2021-04-17 21:33:12', '1', '13');
INSERT INTO `bycomment` VALUES ('16', '11', '13', '小盆友', 'adafa635-f124-45a1-b574-fb40da3e2890.jpg', '好', '2021-04-17 21:46:59', '1', '13');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `commentid` bigint(20) NOT NULL AUTO_INCREMENT,
  `productid` bigint(20) DEFAULT NULL,
  `userid` bigint(20) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `text` varchar(500) DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`commentid`),
  KEY `productid` (`productid`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '1', '8', '张撒旦撒', 'cee50fc8-b4b1-49da-9345-b08cb952054e.jpg', '真尼玛帅', '2021-02-22 16:11:57', '1');
INSERT INTO `comment` VALUES ('3', '1', '8', '张撒旦撒', 'cee50fc8-b4b1-49da-9345-b08cb952054e.jpg', '真尼玛帅', '2021-02-22 16:39:06', '1');
INSERT INTO `comment` VALUES ('4', '22', '8', '张撒旦撒', '40d5d6c1-fe6a-489a-b461-15f44c7f1fe2.jpg', '你好啊', '2021-04-16 18:19:37', '1');
INSERT INTO `comment` VALUES ('5', '22', '8', '张撒旦撒', '40d5d6c1-fe6a-489a-b461-15f44c7f1fe2.jpg', '你好', '2021-04-16 18:31:41', '1');
INSERT INTO `comment` VALUES ('6', '1', '8', '张撒旦撒', '40d5d6c1-fe6a-489a-b461-15f44c7f1fe2.jpg', '哈哈', '2021-04-16 21:43:16', '1');
INSERT INTO `comment` VALUES ('7', '28', '13', '小盆友', 'adafa635-f124-45a1-b574-fb40da3e2890.jpg', '同撒·', '2021-04-17 21:20:34', '1');
INSERT INTO `comment` VALUES ('8', '26', '13', '小盆友', 'adafa635-f124-45a1-b574-fb40da3e2890.jpg', '不哈', '2021-04-17 21:22:11', '1');
INSERT INTO `comment` VALUES ('9', '26', '13', '小盆友', 'adafa635-f124-45a1-b574-fb40da3e2890.jpg', '年后', '2021-04-17 21:25:35', '1');
INSERT INTO `comment` VALUES ('10', '7', '13', '小盆友', 'adafa635-f124-45a1-b574-fb40da3e2890.jpg', '你好', '2021-04-17 21:30:21', '1');
INSERT INTO `comment` VALUES ('11', '20', '13', '小盆友', 'adafa635-f124-45a1-b574-fb40da3e2890.jpg', '你哈', '2021-04-17 21:46:55', '1');

-- ----------------------------
-- Table structure for `fenlei1`
-- ----------------------------
DROP TABLE IF EXISTS `fenlei1`;
CREATE TABLE `fenlei1` (
  `fenlei1id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`fenlei1id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of fenlei1
-- ----------------------------
INSERT INTO `fenlei1` VALUES ('1', '手机', '大米饭五', '1');
INSERT INTO `fenlei1` VALUES ('2', '衣服', '大米', '1');
INSERT INTO `fenlei1` VALUES ('3', '电脑', '大米', '1');
INSERT INTO `fenlei1` VALUES ('4', '大炮', '大米', '1');
INSERT INTO `fenlei1` VALUES ('5', '工具', '非常好', '1');
INSERT INTO `fenlei1` VALUES ('6', '学习', '学习', '1');

-- ----------------------------
-- Table structure for `fenlei2`
-- ----------------------------
DROP TABLE IF EXISTS `fenlei2`;
CREATE TABLE `fenlei2` (
  `fenlei2id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fenlei1id` bigint(20) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`fenlei2id`),
  KEY `1_2` (`fenlei1id`),
  KEY `2id_name` (`fenlei2id`,`name`) USING BTREE,
  CONSTRAINT `1_2` FOREIGN KEY (`fenlei1id`) REFERENCES `fenlei1` (`fenlei1id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of fenlei2
-- ----------------------------
INSERT INTO `fenlei2` VALUES ('1', '1', '小米三', 'be139087-e133-456b-9fd5-e190ca60ccb2.jpg', '1');
INSERT INTO `fenlei2` VALUES ('2', '2', '枪炮', 'ec0a0e66-5aa9-48ce-b3e3-b4b5bccfbd77.jpg', '1');
INSERT INTO `fenlei2` VALUES ('3', '1', '枪炮', '5cb8c1e7-f674-4fa9-8f1c-7840cd01357c.jpg', '1');
INSERT INTO `fenlei2` VALUES ('4', '4', '枪炮', 'be139087-e133-456b-9fd5-e190ca60ccb2.jpg', '1');
INSERT INTO `fenlei2` VALUES ('5', '1', '枪炮', '4384ea2e-03a8-4bc5-95de-94ac8007d7fc.jpg', '1');
INSERT INTO `fenlei2` VALUES ('6', '3', '枪炮', '7e8c5d2c-26aa-423b-9e90-08674f6ad9f0.jpg', '1');
INSERT INTO `fenlei2` VALUES ('7', '2', '枪炮二', '393c318c-8a5f-4390-a2bc-11204174705a.jpg', '1');
INSERT INTO `fenlei2` VALUES ('8', '1', '狙击手', '6b023467-04d3-4e17-bc78-1a18550813be.jpg', '1');
INSERT INTO `fenlei2` VALUES ('9', '1', '手杀', 'f22f8df4-f52d-4234-a2e4-1a4f80b8a916.jpg', '1');
INSERT INTO `fenlei2` VALUES ('10', '3', '好全', '1f9ae3aa-7a1c-4029-888b-2b0629f7c78d.jpg', '1');
INSERT INTO `fenlei2` VALUES ('11', '2', '四大', 'feca37b7-b2a1-4890-8646-dd4be99d37ce.jpg', '1');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `productid` bigint(20) NOT NULL AUTO_INCREMENT,
  `fenlei2id` bigint(20) DEFAULT NULL,
  `userid` bigint(20) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  `usericon` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `productidname` varchar(64) DEFAULT NULL,
  `text` varchar(500) DEFAULT NULL,
  `deletestatus` int(1) DEFAULT '1',
  `productstatus` int(1) DEFAULT '0',
  `method` int(1) DEFAULT '0',
  `price` decimal(10,2) DEFAULT '0.00',
  `baoyouprice` decimal(10,2) DEFAULT '0.00',
  `fabutime` timestamp NULL DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `sort` int(11) DEFAULT '0',
  PRIMARY KEY (`productid`),
  KEY `product_userid` (`userid`) USING BTREE,
  KEY `product_feilei2` (`fenlei2id`,`sort`) USING BTREE,
  KEY `shiyan` (`deletestatus`,`productstatus`,`sort`) USING BTREE,
  FULLTEXT KEY `ft_index` (`productidname`,`text`) /*!50100 WITH PARSER `ngram` */ ,
  CONSTRAINT `product_feilei2` FOREIGN KEY (`fenlei2id`) REFERENCES `fenlei2` (`fenlei2id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '2', '8', '张撒旦撒', 'cee50fc8-b4b1-49da-9345-b08cb952054e.jpg', ';cee50fc8-b4b1-49da-9345-b08cb952054e.jpg;8d33ebd9-bd22-4e00-a18d-7a4be3bd8dc6.jpg', '小米10', '小米10,8g,不刀', '1', '2', '0', '300.50', '20.00', '2021-02-21 22:09:44', '北京市/市辖区/西城区', '3');
INSERT INTO `product` VALUES ('2', '1', '8', '张撒旦撒', 'cee50fc8-b4b1-49da-9345-b08cb952054e.jpg', ';95a27d30-6d35-42bc-ab02-e8e9843e3827.jpg', '小米9，小不点', '这是hii暗红色的\n圣诞节奥斯丁·\n收到就·', '1', '1', '2', '301.50', '20.00', '2021-02-21 22:13:00', '北京市/市辖区/西城区', '9');
INSERT INTO `product` VALUES ('3', '2', '8', '张撒旦撒', 'cee50fc8-b4b1-49da-9345-b08cb952054e.jpg', ';8cbfa6fd-2b3f-433d-8c48-9eb17455567f.jpg;6dd555aa-fae0-4037-83f9-7e858507d9c5.jpg', '小米10，8g不讲究', '通缩不去', '1', '1', '0', '300.50', '20.00', '2021-02-21 22:16:13', '北京市/市辖区/西城区', '10');
INSERT INTO `product` VALUES ('4', '2', '8', '张撒旦撒', 'cee50fc8-b4b1-49da-9345-b08cb952054e.jpg', ';c3186b75-84a0-4284-8d26-bc06a18835eb.jpg;3537df23-d6d8-4bd5-a382-3b042b5dbc02.jpg', '小米13', '真不错去', '1', '2', '0', '400.00', '20.00', '2021-03-01 19:37:50', '北京市/市辖区/西城区', '0');
INSERT INTO `product` VALUES ('5', '2', '7', '赖泰宇', 'cee50fc8-b4b1-49da-9345-b08cb952054e.jpg', ';2d8fae5c-42dc-4406-a617-66d051e23768.jpg;7151bc87-6556-4e13-a11a-4524963c2feb.jpg', '飞机米', '真不错啊', '1', '1', '0', '400.00', '20.00', '2021-03-04 17:41:04', '北京市/市辖区/西城区', '0');
INSERT INTO `product` VALUES ('6', '1', '8', '张撒旦撒', 'cee50fc8-b4b1-49da-9345-b08cb952054e.jpg', ';8044ec8a-7f77-4446-8788-77794a302fde.jpg', '小米撒大苏打', '这是一个很好的唱片', '1', '2', '1', '6000.00', '0.00', '2021-03-12 22:45:30', '北京市/市辖区/西城区', '0');
INSERT INTO `product` VALUES ('7', '1', '8', '张撒旦撒', 'cee50fc8-b4b1-49da-9345-b08cb952054e.jpg', ';476450e4-425f-4ef8-8222-28f21c7a478d.jpg', '华为四大ppp', '撒大苏打撒旦', '1', '0', '2', '6.00', '0.00', '2021-03-12 23:10:37', '浙江省/宁波市/海曙区', '0');
INSERT INTO `product` VALUES ('8', '1', '8', '张撒旦撒', 'cee50fc8-b4b1-49da-9345-b08cb952054e.jpg', ';f2c2a413-ed1a-467f-9777-7a04808a96d9.jpg;deb00eb8-e77f-4392-9401-fab6279d5a9a.jpg', '四大撒大苏打', '撒旦撒撒大苏打', '1', '0', '1', '11.00', '0.00', '2021-03-12 23:12:52', '天津市/市辖区/河西区', '0');
INSERT INTO `product` VALUES ('9', '7', '8', '张撒旦撒', 'cee50fc8-b4b1-49da-9345-b08cb952054e.jpg', ';69c545ea-ac3a-415a-b904-6ac42d7124b1.jpg', '小阿松大小阿松大d', 'sssa\'da\'s\'d\'sa\'ddad', '1', '0', '3', '6.00', '1.00', '2021-03-12 23:17:47', '天津市/市辖区/河西区', '0');
INSERT INTO `product` VALUES ('10', '2', '8', '张撒旦撒', 'cee50fc8-b4b1-49da-9345-b08cb952054e.jpg', ';64f93ca0-bab2-4886-aa39-9f50429b5369.jpg;d8f3b4d7-1497-4609-944b-3148dea1e63f.jpg;62ae1654-3eb2-4b7e-9662-5d7668e113e1.jpg', '小大苏打四大', 's\'das\'da', '1', '0', '3', '12.00', '0.00', '2021-03-13 11:07:50', '河北省/秦皇岛市/山海关区', '0');
INSERT INTO `product` VALUES ('11', '7', '8', '张撒旦撒', 'cee50fc8-b4b1-49da-9345-b08cb952054e.jpg', ';40f6f2a8-e3c2-4ab1-b36f-74dee97fcf5d.jpg', 'sdsdsdsad', 'asdasdasdasd', '1', '0', '0', '1.00', '0.00', '2021-03-13 11:18:45', '北京市/市辖区/东城区', '0');
INSERT INTO `product` VALUES ('12', '7', '8', '张撒旦撒', 'cee50fc8-b4b1-49da-9345-b08cb952054e.jpg', ';5b9db2e4-d833-4d71-909b-2c326fc97cf6.jpg', '撒啊就不对劲啊不急不急', '撒大苏打大苏打', '1', '0', '2', '4.00', '0.00', '2021-03-14 13:15:20', '广西壮族自治区/梧州市/万秀区', '0');
INSERT INTO `product` VALUES ('13', '7', '8', '张撒旦撒', 'cee50fc8-b4b1-49da-9345-b08cb952054e.jpg', ';e91c2611-8a34-4891-a76e-37a25ae28a31.jpg', 'c\'c\'w\'d\'w\'d', 'sda\nsd', '1', '0', '1', '6.00', '0.00', '2021-03-14 13:55:12', '天津市/市辖区/河东区', '0');
INSERT INTO `product` VALUES ('14', '1', '8', '张撒旦撒', 'cee50fc8-b4b1-49da-9345-b08cb952054e.jpg', ';7a19cfaf-cc18-4067-818e-aabb57e8ce89.jpg;cba6c7d5-7709-44ef-91e9-6bc10a24df22.jpg', 'sdasda', '12345\n789\n', '1', '0', '0', '1.00', '0.00', '2021-03-14 13:57:01', '北京市/市辖区/西城区', '0');
INSERT INTO `product` VALUES ('15', '1', '8', '张撒旦撒', 'cee50fc8-b4b1-49da-9345-b08cb952054e.jpg', ';8d7cd7f4-04f1-4095-bcec-e02eb4fd32bf.jpg', 'dasdasdas', 'kk\n1111111', '1', '2', '1', '1.00', '0.00', '2021-03-14 13:57:46', '天津市/市辖区/河东区', '0');
INSERT INTO `product` VALUES ('16', '7', '8', '张撒旦撒', 'cee50fc8-b4b1-49da-9345-b08cb952054e.jpg', ';431daf5d-e641-4292-8334-340ce2b8aea9.jpg;782f4b43-4dfd-41ed-88d8-e476632fa398.jpg', '好处的海外', 'sdadsasdas', '1', '1', '2', '5.00', '0.00', '2021-03-14 17:54:05', '北京市/市辖区/东城区', '0');
INSERT INTO `product` VALUES ('17', '2', '8', '张撒旦撒', 'cee50fc8-b4b1-49da-9345-b08cb952054e.jpg', ';0dbebeb8-6b4c-48c2-b76f-d4632c236865.jpg', '小米1000', 's\'das\'da', '1', '1', '1', '6.00', '0.00', '2021-03-15 17:54:24', '河北省/唐山市/路南区', '0');
INSERT INTO `product` VALUES ('18', '1', '8', '张撒旦撒', 'cee50fc8-b4b1-49da-9345-b08cb952054e.jpg', ';535bf4d5-9af5-4567-8011-8a97652b8c19.jpg', '下凹阿松大的撒', '撒大苏打阿松大', '1', '2', '1', '1.00', '0.00', '2021-03-15 17:56:08', '北京市/市辖区/东城区', '0');
INSERT INTO `product` VALUES ('19', '1', '8', '张撒旦撒', 'cee50fc8-b4b1-49da-9345-b08cb952054e.jpg', ';e7eeef6a-4eea-41af-ad08-c0c92efe3223.jpg', '华为8g号', '阿萨大大啊实打实', '1', '2', '1', '6.00', '0.00', '2021-03-15 19:33:26', '天津市/市辖区/河东区', '0');
INSERT INTO `product` VALUES ('20', '1', '13', '小盆友', 'adafa635-f124-45a1-b574-fb40da3e2890.jpg', ';2c6cd162-84ca-4238-a8fb-8c3ad6b0826f.jpg', 'huawai8g', '这是一个非常行的的\n的', '1', '0', '0', '7.00', '1.00', '2021-03-17 14:00:41', '天津市/市辖区/和平区', '0');
INSERT INTO `product` VALUES ('21', '4', '8', '张撒旦撒', '40d5d6c1-fe6a-489a-b461-15f44c7f1fe2.jpg', ';61021684-ad35-4e61-9a3b-69cc3f4944db.jpg', '天机1000', 'a\'s\'da\'s\'da', '1', '1', '0', '3.00', '0.00', '2021-04-05 18:38:34', '北京市/市辖区/东城区', '0');
INSERT INTO `product` VALUES ('22', '2', '13', '小盆友', 'adafa635-f124-45a1-b574-fb40da3e2890.jpg', ';f2b8b1aa-0043-45e2-a422-dd1265ce98dd.jpg', '华为455', '撒大啊阿松大', '1', '0', '0', '100.00', '0.00', '2021-04-05 18:42:06', '北京市/市辖区/西城区', '0');
INSERT INTO `product` VALUES ('23', '3', '13', '小盆友', 'adafa635-f124-45a1-b574-fb40da3e2890.jpg', ';201ed0d0-971e-4ac4-813f-ee99a3a97c80.jpg;882d74ce-adaa-49c9-8c69-21f73fcbc9ea.jpg', '哈哈用户阿达', '阿德飒飒的', '1', '0', '1', '4.00', '0.00', '2021-04-05 19:39:00', '北京市/市辖区/西城区', '0');
INSERT INTO `product` VALUES ('24', '1', '8', '张撒旦撒', '40d5d6c1-fe6a-489a-b461-15f44c7f1fe2.jpg', ';25776556-3f03-4d47-b26c-05ca8fe6e5e2.jpg', '小米222', '非常好的评判', '1', '2', '1', '3.00', '0.00', '2021-04-14 17:28:17', '北京市/市辖区/东城区', '0');
INSERT INTO `product` VALUES ('25', '7', '8', '张撒旦撒', '40d5d6c1-fe6a-489a-b461-15f44c7f1fe2.jpg', ';bd21e8cf-b58a-4e83-b5a3-ab2eb0488114.jpg', '天机1555', '西安啊大大阿达', '1', '1', '1', '13121.00', '0.00', '2021-04-14 17:28:52', '北京市/市辖区/西城区', '0');
INSERT INTO `product` VALUES ('26', '1', '8', '张撒旦撒', '40d5d6c1-fe6a-489a-b461-15f44c7f1fe2.jpg', ';5e331363-5320-48a7-84b1-00ace53c836b.jpg;5b6c29b1-440c-430c-becb-c8f88b9ad3f5.jpg', '小米66677', '小米66677', '1', '0', '1', '4.00', '0.00', '2021-04-15 23:54:34', '天津市/市辖区/和平区', '0');
INSERT INTO `product` VALUES ('27', '1', '13', '小盆友', 'adafa635-f124-45a1-b574-fb40da3e2890.jpg', ';265fde6c-2b16-4204-bff3-18dd2b4a4d9a.jpg', 'faasd', 'yigeasa', '1', '2', '1', '6.00', '0.00', '2021-04-16 16:22:36', '河北省/秦皇岛市/海港区', '0');
INSERT INTO `product` VALUES ('28', '2', '13', '小盆友', 'adafa635-f124-45a1-b574-fb40da3e2890.jpg', ';bab7d63a-ec99-4856-9550-0182d75e2d73.jpg;3bb4118e-5a99-4809-9f9d-a7d6407d97d2.jpg', '小吗121', '啊倒萨埃尔多安是阿松大阿', '1', '0', '1', '1000.00', '0.00', '2021-04-17 21:19:44', '天津市/市辖区/河东区', '0');
