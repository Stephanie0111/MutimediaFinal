/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : test_db

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 16/06/2019 18:46:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `count` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('192.168.43.22', 9);
INSERT INTO `address` VALUES ('0:0:0:0:0:0:0:1', 16);
INSERT INTO `address` VALUES ('140.135.227.242', 1);
INSERT INTO `address` VALUES ('140.135.112.183', 1);
INSERT INTO `address` VALUES ('111.251.6.32', 1);
INSERT INTO `address` VALUES ('140.135.51.85', 7);
INSERT INTO `address` VALUES ('1.163.75.154', 2);
INSERT INTO `address` VALUES ('1.171.131.41', 2);
INSERT INTO `address` VALUES ('118.168.27.43', 4);
INSERT INTO `address` VALUES ('140.135.112.132', 1);
INSERT INTO `address` VALUES ('220.141.205.206', 3);
INSERT INTO `address` VALUES ('118.168.26.204', 7);
INSERT INTO `address` VALUES ('220.141.207.150', 2);
INSERT INTO `address` VALUES ('180.217.152.38', 68);
INSERT INTO `address` VALUES ('118.161.154.107', 1);
INSERT INTO `address` VALUES ('140.135.51.71', 2);
INSERT INTO `address` VALUES ('127.0.0.1', 1);
INSERT INTO `address` VALUES ('114.137.4.43', 1);
INSERT INTO `address` VALUES ('114.137.234.186', 2);
INSERT INTO `address` VALUES ('111.248.79.191', 1);
INSERT INTO `address` VALUES ('111.248.28.219', 1);
INSERT INTO `address` VALUES ('220.141.106.107', 6);
INSERT INTO `address` VALUES ('140.135.112.173', 16);
INSERT INTO `address` VALUES ('123.241.152.49', 1);
INSERT INTO `address` VALUES ('39.8.76.227', 1);
INSERT INTO `address` VALUES ('39.8.100.98', 1);
INSERT INTO `address` VALUES ('118.161.107.89', 1);
INSERT INTO `address` VALUES ('36.230.143.195', 1);
INSERT INTO `address` VALUES ('140.135.113.163', 24);
INSERT INTO `address` VALUES ('140.135.112.146', 1);
INSERT INTO `address` VALUES ('140.135.112.135', 1);
INSERT INTO `address` VALUES ('140.135.245.2', 13);
INSERT INTO `address` VALUES ('111.248.3.116', 2);
INSERT INTO `address` VALUES ('140.135.112.29', 23);
INSERT INTO `address` VALUES ('27.246.126.16', 8);
INSERT INTO `address` VALUES ('27.242.197.6', 1);
INSERT INTO `address` VALUES ('110.50.136.30', 1);
INSERT INTO `address` VALUES ('140.135.51.77', 1);
INSERT INTO `address` VALUES ('140.135.112.31', 1);
INSERT INTO `address` VALUES ('36.231.165.216', 1);
INSERT INTO `address` VALUES ('1.34.210.33', 2);
INSERT INTO `address` VALUES ('140.135.238.161', 1);
INSERT INTO `address` VALUES ('140.135.112.186', 14);
INSERT INTO `address` VALUES ('101.13.64.255', 1);
INSERT INTO `address` VALUES ('140.135.112.182', 1);
INSERT INTO `address` VALUES ('140.135.112.139', 2);
INSERT INTO `address` VALUES ('140.135.112.140', 2);
INSERT INTO `address` VALUES ('140.135.112.114', 1);
INSERT INTO `address` VALUES ('140.135.112.128', 1);
INSERT INTO `address` VALUES ('140.135.112.131', 1);
INSERT INTO `address` VALUES ('140.135.225.203', 1);
INSERT INTO `address` VALUES ('140.135.112.129', 1);
INSERT INTO `address` VALUES ('180.204.41.13', 2);
INSERT INTO `address` VALUES ('101.137.186.94', 1);
INSERT INTO `address` VALUES ('140.135.112.147', 1);
INSERT INTO `address` VALUES ('114.137.135.163', 4);
INSERT INTO `address` VALUES ('220.134.139.246', 5);
INSERT INTO `address` VALUES ('140.135.43.174', 6);
INSERT INTO `address` VALUES ('27.52.137.146', 2);
INSERT INTO `address` VALUES ('1.200.207.171', 13);
INSERT INTO `address` VALUES ('39.9.0.50', 2);
INSERT INTO `address` VALUES ('118.168.26.101', 1);

-- ----------------------------
-- Table structure for board
-- ----------------------------
DROP TABLE IF EXISTS `board`;
CREATE TABLE `board`  (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `good_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `score` int(255) NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of board
-- ----------------------------
INSERT INTO `board` VALUES ('5', '33', 'sgt01', '13', 3, '2019.06.13 09:16:05');
INSERT INTO `board` VALUES ('5', '123', 'sgt02', '123', 3, '2019.06.13 09:18:05');
INSERT INTO `board` VALUES ('5', '123', 'sgt02', '123', 4, '2019.06.13 09:18:17');
INSERT INTO `board` VALUES ('5', '456', 'sgt02', '456', 3, '2019.06.13 09:18:32');
INSERT INTO `board` VALUES ('5', '哈哈', 'glg01', 'hehh', 2, '2019.06.14 12:48:49');
INSERT INTO `board` VALUES ('5', '4241', 'glg01', '231', 2, '2019.06.14 01:28:05');
INSERT INTO `board` VALUES ('5', '534523', 'glg02', '343', 4, '2019.06.14 01:33:44');
INSERT INTO `board` VALUES ('5', 'eee', 'sgt02', 'heuu', 3, '2019.06.14 03:18:52');
INSERT INTO `board` VALUES ('5', 'fghfgh', 'sgt02', 'fghfg', 3, '2019.06.14 03:19:06');
INSERT INTO `board` VALUES ('5', '687878', 'jnwk03', '354354', 3, '2019.06.15 01:18:20');
INSERT INTO `board` VALUES ('5', '', 'jnwk03', '', 5, '2019.06.15 01:18:44');
INSERT INTO `board` VALUES ('5', '42424242', 'sgt02', '5516515', 4, '2019.06.15 02:06:45');
INSERT INTO `board` VALUES ('5', '5272572', 'sgt02', '44257257', 3, '2019.06.15 02:06:59');
INSERT INTO `board` VALUES ('5', '52542', 'sgt02', '156', 5, '2019.06.15 02:08:37');
INSERT INTO `board` VALUES ('吳俊毅', 'hi', 'sgt01', 'hello', 2, '2019.06.15 10:14:46');
INSERT INTO `board` VALUES ('512224', '123', 'sgt02', '123', 5, '2019.06.15 10:30:18');
INSERT INTO `board` VALUES ('aa', '', 'sgt01', '', 5, '2019.06.15 10:30:27');
INSERT INTO `board` VALUES ('周柏辰', 'hello', 'sgt03', 'hi', 4, '2019.06.15 10:31:38');
INSERT INTO `board` VALUES ('周柏辰', 'hi', 'sgt03', 'hello', 2, '2019.06.15 10:31:47');
INSERT INTO `board` VALUES ('aa', '', 'sgt01', '', 5, '2019.06.15 10:35:59');

-- ----------------------------
-- Table structure for guestbook
-- ----------------------------
DROP TABLE IF EXISTS `guestbook`;
CREATE TABLE `guestbook`  (
  `no` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mail` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subject` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `putdate` date NULL DEFAULT NULL,
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guestbook
-- ----------------------------
INSERT INTO `guestbook` VALUES (6, 'test', 'tet', 'ete', 'tett', '2008-12-04', NULL);
INSERT INTO `guestbook` VALUES (7, 'test', 'tet', 'ete', 'tett', '2008-12-04', NULL);
INSERT INTO `guestbook` VALUES (8, 'test', 'ts', 'tet', 'etete', '2008-12-04', NULL);
INSERT INTO `guestbook` VALUES (9, 'test', 'ts', 'tet', 'etete', '2008-12-04', NULL);
INSERT INTO `guestbook` VALUES (10, 'test', 'ts', 'tet', 'etete', '2008-12-04', NULL);
INSERT INTO `guestbook` VALUES (14, '1', '1', '1', '111', '2019-06-06', NULL);
INSERT INTO `guestbook` VALUES (15, '11', '11', '11', '11\r\n11\r\n11', '2019-06-06', NULL);

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `account` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `level` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('hank861223', 'h188qwe', '吳俊毅', 'hank861223111@yahoo.com.tw', '1');
INSERT INTO `member` VALUES ('jsp', 'jspclass', '周柏辰', 'jsp', '0');
INSERT INTO `member` VALUES ('512224', '512224', '512224', '512224@gmail.com', '1');
INSERT INTO `member` VALUES ('aaa', 'aaaaaa', 'aa', 'aa@aaaa', '1');
INSERT INTO `member` VALUES ('hank86123', '123456', 'hank86123', 'hank86123@yahoo.com.tw', '1');
INSERT INTO `member` VALUES ('123', '123123', '123', '123@123', '1');
INSERT INTO `member` VALUES ('111', '111111', '111', '111@111', '1');
INSERT INTO `member` VALUES ('Stephanie', '0111ST', 'Stephanie', 'asdfghj@gmail.com', '1');
INSERT INTO `member` VALUES ('123456', '1234567', 'è£å¤§å', 'nmpss94114@gmail.com', '1');
INSERT INTO `member` VALUES ('pineapple', 'pineapple123', 'é»é³³æ¢¨', '123@gmail.com', '1');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `cust_acc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `good_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `count` int(255) NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('hank861223', 'sgt03', 1, 'bill');
INSERT INTO `order` VALUES ('hank861223', 'sgt01', 80, 'bill');
INSERT INTO `order` VALUES ('hank861223', 'sgt02', 1, 'bill');
INSERT INTO `order` VALUES ('hank861223', 'gllv02', 1, 'bill');
INSERT INTO `order` VALUES ('jsp', 'sgt01', 1, 'order');
INSERT INTO `order` VALUES ('hank861223', 'sgt02', 1, 'bill');
INSERT INTO `order` VALUES ('512224', 'sgt01', 5, 'bill');
INSERT INTO `order` VALUES ('hank861223', 'sgt01', 1, 'bill');
INSERT INTO `order` VALUES ('512224', 'sgt01', 11, 'bill');
INSERT INTO `order` VALUES ('aaa', 'sgt02', 99, 'bill');
INSERT INTO `order` VALUES ('hank861223', 'sgt03', 50, 'bill');
INSERT INTO `order` VALUES ('hank861223', 'sgt03', 49, 'bill');
INSERT INTO `order` VALUES ('aaa', 'sgt01', 99, 'bill');
INSERT INTO `order` VALUES ('12345', 'sgt02', 1, 'bill');
INSERT INTO `order` VALUES ('123456', 'sgt02', 1, 'order');
INSERT INTO `order` VALUES ('Stephanie', 'glg02', 1, 'bill');
INSERT INTO `order` VALUES ('hank861223', 'sgt01', 1, 'bill');
INSERT INTO `order` VALUES ('hank861223', 'sgt01', 1, 'bill');
INSERT INTO `order` VALUES ('pineapple', 'sgt01', 1, 'bill');
INSERT INTO `order` VALUES ('Stephanie', 'glg02', 1, 'bill');
INSERT INTO `order` VALUES ('pineapple', 'sgt01', 1, 'order');
INSERT INTO `order` VALUES ('Stephanie', 'sgt03', 1, 'order');

-- ----------------------------
-- Table structure for wine111
-- ----------------------------
DROP TABLE IF EXISTS `wine111`;
CREATE TABLE `wine111`  (
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price` int(255) NULL DEFAULT NULL,
  `years` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `store` int(255) NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `o_price` int(255) NULL DEFAULT NULL,
  `b_pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bg_pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wine111
-- ----------------------------
INSERT INTO `wine111` VALUES ('wineimage/sgt01.JPG', 'sgt01', '蘇格登12年', 950, '12', '英國', 17, '1', 950, 'wineimage/sgt111.png', 'backimage/sgt001.jpg');
INSERT INTO `wine111` VALUES ('wineimage/sgt02.JPG', 'sgt02', '蘇格登15年', 1450, '15', '英國', 49, '1', 1450, 'wineimage/sgt222.png', 'backimage/sgt002.jpg');
INSERT INTO `wine111` VALUES ('wineimage/sgt03.JPG', 'sgt03', '蘇格登18年', 2450, '18', '英國', 0, '1', 2450, 'wineimage/sgt333.png', 'backimage/sgt003.jpg');
INSERT INTO `wine111` VALUES ('wineimage/glg01.JPG', 'glg01', '格蘭傑經典', 618, '10', '英國', 56, '1', 650, 'wineimage/glg111.png', 'backimage/glg001.jpg');
INSERT INTO `wine111` VALUES ('wineimage/glg02.JPG', 'glg02', '格蘭傑12年', 980, '12', '英國', 98, '1', 980, 'wineimage/glg222.png', 'backimage/glg002.jpg');
INSERT INTO `wine111` VALUES ('wineimage/glg03.JPG', 'glg03', '格蘭傑18年', 2000, '18', '英國', 97, '1', 2000, 'wineimage/glg333.png', 'backimage/glg03.jpg');
INSERT INTO `wine111` VALUES ('wineimage/gllv01.JPG', 'gllv01', '格蘭利威12年', 680, '12', '英國', 100, '1', 680, 'wineimage/gllv111.png', 'backimage/gllv001.jpg');
INSERT INTO `wine111` VALUES ('wineimage/gllv02.JPG', 'gllv02', '格蘭利威15年', 1050, '15', '英國', 79, '1', 1050, 'wineimage/gllv222.png', 'backimage/gllv002.jpg');
INSERT INTO `wine111` VALUES ('wineimage/gllv03.JPG', 'gllv03', '格蘭利威18年', 1980, '18', '英國', 100, '1', 1980, 'wineimage/gllv333.png', 'backimage/gllv003.jpg');
INSERT INTO `wine111` VALUES ('wineimage/glfd01.JPG', 'glfd01', '格蘭菲迪12年', 561, '12', '英國', 100, '1', 590, 'wineimage/glfd111.png', 'backimage/glfd001.jpg');
INSERT INTO `wine111` VALUES ('wineimage/glfd02.JPG', 'glfd02', '格蘭菲迪15年', 890, '15', '英國', 100, '1', 890, 'wineimage/glfd222.png', 'backimage/glfd002.jpg');
INSERT INTO `wine111` VALUES ('wineimage/glfd03.JPG', 'glfd03', '格蘭菲迪18年', 1480, '18', '英國', 99, '1', 1480, 'wineimage/glfd333.png', 'backimage/glfd003.jpg');
INSERT INTO `wine111` VALUES ('wineimage/hns02.JPG', 'hns02', '軒尼詩XO', 4980, NULL, '法國', 100, '1', 4980, 'wineimage/hns222.png', 'backimage/hns002.jpg');
INSERT INTO `wine111` VALUES ('wineimage/mcl01.JPG', 'mcl01', '麥卡倫12年', 1480, '12', '英國', 100, '1', 1480, 'wineimage/mcl111.png', 'backimage/mcl001.jpg');
INSERT INTO `wine111` VALUES ('wineimage/mcl02.JPG', 'mcl02', '麥卡倫15年', 2480, '15', '英國', 100, '1', 2480, 'wineimage/mcl222.png', 'backimage/mcl002.jpg');
INSERT INTO `wine111` VALUES ('wineimage/mcl03.JPG', 'mcl03', '麥卡倫18年', 10100, '18', '英國', 100, '1', 10100, 'wineimage/mcl333.png', 'backimage/mcl003.jpg');
INSERT INTO `wine111` VALUES ('wineimage/bv01.JPG', 'bv01', '百富12年', 1250, '12', '英國', 100, '1', 1250, 'wineimage/bv111.png', 'backimage/bv001.jpg');
INSERT INTO `wine111` VALUES ('wineimage/bv02.JPG', 'bv02', '百富14年', 1520, '14', '英國', 100, '1', 1520, 'wineimage/bv222.png', 'backimage/bv002.jpg');
INSERT INTO `wine111` VALUES ('wineimage/bv03.JPG', 'bv03', '百富17年', 3480, '17', '英國', 100, '1', 3480, 'wineimage/bv333.png', 'backimage/bv003.jpg');
INSERT INTO `wine111` VALUES ('wineimage/jnwk01.JPG', 'jnwk01', '約翰走路藍牌', 2926, NULL, '英國', 100, '1', 3080, 'wineimage/jnwk111.png', 'backimage/jnwk001.jpg');
INSERT INTO `wine111` VALUES ('wineimage/jnwk02.JPG', 'jnwk02', '約翰走路綠牌', 850, NULL, '英國', 100, '1', 850, 'wineimage/jnwk222.png', 'backimage/jnwk002.jpg');
INSERT INTO `wine111` VALUES ('wineimage/jnwk03.JPG', 'jnwk03', '約翰走路黑牌', 550, NULL, '英國', 91, '1', 550, 'wineimage/jnwk333.png', 'backimage/jnwk03.jpg');
INSERT INTO `wine111` VALUES ('wineimage/jnwk04.JPG', 'jnwk04', '約翰走路金牌', 1250, NULL, '英國', 100, '1', 1250, 'wineimage/jnwk444.png', 'backimage/jnwk004.jpg');
INSERT INTO `wine111` VALUES ('wineimage/hns01.JPG', 'hns01', '軒尼詩VSOP', 1450, NULL, '法國', 100, '1', 1450, 'wineimage/hns111.png', 'backimage/hns001.jpg');

SET FOREIGN_KEY_CHECKS = 1;
